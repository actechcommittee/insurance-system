-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 21, 2017 at 04:57 AN
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `insurance`
--
CREATE DATABASE IF NOT EXISTS `insurance` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `insurance`;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `c_id` int(10) UNSIGNED NOT NULL,
  `c_name` varchar(100) NOT NULL,
  `logo` varchar(70) NOT NULL,
  `location` text NOT NULL,
  `contact` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`c_id`, `c_name`, `logo`, `location`, `contact`) VALUES
(1, 'Star Assurance', 'ghana.png', 'Airport First, Accra', '+2335643789'),
(2, 'Enterprise Insurance', 'jamaica.png', 'Accra', '+2335678899'),
(3, 'Starlife', 'argentina.png', 'Kumasi', '+2334567878'),
(4, 'Vanguard Assurance', 'japan.png', 'Accra', '+23354675890'),
(5, 'SIC Insurance', 'ivory-coast.png', 'Accra', '+2333456789768');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `base_rate` float NOT NULL,
  `img` varchar(9999) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `company_id`, `name`, `description`, `base_rate`, `img`) VALUES
(1, 1, 'motor insurance', 'Our motor policy is designed to cover the legal liabilities of our insured as a result of the use of the motor vehicle and loss or damage to his own vehicle. Under our motor portfolio, the following covers are provided: Third Party Fire & Theft and Comprehensive.', 0, 'record.png'),
(2, 2, 'car insurance', 'Our motor policy is designed to cover the legal liabilities of our insured as a result of the use of the motor vehicle and loss or damage to his own vehicle. Under our motor portfolio, the following covers are provided: Third Party Fire & Theft and Comprehensive.', 0, 'like-2.png'),
(3, 5, 'home owners', 'Our motor policy is designed to cover the legal liabilities of our insured as a result of the use of the motor vehicle and loss or damage to his own vehicle. Under our motor portfolio, the following covers are provided: Third Party Fire & Theft and Comprehensive.', 0, 'house.png'),
(4, 3, 'vehicle insurance', 'Our motor policy is designed to cover the legal liabilities of our insured as a result of the use of the motor vehicle and loss or damage to his own vehicle. Under our motor portfolio, the following covers are provided: Third Party Fire & Theft and Comprehensive.', 0, 'locked-1.png'),
(5, 4, 'train insurance', 'Our motor policy is designed to cover the legal liabilities of our insured as a result of the use of the motor vehicle and loss or damage to his own vehicle. Under our motor portfolio, the following covers are provided: Third Party Fire & Theft and Comprehensive.', 0, 'hourglass-1.png'),
(6, 1, 'light bulb insurance', 'Our motor policy is designed to cover the legal liabilities of our insured as a result of the use of the motor vehicle and loss or damage to his own vehicle. Under our motor portfolio, the following covers are provided: Third Party Fire & Theft and Comprehensive.', 0, 'idea.png'),
(7, 1, 'phone Insurance', 'Our motor policy is designed to cover the legal liabilities of our insured as a result of the use of the motor vehicle and loss or damage to his own vehicle. Under our motor portfolio, the following covers are provided: Third Party Fire & Theft and Comprehensive.', 0, 'smartphone-7.png'),
(8, 1, ' Travel Insurance', 'Get our travel insurance for \r\nGet our travel insurance for \r\nGet our travel insurance for \r\nGet our travel insurance for \r\nGet our travel insurance for \r\nGet our travel insurance for \r\nGet our travel insurance for ', 0, 'worldwide-1.png'),
(9, 2, 'noise insurance', 'Our motor policy is designed to cover the legal liabilities of our insured as a result of the use of the motor vehicle and loss or damage to his own vehicle. Under our motor portfolio, the following covers are provided: Third Party Fire & Theft and Comprehensive.', 0, 'volume-control-1.png'),
(10, 1, 'home owners ', 'efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba', 0, 'hold.png'),
(11, 3, 'motor insurance', 'Our motor policy is designed to cover the legal liabilities of our insured as a result of the use of the motor vehicle and loss or damage to his own vehicle. Under our motor portfolio, the following covers are provided: Third Party Fire & Theft and Comprehensive.', 0, 'clock.png'),
(12, 5, 'motor insurance', 'Our motor policy is designed to cover the legal liabilities of our insured as a result of the use of the motor vehicle and loss or damage to his own vehicle. Under our motor portfolio, the following covers are provided: Third Party Fire & Theft and Comprehensive.', 0, 'tie.png'),
(13, 4, 'home owners', 'Our motor policy is designed to cover the legal liabilities of our insured as a result of the use of the motor vehicle and loss or damage to his own vehicle. Under our motor portfolio, the following covers are provided: Third Party Fire & Theft and Comprehensive.', 0, 'owl.png');

-- --------------------------------------------------------

--
-- Table structure for table `products_category`
--

CREATE TABLE `products_category` (
  `id` int(2) NOT NULL,
  `name` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products_category`
--

INSERT INTO `products_category` (`id`, `name`) VALUES
(1, 'Motor Third Party'),
(2, 'Motor Third Party Fire & Theft Cover'),
(3, 'Motor Comprehensive Cover');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_category`
--
ALTER TABLE `products_category`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `c_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `products_category`
--
ALTER TABLE `products_category`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;--
-- Database: `leg`
--
CREATE DATABASE IF NOT EXISTS `leg` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `leg`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `add_id` int(2) NOT NULL,
  `user` varchar(32) NOT NULL,
  `pass` varchar(32) NOT NULL,
  `user_pass` varchar(99) NOT NULL,
  `add_type` varchar(32) NOT NULL,
  `add_pages` varchar(99) NOT NULL,
  `email` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`add_id`, `user`, `pass`, `user_pass`, `add_type`, `add_pages`, `email`) VALUES
(1, 'Admin', 'f15c693f5d6775d6ff8f8359d462a304', 'e3afed0047b08059d0fada10f400c1e5', 'Gcp', '', 'sd@g'),
(9, 'Akwesi', '6ac933301a3933c8a22ceebea7000326', '8aa09448ca545f7f4560f83e1f784aaf', 'cp', 'another.sbk', '');

-- --------------------------------------------------------

--
-- Table structure for table `components_config`
--

CREATE TABLE `components_config` (
  `id` int(2) NOT NULL,
  `category` varchar(99) NOT NULL,
  `types` varchar(999) NOT NULL,
  `inits` varchar(60000) NOT NULL,
  `disps` varchar(99) NOT NULL,
  `authors` varchar(900) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `components_config`
--

INSERT INTO `components_config` (`id`, `category`, `types`, `inits`, `disps`, `authors`) VALUES
(1, 'navbar', 'navbar:navbar:liner:bread', 'bckcolor>>>#4f372d@bordercklor>>>black@ackcolor>>>#df8c19@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Home@tpl>>>navbar@menuItems>>>Home=~About=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~News Events=Current Info||History||Policies||Maps&Directions~Academics=Current Info||History||Policies||Maps&Directions~Students=Current Info||History||Policies||Maps&Directions~Staff=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#***bckcolor>>>#4f372d@bordercklor>>>black@ackcolor>>>#df8c19@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Home@tpl>>>navbar@menuItems>>>Home=~About=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~News Events=Current Info||History||Policies||Maps&Directions~Academics=Current Info||History||Policies||Maps&Directions~Students=Current Info||History||Policies||Maps&Directions~Staff=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#***bckcolor>>>#4f372d@bordercklor>>>black@ackcolor>>>#df8c19@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Home@tpl>>>linenav@menuItems>>>Home=~About=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~News Events=Current Info||History||Policies||Maps&Directions~Academics=Current Info||History||Policies||Maps&Directions~Students=Current Info||History||Policies||Maps&Directions~Staff=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#***bckcolor>>>#4f372d@bordercklor>>>black@ackcolor>>>#df8c19@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Home@tpl>>>breadnav@menuItems>>>Home=~About=~University=~News Events=~Academics=~Students=~Staff=@menuLinks>>>#=~#=~#=~#=~#=~#=~#=', '0:0:12:12', '******schoolyne.com***schoolyne.com'),
(2, 'tiles', 'tiles:coolVetnav:duptiles:tabifytiles', 'bckcolor>>>#4f372d@bordercklor>>>black@ackcolor>>>#df8c19@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Colleges@tpl>>>tiles@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~Media=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~Service=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#***bckcolor>>>#4f372d@bordercklor>>>black@ackcolor>>>#df8c19@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Colleges@tpl>>>vnavbar@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~Media=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~Service=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#***bckcolor>>>#4f372d@bordercklor>>>black@ackcolor>>>#df8c19@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Colleges@tpl>>>duptiles@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~Media=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~Service=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#***bckcolor>>>#4f372d@bordercklor>>>black@ackcolor>>>#df8c19@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Colleges@tpl>>>tabifynote@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~Media=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~Service=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#', '0:12:12:12', '***from bootsnipet***sbk with love***schoolyne.com is the author of this wonderful and great something'),
(3, 'footer', 'foot:tactical footer:lookfoot:proot:flinker', 'bckcolor>>>brown@bordercklor>>>black@tcktcolor>>>orange@lckncolor>>>grey@tpl>>>footer@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~The Media & Press=Current Info||History||Policies||Maps&Directions~The University=Current Info||History||Policies||Maps&Directions~Online Services=Current Info||History||Policies||Maps&Directions @menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#***bckcolor>>>brown@bordercklor>>>black@tcktcolor>>>orange@lckncolor>>>grey@tpl>>>tactfooter@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~The Media & Press=Current Info||History||Policies||Maps&Directions~The University=Current Info||History||Policies||Maps&Directions~Online Services=Current Info||History||Policies||Maps&Directions @menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#***bckcolor>>>brown@bordercklor>>>black@tcktcolor>>>orange@lckncolor>>>grey@tpl>>>doubfoot@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~The Media & Press=Current Info||History||Policies||Maps&Directions~The University=Current Info||History||Policies||Maps&Directions~Online Services=Current Info||History||Policies||Maps&Directions @menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#***bckcolor>>>brown@bordercklor>>>black@tcktcolor>>>orange@lckncolor>>>grey@tpl>>>profoot@nCol>>>4@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~The Media & Press=Current Info||History||Policies||Maps&Directions~The University=Current Info||History||Policies||Maps&Directions~Online Services=Current Info||History||Policies||Maps&Directions @menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#***bckcolor>>>brown@bordercklor>>>black@tcktcolor>>>orange@lckncolor>>>grey@tpl>>>nicefooter@nCol>>>4@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~The Media & Press=Current Info||History||Policies||Maps&Directions~The University=Current Info||History||Policies||Maps&Directions~Online Services=Current Info||History||Policies||Maps&Directions @menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#', '0:12:12:12:12', '***this component is for free if you dont have it just click on the appropriate link to get it***from paris with love***schoolyne.com***schooolyne.com'),
(4, 'notice_board', 'media_list:notice_board:list_group:tabify:thePenguin:hoverNote:clickable:reverseflash:tabletify:portlet:chooser:doted:slidey:block:belowtab:defaulttab:tuxnote:uplift', 'bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@tpl>>>media_list@menuItems>>>News~Notices~News~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good news@pix>>>rabbit1.jpg~rabbit2.jpg~rabbit3.jpg~cute_rabbit2.jpg***bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@header>>>Media Board@tpl>>>notice_board@nCol>>>4@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news this is good news this is good news this is good news|%|this is good news***bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@tpl>>>list_group@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good news***bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@header>>>Media Board@tpl>>>ptabs@nCol>>>4@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news this is good news this is good news this is good news|%|this is good news***bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@tpl>>>penguinboard@nCol>>>3@menuItems>>>News~Notices~penguinboard~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good***bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@tpl>>>hoverboard@nCol>>>3@menuItems>>>News~Notices~penguinboard~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good***bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@header>>>Media Board@tpl>>>clickablenotice@nCol>>>4@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good news***bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@header>>>Media Board@tpl>>>reverseboard@nCol>>>4@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good news***bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@header>>>Media Board@tpl>>>tablotes@nCol>>>4@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news this is good news this is good news this is good news|%|this is good news***bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@header>>>Media Board@tpl>>>portletnote@nCol>>>4@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news this is good news this is good news this is good news|%|this is good news***bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@tpl>>>choosernote@nCol>>>3@menuItems>>>News~Notices~media_list~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good news@pix>>>rabbit1.jpg~rabbit2.jpg~rabbit3.jpg~cute_rabbit2.jpg***bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@header>>>Media Board@tpl>>>dotednotes@nCol>>>3@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news this is good news this is good news this is good news|%|this is good news***bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@tpl>>>slidernote@menuItems>>>News~Notices~media_list~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good news@pix>>>rabbit1.jpg~rabbit2.jpg~rabbit3.jpg~cute_rabbit2.jpg***bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@tpl>>>blocknote@menuItems>>>News~Notices~media_list~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good news@pix>>>rabbit1.jpg~rabbit2.jpg~rabbit3.jpg~cute_rabbit2.jpg***bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@header>>>Media Board@tpl>>>dtabnote@nCol>>>4@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news this is good news this is good news this is good news|%|this is good news***bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@header>>>Media Board@tpl>>>ttabnote@nCol>>>4@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news this is good news this is good news this is good news|%|this is good news***bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@nCol>>>3@ackcolor>>>white@tpl>>>cardtuxnote@menuItems>>>News~Notices~media_list~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good news@pix>>>rabbit1.jpg~rabbit2.jpg~rabbit3.jpg~cute_rabbit2.jpg***bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@nCol>>>4@tpl>>>uplifthovernote@menuItems>>>News~Notices~media_list~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good news@pix>>>http://localhost/SBK_School_Online/dist/pics/ust/Android_Andy-wallpaper-10849979.jpg~http://localhost/SBK_School_Online/dist/pics/ust/Android_Andy-wallpaper-10849979.jpg~http://localhost/SBK_School_Online/dist/pics/ust/Android_Andy-wallpaper-10849979.jpg~http://localhost/SBK_School_Online/dist/pics/ust/Android_Andy-wallpaper-10849979.jpg', '0:0:0:0:12:12:12:12:12:12:12:12:12:12:12:12:12:12', 'bks***sbk***kbs***the author is from bootsnipet, thanks to all who makes web development easier***From Bootsnipet***From Bootsnipet***straight from schoolyne.com you can contact us to order for your special component design or you can submit your own designs***straight up from schoolyne.com for free actually.\r\n\r\nfeel free to use it and customize for you sole purposes :) ***schoolyne.com is the author***By - schoolyne.com ***schoolyne.com with thanks :)***schoolyne.com with pleasure***schoolyne.com***schoolyne.com***schoolyne.com***schoolyne.com***schoolyne.com***schoolyne.com'),
(5, 'pics_pic', 'pics_pic:picSlider', 'picaboo>>>http://localhost/SBK_School_Online/dist/graphics/herh.jpg~http://localhost/SBK_School_Online/dist/graphics/rabbit1.jpg~http://localhost/SBK_School_Online/dist/graphics/rabbit2.jpg~http://localhost/SBK_School_Online/dist/graphics/rabbit3.jpg@capaboo>>>#~#~#~#@nCol>>>4@pStyle>>>circle@tpl>>>static_pic***picaboo>>>http://localhost/SBK_School_Online/dist/graphics/kid.jpg~http://localhost/SBK_School_Online/dist/graphics/to.jpg~http://localhost/SBK_School_Online/dist/graphics/sbk.jpg~http://localhost/SBK_School_Online/dist/graphics/to.jpg~http://localhost/SBK_School_Online/dist/graphics/ubuntu.jpg@capaboo>>>BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL@tpl>>>pics_pic@shades>>>rgba(0, 0, 0, 0.49)@dots>>>rgba(105, 54, 6, 0.99)', '0:0', '***');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` int(3) NOT NULL,
  `page_id` int(2) NOT NULL,
  `pos` varchar(9) NOT NULL,
  `properties` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `page_id`, `pos`, `properties`) VALUES
(63, 8, '0:1,6', 'we give your kids the best of education to make sure that they emerge as good future leaders of this our beloved nation ghana <br />'),
(66, 22, '1:1,0', '<p>This webpage has been created without writing any code, this cms is the most intuitive and easy to use engine ive ever come across.</p><p>It just needs a little more finishing touches here and there and finally one can leave it to wander the internet alone.</p><p>God help ... <img style="width:32px;" src="http://localhost/SBK_School_Online/dist/pics/ust/twitter_32x32.png" class="img-responsive" alt="twitter_32x32.png" /><br /></p>'),
(67, 17, '1:0,2', '                                This is the content container, it allows you to place content in your page (you can even include pictures)\n Click on the edit link to edit the contents                                \n                                '),
(68, 7, '0:1,1', 'This is the content container, it allows you to place content in your page (you can even include pictures)\n Click on the edit link to edit the contents');

-- --------------------------------------------------------

--
-- Table structure for table `footer`
--

