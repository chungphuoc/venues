-- phpMyAdmin SQL Dump
-- version 3.4.11.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 09, 2013 at 11:29 PM
-- Server version: 5.5.35
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `fladdict_jamevent`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

DROP TABLE IF EXISTS `about`;
CREATE TABLE IF NOT EXISTS `about` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `about_us` text NOT NULL,
  `contact` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `about_us`, `contact`) VALUES
(1, 'lorum ispum  lorum ispum  lorum ispum  lorum ispum  lorum ispum  lorum ispum  lorum ispum  lorum ispum  lorum ispum  lorum ispum  lorum ispum  lorum ispum  lorum ispum  lorum ispum  lorum ispum  lorum ispum  lorum ispum  lorum ispum  lorum ispum  lorum ispum  lorum ispum  lorum ispum  lorum ispum  lorum ispum  lorum ispum  lorum ispum  lorum ispum  lorum ispum  ', '12334578889');

-- --------------------------------------------------------

--
-- Table structure for table `admin_images`
--

DROP TABLE IF EXISTS `admin_images`;
CREATE TABLE IF NOT EXISTS `admin_images` (
  `image_id` int(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(200) NOT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `admin_images`
--

INSERT INTO `admin_images` (`image_id`, `image`) VALUES
(1, 'http://fladdicts.com/dev/jspn/wp-content/themes/thesis_185/custom/images/JSPN-logo.png'),
(2, 'http://fladdicts.com/dev/jspn/wp-content/themes/thesis_185/custom/images/JSPN-logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(256) NOT NULL,
  `category_image_path` varchar(256) NOT NULL,
  `category_description` text NOT NULL,
  `contact_number` varchar(256) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_image_path`, `category_description`, `contact_number`, `parent_id`) VALUES
(1, 'Corporate Events', 'http://fladdicts.com/dev/jam/upload/1ico.png', 'Corporate Events can range from treating your staff to a motivational day out to showing appreciation to your clients for their business, or even to help you win further business, There are various ways to do this and we have numerous things you can do. Simply advise us what you want to achieve and we will put forward our suggestions for your company', '02083719080', 0),
(2, 'Conference Management', 'http://fladdicts.com/dev/jam/upload/2ico.png', 'When it comes to setting up a conference, whether it''s for a product launch or just simply a conference for your company we can take care of every aspect for you ensuring that your target audience is dealt with professionally and efficiently throughout the event. We will also ensure that we select the most suitable venue for your type of conference to suit your budget, accommodation requirements and number of attendees.', '02083719080', 0),
(3, 'Fundraising Events', 'http://fladdicts.com/dev/jam/upload/3ico.png', 'When it comes to arranging an event to highlight a specific charity, we have a vast amount of experience in this area which we can use to help make your event an unforgettable and inspiring one', '02083719080', 0),
(4, 'Party Planning', 'http://fladdicts.com/dev/jam/upload/4ico.png', 'Our approach is to provide our clients with an enjoyable party planning experience which will guarantee your party is talked about for years to come. During this process we keep a steady eye concerning all aspects of the party, from theming in the room to arranging suitable table centrepieces to providing entertainment appropriate to the party theme', '02083719080', 0),
(5, 'Wedding Planning', 'http://fladdicts.com/dev/jam/upload/5ico.png', 'A wedding should be special, magical, elegant and above all unforgettable!', '02083719080', 0),
(6, 'Entertainment Services', 'http://fladdicts.com/dev/jam/upload/6ico.png', 'We can also offer several types of entertainment options for all types of events, from interactive entertainment and stage acts that leave you speechless to musical entertainment and impersonators that will blend into the crowd, the possibilities are endless! Whatever you choose you are guaranteed that everyone will go home with a smile on their face!', '02083719080', 0),
(7, 'Venue Finding', 'http://fladdicts.com/dev/jam/upload/7ico.png', 'Enter the maze at your peril!', '02083719080', 0);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `venue_id` varchar(255) DEFAULT NULL,
  `contact_name` varchar(255) DEFAULT NULL,
  `contact_role` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `venue_id`, `contact_name`, `contact_role`, `created_at`, `updated_at`) VALUES
(1, '2', 'demo', 'demo', '2013-09-11 00:00:00', '2013-09-12 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `meeting_rooms`
--

DROP TABLE IF EXISTS `meeting_rooms`;
CREATE TABLE IF NOT EXISTS `meeting_rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `venue_id` varchar(255) DEFAULT NULL,
  `room_name` varchar(255) DEFAULT NULL,
  `suite` varchar(255) DEFAULT NULL,
  `floor` varchar(255) DEFAULT NULL,
  `lift` tinyint(1) DEFAULT NULL,
  `theatre` varchar(255) DEFAULT NULL,
  `classroom` varchar(255) DEFAULT NULL,
  `boardroom` varchar(255) DEFAULT NULL,
  `ushape` varchar(255) DEFAULT NULL,
  `cabaret` varchar(255) DEFAULT NULL,
  `lunch_dinner` varchar(255) DEFAULT NULL,
  `dinner_dance` varchar(255) DEFAULT NULL,
  `reception` varchar(255) DEFAULT NULL,
  `length` varchar(255) DEFAULT NULL,
  `width` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `max_height` varchar(255) DEFAULT NULL,
  `min_height` varchar(255) DEFAULT NULL,
  `door_height` varchar(255) DEFAULT NULL,
  `door_width` varchar(255) DEFAULT NULL,
  `tungsten` tinyint(1) DEFAULT NULL,
  `fluorescent` tinyint(1) DEFAULT NULL,
  `halogen` tinyint(1) DEFAULT NULL,
  `dimmers` tinyint(1) DEFAULT NULL,
  `controls` tinyint(1) DEFAULT NULL,
  `blackout` tinyint(1) DEFAULT NULL,
  `windows` tinyint(1) DEFAULT NULL,
  `sound_system` tinyint(1) DEFAULT NULL,
  `air_conditioning` tinyint(1) DEFAULT NULL,
  `phase` tinyint(1) DEFAULT NULL,
  `sockets` varchar(255) DEFAULT NULL,
  `telephone_points` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `meeting_rooms`
--

INSERT INTO `meeting_rooms` (`id`, `venue_id`, `room_name`, `suite`, `floor`, `lift`, `theatre`, `classroom`, `boardroom`, `ushape`, `cabaret`, `lunch_dinner`, `dinner_dance`, `reception`, `length`, `width`, `area`, `max_height`, `min_height`, `door_height`, `door_width`, `tungsten`, `fluorescent`, `halogen`, `dimmers`, `controls`, `blackout`, `windows`, `sound_system`, `air_conditioning`, `phase`, `sockets`, `telephone_points`, `created_at`, `updated_at`) VALUES
(1, '2', '2', '2', '2', 2, '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', 2, 2, 22, 2, NULL, 2, 22, 2, 2, 2, '2', '2', '2013-09-11 00:00:00', '2013-09-12 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `styles`
--

DROP TABLE IF EXISTS `styles`;
CREATE TABLE IF NOT EXISTS `styles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `venue_id` varchar(255) DEFAULT '',
  `style` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `styles`
--

INSERT INTO `styles` (`id`, `venue_id`, `style`, `created_at`, `updated_at`) VALUES
(1, '2', 'demo demo', '2013-09-11 00:00:00', '2013-09-12 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
CREATE TABLE IF NOT EXISTS `testimonials` (
  `testimonial_id` int(11) NOT NULL AUTO_INCREMENT,
  `testimonial_title` varchar(256) NOT NULL,
  `testimonial_content` text NOT NULL,
  PRIMARY KEY (`testimonial_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`testimonial_id`, `testimonial_title`, `testimonial_content`) VALUES
(2, 'Ashley Page, International Insurance Brokers & Independant Financial Advisers', 'Everyone thoroughly enjoyed themselves, thank you very much for organising the day. Would definitely recommend it, and will keep you in mind for any other fun days we may have'),
(3, 'Ashley Page, International Insurance Brokers & Independant Financial Advisers', 'Everyone thoroughly enjoyed themselves, thank you very much for organising the day. Would definitely recommend it, and will keep you in mind for any other fun days we may have'),
(4, 'AJ Gala Dinner (New York)', 'On behalf of everyone here thanks a million for a great night. Very well organised. Everyone really enjoyed it. Will recommend you to our Clients'),
(5, 'Avisar Limited', 'Many thanks for your dedication throughout this event. Everything was run flawlessly and the feedback from the day was fantastic. I don''t think I have ever experienced such warm and welcoming staff - they clearly understand customer service'),
(6, 'Harry and John, B.Y.P. Foundation', 'What a night! This is the 4th year you have run our event and somehow it gets better every time. You have raised our profile to such an extent that the number of attendees and the money we raise are now beyond anything we could have imagined. The room looked amazing, the entertainment, sound and lights were dazzling and the food was delicious. The evening ran like clockwork and the guests had a great time! We will definitely be back for more. Thank you!');

-- --------------------------------------------------------

--
-- Table structure for table `venues`
--

DROP TABLE IF EXISTS `venues`;
CREATE TABLE IF NOT EXISTS `venues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `address` text,
  `city` varchar(255) DEFAULT NULL,
  `county` varchar(255) DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `delegate_rates` int(11) DEFAULT NULL,
  `room_hire_rates` int(11) DEFAULT NULL,
  `meeting_capacity` int(11) DEFAULT NULL,
  `catering_capacity` int(11) DEFAULT NULL,
  `no_bedrooms` int(11) DEFAULT NULL,
  `no_meeting_rooms` int(11) DEFAULT NULL,
  `disabled_access` tinyint(1) DEFAULT NULL,
  `commission` double DEFAULT NULL,
  `notes` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `lan` varchar(255) NOT NULL,
  `lat` varchar(255) NOT NULL,
  `image` varchar(40) NOT NULL,
  `date__venue` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `venues`
--

INSERT INTO `venues` (`id`, `name`, `address`, `city`, `county`, `postcode`, `telephone`, `fax`, `website`, `delegate_rates`, `room_hire_rates`, `meeting_capacity`, `catering_capacity`, `no_bedrooms`, `no_meeting_rooms`, `disabled_access`, `commission`, `notes`, `created_at`, `updated_at`, `lan`, `lat`, `image`, `date__venue`) VALUES
(2, 'dddd', 'testing testing testing testing ', 'dddd', 'dddd', '123456', '1235687099', '1235687099', 'testing ', 10, 12, 12, 12, 12, 12, 1, 122, 'testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing testing ', '2013-09-11 00:00:00', '2013-09-12 00:00:00', '145', '145', '', '2013-12-31');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
