-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 31, 2020 at 05:58 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `v9`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

DROP TABLE IF EXISTS `about`;
CREATE TABLE IF NOT EXISTS `about` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(50) NOT NULL,
  `header` varchar(1000) DEFAULT NULL,
  `sub_header` varchar(1500) DEFAULT NULL,
  `text_content` varchar(40000) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `dt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `category`, `header`, `sub_header`, `text_content`, `img`, `dt`) VALUES
(1, 'why-v9', 'from frontend', 'At V9 immigration you are guaranteed quality, advanced technology, a wide range of immigration case management tools, not to mention our top talented professional, ensuring that your immigration case is well handled with the utmost care.At V9 immigration you are guaranteed quality, advanced technology, a wide range of immigration case management tools, not to mention our top talented professional, ensuring that your immigration case is well handled with the utmost care.', '[{\"list\":\"AAAA\"},{\"list\":\"BBBBB\"},{\"list\":\"CCCCC\"},{\"list\":\"DDDDDDDD\"},{\"list\":\"EEEEEE\"},{\"list\":\"FFFFFF\"},{\"list\":\"GGGGGG\"},{\"list\":\"HHHHH\"},{\"list\":\"UUUUUU\"},{\"list\":\"VVVVVV\"},{\"list\":\"WWWWW\"}]', '1598786534246family.jpg', '2020-08-30 16:52:14'),
(2, 'our_mission', 'OUR MISSION', NULL, 'To inspire people to immigrate across borders where ideas, skills, expertise, education and knowledge are recognized and celebrate success moments & happiness in their lives. To inspire people to immigrate across borders where ideas, skills, expertise, education and knowledge are recognized and celebrate success moments & happiness in their lives. To inspire people to immigrate across borders where ideas, skills, expertise, education and knowledge are recognized and celebrate success moments & happiness in their lives.', '1598799364550rawpixel-682403-unsplash.jpg', '2020-08-30 20:26:05'),
(3, 'our_vission', 'OUR VISSION FRONTEND', NULL, 'To be the best global immigration consultancy by demonstrating steady growth driven by V9 core values, making immigration easier and faster.To be the best global immigration consultancy by demonstrating steady growth driven by V9 core values, making immigration easier and faster.To be the best global immigration consultancy by demonstrating steady growth driven by V9 core values, making immigration easier and faster.To be the best global immigration consultancy by demonstrating steady growth driven by V9 core values, making immigration easier and faster.', '1598801451357bg3.jpg', '2020-08-30 21:00:51'),
(4, 'our_vission', 'Latest vission', NULL, 'A commitment to doing good for our clients, colleagues and our company. Always reliable to our clients, we remain loyal and steadfast no matter what. Protect the client’s privacy. A commitment to doing good for our clients, colleagues and our company. Always reliable to our clients, we remain loyal and steadfast no matter what. Protect the client’s privacy.A commitment to doing good for our clients, colleagues and our company. Always reliable to our clients, we remain loyal and steadfast no matter what. Protect the client’s privacy.', '1598803658466contact.jpg', '2020-08-30 21:37:38'),
(5, 'our_vission', 'Latest vission', NULL, 'Latest vissionLatest vissionLatest vissionLatest vissionLatest vissionLatest vissionLatest vissionLatest vissionLatest vissionLatest vissionLatest vissionLatest vissionLatest vissionLatest vissionLatest vissionLatest vissionLatest vissionLatest vissionLatest vission', '1598805206502Canada-e1575328774497.jpg', '2020-08-30 22:03:26'),
(6, 'our_values', 'undefined', 'undefined', '{}', NULL, '2020-08-30 22:47:12'),
(7, 'our_values', 'undefined', 'undefined', '{}', NULL, '2020-08-30 22:53:19'),
(8, 'our_values', 'undefined', 'undefined', '{}', NULL, '2020-08-30 22:54:11'),
(9, 'our_values', 'undefined', 'undefined', '{}', NULL, '2020-08-30 22:56:56'),
(10, 'our_values', 'undefined', 'undefined', '{}', NULL, '2020-08-30 23:00:56'),
(11, 'our_values', 'sub header', 'A commitment to doing good for our clients, colleagues and our company. Always reliable to our clients, we remain loyal and steadfast no matter what. Protect the client’s privacy.', '{\"commitment\":{\"title1\":\"COMMITMENT\",\"description\":\"A commitment to doing good for our clients, colleagues and our company. Always reliable to our clients, we remain loyal and steadfast no matter what. Protect the client’s privacy.\"},\"innovation\":{\"title1\":\"INNOVATION\",\"description\":\"A commitment to doing good for our clients, colleagues and our company. Always reliable to our clients, we remain loyal and steadfast no matter what. Protect the client’s privacy.\"},\"integrity\":{\"title1\":\"INTEGRITY\",\"description\":\"A commitment to doing good for our clients, colleagues and our company. Always reliable to our clients, we remain loyal and steadfast no matter what. Protect the client’s privacy.\"},\"ownership\":{\"title1\":\"HHHHHH\",\"description\":\"A commitment to doing good for our clients, colleagues and our company. Always reliable to our clients, we remain loyal and steadfast no matter what. Protect the client’s privacy.\"},\"passion\":{\"title1\":\"PASSION\",\"description\":\"A commitment to doing good for our clients, colleagues and our company. Always reliable to our clients, we remain loyal and steadfast no matter what. Protect the client’s privacy.\"},\"perserverance\":{\"title1\":\"PERSERVERANCE\",\"description\":\"A commitment to doing good for our clients, colleagues and our company. Always reliable to our clients, we remain loyal and steadfast no matter what. Protect the client’s privacy.\"},\"teamwork\":{\"title1\":\"TEAMWORK\",\"description\":\"A commitment to doing good for our clients, colleagues and our company. Always reliable to our clients, we remain loyal and steadfast no matter what. Protect the client’s privacy.\"},\"transparency\":{\"title1\":\"TRANSPARENCY\",\"description\":\"A commitment to doing good for our clients, colleagues and our company. Always reliable to our clients, we remain loyal and steadfast no matter what. Protect the client’s privacy.\"}}', NULL, '2020-08-30 23:05:00'),
(12, 'about_ceo', 'We don\'t need to say more about ourselves, as you will have lot more to say when you get acquainted with the V9 team.', NULL, '{\"name\":\"Govardhan Sai Venkat, Venna\",\"sub_title\":\"CEO & FOUNDER- V9 IMMIGRATION INC.\",\"text_content\":\"Govardhan Sai Venkat, Director of V9 Immigration is Regulated Canadian Immigration Consultant (R519344) offers right advice to Immigrate, Study, Work, Visit to Canada and having great success due to his ethics, professional knowledge and friendly nature. He handles every case individually and directs his professionally qualified team members. Hailed from a family of legal professionals from India, Govardhan knows the challenges new immigrants face in a new community, new country like Canada to study, work, live or visit.V9 specialized in immigration to Canada for independent applicants and businesses. V9 is 100% committed to giving clients our full support at every step of the immigration process. We recognize that every individual has a specific need and choice and that is why we treat every individual with the utmost care and respect.\"}', '1598892571924dilip.jpg', '2020-08-31 22:19:32');

-- --------------------------------------------------------

--
-- Table structure for table `allocate_project`
--

DROP TABLE IF EXISTS `allocate_project`;
CREATE TABLE IF NOT EXISTS `allocate_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proj_id` varchar(20) NOT NULL,
  `emp_id` int(8) NOT NULL,
  `start_dt` date NOT NULL,
  `end_dt` date DEFAULT NULL,
  `allocation_pc` varchar(4) NOT NULL,
  `comments` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_index` (`proj_id`,`emp_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `allocate_project`
--

INSERT INTO `allocate_project` (`id`, `proj_id`, `emp_id`, `start_dt`, `end_dt`, `allocation_pc`, `comments`) VALUES
(4, '1598124052227', 1, '2020-08-23', '2020-08-12', '100%', 'resigned the compony'),
(5, '1598124052227', 2, '2020-08-23', NULL, '100%', ''),
(6, '1598124052227', 3, '2020-08-23', NULL, '50%', '');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
CREATE TABLE IF NOT EXISTS `city` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `state_id` int(4) DEFAULT NULL,
  `country_id` int(3) DEFAULT NULL,
  `city_name` varchar(255) NOT NULL,
  `pin_code` varchar(15) NOT NULL,
  `post_office` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `city_name` (`city_name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
CREATE TABLE IF NOT EXISTS `country` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_name` (`country_name`)
) ENGINE=MyISAM AUTO_INCREMENT=217 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `country_name`) VALUES
(1, 'Afghanistan'),
(2, 'Albania'),
(3, 'Algeria'),
(4, 'Andorra'),
(5, 'Angola'),
(6, 'Antigua and Barbuda'),
(7, 'Argentina'),
(8, 'Armenia'),
(9, 'Australia'),
(10, 'Austria'),
(11, 'Austrian Empire'),
(12, 'Azerbaijan'),
(13, 'Baden'),
(14, 'Bahamas, The'),
(15, 'Bahrain'),
(16, 'Bangladesh'),
(17, 'Barbados'),
(18, 'Bavaria'),
(19, 'Belarus'),
(20, 'Belgium'),
(21, 'Belize'),
(22, 'Benin (Dahomey)'),
(23, 'Bolivia'),
(24, 'Bosnia and Herzegovina'),
(25, 'Botswana'),
(26, 'Brazil'),
(27, 'Brunei'),
(28, 'Brunswick and Lüneburg'),
(29, 'Bulgaria'),
(30, 'Burkina Faso (Upper Volta)'),
(31, 'Burma'),
(32, 'Burundi'),
(33, 'Cabo Verde'),
(34, 'Cambodia'),
(35, 'Cameroon'),
(36, 'Canada'),
(37, 'Cayman Islands, The'),
(38, 'Central African Republic'),
(39, 'Central American Federation'),
(40, 'Chad'),
(41, 'Chile'),
(42, 'China'),
(43, 'Colombia'),
(44, 'Comoros'),
(45, 'Congo Free State, The'),
(46, 'Costa Rica'),
(47, 'Cote d’Ivoire (Ivory Coast)'),
(48, 'Croatia'),
(49, 'Cuba'),
(50, 'Cyprus'),
(51, 'Czechia'),
(52, 'Czechoslovakia'),
(53, 'Denmark'),
(54, 'Djibouti'),
(55, 'Dominica'),
(56, 'East Germany (German Democratic Republic)'),
(57, 'Ecuador'),
(58, 'Egypt'),
(59, 'El Salvador'),
(60, 'Equatorial Guinea'),
(61, 'Eritrea'),
(62, 'Estonia'),
(63, 'Eswatini'),
(64, 'Ethiopia'),
(65, 'Fiji'),
(66, 'Finland'),
(67, 'France'),
(68, 'Gabon'),
(69, 'Gambia, The'),
(70, 'Georgia'),
(71, 'Germany'),
(72, 'Ghana'),
(73, 'Grand Duchy of Tuscany, The'),
(74, 'Greece'),
(75, 'Grenada'),
(76, 'Guatemala'),
(77, 'Guinea'),
(78, 'Guinea-Bissau'),
(79, 'Guyana'),
(80, 'Haiti'),
(81, 'Hanover'),
(82, 'Hanseatic Republics'),
(83, 'Hawaii'),
(84, 'Hesse'),
(85, 'Holy See'),
(86, 'Honduras'),
(87, 'Hungary'),
(88, 'Iceland'),
(89, 'India'),
(90, 'Indonesia'),
(91, 'Iran'),
(92, 'Iraq'),
(93, 'Ireland'),
(94, 'Israel'),
(95, 'Italy'),
(96, 'Jamaica'),
(97, 'Japan'),
(98, 'Jordan'),
(99, 'Kazakhstan'),
(100, 'Kenya'),
(101, 'Kingdom of Serbia/Yugoslavia'),
(102, 'Kiribati'),
(103, 'Korea'),
(104, 'Kosovo'),
(105, 'Kuwait'),
(106, 'Kyrgyzstan'),
(107, 'Laos'),
(108, 'Latvia'),
(109, 'Lebanon'),
(110, 'Lesotho'),
(111, 'Lew Chew (Loochoo)'),
(112, 'Liberia'),
(113, 'Libya'),
(114, 'Liechtenstein'),
(115, 'Lithuania'),
(116, 'Luxembourg'),
(117, 'Madagascar'),
(118, 'Malawi'),
(119, 'Malaysia'),
(120, 'Maldives'),
(121, 'Mali'),
(122, 'Malta'),
(123, 'Marshall Islands'),
(124, 'Mauritania'),
(125, 'Mauritius'),
(126, 'Mecklenburg-Schwerin'),
(127, 'Mecklenburg-Strelitz'),
(128, 'Mexico'),
(129, 'Micronesia'),
(130, 'Moldova'),
(131, 'Monaco'),
(132, 'Mongolia'),
(133, 'Montenegro'),
(134, 'Morocco'),
(135, 'Mozambique'),
(136, 'Namibia'),
(137, 'Nassau'),
(138, 'Nauru'),
(139, 'Nepal'),
(140, 'Netherlands, The'),
(141, 'New Zealand'),
(142, 'Nicaragua'),
(143, 'Niger'),
(144, 'Nigeria'),
(145, 'North German Confederation'),
(146, 'North German Union'),
(147, 'North Macedonia'),
(148, 'Norway'),
(149, 'Oman'),
(150, 'Pakistan'),
(151, 'Palau'),
(152, 'Panama'),
(153, 'Papua New Guinea'),
(154, 'Paraguay'),
(155, 'Peru'),
(156, 'Philippines'),
(157, 'Poland'),
(158, 'Portugal'),
(159, 'Qatar'),
(160, 'Republic of Korea (South Korea)'),
(161, 'Republic of the Congo'),
(162, 'Romania'),
(163, 'Russia'),
(164, 'Rwanda'),
(165, 'Saint Kitts and Nevis'),
(166, 'Saint Lucia'),
(167, 'Saint Vincent and the Grenadines'),
(168, 'Samoa'),
(169, 'San Marino'),
(170, 'Sao Tome and Principe'),
(171, 'Saudi Arabia'),
(172, 'Senegal'),
(173, 'Serbia'),
(174, 'Seychelles'),
(175, 'Sierra Leone'),
(176, 'Singapore'),
(177, 'Slovakia'),
(178, 'Slovenia'),
(179, 'Solomon Islands, The'),
(180, 'Somalia'),
(181, 'South Africa'),
(182, 'South Sudan'),
(183, 'Spain'),
(184, 'Sri Lanka'),
(185, 'Sudan'),
(186, 'Suriname'),
(187, 'Sweden'),
(188, 'Switzerland'),
(189, 'Syria'),
(190, 'Tajikistan'),
(191, 'Tanzania'),
(192, 'Texas'),
(193, 'Thailand'),
(194, 'Timor-Leste'),
(195, 'Togo'),
(196, 'Tonga'),
(197, 'Trinidad and Tobago'),
(198, 'Tunisia'),
(199, 'Turkey'),
(200, 'Turkmenistan'),
(201, 'Tuvalu'),
(202, 'Two Sicilies'),
(203, 'Uganda'),
(204, 'Ukraine'),
(205, 'Union of Soviet Socialist Republics'),
(206, 'United Arab Emirates, The'),
(207, 'United Kingdom, The'),
(208, 'Uruguay'),
(209, 'Uzbekistan'),
(210, 'Vanuatu'),
(211, 'Venezuela'),
(212, 'Vietnam'),
(213, 'Württemberg'),
(214, 'Yemen'),
(215, 'Zambia'),
(216, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

DROP TABLE IF EXISTS `email`;
CREATE TABLE IF NOT EXISTS `email` (
  `user_id` int(8) DEFAULT NULL,
  `email_id` varchar(100) NOT NULL,
  UNIQUE KEY `email_id` (`email_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email`
--

INSERT INTO `email` (`user_id`, `email_id`) VALUES
(1, 'sonowaldilip@gmail.com'),
(2, 'ashwinibj7@gmail.com'),
(3, 'ashwinibj@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

DROP TABLE IF EXISTS `home`;
CREATE TABLE IF NOT EXISTS `home` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(100) NOT NULL,
  `sub_header` varchar(255) NOT NULL,
  `header` varchar(500) NOT NULL,
  `text_content` text,
  `img` varchar(255) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `count` varchar(9) DEFAULT NULL,
  `icon_category` varchar(100) DEFAULT NULL,
  `small_header` varchar(100) DEFAULT NULL,
  `small_description` varchar(100) DEFAULT NULL,
  `last_update` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home`
--

INSERT INTO `home` (`id`, `category`, `sub_header`, `header`, `text_content`, `img`, `icon`, `count`, `icon_category`, `small_header`, `small_description`, `last_update`) VALUES
(1, 'top_slider', 'this is a subheader', 'undefined', 'this is a dummy text content', '1598285799699.png', NULL, NULL, NULL, NULL, NULL, '2020-08-24 21:46:39'),
(2, 'top_slider', 'this is a subheader', 'undefined', 'this is a dummy text content', '1598286045807.png', NULL, NULL, NULL, NULL, NULL, '2020-08-24 21:50:45'),
(3, 'top_slider', 'this is a subheader', 'undefined', 'this is a dummy text content', '1598286161087.png', NULL, NULL, NULL, NULL, NULL, '2020-08-24 21:52:41'),
(4, 'top_slider', 'this is a subheader', 'this is a header', 'this is a dummy text content', '1598286272616.png', NULL, NULL, NULL, NULL, NULL, '2020-08-24 21:54:32'),
(5, 'top_slider', 'this is a subheader', 'this is a header', 'this is a dummy text content', '1598286388053.png', NULL, NULL, NULL, NULL, NULL, '2020-08-24 21:56:28'),
(6, 'our_goals', 'subheader', 'header', 'textcontent', '1598294856087v9-logo.png,1598294856088v9-logo-white.png', NULL, NULL, NULL, NULL, NULL, '2020-08-25 00:17:36'),
(7, 'our_goals', 'subheader', 'header', 'textcontent', '1598295024763v9-logo.png,1598295024764v9-logo-white.png', NULL, NULL, NULL, NULL, NULL, '2020-08-25 00:20:24'),
(8, 'our_goals', 'subheader', 'header', 'textcontent', 'v9-logo.png,v9-logo-white.png', NULL, NULL, NULL, NULL, NULL, '2020-08-25 00:22:36'),
(9, 'our_goals', 'subheader', 'header', 'textcontent', '1598295308755v9-logo.png,1598295308812v9-logo-white.png', NULL, NULL, NULL, NULL, NULL, '2020-08-25 00:25:08'),
(10, 'top_slider', 'this is a subheader', 'this is a header', 'this is a dummy text content', '1598375350057.png', NULL, NULL, NULL, NULL, NULL, '2020-08-25 22:39:10'),
(11, 'top_slider', 'this is a subheader  fdgfdgfdv222222', 'this is a header', 'this is a dummy text content', '1598383776572.png', NULL, NULL, NULL, NULL, NULL, '2020-08-26 00:59:36'),
(12, 'top_slider', 'from frontend', 'from frontend', '', '1598385371977.jpeg', NULL, NULL, NULL, NULL, NULL, '2020-08-26 01:26:12'),
(13, 'top_slider', 'from frontend', 'from frontend', '', '1598385541538.jpeg', NULL, NULL, NULL, NULL, NULL, '2020-08-26 01:29:01'),
(14, 'top_slider', 'Top slider from frontend', 'Top slider from frontend', '', '1598458847609.jpeg', NULL, NULL, NULL, NULL, NULL, '2020-08-26 21:50:47'),
(15, 'our_goals', 'ewtewtew trewtrewt', '6666', 'ter rewrw wrewr ewrewrw ewrewrw ewrew werew wr w wer  werw  wwr ', '', NULL, NULL, NULL, NULL, NULL, '2020-08-26 22:39:43'),
(16, 'our_goals', 'ewtewtew trewtrewt', 'Our Goals latest', 'tear dsgfset dsfdsv dsds dsvds dsds dsv sdvsd sds svsd sf ', '1598463413155IMG-20191019-WA0000.jpg,1598463413236Capture1.JPG', NULL, NULL, NULL, NULL, NULL, '2020-08-26 23:06:53'),
(17, 'our_goals', 'ewtewtew trewtrewt', 'Our Goals latest', 'tear dsgfset dsfdsv dsds dsvds dsds dsv sdvsd sds svsd sf ', '1598463607002Capture.JPG,1598463607049IMG-20191019-WA0000.jpg', NULL, NULL, NULL, NULL, NULL, '2020-08-26 23:10:07'),
(18, 'home_about', 'About v9 Immegration', 'This is a header', 'Some text content here', NULL, NULL, NULL, NULL, NULL, NULL, '2020-08-27 18:22:38'),
(19, 'home_about', 'About v9 immigration from frontend', 'This is a header section with somecontent', '\nV9 Immigration Services, the leading Immigration service provider in Canada and India. With immense experience of client servicing and facilitating individuals to achieve their dreams, V9 Immigration Services has carved his own elite niche for providing the best immigration services.V9 Immigration services is the leader in the market for two things; first its honesty and transparency while dealing with the clients and second its accuracy and efficiency while working for the clients.', NULL, NULL, NULL, NULL, NULL, NULL, '2020-08-27 19:44:08'),
(20, 'why_us', 'from frontend', 'dsfdsfsdfssdfsdfsf terwrv werwerewr ewrwerw wrwerew ewrwer ', '{\"immigration\":{\"title1\":\"Title 12\",\"count\":\"32+\",\"title2\":\"Title 22\",\"icon\":\"1598557532538Capture.JPG\"},\"customer\":{\"title1\":\"Title 13\",\"count\":\"43+\",\"title2\":\"Title 23\",\"icon\":\"1598557532554Capture1.JPG\"},\"student\":{\"title1\":\"Title 11\",\"count\":\"12+\",\"title2\":\"Title 21\",\"icon\":\"1598557532571IMG-20191019-WA0000.jpg\"},\"country\":{\"title1\":\"Title 14\",\"count\":\"56+\",\"title2\":\"Title 24\",\"icon\":\"1598557532575passportphoto.JPG\"}}', NULL, NULL, NULL, NULL, NULL, NULL, '2020-08-28 01:15:32'),
(21, 'why_us', 'WHY CHOOSE US', 'Since our founding, our primary goal has been to provide immigration in all over country and universities. Our impact is speak louder than our word', '{\"immigration\":{\"title1\":\"Immigration\",\"count\":\"234+\",\"title2\":\"99.9% client satisfaction\",\"icon\":\"1598625479223home6_icon3.png\"},\"customer\":{\"title1\":\"SUCCSESSFUL CUSTOMERS\",\"count\":\"353+\",\"title2\":\"Business Cases\",\"icon\":\"1598625479262home6_icon2.png\"},\"student\":{\"title1\":\"Student\",\"count\":\"480+\",\"title2\":\"National top 50 consulting firms\",\"icon\":\"1598625479298home6_icon1.png\"},\"country\":{\"title1\":\"Country\",\"count\":\"480+\",\"title2\":\"Operated in 15+ Countries\",\"icon\":\"1598625479301home6_icon4.png\"}}', NULL, NULL, NULL, NULL, NULL, NULL, '2020-08-28 20:07:59'),
(22, 'immigration_service', 'Immigration Service', 'Our experts are able to find new growth opportunities in your business. sodales erat et libero ultricies auctor et rhoncus sapien.', '{\"family\":{\"title\":\"Family\",\"para\":\"As mentioned by the minister on 11-Jan-2019 Family reunification is always an immigration priority for the Government of Canada as it supports economic prosperity and strengthens the communities\",\"img\":\"1598641028265family.jpg\"},\"work\":{\"title\":\"Work Visa\",\"para\":\"As mentioned by the minister on 11-Jan-2019 Family reunification is always an immigration priority for the Government of Canada as it supports economic prosperity and strengthens the communities\",\"img\":\"1598641028343home2.jpg\"},\"study\":{\"title\":\"Study\",\"para\":\"As mentioned by the minister on 11-Jan-2019 Family reunification is always an immigration priority for the Government of Canada as it supports economic prosperity and strengthens the communities\",\"img\":\"1598641028387post-two-457x573.jpg\"},\"visit\":{\"title\":\"Visit Visa\",\"para\":\"As mentioned by the minister on 11-Jan-2019 Family reunification is always an immigration priority for the Government of Canada as it supports economic prosperity and strengthens the communities\",\"img\":\"1598641028388Canada-permanent-resident.jpg\"},\"citizenship\":{\"title\":\"Citizenship\",\"para\":\"As mentioned by the minister on 11-Jan-2019 Family reunification is always an immigration priority for the Government of Canada as it supports economic prosperity and strengthens the communities\",\"img\":\"1598641028391travel-visa.jpg\"},\"other\":{\"title\":\"Other\",\"para\":\"As mentioned by the minister on 11-Jan-2019 Family reunification is always an immigration priority for the Government of Canada as it supports economic prosperity and strengthens the communities\",\"img\":\"1598641028392working-visa.jpg\"}}', NULL, NULL, NULL, NULL, NULL, NULL, '2020-08-29 00:27:08'),
(23, 'top_slider', 'V9 immigration top slider1', 'V9 immigration top slider1', 'V9 immigration top slider1 V9 immigration top slider1', '1598693543545.jpeg', NULL, NULL, NULL, NULL, NULL, '2020-08-29 15:02:24'),
(24, 'top_slider', 'ewtewtew trewtrewt', 'this is 2nd slider', 'sdfsdfsf sfdsfdsfdsf', '1598694090465.jpeg', NULL, NULL, NULL, NULL, NULL, '2020-08-29 15:11:30'),
(25, 'our_goals', 'dilip123', 'Disco party!', 'tretre trete rtret etret rtretret etret retretre etret', '1598694722649spouse.jpg,1598694722668parents.jpg', NULL, NULL, NULL, NULL, NULL, '2020-08-29 15:22:02'),
(26, 'why_us', 'Title12', 'Title22 rer eerer erer  erewrerwr werewrew ewewrewr ewrew ', '{\"immigration\":{\"title1\":\"tttttt\",\"count\":\"321\",\"title2\":\"cdssddsf\",\"icon\":\"1598694986511massion.png\"},\"customer\":{\"title1\":\"V9 immigration top slider1\",\"count\":\"999\",\"title2\":\"V9 immigration toigration top slider1\",\"icon\":\"1598694986526money-2724238_1280-1024x570.jpg\"},\"student\":{\"title1\":\"Title 13\",\"count\":\"123\",\"title2\":\"Title 23\",\"icon\":\"1598694986528British-Columbia-PNP-BCPNP.jpg\"},\"country\":{\"title1\":\"trretretre\",\"count\":\"4545\",\"title2\":\"dffddf\",\"icon\":\"1598694986543home6_icon3.png\"}}', NULL, NULL, NULL, NULL, NULL, NULL, '2020-08-29 15:26:26'),
(27, 'our_goals', 'Drive More Customers Through Digital', 'Our Goals', 'The Canadian federal government has announced that it will be admitting more than one million new immigrants over the next three years With more than 70 immigration programs, choosing the one that will give you the best chance of success can be confusing. In this post, we break down the easiest ways to immigrate to Canada, saving you time and allowing you to get started on the application process today!', '1598708810835family.jpg,1598708810935bg1.jpg', NULL, NULL, NULL, NULL, NULL, '2020-08-29 19:16:50'),
(28, 'how_itworks', 'sub header', 'ewtewtew trewtrewt', '{\"discussion\":{\"title\":\"werwe\",\"count\":\"5\",\"para\":\"from frontendfrom frontendfrom frontendfrom frontendfrom frontendfrom frontendfrom frontendfrom frontendfrom frontend\"},\"documentation\":{\"title\":\"from frontend\",\"count\":\"6\",\"para\":\"from frontendfrom frontendfrom frontendfrom frontendfrom frontendfrom frontendfrom frontendfrom frontendfrom frontend\"},\"submission\":{\"title\":\"herr \",\"count\":\"7\",\"para\":\"from frontendfrom frontendfrom frontendfrom frontendfrom frontendfrom frontendfrom frontendfrom frontendfrom frontend\"}}', NULL, NULL, NULL, NULL, NULL, NULL, '2020-08-29 20:14:48'),
(29, 'feed_back', 'undefined', 'Immigration is our passion and committed to do our best. We follow code of ethics all times and never compromise. We advice and serve our clients with honesty and respect at all times.', NULL, '1598725812396post-two-457x573.jpg', NULL, NULL, NULL, NULL, NULL, '2020-08-30 00:00:12'),
(30, 'feed_back', 'Ashwini Nayak', 'A commitment to doing good for our clients, colleagues and our company. Always reliable to our clients, we remain loyal and steadfast no matter what. Protect the client’s privacy. A commitment to doing good for our clients, colleagues and our company. Always reliable to our clients, we remain loyal and steadfast no matter what. Protect the client’s privacy. A commitment to doing good for our clients, colleagues and our company. Always reliable to our clients', NULL, '1598727027950student-visa.jpg', NULL, NULL, NULL, NULL, NULL, '2020-08-30 00:20:28'),
(31, 'feed_back', 'Appi', 'A commitment to doing good for our clients, colleagues and our company. Always reliable to our clients, we remain loyal and steadfast no matter what. Protect the client’s privacy. A commitment to doing good for our clients, colleagues and our company. Always reliable to our clients, we remain loyal and steadfast no matter what. Protect the client’s privacy. A commitment to doing good for our clients, colleagues and our company. Always reliable to our clients', NULL, '1598727127938v9logo.JPG', NULL, NULL, NULL, NULL, NULL, '2020-08-30 00:22:07'),
(32, 'teams', 'blank', 'blank', NULL, '1598773743969rawpixel-682403-unsplash.jpg', NULL, NULL, NULL, NULL, NULL, '2020-08-30 13:19:04'),
(33, 'teams', 'blank', 'blank', NULL, '1598774444371bg3.jpg', NULL, NULL, NULL, NULL, NULL, '2020-08-30 13:30:44'),
(34, 'teams', 'blank', 'blank', NULL, '1598774455095student-visa.jpg', NULL, NULL, NULL, NULL, NULL, '2020-08-30 13:30:55'),
(35, 'immigration_service', 'Immigration Service', 'Our experts are able to find new growth opportunities in your business. sodales erat et libero ultricies auctor et rhoncus sapien.', '{\"family\":{\"title\":\"Family\",\"para\":\"As mentioned by the minister on 11-Jan-2019 Family reunification is always an immigration priority for the Government of Canada as it supports economic prosperity and strengthens the communities\",\"img\":\"1598775060479family.jpg\"},\"work\":{\"title\":\"Work Visa\",\"para\":\"As mentioned by the minister on 11-Jan-2019 Family reunification is always an immigration priority for the Government of Canada as it supports economic prosperity and strengthens the communities\",\"img\":\"1598775060534Work-Visa-Policy-Change.jpg\"},\"study\":{\"title\":\"Study\",\"para\":\"As mentioned by the minister on 11-Jan-2019 Family reunification is always an immigration priority for the Government of Canada as it supports economic prosperity and strengthens the communities\",\"img\":\"1598775060535study-visa.jpg\"},\"visit\":{\"title\":\"Visit\",\"para\":\"As mentioned by the minister on 11-Jan-2019 Family reunification is always an immigration priority for the Government of Canada as it supports economic prosperity and strengthens the communities\",\"img\":\"1598775060549working-visa.jpg\"},\"citizenship\":{\"title\":\"Citizenship\",\"para\":\"As mentioned by the minister on 11-Jan-2019 Family reunification is always an immigration priority for the Government of Canada as it supports economic prosperity and strengthens the communities\",\"img\":\"1598775060551rawpixel-682403-unsplash.jpg\"},\"other\":{\"title\":\"Other\",\"para\":\"As mentioned by the minister on 11-Jan-2019 Family reunification is always an immigration priority for the Government of Canada as it supports economic prosperity and strengthens the communities\",\"img\":\"1598775060557Canada-permanent-resident.jpg\"}}', NULL, NULL, NULL, NULL, NULL, NULL, '2020-08-30 13:41:00');

-- --------------------------------------------------------

--
-- Table structure for table `mobile_number`
--

DROP TABLE IF EXISTS `mobile_number`;
CREATE TABLE IF NOT EXISTS `mobile_number` (
  `user_id` int(8) DEFAULT NULL,
  `mob_number` varchar(15) NOT NULL,
  UNIQUE KEY `mob_number` (`mob_number`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mobile_number`
--

INSERT INTO `mobile_number` (`user_id`, `mob_number`) VALUES
(1, '9066455462'),
(2, '9880649203'),
(3, '9880649207');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
CREATE TABLE IF NOT EXISTS `project` (
  `proj_id` varchar(20) NOT NULL,
  `proj_name` varchar(255) NOT NULL,
  `budjet` decimal(15,2) DEFAULT NULL,
  `customer_name` varchar(255) NOT NULL,
  `organization_name` varchar(255) NOT NULL,
  `organization_address` varchar(500) NOT NULL,
  `customer_cuntry` int(3) DEFAULT NULL,
  `customer_state` int(4) DEFAULT NULL,
  `customer_city` varchar(255) DEFAULT NULL,
  `product_type` varchar(255) DEFAULT NULL,
  `Proj_subject` varchar(255) DEFAULT NULL,
  `proj_desc` text,
  `author` varchar(150) DEFAULT NULL,
  `due_dt` date DEFAULT NULL,
  `start_dt` date DEFAULT NULL,
  `cost_of_proj` decimal(15,2) DEFAULT NULL,
  `priority` varchar(50) DEFAULT NULL,
  `task_type` varchar(255) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Open',
  PRIMARY KEY (`proj_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`proj_id`, `proj_name`, `budjet`, `customer_name`, `organization_name`, `organization_address`, `customer_cuntry`, `customer_state`, `customer_city`, `product_type`, `Proj_subject`, `proj_desc`, `author`, `due_dt`, `start_dt`, `cost_of_proj`, `priority`, `task_type`, `status`) VALUES
('1598124052227', 'BBB', '34556.50', 'Testing project', 'Hexaware', 'Bangalore', 89, 10, 'Bangalore', 'Software', 'Software', 'deasd sd', 'Dilip', '2020-12-25', '2020-07-12', '4545434.50', 'Medium', 'soft', 'Open'),
('1598120374621', 'AAAAAA', '34556.50', 'Testing project', 'Hexaware', 'Bangalore', 89, 11, 'Bangalore', 'Software', 'Software', 'deasd sd', 'Dilip', '2020-12-25', '2020-07-12', '4545434.50', 'Medium', 'soft', 'Open'),
('1598124117425', 'CCCCCCCC', '34556.50', 'Testing project', 'Hexaware', 'Bangalore', 89, 11, 'Bangalore', 'Software', 'Software', 'deasd sd', 'Dilip', '2020-12-25', '2020-07-12', '4545434.50', 'Medium', 'soft', 'Open');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
CREATE TABLE IF NOT EXISTS `state` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `country_id` int(3) DEFAULT NULL,
  `state_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `state_name` (`state_name`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `country_id`, `state_name`) VALUES
(1, 89, 'Andhra Pradesh'),
(2, 89, 'Arunachal Pradesh'),
(3, 89, 'Assam'),
(4, 89, 'Bihar'),
(5, 89, 'Chhattisgarh'),
(6, 89, 'Goa'),
(7, 89, 'Gujarat'),
(8, 89, 'Haryana'),
(9, 89, 'Himachal Pradesh'),
(10, 89, 'Jharkhand'),
(11, 89, 'Karnataka'),
(12, 89, 'Kerala'),
(13, 89, 'Madhya Pradesh'),
(14, 89, 'Maharashtra'),
(15, 89, 'Manipur'),
(16, 89, 'Meghalaya'),
(17, 89, 'Mizoram'),
(18, 89, 'Nagaland'),
(19, 89, 'Odisha'),
(20, 89, 'Punjab'),
(21, 89, 'Rajasthan'),
(22, 89, 'Sikkim'),
(23, 89, 'Tamil Nadu'),
(24, 89, 'Telangana'),
(25, 89, 'Tripura'),
(26, 89, 'Uttar Pradesh'),
(27, 89, 'Uttarakhand'),
(28, 89, 'West Bengal'),
(29, 89, 'Andaman and Nicobar Islands'),
(30, 89, 'Chandigarh'),
(31, 89, 'Dadra and Nagar Haveli'),
(32, 89, 'Daman and Diu'),
(33, 89, 'Delhi (National Capital Territory)'),
(34, 89, 'Jammu and Kashmir'),
(35, 89, 'Ladakh'),
(36, 89, 'Lakshadweep'),
(37, 89, 'Puducherry');

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

DROP TABLE IF EXISTS `user_data`;
CREATE TABLE IF NOT EXISTS `user_data` (
  `id` int(8) NOT NULL,
  `user_type` varchar(10) DEFAULT NULL,
  `f_name` varchar(50) NOT NULL,
  `m_name` varchar(50) DEFAULT NULL,
  `l_name` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `country_id` int(3) DEFAULT NULL,
  `state_id` int(4) DEFAULT NULL,
  `city_id` int(4) DEFAULT NULL,
  `pin_code` varchar(15) DEFAULT NULL,
  `post_office` varchar(100) DEFAULT NULL,
  `address` varchar(300) NOT NULL,
  `last_update` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_data`
--

INSERT INTO `user_data` (`id`, `user_type`, `f_name`, `m_name`, `l_name`, `password`, `country_id`, `state_id`, `city_id`, `pin_code`, `post_office`, `address`, `last_update`) VALUES
(3, 'Admin', 'Aapi', '', 'J', 'aapi123', 1, 1, 1, '560016', 'Tin Factory', 'Netravathi Street, 1st Cross', '2020-08-23 16:51:27'),
(2, 'Admin', 'Ashwini', '', 'J', 'ashu123', 1, 1, 1, '560016', 'Tin Factory', 'Netravathi Street, 1st Cross', '2020-08-23 16:50:21'),
(1, 'Admin', 'Dilip', '', 'Sonowal', 'dilip123', 1, 1, 1, '560016', 'Tin Factory', 'Netravathi Street, 1st Cross', '2020-08-23 10:10:02');

-- --------------------------------------------------------

--
-- Table structure for table `user_photo`
--

DROP TABLE IF EXISTS `user_photo`;
CREATE TABLE IF NOT EXISTS `user_photo` (
  `user_id` int(8) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  UNIQUE KEY `image` (`image`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_photo`
--

INSERT INTO `user_photo` (`user_id`, `image`) VALUES
(1, '1598157602653.jpeg'),
(2, '1598181620915.jpeg'),
(3, '1598181687845.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

DROP TABLE IF EXISTS `user_type`;
CREATE TABLE IF NOT EXISTS `user_type` (
  `u_type` varchar(10) NOT NULL,
  PRIMARY KEY (`u_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`u_type`) VALUES
('Admin'),
('Employee'),
('User');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
