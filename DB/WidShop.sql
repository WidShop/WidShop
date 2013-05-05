-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 16, 2013 at 01:05 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `plug`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `description` text,
  `url_key` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `categories`
--


-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `currencies` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `country` varchar(100) DEFAULT NULL,
  `currency_code` varchar(3) DEFAULT NULL,
  `currency_name` varchar(30) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `currency_symbol` varchar(7) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=237 ;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `country`, `currency_code`, `currency_name`, `status`, `currency_symbol`) VALUES
(1, 'Afghanistan', 'AFN', 'Afghan afghani', 0, '?'),
(2, 'Albania', 'ALL', 'Albanian lek', 0, 'Lek'),
(3, 'Algeria', 'DZD', 'Algerian dinar', 0, '?.?'),
(4, 'American Samoa', 'USD', 'United States dollar', 0, '$'),
(5, 'Andorra', 'EUR', 'Euro', 0, '�'),
(6, 'Angola', 'AOA', 'Angolan kwanza', 0, 'Kz'),
(7, 'Anguilla', 'XCD', 'East Caribbean dollar', 0, '$'),
(8, 'Antarctica', 'XCD', 'East Caribbean dollar', 0, '$'),
(9, 'Antigua and Barbuda', 'XCD', 'East Caribbean dollar', 0, '$'),
(10, 'Argentina', 'ARS', 'Argentine peso', 0, '$'),
(11, 'Armenia', 'AMD', 'Armenian dram', 0, '??.'),
(12, 'Aruba', 'AWG', 'Aruban florin', 0, '�'),
(13, 'Australia', 'AUD', 'Australian dollar', 0, '$'),
(14, 'Austria', 'EUR', 'Euro', 0, '�'),
(15, 'Azerbaijan', 'AZN', 'Azerbaijani manat', 0, '???'),
(16, 'Bahamas', 'BSD', 'Bahamian dollar', 0, '$'),
(17, 'Bahrain', 'BHD', 'Bahraini dinar', 0, '?.?'),
(18, 'Bangladesh', 'BDT', 'Bangladeshi taka', 0, '?'),
(19, 'Barbados', 'BBD', 'Barbadian dollar', 0, '$'),
(20, 'Belarus', 'BYR', 'Belarusian ruble', 0, 'p.'),
(21, 'Belgium', 'EUR', 'Euro', 0, '�'),
(22, 'Belize', 'BZD', 'Belize dollar', 0, 'BZ$'),
(23, 'Benin', 'XOF', 'West African CFA franc', 0, 'Fr'),
(24, 'Bermuda', 'BMD', 'Bermudian dollar', 0, '$'),
(25, 'Bhutan', 'BTN', 'Bhutanese ngultrum', 0, 'BTN'),
(26, 'Bolivia', 'BOB', 'Bolivian boliviano', 0, '$b'),
(27, 'Bosnia-Herzegovina', 'BAM', 'Bosnia and Herzegovina convert', 0, 'KM'),
(28, 'Botswana', 'BWP', 'Botswana pula', 0, 'P'),
(29, 'Bouvet Island', 'NOK', 'Norwegian krone', 0, 'kr'),
(30, 'Brazil', 'BRL', 'Brazilian real', 0, 'R$'),
(31, 'British Indian Ocean Territory', 'USD', 'United States dollar', 0, '$'),
(32, 'Brunei Darussalam', 'BND', 'Brunei dollar', 0, '$'),
(33, 'Bulgaria', 'BGN', 'Bulgarian lev', 0, '??'),
(34, 'Burkina Faso', 'XOF', 'West African CFA franc', 0, 'Fr'),
(35, 'Burundi', 'BIF', 'Burundian franc', 0, 'Fr'),
(36, 'Cambodia', 'KHR', 'Cambodian riel', 0, '?'),
(37, 'Cameroon', 'XAF', 'Central African CFA franc', 0, 'Fr'),
(38, 'Canada', 'CAD', 'Canadian dollar', 0, '$'),
(39, 'Cape Verde', 'CVE', 'Cape Verdean escudo', 0, '$'),
(40, 'Cayman Islands', 'KYD', 'Cayman Islands dollar', 0, '$'),
(41, 'Central African Republic', 'XAF', 'Central African CFA franc', 0, 'Fr'),
(42, 'Chad', 'XAF', 'Central African CFA franc', 0, 'Fr'),
(43, 'Chile', 'CLP', 'Chilean peso', 0, '$'),
(44, 'China', 'CNY', 'Chinese renminbi yuan', 0, '?'),
(45, 'Christmas Island', 'AUD', 'Australian dollar', 0, '$'),
(46, 'Cocos (Keeling) Islands', 'AUD', 'Australian dollar', 0, '$'),
(47, 'Colombia', 'COP', 'Colombian peso', 0, '$'),
(48, 'Comoros', 'KMF', 'Comorian franc', 0, 'Fr'),
(49, 'Congo', 'XAF', 'Central African CFA franc', 0, 'Fr'),
(50, 'Congo, Dem. Republic', 'CDF', 'Congolese franc', 0, 'Fr'),
(51, 'Cook Islands', 'NZD', 'New Zealand dollar', 0, '$'),
(52, 'Costa Rica', 'CRC', 'Costa Rican col�n', 0, '�'),
(53, 'Croatia', 'HRK', 'Croatian kuna', 0, 'kn'),
(54, 'Cuba', 'CUP', 'Cuban peso', 0, '?'),
(55, 'Cyprus', 'EUR', 'Euro', 0, '�'),
(56, 'Czech Rep.', 'CZK', 'Czech koruna', 0, 'Kc'),
(57, 'Denmark', 'DKK', 'Danish krone', 0, 'kr'),
(58, 'Djibouti', 'DJF', 'Djiboutian franc', 0, 'Fr'),
(59, 'Dominica', 'XCD', 'East Caribbean dollar', 0, '$'),
(60, 'Dominican Republic', 'DOP', 'Dominican peso', 0, 'RD$'),
(61, 'Egypt', 'EGP', 'Egyptian pound', 0, '�'),
(62, 'El Salvador', 'SVC', 'Salvadoran col�n', 0, '$'),
(63, 'Equatorial Guinea', 'XAF', 'Central African CFA franc', 0, 'Fr'),
(64, 'Eritrea', 'ERN', 'Eritrean nakfa', 0, 'Nfk'),
(65, 'Estonia', 'EUR', 'Euro', 0, '�'),
(66, 'Ethiopia', 'ETB', 'Ethiopian birr', 0, 'ETB'),
(67, 'European Union', 'EUR', 'Euro', 0, '�'),
(68, 'Falkland Islands (Malvinas)', 'FKP', 'Falkland pound', 0, '�'),
(69, 'Faroe Islands', 'DKK', 'Danish krone', 0, 'kr'),
(70, 'Fiji', 'FJD', 'Fijian dollar', 0, '$'),
(71, 'Finland', 'EUR', 'Euro', 0, '�'),
(72, 'France', 'EUR', 'Euro', 0, '�'),
(73, 'French Guiana', 'EUR', 'Euro', 0, '�'),
(74, 'French Southern Territories', 'EUR', 'Euro', 0, '�'),
(75, 'Gabon', 'XAF', 'Central African CFA franc', 0, 'Fr'),
(76, 'Gambia', 'GMD', 'Gambian dalasi', 0, 'D'),
(77, 'Georgia', 'GEL', 'Georgian lari', 0, '?'),
(78, 'Germany', 'EUR', 'Euro', 0, '�'),
(79, 'Ghana', 'GHS', 'Ghanaian cedi', 0, '?'),
(80, 'Gibraltar', 'GIP', 'Gibraltar pound', 0, '�'),
(81, 'Great Britain', 'GBP', 'British pound', 0, '�'),
(82, 'Greece', 'EUR', 'Euro', 0, '�'),
(83, 'Greenland', 'DKK', 'Danish krone', 0, 'kr'),
(84, 'Grenada', 'XCD', 'East Caribbean dollar', 0, '$'),
(85, 'Guadeloupe (French)', 'EUR', 'Euro', 0, '�'),
(86, 'Guam (USA)', 'USD', 'United States dollar', 0, '$'),
(87, 'Guinea', 'GNF', 'Guinean franc', 0, 'Fr'),
(88, 'Guyana', 'GYD', 'Guyanese dollar', 0, '$'),
(89, 'Haiti', 'HTG', 'Haitian gourde', 0, 'G'),
(90, 'Heard Island and McDonald Islands', 'AUD', 'Australian dollar', 0, '$'),
(91, 'Honduras', 'HNL', 'Honduran lempira', 0, 'L'),
(92, 'Hong Kong', 'HKD', 'Hong Kong dollar', 0, '?'),
(93, 'Hungary', 'HUF', 'Hungarian forint', 0, 'Ft'),
(94, 'Iceland', 'ISK', 'Icelandic kr�na', 0, 'kr'),
(95, 'India', 'INR', 'Indian rupee', 0, '?'),
(96, 'Indonesia', 'IDR', 'Indonesian rupiah', 0, 'Rp'),
(97, 'Iran', 'IRR', 'Iranian rial', 0, '?'),
(98, 'Iraq', 'IQD', 'Iraqi dinar', 0, '?.?'),
(99, 'Ireland', 'EUR', 'Euro', 0, '�'),
(100, 'Isle of Man', 'GBP', 'British pound', 0, '�'),
(101, 'Israel', 'ILS', 'Israeli new sheqel', 0, '?'),
(102, 'Italy', 'EUR', 'Euro', 0, '�'),
(103, 'Ivory Coast', 'XOF', 'West African CFA franc', 0, 'Fr'),
(104, 'Jamaica', 'JMD', 'Jamaican dollar', 0, 'J$'),
(105, 'Japan', 'JPY', 'Japanese yen', 0, '�'),
(106, 'Jersey', 'GBP', 'British pound', 0, '�'),
(107, 'Jordan', 'JOD', 'Jordanian dinar', 0, '?.?'),
(108, 'Kazakhstan', 'KZT', 'Kazakhstani tenge', 0, '??'),
(109, 'Kenya', 'KES', 'Kenyan shilling', 0, 'Sh'),
(110, 'Kiribati', 'AUD', 'Australian dollar', 0, '$'),
(111, 'Korea-North', 'KPW', 'North Korean won', 0, '?'),
(112, 'Korea-South', 'KRW', 'South Korean won', 0, '?'),
(113, 'Kuwait', 'KWD', 'Kuwaiti dinar', 0, '?.?'),
(114, 'Kyrgyzstan', 'KGS', 'Kyrgyzstani som', 0, '??'),
(115, 'Laos', 'LAK', 'Lao kip', 0, '?'),
(116, 'Latvia', 'LVL', 'Latvian lats', 0, 'Ls'),
(117, 'Lebanon', 'LBP', 'Lebanese pound', 0, '�'),
(118, 'Lesotho', 'LSL', 'Lesotho loti', 0, 'L'),
(119, 'Liberia', 'LRD', 'Liberian dollar', 0, '$'),
(120, 'Libya', 'LYD', 'Libyan dinar', 0, '?.?'),
(121, 'Liechtenstein', 'CHF', 'Swiss franc', 0, 'CHF'),
(122, 'Lithuania', 'LTL', 'Lithuanian litas', 0, 'Lt'),
(123, 'Luxembourg', 'EUR', 'Euro', 0, '�'),
(124, 'Macau', 'MOP', 'Macanese pataca', 0, 'P'),
(125, 'Macedonia', 'MKD', 'Macedonian denar', 0, '???'),
(126, 'Malawi', 'MWK', 'Malawian kwacha', 0, 'MK'),
(127, 'Malaysia', 'MYR', 'Malaysian ringgit', 0, 'RM'),
(128, 'Maldives', 'MVR', 'Maldivian rufiyaa', 0, '?.'),
(129, 'Mali', 'XOF', 'West African CFA franc', 0, 'Fr'),
(130, 'Malta', 'EUR', 'Euro', 0, '�'),
(131, 'Marshall Islands', 'USD', 'United States dollar', 0, '$'),
(132, 'Martinique (French)', 'EUR', 'Euro', 0, '�'),
(133, 'Mauritania', 'MRO', 'Mauritanian ouguiya', 0, 'UM'),
(134, 'Mauritius', 'MUR', 'Mauritian rupee', 0, '?'),
(135, 'Mayotte', 'EUR', 'Euro', 0, '�'),
(136, 'Mexico', 'MXN', 'Mexican peso', 0, '$'),
(137, 'Micronesia', 'USD', 'United States dollar', 0, '$'),
(138, 'Moldova', 'MDL', 'Moldovan leu', 0, 'L'),
(139, 'Monaco', 'EUR', 'Euro', 0, '�'),
(140, 'Mongolia', 'MNT', 'Mongolian t�gr�g', 0, '?'),
(141, 'Montenegro', 'EUR', 'Euro', 0, '�'),
(142, 'Montserrat', 'XCD', 'East Caribbean dollar', 0, '$'),
(143, 'Morocco', 'MAD', 'Moroccan dirham', 0, '?.?.'),
(144, 'Mozambique', 'MZN', 'Mozambican metical', 0, 'MT'),
(145, 'Myanmar', 'MMK', 'Myanmar kyat', 0, 'K'),
(146, 'Namibia', 'NAD', 'Namibian dollar', 0, '$'),
(147, 'Nauru', 'AUD', 'Australian dollar', 0, '$'),
(148, 'Nepal', 'NPR', 'Nepalese rupee', 0, '?'),
(149, 'Netherlands', 'EUR', 'Euro', 0, '�'),
(150, 'Netherlands Antilles', 'ANG', 'Netherlands Antillean gulden', 0, '�'),
(151, 'New Caledonia (French)', 'XPF', 'CFP franc', 0, 'Fr'),
(152, 'New Zealand', 'NZD', 'New Zealand dollar', 0, '$'),
(153, 'Nicaragua', 'NIO', 'Nicaraguan c�rdoba', 0, 'C$'),
(154, 'Niger', 'XOF', 'West African CFA franc', 0, 'Fr'),
(155, 'Nigeria', 'NGN', 'Nigerian naira', 0, '?'),
(156, 'Niue', 'NZD', 'New Zealand dollar', 0, '$'),
(157, 'Norfolk Island', 'AUD', 'Australian dollar', 0, '$'),
(158, 'Northern Mariana Islands', 'USD', 'United States dollar', 0, '$'),
(159, 'Norway', 'NOK', 'Norwegian krone', 0, 'kr'),
(160, 'Oman', 'OMR', 'Omani rial', 0, '?'),
(161, 'Pakistan', 'PKR', 'Pakistani rupee', 0, '?'),
(162, 'Palau', 'USD', 'United States dollar', 0, '$'),
(163, 'Panama', 'PAB', 'Panamanian balboa', 0, 'B/.'),
(164, 'Papua New Guinea', 'PGK', 'Papua New Guinean kina', 0, 'K'),
(165, 'Paraguay', 'PYG', 'Paraguayan guaran�', 0, '?'),
(166, 'Peru', 'PEN', 'Peruvian nuevo sol', 0, 'S/.'),
(167, 'Philippines', 'PHP', 'Philippine peso', 0, '?'),
(168, 'Pitcairn Island', 'NZD', 'New Zealand dollar', 0, '$'),
(169, 'Poland', 'PLN', 'Polish Zloty', 0, 'zl'),
(170, 'Polynesia (French)', 'XPF', 'CFP franc', 0, 'Fr'),
(171, 'Portugal', 'EUR', 'Euro', 1, '�'),
(172, 'Puerto Rico', 'USD', 'United States dollar', 0, '$'),
(173, 'Qatar', 'QAR', 'Qatari riyal', 0, '?'),
(174, 'Reunion (French)', 'EUR', 'Euro', 0, '�'),
(175, 'Romania', 'RON', 'Romanian leu', 0, 'lei'),
(176, 'Russia', 'RUB', 'Russian ruble', 0, '???'),
(177, 'Rwanda', 'RWF', 'Rwandan franc', 0, 'Fr'),
(178, 'Saint Helena', 'SHP', 'Saint Helenian pound', 0, '�'),
(179, 'Saint Kitts & Nevis Anguilla', 'XCD', 'East Caribbean dollar', 0, '$'),
(180, 'Saint Lucia', 'XCD', 'East Caribbean dollar', 0, '$'),
(181, 'Saint Pierre and Miquelon', 'EUR', 'Euro', 0, '�'),
(182, 'Saint Vincent & Grenadines', 'XCD', 'East Caribbean dollar', 0, '$'),
(183, 'Samoa', 'WST', 'Samoan tala', 0, 'T'),
(184, 'San Marino', 'EUR', 'Euro', 0, '�'),
(185, 'Sao Tome and Principe', 'STD', 'S�o Tom� and Pr�ncipe dobra', 0, 'Db'),
(186, 'Saudi Arabia', 'SAR', 'Saudi riyal', 0, '?'),
(187, 'Senegal', 'XOF', 'West African CFA franc', 0, 'Fr'),
(188, 'Serbia', 'RSD', 'Serbian dinar', 0, '???.'),
(189, 'Seychelles', 'SCR', 'Seychellois rupee', 0, '?'),
(190, 'Sierra Leone', 'SLL', 'Sierra Leonean leone', 0, 'Le'),
(191, 'Singapore', 'SGD', 'Singapore dollar', 0, '$'),
(192, 'Slovakia', 'EUR', 'Euro', 0, '�'),
(193, 'Slovenia', 'EUR', 'Euro', 0, '�'),
(194, 'Solomon Islands', 'SBD', 'Solomon Islands dollar', 0, '$'),
(195, 'Somalia', 'SOS', 'Somali shilling', 0, 'S'),
(196, 'South Africa', 'ZAR', 'South African rand', 0, 'R'),
(197, 'South Georgia & South Sandwich Islands', 'GBP', 'British pound', 0, '�'),
(198, 'Spain', 'EUR', 'Euro', 0, '�'),
(199, 'Sri Lanka', 'LKR', 'Sri Lankan rupee', 0, '?'),
(200, 'Sudan', 'SDG', 'Sudanese pound', 0, '�'),
(201, 'Suriname', 'SRD', 'Surinamese dollar', 0, '$'),
(202, 'Svalbard and Jan Mayen Islands', 'NOK', 'Norwegian krone', 0, 'kr'),
(203, 'Swaziland', 'SZL', 'Swazi lilangeni', 0, 'L'),
(204, 'Sweden', 'SEK', 'Swedish krona', 0, 'kr'),
(205, 'Switzerland', 'CHF', 'Swiss franc', 0, 'CHF'),
(206, 'Syria', 'SYP', 'Syrian pound', 0, '�'),
(207, 'Taiwan', 'TWD', 'New Taiwan dollar', 0, 'NT$'),
(208, 'Tajikistan', 'TJS', 'Tajikistani somoni', 0, '??'),
(209, 'Tanzania', 'TZS', 'Tanzanian shilling', 0, 'Sh'),
(210, 'Thailand', 'THB', 'Thai baht', 0, '?'),
(211, 'Togo', 'XOF', 'West African CFA franc', 0, 'Fr'),
(212, 'Tokelau', 'NZD', 'New Zealand dollar', 0, '$'),
(213, 'Tonga', 'TOP', 'Tongan pa?anga', 0, 'T$'),
(214, 'Trinidad and Tobago', 'TTD', 'Trinidad and Tobago dollar', 0, 'TT$'),
(215, 'Tunisia', 'TND', 'Tunisian dinar', 0, '?.?'),
(216, 'Turkey', 'TRY', 'Turkish new lira', 0, 'YTL'),
(217, 'Turks and Caicos Islands', 'USD', 'United States dollar', 0, '$'),
(218, 'Tuvalu', 'AUD', 'Australian dollar', 0, '$'),
(219, 'U.K.', 'GBP', 'British pound', 0, '�'),
(220, 'USA', 'USD', 'United States dollar', 0, '$'),
(221, 'USA Minor Outlying Islands', 'USD', 'United States dollar', 0, '$'),
(222, 'Uganda', 'UGX', 'Ugandan shilling', 0, 'Sh'),
(223, 'Ukraine', 'UAH', 'Ukrainian hryvnia', 0, '?'),
(224, 'United Arab Emirates', 'AED', 'United Arab Emirates dirham', 0, '?.?'),
(225, 'Uruguay', 'UYU', 'Uruguayan peso', 0, '$'),
(226, 'Uzbekistan', 'UZS', 'Uzbekistani som', 0, '??'),
(227, 'Vanuatu', 'VUV', 'Vanuatu vatu', 0, 'Vt'),
(228, 'Vatican', 'EUR', 'Euro', 0, '�'),
(229, 'Venezuela', 'VEF', 'Venezuelan bol�var', 0, 'Bs'),
(230, 'Vietnam', 'VND', 'Vietnamese Dong', 0, '?'),
(231, 'Virgin Islands (British)', 'USD', 'United States dollar', 0, '$'),
(232, 'Virgin Islands (USA)', 'USD', 'United States dollar', 0, '$'),
(233, 'Wallis and Futuna Islands', 'XPF', 'CFP franc', 0, 'Fr'),
(234, 'Western Sahara', 'MAD', 'Moroccan dirham', 0, '?.?.'),
(235, 'Yemen', 'YER', 'Yemeni rial', 0, '?'),
(236, 'Zimbabwe', 'ZWD', 'Zimbabwean dollar', 0, 'Z$');

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE IF NOT EXISTS `offers` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `service_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `one_day_deal` tinyint(1) NOT NULL DEFAULT '0',
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `tot_amount` varchar(10) NOT NULL DEFAULT '0',
  `amount` double(10,2) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `is_bundle` int(1) DEFAULT '0',
  `thumb1` varchar(100) DEFAULT NULL,
  `thumb2` varchar(100) DEFAULT NULL,
  `meta_tag_description` text NOT NULL,
  `keyword` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `offers`
--


-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `service_order_id` int(10) NOT NULL,
  `type` enum('Offer','Service') NOT NULL,
  `user_id` int(10) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `orders`
--


-- --------------------------------------------------------

--
-- Table structure for table `rewrite_urls`
--

CREATE TABLE IF NOT EXISTS `rewrite_urls` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `url_key` text NOT NULL,
  `controller_name` text NOT NULL,
  `service_id` int(10) DEFAULT NULL,
  `offer_id` int(10) NOT NULL,
  `identity` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `rewrite_urls`
--


-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE IF NOT EXISTS `services` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(500) DEFAULT NULL,
  `amount` double(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `services`
--

CREATE TABLE IF NOT EXISTS `payments` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `amount` double(20,2) NOT NULL,
  `processed_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;


