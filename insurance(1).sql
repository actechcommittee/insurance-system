-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 02, 2017 at 09:33 EW
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `insurance`
--

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
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` varchar(40) NOT NULL,
  `information` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `category`, `information`) VALUES
(4, 'Life Insurance', 'Dont buy unless you have a spouse and children |\r\n\r\nConsider what term will meet your need by asking the insurance officials |\r\n\r\nThink about what you can afford but dont leave yourself underinsured |\r\n\r\nBe a savvy buyer | \r\n\r\nAlways tell the truth when you apply for a coverage | \r\n\r\nConsult your advisor before you purchase'),
(5, 'Motor Insurance', '<b>The Car''s Age.</b>\n\nOlder cars have higher risks of problems than brand new cars. As a car ages, its value depreciates. With this depreciation in value, the cost to insure your car also decreases to an extent.\n\nYour agent should ask you the age of your car as you buy your coverage. The age of the car helps to determine its proper insurance based on the car''s market value.|\n\n<b>The Car''s Value.</b>\n\nThe dollar value of a car revolves around things like the market value, age and quality. A high-valued older car is generally in good working condition and has had no accidents. These cars can often qualify for the best rates. They don''t have as much risk associated with them.\n\nKeep your car in good working order as it ages. Make sure the car is not at high risk of negligent failures. If you fail to maintain your car, you raise your liability. And, your rate may go up.\n\nRemember, a car''s value isn''t determined solely by maintenance and quality. Low value may hinge on many factors.|\n\n<b> The Car''s Frequency and Type of Use.</b>\n\nWhy and how often you use a car can be a determinant in risk factors that affect your insurance rates. If you use your car frequently, that means the risk of incidents is higher. Your rates may be higher.\n\nAdditionally, if you drive long distances, you might see higher rates on your insurance. Your risk of an incident is higher because you are on the road for a longer time.|\n\n<b>The Car''s History</b>\n\nPerhaps you are buying a pre-owned car. You might not know this car''s full history. If the car has a history of accident or breakdowns, your rates may rise because of the frequency of claims.\n\nA car history report can give you a comprehensive background on the car. It can include things like past service and insurance claims. If you see troubling signs on the report, you can choose not to buy the car. Otherwise, you can buy a policy with a higher level of coverage.\n\n<b>Determining rates</b> is always a balancing act, not a one-size-fits-all approach. Your car''s age, use, history and value all weigh as rate determinants.\n');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `img` varchar(9999) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `company_id`, `name`, `description`, `img`) VALUES
(1, 1, 'motor insurance', 'Our motor policy is designed to cover the legal liabilities of our insured as a result of the use of the motor vehicle and loss or damage to his own vehicle. Under our motor portfolio, the following covers are provided: Third Party Fire & Theft and Comprehensive.', 'record.png'),
(2, 2, 'car insurance', 'Our motor policy is designed to cover the legal liabilities of our insured as a result of the use of the motor vehicle and loss or damage to his own vehicle. Under our motor portfolio, the following covers are provided: Third Party Fire & Theft and Comprehensive.', 'like-2.png'),
(3, 5, 'home owners', 'Our motor policy is designed to cover the legal liabilities of our insured as a result of the use of the motor vehicle and loss or damage to his own vehicle. Under our motor portfolio, the following covers are provided: Third Party Fire & Theft and Comprehensive.', 'house.png'),
(4, 3, 'vehicle insurance', 'Our motor policy is designed to cover the legal liabilities of our insured as a result of the use of the motor vehicle and loss or damage to his own vehicle. Under our motor portfolio, the following covers are provided: Third Party Fire & Theft and Comprehensive.', 'locked-1.png'),
(5, 4, 'train insurance', 'Our motor policy is designed to cover the legal liabilities of our insured as a result of the use of the motor vehicle and loss or damage to his own vehicle. Under our motor portfolio, the following covers are provided: Third Party Fire & Theft and Comprehensive.', 'hourglass-1.png'),
(6, 1, 'light bulb insurance', 'Our motor policy is designed to cover the legal liabilities of our insured as a result of the use of the motor vehicle and loss or damage to his own vehicle. Under our motor portfolio, the following covers are provided: Third Party Fire & Theft and Comprehensive.', 'idea.png'),
(7, 1, 'phone Insurance', 'Our motor policy is designed to cover the legal liabilities of our insured as a result of the use of the motor vehicle and loss or damage to his own vehicle. Under our motor portfolio, the following covers are provided: Third Party Fire & Theft and Comprehensive.', 'smartphone-7.png'),
(8, 1, ' Travel Insurance', 'Get our travel insurance for \r\nGet our travel insurance for \r\nGet our travel insurance for \r\nGet our travel insurance for \r\nGet our travel insurance for \r\nGet our travel insurance for \r\nGet our travel insurance for ', 'worldwide-1.png'),
(9, 2, 'noise insurance', 'Our motor policy is designed to cover the legal liabilities of our insured as a result of the use of the motor vehicle and loss or damage to his own vehicle. Under our motor portfolio, the following covers are provided: Third Party Fire & Theft and Comprehensive.', 'volume-control-1.png'),
(10, 1, 'home owners ', 'efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba efiewura maba', 'hold.png'),
(11, 3, 'motor insurance', 'Our motor policy is designed to cover the legal liabilities of our insured as a result of the use of the motor vehicle and loss or damage to his own vehicle. Under our motor portfolio, the following covers are provided: Third Party Fire & Theft and Comprehensive.', 'clock.png'),
(12, 5, 'motor insurance', 'Our motor policy is designed to cover the legal liabilities of our insured as a result of the use of the motor vehicle and loss or damage to his own vehicle. Under our motor portfolio, the following covers are provided: Third Party Fire & Theft and Comprehensive.', 'tie.png'),
(13, 4, 'home owners', 'Our motor policy is designed to cover the legal liabilities of our insured as a result of the use of the motor vehicle and loss or damage to his own vehicle. Under our motor portfolio, the following covers are provided: Third Party Fire & Theft and Comprehensive.', 'owl.png');

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

-- --------------------------------------------------------

--
-- Table structure for table `simulator_assets`
--

CREATE TABLE `simulator_assets` (
  `a_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL,
  `img` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `simulator_assets`