CREATE TABLE `footer` (
  `id` int(3) NOT NULL,
  `page_id` int(2) NOT NULL,
  `pos` varchar(9) NOT NULL,
  `properties` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `footer`
--

INSERT INTO `footer` (`id`, `page_id`, `pos`, `properties`) VALUES
(8, 2, '0:1,0', 'bckcolor>>>brown@tcktcolor>>>orange@lckncolor>>>grey@tpl>>>footer@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~The Media & Press=Current Info||History||Policies||Maps&Directions~The University=Current Info||History||Policies||Maps&Directions~Online Services=Current Info||History||Policies||Maps&Directions @menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#'),
(98, 18, '2:0,1', 'bckcolor>>>brown@bordercklor>>>black@tcktcolor>>>orange@lckncolor>>>grey@tpl>>>profoot@nCol>>>4@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~The Media & Press=Current Info||History||Policies||Maps&Directions~The University=Current Info||History||Policies||Maps&Directions~Online Services=Current Info||History||Policies||Maps&Directions @menuLinks>>>#=clone.sbk||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#'),
(111, 19, '2:0,2', 'bckcolor>>>brown@bordercklor>>>rgba(105, 54, 6, 0.99)@tcktcolor>>>rgba(0, 0, 0, 0.58)@lckncolor>>>rgb(255, 165, 0)@tpl>>>tactfooter@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~The University=Current Info||History||Policies||Maps&Directions~Online Services=Current Info||History||Policies||Maps&Directions ~CONTACT=head - 0243337989||designer - 0501349231||photos - 1223sbn||site - 2323776589@menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#'),
(113, 20, '0:1,0', 'bckcolor>>>brown@tcktcolor>>>rgb(255, 128, 0)@lckncolor>>>grey@tpl>>>footer@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~The Media & Press=Current Info||History||Policies||Maps&Directions~The University=Current Info||History||Policies||Maps&Directions~Online Services=Current Info||History||Policies||Maps&Directions @menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#@bordercklor>>>rgb(0, 128, 0)'),
(114, 20, '0:1,5', 'bckcolor>>>brown@bordercklor>>>black@tcktcolor>>>orange@lckncolor>>>grey@tpl>>>nicefooter@nCol>>>4@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~The Media & Press=Current Info||History||Policies||Maps&Directions~The University=Current Info||History||Policies||Maps&Directions~Online Services=Current Info||History||Policies||Maps&Directions @menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#@fbt>>>fbt'),
(115, 5, '0:1,5', 'bckcolor>>>brown@tcktcolor>>>orange@lckncolor>>>grey@tpl>>>footer@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~The Media & Press=Current Info||History||Policies||Maps&Directions~The University=Current Info||History||Policies||Maps&Directions~Online Services=Current Info||History||Policies||Maps&Directions @menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#@bordercklor>>>rgb(0, 128, 0)'),
(117, 21, '1:0,0', 'bckcolor>>>brown@bordercklor>>>black@tcktcolor>>>orange@lckncolor>>>grey@tpl>>>footer@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~The Media & Press=Current Info||History||Policies||Maps&Directions~The University=Current Info||History||Policies||Maps&Directions~Online Services=Current Info||History||Policies||Maps&Directions @menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#'),
(121, 8, '0:1,1', 'bckcolor>>>brown@tcktcolor>>>orange@lckncolor>>>grey@tpl>>>footer@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~The Media & Press=Current Info||History||Policies||Maps&Directions~The University=Current Info||History||Policies||Maps&Directions~Online Services=Current Info||History||Policies||Maps&Directions @menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#@bordercklor>>>rgb(0, 128, 0)'),
(125, 22, '2:0,1', 'bckcolor>>>rgb(255, 255, 255)@bordercklor>>>rgba(255, 255, 255, 0.1)@tcktcolor>>>rgb(165, 42, 42)@lckncolor>>>rgb(255, 128, 0)@tpl>>>tactfooter@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~The Media & Press=Current Info||History||Policies||Maps&Directions~The University=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#'),
(126, 17, '0:0,1', 'bckcolor>>>rgb(255, 255, 255)@bordercklor>>>rgb(165, 42, 42)@tcktcolor>>>rgb(0, 0, 0)@lckncolor>>>rgb(255, 165, 0)@tpl>>>nicefooter@nCol>>>4@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~The Media & Press=Current Info||History||Policies||Maps&Directions~The University=Current Info||History||Policies||Maps&Directions~Online Services=Current Info||History||Policies||Maps&Directions @menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#@fbt>>>this is the footer bootom text'),
(127, 17, '2:0,1', 'bckcolor>>>brown@bordercklor>>>rgba(105, 54, 6, 0.99)@tcktcolor>>>rgba(0, 0, 0, 0.58)@lckncolor>>>rgb(255, 165, 0)@tpl>>>tactfooter@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~The University=Current Info||History||Policies||Maps&Directions~Online Services=Current Info||History||Policies||Maps&Directions @menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#'),
(128, 23, '2:0,2', 'bckcolor>>>rgb(255, 255, 255)@bordercklor>>>rgb(255, 255, 255)@tcktcolor>>>rgb(222, 184, 135)@lckncolor>>>rgb(223, 140, 25)@tpl>>>doubfoot@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~The Media & Press=Current Info||History||Policies||Maps&Directions~The University=Current Info||History||Policies||Maps&Directions~Online Services=Current Info||History||Policies||Maps&Directions @menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#'),
(129, 24, '2:0,2', 'bckcolor>>>brown@bordercklor>>>rgba(105, 54, 6, 0.99)@tcktcolor>>>rgba(0, 0, 0, 0.58)@lckncolor>>>rgb(255, 165, 0)@tpl>>>tactfooter@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~The University=Current Info||History||Policies||Maps&Directions~Online Services=Current Info||History||Policies||Maps&Directions ~CONTACT=head - 0243337989||designer - 0501349231||photos - 1223sbn||site - 2323776589@menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#');

-- --------------------------------------------------------

--
-- Table structure for table `logger`
--

CREATE TABLE `logger` (
  `id` int(3) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `code` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logger`
--

INSERT INTO `logger` (`id`, `comment`, `time`, `code`) VALUES
(1, 'init', '2017-02-18 05:39:39', 'sbk');

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(1) NOT NULL,
  `module` varchar(99) NOT NULL,
  `code` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `navbar`
--

CREATE TABLE `navbar` (
  `id` int(3) NOT NULL,
  `page_id` int(2) NOT NULL,
  `pos` varchar(9) NOT NULL,
  `properties` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `navbar`
--

INSERT INTO `navbar` (`id`, `page_id`, `pos`, `properties`) VALUES
(78, 18, '0:0,0', 'bckcolor>>>rgb(18, 98, 106)@bordercklor>>>rgb(18, 98, 106)@ackcolor>>>rgb(165, 42, 42)@tcktcolor>>>rgb(255, 165, 0)@lckncolor>>>#d4d4d4@ckurrent>>>Home@tpl>>>breadnav@menuItems>>>Home=~About=~University=~News Events=~Academics=~Students=~Staff=@menuLinks>>>#=~#=~#=~#=~#=~#=~#='),
(105, 19, '0:0,1', 'bckcolor>>>#4f372d@bordercklor>>>black@ackcolor>>>#df8c19@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Home@tpl>>>navbar@menuItems>>>Home=~About=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~News Events=Current Info||History||Policies||Maps&Directions~Academics=Current Info||History||Policies||Maps&Directions~Students=Current Info||History||Policies||Maps&Directions~Staff=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#'),
(107, 20, '0:1,7', 'bckcolor>>>#4f372d@bordercklor>>>black@ackcolor>>>#df8c19@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Home@tpl>>>breadnav@menuItems>>>Home=~About=~University=~News Events=~Academics=~Students=~Staff=@menuLinks>>>#=~#=~#=~#=~#=~#=~#='),
(108, 20, '0:1,6', 'bckcolor>>>#4f372d@bordercklor>>>black@ackcolor>>>#df8c19@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Home@tpl>>>linenav@menuItems>>>Home=~About=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~News Events=Current Info||History||Policies||Maps&Directions~Academics=Current Info||History||Policies||Maps&Directions~Students=Current Info||History||Policies||Maps&Directions~Staff=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#'),
(109, 20, '0:1,1', 'bckcolor>>>rgb(255, 128, 0)@bordercklor>>>rgb(255, 255, 255)@ackcolor>>>rgb(165, 42, 42)@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Home@tpl>>>navbar@menuItems>>>Home=~About=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~News Events=Current Info||History||Policies||Maps&Directions~Academics=Current Info||History||Policies||Maps&Directions~Students=Current Info||History||Policies||Maps&Directions~Staff=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#@beacon>>>'),
(110, 5, '0:0,3', 'bckcolor>>>#4f372d@bordercklor>>>black@ackcolor>>>#df8c19@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Home@tpl>>>navbar@menuItems>>>Home=~About=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~News Events=Current Info||History||Policies||Maps&Directions~Academics=Current Info||History||Policies||Maps&Directions~Students=Current Info||History||Policies||Maps&Directions~Staff=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#'),
(111, 5, '0:1,4', 'bckcolor>>>#4f372d@bordercklor>>>black@ackcolor>>>#df8c19@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Home@tpl>>>breadnav@menuItems>>>Home=~About=~University=~News Events=~Academics=~Students=~Staff=@menuLinks>>>#=~#=~#=~#=~#=~#=~#='),
(112, 5, '0:1,16', 'bckcolor>>>#4f372d@bordercklor>>>black@ackcolor>>>#df8c19@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Home@tpl>>>linenav@menuItems>>>Home=~About=~University=~News Events=~Academics=~Students=~Staff=@menuLinks>>>#=~#=~#=~#=~#=~#=~#='),
(113, 5, '0:1,17', 'bckcolor>>>#4f372d@bordercklor>>>black@ackcolor>>>#df8c19@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Home@tpl>>>navbar@menuItems>>>Home=~About=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~News Events=Current Info||History||Policies||Maps&Directions~Academics=Current Info||History||Policies||Maps&Directions~Students=Current Info||History||Policies||Maps&Directions~Staff=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#'),
(115, 21, '0:0,0', 'bckcolor>>>#4f372d@bordercklor>>>black@ackcolor>>>#df8c19@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Home@tpl>>>navbar@menuItems>>>Home=~About=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~News Events=Current Info||History||Policies||Maps&Directions~Academics=Current Info||History||Policies||Maps&Directions~Students=Current Info||History||Policies||Maps&Directions~Staff=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#'),
(119, 8, '0:1,2', 'bckcolor>>>rgb(255, 128, 0)@bordercklor>>>rgb(255, 255, 255)@ackcolor>>>rgb(165, 42, 42)@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Home@tpl>>>navbar@menuItems>>>Home=~About=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~News Events=Current Info||History||Policies||Maps&Directions~Academics=Current Info||History||Policies||Maps&Directions~Students=Current Info||History||Policies||Maps&Directions~Staff=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#@beacon>>>'),
(122, 22, '0:0,1', 'bckcolor>>>rgb(255, 128, 0)@bordercklor>>>rgb(255, 255, 255)@ackcolor>>>rgb(165, 42, 42)@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Home@tpl>>>navbar@menuItems>>>Home=~About=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~News Events=Current Info||History||Policies||Maps&Directions~Academics=Current Info||History||Policies||Maps&Directions~Students=Current Info||History||Policies||Maps&Directions~Staff=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#@beacon>>>'),
(123, 17, '1:0,0', 'bckcolor>>>#4f372d@bordercklor>>>black@ackcolor>>>#df8c19@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Home@tpl>>>navbar@menuItems>>>Home=~About=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~News Events=Current Info||History||Policies||Maps&Directions~Academics=Current Info||History||Policies||Maps&Directions~Students=Current Info||History||Policies||Maps&Directions~Staff=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#'),
(124, 23, '0:0,0', 'bckcolor>>>rgb(255, 255, 255)@bordercklor>>>rgb(255, 255, 255)@ackcolor>>>#df8c19@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Home@tpl>>>navbar@menuItems>>>Home=~About=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~News Events=Current Info||History||Policies||Maps&Directions~Academics=Current Info||History||Policies||Maps&Directions~Students=Current Info||History||Policies||Maps&Directions~Staff=Current Info||History||Policies||Maps&Directions~CONTACT=~Search=@menuLinks>>>#=~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=~#=@beacon>>>welcome');

-- --------------------------------------------------------

--
-- Table structure for table `notice_board`
--

CREATE TABLE `notice_board` (
  `id` int(3) NOT NULL,
  `page_id` int(2) NOT NULL,
  `pos` varchar(9) NOT NULL,
  `properties` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice_board`
--

INSERT INTO `notice_board` (`id`, `page_id`, `pos`, `properties`) VALUES
(196, 18, '0:0,1', 'bckcolor>>>rgba(255, 255, 255, 0)@bordercklor>>>rgb(18, 98, 106)@tcktcolor>>>rgb(18, 98, 106)@lckncolor>>>rgb(18, 98, 106)@ackcolor>>>rgb(255, 255, 255)@header>>>Media Board@tpl>>>dtabnote@nCol>>>4@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news this is good news this is good news this is good news|%|this is good news'),
(197, 18, '0:0,3', 'bckcolor>>>rgba(255, 255, 255, 0)@bordercklor>>>rgb(165, 42, 42)@tcktcolor>>>rgb(165, 42, 42)@lckncolor>>>rgb(165, 42, 42)@ackcolor>>>white@header>>>Media Board@tpl>>>ttabnote@nCol>>>4@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news this is good news this is good news this is good news|%|this is good news'),
(198, 18, '1:0,0', 'bckcolor>>>rgb(255, 255, 255)@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@header>>>Media Board@tpl>>>clickablenotice@nCol>>>1@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good news'),
(199, 18, '1:1,2', 'bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@tpl>>>penguinboard@nCol>>>3@menuItems>>>News~Notices~penguinboard~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good'),
(200, 18, '1:1,3', 'bckcolor>>>rgb(165, 42, 42)@bordercklor>>>black@tcktcolor>>>rgb(255, 128, 0)@lckncolor>>>rgb(34, 102, 183)@ackcolor>>>white@tpl>>>blocknote@menuItems>>>News~Notices~media_list~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good news@pix>>>rabbit1.jpg~rabbit2.jpg~rabbit3.jpg~cute_rabbit2.jpg'),
(252, 19, '1:1,2', 'bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@tpl>>>list_group@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good news'),
(253, 19, '1:1,4', 'bckcolor>>>rgba(0, 0, 0, 0.58)@bordercklor>>>rgba(6, 4, 4, 0.59)@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>rgba(0, 0, 0, 0.58)@header>>>Media Board@tpl>>>notice_board@nCol>>>4@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news this is good news this is good news this is good news|%|this is good news'),
(254, 19, '1:1,6', 'bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@tpl>>>list_group@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good news'),
(258, 20, '0:1,2', 'bckcolor>>>rgb(255, 255, 255)@bordercklor>>>rgb(212, 212, 212)@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@header>>>media@tpl>>>notice_board@nCol>>>4@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>l;ksDJF lKJS DFLKJSA flkjsh dlf ;s   fdgsdnhg % ?|%|this is good news|%|this is good news|%|this is good news'),
(259, 20, '0:1,3', 'bckcolor>>>rgba(0, 0, 0, 0.49)@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@nCol>>>2@ackcolor>>>white@tpl>>>cardtuxnote@menuItems>>>News~Notices~media_list~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news this is good news this is good news this is good news|%|this is good news|%|this is good news|%|this is good news this is good news this is good news this is good news@pix>>>http://localhost/SBK_School_Online/dist/pics/ust/007omega-wallpaper-9284845.jpg~http://localhost/SBK_School_Online/dist/pics/ust/Android_Andy-wallpaper-10849979.jpg~http://localhost/SBK_School_Online/dist/pics/ust/Angry_Birds-wallpaper-10942374.jpg~http://localhost/SBK_School_Online/dist/pics/ust/Inside_Time-wallpaper-9169824.jpg'),
(260, 20, '0:1,4', 'bckcolor>>>rgb(255, 255, 255)@bordercklor>>>rgb(0, 0, 0)@tcktcolor>>>rgb(79, 55, 45)@lckncolor>>>#d4d4d4@ackcolor>>>rgb(223, 140, 25)@tpl>>>list_group@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>i am so ha pp hios kjd kjasjd f9823ujajf|%|this is good news|%|this is good news|%|this is good news this is good newsthis is good news this is good news this is good news this is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good news this is good newsthis is good newsthis is good newsthis is good news'),
(261, 5, '0:1,0', 'bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@tpl>>>hoverboard@nCol>>>3@menuItems>>>News~Announcement~Students@menuLinks>>>#~#~#@readmore>>>this is goog news|%|this is goog news|%|this is goog news@pix>>>http://localhost/SBK_School_Online/dist/graphics/Windows-wallpaper-10021676.jpg~http://localhost/SBK_School_Online/dist/graphics/Windows-wallpaper-10021676.jpg~http://localhost/SBK_School_Online/dist/graphics/Windows-wallpaper-10021676.jpg'),
(262, 5, '0:1,1', 'bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@header>>>Media Board@tpl>>>tablotes@nCol>>>4@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news this is good news this is good news this is good news|%|this is good news'),
(263, 5, '0:1,2', 'bckcolor>>>rgb(255, 255, 255)@bordercklor>>>rgb(165, 42, 42)@tcktcolor>>>rgb(255, 128, 0)@lckncolor>>>rgba(255, 255, 255, 0)@ackcolor>>>rgb(255, 128, 0)@tpl>>>slidernote@menuItems>>>hrer~news~are@menuLinks>>>#~#~#@readmore>>>this is goog news|%|this is goog news|%|this is goog news@pix>>>http://localhost/SBK_School_Online/dist/graphics/Windows-wallpaper-10021676.jpg~http://localhost/SBK_School_Online/dist/graphics/Windows-wallpaper-10021676.jpg~http://localhost/SBK_School_Online/dist/graphics/Windows-wallpaper-10021676.jpg'),
(264, 5, '0:1,3', 'bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@header>>>Media Board@tpl>>>portletnote@nCol>>>4@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news this is good news this is good news this is good news|%|this is good news'),
(265, 5, '0:1,6', 'bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@header>>>Media Board@tpl>>>ptabs@nCol>>>4@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news this is good news this is good news this is good news|%|this is good news'),
(266, 5, '0:1,7', 'bckcolor>>>rgb(255, 255, 255)@bordercklor>>>rgb(79, 55, 45)@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@header>>>Media Board@tpl>>>notice_board@nCol>>>2@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news this is good news this is good news this is good news|%|this is good news'),
(267, 5, '0:1,9', 'bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@tpl>>>list_group@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good news'),
(268, 5, '0:1,10', 'bckcolor>>>rgb(255, 255, 255)@bordercklor>>>rgb(255, 128, 0)@tcktcolor>>>rgb(0, 0, 0)@lckncolor>>>rgb(255, 255, 0)@ackcolor>>>rgb(148, 0, 211)@header>>>Media Board@tpl>>>ptabs@nCol>>>4@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news this is good news this is good news this is good news|%|this is good news'),
(269, 5, '0:1,12', 'bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@header>>>Media Board@tpl>>>dtabnote@nCol>>>4@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news this is good news this is good news this is good news|%|this is good news'),
(270, 5, '0:1,13', 'bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@nCol>>>1@ackcolor>>>white@tpl>>>cardtuxnote@menuItems>>>hrer@menuLinks>>>#@readmore>>>this is goog news@pix>>>http://localhost/SBK_School_Online/dist/graphics/Windows-wallpaper-10021676.jpg'),
(271, 5, '0:1,14', 'bckcolor>>>rgba(255, 255, 255, 0)@bordercklor>>>rgb(255, 165, 0)@tcktcolor>>>rgb(165, 42, 42)@lckncolor>>>rgb(255, 255, 255)@ackcolor>>>rgb(165, 42, 42)@header>>>Media Board@tpl>>>ttabnote@nCol>>>4@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news this is good news this is good news this is good news|%|this is good news'),
(272, 5, '0:1,15', 'bckcolor>>>rgba(255, 255, 255, 0)@bordercklor>>>rgb(255, 128, 0)@tcktcolor>>>rgb(255, 165, 0)@lckncolor>>>#d4d4d4@ackcolor>>>rgb(128, 128, 128)@tpl>>>choosernote@nCol>>>3@menuItems>>>News~Notices~media_list@menuLinks>>>#~#~#@readmore>>>this is good news this is good news this is good news this is good news|%|this is good news this is good news this is good news this is good news|%|this is good news this is good news this is good news this is good news@pix>>>rabbit1.jpg~rabbit2.jpg~rabbit3.jpg~cute_rabbit2.jpg'),
(283, 8, '0:1,3', 'bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@tpl>>>hoverboard@nCol>>>3@menuItems>>>News~Announcement~Students@menuLinks>>>#~#~#@readmore>>>this is goog news|%|this is goog news|%|this is goog news@pix>>>http://localhost/SBK_School_Online/dist/graphics/Windows-wallpaper-10021676.jpg~http://localhost/SBK_School_Online/dist/graphics/Windows-wallpaper-10021676.jpg~http://localhost/SBK_School_Online/dist/graphics/Windows-wallpaper-10021676.jpg'),
(289, 22, '1:0,3', 'bckcolor>>>rgb(255, 255, 255)@bordercklor>>>rgba(255, 255, 255, 0)@tcktcolor>>>rgb(79, 55, 45)@lckncolor>>>#d4d4d4@ackcolor>>>white@tpl>>>choosernote@nCol>>>2@menuItems>>>News~Notices~media_list~Announcements~How@menuLinks>>>#~#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good news|%|this is good news this is good news@pix>>>http://localhost/SBK_School_Online/dist/pics/ust/Android_Andy-wallpaper-10849979.jpg~http://localhost/SBK_School_Online/dist/pics/ust/Angry_Birds-wallpaper-10942374.jpg~http://localhost/SBK_School_Online/dist/pics/ust/Inside_Time-wallpaper-9169824.jpg~http://localhost/SBK_School_Online/dist/pics/ust/Jack_Pierre-wallpaper-10342683.jpg~http://localhost/SBK_School_Online/dist/pics/ust/images_528.jpeg'),
(290, 22, '1:1,1', 'bckcolor>>>rgb(255, 255, 255)@bordercklor>>>rgb(192, 110, 28)@tcktcolor>>>rgb(0, 0, 0)@lckncolor>>>rgb(255, 255, 255)@ackcolor>>>rgb(223, 140, 25)@tpl>>>list_group@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news this is good newsthis is good news this is good news this is good news this is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good news this is good newsthis is good newsthis is good newsthis is good news|%|this is good news this is good newsthis is good news this is good news this is good news this is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good news this is good newsthis is good newsthis is good newsthis is good news|%|this is good news this is good newsthis is good news this is good news this is good news this is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good news this is good newsthis is good newsthis is good newsthis is good news|%|this is good news this is good newsthis is good news this is good news this is good news this is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good news this is good newsthis is good newsthis is good newsthis is good news'),
(291, 17, '2:0,2', 'bckcolor>>>rgba(0, 0, 0, 0.58)@bordercklor>>>rgba(6, 4, 4, 0.59)@tcktcolor>>>burlywood@lckncolor>>>rgb(141, 122, 20)@ackcolor>>>rgb(223, 140, 25)@header>>>Notice Board@tpl>>>ptabs@nCol>>>4@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news this is good news this is good news this is good news|%|this is good news'),
(292, 17, '2:0,3', 'bckcolor>>>rgba(0, 0, 0, 0.58)@bordercklor>>>rgba(6, 4, 4, 0.59)@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>rgba(0, 0, 0, 0.58)@header>>>Media Board@tpl>>>notice_board@nCol>>>4@menuItems>>>News~Notices~Announcements~hrer@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good news'),
(293, 17, '2:0,4', 'bckcolor>>>rgba(0, 0, 0, 0.58)@bordercklor>>>rgb(222, 184, 135)@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>rgba(0, 0, 0, 0.58)@tpl>>>list_group@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good news'),
(294, 23, '1:0,0', 'bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@tpl>>>media_list@menuItems>>>News~Notices~News~Announcements~How@menuLinks>>>#~#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good news|%|this is good news@pix>>>http://localhost/SBK_School_Online/dist/pics/ust/boy.png~http://localhost/SBK_School_Online/dist/pics/ust/boy-3.png~http://localhost/SBK_School_Online/dist/pics/ust/boy-4.png~http://localhost/SBK_School_Online/dist/pics/ust/boy-5.png~http://localhost/SBK_School_Online/dist/pics/ust/images_528.jpeg'),
(295, 23, '1:1,0', 'bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@tpl>>>media_list@menuItems>>>News~Notices~News~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good news@pix>>>http://localhost/SBK_School_Online/dist/pics/ust/Tomb_Raider-wallpaper-10422827.jpg~http://localhost/SBK_School_Online/dist/pics/ust/girl.png~http://localhost/SBK_School_Online/dist/pics/ust/girl-2.png~http://localhost/SBK_School_Online/dist/pics/ust/Android_Andy-wallpaper-10849979%20copy%202.jpg'),
(296, 23, '1:2,0', 'bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@tpl>>>media_list@menuItems>>>News~Notices~News~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good news@pix>>>http://localhost/SBK_School_Online/dist/pics/ust/Inside_Time-wallpaper-9169824.jpg~http://localhost/SBK_School_Online/dist/pics/ust/Jack_Pierre-wallpaper-10342683.jpg~http://localhost/SBK_School_Online/dist/pics/ust/Angry_Birds-wallpaper-10942374.jpg~http://localhost/SBK_School_Online/dist/pics/ust/back.jpg'),
(297, 24, '1:1,2', 'bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@tpl>>>list_group@menuItems>>>News~Notices~Past Event~Announcements~hrer@menuLinks>>>#~#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news this is good news this is good news this is good news this is good news this is good news this is good news this is good news this is good news this is good news v|%|this is good news|%|this is good news'),
(298, 24, '1:1,4', 'bckcolor>>>rgba(0, 0, 0, 0.58)@bordercklor>>>rgba(6, 4, 4, 0.59)@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>rgba(0, 0, 0, 0.58)@header>>>Media Board@tpl>>>notice_board@nCol>>>4@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news this is good news this is good news this is good news|%|this is good news'),
(299, 24, '1:1,6', 'bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@tpl>>>list_group@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good news'),
(300, 7, '0:1,0', 'bckcolor>>>rgb(255, 255, 255)@bordercklor>>>rgba(255, 255, 255, 0.78)@tcktcolor>>>rgb(79, 55, 45)@lckncolor>>>#d4d4d4@ackcolor>>>rgb(223, 140, 25)@tpl>>>list_group@menuItems>>>Announcements~news@menuLinks>>>#~#@readmore>>>this is good news|%|this is goog news');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `page_id` int(2) NOT NULL,
  `php_self` varchar(99) NOT NULL,
  `layout_info` varchar(999) NOT NULL,
  `other_infos` varchar(999) NOT NULL,
  `component_id` varchar(999) NOT NULL,
  `status` varchar(99) NOT NULL,
  `class` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `php_self`, `layout_info`, `other_infos`, `component_id`, `status`, `class`) VALUES
(5, 'another.sbk', '0,4,8=title_bar.tiles.tiles.navbar,notice_board.notice_board.notice_board.notice_board.navbar.footer.notice_board.notice_board.br.notice_board.notice_board.pics_pic.notice_board.notice_board.notice_board.notice_board.navbar.navbar.pics_pic,nothing', 'bdColor>>>rgba(255, 255, 255, 0)@icColor>>>rgba(255, 255, 255, 0)@bckimg>>>http://localhost/SBK_School_Online/dist/pics/ust/Android_Andy-wallpaper-10849979.jpg@mLeft>>>0@mRight>>>0@mTop>>>0@mBottom>>>0@padding>>>0', '98:107:108:110:261:262:263:264:111:115:265:266:267:268:88:269:270:271:272:112:113:89', 'active', 0),
(7, 'clone.sbk', '0,4,8=tiles,notice_board.content,nothing', 'bdColor>>>rgb(141, 122, 20)@icColor>>>rgba(255, 255, 255, 0)@bckimg>>>none@mLeft>>>40@mRight>>>37@mTop>>>99@mBottom>>>99@padding>>>24', '128:300:68', 'active', 0),
(8, 'page.sbk', '0,4,8=tiles.tiles.title_bar.tiles,tiles.footer.navbar.notice_board.br.pics_pic.content,nothing', 'bdColor>>>rgba(255, 255, 255, 0)@icColor>>>rgba(255, 255, 255, 0)@bckimg>>>http://localhost/SBK_School_Online/dist/pics/ust/Angry_Birds-wallpaper-10942374.jpg@mLeft>>>34@mRight>>>33@mTop>>>15@mBottom>>>38@padding>>>5', '118:119:101:120:121:121:119:283:95:63', 'active', 0),
(17, 'cancel.sbk', '0:0:0=pics_pic.footer.pics_pic:navbar.br.content.title_bar:br.footer.notice_board.notice_board.notice_board.tiles.hr', 'bdColor>>>rgb(255, 255, 255)@icColor>>>rgba(255, 255, 255, 0)@bckimg>>>none@mLeft>>>15@mRight>>>15@mTop>>>9@mBottom>>>99@padding>>>1', '102:126:103:123:67:103:127:291:292:293:125', 'active', 0),
(18, '3y3.sbk', '0:0,3,9:0=navbar.notice_board.br.notice_board.br:notice_board,pics_pic.br.notice_board.hr.notice_board,nothing:br.hr.footer', 'bdColor>>>rgba(255, 255, 255, 0)@icColor>>>rgba(0, 0, 0, 0.69)@bckimg>>>http://localhost/SBK_School_Online/dist/pics/ust/Android_Andy-wallpaper-10849979.jpg@mLeft>>>0@mRight>>>0@mTop>>>0@mBottom>>>0@padding>>>10', '78:196:197:198:64:199:200:98', 'active', 0),
(19, 'now.sbk', '0:0,3,9:0=pics_pic.navbar.hr:tiles.title_bar.pics_pic,pics_pic.br.notice_board.br.notice_board.hr.notice_board,nothing:br.br.footer', 'bdColor>>>rgb(255, 255, 255)@icColor>>>rgba(255, 255, 255, 0)@bckimg>>>none@mLeft>>>0@mRight>>>0@mTop>>>0@mBottom>>>0@padding>>>13', '85:105:103:95:86:87:252:253:254:111', 'active', 0),
(20, 'jama.sbk', '0,4,8=title_bar.tiles.tiles,footer.navbar.navbar.navbar.footer.notice_board.notice_board.notice_board,nothing', 'bdColor>>>rgba(255, 255, 255, 0)@icColor>>>rgba(255, 255, 255, 0)@bckimg>>>http://localhost/SBK_School_Online/dist/pics/ust/Angry_Birds-wallpaper-10942374.jpg@mLeft>>>34@mRight>>>33@mTop>>>15@mBottom>>>38@padding>>>5', '97:105:106:113:107:108:109:114:258:259:260', 'active', 0),
(21, 'seth.sbk', '0:0=navbar:footer', 'bdColor>>>white@icColor>>>white@bckimg>>>none@mLeft>>>0@mRight>>>0@mTop>>>0@mBottom>>>0@padding>>>5', '115:117', 'active', 0),
(22, 'me.sbk', '0:0,6,6:0=pics_pic.navbar.pics_pic.br:br.tiles.br.notice_board,content.notice_board,nothing:br.footer', 'bdColor>>>white@icColor>>>white@bckimg>>>none@mLeft>>>19@mRight>>>21@mTop>>>19@mBottom>>>24@padding>>>30', '100:122:101:124:289:66:290:125', 'active', 0),
(23, 'pages.sbk', '0:0,4,4,4:0=navbar.br.pics_pic.br.br:notice_board,notice_board,notice_board,nothing:br.br.footer', 'bdColor>>>white@icColor>>>white@bckimg>>>none@mLeft>>>0@mRight>>>0@mTop>>>0@mBottom>>>0@padding>>>8', '124:104:294:295:296:128', 'active', 0),
(24, 'grow.sbk', '0:0,3,9:0=pics_pic.hr:tiles.title_bar.tiles,pics_pic.br.notice_board.br.notice_board.hr.notice_board,nothing:br.br.footer', 'bdColor>>>rgb(255, 255, 255)@icColor>>>rgba(255, 255, 255, 0)@bckimg>>>none@mLeft>>>0@mRight>>>0@mTop>>>0@mBottom>>>0@padding>>>13', '105:126:104:127:106:297:298:299:129', 'active', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pics_pic`
--

CREATE TABLE `pics_pic` (
  `id` int(3) NOT NULL,
  `page_id` int(2) NOT NULL,
  `pos` varchar(9) NOT NULL,
  `properties` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pics_pic`
--

INSERT INTO `pics_pic` (`id`, `page_id`, `pos`, `properties`) VALUES
(64, 18, '1:1,0', 'picaboo>>>http://localhost/SBK_School_Online/dist/graphics/kid.jpg~http://localhost/SBK_School_Online/dist/graphics/to.jpg~http://localhost/SBK_School_Online/dist/graphics/sbk.jpg~http://localhost/SBK_School_Online/dist/graphics/to.jpg~http://localhost/SBK_School_Online/dist/graphics/ubuntu.jpg@capaboo>>>BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL@tpl>>>pics_pic@shades>>>rgba(0, 0, 0, 0.49)@dots>>>rgba(105, 54, 6, 0.99)'),
(85, 19, '0:0,0', 'picaboo>>>http://localhost/SBK_School_Online/dist/pics/ust/header.jpg@capaboo>>>BACK TO SCHOOL@tpl>>>pics_pic@shades>>>rgba(0, 0, 0, 0.49)@dots>>>rgba(105, 54, 6, 0.99)'),
(86, 19, '1:0,2', 'picaboo>>>http://localhost/SBK_School_Online/dist/graphics/kid.jpg~http://localhost/SBK_School_Online/dist/graphics/to.jpg~http://localhost/SBK_School_Online/dist/graphics/sbk.jpg~http://localhost/SBK_School_Online/dist/graphics/to.jpg~http://localhost/SBK_School_Online/dist/graphics/ubuntu.jpg~http://localhost/SBK_School_Online/dist/graphics/to.jpg@capaboo>>>BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL@tpl>>>pics_pic@shades>>>rgba(0, 0, 0, 0.49)@dots>>>rgb(79, 55, 45)'),
(87, 19, '1:1,0', 'picaboo>>>http://localhost/SBK_School_Online/dist/graphics/kid.jpg~http://localhost/SBK_School_Online/dist/graphics/to.jpg~http://localhost/SBK_School_Online/dist/graphics/sbk.jpg~http://localhost/SBK_School_Online/dist/graphics/to.jpg~http://localhost/SBK_School_Online/dist/graphics/ubuntu.jpg@capaboo>>>BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL@tpl>>>pics_pic@shades>>>rgba(0, 0, 0, 0.49)@dots>>>rgba(105, 54, 6, 0.99)'),
(88, 5, '0:1,11', 'picaboo>>>http://localhost/SBK_School_Online/dist/graphics/kid.jpg~http://localhost/SBK_School_Online/dist/graphics/to.jpg~http://localhost/SBK_School_Online/dist/graphics/sbk.jpg~http://localhost/SBK_School_Online/dist/graphics/to.jpg@capaboo>>>BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL@tpl>>>pics_pic@shades>>>rgba(0, 0, 0, 0.49)@dots>>>rgba(105, 54, 6, 0.99)'),
(89, 5, '0:1,18', 'picaboo>>>http://localhost/SBK_School_Online/dist/graphics/kid.jpg~http://localhost/SBK_School_Online/dist/graphics/to.jpg~http://localhost/SBK_School_Online/dist/graphics/sbk.jpg~http://localhost/SBK_School_Online/dist/graphics/to.jpg~http://localhost/SBK_School_Online/dist/graphics/ubuntu.jpg@capaboo>>>BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL@tpl>>>pics_pic@shades>>>rgba(0, 0, 0, 0.49)@dots>>>rgba(105, 54, 6, 0.99)'),
(95, 8, '0:1,5', 'picaboo>>>http://localhost/SBK_School_Online/dist/graphics/rabbit3.jpg~http://localhost/SBK_School_Online/dist/pics/ust/NewFolder/stopwatch-26.png~http://localhost/SBK_School_Online/dist/pics/ust/boy-4.png~http://localhost/SBK_School_Online/dist/pics/ust/boy-3.png@capaboo>>>#~BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL@nCol>>>4@pStyle>>>circle@tpl>>>static_pic'),
(100, 22, '0:0,0', 'picaboo>>>http://localhost/SBK_School_Online/dist/graphics/rabbit3.jpg~http://localhost/SBK_School_Online/dist/pics/ust/NewFolder/stopwatch-26.png~http://localhost/SBK_School_Online/dist/pics/ust/boy-4.png~http://localhost/SBK_School_Online/dist/pics/ust/boy-3.png@capaboo>>>#~BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL@nCol>>>4@pStyle>>>@tpl>>>static_pic'),
(101, 22, '0:0,2', 'picaboo>>>http://localhost/SBK_School_Online/dist/graphics/kid.jpg~http://localhost/SBK_School_Online/dist/graphics/to.jpg~http://localhost/SBK_School_Online/dist/graphics/sbk.jpg~http://localhost/SBK_School_Online/dist/graphics/to.jpg~http://localhost/SBK_School_Online/dist/graphics/ubuntu.jpg@capaboo>>>BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL@tpl>>>pics_pic@shades>>>rgba(0, 0, 0, 0.49)@dots>>>rgba(105, 54, 6, 0.99)'),
(102, 17, '0:0,0', 'picaboo>>>http://localhost/SBK_School_Online/dist/graphics/to.jpg~http://localhost/SBK_School_Online/dist/graphics/to.jpg~http://localhost/SBK_School_Online/dist/graphics/to.jpg@capaboo>>>BACK TO SCHOOL BACK TO SCHOOL BACK TO SCHOOL~BACK TO SCHOOL BACK TO SCHOOLBACK TO SCHOOLBACK TO SCHOOL~BACK TO SCHOOL BACK TO SCHOOL BACK TO SCHOOL BACK TO SCHOOL@tpl>>>pics_pic@shades>>>rgba(128, 128, 128, 0.49)@dots>>>rgb(255, 255, 255)'),
(103, 17, '0:0,2', 'picaboo>>>http://localhost/SBK_School_Online/dist/pics/ust/NewFolder/wifi-signal-5.png~http://localhost/SBK_School_Online/dist/pics/ust/NewFolder/video-player-6.png~http://localhost/SBK_School_Online/dist/pics/ust/NewFolder/stopwatch-26.png~http://localhost/SBK_School_Online/dist/pics/ust/boy.png~http://localhost/SBK_School_Online/dist/pics/ust/girl.png~http://localhost/SBK_School_Online/dist/pics/ust/girl-2.png@capaboo>>>#~BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL@nCol>>>3@pStyle>>>@tpl>>>static_pic'),
(104, 23, '0:0,2', 'picaboo>>>http://localhost/SBK_School_Online/dist/pics/ust/Ubuntu-wallpaper-9328565.jpg~http://localhost/SBK_School_Online/dist/pics/ust/Tesla-wallpaper-10795768.jpg~http://localhost/SBK_School_Online/dist/pics/ust/Ubuntu-wallpaper-9328565.jpg~http://localhost/SBK_School_Online/dist/pics/ust/Tesla-wallpaper-10795768.jpg~http://localhost/SBK_School_Online/dist/pics/ust/Tesla-wallpaper-10795768.jpg~http://localhost/SBK_School_Online/dist/pics/ust/Ubuntu-wallpaper-9328565.jpg~http://localhost/SBK_School_Online/dist/pics/ust/Tesla-wallpaper-10795768.jpg~http://localhost/SBK_School_Online/dist/pics/ust/Ubuntu-wallpaper-9328565.jpg@capaboo>>>#~#~#~BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL@nCol>>>4@pStyle>>>@tpl>>>static_pic'),
(105, 24, '0:0,4', 'picaboo>>>http://localhost/SBK_School_Online/dist/pics/ust/boy-3.png~http://localhost/SBK_School_Online/dist/pics/ust/girl-2.png~http://localhost/SBK_School_Online/dist/pics/ust/boy-5.png~http://localhost/SBK_School_Online/dist/pics/ust/girl.png~http://localhost/SBK_School_Online/dist/pics/ust/boy-4.png~http://localhost/SBK_School_Online/dist/pics/ust/boy.png@capaboo>>>#~#~BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL@nCol>>>3@pStyle>>>circle@tpl>>>static_pic'),
(106, 24, '1:1,0', 'picaboo>>>http://localhost/SBK_School_Online/dist/graphics/to.jpg~http://localhost/SBK_School_Online/dist/graphics/sbk.jpg~http://localhost/SBK_School_Online/dist/graphics/to.jpg~http://localhost/SBK_School_Online/dist/graphics/ubuntu.jpg~http://localhost/SBK_School_Online/dist/graphics/to.jpg@capaboo>>>BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL@tpl>>>pics_pic@shades>>>rgba(0, 0, 0, 0.49)@dots>>>rgba(105, 54, 6, 0.99)');

-- --------------------------------------------------------

--
-- Table structure for table `tiles`
--

CREATE TABLE `tiles` (
  `id` int(3) NOT NULL,
  `page_id` int(2) NOT NULL,
  `pos` varchar(9) NOT NULL,
  `properties` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tiles`
--

INSERT INTO `tiles` (`id`, `page_id`, `pos`, `properties`) VALUES
(6, 2, '0:0,1', 'bckcolor>>>rgb(165, 42, 42)@ackcolor>>>#df8c19@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Colleges@tpl>>>tiles@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~Media=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~Service=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#'),
(103, 19, '1:0,0', 'bckcolor>>>rgba(221, 12, 170, 0.98)@bordercklor>>>black@ackcolor>>>rgb(255, 20, 147)@tcktcolor>>>rgb(255, 128, 0)@lckncolor>>>rgb(255, 255, 255)@ckurrent>>>Colleges@tpl>>>duptiles@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~Media=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~Service=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#'),
(105, 20, '0:0,1', 'bckcolor>>>rgba(255, 255, 255, 0)@ackcolor>>>rgb(0, 0, 0)@tcktcolor>>>rgb(0, 0, 0)@lckncolor>>>rgb(255, 255, 255)@ckurrent>>>Colleges@tpl>>>tiles@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~Media=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~Service=Current Info||History||Policies||Maps&Directions@menuLinks>>>page.sbk=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#'),
(106, 20, '0:0,2', 'bckcolor>>>#4f372d@bordercklor>>>black@ackcolor>>>#df8c19@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Colleges@tpl>>>tabifynote@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~Media=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~Service=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#'),
(107, 5, '0:0,1', 'bckcolor>>>#4f372d@bordercklor>>>black@ackcolor>>>#df8c19@tcktcolor>>>burlywood@lckncolor>>>rgb(255, 255, 255)@ckurrent>>>Colleges@tpl>>>tabifynote@menuItems>>>Colleges=~Media=~University=~Service=@menuLinks>>>cancel.sbk=~clone.sbk=~#=~#='),
(108, 5, '0:0,2', 'bckcolor>>>@bordercklor>>>black@ackcolor>>>#df8c19@tcktcolor>>>rgb(0, 0, 0)@lckncolor>>>rgb(165, 42, 42)@ckurrent>>>Colleges@tpl>>>duptiles@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~Media=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~Service=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=clone.sbk||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#'),
(118, 8, '0:0,0', 'bckcolor>>>rgba(255, 255, 255, 0)@bordercklor>>>black@ackcolor>>>rgb(255, 255, 255)@tcktcolor>>>rgb(0, 0, 0)@lckncolor>>>rgb(255, 0, 0)@ckurrent>>>Colleges@tpl>>>vnavbar@menuItems>>>Colleges=Current Info||History||Policies||dada~Media=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~Service=Current Info||History||Policies||Maps&Directions~CONTACT=bom~Search=@menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#~#='),
(119, 8, '0:0,1', 'bckcolor>>>rgb(255, 255, 255)@bordercklor>>>black@ackcolor>>>#df8c19@tcktcolor>>>rgb(0, 0, 0)@lckncolor>>>rgb(165, 42, 42)@ckurrent>>>Colleges@tpl>>>duptiles@menuItems>>>Colleges=Current Info||History||Policies~Media=Current Info||History||Policies~University=Current Info||History||Policies~Service=Current Info||History||Policies~Students=Home||Activities@menuLinks>>>#=#||#||#~#=#||#||#~#=#||#||#~#=#||#||#~#=#||#'),
(120, 8, '0:0,3', 'bckcolor>>>rgb(128, 128, 128)@ackcolor>>>rgb(116, 104, 126)@tcktcolor>>>rgb(79, 55, 45)@lckncolor>>>rgb(255, 165, 0)@ckurrent>>>Media@tpl>>>tiles@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~Media=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~Service=Current||History||Policies@menuLinks>>>cancel.sbk=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#'),
(121, 8, '0:1,0', 'bckcolor>>>rgb(255, 255, 255)@bordercklor>>>black@ackcolor>>>#df8c19@tcktcolor>>>rgb(192, 110, 28)@lckncolor>>>rgba(105, 54, 6, 0.99)@ckurrent>>>Service@tpl>>>tabifynote@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~Media=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~Service=Current Info||History||Policies||Maps&Directions@menuLinks>>>me.sbk=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#'),
(124, 22, '1:0,1', 'bckcolor>>>rgb(255, 128, 0)@bordercklor>>>black@ackcolor>>>rgb(165, 42, 42)@tcktcolor>>>rgb(222, 184, 135)@lckncolor>>>rgb(255, 255, 255)@ckurrent>>>Colleges@tpl>>>duptiles@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~Media=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~Service=Current Info||History||Policies||Maps&Directions~CONTACT=@menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#='),
(125, 17, '2:0,5', 'bckcolor>>>rgba(0, 0, 0, 0.58)@bordercklor>>>black@ackcolor>>>#df8c19@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Colleges@tpl>>>tiles@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~Media=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~Service=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#'),
(126, 24, '1:0,0', 'bckcolor>>>rgb(0, 128, 0)@bordercklor>>>black@ackcolor>>>rgb(255, 20, 147)@tcktcolor>>>rgb(255, 128, 0)@lckncolor>>>rgb(255, 255, 255)@ckurrent>>>Colleges@tpl>>>duptiles@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~Media=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~Service=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#'),
(127, 24, '1:0,2', 'bckcolor>>>rgb(255, 20, 147)@bordercklor>>>black@ackcolor>>>rgba(221, 12, 170, 0.98)@tcktcolor>>>rgb(255, 255, 255)@lckncolor>>>#d4d4d4@ckurrent>>>Colleges@tpl>>>tabifynote@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~Media=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~Service=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#'),
(128, 7, '0:0,0', 'bckcolor>>>rgb(255, 255, 255)@bordercklor>>>black@ackcolor>>>rgb(165, 42, 42)@tcktcolor>>>rgb(255, 128, 0)@lckncolor>>>rgb(128, 128, 128)@ckurrent>>>Colleges@tpl>>>vnavbar@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~Media=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~Service=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=another.sbk||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#');

-- --------------------------------------------------------

--
-- Table structure for table `title_bar`
--

CREATE TABLE `title_bar` (
  `id` int(3) NOT NULL,
  `page_id` int(2) NOT NULL,
  `pos` varchar(9) NOT NULL,
  `properties` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `title_bar`
--

INSERT INTO `title_bar` (`id`, `page_id`, `pos`, `properties`) VALUES
(4, 2, '0:0,0', '<p><img class="img-responsive" src="http://localhost/SBK_School_Online/dist/ust/Android_Andy-wallpaper-10849979.jpg" style="width: 1118px;">									This is the header container, it allows you to set a heading for your page\r\n Click on the edit link to edit the contents								</p>'),
(95, 19, '1:0,1', 'This is the header container, it allows you to set a heading for your page\n Click on the edit link to edit the contents'),
(97, 20, '0:0,0', '<p><img style="width:948px;" src="http://localhost/SBK_School_Online/dist/pics/ust/Android_Andy-wallpaper-10849979.jpg" class="img-responsive" alt="Android_Andy-wallpaper-10849979.jpg" /></p><p>									This is the header container, it allows you to set a heading for your page\n Click on the edit link to edit the contents								</p>                            '),
(98, 5, '0:0,0', '																											<p><img style="width:1118px;" src="http://localhost/SBK_School_Online/dist/pics/ust/Tesla-wallpaper-10795768.jpg" class="img-responsive" alt="Tesla-wallpaper-10795768.jpg" /></p><p>									This is the header container, it allows you to set a heading for your page\n Click on the edit link to edit the contents								</p>																				'),
(101, 8, '0:0,2', '<p><img style="width:948px;" src="http://localhost/SBK_School_Online/dist/pics/ust/Android_Andy-wallpaper-10849979.jpg" class="img-responsive" alt="Android_Andy-wallpaper-10849979.jpg" /></p><p>									This is the header container, it allows you to set a heading for your page\n Click on the edit link to edit the contents								</p>                            '),
(103, 17, '1:0,3', '                                This is the header container, it allows you to set a heading for your page\n Click on the edit link to edit the contents    \n                                '),
(104, 24, '1:0,1', 'This is the header container, it allows you to set a heading for your page\n Click on the edit link to edit the contents');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`add_id`);

--
-- Indexes for table `components_config`
--
ALTER TABLE `components_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logger`
--
ALTER TABLE `logger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navbar`
--
ALTER TABLE `navbar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice_board`
--
ALTER TABLE `notice_board`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `pics_pic`
--
ALTER TABLE `pics_pic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tiles`
--
ALTER TABLE `tiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `title_bar`
--
ALTER TABLE `title_bar`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `add_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `components_config`
--
ALTER TABLE `components_config`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `footer`
--
ALTER TABLE `footer`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;
--
-- AUTO_INCREMENT for table `logger`
--
ALTER TABLE `logger`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `navbar`
--
ALTER TABLE `navbar`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;
--
-- AUTO_INCREMENT for table `notice_board`
--
ALTER TABLE `notice_board`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `page_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `pics_pic`
--
ALTER TABLE `pics_pic`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;
--
-- AUTO_INCREMENT for table `tiles`
--
ALTER TABLE `tiles`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT for table `title_bar`
--
ALTER TABLE `title_bar`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{"db":"insurance","table":"products"},{"db":"insurance","table":"companies"},{"db":"insurance","table":"products_category"},{"db":"ucc","table":"pics_pic"},{"db":"ucc","table":"supercom"},{"db":"ucc","table":"pages"},{"db":"simpletron","table":"tiles_config"},{"db":"simpletron","table":"modules"},{"db":"ucc","table":"components_config"},{"db":"ucc","table":"title_bar"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'simpletron', 'notice_board_config', '{"CREATE_TIME":"2016-10-14 16:40:12","col_visib":["1","1","1","1","1","1"]}', '2017-02-10 16:36:11'),
('root', 'ucc', 'components_config', '{"CREATE_TIME":"2016-12-31 07:56:16","col_order":["0","1","2","3","4","5"],"col_visib":["1","1","1","1","1","1"]}', '2017-02-10 01:28:49');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2017-02-05 17:16:30', '{"collation_connection":"utf8mb4_unicode_ci","ThemeDefault":"pmahomme"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Database: `simpletron`
--
CREATE DATABASE IF NOT EXISTS `simpletron` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `simpletron`;

-- --------------------------------------------------------

--
-- Table structure for table `components_config`
--

CREATE TABLE `components_config` (
  `id` int(2) NOT NULL,
  `category` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `components_config`
--

INSERT INTO `components_config` (`id`, `category`) VALUES
(1, 'navbar'),
(2, 'notice_board'),
(3, 'tiles'),
(4, 'footer'),
(5, 'pics_pic');

-- --------------------------------------------------------

--
-- Table structure for table `devgent`
--

CREATE TABLE `devgent` (
  `id` int(3) NOT NULL,
  `user` varchar(99) NOT NULL,
  `pass` varchar(99) NOT NULL,
  `userpass` varchar(99) NOT NULL,
  `credits` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `devgent`
--

INSERT INTO `devgent` (`id`, `user`, `pass`, `userpass`, `credits`) VALUES
(1, 'sudo', '63a9f0ea7bb98050796b649e85481845', 'd338b3f0f405eb5e51c8cc1e5ca66f02', 'ust::ug:persco:ucc:hope:leg');

-- --------------------------------------------------------

--
-- Table structure for table `footer_config`
--

CREATE TABLE `footer_config` (
  `id` int(2) NOT NULL,
  `type` varchar(99) NOT NULL,
  `init` varchar(999) NOT NULL,
  `disp` int(1) NOT NULL,
  `code` int(7) NOT NULL,
  `author` varchar(900) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `footer_config`
--

INSERT INTO `footer_config` (`id`, `type`, `init`, `disp`, `code`, `author`) VALUES
(3, 'foot', 'bckcolor`>>>`brown`@`bordercklor`>>>`black`@`tcktcolor`>>>`orange`@`lckncolor`>>>`grey`@`tpl`>>>`footer`@`menuItems`>>>`Colleges`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`The Media & Press`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`The University`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Online Services`=`Current Info`||`History`||`Policies`||`Maps&Directions `@`menuLinks`>>>`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#', 0, 9999999, ''),
(4, 'tactical footer', 'bckcolor`>>>`brown`@`bordercklor`>>>`black`@`tcktcolor`>>>`orange`@`lckncolor`>>>`grey`@`tpl`>>>`tactfooter`@`menuItems`>>>`Colleges`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`The Media & Press`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`The University`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Online Services`=`Current Info`||`History`||`Policies`||`Maps&Directions `@`menuLinks`>>>`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#', 12, 9999999, 'this component is for free if you dont have it just click on the appropriate link to get it'),
(5, 'lookfoot', 'bckcolor`>>>`brown`@`bordercklor`>>>`black`@`tcktcolor`>>>`orange`@`lckncolor`>>>`grey`@`tpl`>>>`doubfoot`@`menuItems`>>>`Colleges`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`The Media & Press`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`The University`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Online Services`=`Current Info`||`History`||`Policies`||`Maps&Directions `@`menuLinks`>>>`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#', 12, 9999999, 'from paris with love'),
(6, 'proot', 'bckcolor`>>>`brown`@`nCol`>>>`4`@`bordercklor`>>>`black`@`tcktcolor`>>>`orange`@`lckncolor`>>>`grey`@`tpl`>>>`profoot`@`menuItems`>>>`Colleges`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`The Media & Press`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`The University`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Online Services`=`Current Info`||`History`||`Policies`||`Maps&Directions `@`menuLinks`>>>`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#', 12, 1999216, 'schoolyne.com'),
(7, 'flinker', 'bckcolor`>>>`brown`@`bordercklor`>>>`black`@`tcktcolor`>>>`orange`@`lckncolor`>>>`grey`@`nCol`>>>`4`@`tpl`>>>`nicefooter`@`menuItems`>>>`Colleges`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`The Media & Press`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`The University`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Online Services`=`Current Info`||`History`||`Policies`||`Maps&Directions `@`menuLinks`>>>`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#', 12, 9999999, 'schooolyne.com');

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(1) NOT NULL,
  `module` varchar(99) NOT NULL,
  `code` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `navbar_config`
--

CREATE TABLE `navbar_config` (
  `id` int(2) NOT NULL,
  `type` varchar(99) NOT NULL,
  `init` varchar(9999) NOT NULL,
  `disp` int(1) NOT NULL,
  `code` int(7) NOT NULL,
  `author` varchar(900) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `navbar_config`
--

INSERT INTO `navbar_config` (`id`, `type`, `init`, `disp`, `code`, `author`) VALUES
(1, 'navbar', 'bckcolor`>>>`#4f372d`@`bordercklor`>>>`black`@`ackcolor`>>>`#df8c19`@`tcktcolor`>>>`burlywood`@`lckncolor`>>>`#d4d4d4`@`ckurrent`>>>`Home`@`tpl`>>>`navbar`@`menuItems`>>>`Home`=``~`About`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`University`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`News Events`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Academics`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Students`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Staff`=`Current Info`||`History`||`Policies`||`Maps&Directions`@`menuLinks`>>>`#`=``~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#', 0, 9999999, ''),
(2, 'liner', 'bckcolor`>>>`#4f372d`@`bordercklor`>>>`black`@`ackcolor`>>>`#df8c19`@`tcktcolor`>>>`burlywood`@`lckncolor`>>>`#d4d4d4`@`ckurrent`>>>`Home`@`tpl`>>>`linenav`@`menuItems`>>>`Home`=``~`About`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`University`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`News Events`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Academics`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Students`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Staff`=`Current Info`||`History`||`Policies`||`Maps&Directions`@`menuLinks`>>>`#`=``~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#', 12, 9999999, 'schoolyne.com'),
(3, 'bread', 'bckcolor`>>>`#4f372d`@`bordercklor`>>>`black`@`ackcolor`>>>`#df8c19`@`tcktcolor`>>>`burlywood`@`lckncolor`>>>`#d4d4d4`@`ckurrent`>>>`Home`@`tpl`>>>`breadnav`@`menuItems`>>>`Home`=``~`About`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`University`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`News Events`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Academics`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Students`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Staff`=`Current Info`||`History`||`Policies`||`Maps&Directions`@`menuLinks`>>>`#`=``~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#', 12, 9999999, 'schoolyne.com'),
(4, 'threeHeaded', 'bckcolor`>>>`#4f372d`@`bordercklor`>>>`black`@`ackcolor`>>>`#df8c19`@`tcktcolor`>>>`burlywood`@`lckncolor`>>>`#d4d4d4`@`ckurrent`>>>`Home`@`tpl`>>>`threeHeaded`@`threeHeaded`>>>`Home`=``[]``~`About`=`Current Info`[]`1`()`2`()`3`||`History`[]`1`()`2`()`3`||`Policies`[]`1`()`2`()`3`||`Maps&Directions`[]`1`()`2`()`3`~`University`=`Current Info`[]`1`()`2`()`3`||`History`[]`1`()`2`()`3`||`Policies`[]`1`()`2`()`3`||`Maps&Directions`[]`1`()`2`()`3`~`News Events`=`Current Info`[]`1`()`2`()`3`||`History`[]`1`()`2`()`3`||`Policies`[]`1`()`2`()`3`||`Maps&Directions`[]`1`()`2`()`3`~`Academics`=`Current Info`[]`1`()`2`()`3`||`History`[]`1`()`2`()`3`||`Policies`[]`1`()`2`()`3`||`Maps&Directions`[]`1`()`2`()`3`~`Students`=`Current Info`[]`1`()`2`()`3`||`History`[]`1`()`2`()`3`||`Policies`[]`1`()`2`()`3`||`Maps&Directions`[]`1`()`2`()`3`@`threeHeadedLinks`>>>`#`=``[]``~`#`=`#`[]`#`()`#`()`#`||`#`[]`#`()`#`()`#`||`#`[]`#`()`#`()`#`||`#`[]`#`()`#`()`#`~`#`=`#`[]`#`()`#`()`#`||`#`[]`#`()`#`()`#`||`#`[]`#`()`#`()`#`||`#`[]`#`()`#`()`#`~`#`=`#`[]`#`()`#`()`#`||`#`[]`#`()`#`()`#`||`#`[]`#`()`#`()`#`||`#`[]`#`()`#`()`#`~`#`=`#`[]`#`()`#`()`#`||`#`[]`#`()`#`()`#`||`#`[]`#`()`#`()`#`||`#`[]`#`()`#`()`#`~`#`=`#`[]`#`()`#`()`#`||`#`[]`#`()`#`()`#`||`#`[]`#`()`#`()`#`||`#`[]`#`()`#`()`#', 12, 9999999, 'schoolyne.com'),
(5, 'w3touch', 'bckcolor`>>>`#4f372d`@`bordercklor`>>>`black`@`ackcolor`>>>`#df8c19`@`tcktcolor`>>>`burlywood`@`lckncolor`>>>`#d4d4d4`@`ckurrent`>>>`Home`@`tpl`>>>`w3navhov`@`menuItems`>>>`Home`=``~`About`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`University`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`News Events`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Academics`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Students`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Staff`=`Current Info`||`History`||`Policies`||`Maps&Directions`@`menuLinks`>>>`#`=``~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#', 12, 9099990, 'w3css :)'),
(6, 'w3equilizer', 'bckcolor`>>>`#4f372d`@`bordercklor`>>>`black`@`ackcolor`>>>`#df8c19`@`tcktcolor`>>>`burlywood`@`lckncolor`>>>`#d4d4d4`@`ckurrent`>>>`Home`@`tpl`>>>`w3naveq`@`menuItems`>>>`Home`=``~`About`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`University`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`News Events`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Academics`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Students`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Staff`=`Current Info`||`History`||`Policies`||`Maps&Directions`@`menuLinks`>>>`#`=``~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#', 12, 9999966, 'w3css ... '),
(7, 'w3click', 'bckcolor`>>>`#4f372d`@`bordercklor`>>>`black`@`ackcolor`>>>`#df8c19`@`tcktcolor`>>>`burlywood`@`lckncolor`>>>`#d4d4d4`@`ckurrent`>>>`Home`@`tpl`>>>`w3navclick`@`menuItems`>>>`Home`=``~`About`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`University`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`News Events`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Academics`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Students`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Staff`=`Current Info`||`History`||`Policies`||`Maps&Directions`@`menuLinks`>>>`#`=``~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#', 12, 9999999, 'w3css'),
(8, 'w3naclo', 'bckcolor`>>>`#4f372d`@`bordercklor`>>>`black`@`ackcolor`>>>`#df8c19`@`tcktcolor`>>>`burlywood`@`lckncolor`>>>`#d4d4d4`@`ckurrent`>>>`Home`@`tpl`>>>`w3navclov`@`menuItems`>>>`Home`=``~`About`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`University`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`News Events`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Academics`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Students`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Staff`=`Current Info`||`History`||`Policies`||`Maps&Directions`@`menuLinks`>>>`#`=``~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#', 12, 1212121, 'w3css');

-- --------------------------------------------------------

--
-- Table structure for table `notice_board_config`
--

CREATE TABLE `notice_board_config` (
  `id` int(2) NOT NULL,
  `type` varchar(99) NOT NULL,
  `init` varchar(9999) NOT NULL,
  `disp` int(1) NOT NULL,
  `code` int(7) NOT NULL,
  `author` varchar(900) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice_board_config`
--

INSERT INTO `notice_board_config` (`id`, `type`, `init`, `disp`, `code`, `author`) VALUES
(1, 'notice_board', 'bckcolor`>>>`#4f372d`@`bordercklor`>>>`black`@`tcktcolor`>>>`burlywood`@`lckncolor`>>>`#d4d4d4`@`ackcolor`>>>`white`@`header`>>>`Media Board`@`tpl`>>>`notice_board`@`nCol`>>>`4`@`menuItems`>>>`News`~`Notices`~`Past Events`~`Announcements`@`menuLinks`>>>`#`~`#`~`#`~`#`@`readmore`>>>`this is good news`|%|`this is good news`|%|`this is good news`|%|`this is good news', 0, 9999999, 'sbk'),
(2, 'list_group', 'bckcolor`>>>`#4f372d`@`bordercklor`>>>`black`@`tcktcolor`>>>`burlywood`@`lckncolor`>>>`#d4d4d4`@`ackcolor`>>>`white`@`header`>>>`Media Board`@`tpl`>>>`list_group`@`menuItems`>>>`News`~`Notices`~`Past Events`~`Announcements`@`menuLinks`>>>`#`~`#`~`#`~`#`@`readmore`>>>`this is good news`|%|`this is good news`|%|`this is good news`|%|`this is good news', 0, 9999999, 'kbs'),
(3, 'media_list', 'bckcolor`>>>`#4f372d`@`bordercklor`>>>`black`@`tcktcolor`>>>`burlywood`@`lckncolor`>>>`#d4d4d4`@`ackcolor`>>>`white`@`header`>>>`Media Board`@`tpl`>>>`media_list`@`menuItems`>>>`News`~`Notices`~`Past Events`~`Announcements`@`menuLinks`>>>`#`~`#`~`#`~`#`@`readmore`>>>`this is good news`|%|`this is good news`|%|`this is good news`|%|`this is good news`@`pix`>>>`rabbit1.jpg`~`rabbit2.jpg`~`rabbit3.jpg`~`cute_rabbit2.jpg', 0, 9999967, 'bks'),
(4, 'tabify', 'bckcolor`>>>`#4f372d`@`bordercklor`>>>`black`@`tcktcolor`>>>`burlywood`@`lckncolor`>>>`#d4d4d4`@`ackcolor`>>>`white`@`header`>>>`Media Board`@`tpl`>>>`ptabs`@`nCol`>>>`4`@`menuItems`>>>`News`~`Notices`~`PastEvents`~`Announcements`@`menuLinks`>>>`#`~`#`~`#`~`#`@`readmore`>>>`this is good news`|%|`this is good news`|%|`this is good news`|%|`this is good news', 0, 9999999, 'the author is from bootsnipet, thanks to all who makes web development easier'),
(5, 'thePenguin', 'bckcolor`>>>`#4f372d`@`bordercklor`>>>`black`@`tcktcolor`>>>`burlywood`@`lckncolor`>>>`#d4d4d4`@`ackcolor`>>>`white`@`tpl`>>>`penguinboard`@`nCol`>>>`4`@`menuItems`>>>`News`~`Notices`~`Past Events`~`Announcements`@`menuLinks`>>>`#`~`#`~`#`~`#`@`readmore`>>>`this is good news`|%|`this is good news`|%|`this is good news`|%|`this is good news', 12, 999666, 'From Bootsnipet'),
(6, 'hoverNote', 'bckcolor`>>>`#4f372d`@`bordercklor`>>>`black`@`tcktcolor`>>>`burlywood`@`lckncolor`>>>`#d4d4d4`@`ackcolor`>>>`white`@`tpl`>>>`hoverboard`@`nCol`>>>`4`@`menuItems`>>>`News`~`Notices`~`Past Events`~`Announcements`@`menuLinks`>>>`#`~`#`~`#`~`#`@`readmore`>>>`this is good news`|%|`this is good news`|%|`this is good news`|%|`this is good news', 12, 1234567, 'From Bootsnipet'),
(7, 'clickable', 'bckcolor`>>>`#4f372d`@`bordercklor`>>>`black`@`tcktcolor`>>>`burlywood`@`lckncolor`>>>`#d4d4d4`@`ackcolor`>>>`white`@`nCol`>>>`4`@`header`>>>`Media Board`@`tpl`>>>`clickablenotice`@`menuItems`>>>`News`~`Notices`~`Past Events`~`Announcements`@`menuLinks`>>>`#`~`#`~`#`~`#`@`readmore`>>>`this is good news`|%|`this is good news`|%|`this is good news`|%|`this is good news', 12, 9009977, 'straight from schoolyne.com you can contact us to order for your special component design or you can submit your own designs'),
(9, 'tabletify', 'bckcolor`>>>`#4f372d`@`bordercklor`>>>`black`@`tcktcolor`>>>`burlywood`@`lckncolor`>>>`#d4d4d4`@`ackcolor`>>>`white`@`header`>>>`Media Board`@`tpl`>>>`tablotes`@`menuItems`>>>`News`~`Notices`~`Past Events`~`Announcements`@`menuLinks`>>>`#`~`#`~`#`~`#`@`readmore`>>>`this is good news`|%|`this is good news`|%|`this is good news`|%|`this is good news', 12, 1110111, 'schoolyne.com is the author'),
(10, 'portlet', 'bckcolor`>>>`#4f372d`@`bordercklor`>>>`black`@`tcktcolor`>>>`burlywood`@`lckncolor`>>>`#d4d4d4`@`ackcolor`>>>`white`@`nCol`>>>`4`@`header`>>>`Media Board`@`tpl`>>>`portletnote`@`menuItems`>>>`News`~`Notices`~`Past Events`~`Announcements`@`menuLinks`>>>`#`~`#`~`#`~`#`@`readmore`>>>`this is good news`|%|`this is good news`|%|`this is good news`|%|`this is good news', 12, 9090909, 'By - schoolyne.com '),
(11, 'chooser', 'bckcolor`>>>`#4f372d`@`bordercklor`>>>`black`@`tcktcolor`>>>`burlywood`@`lckncolor`>>>`#d4d4d4`@`ackcolor`>>>`white`@`nCol`>>>`4`@`header`>>>`Media Board`@`tpl`>>>`choosernote`@`menuItems`>>>`News`~`Notices`~`Past Events`~`Announcements`@`menuLinks`>>>`#`~`#`~`#`~`#`@`readmore`>>>`this is good news`|%|`this is good news`|%|`this is good news`|%|`this is good news`@`pix`>>>`rabbit1.jpg`~`rabbit2.jpg`~`rabbit3.jpg`~`cute_rabbit2.jpg', 12, 100000, 'schoolyne.com with thanks :)'),
(12, 'doted', 'bckcolor`>>>`#4f372d`@`bordercklor`>>>`black`@`tcktcolor`>>>`burlywood`@`lckncolor`>>>`#d4d4d4`@`ackcolor`>>>`white`@`nCol`>>>`4`@`header`>>>`Media Board`@`tpl`>>>`dotednotes`@`menuItems`>>>`News`~`Notices`~`Past Events`~`Announcements`@`menuLinks`>>>`#`~`#`~`#`~`#`@`readmore`>>>`this is good news`|%|`this is good news`|%|`this is good news`|%|`this is good news', 12, 3456992, 'schoolyne.com with pleasure'),
(13, 'slidey', 'bckcolor`>>>`#4f372d`@`bordercklor`>>>`black`@`tcktcolor`>>>`burlywood`@`lckncolor`>>>`#d4d4d4`@`ackcolor`>>>`white`@`nCol`>>>`4`@`header`>>>`Media Board`@`tpl`>>>`slidernote`@`menuItems`>>>`News`~`Notices`~`Past Events`~`Announcements`@`menuLinks`>>>`#`~`#`~`#`~`#`@`readmore`>>>`this is good news`|%|`this is good news`|%|`this is good news`|%|`this is good news', 12, 1212121, 'schoolyne.com'),
(14, 'block', 'bckcolor`>>>`#4f372d`@`bordercklor`>>>`black`@`tcktcolor`>>>`burlywood`@`lckncolor`>>>`#d4d4d4`@`ackcolor`>>>`white`@`header`>>>`Media Board`@`tpl`>>>`blocknote`@`menuItems`>>>`News`~`Notices`~`Past Events`~`Announcements`@`menuLinks`>>>`#`~`#`~`#`~`#`@`readmore`>>>`this is good news`|%|`this is good news`|%|`this is good news`|%|`this is good news`@`pix`>>>`rabbit1.jpg`~`rabbit2.jpg`~`rabbit3.jpg`~`cute_rabbit2.jpg', 12, 9999999, 'schoolyne.com'),
(15, 'defaulttab', 'bckcolor`>>>`#4f372d`@`bordercklor`>>>`black`@`tcktcolor`>>>`burlywood`@`lckncolor`>>>`#d4d4d4`@`ackcolor`>>>`white`@`header`>>>`Media Board`@`tpl`>>>`ttabnote`@`menuItems`>>>`News`~`Notices`~`Past Events`~`Announcements`@`menuLinks`>>>`#`~`#`~`#`~`#`@`readmore`>>>`this is good news`|%|`this is good news`|%|`this is good news`|%|`this is good news', 12, 9999999, 'schoolyne.com'),
(16, 'belowtab', 'bckcolor`>>>`#4f372d`@`bordercklor`>>>`black`@`tcktcolor`>>>`burlywood`@`lckncolor`>>>`#d4d4d4`@`ackcolor`>>>`white`@`header`>>>`Media Board`@`tpl`>>>`dtabnote`@`menuItems`>>>`News`~`Notices`~`Past Events`~`Announcements`@`menuLinks`>>>`#`~`#`~`#`~`#`@`readmore`>>>`this is good news`|%|`this is good news`|%|`this is good news`|%|`this is good news', 12, 9999999, 'schoolyne.com'),
(17, 'tuxnote', 'bckcolor`>>>`#4f372d`@`bordercklor`>>>`black`@`tcktcolor`>>>`burlywood`@`lckncolor`>>>`#d4d4d4`@`ackcolor`>>>`white`@`nCol`>>>`4`@`header`>>>`Media Board`@`tpl`>>>`cardtuxnote`@`menuItems`>>>`News`~`Notices`~`Past Events`~`Announcements`@`menuLinks`>>>`#`~`#`~`#`~`#`@`readmore`>>>`this is good news`|%|`this is good news`|%|`this is good news`|%|`this is good news`@`pix`>>>`rabbit1.jpg`~`rabbit2.jpg`~`rabbit3.jpg`~`cute_rabbit2.jpg', 12, 9999999, 'schoolyne.com'),
(18, 'uplift', 'bckcolor`>>>`#4f372d`@`bordercklor`>>>`black`@`tcktcolor`>>>`burlywood`@`lckncolor`>>>`#d4d4d4`@`ackcolor`>>>`white`@`nCol`>>>`4`@`header`>>>`Media Board`@`tpl`>>>`uplifthovernote`@`menuItems`>>>`News`~`Notices`~`Past Events`~`Announcements`@`menuLinks`>>>`#`~`#`~`#`~`#`@`readmore`>>>`this is good news`|%|`this is good news`|%|`this is good news`|%|`this is good news`@`pix`>>>`http://localhost/SBK_School_Online/dist/pics/ust/Android_Andy-wallpaper-10849979.jpg`~`http://localhost/SBK_School_Online/dist/pics/ust/Android_Andy-wallpaper-10849979.jpg`~`http://localhost/SBK_School_Online/dist/pics/ust/Android_Andy-wallpaper-10849979.jpg`~`http://localhost/SBK_School_Online/dist/pics/ust/Android_Andy-wallpaper-10849979.jpg', 12, 9999999, 'schoolyne.com'),
(19, 'wcard', 'bckcolor`>>>`#4f372d`@`bordercklor`>>>`black`@`tcktcolor`>>>`burlywood`@`lckncolor`>>>`#d4d4d4`@`ackcolor`>>>`white`@`nCol`>>>`4`@`header`>>>`Media Board`@`tpl`>>>`w3card`@`menuItems`>>>`News`~`Notices`~`Past Events`~`Announcements`@`menuLinks`>>>`#`~`#`~`#`~`#`@`readmore`>>>`this is good news`|%|`this is good news`|%|`this is good news`|%|`this is good news', 12, 9099999, 'schoolyne.com'),
(20, 'w3hoverm', 'bckcolor`>>>`#4f372d`@`bordercklor`>>>`black`@`tcktcolor`>>>`burlywood`@`lckncolor`>>>`#d4d4d4`@`ackcolor`>>>`white`@`nCol`>>>`4`@`header`>>>`Media Board`@`tpl`>>>`w3hovermoi`@`menuItems`>>>`News`~`Notices`~`Past Events`~`Announcements`@`menuLinks`>>>`#`~`#`~`#`~`#`@`readmore`>>>`this is good news`|%|`this is good news`|%|`this is good news`|%|`this is good news', 12, 1110111, 'schoolyne.com');

-- --------------------------------------------------------

--
-- Table structure for table `pics_pic_config`
--

CREATE TABLE `pics_pic_config` (
  `id` int(2) NOT NULL,
  `type` varchar(99) NOT NULL,
  `init` varchar(999) NOT NULL,
  `disp` int(1) NOT NULL,
  `code` int(7) NOT NULL,
  `author` varchar(900) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pics_pic_config`
--

INSERT INTO `pics_pic_config` (`id`, `type`, `init`, `disp`, `code`, `author`) VALUES
(1, 'pics_pic', 'picaboo`>>>`http://localhost/SBK_School_Online/dist/graphics/herh.jpg`~`http://localhost/SBK_School_Online/dist/graphics/rabbit1.jpg`~`http://localhost/SBK_School_Online/dist/graphics/rabbit2.jpg`~`http://localhost/SBK_School_Online/dist/graphics/rabbit3.jpg`@`capaboo`>>>`#`~`#`~`#`~`#`@`nCol`>>>`4`@`pStyle`>>>`circle`@`tpl`>>>`static_pic', 0, 9999999, ''),
(2, 'picSlider', 'picaboo`>>>`http://localhost/SBK_School_Online/dist/graphics/kid.jpg`~`http://localhost/SBK_School_Online/dist/graphics/to.jpg`~`http://localhost/SBK_School_Online/dist/graphics/sbk.jpg`~`http://localhost/SBK_School_Online/dist/graphics/to.jpg`~`http://localhost/SBK_School_Online/dist/graphics/ubuntu.jpg`@`capaboo`>>>`BACK TO SCHOOL`~`BACK TO SCHOOL`~`BACK TO SCHOOL`~`BACK TO SCHOOL`~`BACK TO SCHOOL`@`tpl`>>>`pics_pic`@`shades`>>>`rgba(0, 0, 0, 0.49)`@`dots`>>>`rgba(105, 54, 6, 0.99)', 0, 9999999, ''),
(3, 'w3slide', 'picaboo`>>>`http://localhost/SBK_School_Online/dist/graphics/kid.jpg`~`http://localhost/SBK_School_Online/dist/graphics/to.jpg`~`http://localhost/SBK_School_Online/dist/graphics/sbk.jpg`~`http://localhost/SBK_School_Online/dist/graphics/to.jpg`~`http://localhost/SBK_School_Online/dist/graphics/ubuntu.jpg`@`capaboo`>>>`BACK TO SCHOOL`~`BACK TO SCHOOL`~`BACK TO SCHOOL`~`BACK TO SCHOOL`~`BACK TO SCHOOL`@`tpl`>>>`w3slideshow`@`shades`>>>`rgba(0, 0, 0, 0.49)`@`dots`>>>`rgba(105, 54, 6, 0.99)`@`mTe`>>>`zoom', 12, 9999999, 'schoolyne.com and w3'),
(4, 'w3auto', 'picaboo`>>>`http://localhost/SBK_School_Online/dist/graphics/kid.jpg`~`http://localhost/SBK_School_Online/dist/graphics/to.jpg`~`http://localhost/SBK_School_Online/dist/graphics/sbk.jpg`~`http://localhost/SBK_School_Online/dist/graphics/to.jpg`~`http://localhost/SBK_School_Online/dist/graphics/ubuntu.jpg`@`capaboo`>>>`BACK TO SCHOOL`~`BACK TO SCHOOL`~`BACK TO SCHOOL`~`BACK TO SCHOOL`~`BACK TO SCHOOL`@`tpl`>>>`w3slideauto`@`shades`>>>`rgba(0, 0, 0, 0.49)`@`dots`>>>`rgba(105, 54, 6, 0.99)`@`mTe`>>>`zoom', 12, 9999999, 'schoolyne auto');

-- --------------------------------------------------------

--
-- Table structure for table `tiles_config`
--

CREATE TABLE `tiles_config` (
  `id` int(2) NOT NULL,
  `type` varchar(99) NOT NULL,
  `init` varchar(999) NOT NULL,
  `disp` int(1) NOT NULL,
  `code` int(7) NOT NULL,
  `author` varchar(900) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tiles_config`
--

INSERT INTO `tiles_config` (`id`, `type`, `init`, `disp`, `code`, `author`) VALUES
(1, 'tiles', 'bckcolor`>>>`#4f372d`@`bordercklor`>>>`black`@`ackcolor`>>>`#df8c19`@`tcktcolor`>>>`burlywood`@`lckncolor`>>>`#d4d4d4`@`ckurrent`>>>`Colleges`@`tpl`>>>`tiles`@`menuItems`>>>`Colleges`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Media`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`University`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Service`=`Current Info`||`History`||`Policies`||`Maps&Directions`@`menuLinks`>>>`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#', 0, 9999999, ''),
(2, 'coolVetnav', 'bckcolor`>>>`#4f372d`@`bordercklor`>>>`black`@`ackcolor`>>>`#df8c19`@`tcktcolor`>>>`burlywood`@`lckncolor`>>>`#d4d4d4`@`ckurrent`>>>`Colleges`@`tpl`>>>`vnavbar`@`menuItems`>>>`Colleges`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Media`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`University`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Service`=`Current Info`||`History`||`Policies`||`Maps&Directions`@`menuLinks`>>>`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#', 12, 5060707, 'from bootsnipet'),
(3, 'duptiles', 'bckcolor`>>>`#4f372d`@`bordercklor`>>>`black`@`ackcolor`>>>`#df8c19`@`tcktcolor`>>>`burlywood`@`lckncolor`>>>`#d4d4d4`@`ckurrent`>>>`Colleges`@`tpl`>>>`duptiles`@`menuItems`>>>`Colleges`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Media`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`University`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Service`=`Current Info`||`History`||`Policies`||`Maps&Directions`@`menuLinks`>>>`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#', 12, 9999999, 'sbk with love'),
(4, 'tabifytiles', 'bckcolor`>>>`#4f372d`@`bordercklor`>>>`black`@`ackcolor`>>>`#df8c19`@`tcktcolor`>>>`burlywood`@`lckncolor`>>>`#d4d4d4`@`ckurrent`>>>`Colleges`@`tpl`>>>`tabifynote`@`menuItems`>>>`Colleges`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Media`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`University`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Service`=`Current Info`||`History`||`Policies`||`Maps&Directions`@`menuLinks`>>>`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#', 12, 9999999, 'schoolyne.com is the author of this wonderful and great something');

-- --------------------------------------------------------

--
-- Table structure for table `tracker`
--

CREATE TABLE `tracker` (
  `id` int(4) NOT NULL,
  `motto` varchar(100) NOT NULL,
  `schoolname` varchar(99) NOT NULL,
  `leveltype` varchar(99) NOT NULL,
  `description` varchar(300) NOT NULL,
  `databasename` varchar(21) NOT NULL,
  `accomodation` varchar(99) NOT NULL,
  `address` varchar(999) NOT NULL,
  `phonelines` varchar(99) NOT NULL,
  `sex` varchar(9) NOT NULL,
  `email` varchar(99) NOT NULL,
  `region` varchar(99) NOT NULL,
  `location` varchar(999) NOT NULL,
  `tracker` longtext NOT NULL,
  `status` varchar(99) NOT NULL,
  `entrydate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tracker`
--

INSERT INTO `tracker` (`id`, `motto`, `schoolname`, `leveltype`, `description`, `databasename`, `accomodation`, `address`, `phonelines`, `sex`, `email`, `region`, `location`, `tracker`, `status`, `entrydate`) VALUES
(2, '', 'Kwame Nkrumah University of Science and Technology', 'Senior High School', 'provide a little info about ', 'ust', '', 'knust 1234', '0243337989, 0501349231', 'male', 'schoolmail@mail.mai', 'Eastern Region', 'Kwahu - Nkwatia ', '0,127.0.0.1', 'active', '2016-10-29 02:48:47'),
(29, '', 'University of Ghana Legon', 'Public University', 'this is the university of ghana', 'ug', '', '2999 KMU', '0201331089', 'mixed', 'u@u.u', 'Greater Accra', 'Legon - Osu', '0,127.0.0.1', 'active', '2016-12-31 07:25:17'),
(31, 'In God We thrust                 ', 'University of Cape Coast', 'Senior High School', 'in this noble institution we have all kind of facilities to help you with', 'ucc', '', 'ucccc 3c', '0234567890', 'mixed', 'c@c.c', 'Ashanti Region', 'Ucc - Coast', '0,127.0.0.1', 'active', '2016-12-31 07:56:00'),
(32, '', 'University of Ghana Legon', 'Nursing Trainig College', 'psaodifOPIE OPQI FPOWIEPOFI PSEO', 'leg', '', '2999 KMU', '0234567890', 'female', 'mthe21212@gmail.com', 'Volta Region', 'Ucc - Coast', '', 'trial', '2017-02-18 05:39:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `components_config`
--
ALTER TABLE `components_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `devgent`
--
ALTER TABLE `devgent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_config`
--
ALTER TABLE `footer_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navbar_config`
--
ALTER TABLE `navbar_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice_board_config`
--
ALTER TABLE `notice_board_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pics_pic_config`
--
ALTER TABLE `pics_pic_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tiles_config`
--
ALTER TABLE `tiles_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tracker`
--
ALTER TABLE `tracker`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `components_config`
--
ALTER TABLE `components_config`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `devgent`
--
ALTER TABLE `devgent`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `footer_config`
--
ALTER TABLE `footer_config`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `navbar_config`
--
ALTER TABLE `navbar_config`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `notice_board_config`
--
ALTER TABLE `notice_board_config`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `pics_pic_config`
--
ALTER TABLE `pics_pic_config`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tiles_config`
--
ALTER TABLE `tiles_config`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tracker`
--
ALTER TABLE `tracker`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;--
-- Database: `ucc`
--
CREATE DATABASE IF NOT EXISTS `ucc` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ucc`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `add_id` int(2) NOT NULL,
  `user` varchar(32) NOT NULL,
  `pass` varchar(32) NOT NULL,
  `user_pass` varchar(99) NOT NULL,
  `add_type` varchar(32) NOT NULL,
  `add_pages` varchar(99) NOT NULL,
  `email` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`add_id`, `user`, `pass`, `user_pass`, `add_type`, `add_pages`, `email`) VALUES
(1, 'ucc', 'df85ad6792af31a47fa90ab34e573308', 'df85ad6792af31a47fa90ab34e573308', 'Gcp', '', 'usebaku@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `components_config`
--

CREATE TABLE `components_config` (
  `id` int(2) NOT NULL,
  `category` varchar(99) NOT NULL,
  `types` varchar(999) NOT NULL,
  `inits` varchar(60000) NOT NULL,
  `disps` varchar(99) NOT NULL,
  `authors` varchar(900) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `components_config`
--

INSERT INTO `components_config` (`id`, `category`, `types`, `inits`, `disps`, `authors`) VALUES
(1, 'navbar', 'navbar:liner:bread:threeHeaded:w3click', 'bckcolor`>>>`#4f372d`@`bordercklor`>>>`black`@`ackcolor`>>>`#df8c19`@`tcktcolor`>>>`burlywood`@`lckncolor`>>>`#d4d4d4`@`ckurrent`>>>`Home`@`tpl`>>>`navbar`@`menuItems`>>>`Home`=``~`About`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`University`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`News Events`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Academics`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Students`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Staff`=`Current Info`||`History`||`Policies`||`Maps&Directions`@`menuLinks`>>>`#`=``~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`***`bckcolor`>>>`#4f372d`@`bordercklor`>>>`black`@`ackcolor`>>>`#df8c19`@`tcktcolor`>>>`burlywood`@`lckncolor`>>>`#d4d4d4`@`ckurrent`>>>`Home`@`tpl`>>>`linenav`@`menuItems`>>>`Home`=``~`About`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`University`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`News Events`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Academics`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Students`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Staff`=`Current Info`||`History`||`Policies`||`Maps&Directions`@`menuLinks`>>>`#`=``~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`***`bckcolor`>>>`#4f372d`@`bordercklor`>>>`black`@`ackcolor`>>>`#df8c19`@`tcktcolor`>>>`burlywood`@`lckncolor`>>>`#d4d4d4`@`ckurrent`>>>`Home`@`tpl`>>>`breadnav`@`menuItems`>>>`Home`=``~`About`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`University`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`News Events`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Academics`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Students`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Staff`=`Current Info`||`History`||`Policies`||`Maps&Directions`@`menuLinks`>>>`#`=``~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`***`bckcolor`>>>`#4f372d`@`bordercklor`>>>`black`@`ackcolor`>>>`#df8c19`@`tcktcolor`>>>`burlywood`@`lckncolor`>>>`#d4d4d4`@`ckurrent`>>>`Home`@`tpl`>>>`threeHeaded`@`threeHeaded`>>>`Home`=``[]``~`About`=`Current Info`[]`1`()`2`()`3`||`History`[]`1`()`2`()`3`||`Policies`[]`1`()`2`()`3`||`Maps&Directions`[]`1`()`2`()`3`~`University`=`Current Info`[]`1`()`2`()`3`||`History`[]`1`()`2`()`3`||`Policies`[]`1`()`2`()`3`||`Maps&Directions`[]`1`()`2`()`3`~`News Events`=`Current Info`[]`1`()`2`()`3`||`History`[]`1`()`2`()`3`||`Policies`[]`1`()`2`()`3`||`Maps&Directions`[]`1`()`2`()`3`~`Academics`=`Current Info`[]`1`()`2`()`3`||`History`[]`1`()`2`()`3`||`Policies`[]`1`()`2`()`3`||`Maps&Directions`[]`1`()`2`()`3`~`Students`=`Current Info`[]`1`()`2`()`3`||`History`[]`1`()`2`()`3`||`Policies`[]`1`()`2`()`3`||`Maps&Directions`[]`1`()`2`()`3`@`threeHeadedLinks`>>>`#`=``[]``~`#`=`#`[]`#`()`#`()`#`||`#`[]`#`()`#`()`#`||`#`[]`#`()`#`()`#`||`#`[]`#`()`#`()`#`~`#`=`#`[]`#`()`#`()`#`||`#`[]`#`()`#`()`#`||`#`[]`#`()`#`()`#`||`#`[]`#`()`#`()`#`~`#`=`#`[]`#`()`#`()`#`||`#`[]`#`()`#`()`#`||`#`[]`#`()`#`()`#`||`#`[]`#`()`#`()`#`~`#`=`#`[]`#`()`#`()`#`||`#`[]`#`()`#`()`#`||`#`[]`#`()`#`()`#`||`#`[]`#`()`#`()`#`~`#`=`#`[]`#`()`#`()`#`||`#`[]`#`()`#`()`#`||`#`[]`#`()`#`()`#`||`#`[]`#`()`#`()`#`***`bckcolor`>>>`#4f372d`@`bordercklor`>>>`black`@`ackcolor`>>>`#df8c19`@`tcktcolor`>>>`burlywood`@`lckncolor`>>>`#d4d4d4`@`ckurrent`>>>`Home`@`tpl`>>>`w3navclick`@`menuItems`>>>`Home`=``~`About`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`University`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`News Events`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Academics`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Students`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Staff`=`Current Info`||`History`||`Policies`||`Maps&Directions`@`menuLinks`>>>`#`=``~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#', '0:12:12:12:12', '`***`schoolyne.com`***`schoolyne.com`***`schoolyne.com`***`w3css'),
(2, 'tiles', 'tiles:duptiles:tabifytiles', 'bckcolor`>>>`#4f372d`@`bordercklor`>>>`black`@`ackcolor`>>>`#df8c19`@`tcktcolor`>>>`burlywood`@`lckncolor`>>>`#d4d4d4`@`ckurrent`>>>`Colleges`@`tpl`>>>`tiles`@`menuItems`>>>`Colleges`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Media`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`University`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Service`=`Current Info`||`History`||`Policies`||`Maps&Directions`@`menuLinks`>>>`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`***`bckcolor`>>>`#4f372d`@`bordercklor`>>>`black`@`ackcolor`>>>`#df8c19`@`tcktcolor`>>>`burlywood`@`lckncolor`>>>`#d4d4d4`@`ckurrent`>>>`Colleges`@`tpl`>>>`duptiles`@`menuItems`>>>`Colleges`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Media`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`University`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Service`=`Current Info`||`History`||`Policies`||`Maps&Directions`@`menuLinks`>>>`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`***`bckcolor`>>>`#4f372d`@`bordercklor`>>>`black`@`ackcolor`>>>`#df8c19`@`tcktcolor`>>>`burlywood`@`lckncolor`>>>`#d4d4d4`@`ckurrent`>>>`Colleges`@`tpl`>>>`tabifynote`@`menuItems`>>>`Colleges`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Media`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`University`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Service`=`Current Info`||`History`||`Policies`||`Maps&Directions`@`menuLinks`>>>`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#', '0:12:12', '`***`sbk with love`***`schoolyne.com is the author of this wonderful and great something'),
(3, 'footer', 'foot:tactical footer:lookfoot:flinker', 'bckcolor`>>>`brown`@`bordercklor`>>>`black`@`tcktcolor`>>>`orange`@`lckncolor`>>>`grey`@`tpl`>>>`footer`@`menuItems`>>>`Colleges`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`The Media & Press`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`The University`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Online Services`=`Current Info`||`History`||`Policies`||`Maps&Directions `@`menuLinks`>>>`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`***`bckcolor`>>>`brown`@`bordercklor`>>>`black`@`tcktcolor`>>>`orange`@`lckncolor`>>>`grey`@`tpl`>>>`tactfooter`@`menuItems`>>>`Colleges`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`The Media & Press`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`The University`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Online Services`=`Current Info`||`History`||`Policies`||`Maps&Directions `@`menuLinks`>>>`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`***`bckcolor`>>>`brown`@`bordercklor`>>>`black`@`tcktcolor`>>>`orange`@`lckncolor`>>>`grey`@`tpl`>>>`doubfoot`@`menuItems`>>>`Colleges`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`The Media & Press`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`The University`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Online Services`=`Current Info`||`History`||`Policies`||`Maps&Directions `@`menuLinks`>>>`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`***`bckcolor`>>>`brown`@`bordercklor`>>>`black`@`tcktcolor`>>>`orange`@`lckncolor`>>>`grey`@`nCol`>>>`4`@`tpl`>>>`nicefooter`@`menuItems`>>>`Colleges`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`The Media & Press`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`The University`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Online Services`=`Current Info`||`History`||`Policies`||`Maps&Directions `@`menuLinks`>>>`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#', '0:12:12:12', '`***`this component is for free if you dont have it just click on the appropriate link to get it`***`from paris with love`***`schooolyne.com'),
(4, 'notice_board', 'notice_board:list_group:tabify:uplift:block:belowtab:defaulttab:tuxnote', 'bckcolor`>>>`#4f372d`@`bordercklor`>>>`black`@`tcktcolor`>>>`burlywood`@`lckncolor`>>>`#d4d4d4`@`ackcolor`>>>`white`@`header`>>>`Media Board`@`tpl`>>>`notice_board`@`nCol`>>>`4`@`menuItems`>>>`News`~`Notices`~`Past Events`~`Announcements`@`menuLinks`>>>`#`~`#`~`#`~`#`@`readmore`>>>`this is good news`|%|`this is good news`|%|`this is good news`|%|`this is good news`***`bckcolor`>>>`#4f372d`@`bordercklor`>>>`black`@`tcktcolor`>>>`burlywood`@`lckncolor`>>>`#d4d4d4`@`ackcolor`>>>`white`@`header`>>>`Media Board`@`tpl`>>>`list_group`@`menuItems`>>>`News`~`Notices`~`Past Events`~`Announcements`@`menuLinks`>>>`#`~`#`~`#`~`#`@`readmore`>>>`this is good news`|%|`this is good news`|%|`this is good news`|%|`this is good news`***`bckcolor`>>>`#4f372d`@`bordercklor`>>>`black`@`tcktcolor`>>>`burlywood`@`lckncolor`>>>`#d4d4d4`@`ackcolor`>>>`white`@`header`>>>`Media Board`@`tpl`>>>`ptabs`@`nCol`>>>`4`@`menuItems`>>>`News`~`Notices`~`PastEvents`~`Announcements`@`menuLinks`>>>`#`~`#`~`#`~`#`@`readmore`>>>`this is good news`|%|`this is good news`|%|`this is good news`|%|`this is good news`***`bckcolor`>>>`#4f372d`@`bordercklor`>>>`black`@`tcktcolor`>>>`burlywood`@`lckncolor`>>>`#d4d4d4`@`ackcolor`>>>`white`@`nCol`>>>`4`@`header`>>>`Media Board`@`tpl`>>>`uplifthovernote`@`menuItems`>>>`News`~`Notices`~`Past Events`~`Announcements`@`menuLinks`>>>`#`~`#`~`#`~`#`@`readmore`>>>`this is good news`|%|`this is good news`|%|`this is good news`|%|`this is good news`@`pix`>>>`http://localhost/SBK_School_Online/dist/pics/ust/Android_Andy-wallpaper-10849979.jpg`~`http://localhost/SBK_School_Online/dist/pics/ust/Android_Andy-wallpaper-10849979.jpg`~`http://localhost/SBK_School_Online/dist/pics/ust/Android_Andy-wallpaper-10849979.jpg`~`http://localhost/SBK_School_Online/dist/pics/ust/Android_Andy-wallpaper-10849979.jpg`***`bckcolor`>>>`#4f372d`@`bordercklor`>>>`black`@`tcktcolor`>>>`burlywood`@`lckncolor`>>>`#d4d4d4`@`ackcolor`>>>`white`@`header`>>>`Media Board`@`tpl`>>>`blocknote`@`menuItems`>>>`News`~`Notices`~`Past Events`~`Announcements`@`menuLinks`>>>`#`~`#`~`#`~`#`@`readmore`>>>`this is good news`|%|`this is good news`|%|`this is good news`|%|`this is good news`@`pix`>>>`rabbit1.jpg`~`rabbit2.jpg`~`rabbit3.jpg`~`cute_rabbit2.jpg`***`bckcolor`>>>`#4f372d`@`bordercklor`>>>`black`@`tcktcolor`>>>`burlywood`@`lckncolor`>>>`#d4d4d4`@`ackcolor`>>>`white`@`header`>>>`Media Board`@`tpl`>>>`dtabnote`@`menuItems`>>>`News`~`Notices`~`Past Events`~`Announcements`@`menuLinks`>>>`#`~`#`~`#`~`#`@`readmore`>>>`this is good news`|%|`this is good news`|%|`this is good news`|%|`this is good news`***`bckcolor`>>>`#4f372d`@`bordercklor`>>>`black`@`tcktcolor`>>>`burlywood`@`lckncolor`>>>`#d4d4d4`@`ackcolor`>>>`white`@`header`>>>`Media Board`@`tpl`>>>`ttabnote`@`menuItems`>>>`News`~`Notices`~`Past Events`~`Announcements`@`menuLinks`>>>`#`~`#`~`#`~`#`@`readmore`>>>`this is good news`|%|`this is good news`|%|`this is good news`|%|`this is good news`***`bckcolor`>>>`#4f372d`@`bordercklor`>>>`black`@`tcktcolor`>>>`burlywood`@`lckncolor`>>>`#d4d4d4`@`ackcolor`>>>`white`@`nCol`>>>`4`@`header`>>>`Media Board`@`tpl`>>>`cardtuxnote`@`menuItems`>>>`News`~`Notices`~`Past Events`~`Announcements`@`menuLinks`>>>`#`~`#`~`#`~`#`@`readmore`>>>`this is good news`|%|`this is good news`|%|`this is good news`|%|`this is good news`@`pix`>>>`rabbit1.jpg`~`rabbit2.jpg`~`rabbit3.jpg`~`cute_rabbit2.jpg', '0:0:0:12:12:12:12:12', 'sbk`***`kbs`***`the author is from bootsnipet, thanks to all who makes web development easier`***`schoolyne.com`***`schoolyne.com`***`schoolyne.com`***`schoolyne.com`***`schoolyne.com'),
(5, 'pics_pic', 'w3auto:w3slide:pics_pic:picSlider', 'picaboo`>>>`http://localhost/SBK_School_Online/dist/graphics/kid.jpg`~`http://localhost/SBK_School_Online/dist/graphics/to.jpg`~`http://localhost/SBK_School_Online/dist/graphics/sbk.jpg`~`http://localhost/SBK_School_Online/dist/graphics/to.jpg`~`http://localhost/SBK_School_Online/dist/graphics/ubuntu.jpg`@`capaboo`>>>`BACK TO SCHOOL`~`BACK TO SCHOOL`~`BACK TO SCHOOL`~`BACK TO SCHOOL`~`BACK TO SCHOOL`@`tpl`>>>`w3slideauto`@`shades`>>>`rgba(0, 0, 0, 0.49)`@`dots`>>>`rgba(105, 54, 6, 0.99)`@`mTe`>>>`zoom`***`picaboo`>>>`http://localhost/SBK_School_Online/dist/graphics/kid.jpg`~`http://localhost/SBK_School_Online/dist/graphics/to.jpg`~`http://localhost/SBK_School_Online/dist/graphics/sbk.jpg`~`http://localhost/SBK_School_Online/dist/graphics/to.jpg`~`http://localhost/SBK_School_Online/dist/graphics/ubuntu.jpg`@`capaboo`>>>`BACK TO SCHOOL`~`BACK TO SCHOOL`~`BACK TO SCHOOL`~`BACK TO SCHOOL`~`BACK TO SCHOOL`@`tpl`>>>`w3slideshow`@`shades`>>>`rgba(0, 0, 0, 0.49)`@`dots`>>>`rgba(105, 54, 6, 0.99)`@`mTe`>>>`zoom`***`picaboo`>>>`http://localhost/SBK_School_Online/dist/graphics/herh.jpg`~`http://localhost/SBK_School_Online/dist/graphics/rabbit1.jpg`~`http://localhost/SBK_School_Online/dist/graphics/rabbit2.jpg`~`http://localhost/SBK_School_Online/dist/graphics/rabbit3.jpg`@`capaboo`>>>`#`~`#`~`#`~`#`@`nCol`>>>`4`@`pStyle`>>>`circle`@`tpl`>>>`static_pic`***`picaboo`>>>`http://localhost/SBK_School_Online/dist/graphics/kid.jpg`~`http://localhost/SBK_School_Online/dist/graphics/to.jpg`~`http://localhost/SBK_School_Online/dist/graphics/sbk.jpg`~`http://localhost/SBK_School_Online/dist/graphics/to.jpg`~`http://localhost/SBK_School_Online/dist/graphics/ubuntu.jpg`@`capaboo`>>>`BACK TO SCHOOL`~`BACK TO SCHOOL`~`BACK TO SCHOOL`~`BACK TO SCHOOL`~`BACK TO SCHOOL`@`tpl`>>>`pics_pic`@`shades`>>>`rgba(0, 0, 0, 0.49)`@`dots`>>>`rgba(105, 54, 6, 0.99)', '12:12:0:0', 'schoolyne auto`***`schoolyne.com and w3`***``***`');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` int(3) NOT NULL,
  `page_id` int(2) NOT NULL,
  `pos` varchar(9) NOT NULL,
  `properties` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `footer`
--

CREATE TABLE `footer` (
  `id` int(3) NOT NULL,
  `page_id` int(2) NOT NULL,
  `pos` varchar(9) NOT NULL,
  `properties` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `footer`
--

INSERT INTO `footer` (`id`, `page_id`, `pos`, `properties`) VALUES
(5, 1, '0:0,1', 'bckcolor`>>>`brown`@`bordercklor`>>>`black`@`tcktcolor`>>>`orange`@`lckncolor`>>>`grey`@`tpl`>>>`footer`@`menuItems`>>>`Colleges`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`The Media & Press`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`The University`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Online Services`=`Current Info`||`History`||`Policies`||`Maps&Directions `@`menuLinks`>>>`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#');

-- --------------------------------------------------------

--
-- Table structure for table `logger`
--

CREATE TABLE `logger` (
  `id` int(3) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `code` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logger`
--

INSERT INTO `logger` (`id`, `comment`, `time`, `code`) VALUES
(1, 'reset', '2017-02-17 05:05:30', '234567890');

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(1) NOT NULL,
  `module` varchar(99) NOT NULL,
  `code` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `navbar`
--

CREATE TABLE `navbar` (
  `id` int(3) NOT NULL,
  `page_id` int(2) NOT NULL,
  `pos` varchar(9) NOT NULL,
  `properties` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `navbar`
--

INSERT INTO `navbar` (`id`, `page_id`, `pos`, `properties`) VALUES
(1, 1, '0:0,0', 'bckcolor`>>>`#4f372d`@`bordercklor`>>>`black`@`ackcolor`>>>`#df8c19`@`tcktcolor`>>>`burlywood`@`lckncolor`>>>`#d4d4d4`@`ckurrent`>>>`Home`@`tpl`>>>`linenav`@`menuItems`>>>`Home`=``~`About`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`University`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`News Events`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Academics`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Students`=`Current Info`||`History`||`Policies`||`Maps&Directions`~`Staff`=`Current Info`||`History`||`Policies`||`Maps&Directions`@`menuLinks`>>>`#`=``~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#`~`#`=`#`||`#`||`#`||`#');

-- --------------------------------------------------------

--
-- Table structure for table `notice_board`
--

CREATE TABLE `notice_board` (
  `id` int(3) NOT NULL,
  `page_id` int(2) NOT NULL,
  `pos` varchar(9) NOT NULL,
  `properties` varchar(1200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `page_id` int(2) NOT NULL,
  `php_self` varchar(99) NOT NULL,
  `layout_info` varchar(999) NOT NULL,
  `other_infos` varchar(999) NOT NULL,
  `component_id` varchar(999) NOT NULL,
  `status` varchar(99) NOT NULL,
  `class` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `php_self`, `layout_info`, `other_infos`, `component_id`, `status`, `class`) VALUES
(1, 'newpage.lyne', '0=supercom.footer.pics_pic', 'bdColor`>>>`white`@`icColor`>>>`white`@`bckimg`>>>`none`@`mLeft`>>>`0`@`mRight`>>>`0`@`mTop`>>>`0`@`mBottom`>>>`0`@`padding`>>>`5', '6:5:2', 'active', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pics_pic`
--

CREATE TABLE `pics_pic` (
  `id` int(3) NOT NULL,
  `page_id` int(2) NOT NULL,
  `pos` varchar(9) NOT NULL,
  `properties` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pics_pic`
--

INSERT INTO `pics_pic` (`id`, `page_id`, `pos`, `properties`) VALUES
(2, 1, '0:0,2', 'picaboo`>>>`http://localhost/SBK_School_Online/dist/pics/ucc/kids.jpg`@`capaboo`>>>`#`@`nCol`>>>`1`@`pStyle`>>>``@`tpl`>>>`static_pic');

-- --------------------------------------------------------

--
-- Table structure for table `supercom`
--

CREATE TABLE `supercom` (
  `id` int(3) NOT NULL,
  `page_id` int(2) NOT NULL,
  `pos` varchar(9) NOT NULL,
  `properties` varchar(60000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supercom`
--

INSERT INTO `supercom` (`id`, `page_id`, `pos`, `properties`) VALUES
(6, 1, '0:0,0', 'nom%``%1{``}2{``}3{``}3{``}2{``}1&``&com%``%pics_pic{``}pics_pic{``}pics_pic{``}pics_pic{``}pics_pic{``}pics_pic&``&super3p%``%picaboo`>>>`http://localhost/SBK_School_Online/dist/pics/ucc/kids.jpg`@`capaboo`>>>`#`@`nCol`>>>`1`@`pStyle`>>>``@`tpl`>>>`static_pic{``}picaboo`>>>`http://localhost/SBK_School_Online/dist/pics/ucc/kids.jpg`@`capaboo`>>>`#`@`nCol`>>>`1`@`pStyle`>>>``@`tpl`>>>`static_pic{``}picaboo`>>>`http://localhost/SBK_School_Online/dist/pics/ucc/kids.jpg`@`capaboo`>>>`#`@`nCol`>>>`1`@`pStyle`>>>``@`tpl`>>>`static_pic{``}picaboo`>>>`http://localhost/SBK_School_Online/dist/pics/ucc/kids.jpg`@`capaboo`>>>`#`@`nCol`>>>`1`@`pStyle`>>>``@`tpl`>>>`static_pic{``}picaboo`>>>`http://localhost/SBK_School_Online/dist/pics/ucc/kids.jpg`@`capaboo`>>>`#`@`nCol`>>>`1`@`pStyle`>>>``@`tpl`>>>`static_pic{``}picaboo`>>>`http://localhost/SBK_School_Online/dist/pics/ucc/kids.jpg`@`capaboo`>>>`#`@`nCol`>>>`1`@`pStyle`>>>``@`tpl`>>>`static_pic');

-- --------------------------------------------------------

--
-- Table structure for table `tiles`
--

CREATE TABLE `tiles` (
  `id` int(3) NOT NULL,
  `page_id` int(2) NOT NULL,
  `pos` varchar(9) NOT NULL,
  `properties` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `title_bar`
--

CREATE TABLE `title_bar` (
  `id` int(3) NOT NULL,
  `page_id` int(2) NOT NULL,
  `pos` varchar(9) NOT NULL,
  `properties` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`add_id`);

--
-- Indexes for table `components_config`
--
ALTER TABLE `components_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logger`
--
ALTER TABLE `logger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navbar`
--
ALTER TABLE `navbar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice_board`
--
ALTER TABLE `notice_board`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `pics_pic`
--
ALTER TABLE `pics_pic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supercom`
--
ALTER TABLE `supercom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tiles`
--
ALTER TABLE `tiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `title_bar`
--
ALTER TABLE `title_bar`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `add_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `components_config`
--
ALTER TABLE `components_config`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `footer`
--
ALTER TABLE `footer`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `logger`
--
ALTER TABLE `logger`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `navbar`
--
ALTER TABLE `navbar`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `notice_board`
--
ALTER TABLE `notice_board`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `page_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pics_pic`
--
ALTER TABLE `pics_pic`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `supercom`
--
ALTER TABLE `supercom`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tiles`
--
ALTER TABLE `tiles`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `title_bar`
--
ALTER TABLE `title_bar`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;--
-- Database: `ug`
--
CREATE DATABASE IF NOT EXISTS `ug` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ug`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `add_id` int(2) NOT NULL,
  `user` varchar(32) NOT NULL,
  `pass` varchar(32) NOT NULL,
  `user_pass` varchar(99) NOT NULL,
  `add_type` varchar(32) NOT NULL,
  `add_pages` varchar(99) NOT NULL,
  `email` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`add_id`, `user`, `pass`, `user_pass`, `add_type`, `add_pages`, `email`) VALUES
(1, 'Admin', 'f15c693f5d6775d6ff8f8359d462a304', 'e3afed0047b08059d0fada10f400c1e5', 'Gcp', '', 'sd@g'),
(9, 'Akwesi', '6ac933301a3933c8a22ceebea7000326', '8aa09448ca545f7f4560f83e1f784aaf', 'cp', 'another.sbk', '');

-- --------------------------------------------------------

--
-- Table structure for table `components_config`
--

CREATE TABLE `components_config` (
  `id` int(2) NOT NULL,
  `category` varchar(99) NOT NULL,
  `types` varchar(999) NOT NULL,
  `inits` varchar(60000) NOT NULL,
  `disps` varchar(99) NOT NULL,
  `authors` varchar(900) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `components_config`
--

INSERT INTO `components_config` (`id`, `category`, `types`, `inits`, `disps`, `authors`) VALUES
(1, 'navbar', 'navbar:navbar:liner:bread', 'bckcolor>>>#4f372d@bordercklor>>>black@ackcolor>>>#df8c19@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Home@tpl>>>navbar@menuItems>>>Home=~About=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~News Events=Current Info||History||Policies||Maps&Directions~Academics=Current Info||History||Policies||Maps&Directions~Students=Current Info||History||Policies||Maps&Directions~Staff=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#***bckcolor>>>#4f372d@bordercklor>>>black@ackcolor>>>#df8c19@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Home@tpl>>>navbar@menuItems>>>Home=~About=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~News Events=Current Info||History||Policies||Maps&Directions~Academics=Current Info||History||Policies||Maps&Directions~Students=Current Info||History||Policies||Maps&Directions~Staff=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#***bckcolor>>>#4f372d@bordercklor>>>black@ackcolor>>>#df8c19@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Home@tpl>>>linenav@menuItems>>>Home=~About=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~News Events=Current Info||History||Policies||Maps&Directions~Academics=Current Info||History||Policies||Maps&Directions~Students=Current Info||History||Policies||Maps&Directions~Staff=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#***bckcolor>>>#4f372d@bordercklor>>>black@ackcolor>>>#df8c19@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Home@tpl>>>breadnav@menuItems>>>Home=~About=~University=~News Events=~Academics=~Students=~Staff=@menuLinks>>>#=~#=~#=~#=~#=~#=~#=', '0:0:12:12', '******schoolyne.com***schoolyne.com'),
(2, 'tiles', 'tiles:coolVetnav:duptiles:tabifytiles', 'bckcolor>>>#4f372d@bordercklor>>>black@ackcolor>>>#df8c19@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Colleges@tpl>>>tiles@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~Media=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~Service=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#***bckcolor>>>#4f372d@bordercklor>>>black@ackcolor>>>#df8c19@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Colleges@tpl>>>vnavbar@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~Media=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~Service=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#***bckcolor>>>#4f372d@bordercklor>>>black@ackcolor>>>#df8c19@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Colleges@tpl>>>duptiles@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~Media=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~Service=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#***bckcolor>>>#4f372d@bordercklor>>>black@ackcolor>>>#df8c19@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Colleges@tpl>>>tabifynote@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~Media=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~Service=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#', '0:12:12:12', '***from bootsnipet***sbk with love***schoolyne.com is the author of this wonderful and great something'),
(3, 'footer', 'foot:tactical footer:lookfoot:proot:flinker', 'bckcolor>>>brown@bordercklor>>>black@tcktcolor>>>orange@lckncolor>>>grey@tpl>>>footer@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~The Media & Press=Current Info||History||Policies||Maps&Directions~The University=Current Info||History||Policies||Maps&Directions~Online Services=Current Info||History||Policies||Maps&Directions @menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#***bckcolor>>>brown@bordercklor>>>black@tcktcolor>>>orange@lckncolor>>>grey@tpl>>>tactfooter@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~The Media & Press=Current Info||History||Policies||Maps&Directions~The University=Current Info||History||Policies||Maps&Directions~Online Services=Current Info||History||Policies||Maps&Directions @menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#***bckcolor>>>brown@bordercklor>>>black@tcktcolor>>>orange@lckncolor>>>grey@tpl>>>doubfoot@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~The Media & Press=Current Info||History||Policies||Maps&Directions~The University=Current Info||History||Policies||Maps&Directions~Online Services=Current Info||History||Policies||Maps&Directions @menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#***bckcolor>>>brown@bordercklor>>>black@tcktcolor>>>orange@lckncolor>>>grey@tpl>>>profoot@nCol>>>4@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~The Media & Press=Current Info||History||Policies||Maps&Directions~The University=Current Info||History||Policies||Maps&Directions~Online Services=Current Info||History||Policies||Maps&Directions @menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#***bckcolor>>>brown@bordercklor>>>black@tcktcolor>>>orange@lckncolor>>>grey@tpl>>>nicefooter@nCol>>>4@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~The Media & Press=Current Info||History||Policies||Maps&Directions~The University=Current Info||History||Policies||Maps&Directions~Online Services=Current Info||History||Policies||Maps&Directions @menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#', '0:12:12:12:12', '***this component is for free if you dont have it just click on the appropriate link to get it***from paris with love***schoolyne.com***schooolyne.com'),
(4, 'notice_board', 'media_list:notice_board:list_group:tabify:thePenguin:hoverNote:clickable:reverseflash:tabletify:portlet:chooser:doted:slidey:block:belowtab:defaulttab:tuxnote:uplift', 'bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@tpl>>>media_list@menuItems>>>News~Notices~News~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good news@pix>>>rabbit1.jpg~rabbit2.jpg~rabbit3.jpg~cute_rabbit2.jpg***bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@header>>>Media Board@tpl>>>notice_board@nCol>>>4@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news this is good news this is good news this is good news|%|this is good news***bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@tpl>>>list_group@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good news***bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@header>>>Media Board@tpl>>>ptabs@nCol>>>4@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news this is good news this is good news this is good news|%|this is good news***bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@tpl>>>penguinboard@nCol>>>3@menuItems>>>News~Notices~penguinboard~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good***bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@tpl>>>hoverboard@nCol>>>3@menuItems>>>News~Notices~penguinboard~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good***bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@header>>>Media Board@tpl>>>clickablenotice@nCol>>>4@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good news***bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@header>>>Media Board@tpl>>>reverseboard@nCol>>>4@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good news***bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@header>>>Media Board@tpl>>>tablotes@nCol>>>4@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news this is good news this is good news this is good news|%|this is good news***bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@header>>>Media Board@tpl>>>portletnote@nCol>>>4@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news this is good news this is good news this is good news|%|this is good news***bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@tpl>>>choosernote@nCol>>>3@menuItems>>>News~Notices~media_list~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good news@pix>>>rabbit1.jpg~rabbit2.jpg~rabbit3.jpg~cute_rabbit2.jpg***bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@header>>>Media Board@tpl>>>dotednotes@nCol>>>3@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news this is good news this is good news this is good news|%|this is good news***bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@tpl>>>slidernote@menuItems>>>News~Notices~media_list~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good news@pix>>>rabbit1.jpg~rabbit2.jpg~rabbit3.jpg~cute_rabbit2.jpg***bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@tpl>>>blocknote@menuItems>>>News~Notices~media_list~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good news@pix>>>rabbit1.jpg~rabbit2.jpg~rabbit3.jpg~cute_rabbit2.jpg***bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@header>>>Media Board@tpl>>>dtabnote@nCol>>>4@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news this is good news this is good news this is good news|%|this is good news***bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@header>>>Media Board@tpl>>>ttabnote@nCol>>>4@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news this is good news this is good news this is good news|%|this is good news***bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@nCol>>>3@ackcolor>>>white@tpl>>>cardtuxnote@menuItems>>>News~Notices~media_list~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good news@pix>>>rabbit1.jpg~rabbit2.jpg~rabbit3.jpg~cute_rabbit2.jpg***bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@nCol>>>4@tpl>>>uplifthovernote@menuItems>>>News~Notices~media_list~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good news@pix>>>http://localhost/SBK_School_Online/dist/pics/ust/Android_Andy-wallpaper-10849979.jpg~http://localhost/SBK_School_Online/dist/pics/ust/Android_Andy-wallpaper-10849979.jpg~http://localhost/SBK_School_Online/dist/pics/ust/Android_Andy-wallpaper-10849979.jpg~http://localhost/SBK_School_Online/dist/pics/ust/Android_Andy-wallpaper-10849979.jpg', '0:0:0:0:12:12:12:12:12:12:12:12:12:12:12:12:12:12', 'bks***sbk***kbs***the author is from bootsnipet, thanks to all who makes web development easier***From Bootsnipet***From Bootsnipet***straight from schoolyne.com you can contact us to order for your special component design or you can submit your own designs***straight up from schoolyne.com for free actually.\r\n\r\nfeel free to use it and customize for you sole purposes :) ***schoolyne.com is the author***By - schoolyne.com ***schoolyne.com with thanks :)***schoolyne.com with pleasure***schoolyne.com***schoolyne.com***schoolyne.com***schoolyne.com***schoolyne.com***schoolyne.com'),
(5, 'pics_pic', 'pics_pic:picSlider', 'picaboo>>>http://localhost/SBK_School_Online/dist/graphics/herh.jpg~http://localhost/SBK_School_Online/dist/graphics/rabbit1.jpg~http://localhost/SBK_School_Online/dist/graphics/rabbit2.jpg~http://localhost/SBK_School_Online/dist/graphics/rabbit3.jpg@capaboo>>>#~#~#~#@nCol>>>4@pStyle>>>circle@tpl>>>static_pic***picaboo>>>http://localhost/SBK_School_Online/dist/graphics/kid.jpg~http://localhost/SBK_School_Online/dist/graphics/to.jpg~http://localhost/SBK_School_Online/dist/graphics/sbk.jpg~http://localhost/SBK_School_Online/dist/graphics/to.jpg~http://localhost/SBK_School_Online/dist/graphics/ubuntu.jpg@capaboo>>>BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL@tpl>>>pics_pic@shades>>>rgba(0, 0, 0, 0.49)@dots>>>rgba(105, 54, 6, 0.99)', '0:0', '***');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` int(3) NOT NULL,
  `page_id` int(2) NOT NULL,
  `pos` varchar(9) NOT NULL,
  `properties` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `page_id`, `pos`, `properties`) VALUES
(63, 8, '0:1,6', 'we give your kids the best of education to make sure that they emerge as good future leaders of this our beloved nation ghana <br />'),
(66, 22, '1:1,0', '<p>This webpage has been created without writing any code, this cms is the most intuitive and easy to use engine ive ever come across.</p><p>It just needs a little more finishing touches here and there and finally one can leave it to wander the internet alone.</p><p>God help ... <img style="width:32px;" src="http://localhost/SBK_School_Online/dist/pics/ust/twitter_32x32.png" class="img-responsive" alt="twitter_32x32.png" /><br /></p>'),
(67, 17, '1:0,2', '                                This is the content container, it allows you to place content in your page (you can even include pictures)\n Click on the edit link to edit the contents                                \n                                '),
(68, 7, '0:1,1', 'This is the content container, it allows you to place content in your page (you can even include pictures)\n Click on the edit link to edit the contents');

-- --------------------------------------------------------

--
-- Table structure for table `footer`
--

CREATE TABLE `footer` (
  `id` int(3) NOT NULL,
  `page_id` int(2) NOT NULL,
  `pos` varchar(9) NOT NULL,
  `properties` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `footer`
--

INSERT INTO `footer` (`id`, `page_id`, `pos`, `properties`) VALUES
(8, 2, '0:1,0', 'bckcolor>>>brown@tcktcolor>>>orange@lckncolor>>>grey@tpl>>>footer@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~The Media & Press=Current Info||History||Policies||Maps&Directions~The University=Current Info||History||Policies||Maps&Directions~Online Services=Current Info||History||Policies||Maps&Directions @menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#'),
(98, 18, '2:0,1', 'bckcolor>>>brown@bordercklor>>>black@tcktcolor>>>orange@lckncolor>>>grey@tpl>>>profoot@nCol>>>4@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~The Media & Press=Current Info||History||Policies||Maps&Directions~The University=Current Info||History||Policies||Maps&Directions~Online Services=Current Info||History||Policies||Maps&Directions @menuLinks>>>#=clone.sbk||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#'),
(111, 19, '2:0,2', 'bckcolor>>>brown@bordercklor>>>rgba(105, 54, 6, 0.99)@tcktcolor>>>rgba(0, 0, 0, 0.58)@lckncolor>>>rgb(255, 165, 0)@tpl>>>tactfooter@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~The University=Current Info||History||Policies||Maps&Directions~Online Services=Current Info||History||Policies||Maps&Directions ~CONTACT=head - 0243337989||designer - 0501349231||photos - 1223sbn||site - 2323776589@menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#'),
(113, 20, '0:1,0', 'bckcolor>>>brown@tcktcolor>>>rgb(255, 128, 0)@lckncolor>>>grey@tpl>>>footer@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~The Media & Press=Current Info||History||Policies||Maps&Directions~The University=Current Info||History||Policies||Maps&Directions~Online Services=Current Info||History||Policies||Maps&Directions @menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#@bordercklor>>>rgb(0, 128, 0)'),
(114, 20, '0:1,5', 'bckcolor>>>brown@bordercklor>>>black@tcktcolor>>>orange@lckncolor>>>grey@tpl>>>nicefooter@nCol>>>4@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~The Media & Press=Current Info||History||Policies||Maps&Directions~The University=Current Info||History||Policies||Maps&Directions~Online Services=Current Info||History||Policies||Maps&Directions @menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#@fbt>>>fbt'),
(115, 5, '0:1,5', 'bckcolor>>>brown@tcktcolor>>>orange@lckncolor>>>grey@tpl>>>footer@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~The Media & Press=Current Info||History||Policies||Maps&Directions~The University=Current Info||History||Policies||Maps&Directions~Online Services=Current Info||History||Policies||Maps&Directions @menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#@bordercklor>>>rgb(0, 128, 0)'),
(117, 21, '1:0,0', 'bckcolor>>>brown@bordercklor>>>black@tcktcolor>>>orange@lckncolor>>>grey@tpl>>>footer@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~The Media & Press=Current Info||History||Policies||Maps&Directions~The University=Current Info||History||Policies||Maps&Directions~Online Services=Current Info||History||Policies||Maps&Directions @menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#'),
(121, 8, '0:1,1', 'bckcolor>>>brown@tcktcolor>>>orange@lckncolor>>>grey@tpl>>>footer@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~The Media & Press=Current Info||History||Policies||Maps&Directions~The University=Current Info||History||Policies||Maps&Directions~Online Services=Current Info||History||Policies||Maps&Directions @menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#@bordercklor>>>rgb(0, 128, 0)'),
(125, 22, '2:0,1', 'bckcolor>>>rgb(255, 255, 255)@bordercklor>>>rgba(255, 255, 255, 0.1)@tcktcolor>>>rgb(165, 42, 42)@lckncolor>>>rgb(255, 128, 0)@tpl>>>tactfooter@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~The Media & Press=Current Info||History||Policies||Maps&Directions~The University=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#'),
(126, 17, '0:0,1', 'bckcolor>>>rgb(255, 255, 255)@bordercklor>>>rgb(165, 42, 42)@tcktcolor>>>rgb(0, 0, 0)@lckncolor>>>rgb(255, 165, 0)@tpl>>>nicefooter@nCol>>>4@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~The Media & Press=Current Info||History||Policies||Maps&Directions~The University=Current Info||History||Policies||Maps&Directions~Online Services=Current Info||History||Policies||Maps&Directions @menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#@fbt>>>this is the footer bootom text'),
(127, 17, '2:0,1', 'bckcolor>>>brown@bordercklor>>>rgba(105, 54, 6, 0.99)@tcktcolor>>>rgba(0, 0, 0, 0.58)@lckncolor>>>rgb(255, 165, 0)@tpl>>>tactfooter@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~The University=Current Info||History||Policies||Maps&Directions~Online Services=Current Info||History||Policies||Maps&Directions @menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#'),
(128, 23, '2:0,2', 'bckcolor>>>rgb(255, 255, 255)@bordercklor>>>rgb(255, 255, 255)@tcktcolor>>>rgb(222, 184, 135)@lckncolor>>>rgb(223, 140, 25)@tpl>>>doubfoot@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~The Media & Press=Current Info||History||Policies||Maps&Directions~The University=Current Info||History||Policies||Maps&Directions~Online Services=Current Info||History||Policies||Maps&Directions @menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#'),
(129, 24, '2:0,2', 'bckcolor>>>brown@bordercklor>>>rgba(105, 54, 6, 0.99)@tcktcolor>>>rgba(0, 0, 0, 0.58)@lckncolor>>>rgb(255, 165, 0)@tpl>>>tactfooter@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~The University=Current Info||History||Policies||Maps&Directions~Online Services=Current Info||History||Policies||Maps&Directions ~CONTACT=head - 0243337989||designer - 0501349231||photos - 1223sbn||site - 2323776589@menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#');

-- --------------------------------------------------------

--
-- Table structure for table `logger`
--

CREATE TABLE `logger` (
  `id` int(3) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `code` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(1) NOT NULL,
  `module` varchar(99) NOT NULL,
  `code` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `navbar`
--

CREATE TABLE `navbar` (
  `id` int(3) NOT NULL,
  `page_id` int(2) NOT NULL,
  `pos` varchar(9) NOT NULL,
  `properties` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `navbar`
--

INSERT INTO `navbar` (`id`, `page_id`, `pos`, `properties`) VALUES
(78, 18, '0:0,0', 'bckcolor>>>rgb(18, 98, 106)@bordercklor>>>rgb(18, 98, 106)@ackcolor>>>rgb(165, 42, 42)@tcktcolor>>>rgb(255, 165, 0)@lckncolor>>>#d4d4d4@ckurrent>>>Home@tpl>>>breadnav@menuItems>>>Home=~About=~University=~News Events=~Academics=~Students=~Staff=@menuLinks>>>#=~#=~#=~#=~#=~#=~#='),
(105, 19, '0:0,1', 'bckcolor>>>#4f372d@bordercklor>>>black@ackcolor>>>#df8c19@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Home@tpl>>>navbar@menuItems>>>Home=~About=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~News Events=Current Info||History||Policies||Maps&Directions~Academics=Current Info||History||Policies||Maps&Directions~Students=Current Info||History||Policies||Maps&Directions~Staff=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#'),
(107, 20, '0:1,7', 'bckcolor>>>#4f372d@bordercklor>>>black@ackcolor>>>#df8c19@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Home@tpl>>>breadnav@menuItems>>>Home=~About=~University=~News Events=~Academics=~Students=~Staff=@menuLinks>>>#=~#=~#=~#=~#=~#=~#='),
(108, 20, '0:1,6', 'bckcolor>>>#4f372d@bordercklor>>>black@ackcolor>>>#df8c19@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Home@tpl>>>linenav@menuItems>>>Home=~About=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~News Events=Current Info||History||Policies||Maps&Directions~Academics=Current Info||History||Policies||Maps&Directions~Students=Current Info||History||Policies||Maps&Directions~Staff=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#'),
(109, 20, '0:1,1', 'bckcolor>>>rgb(255, 128, 0)@bordercklor>>>rgb(255, 255, 255)@ackcolor>>>rgb(165, 42, 42)@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Home@tpl>>>navbar@menuItems>>>Home=~About=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~News Events=Current Info||History||Policies||Maps&Directions~Academics=Current Info||History||Policies||Maps&Directions~Students=Current Info||History||Policies||Maps&Directions~Staff=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#@beacon>>>'),
(110, 5, '0:0,3', 'bckcolor>>>#4f372d@bordercklor>>>black@ackcolor>>>#df8c19@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Home@tpl>>>navbar@menuItems>>>Home=~About=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~News Events=Current Info||History||Policies||Maps&Directions~Academics=Current Info||History||Policies||Maps&Directions~Students=Current Info||History||Policies||Maps&Directions~Staff=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#'),
(111, 5, '0:1,4', 'bckcolor>>>#4f372d@bordercklor>>>black@ackcolor>>>#df8c19@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Home@tpl>>>breadnav@menuItems>>>Home=~About=~University=~News Events=~Academics=~Students=~Staff=@menuLinks>>>#=~#=~#=~#=~#=~#=~#='),
(112, 5, '0:1,16', 'bckcolor>>>#4f372d@bordercklor>>>black@ackcolor>>>#df8c19@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Home@tpl>>>linenav@menuItems>>>Home=~About=~University=~News Events=~Academics=~Students=~Staff=@menuLinks>>>#=~#=~#=~#=~#=~#=~#='),
(113, 5, '0:1,17', 'bckcolor>>>#4f372d@bordercklor>>>black@ackcolor>>>#df8c19@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Home@tpl>>>navbar@menuItems>>>Home=~About=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~News Events=Current Info||History||Policies||Maps&Directions~Academics=Current Info||History||Policies||Maps&Directions~Students=Current Info||History||Policies||Maps&Directions~Staff=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#'),
(115, 21, '0:0,0', 'bckcolor>>>#4f372d@bordercklor>>>black@ackcolor>>>#df8c19@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Home@tpl>>>navbar@menuItems>>>Home=~About=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~News Events=Current Info||History||Policies||Maps&Directions~Academics=Current Info||History||Policies||Maps&Directions~Students=Current Info||History||Policies||Maps&Directions~Staff=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#'),
(119, 8, '0:1,2', 'bckcolor>>>rgb(255, 128, 0)@bordercklor>>>rgb(255, 255, 255)@ackcolor>>>rgb(165, 42, 42)@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Home@tpl>>>navbar@menuItems>>>Home=~About=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~News Events=Current Info||History||Policies||Maps&Directions~Academics=Current Info||History||Policies||Maps&Directions~Students=Current Info||History||Policies||Maps&Directions~Staff=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#@beacon>>>'),
(122, 22, '0:0,1', 'bckcolor>>>rgb(255, 128, 0)@bordercklor>>>rgb(255, 255, 255)@ackcolor>>>rgb(165, 42, 42)@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Home@tpl>>>navbar@menuItems>>>Home=~About=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~News Events=Current Info||History||Policies||Maps&Directions~Academics=Current Info||History||Policies||Maps&Directions~Students=Current Info||History||Policies||Maps&Directions~Staff=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#@beacon>>>'),
(123, 17, '1:0,0', 'bckcolor>>>#4f372d@bordercklor>>>black@ackcolor>>>#df8c19@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Home@tpl>>>navbar@menuItems>>>Home=~About=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~News Events=Current Info||History||Policies||Maps&Directions~Academics=Current Info||History||Policies||Maps&Directions~Students=Current Info||History||Policies||Maps&Directions~Staff=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#'),
(124, 23, '0:0,0', 'bckcolor>>>rgb(255, 255, 255)@bordercklor>>>rgb(255, 255, 255)@ackcolor>>>#df8c19@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Home@tpl>>>navbar@menuItems>>>Home=~About=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~News Events=Current Info||History||Policies||Maps&Directions~Academics=Current Info||History||Policies||Maps&Directions~Students=Current Info||History||Policies||Maps&Directions~Staff=Current Info||History||Policies||Maps&Directions~CONTACT=~Search=@menuLinks>>>#=~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=~#=@beacon>>>welcome');

-- --------------------------------------------------------

--
-- Table structure for table `notice_board`
--

CREATE TABLE `notice_board` (
  `id` int(3) NOT NULL,
  `page_id` int(2) NOT NULL,
  `pos` varchar(9) NOT NULL,
  `properties` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice_board`
--

INSERT INTO `notice_board` (`id`, `page_id`, `pos`, `properties`) VALUES
(196, 18, '0:0,1', 'bckcolor>>>rgba(255, 255, 255, 0)@bordercklor>>>rgb(18, 98, 106)@tcktcolor>>>rgb(18, 98, 106)@lckncolor>>>rgb(18, 98, 106)@ackcolor>>>rgb(255, 255, 255)@header>>>Media Board@tpl>>>dtabnote@nCol>>>4@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news this is good news this is good news this is good news|%|this is good news'),
(197, 18, '0:0,3', 'bckcolor>>>rgba(255, 255, 255, 0)@bordercklor>>>rgb(165, 42, 42)@tcktcolor>>>rgb(165, 42, 42)@lckncolor>>>rgb(165, 42, 42)@ackcolor>>>white@header>>>Media Board@tpl>>>ttabnote@nCol>>>4@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news this is good news this is good news this is good news|%|this is good news'),
(198, 18, '1:0,0', 'bckcolor>>>rgb(255, 255, 255)@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@header>>>Media Board@tpl>>>clickablenotice@nCol>>>1@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good news'),
(199, 18, '1:1,2', 'bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@tpl>>>penguinboard@nCol>>>3@menuItems>>>News~Notices~penguinboard~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good'),
(200, 18, '1:1,3', 'bckcolor>>>rgb(165, 42, 42)@bordercklor>>>black@tcktcolor>>>rgb(255, 128, 0)@lckncolor>>>rgb(34, 102, 183)@ackcolor>>>white@tpl>>>blocknote@menuItems>>>News~Notices~media_list~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good news@pix>>>rabbit1.jpg~rabbit2.jpg~rabbit3.jpg~cute_rabbit2.jpg'),
(252, 19, '1:1,2', 'bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@tpl>>>list_group@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good news'),
(253, 19, '1:1,4', 'bckcolor>>>rgba(0, 0, 0, 0.58)@bordercklor>>>rgba(6, 4, 4, 0.59)@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>rgba(0, 0, 0, 0.58)@header>>>Media Board@tpl>>>notice_board@nCol>>>4@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news this is good news this is good news this is good news|%|this is good news'),
(254, 19, '1:1,6', 'bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@tpl>>>list_group@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good news'),
(258, 20, '0:1,2', 'bckcolor>>>rgb(255, 255, 255)@bordercklor>>>rgb(212, 212, 212)@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@header>>>media@tpl>>>notice_board@nCol>>>4@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>l;ksDJF lKJS DFLKJSA flkjsh dlf ;s   fdgsdnhg % ?|%|this is good news|%|this is good news|%|this is good news'),
(259, 20, '0:1,3', 'bckcolor>>>rgba(0, 0, 0, 0.49)@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@nCol>>>2@ackcolor>>>white@tpl>>>cardtuxnote@menuItems>>>News~Notices~media_list~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news this is good news this is good news this is good news|%|this is good news|%|this is good news|%|this is good news this is good news this is good news this is good news@pix>>>http://localhost/SBK_School_Online/dist/pics/ust/007omega-wallpaper-9284845.jpg~http://localhost/SBK_School_Online/dist/pics/ust/Android_Andy-wallpaper-10849979.jpg~http://localhost/SBK_School_Online/dist/pics/ust/Angry_Birds-wallpaper-10942374.jpg~http://localhost/SBK_School_Online/dist/pics/ust/Inside_Time-wallpaper-9169824.jpg'),
(260, 20, '0:1,4', 'bckcolor>>>rgb(255, 255, 255)@bordercklor>>>rgb(0, 0, 0)@tcktcolor>>>rgb(79, 55, 45)@lckncolor>>>#d4d4d4@ackcolor>>>rgb(223, 140, 25)@tpl>>>list_group@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>i am so ha pp hios kjd kjasjd f9823ujajf|%|this is good news|%|this is good news|%|this is good news this is good newsthis is good news this is good news this is good news this is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good news this is good newsthis is good newsthis is good newsthis is good news'),
(261, 5, '0:1,0', 'bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@tpl>>>hoverboard@nCol>>>3@menuItems>>>News~Announcement~Students@menuLinks>>>#~#~#@readmore>>>this is goog news|%|this is goog news|%|this is goog news@pix>>>http://localhost/SBK_School_Online/dist/graphics/Windows-wallpaper-10021676.jpg~http://localhost/SBK_School_Online/dist/graphics/Windows-wallpaper-10021676.jpg~http://localhost/SBK_School_Online/dist/graphics/Windows-wallpaper-10021676.jpg'),
(262, 5, '0:1,1', 'bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@header>>>Media Board@tpl>>>tablotes@nCol>>>4@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news this is good news this is good news this is good news|%|this is good news'),
(263, 5, '0:1,2', 'bckcolor>>>rgb(255, 255, 255)@bordercklor>>>rgb(165, 42, 42)@tcktcolor>>>rgb(255, 128, 0)@lckncolor>>>rgba(255, 255, 255, 0)@ackcolor>>>rgb(255, 128, 0)@tpl>>>slidernote@menuItems>>>hrer~news~are@menuLinks>>>#~#~#@readmore>>>this is goog news|%|this is goog news|%|this is goog news@pix>>>http://localhost/SBK_School_Online/dist/graphics/Windows-wallpaper-10021676.jpg~http://localhost/SBK_School_Online/dist/graphics/Windows-wallpaper-10021676.jpg~http://localhost/SBK_School_Online/dist/graphics/Windows-wallpaper-10021676.jpg'),
(264, 5, '0:1,3', 'bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@header>>>Media Board@tpl>>>portletnote@nCol>>>4@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news this is good news this is good news this is good news|%|this is good news'),
(265, 5, '0:1,6', 'bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@header>>>Media Board@tpl>>>ptabs@nCol>>>4@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news this is good news this is good news this is good news|%|this is good news'),
(266, 5, '0:1,7', 'bckcolor>>>rgb(255, 255, 255)@bordercklor>>>rgb(79, 55, 45)@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@header>>>Media Board@tpl>>>notice_board@nCol>>>2@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news this is good news this is good news this is good news|%|this is good news'),
(267, 5, '0:1,9', 'bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@tpl>>>list_group@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good news'),
(268, 5, '0:1,10', 'bckcolor>>>rgb(255, 255, 255)@bordercklor>>>rgb(255, 128, 0)@tcktcolor>>>rgb(0, 0, 0)@lckncolor>>>rgb(255, 255, 0)@ackcolor>>>rgb(148, 0, 211)@header>>>Media Board@tpl>>>ptabs@nCol>>>4@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news this is good news this is good news this is good news|%|this is good news'),
(269, 5, '0:1,12', 'bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@header>>>Media Board@tpl>>>dtabnote@nCol>>>4@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news this is good news this is good news this is good news|%|this is good news'),
(270, 5, '0:1,13', 'bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@nCol>>>1@ackcolor>>>white@tpl>>>cardtuxnote@menuItems>>>hrer@menuLinks>>>#@readmore>>>this is goog news@pix>>>http://localhost/SBK_School_Online/dist/graphics/Windows-wallpaper-10021676.jpg'),
(271, 5, '0:1,14', 'bckcolor>>>rgba(255, 255, 255, 0)@bordercklor>>>rgb(255, 165, 0)@tcktcolor>>>rgb(165, 42, 42)@lckncolor>>>rgb(255, 255, 255)@ackcolor>>>rgb(165, 42, 42)@header>>>Media Board@tpl>>>ttabnote@nCol>>>4@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news this is good news this is good news this is good news|%|this is good news'),
(272, 5, '0:1,15', 'bckcolor>>>rgba(255, 255, 255, 0)@bordercklor>>>rgb(255, 128, 0)@tcktcolor>>>rgb(255, 165, 0)@lckncolor>>>#d4d4d4@ackcolor>>>rgb(128, 128, 128)@tpl>>>choosernote@nCol>>>3@menuItems>>>News~Notices~media_list@menuLinks>>>#~#~#@readmore>>>this is good news this is good news this is good news this is good news|%|this is good news this is good news this is good news this is good news|%|this is good news this is good news this is good news this is good news@pix>>>rabbit1.jpg~rabbit2.jpg~rabbit3.jpg~cute_rabbit2.jpg'),
(283, 8, '0:1,3', 'bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@tpl>>>hoverboard@nCol>>>3@menuItems>>>News~Announcement~Students@menuLinks>>>#~#~#@readmore>>>this is goog news|%|this is goog news|%|this is goog news@pix>>>http://localhost/SBK_School_Online/dist/graphics/Windows-wallpaper-10021676.jpg~http://localhost/SBK_School_Online/dist/graphics/Windows-wallpaper-10021676.jpg~http://localhost/SBK_School_Online/dist/graphics/Windows-wallpaper-10021676.jpg'),
(289, 22, '1:0,3', 'bckcolor>>>rgb(255, 255, 255)@bordercklor>>>rgba(255, 255, 255, 0)@tcktcolor>>>rgb(79, 55, 45)@lckncolor>>>#d4d4d4@ackcolor>>>white@tpl>>>choosernote@nCol>>>2@menuItems>>>News~Notices~media_list~Announcements~How@menuLinks>>>#~#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good news|%|this is good news this is good news@pix>>>http://localhost/SBK_School_Online/dist/pics/ust/Android_Andy-wallpaper-10849979.jpg~http://localhost/SBK_School_Online/dist/pics/ust/Angry_Birds-wallpaper-10942374.jpg~http://localhost/SBK_School_Online/dist/pics/ust/Inside_Time-wallpaper-9169824.jpg~http://localhost/SBK_School_Online/dist/pics/ust/Jack_Pierre-wallpaper-10342683.jpg~http://localhost/SBK_School_Online/dist/pics/ust/images_528.jpeg'),
(290, 22, '1:1,1', 'bckcolor>>>rgb(255, 255, 255)@bordercklor>>>rgb(192, 110, 28)@tcktcolor>>>rgb(0, 0, 0)@lckncolor>>>rgb(255, 255, 255)@ackcolor>>>rgb(223, 140, 25)@tpl>>>list_group@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news this is good newsthis is good news this is good news this is good news this is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good news this is good newsthis is good newsthis is good newsthis is good news|%|this is good news this is good newsthis is good news this is good news this is good news this is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good news this is good newsthis is good newsthis is good newsthis is good news|%|this is good news this is good newsthis is good news this is good news this is good news this is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good news this is good newsthis is good newsthis is good newsthis is good news|%|this is good news this is good newsthis is good news this is good news this is good news this is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good newsthis is good news this is good newsthis is good newsthis is good newsthis is good news'),
(291, 17, '2:0,2', 'bckcolor>>>rgba(0, 0, 0, 0.58)@bordercklor>>>rgba(6, 4, 4, 0.59)@tcktcolor>>>burlywood@lckncolor>>>rgb(141, 122, 20)@ackcolor>>>rgb(223, 140, 25)@header>>>Notice Board@tpl>>>ptabs@nCol>>>4@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news this is good news this is good news this is good news|%|this is good news'),
(292, 17, '2:0,3', 'bckcolor>>>rgba(0, 0, 0, 0.58)@bordercklor>>>rgba(6, 4, 4, 0.59)@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>rgba(0, 0, 0, 0.58)@header>>>Media Board@tpl>>>notice_board@nCol>>>4@menuItems>>>News~Notices~Announcements~hrer@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good news'),
(293, 17, '2:0,4', 'bckcolor>>>rgba(0, 0, 0, 0.58)@bordercklor>>>rgb(222, 184, 135)@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>rgba(0, 0, 0, 0.58)@tpl>>>list_group@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good news'),
(294, 23, '1:0,0', 'bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@tpl>>>media_list@menuItems>>>News~Notices~News~Announcements~How@menuLinks>>>#~#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good news|%|this is good news@pix>>>http://localhost/SBK_School_Online/dist/pics/ust/boy.png~http://localhost/SBK_School_Online/dist/pics/ust/boy-3.png~http://localhost/SBK_School_Online/dist/pics/ust/boy-4.png~http://localhost/SBK_School_Online/dist/pics/ust/boy-5.png~http://localhost/SBK_School_Online/dist/pics/ust/images_528.jpeg'),
(295, 23, '1:1,0', 'bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@tpl>>>media_list@menuItems>>>News~Notices~News~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good news@pix>>>http://localhost/SBK_School_Online/dist/pics/ust/Tomb_Raider-wallpaper-10422827.jpg~http://localhost/SBK_School_Online/dist/pics/ust/girl.png~http://localhost/SBK_School_Online/dist/pics/ust/girl-2.png~http://localhost/SBK_School_Online/dist/pics/ust/Android_Andy-wallpaper-10849979%20copy%202.jpg'),
(296, 23, '1:2,0', 'bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@tpl>>>media_list@menuItems>>>News~Notices~News~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good news@pix>>>http://localhost/SBK_School_Online/dist/pics/ust/Inside_Time-wallpaper-9169824.jpg~http://localhost/SBK_School_Online/dist/pics/ust/Jack_Pierre-wallpaper-10342683.jpg~http://localhost/SBK_School_Online/dist/pics/ust/Angry_Birds-wallpaper-10942374.jpg~http://localhost/SBK_School_Online/dist/pics/ust/back.jpg'),
(297, 24, '1:1,2', 'bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@tpl>>>list_group@menuItems>>>News~Notices~Past Event~Announcements~hrer@menuLinks>>>#~#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news this is good news this is good news this is good news this is good news this is good news this is good news this is good news this is good news this is good news v|%|this is good news|%|this is good news'),
(298, 24, '1:1,4', 'bckcolor>>>rgba(0, 0, 0, 0.58)@bordercklor>>>rgba(6, 4, 4, 0.59)@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>rgba(0, 0, 0, 0.58)@header>>>Media Board@tpl>>>notice_board@nCol>>>4@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news this is good news this is good news this is good news|%|this is good news'),
(299, 24, '1:1,6', 'bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@tpl>>>list_group@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good news'),
(300, 7, '0:1,0', 'bckcolor>>>rgb(255, 255, 255)@bordercklor>>>rgba(255, 255, 255, 0.78)@tcktcolor>>>rgb(79, 55, 45)@lckncolor>>>#d4d4d4@ackcolor>>>rgb(223, 140, 25)@tpl>>>list_group@menuItems>>>Announcements~news@menuLinks>>>#~#@readmore>>>this is good news|%|this is goog news');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `page_id` int(2) NOT NULL,
  `php_self` varchar(99) NOT NULL,
  `layout_info` varchar(999) NOT NULL,
  `other_infos` varchar(999) NOT NULL,
  `component_id` varchar(999) NOT NULL,
  `status` varchar(99) NOT NULL,
  `class` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `php_self`, `layout_info`, `other_infos`, `component_id`, `status`, `class`) VALUES
(5, 'another.sbk', '0,4,8=title_bar.tiles.tiles.navbar,notice_board.notice_board.notice_board.notice_board.navbar.footer.notice_board.notice_board.br.notice_board.notice_board.pics_pic.notice_board.notice_board.notice_board.notice_board.navbar.navbar.pics_pic,nothing', 'bdColor>>>rgba(255, 255, 255, 0)@icColor>>>rgba(255, 255, 255, 0)@bckimg>>>http://localhost/SBK_School_Online/dist/pics/ust/Android_Andy-wallpaper-10849979.jpg@mLeft>>>0@mRight>>>0@mTop>>>0@mBottom>>>0@padding>>>0', '98:107:108:110:261:262:263:264:111:115:265:266:267:268:88:269:270:271:272:112:113:89', 'active', 0),
(7, 'clone.sbk', '0,4,8=tiles,notice_board.content,nothing', 'bdColor>>>rgb(141, 122, 20)@icColor>>>rgba(255, 255, 255, 0)@bckimg>>>none@mLeft>>>40@mRight>>>37@mTop>>>99@mBottom>>>99@padding>>>24', '128:300:68', 'active', 0),
(8, 'page.sbk', '0,4,8=tiles.tiles.title_bar.tiles,tiles.footer.navbar.notice_board.br.pics_pic.content,nothing', 'bdColor>>>rgba(255, 255, 255, 0)@icColor>>>rgba(255, 255, 255, 0)@bckimg>>>http://localhost/SBK_School_Online/dist/pics/ust/Angry_Birds-wallpaper-10942374.jpg@mLeft>>>34@mRight>>>33@mTop>>>15@mBottom>>>38@padding>>>5', '118:119:101:120:121:121:119:283:95:63', 'active', 0),
(17, 'cancel.sbk', '0:0:0=pics_pic.footer.pics_pic:navbar.br.content.title_bar:br.footer.notice_board.notice_board.notice_board.tiles.hr', 'bdColor>>>rgb(255, 255, 255)@icColor>>>rgba(255, 255, 255, 0)@bckimg>>>none@mLeft>>>15@mRight>>>15@mTop>>>9@mBottom>>>99@padding>>>1', '102:126:103:123:67:103:127:291:292:293:125', 'active', 0),
(18, '3y3.sbk', '0:0,3,9:0=navbar.notice_board.br.notice_board.br:notice_board,pics_pic.br.notice_board.hr.notice_board,nothing:br.hr.footer', 'bdColor>>>rgba(255, 255, 255, 0)@icColor>>>rgba(0, 0, 0, 0.69)@bckimg>>>http://localhost/SBK_School_Online/dist/pics/ust/Android_Andy-wallpaper-10849979.jpg@mLeft>>>0@mRight>>>0@mTop>>>0@mBottom>>>0@padding>>>10', '78:196:197:198:64:199:200:98', 'active', 0),
(19, 'now.sbk', '0:0,3,9:0=pics_pic.navbar.hr:tiles.title_bar.pics_pic,pics_pic.br.notice_board.br.notice_board.hr.notice_board,nothing:br.br.footer', 'bdColor>>>rgb(255, 255, 255)@icColor>>>rgba(255, 255, 255, 0)@bckimg>>>none@mLeft>>>0@mRight>>>0@mTop>>>0@mBottom>>>0@padding>>>13', '85:105:103:95:86:87:252:253:254:111', 'active', 0),
(20, 'jama.sbk', '0,4,8=title_bar.tiles.tiles,footer.navbar.navbar.navbar.footer.notice_board.notice_board.notice_board,nothing', 'bdColor>>>rgba(255, 255, 255, 0)@icColor>>>rgba(255, 255, 255, 0)@bckimg>>>http://localhost/SBK_School_Online/dist/pics/ust/Angry_Birds-wallpaper-10942374.jpg@mLeft>>>34@mRight>>>33@mTop>>>15@mBottom>>>38@padding>>>5', '97:105:106:113:107:108:109:114:258:259:260', 'active', 0),
(21, 'seth.sbk', '0:0=navbar:footer', 'bdColor>>>white@icColor>>>white@bckimg>>>none@mLeft>>>0@mRight>>>0@mTop>>>0@mBottom>>>0@padding>>>5', '115:117', 'active', 0),
(22, 'me.sbk', '0:0,6,6:0=pics_pic.navbar.pics_pic.br:br.tiles.br.notice_board,content.notice_board,nothing:br.footer', 'bdColor>>>white@icColor>>>white@bckimg>>>none@mLeft>>>19@mRight>>>21@mTop>>>19@mBottom>>>24@padding>>>30', '100:122:101:124:289:66:290:125', 'active', 0),
(23, 'pages.sbk', '0:0,4,4,4:0=navbar.br.pics_pic.br.br:notice_board,notice_board,notice_board,nothing:br.br.footer', 'bdColor>>>white@icColor>>>white@bckimg>>>none@mLeft>>>0@mRight>>>0@mTop>>>0@mBottom>>>0@padding>>>8', '124:104:294:295:296:128', 'active', 0),
(24, 'grow.sbk', '0:0,3,9:0=pics_pic.hr:tiles.title_bar.tiles,pics_pic.br.notice_board.br.notice_board.hr.notice_board,nothing:br.br.footer', 'bdColor>>>rgb(255, 255, 255)@icColor>>>rgba(255, 255, 255, 0)@bckimg>>>none@mLeft>>>0@mRight>>>0@mTop>>>0@mBottom>>>0@padding>>>13', '105:126:104:127:106:297:298:299:129', 'active', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pics_pic`
--

CREATE TABLE `pics_pic` (
  `id` int(3) NOT NULL,
  `page_id` int(2) NOT NULL,
  `pos` varchar(9) NOT NULL,
  `properties` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pics_pic`
--

INSERT INTO `pics_pic` (`id`, `page_id`, `pos`, `properties`) VALUES
(64, 18, '1:1,0', 'picaboo>>>http://localhost/SBK_School_Online/dist/graphics/kid.jpg~http://localhost/SBK_School_Online/dist/graphics/to.jpg~http://localhost/SBK_School_Online/dist/graphics/sbk.jpg~http://localhost/SBK_School_Online/dist/graphics/to.jpg~http://localhost/SBK_School_Online/dist/graphics/ubuntu.jpg@capaboo>>>BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL@tpl>>>pics_pic@shades>>>rgba(0, 0, 0, 0.49)@dots>>>rgba(105, 54, 6, 0.99)'),
(85, 19, '0:0,0', 'picaboo>>>http://localhost/SBK_School_Online/dist/pics/ust/header.jpg@capaboo>>>BACK TO SCHOOL@tpl>>>pics_pic@shades>>>rgba(0, 0, 0, 0.49)@dots>>>rgba(105, 54, 6, 0.99)'),
(86, 19, '1:0,2', 'picaboo>>>http://localhost/SBK_School_Online/dist/graphics/kid.jpg~http://localhost/SBK_School_Online/dist/graphics/to.jpg~http://localhost/SBK_School_Online/dist/graphics/sbk.jpg~http://localhost/SBK_School_Online/dist/graphics/to.jpg~http://localhost/SBK_School_Online/dist/graphics/ubuntu.jpg~http://localhost/SBK_School_Online/dist/graphics/to.jpg@capaboo>>>BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL@tpl>>>pics_pic@shades>>>rgba(0, 0, 0, 0.49)@dots>>>rgb(79, 55, 45)'),
(87, 19, '1:1,0', 'picaboo>>>http://localhost/SBK_School_Online/dist/graphics/kid.jpg~http://localhost/SBK_School_Online/dist/graphics/to.jpg~http://localhost/SBK_School_Online/dist/graphics/sbk.jpg~http://localhost/SBK_School_Online/dist/graphics/to.jpg~http://localhost/SBK_School_Online/dist/graphics/ubuntu.jpg@capaboo>>>BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL@tpl>>>pics_pic@shades>>>rgba(0, 0, 0, 0.49)@dots>>>rgba(105, 54, 6, 0.99)'),
(88, 5, '0:1,11', 'picaboo>>>http://localhost/SBK_School_Online/dist/graphics/kid.jpg~http://localhost/SBK_School_Online/dist/graphics/to.jpg~http://localhost/SBK_School_Online/dist/graphics/sbk.jpg~http://localhost/SBK_School_Online/dist/graphics/to.jpg@capaboo>>>BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL@tpl>>>pics_pic@shades>>>rgba(0, 0, 0, 0.49)@dots>>>rgba(105, 54, 6, 0.99)'),
(89, 5, '0:1,18', 'picaboo>>>http://localhost/SBK_School_Online/dist/graphics/kid.jpg~http://localhost/SBK_School_Online/dist/graphics/to.jpg~http://localhost/SBK_School_Online/dist/graphics/sbk.jpg~http://localhost/SBK_School_Online/dist/graphics/to.jpg~http://localhost/SBK_School_Online/dist/graphics/ubuntu.jpg@capaboo>>>BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL@tpl>>>pics_pic@shades>>>rgba(0, 0, 0, 0.49)@dots>>>rgba(105, 54, 6, 0.99)'),
(95, 8, '0:1,5', 'picaboo>>>http://localhost/SBK_School_Online/dist/graphics/rabbit3.jpg~http://localhost/SBK_School_Online/dist/pics/ust/NewFolder/stopwatch-26.png~http://localhost/SBK_School_Online/dist/pics/ust/boy-4.png~http://localhost/SBK_School_Online/dist/pics/ust/boy-3.png@capaboo>>>#~BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL@nCol>>>4@pStyle>>>circle@tpl>>>static_pic'),
(100, 22, '0:0,0', 'picaboo>>>http://localhost/SBK_School_Online/dist/graphics/rabbit3.jpg~http://localhost/SBK_School_Online/dist/pics/ust/NewFolder/stopwatch-26.png~http://localhost/SBK_School_Online/dist/pics/ust/boy-4.png~http://localhost/SBK_School_Online/dist/pics/ust/boy-3.png@capaboo>>>#~BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL@nCol>>>4@pStyle>>>@tpl>>>static_pic'),
(101, 22, '0:0,2', 'picaboo>>>http://localhost/SBK_School_Online/dist/graphics/kid.jpg~http://localhost/SBK_School_Online/dist/graphics/to.jpg~http://localhost/SBK_School_Online/dist/graphics/sbk.jpg~http://localhost/SBK_School_Online/dist/graphics/to.jpg~http://localhost/SBK_School_Online/dist/graphics/ubuntu.jpg@capaboo>>>BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL@tpl>>>pics_pic@shades>>>rgba(0, 0, 0, 0.49)@dots>>>rgba(105, 54, 6, 0.99)'),
(102, 17, '0:0,0', 'picaboo>>>http://localhost/SBK_School_Online/dist/graphics/to.jpg~http://localhost/SBK_School_Online/dist/graphics/to.jpg~http://localhost/SBK_School_Online/dist/graphics/to.jpg@capaboo>>>BACK TO SCHOOL BACK TO SCHOOL BACK TO SCHOOL~BACK TO SCHOOL BACK TO SCHOOLBACK TO SCHOOLBACK TO SCHOOL~BACK TO SCHOOL BACK TO SCHOOL BACK TO SCHOOL BACK TO SCHOOL@tpl>>>pics_pic@shades>>>rgba(128, 128, 128, 0.49)@dots>>>rgb(255, 255, 255)'),
(103, 17, '0:0,2', 'picaboo>>>http://localhost/SBK_School_Online/dist/pics/ust/NewFolder/wifi-signal-5.png~http://localhost/SBK_School_Online/dist/pics/ust/NewFolder/video-player-6.png~http://localhost/SBK_School_Online/dist/pics/ust/NewFolder/stopwatch-26.png~http://localhost/SBK_School_Online/dist/pics/ust/boy.png~http://localhost/SBK_School_Online/dist/pics/ust/girl.png~http://localhost/SBK_School_Online/dist/pics/ust/girl-2.png@capaboo>>>#~BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL@nCol>>>3@pStyle>>>@tpl>>>static_pic'),
(104, 23, '0:0,2', 'picaboo>>>http://localhost/SBK_School_Online/dist/pics/ust/Ubuntu-wallpaper-9328565.jpg~http://localhost/SBK_School_Online/dist/pics/ust/Tesla-wallpaper-10795768.jpg~http://localhost/SBK_School_Online/dist/pics/ust/Ubuntu-wallpaper-9328565.jpg~http://localhost/SBK_School_Online/dist/pics/ust/Tesla-wallpaper-10795768.jpg~http://localhost/SBK_School_Online/dist/pics/ust/Tesla-wallpaper-10795768.jpg~http://localhost/SBK_School_Online/dist/pics/ust/Ubuntu-wallpaper-9328565.jpg~http://localhost/SBK_School_Online/dist/pics/ust/Tesla-wallpaper-10795768.jpg~http://localhost/SBK_School_Online/dist/pics/ust/Ubuntu-wallpaper-9328565.jpg@capaboo>>>#~#~#~BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL@nCol>>>4@pStyle>>>@tpl>>>static_pic'),
(105, 24, '0:0,4', 'picaboo>>>http://localhost/SBK_School_Online/dist/pics/ust/boy-3.png~http://localhost/SBK_School_Online/dist/pics/ust/girl-2.png~http://localhost/SBK_School_Online/dist/pics/ust/boy-5.png~http://localhost/SBK_School_Online/dist/pics/ust/girl.png~http://localhost/SBK_School_Online/dist/pics/ust/boy-4.png~http://localhost/SBK_School_Online/dist/pics/ust/boy.png@capaboo>>>#~#~BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL@nCol>>>3@pStyle>>>circle@tpl>>>static_pic'),
(106, 24, '1:1,0', 'picaboo>>>http://localhost/SBK_School_Online/dist/graphics/to.jpg~http://localhost/SBK_School_Online/dist/graphics/sbk.jpg~http://localhost/SBK_School_Online/dist/graphics/to.jpg~http://localhost/SBK_School_Online/dist/graphics/ubuntu.jpg~http://localhost/SBK_School_Online/dist/graphics/to.jpg@capaboo>>>BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL@tpl>>>pics_pic@shades>>>rgba(0, 0, 0, 0.49)@dots>>>rgba(105, 54, 6, 0.99)');

-- --------------------------------------------------------

--
-- Table structure for table `tiles`
--

CREATE TABLE `tiles` (
  `id` int(3) NOT NULL,
  `page_id` int(2) NOT NULL,
  `pos` varchar(9) NOT NULL,
  `properties` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tiles`
--

INSERT INTO `tiles` (`id`, `page_id`, `pos`, `properties`) VALUES
(6, 2, '0:0,1', 'bckcolor>>>rgb(165, 42, 42)@ackcolor>>>#df8c19@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Colleges@tpl>>>tiles@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~Media=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~Service=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#'),
(103, 19, '1:0,0', 'bckcolor>>>rgba(221, 12, 170, 0.98)@bordercklor>>>black@ackcolor>>>rgb(255, 20, 147)@tcktcolor>>>rgb(255, 128, 0)@lckncolor>>>rgb(255, 255, 255)@ckurrent>>>Colleges@tpl>>>duptiles@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~Media=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~Service=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#'),
(105, 20, '0:0,1', 'bckcolor>>>rgba(255, 255, 255, 0)@ackcolor>>>rgb(0, 0, 0)@tcktcolor>>>rgb(0, 0, 0)@lckncolor>>>rgb(255, 255, 255)@ckurrent>>>Colleges@tpl>>>tiles@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~Media=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~Service=Current Info||History||Policies||Maps&Directions@menuLinks>>>page.sbk=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#'),
(106, 20, '0:0,2', 'bckcolor>>>#4f372d@bordercklor>>>black@ackcolor>>>#df8c19@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Colleges@tpl>>>tabifynote@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~Media=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~Service=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#'),
(107, 5, '0:0,1', 'bckcolor>>>#4f372d@bordercklor>>>black@ackcolor>>>#df8c19@tcktcolor>>>burlywood@lckncolor>>>rgb(255, 255, 255)@ckurrent>>>Colleges@tpl>>>tabifynote@menuItems>>>Colleges=~Media=~University=~Service=@menuLinks>>>cancel.sbk=~clone.sbk=~#=~#='),
(108, 5, '0:0,2', 'bckcolor>>>@bordercklor>>>black@ackcolor>>>#df8c19@tcktcolor>>>rgb(0, 0, 0)@lckncolor>>>rgb(165, 42, 42)@ckurrent>>>Colleges@tpl>>>duptiles@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~Media=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~Service=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=clone.sbk||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#'),
(118, 8, '0:0,0', 'bckcolor>>>rgba(255, 255, 255, 0)@bordercklor>>>black@ackcolor>>>rgb(255, 255, 255)@tcktcolor>>>rgb(0, 0, 0)@lckncolor>>>rgb(255, 0, 0)@ckurrent>>>Colleges@tpl>>>vnavbar@menuItems>>>Colleges=Current Info||History||Policies||dada~Media=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~Service=Current Info||History||Policies||Maps&Directions~CONTACT=bom~Search=@menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#~#='),
(119, 8, '0:0,1', 'bckcolor>>>rgb(255, 255, 255)@bordercklor>>>black@ackcolor>>>#df8c19@tcktcolor>>>rgb(0, 0, 0)@lckncolor>>>rgb(165, 42, 42)@ckurrent>>>Colleges@tpl>>>duptiles@menuItems>>>Colleges=Current Info||History||Policies~Media=Current Info||History||Policies~University=Current Info||History||Policies~Service=Current Info||History||Policies~Students=Home||Activities@menuLinks>>>#=#||#||#~#=#||#||#~#=#||#||#~#=#||#||#~#=#||#'),
(120, 8, '0:0,3', 'bckcolor>>>rgb(128, 128, 128)@ackcolor>>>rgb(116, 104, 126)@tcktcolor>>>rgb(79, 55, 45)@lckncolor>>>rgb(255, 165, 0)@ckurrent>>>Media@tpl>>>tiles@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~Media=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~Service=Current||History||Policies@menuLinks>>>cancel.sbk=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#'),
(121, 8, '0:1,0', 'bckcolor>>>rgb(255, 255, 255)@bordercklor>>>black@ackcolor>>>#df8c19@tcktcolor>>>rgb(192, 110, 28)@lckncolor>>>rgba(105, 54, 6, 0.99)@ckurrent>>>Service@tpl>>>tabifynote@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~Media=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~Service=Current Info||History||Policies||Maps&Directions@menuLinks>>>me.sbk=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#'),
(124, 22, '1:0,1', 'bckcolor>>>rgb(255, 128, 0)@bordercklor>>>black@ackcolor>>>rgb(165, 42, 42)@tcktcolor>>>rgb(222, 184, 135)@lckncolor>>>rgb(255, 255, 255)@ckurrent>>>Colleges@tpl>>>duptiles@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~Media=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~Service=Current Info||History||Policies||Maps&Directions~CONTACT=@menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#='),
(125, 17, '2:0,5', 'bckcolor>>>rgba(0, 0, 0, 0.58)@bordercklor>>>black@ackcolor>>>#df8c19@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Colleges@tpl>>>tiles@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~Media=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~Service=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#'),
(126, 24, '1:0,0', 'bckcolor>>>rgb(0, 128, 0)@bordercklor>>>black@ackcolor>>>rgb(255, 20, 147)@tcktcolor>>>rgb(255, 128, 0)@lckncolor>>>rgb(255, 255, 255)@ckurrent>>>Colleges@tpl>>>duptiles@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~Media=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~Service=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#'),
(127, 24, '1:0,2', 'bckcolor>>>rgb(255, 20, 147)@bordercklor>>>black@ackcolor>>>rgba(221, 12, 170, 0.98)@tcktcolor>>>rgb(255, 255, 255)@lckncolor>>>#d4d4d4@ckurrent>>>Colleges@tpl>>>tabifynote@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~Media=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~Service=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#'),
(128, 7, '0:0,0', 'bckcolor>>>rgb(255, 255, 255)@bordercklor>>>black@ackcolor>>>rgb(165, 42, 42)@tcktcolor>>>rgb(255, 128, 0)@lckncolor>>>rgb(128, 128, 128)@ckurrent>>>Colleges@tpl>>>vnavbar@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~Media=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~Service=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=another.sbk||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#');

-- --------------------------------------------------------

--
-- Table structure for table `title_bar`
--

CREATE TABLE `title_bar` (
  `id` int(3) NOT NULL,
  `page_id` int(2) NOT NULL,
  `pos` varchar(9) NOT NULL,
  `properties` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `title_bar`
--

INSERT INTO `title_bar` (`id`, `page_id`, `pos`, `properties`) VALUES
(4, 2, '0:0,0', '<p><img class="img-responsive" src="http://localhost/SBK_School_Online/dist/ust/Android_Andy-wallpaper-10849979.jpg" style="width: 1118px;">									This is the header container, it allows you to set a heading for your page\r\n Click on the edit link to edit the contents								</p>'),
(95, 19, '1:0,1', 'This is the header container, it allows you to set a heading for your page\n Click on the edit link to edit the contents'),
(97, 20, '0:0,0', '<p><img style="width:948px;" src="http://localhost/SBK_School_Online/dist/pics/ust/Android_Andy-wallpaper-10849979.jpg" class="img-responsive" alt="Android_Andy-wallpaper-10849979.jpg" /></p><p>									This is the header container, it allows you to set a heading for your page\n Click on the edit link to edit the contents								</p>                            '),
(98, 5, '0:0,0', '																											<p><img style="width:1118px;" src="http://localhost/SBK_School_Online/dist/pics/ust/Tesla-wallpaper-10795768.jpg" class="img-responsive" alt="Tesla-wallpaper-10795768.jpg" /></p><p>									This is the header container, it allows you to set a heading for your page\n Click on the edit link to edit the contents								</p>																				'),
(101, 8, '0:0,2', '<p><img style="width:948px;" src="http://localhost/SBK_School_Online/dist/pics/ust/Android_Andy-wallpaper-10849979.jpg" class="img-responsive" alt="Android_Andy-wallpaper-10849979.jpg" /></p><p>									This is the header container, it allows you to set a heading for your page\n Click on the edit link to edit the contents								</p>                            '),
(103, 17, '1:0,3', '                                This is the header container, it allows you to set a heading for your page\n Click on the edit link to edit the contents    \n                                '),
(104, 24, '1:0,1', 'This is the header container, it allows you to set a heading for your page\n Click on the edit link to edit the contents');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`add_id`);

--
-- Indexes for table `components_config`
--
ALTER TABLE `components_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logger`
--
ALTER TABLE `logger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navbar`
--
ALTER TABLE `navbar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice_board`
--
ALTER TABLE `notice_board`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `pics_pic`
--
ALTER TABLE `pics_pic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tiles`
--
ALTER TABLE `tiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `title_bar`
--
ALTER TABLE `title_bar`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `add_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `components_config`
--
ALTER TABLE `components_config`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `footer`
--
ALTER TABLE `footer`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;
--
-- AUTO_INCREMENT for table `logger`
--
ALTER TABLE `logger`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `navbar`
--
ALTER TABLE `navbar`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;
--
-- AUTO_INCREMENT for table `notice_board`
--
ALTER TABLE `notice_board`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `page_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `pics_pic`
--
ALTER TABLE `pics_pic`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;
--
-- AUTO_INCREMENT for table `tiles`
--
ALTER TABLE `tiles`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT for table `title_bar`
--
ALTER TABLE `title_bar`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;--
-- Database: `ust`
--
CREATE DATABASE IF NOT EXISTS `ust` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ust`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `add_id` int(2) NOT NULL,
  `user` varchar(32) NOT NULL,
  `pass` varchar(32) NOT NULL,
  `user_pass` varchar(99) NOT NULL,
  `add_type` varchar(32) NOT NULL,
  `add_pages` varchar(99) NOT NULL,
  `email` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`add_id`, `user`, `pass`, `user_pass`, `add_type`, `add_pages`, `email`) VALUES
(1, 'Admin', 'f15c693f5d6775d6ff8f8359d462a304', 'e3afed0047b08059d0fada10f400c1e5', 'Gcp', '', 'sd@g'),
(9, 'Akwesi', '6ac933301a3933c8a22ceebea7000326', '8aa09448ca545f7f4560f83e1f784aaf', 'cp', 'another.sbk', '');

-- --------------------------------------------------------

--
-- Table structure for table `components_config`
--

CREATE TABLE `components_config` (
  `id` int(2) NOT NULL,
  `category` varchar(99) NOT NULL,
  `types` varchar(999) NOT NULL,
  `inits` varchar(60000) NOT NULL,
  `disps` varchar(99) NOT NULL,
  `authors` varchar(900) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `components_config`
--

INSERT INTO `components_config` (`id`, `category`, `types`, `inits`, `disps`, `authors`) VALUES
(1, 'navbar', 'navbar:navbar:liner:bread', 'bckcolor>>>#4f372d@bordercklor>>>black@ackcolor>>>#df8c19@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Home@tpl>>>navbar@menuItems>>>Home=~About=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~News Events=Current Info||History||Policies||Maps&Directions~Academics=Current Info||History||Policies||Maps&Directions~Students=Current Info||History||Policies||Maps&Directions~Staff=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#***bckcolor>>>#4f372d@bordercklor>>>black@ackcolor>>>#df8c19@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Home@tpl>>>navbar@menuItems>>>Home=~About=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~News Events=Current Info||History||Policies||Maps&Directions~Academics=Current Info||History||Policies||Maps&Directions~Students=Current Info||History||Policies||Maps&Directions~Staff=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#***bckcolor>>>#4f372d@bordercklor>>>black@ackcolor>>>#df8c19@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Home@tpl>>>linenav@menuItems>>>Home=~About=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~News Events=Current Info||History||Policies||Maps&Directions~Academics=Current Info||History||Policies||Maps&Directions~Students=Current Info||History||Policies||Maps&Directions~Staff=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#***bckcolor>>>#4f372d@bordercklor>>>black@ackcolor>>>#df8c19@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Home@tpl>>>breadnav@menuItems>>>Home=~About=~University=~News Events=~Academics=~Students=~Staff=@menuLinks>>>#=~#=~#=~#=~#=~#=~#=', '0:0:12:12', '******schoolyne.com***schoolyne.com'),
(2, 'tiles', 'tiles:coolVetnav:duptiles:tabifytiles', 'bckcolor>>>#4f372d@bordercklor>>>black@ackcolor>>>#df8c19@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Colleges@tpl>>>tiles@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~Media=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~Service=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#***bckcolor>>>#4f372d@bordercklor>>>black@ackcolor>>>#df8c19@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Colleges@tpl>>>vnavbar@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~Media=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~Service=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#***bckcolor>>>#4f372d@bordercklor>>>black@ackcolor>>>#df8c19@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Colleges@tpl>>>duptiles@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~Media=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~Service=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#***bckcolor>>>#4f372d@bordercklor>>>black@ackcolor>>>#df8c19@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Colleges@tpl>>>tabifynote@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~Media=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~Service=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#', '0:12:12:12', '***from bootsnipet***sbk with love***schoolyne.com is the author of this wonderful and great something'),
(3, 'footer', 'foot:tactical footer:lookfoot:proot:flinker', 'bckcolor>>>brown@bordercklor>>>black@tcktcolor>>>orange@lckncolor>>>grey@tpl>>>footer@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~The Media & Press=Current Info||History||Policies||Maps&Directions~The University=Current Info||History||Policies||Maps&Directions~Online Services=Current Info||History||Policies||Maps&Directions @menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#***bckcolor>>>brown@bordercklor>>>black@tcktcolor>>>orange@lckncolor>>>grey@tpl>>>tactfooter@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~The Media & Press=Current Info||History||Policies||Maps&Directions~The University=Current Info||History||Policies||Maps&Directions~Online Services=Current Info||History||Policies||Maps&Directions @menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#***bckcolor>>>brown@bordercklor>>>black@tcktcolor>>>orange@lckncolor>>>grey@tpl>>>doubfoot@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~The Media & Press=Current Info||History||Policies||Maps&Directions~The University=Current Info||History||Policies||Maps&Directions~Online Services=Current Info||History||Policies||Maps&Directions @menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#***bckcolor>>>brown@bordercklor>>>black@tcktcolor>>>orange@lckncolor>>>grey@tpl>>>profoot@nCol>>>4@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~The Media & Press=Current Info||History||Policies||Maps&Directions~The University=Current Info||History||Policies||Maps&Directions~Online Services=Current Info||History||Policies||Maps&Directions @menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#***bckcolor>>>brown@bordercklor>>>black@tcktcolor>>>orange@lckncolor>>>grey@tpl>>>nicefooter@nCol>>>4@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~The Media & Press=Current Info||History||Policies||Maps&Directions~The University=Current Info||History||Policies||Maps&Directions~Online Services=Current Info||History||Policies||Maps&Directions @menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#', '0:12:12:12:12', '***this component is for free if you dont have it just click on the appropriate link to get it***from paris with love***schoolyne.com***schooolyne.com'),
(4, 'notice_board', 'media_list:notice_board:list_group:tabify:thePenguin:hoverNote:clickable:reverseflash:tabletify:portlet:chooser:doted:slidey:block:belowtab:defaulttab:tuxnote:uplift', 'bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@tpl>>>media_list@menuItems>>>News~Notices~News~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good news@pix>>>rabbit1.jpg~rabbit2.jpg~rabbit3.jpg~cute_rabbit2.jpg***bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@header>>>Media Board@tpl>>>notice_board@nCol>>>4@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news this is good news this is good news this is good news|%|this is good news***bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@tpl>>>list_group@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good news***bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@header>>>Media Board@tpl>>>ptabs@nCol>>>4@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news this is good news this is good news this is good news|%|this is good news***bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@tpl>>>penguinboard@nCol>>>3@menuItems>>>News~Notices~penguinboard~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good***bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@tpl>>>hoverboard@nCol>>>3@menuItems>>>News~Notices~penguinboard~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good***bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@header>>>Media Board@tpl>>>clickablenotice@nCol>>>4@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good news***bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@header>>>Media Board@tpl>>>reverseboard@nCol>>>4@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good news***bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@header>>>Media Board@tpl>>>tablotes@nCol>>>4@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news this is good news this is good news this is good news|%|this is good news***bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@header>>>Media Board@tpl>>>portletnote@nCol>>>4@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news this is good news this is good news this is good news|%|this is good news***bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@tpl>>>choosernote@nCol>>>3@menuItems>>>News~Notices~media_list~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good news@pix>>>rabbit1.jpg~rabbit2.jpg~rabbit3.jpg~cute_rabbit2.jpg***bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@header>>>Media Board@tpl>>>dotednotes@nCol>>>3@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news this is good news this is good news this is good news|%|this is good news***bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@tpl>>>slidernote@menuItems>>>News~Notices~media_list~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good news@pix>>>rabbit1.jpg~rabbit2.jpg~rabbit3.jpg~cute_rabbit2.jpg***bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@tpl>>>blocknote@menuItems>>>News~Notices~media_list~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good news@pix>>>rabbit1.jpg~rabbit2.jpg~rabbit3.jpg~cute_rabbit2.jpg***bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@header>>>Media Board@tpl>>>dtabnote@nCol>>>4@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news this is good news this is good news this is good news|%|this is good news***bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@header>>>Media Board@tpl>>>ttabnote@nCol>>>4@menuItems>>>News~Notices~Past Events~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news this is good news this is good news this is good news|%|this is good news***bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@nCol>>>3@ackcolor>>>white@tpl>>>cardtuxnote@menuItems>>>News~Notices~media_list~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good news@pix>>>rabbit1.jpg~rabbit2.jpg~rabbit3.jpg~cute_rabbit2.jpg***bckcolor>>>#4f372d@bordercklor>>>black@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ackcolor>>>white@nCol>>>4@tpl>>>uplifthovernote@menuItems>>>News~Notices~media_list~Announcements@menuLinks>>>#~#~#~#@readmore>>>this is good news|%|this is good news|%|this is good news|%|this is good news@pix>>>http://localhost/SBK_School_Online/dist/pics/ust/Android_Andy-wallpaper-10849979.jpg~http://localhost/SBK_School_Online/dist/pics/ust/Android_Andy-wallpaper-10849979.jpg~http://localhost/SBK_School_Online/dist/pics/ust/Android_Andy-wallpaper-10849979.jpg~http://localhost/SBK_School_Online/dist/pics/ust/Android_Andy-wallpaper-10849979.jpg', '0:0:0:0:12:12:12:12:12:12:12:12:12:12:12:12:12:12', 'bks***sbk***kbs***the author is from bootsnipet, thanks to all who makes web development easier***From Bootsnipet***From Bootsnipet***straight from schoolyne.com you can contact us to order for your special component design or you can submit your own designs***straight up from schoolyne.com for free actually.\r\n\r\nfeel free to use it and customize for you sole purposes :) ***schoolyne.com is the author***By - schoolyne.com ***schoolyne.com with thanks :)***schoolyne.com with pleasure***schoolyne.com***schoolyne.com***schoolyne.com***schoolyne.com***schoolyne.com***schoolyne.com'),
(5, 'pics_pic', 'pics_pic:picSlider', 'picaboo>>>http://localhost/SBK_School_Online/dist/graphics/herh.jpg~http://localhost/SBK_School_Online/dist/graphics/rabbit1.jpg~http://localhost/SBK_School_Online/dist/graphics/rabbit2.jpg~http://localhost/SBK_School_Online/dist/graphics/rabbit3.jpg@capaboo>>>#~#~#~#@nCol>>>4@pStyle>>>circle@tpl>>>static_pic***picaboo>>>http://localhost/SBK_School_Online/dist/graphics/kid.jpg~http://localhost/SBK_School_Online/dist/graphics/to.jpg~http://localhost/SBK_School_Online/dist/graphics/sbk.jpg~http://localhost/SBK_School_Online/dist/graphics/to.jpg~http://localhost/SBK_School_Online/dist/graphics/ubuntu.jpg@capaboo>>>BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL~BACK TO SCHOOL@tpl>>>pics_pic@shades>>>rgba(0, 0, 0, 0.49)@dots>>>rgba(105, 54, 6, 0.99)', '0:0', '***');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` int(3) NOT NULL,
  `page_id` int(2) NOT NULL,
  `pos` varchar(9) NOT NULL,
  `properties` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `footer`
--

CREATE TABLE `footer` (
  `id` int(3) NOT NULL,
  `page_id` int(2) NOT NULL,
  `pos` varchar(9) NOT NULL,
  `properties` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `footer`
--

INSERT INTO `footer` (`id`, `page_id`, `pos`, `properties`) VALUES
(8, 2, '0:1,0', 'bckcolor>>>brown@tcktcolor>>>orange@lckncolor>>>grey@tpl>>>footer@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~The Media & Press=Current Info||History||Policies||Maps&Directions~The University=Current Info||History||Policies||Maps&Directions~Online Services=Current Info||History||Policies||Maps&Directions @menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#');

-- --------------------------------------------------------

--
-- Table structure for table `logger`
--

CREATE TABLE `logger` (
  `id` int(3) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `code` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(1) NOT NULL,
  `module` varchar(99) NOT NULL,
  `code` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `navbar`
--

CREATE TABLE `navbar` (
  `id` int(3) NOT NULL,
  `page_id` int(2) NOT NULL,
  `pos` varchar(9) NOT NULL,
  `properties` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notice_board`
--

CREATE TABLE `notice_board` (
  `id` int(3) NOT NULL,
  `page_id` int(2) NOT NULL,
  `pos` varchar(9) NOT NULL,
  `properties` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `page_id` int(2) NOT NULL,
  `php_self` varchar(99) NOT NULL,
  `layout_info` varchar(999) NOT NULL,
  `other_infos` varchar(999) NOT NULL,
  `component_id` varchar(999) NOT NULL,
  `status` varchar(99) NOT NULL,
  `class` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pics_pic`
--

CREATE TABLE `pics_pic` (
  `id` int(3) NOT NULL,
  `page_id` int(2) NOT NULL,
  `pos` varchar(9) NOT NULL,
  `properties` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tiles`
--

CREATE TABLE `tiles` (
  `id` int(3) NOT NULL,
  `page_id` int(2) NOT NULL,
  `pos` varchar(9) NOT NULL,
  `properties` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tiles`
--

INSERT INTO `tiles` (`id`, `page_id`, `pos`, `properties`) VALUES
(6, 2, '0:0,1', 'bckcolor>>>rgb(165, 42, 42)@ackcolor>>>#df8c19@tcktcolor>>>burlywood@lckncolor>>>#d4d4d4@ckurrent>>>Colleges@tpl>>>tiles@menuItems>>>Colleges=Current Info||History||Policies||Maps&Directions~Media=Current Info||History||Policies||Maps&Directions~University=Current Info||History||Policies||Maps&Directions~Service=Current Info||History||Policies||Maps&Directions@menuLinks>>>#=#||#||#||#~#=#||#||#||#~#=#||#||#||#~#=#||#||#||#');

-- --------------------------------------------------------

--
-- Table structure for table `title_bar`
--

CREATE TABLE `title_bar` (
  `id` int(3) NOT NULL,
  `page_id` int(2) NOT NULL,
  `pos` varchar(9) NOT NULL,
  `properties` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `title_bar`
--

INSERT INTO `title_bar` (`id`, `page_id`, `pos`, `properties`) VALUES
(4, 2, '0:0,0', '<p><img class="img-responsive" src="http://localhost/SBK_School_Online/dist/ust/Android_Andy-wallpaper-10849979.jpg" style="width: 1118px;">									This is the header container, it allows you to set a heading for your page\r\n Click on the edit link to edit the contents								</p>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`add_id`);

--
-- Indexes for table `components_config`
--
ALTER TABLE `components_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logger`
--
ALTER TABLE `logger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navbar`
--
ALTER TABLE `navbar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice_board`
--
ALTER TABLE `notice_board`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `pics_pic`
--
ALTER TABLE `pics_pic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tiles`
--
ALTER TABLE `tiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `title_bar`
--
ALTER TABLE `title_bar`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `add_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `components_config`
--
ALTER TABLE `components_config`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `footer`
--
ALTER TABLE `footer`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `logger`
--
ALTER TABLE `logger`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `navbar`
--
ALTER TABLE `navbar`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `notice_board`
--
ALTER TABLE `notice_board`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `page_id` int(2) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pics_pic`
--
ALTER TABLE `pics_pic`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tiles`
--
ALTER TABLE `tiles`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `title_bar`
--
ALTER TABLE `title_bar`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