CREATE TABLE IF NOT EXISTS `currency_list` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `country` varchar(100) NOT NULL,
  `currency_code` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=245 ;


INSERT INTO `currency_list` (`id`, `country`, `currency_code`) VALUES
(1, 'Afghanistan', 'AFN'),
(2, 'Albania', 'ALL'),
(3, 'Algeria', 'DZD'),
(4, 'American Samoa', 'USD'),
(5, 'Andorra', 'EUR'),
(6, 'Angola', 'AOA'),
(7, 'Anguilla', 'XCD'),
(8, 'Antarctica', 'XCD'),
(9, 'Antigua and Barbuda', 'XCD'),
(10, 'Argentina', 'ARS'),
(11, 'Armenia', 'AMD'),
(12, 'Aruba', 'AWG'),
(13, 'Australia', 'AUD'),
(14, 'Austria', 'EUR'),
(15, 'Azerbaijan', 'AZN'),
(16, 'Bahamas', 'BSD'),
(17, 'Bahrain', 'BHD'),
(18, 'Bangladesh', 'BDT'),
(19, 'Barbados', 'BBD'),
(20, 'Belarus', 'BYR'),
(21, 'Belgium', 'EUR'),
(22, 'Belize', 'BZD'),
(23, 'Benin', 'XOF'),
(24, 'Bermuda', 'BMD'),
(25, 'Bhutan', 'BTN'),
(26, 'Bolivia', 'BOB'),
(27, 'Bosnia-Herzegovina', 'BAM'),
(28, 'Botswana', 'BWP'),
(29, 'Bouvet Island', 'NOK'),
(30, 'Brazil', 'BRL'),
(31, 'British Indian Ocean Territory', 'USD'),
(32, 'Brunei Darussalam', 'BND'),
(33, 'Bulgaria', 'BGN'),
(34, 'Burkina Faso', 'XOF'),
(35, 'Burundi', 'BIF'),
(36, 'Cambodia', 'KHR'),
(37, 'Cameroon', 'XAF'),
(38, 'Canada', 'CAD'),
(39, 'Cape Verde', 'CVE'),
(40, 'Cayman Islands', 'KYD'),
(41, 'Central African Republic', 'XAF'),
(42, 'Chad', 'XAF'),
(43, 'Chile', 'CLP'),
(44, 'China', 'CNY'),
(45, 'Christmas Island', 'AUD'),
(46, 'Cocos (Keeling) Islands', 'AUD'),
(47, 'Colombia', 'COP'),
(48, 'Comoros', 'KMF'),
(49, 'Congo', 'XAF'),
(50, 'Congo, Dem. Republic', 'CDF'),
(51, 'Cook Islands', 'NZD'),
(52, 'Costa Rica', 'CRC'),
(53, 'Croatia', 'HRK'),
(54, 'Cuba', 'CUP'),
(55, 'Cyprus', 'EUR'),
(56, 'Czech Rep.', 'CZK'),
(57, 'Denmark', 'DKK'),
(58, 'Djibouti', 'DJF'),
(59, 'Dominica', 'XCD'),
(60, 'Dominican Republic', 'DOP'),
(61, 'Ecuador', 'ECS'),
(62, 'Egypt', 'EGP'),
(63, 'El Salvador', 'SVC'),
(64, 'Equatorial Guinea', 'XAF'),
(65, 'Eritrea', 'ERN'),
(66, 'Estonia', 'EUR'),
(67, 'Ethiopia', 'ETB'),
(68, 'European Union', 'EUR'),
(69, 'Falkland Islands (Malvinas)', 'FKP'),
(70, 'Faroe Islands', 'DKK'),
(71, 'Fiji', 'FJD'),
(72, 'Finland', 'EUR'),
(73, 'France', 'EUR'),
(74, 'French Guiana', 'EUR'),
(75, 'French Southern Territories', 'EUR'),
(76, 'Gabon', 'XAF'),
(77, 'Gambia', 'GMD'),
(78, 'Georgia', 'GEL'),
(79, 'Germany', 'EUR'),
(80, 'Ghana', 'GHS'),
(81, 'Gibraltar', 'GIP'),
(82, 'Great Britain', 'GBP'),
(83, 'Greece', 'EUR'),
(84, 'Greenland', 'DKK'),
(85, 'Grenada', 'XCD'),
(86, 'Guadeloupe (French)', 'EUR'),
(87, 'Guam (USA)', 'USD'),
(88, 'Guatemala', 'QTQ'),
(89, 'Guernsey', 'GGP'),
(90, 'Guinea', 'GNF'),
(91, 'Guinea Bissau', 'GWP'),
(92, 'Guyana', 'GYD'),
(93, 'Haiti', 'HTG'),
(94, 'Heard Island and McDonald Islands', 'AUD'),
(95, 'Honduras', 'HNL'),
(96, 'Hong Kong', 'HKD'),
(97, 'Hungary', 'HUF'),
(98, 'Iceland', 'ISK'),
(99, 'India', 'INR'),
(100, 'Indonesia', 'IDR'),
(101, 'Iran', 'IRR'),
(102, 'Iraq', 'IQD'),
(103, 'Ireland', 'EUR'),
(104, 'Isle of Man', 'GBP'),
(105, 'Israel', 'ILS'),
(106, 'Italy', 'EUR'),
(107, 'Ivory Coast', 'XOF'),
(108, 'Jamaica', 'JMD'),
(109, 'Japan', 'JPY'),
(110, 'Jersey', 'GBP'),
(111, 'Jordan', 'JOD'),
(112, 'Kazakhstan', 'KZT'),
(113, 'Kenya', 'KES'),
(114, 'Kiribati', 'AUD'),
(115, 'Korea-North', 'KPW'),
(116, 'Korea-South', 'KRW'),
(117, 'Kuwait', 'KWD'),
(118, 'Kyrgyzstan', 'KGS'),
(119, 'Laos', 'LAK'),
(120, 'Latvia', 'LVL'),
(121, 'Lebanon', 'LBP'),
(122, 'Lesotho', 'LSL'),
(123, 'Liberia', 'LRD'),
(124, 'Libya', 'LYD'),
(125, 'Liechtenstein', 'CHF'),
(126, 'Lithuania', 'LTL'),
(127, 'Luxembourg', 'EUR'),
(128, 'Macau', 'MOP'),
(129, 'Macedonia', 'MKD'),
(130, 'Madagascar', 'MGF'),
(131, 'Malawi', 'MWK'),
(132, 'Malaysia', 'MYR'),
(133, 'Maldives', 'MVR'),
(134, 'Mali', 'XOF'),
(135, 'Malta', 'EUR'),
(136, 'Marshall Islands', 'USD'),
(137, 'Martinique (French)', 'EUR'),
(138, 'Mauritania', 'MRO'),
(139, 'Mauritius', 'MUR'),
(140, 'Mayotte', 'EUR'),
(141, 'Mexico', 'MXN'),
(142, 'Micronesia', 'USD'),
(143, 'Moldova', 'MDL'),
(144, 'Monaco', 'EUR'),
(145, 'Mongolia', 'MNT'),
(146, 'Montenegro', 'EUR'),
(147, 'Montserrat', 'XCD'),
(148, 'Morocco', 'MAD'),
(149, 'Mozambique', 'MZN'),
(150, 'Myanmar', 'MMK'),
(151, 'Namibia', 'NAD'),
(152, 'Nauru', 'AUD'),
(153, 'Nepal', 'NPR'),
(154, 'Netherlands', 'EUR'),
(155, 'Netherlands Antilles', 'ANG'),
(156, 'New Caledonia (French)', 'XPF'),
(157, 'New Zealand', 'NZD'),
(158, 'Nicaragua', 'NIO'),
(159, 'Niger', 'XOF'),
(160, 'Nigeria', 'NGN'),
(161, 'Niue', 'NZD'),
(162, 'Norfolk Island', 'AUD'),
(163, 'Northern Mariana Islands', 'USD'),
(164, 'Norway', 'NOK'),
(165, 'Oman', 'OMR'),
(166, 'Pakistan', 'PKR'),
(167, 'Palau', 'USD'),
(168, 'Panama', 'PAB'),
(169, 'Papua New Guinea', 'PGK'),
(170, 'Paraguay', 'PYG'),
(171, 'Peru', 'PEN'),
(172, 'Philippines', 'PHP'),
(173, 'Pitcairn Island', 'NZD'),
(174, 'Poland', 'PLN'),
(175, 'Polynesia (French)', 'XPF'),
(176, 'Portugal', 'EUR'),
(177, 'Puerto Rico', 'USD'),
(178, 'Qatar', 'QAR'),
(179, 'Reunion (French)', 'EUR'),
(180, 'Romania', 'RON'),
(181, 'Russia', 'RUB'),
(182, 'Rwanda', 'RWF'),
(183, 'Saint Helena', 'SHP'),
(184, 'Saint Kitts & Nevis Anguilla', 'XCD'),
(185, 'Saint Lucia', 'XCD'),
(186, 'Saint Pierre and Miquelon', 'EUR'),
(187, 'Saint Vincent & Grenadines', 'XCD'),
(188, 'Samoa', 'WST'),
(189, 'San Marino', 'EUR'),
(190, 'Sao Tome and Principe', 'STD'),
(191, 'Saudi Arabia', 'SAR'),
(192, 'Senegal', 'XOF'),
(193, 'Serbia', 'RSD'),
(194, 'Seychelles', 'SCR'),
(195, 'Sierra Leone', 'SLL'),
(196, 'Singapore', 'SGD'),
(197, 'Slovakia', 'EUR'),
(198, 'Slovenia', 'EUR'),
(199, 'Solomon Islands', 'SBD'),
(200, 'Somalia', 'SOS'),
(201, 'South Africa', 'ZAR'),
(202, 'South Georgia & South Sandwich Islands', 'GBP'),
(203, 'South Sudan', 'SSP'),
(204, 'Spain', 'EUR'),
(205, 'Sri Lanka', 'LKR'),
(206, 'Sudan', 'SDG'),
(207, 'Suriname', 'SRD'),
(208, 'Svalbard and Jan Mayen Islands', 'NOK'),
(209, 'Swaziland', 'SZL'),
(210, 'Sweden', 'SEK'),
(211, 'Switzerland', 'CHF'),
(212, 'Syria', 'SYP'),
(213, 'Taiwan', 'TWD'),
(214, 'Tajikistan', 'TJS'),
(215, 'Tanzania', 'TZS'),
(216, 'Thailand', 'THB'),
(217, 'Togo', 'XOF'),
(218, 'Tokelau', 'NZD'),
(219, 'Tonga', 'TOP'),
(220, 'Trinidad and Tobago', 'TTD'),
(221, 'Tunisia', 'TND'),
(222, 'Turkey', 'TRY'),
(223, 'Turkmenistan', 'TMT'),
(224, 'Turks and Caicos Islands', 'USD'),
(225, 'Tuvalu', 'AUD'),
(226, 'U.K.', 'GBP'),
(227, 'USA', 'USD'),
(228, 'USA Minor Outlying Islands', 'USD'),
(229, 'Uganda', 'UGX'),
(230, 'Ukraine', 'UAH'),
(231, 'United Arab Emirates', 'AED'),
(232, 'Uruguay', 'UYU'),
(233, 'Uzbekistan', 'UZS'),
(234, 'Vanuatu', 'VUV'),
(235, 'Vatican', 'EUR'),
(236, 'Venezuela', 'VEF'),
(237, 'Vietnam', 'VND'),
(238, 'Virgin Islands (British)', 'USD'),
(239, 'Virgin Islands (USA)', 'USD'),
(240, 'Wallis and Futuna Islands', 'XPF'),
(241, 'Western Sahara', 'MAD'),
(242, 'Yemen', 'YER'),
(243, 'Zambia', 'ZMW'),
(244, 'Zimbabwe', 'ZWD');


CREATE TABLE IF NOT EXISTS `back_orders` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(100) DEFAULT NULL,
  `l_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `min_price` double(10,2) DEFAULT NULL,
  `max_price` double(10,2) DEFAULT NULL,
  `service_id` varchar(100) DEFAULT NULL,
  `act_amount` double(10,2) DEFAULT NULL,
  `processed` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;