--

INSERT INTO `simulator_assets` (`a_id`, `name`, `img`) VALUES
(1, 'House', 'home.jpg'),
(2, 'Car', 'school-bus.jpg'),
(3, 'Super Market', 'bank4.jpg'),
(4, 'land', 'farm.jpg'),
(5, 'school', 'school.png'),
(6, 'television', 'televisions.jpg'),
(7, 'cash', 'cash.jpg'),
(8, 'smart phone', 'phone-call-2.png'),
(9, 'documents', 'briefcase.png'),
(10, 'Laboratory', 'test-tubes.png');

-- --------------------------------------------------------

--
-- Table structure for table `simulator_policies`
--

CREATE TABLE `simulator_policies` (
  `p_id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(11) NOT NULL,
  `p_name` varchar(64) NOT NULL,
  `descriptions` text NOT NULL,
  `pimg` varchar(64) NOT NULL,
  `pprices` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `simulator_policies`
--

INSERT INTO `simulator_policies` (`p_id`, `asset_id`, `p_name`, `descriptions`, `pimg`, `pprices`) VALUES
(1, 2, 'Motor Third Party', 'Covers the insured’s legal liability for injury to or death of third parties and damage to third party property such as vehicles, buildings, kiosks, traffic lights etc. It does not however extend to a passenger''s luggage, bags, wristwatches and other persoal effects.', 'motor_third_party.png', '1000'),
(2, 2, 'Motor Third Party Fire & Theft', 'As the name implies, this policy insures the vehicle itself against:\r\n\r\n    a. Loss or damage caused by fire or theft in addition to the insured''s legal liability to third-parties as indicated in 1 above\r\n    b. Personal accident benefit to the insured and driver\r\n', 'motor_fire_theft.png', '1500'),
(3, 2, 'Motor Comprehensive Cover', 'It gives the widest cover including that given by each of the two mentioned above. It gives indemnity in respect of:\n\na) Damage to or loss of the insured’s own vehicle or motor cycle arising from:-\n\n    a. accidental collision or over-turning\n    b. fire, self-ignition\n    c. external explosion, lightening\n    d. burglary, housebreaking, theft\n    e. malicious damage\n    f. damage whilst in transit by rail, inland water-way, lift or elevator', 'motor_comprehensive.png', '3000'),
(4, 3, 'Industrial Fire & Theft', 'This policy provides your business premises with cover against fire and allied perils including theft for specified goods and office fixtures and fittings .', 'industrial_fire_theft.png', '5000'),
(5, 3, 'Fire Loss of Profit and Consequential Loss', 'This insurance is popularly known as "Loss of Profits" or "Business Interruption" Insurance.\r\n\r\n    Where business premises is destroyed or damaged by fire, the resultant interruption to business may cause a disastrous trading loss, which an ordinary fire policy does not cover.', 'consequential_fire_loss.png', '4000'),
(6, 1, 'Home Theft and Burglary ', 'his policy, provides cover for loss of or damage to property by theft following forcible and violent breaking into or out of your Commercial or Business premises or any attempt there at. ', 'home_theft_burglary.png', '3000'),
(7, 1, 'Comprehensive Homeowners', '\r\n\r\nThe first section covers the insured''s building against Loss or damage caused by perils such as fire, explosion, lightning, storm, hurricane, tornado, flooding, earthquake, volcanic eruption, bursting or overflowing of water tanks, etc.\r\n\r\nThe second section of this policy covers the insured’s liability to the public. That is, death and personal injury to any person not being a member of the insured’s household, servant or employee and accidental damage to property not belonging to or in the charge of or under the control of the insured or a member of his household, servant or employee caused within the limits of the private dwelling house.\r\n', 'home_fire.png', '4500'),
(8, 8, 'Theft Of Phone', 'This policy provides your phone with cover against theft.', 'phone.png', '500'),
(9, 8, 'Damage Of Phone', 'This policy provides cover to the insured against damages to phone arising from falling such falling into water.', 'phone_damage2.jpg', '500'),
(10, 7, 'Cash In Transit', 'The Cash-In-Transit policy indemnifies the insured against accidental loss or damage to the insured''s cash, bank and currency notes, cheques, postal orders, etc while in transit from one specified location to the other. Cash-Hold policy is effective when the insured’s cash is being held up in the business premises.\n', 'cash in transit.jpeg', '2000'),
(11, 7, 'Cash-in-Safe', 'Cash-in-Safe cover provides indemnity against damage or loss to the insured’s cash while they are being kept in safe at the insured’s location.', 'cash in hold.jpeg', '2500'),
(12, 4, 'Land Insurance', 'It may not be the most common of policies, but land insurance is essential for people who are worried about the potential financial risks of being a land owner. We have a panel of insurers which can help those looking for land insurance.\r\nThe main cover provided is public liability cover which will insure the land owner(s) for any third-party injury caused by the land', 'land_libility.jpeg', '5000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `simulator_assets`
--
ALTER TABLE `simulator_assets`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `simulator_policies`
--
ALTER TABLE `simulator_policies`
  ADD PRIMARY KEY (`p_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `c_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `products_category`
--
ALTER TABLE `products_category`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `simulator_assets`
--
ALTER TABLE `simulator_assets`
  MODIFY `a_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `simulator_policies`
--
ALTER TABLE `simulator_policies`
  MODIFY `p_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
