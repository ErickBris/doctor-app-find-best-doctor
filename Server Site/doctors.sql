-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2015 at 01:14 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `doctors`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
CREATE TABLE IF NOT EXISTS `appointment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dr_id` int(11) NOT NULL,
  `cl_id` int(11) NOT NULL,
  `code` varchar(30) NOT NULL,
  `pasent_name` varchar(200) NOT NULL,
  `case_type` enum('old','new') NOT NULL,
  `day` varchar(20) NOT NULL,
  `time` varchar(200) NOT NULL,
  `app_date` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `description` varchar(300) NOT NULL,
  `confirm` int(11) NOT NULL,
  `visited` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `dr_id`, `cl_id`, `code`, `pasent_name`, `case_type`, `day`, `time`, `app_date`, `user_id`, `phone`, `description`, `confirm`, `visited`) VALUES
(3, 1, 1, 'nph6fb', '', 'old', 'sat', '11:00 - 11:30 AM', '2015-07-18', 1, '9909038886', 'I einymc', 1, 1),
(4, 1, 1, 'zy2dq2', '', 'old', 'sat', '12:00 - 12:30 PM', '2015-07-18', 1, '9909038886', 'lobe you', 0, 0),
(6, 1, 1, 'pz2nh0', '', 'old', 'sat', '12:00 - 12:30 PM', '2015-07-18', 1, '9909038886', 'lobe you', 0, 0),
(7, 1, 1, 'gtv8fz', '', 'old', 'sat', '04:00 - 04:30 PM', '2015-07-18', 1, '990038886', 'I ma', 0, 0),
(8, 1, 1, 'xrwp2m', '', 'old', 'sat', '05:00 - 05:30 PM', '2015-07-19', 1, '9909038886', 'hello subhafh', 0, 0),
(9, 1, 1, 'gp6vnb', '', 'old', 'sat', '8:30 - 9:00 AM', '2015-08-09', 1, '9909038886', 'bus', 1, 0),
(10, 1, 1, 't7ctys', '', 'old', 'fri', '8:30 - 9:00 AM', '2015-09-19', 1, '9909038886', '', 0, 0),
(11, 1, 1, '6f7xh2', '', 'old', 'fri', '8:30 - 9:00 AM', '2015-09-19', 1, '9909038886', '', 1, 0),
(12, 1, 1, 'skjd4s', '', 'old', 'fri', '8:30 - 9:00 AM', '2015-09-19', 1, '9909038886', '', 1, 0),
(13, 1, 1, 'bhpqy2', '', 'old', 'fri', '8:30 - 9:00 AM', '2015-09-19', 1, '9909038886', '', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `appointment_draft`
--

DROP TABLE IF EXISTS `appointment_draft`;
CREATE TABLE IF NOT EXISTS `appointment_draft` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dr_id` int(11) NOT NULL,
  `cl_id` int(11) NOT NULL,
  `code` varchar(30) NOT NULL,
  `pasent_name` varchar(200) NOT NULL,
  `case_type` enum('old','new') NOT NULL,
  `day` varchar(20) NOT NULL,
  `time` varchar(200) NOT NULL,
  `app_date` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `description` varchar(300) NOT NULL,
  `confirm` int(11) NOT NULL,
  `visited` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `appointment_draft`
--

INSERT INTO `appointment_draft` (`id`, `dr_id`, `cl_id`, `code`, `pasent_name`, `case_type`, `day`, `time`, `app_date`, `user_id`, `phone`, `description`, `confirm`, `visited`) VALUES
(2, 1, 1, 'ms2vzs', '', 'old', 'sat', '9:30 - 10:00 AM', '2015-07-18', 1, '9909038886', 'I wony', 1, 1),
(5, 1, 1, 'r6hf95', '', 'old', 'sat', '12:00 - 12:30 PM', '2015-07-18', 1, '9909038886', 'lobe you', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `appointment_services`
--

DROP TABLE IF EXISTS `appointment_services`;
CREATE TABLE IF NOT EXISTS `appointment_services` (
  `app_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  UNIQUE KEY `app_id` (`app_id`,`service_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment_services`
--

INSERT INTO `appointment_services` (`app_id`, `service_id`) VALUES
(9, 1),
(9, 4),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(12, 1),
(12, 2),
(13, 1),
(13, 2);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `icon` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `icon`) VALUES
(1, 'Dentist', '1435985035.png'),
(2, 'Gynecologist', '1435985262.png'),
(3, 'Dermatologist', '1435985574.png'),
(4, 'Homeopathy', '1435985594.png'),
(5, 'Ayurveda', '1435985631.png'),
(6, 'Cardiologist', '1435986862.png'),
(7, 'Neurologist', '1435986884.png'),
(8, 'Orthopedic', '1435986911.png'),
(9, 'Gastrologist', '1435986936.png'),
(10, 'Eye Care', '1435986954.png'),
(11, 'Pulmonologist', '1435986978.png'),
(12, 'Urologist', '1435987000.png');

-- --------------------------------------------------------

--
-- Table structure for table `clinics`
--

DROP TABLE IF EXISTS `clinics`;
CREATE TABLE IF NOT EXISTS `clinics` (
  `cl_id` int(11) NOT NULL AUTO_INCREMENT,
  `dr_id` int(11) NOT NULL,
  `cl_name` varchar(200) NOT NULL,
  `cl_location` varchar(300) NOT NULL,
  `cl_address` varchar(300) NOT NULL,
  `cl_phone` varchar(15) NOT NULL,
  `cl_latitude` varchar(50) NOT NULL,
  `cl_longitude` varchar(50) NOT NULL,
  `cl_fees` double NOT NULL,
  `cl_discount` double NOT NULL,
  `cl_facilities` longtext NOT NULL,
  PRIMARY KEY (`cl_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `clinics`
--

INSERT INTO `clinics` (`cl_id`, `dr_id`, `cl_name`, `cl_location`, `cl_address`, `cl_phone`, `cl_latitude`, `cl_longitude`, `cl_fees`, `cl_discount`, `cl_facilities`) VALUES
(1, 1, 'SK Patel', 'Morbi', 'B 69-70 8-A National Highway Morbi', '', '22.8049781', '70.8567952', 300, 20, 'Xray, Sonography'),
(2, 2, 'Lutrdsi Indingo', 'Morbi', '928 Broadway\r\nNew York, NY 10010', '', '20.203211511', '78.03223232', 200, 0, 'Sonography, X-Ray'),
(3, 4, 'Aradhan Clinic', 'New York', '242 E 19th St\r\nNew York, NY 10003', '', '', '', 100, 0, 'special ward'),
(4, 5, 'Ayush Multi Hospital', 'Bhavnagar', '160 East 32nd Street\r\nBhavnagar, 364710', '', '', '', 300, 0, 'AC Room'),
(5, 6, 'Smile Dental care', 'Botad', '36 Nr. St depo,\r\nBotad-364710', '', '', '', 100, 0, ''),
(6, 7, 'John dental hospital', 'Anand', '2nd fllor,old paliyad,anand', '', '', '', 500, 0, 'super room'),
(7, 9, 'all is well care', 'myanmar', 'B/H airport,nageswari main road, myanmar', '', '74.000', '25.2223', 250, 0, 'lift for pationt'),
(8, 11, 'Bhutiya Hospital', 'Junagadh', 'lati plot ,\r\njunagadh-20548', '', '72.0020', '85.02002', 300, 0, 'Dispaly room'),
(9, 12, 'Pandya Hospital', 'kathmandu', '108 East 23rd Street\r\nNew York, NY 10010', '', '', '', 700, 0, ''),
(10, 13, 'jivandhara hospital', 'Navi Mumbai', '22 E 21st St.\r\nNew York, NY 10010\r\nWithin 0.5 mile', '', '1000.200', '1963.00', 1000, 0, 'special wadd availablee'),
(11, 14, 'smith eye care', 'kuvait', '10 to 13,real plaza,\r\nkuait', '', '', '', 350, 0, ''),
(12, 15, 'Jay Ambe Hospital', 'junagadh', 'nr.moniya,at-visavadar,junagadh', '', '', '', 120, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `clinics_photo`
--

DROP TABLE IF EXISTS `clinics_photo`;
CREATE TABLE IF NOT EXISTS `clinics_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cl_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `clinics_photo`
--

INSERT INTO `clinics_photo` (`id`, `cl_id`, `title`, `image`) VALUES
(3, 1, 'Out Door', '1436013896.jpg'),
(4, 1, 'Test 4', '1436015312.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
CREATE TABLE IF NOT EXISTS `doctors` (
  `dr_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `dr_name` varchar(200) NOT NULL,
  `dr_gender` varchar(30) NOT NULL,
  `dr_email` varchar(300) NOT NULL,
  `dr_password` varchar(300) NOT NULL,
  `dr_degree` varchar(200) NOT NULL,
  `dr_designation` varchar(200) NOT NULL,
  `dr_experiance` double NOT NULL,
  `dr_fees` double NOT NULL,
  `dr_description` longtext NOT NULL,
  `dr_country` varchar(100) NOT NULL,
  `dr_city` varchar(100) NOT NULL,
  `dr_phone` varchar(15) NOT NULL,
  `dr_speciality` varchar(300) NOT NULL,
  `dr_cover_image` varchar(200) NOT NULL,
  `dr_banner_image` varchar(300) NOT NULL,
  PRIMARY KEY (`dr_id`),
  UNIQUE KEY `dr_email` (`dr_email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`dr_id`, `cat_id`, `dr_name`, `dr_gender`, `dr_email`, `dr_password`, `dr_degree`, `dr_designation`, `dr_experiance`, `dr_fees`, `dr_description`, `dr_country`, `dr_city`, `dr_phone`, `dr_speciality`, `dr_cover_image`, `dr_banner_image`) VALUES
(1, 1, 'Dr. Richard Hirsch', '', 'richardhirsch@gmail.com', 'ede997b0caf2ec398110d79d9eba38bb', 'MD', '', 5, 0, '<ul class="section-set">\r\n<li class="">Medical School - Johns Hopkins University</li>\r\n<li class="">Memorial Sloan-Kettering Cancer Center (Residency)</li>\r\n<li class="">NewYork-Presbyterian Hospital / Columbia University Medical Center, Fellowship in Hematology</li>\r\n</ul>\r\n<h3>Languages Spoken</h3>\r\n<ul class="section-set">\r\n<li class="language"><a class="language" title="" href="https://www.zocdoc.com/languages/english-1">English</a></li>\r\n</ul>\r\n<div class="js-link-column sg-side-short-list  ">\r\n<h3>Board Certifications</h3>\r\n<ul class="section-set">\r\n<li class="">American Board of Internal Medicine</li>\r\n<li class="">Hematology (Internal Medicine)</li>\r\n<li class="">Medical Oncology (Internal Medicine)</li>\r\n</ul>\r\n</div>\r\n<div class="js-link-column sg-side-short-list  ">\r\n<h3>Professional Memberships</h3>\r\n<ul class="section-set">\r\n<li class="">American Society of Clinical Oncology</li>\r\n</ul>\r\n</div>\r\n<div class="js-link-column sg-side-short-list  ">\r\n<h3>Awards and Publications</h3>\r\n<ul class="section-set">\r\n<li class="">New York Magazine - Best Doctors in New York 2000-2005</li>\r\n</ul>\r\n</div>', 'India', 'Morbi', '', 'Primary Care Doctor,Oncologist,Hematologist,Internist', '1436626954.jpg', '1436682917.jpg'),
(2, 1, 'Dr. WeyminHago', '', 'weyminhago@gmail.com', '52eebe115d493f0633e58e5fb2209a22', 'MD', '', 8, 0, '<h3 class="profile-content-title">Qualifications of Dr. Weymin Hago MD</h3>\r\n<div class="details box row col-md-24 padding-bottom-2">\r\n<div class="js-link-column sg-side-short-list  ">\r\n<h3>Education</h3>\r\n<ul class="section-set">\r\n<li class="">Medical School - Ross University School of Medicine</li>\r\n<li class="">Saint Vincent''s Hospital, Manhattan (Internal Medicine)</li>\r\n</ul>\r\n</div>\r\n<div class="js-link-column sg-side-short-list languages-links ">\r\n<h3>Languages Spoken</h3>\r\n<ul class="section-set">\r\n<li class="language"><a class="language" title="" href="https://www.zocdoc.com/languages/english-1">English</a></li>\r\n<li class="language"><a class="language" title="" href="https://www.zocdoc.com/languages/spanish-3">Spanish</a></li>\r\n</ul>\r\n</div>\r\n<div class="js-link-column sg-side-short-list  ">\r\n<h3>Board Certifications</h3>\r\n<ul class="section-set">\r\n<li class="">American Board of Internal Medicine</li>\r\n</ul>\r\n</div>\r\n</div>', 'India', 'Rajkot', '', 'Primary Care Doctor, Internist,', '1436626966.png', '1436682932.jpg'),
(3, 1, 'Dr. Amit Amrutiya', '', 'amrutiyainternational@gmail.com', 'cac0bf00a5655b23fe5bda892d85663c', 'MS', '', 8, 0, '', 'India', 'Morbi', '', 'Kidney', '1436626980.jpg', '1436682958.jpg'),
(4, 1, 'Dr. Bhumit Ramani', '', 'bhumiotr@gmail.com', 'fce774b07c89ee49703a1026777d473f', 'MD', 'Medical School - Medical University of Warsaw', 3, 0, '<div class="js-link-column sg-side-short-list  ">\r\n<h3>Education</h3>\r\n<ul class="section-set">\r\n<li class="">Medical School - Medical University of Warsaw</li>\r\n<li class="">New York Medical College, Residency in Internal Medicine</li>\r\n<li class="">New York Medical College, Fellowship in Pulmonology</li>\r\n</ul>\r\n</div>\r\n<div class="js-link-column sg-side-short-list languages-links ">\r\n<h3>Languages Spoken</h3>\r\n<ul class="section-set">\r\n<li class="language"><a class="language" title="" href="https://www.zocdoc.com/languages/english-1">English</a></li>\r\n<li class="language"><a class="language" title="" href="https://www.zocdoc.com/languages/spanish-3">Spanish</a></li>\r\n<li class="language"><a class="language" title="" href="https://www.zocdoc.com/languages/polish-26">Polish</a></li>\r\n</ul>\r\n</div>\r\n<div class="js-link-column sg-side-short-list  ">\r\n<h3>Board Certifications</h3>\r\n<ul class="section-set">\r\n<li class="">American Board of Internal Medicine</li>\r\n</ul>\r\n</div>\r\n<div class="js-link-column sg-side-short-list insurancesection insurances-links-id ">\r\n<h3>In-Network Insurances</h3>\r\n<ul class="section-set">\r\n<li class=""><a class="" title="" href="https://www.zocdoc.com/pulmonologists/aetna-300m">Aetna</a></li>\r\n<li class=""><a class="" title="" href="https://www.zocdoc.com/pulmonologists/beech-street-303m">Beech Street</a></li>\r\n<li class=""><a class="" title="" href="https://www.zocdoc.com/pulmonologists/blue-cross-blue-shield-304m">Blue Cross Blue Shield</a></li>\r\n</ul>\r\n</div>', 'uk', 'Morbi', '', 'Pulmonologist Primary Care Docto', '1436625841.jpg', '1436682969.jpg'),
(5, 1, 'Dr. Ritesh desai', '', 'riteshdesai@yahoo.com', '9ad1b6c48d4e505134aa5f5b34fdc70b', 'MD,', 'Sr. Officer', 2, 0, '<div class="js-link-column sg-side-short-list  ">\r\n<h3>Education</h3>\r\n<ul class="section-set">\r\n<li class="">Medical School - Ross University School of Medicine</li>\r\n<li class="">Bronx-Lebanon Hospital Center, Residency in Family Medicine</li>\r\n</ul>\r\n</div>\r\n<div class="js-link-column sg-side-short-list languages-links ">\r\n<h3>Languages Spoken</h3>\r\n<ul class="section-set">\r\n<li class="language"><a class="language" title="" href="https://www.zocdoc.com/languages/english-1">English</a></li>\r\n</ul>\r\n</div>\r\n<div class="js-link-column sg-side-short-list  ">\r\n<h3>Board Certifications</h3>\r\n<ul class="section-set">\r\n<li class="">American Board of Family Medicine</li>\r\n</ul>\r\n</div>\r\n<div class="js-link-column sg-side-short-list insurancesection insurances-links-id ">\r\n<h3>In-Network Insurances</h3>\r\n<ul class="section-set">\r\n<li class=""><a class="" title="" href="https://www.zocdoc.com/primary-care-doctors/1199seiu-440m">1199SEIU</a></li>\r\n<li class=""><a class="" title="" href="https://www.zocdoc.com/primary-care-doctors/aetna-300m">Aetna</a></li>\r\n<li class=""><a class="" title="" href="https://www.zocdoc.com/primary-care-doctors/american-republic-insurance-company-711m">American Republic Insurance Company</a></li>\r\n<li><a class="moreLink" href="https://www.zocdoc.com/doctor/parnian-zandieh-md-95657?LocIdent=47590&amp;reason_visit=75&amp;insuranceCarrier=-1&amp;insurancePlan=-1#" data-test="more-insurances-link">View All...</a></li>\r\n</ul>\r\n</div>\r\n<div class="js-link-column sg-side-short-list specialties-links-id ">\r\n<h3>Specialties</h3>\r\n<ul class="section-set">\r\n<li class="specialty"><a class="specialty" title="" href="https://www.zocdoc.com/primary-care-doctors/new-york-46063pm">Primary Care Doctor</a></li>\r\n<li class="specialty">Travel Medicine Specialist</li>\r\n<li class="specialty">Family Physician</li>\r\n</ul>\r\n</div>', 'uk', 'Morbi', '', 'Travel Medicine Specialist Family Physician', '1436626084.jpg', '1436682980.jpg'),
(6, 1, 'Dr. Rita Bhaduri', '', 'ritabhaduri@gmail.com', '5d80253b1cd5e5d4ca5ed539f4d72052', 'DDS', 'American Board of Dental Public Health', 1, 0, '<div class="js-link-column sg-side-short-list  ">\r\n<h3>Board Certifications</h3>\r\n<ul class="section-set">\r\n<li class="">American Board of Dental Public Health</li>\r\n</ul>\r\n</div>\r\n<div class="js-link-column sg-side-short-list  ">\r\n<h3>Professional Memberships</h3>\r\n<ul class="section-set">\r\n<li class="">National Society of Dental Practitioners</li>\r\n<li class="">New York State Dental Association</li>\r\n<li class="">New York County Dental Society</li>\r\n</ul>\r\n</div>\r\n<div class="js-link-column sg-side-short-list  ">\r\n<h3>Awards and Publications</h3>\r\n<ul class="section-set">\r\n<li class="">Dr. Marina Mats was named "AMERICA''S TOP DENTISTS" by Consumer Research Council of America for the last 5 years.</li>\r\n<li class="">Invisalign Certified</li>\r\n</ul>\r\n</div>\r\n<div class="js-link-column sg-side-short-list insurancesection insurances-links-id ">\r\n<h3>In-Network Insurances</h3>\r\n<ul class="section-set">\r\n<li class=""><a class="" title="" href="https://www.zocdoc.com/dentists/aetna-212d">Aetna</a></li>\r\n<li class=""><a class="" title="" href="https://www.zocdoc.com/dentists/aig-215d">AIG</a></li>\r\n<li class=""><a class="" title="" href="https://www.zocdoc.com/dentists/ameritas-218d">Ameritas</a></li>\r\n<li><a class="moreLink" href="https://www.zocdoc.com/dentist/marina-mats-dds-10124?LocIdent=10656&amp;reason_visit=12&amp;insuranceCarrier=-1&amp;insurancePlan=-1#" data-test="more-insurances-link">View All...</a></li>\r\n</ul>\r\n</div>\r\n<div class="js-link-column sg-side-short-list specialties-links-id ">\r\n<h3>Specialties</h3>\r\n<ul class="section-set">\r\n<li class="specialty"><a class="specialty" title="" href="https://www.zocdoc.com/dentists/new-york-46063pm">Dentist</a></li>\r\n<li class="specialty">Dental Pain Specialist</li>\r\n<li class="specialty">Cosmetic Dentist</li>\r\n</ul>\r\n</div>', 'India', 'Morbi', '', 'Dental', '1436626382.jpg', '1436682999.jpg'),
(7, 1, 'Dr. Bhoomi PAtel', '', 'bhoomi.patel@ymail.com', '1140625ad15023acf463ed481c16400a', 'BHMS', 'Superviser', 5, 0, '<div class="js-link-column sg-side-short-list  ">\r\n<h3>Education</h3>\r\n<ul class="section-set">\r\n<li class="">Dental School - New York University</li>\r\n<li class="">Veterans Affairs New York Harbor Healthcare System, Brooklyn (Residency)</li>\r\n</ul>\r\n</div>\r\n<div class="js-link-column sg-side-short-list  ">\r\n<h3>Hospital Affiliations</h3>\r\n<ul class="section-set">\r\n<li class="hospitalAffiliations"><a class="hospitalAffiliations" title="" href="https://www.zocdoc.com/hospital/new-york-hospital-queens-967">New York Hospital Queens</a></li>\r\n</ul>\r\n</div>\r\n<div class="js-link-column sg-side-short-list languages-links ">\r\n<h3>Languages Spoken</h3>\r\n<ul class="section-set">\r\n<li class="language"><a class="language" title="" href="https://www.zocdoc.com/languages/english-1">English</a></li>\r\n<li class="language"><a class="language" title="" href="https://www.zocdoc.com/languages/spanish-3">Spanish</a></li>\r\n</ul>\r\n</div>\r\n<div class="js-link-column sg-side-short-list  ">\r\n<h3>Professional Memberships</h3>\r\n<ul class="section-set">\r\n<li class="">American Dental Association</li>\r\n<li class="">New York State Dental Association</li>\r\n<li class="">Academy of General Dentistry</li>\r\n<li class="">Academy of Laser Dentistry</li>\r\n</ul>\r\n</div>\r\n<div class="js-link-column sg-side-short-list  ">\r\n<h3>Awards and Publications</h3>\r\n<ul class="section-set">\r\n<li class="">Fellow, Academy of General Dentistry</li>\r\n<li class="">Mastership, Academy of Laser Dentistry</li>\r\n<li class="">Fellowship, American Society of Lasers in Medicine and Surgery</li>\r\n<li class="">Fellowship, International Academy of Dento-Facial Esthetics</li>\r\n<li class="">Author - Atlas of Laser Applications in Dentistry</li>\r\n<li class="">Co-Author - Principles and Practice of Laser Dentistry</li>\r\n<li class="">Co-Author - Lasers in General Dentistry</li>\r\n<li class="">Guest Editor - Textbook of Lasers in Clinical Dentistry</li>\r\n</ul>\r\n</div>', 'india', 'Morbi', '', 'Hart Surjan', '1436626596.jpg', '1436683014.jpg'),
(8, 1, 'Dr. Naimis Kalariya', '', 'naimiskalariya@gmail.com', 'ad3ae1f3eee7119267ac0d17f9396d62', 'MD', '', 2, 0, '<h3>Professional Statement</h3>\r\n<p>Dr. Karl Bauer is a licensed Chiropractor serving the New York community. <br /><br />Dr. Karl Bauer has been freeing people from pain in the clinic in New York, NY. As a Chiropractor with experience, Dr. Bauer is committed to promoting optimal health and well being of patients. <br /><br />Dr. Bauer uses a "whole person approach". This approach to wellness means looking for underlying causes of any disturbance or disruption (which may or may not be causing symptoms at the time) and make whatever interventions and lifestyle adjustments that would optimize the conditions for normal function. Using this unique approach, Dr. Bauer is able to help you to accelerate and/or maintain your journey to good health.</p>', 'India', 'Morbi', '', 'Special Treet,', '1436626799.jpg', ''),
(9, 1, 'Dr. Harry Javed', '', 'drherry@gmail.com', '7be3cf6136b6ea767af0199ceff9bc89', 'DSD', 'Super market', 3, 0, '<div class="js-link-column sg-side-short-list  ">\r\n<h3>Education</h3>\r\n<ul class="section-set">\r\n<li class="">Dental School - New York University</li>\r\n<li class="">University of Pittsburgh (Bachelor&rsquo;s)</li>\r\n</ul>\r\n</div>\r\n<div class="js-link-column sg-side-short-list languages-links ">\r\n<h3>Languages Spoken</h3>\r\n<ul class="section-set">\r\n<li class="language"><a class="language" title="" href="https://www.zocdoc.com/languages/english-1">English</a></li>\r\n</ul>\r\n</div>\r\n<div class="js-link-column sg-side-short-list  ">\r\n<h3>Professional Memberships</h3>\r\n<ul class="section-set">\r\n<li class="">American Dental Association</li>\r\n<li class="">New York County Dental Society</li>\r\n<li class="">Academy of General Dentistry</li>\r\n</ul>\r\n</div>\r\n<div class="js-link-column sg-side-short-list  ">\r\n<h3>Awards and Publications</h3>\r\n<ul class="section-set">\r\n<li class="">Preceptorship in Prosthetics - NYU Dental School</li>\r\n</ul>\r\n</div>\r\n<div class="js-link-column sg-side-short-list insurancesection insurances-links-id ">\r\n<h3>In-Network Insurances</h3>\r\n<ul class="section-set">\r\n<li class=""><a class="" title="" href="https://www.zocdoc.com/dentists/aetna-212d">Aetna</a></li>\r\n<li class=""><a class="" title="" href="https://www.zocdoc.com/dentists/cigna-222d">Cigna</a></li>\r\n</ul>\r\n</div>', 'japan', 'Morbi', '', 'Hard', '1436626801.jpg', ''),
(10, 1, 'Dr. Tammy Hangama', '', 'tammyhangama@gmail.com', 'c470cc7557c0f0925ff07b3ac6ec045c', 'MS', '', 5, 0, '<h3>Education</h3>\r\n<ul class="section-set">\r\n<li class="">New York Chiropractic College</li>\r\n<li class="">State University of New York, Stony Brook (Bachelor&rsquo;s)</li>\r\n</ul>\r\n<h3>Professional Statement</h3>\r\n<p>Dr. Tammy Bohn&eacute; achieved accredited C.C.S.P. status through New York Chiropractic College as a Certified Chiropractic Sports Practitioner in 1998. In addition to post-graduate study in scoliosis management, she has completed coursework in Craniosacral Therapy from The Upledger Institute, as well as chiropractic nutrition and neurology studies from various institutions. She has published articles on the spine and posture and has been referenced in publications such as Psychology Today. <br />Dr. Bohn&eacute; graduated from New York Chiropractic College in 1992 as a member of the Phi Chi Omega Honor Society. Although she initially studied music, Dr. Bohn&eacute; holds a bachelor of science degree in biology from Stony Brook University with an area of interest</p>', 'India', 'Morbi', '', 'Denstist,', '1436626901.jpeg', ''),
(11, 1, 'Dr. Nagajan bhutiya', '', 'ngbhutiya@yahoo.com', '2c1db5edc690796702620f179a08d9b0', 'MD', 'marster', 10, 0, '<div class="js-link-column sg-side-short-list  ">\r\n<h3>Education</h3>\r\n<ul class="section-set">\r\n<li class="">Dental School - University of Pittsburgh</li>\r\n</ul>\r\n</div>\r\n<div class="js-link-column sg-side-short-list languages-links ">\r\n<h3>Languages Spoken</h3>\r\n<ul class="section-set">\r\n<li class="language"><a class="language" title="" href="https://www.zocdoc.com/languages/english-1">English</a></li>\r\n<li class="language"><a class="language" title="" href="https://www.zocdoc.com/languages/spanish-3">Spanish</a></li>\r\n<li class="cutoffMore"><a class="moreLink" data-test="">View All...</a></li>\r\n</ul>\r\n</div>\r\n<div class="js-link-column sg-side-short-list  ">\r\n<h3>Professional Memberships</h3>\r\n<ul class="section-set">\r\n<li class="">American Dental Association</li>\r\n</ul>\r\n</div>\r\n<div class="js-link-column sg-side-short-list insurancesection insurances-links-id ">\r\n<h3>In-Network Insurances</h3>\r\n<ul class="section-set">\r\n<li class=""><a class="" title="" href="https://www.zocdoc.com/dentists/aetna-212d">Aetna</a></li>\r\n<li class=""><a class="" title="" href="https://www.zocdoc.com/dentists/assurant-employee-benefits-220d">Assurant Employee Benefits</a></li>\r\n<li class=""><a class="" title="" href="https://www.zocdoc.com/dentists/cigna-222d">Cigna</a></li>\r\n</ul>\r\n</div>', 'india', 'Morbi', '', 'hart and chamdi', '1436627077.jpg', ''),
(12, 1, 'Dr. Naresh Pandya', '', 'nareshpandya@gmail.com', 'a877e0e4624db0e261eeff361edbd17c', 'DMD', 'Sr. Medi offricer', 6, 0, '<div class="js-link-column sg-side-short-list  ">\r\n<h3>Education</h3>\r\n<ul class="section-set">\r\n<li class="">Dental School - Medical University of South Carolina</li>\r\n<li class="">Montefiore Medical Center (Residency)</li>\r\n</ul>\r\n</div>\r\n<div class="js-link-column sg-side-short-list languages-links ">\r\n<h3>Languages Spoken</h3>\r\n<ul class="section-set">\r\n<li class="language"><a class="language" title="" href="https://www.zocdoc.com/languages/english-1">English</a></li>\r\n</ul>\r\n</div>\r\n<div class="js-link-column sg-side-short-list insurancesection insurances-links-id ">\r\n<h3>In-Network Insurances</h3>\r\n<ul class="section-set">\r\n<li class=""><a class="" title="" href="https://www.zocdoc.com/dentists/cigna-222d">Cigna</a></li>\r\n<li class=""><a class="" title="" href="https://www.zocdoc.com/dentists/empire-blue-cross-blue-shield-230d">Empire Blue Cross Blue Shield</a></li>\r\n<li class=""><a class="" title="" href="https://www.zocdoc.com/dentists/guardian-235d">Guardian</a></li>\r\n</ul>\r\n</div>', 'nepal', 'Morbi', '', 'Dava', '1436627360.jpg', ''),
(13, 1, 'Dr. Nidhi Surani', '', 'nidhisurani@gmail.com', '28592334ffbdfe5ebea9ee0f5c52d7d6', 'DDS', 'Jr. Superviser', 3, 0, '<div class="js-link-column sg-side-short-list  ">\r\n<h3>Education</h3>\r\n<ul class="section-set">\r\n<li class="">Dental School - University of Tennessee</li>\r\n<li class="">University of Florida, Residency in General Dentistry</li>\r\n</ul>\r\n</div>\r\n<div class="js-link-column sg-side-short-list languages-links ">\r\n<h3>Languages Spoken</h3>\r\n<ul class="section-set">\r\n<li class="language"><a class="language" title="" href="https://www.zocdoc.com/languages/english-1">English</a></li>\r\n<li class="language"><a class="language" title="" href="https://www.zocdoc.com/languages/spanish-3">Spanish</a></li>\r\n<li class="language"><a class="language" title="" href="https://www.zocdoc.com/languages/arabic-10">Arabic</a></li>\r\n</ul>\r\n</div>\r\n<div class="js-link-column sg-side-short-list  ">\r\n<h3>Board Certifications</h3>\r\n<ul class="section-set">\r\n<li class="">American Board of Dental Public Health</li>\r\n</ul>\r\n</div>\r\n<div class="js-link-column sg-side-short-list  ">\r\n<h3>Professional Memberships</h3>\r\n<ul class="section-set">\r\n<li class="">International Congress of Oral Implantologists</li>\r\n</ul>\r\n</div>\r\n<div class="js-link-column sg-side-short-list  ">\r\n<h3>Awards and Publications</h3>\r\n<ul class="section-set">\r\n<li class="">Fellowship(ICOI</li>\r\n</ul>\r\n</div>\r\n<div class="js-link-column sg-side-short-list insurancesection insurances-links-id ">\r\n<h3>In-Network Insurances</h3>\r\n<ul class="section-set">\r\n<li class=""><a class="" title="" href="https://www.zocdoc.com/dentists/aetna-212d">Aetna</a></li>\r\n<li class=""><a class="" title="" href="https://www.zocdoc.com/dentists/aig-215d">AIG</a></li>\r\n<li class=""><a class="" title="" href="https://www.zocdoc.com/dentists/ameritas-218d">Ameritas</a></li>\r\n<li><a class="moreLink" href="https://www.zocdoc.com/dentist/diana-tadros-dds-103469?LocIdent=10656&amp;reason_visit=12&amp;insuranceCarrier=-1&amp;insurancePlan=-1#" data-test="more-insurances-link">View All...</a></li>\r\n</ul>\r\n</div>\r\n<div class="js-link-column sg-side-short-list specialties-links-id ">\r\n<h3>Specialties</h3>\r\n<ul class="section-set">\r\n<li class="specialty"><a class="specialty" title="" href="https://www.zocdoc.com/dentists/new-york-46063pm">Dentist</a></li>\r\n<li class="specialty">Cosmetic Dentist</li>\r\n</ul>\r\n</div>', 'uae', 'Morbi', '', 'Cosmetic Dentist', '1436627574.gif', ''),
(14, 1, 'Dr. John Smith', '', 'dr.johnsmith121@gmail.com', '662324a3c0dc4d460b1e1aa7f535ccc4', 'DMS', 'hod', 7, 0, '<div class="js-link-column sg-side-short-list  ">\r\n<h3>Education</h3>\r\n<ul class="section-set">\r\n<li class="">Dental School - University of Pittsburgh</li>\r\n</ul>\r\n</div>\r\n<div class="js-link-column sg-side-short-list languages-links ">\r\n<h3>Languages Spoken</h3>\r\n<ul class="section-set">\r\n<li class="language"><a class="language" title="" href="https://www.zocdoc.com/languages/english-1">English</a></li>\r\n<li class="language"><a class="language" title="" href="https://www.zocdoc.com/languages/spanish-3">Spanish</a></li>\r\n<li class="cutoffMore"><a class="moreLink" data-test="">View All...</a></li>\r\n</ul>\r\n</div>\r\n<div class="js-link-column sg-side-short-list  ">\r\n<h3>Professional Memberships</h3>\r\n<ul class="section-set">\r\n<li class="">American Dental Association</li>\r\n</ul>\r\n</div>\r\n<div class="js-link-column sg-side-short-list insurancesection insurances-links-id ">\r\n<h3>In-Network Insurances</h3>\r\n<ul class="section-set">\r\n<li class=""><a class="" title="" href="https://www.zocdoc.com/dentists/aetna-212d">Aetna</a></li>\r\n<li class=""><a class="" title="" href="https://www.zocdoc.com/dentists/assurant-employee-benefits-220d">Assurant Employee Benefits</a></li>\r\n<li class=""><a class="" title="" href="https://www.zocdoc.com/dentists/cigna-222d">Cigna</a></li>\r\n</ul>\r\n</div>', 'china', 'Morbi', '', 'Cosmetic Dentist', '1436627831.jpg', ''),
(15, 1, 'Dr. Sidharth sinh', '', 'doctor@yahoo.com', 'ede997b0caf2ec398110d79d9eba38bb', 'DMD', 'Superviser', 13, 0, '<div class="js-link-column sg-side-short-list  ">\r\n<h3>Education</h3>\r\n<ul class="section-set">\r\n<li class="">Dental School - University of Pittsburgh</li>\r\n</ul>\r\n</div>\r\n<div class="js-link-column sg-side-short-list languages-links ">\r\n<h3>Languages Spoken</h3>\r\n<ul class="section-set">\r\n<li class="language"><a class="language" title="" href="https://www.zocdoc.com/languages/english-1">English</a></li>\r\n<li class="language"><a class="language" title="" href="https://www.zocdoc.com/languages/spanish-3">Spanish</a></li>\r\n<li class="cutoffMore"><a class="moreLink" data-test="">View All...</a></li>\r\n</ul>\r\n</div>\r\n<div class="js-link-column sg-side-short-list  ">\r\n<h3>Professional Memberships</h3>\r\n<ul class="section-set">\r\n<li class="">American Dental Association</li>\r\n</ul>\r\n</div>\r\n<div class="js-link-column sg-side-short-list insurancesection insurances-links-id ">\r\n<h3>In-Network Insurances</h3>\r\n<ul class="section-set">\r\n<li class=""><a class="" title="" href="https://www.zocdoc.com/dentists/aetna-212d">Aetna</a></li>\r\n<li class=""><a class="" title="" href="https://www.zocdoc.com/dentists/assurant-employee-benefits-220d">Assurant Employee Benefits</a></li>\r\n<li class=""><a class="" title="" href="https://www.zocdoc.com/dentists/cigna-222d">Cigna</a></li>\r\n<li><a class="moreLink" href="https://www.zocdoc.com/dentist/james-muzzi-dmd-70878?LocIdent=45293&amp;reason_visit=12&amp;insuranceCarrier=-1&amp;insurancePlan=-1#" data-test="more-insurances-link">View All...</a></li>\r\n</ul>\r\n</div>\r\n<div class="js-link-column sg-side-short-list specialties-links-id ">\r\n<h3>Specialties</h3>\r\n<ul class="section-set">\r\n<li class="specialty"><a class="specialty" title="" href="https://www.zocdoc.com/dentists/new-york-46063pm">Dentist</a></li>\r\n<li class="specialty">Cosmetic Dentist</li>\r\n</ul>\r\n</div>', 'Indonesia', 'Morbi', '', 'Cosmetic Dentist', '1436628035.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
CREATE TABLE IF NOT EXISTS `media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `name`) VALUES
(1, '1431162923.jpg'),
(2, '1431165946.png'),
(3, '1431175568.png'),
(4, '1431175596.png'),
(5, '1431175630.png'),
(6, '1431175652.png'),
(7, '1431175685.png');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(300) NOT NULL,
  `slug` varchar(300) NOT NULL,
  `content` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `content`) VALUES
(1, 'Feature of this Applications', 'feature', '<h3><strong>Maintenance Services</strong></h3>\r\n<p>Today, we buy local services (think: plumbing, air conditioning, handyman, carpet cleaning, appliance repair) pretty much the same way our grandparents did, using a directory. It is true there are search engines and review sites, but even after spending hours scanning results and reading reviews, we still have to check references, call around to compare prices and to schedule a time for an appointment, and then give up half a day waiting for the technician to arrive. When the technician finally shows up to do the work, we are presented with a bill that is usually a complete surprise, and trying to get someone to come back to fix something requires even more work (assuming they return our calls at all). Needless to say, the current process is broken.</p>\r\n<p>The good news is that we have spent a lot of time figuring out how to do it better. We looked at every part of the current process and tried to improve on each step. We call it AtoZ SERVICES - a faster, easier, revolutionary way to book and buy local services online.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Features :</strong></p>\r\n<ol>\r\n<li>All in one Services</li>\r\n<li>We have experienced services persons who gives you satisfactory services</li>\r\n<li>Service available any where in city.</li>\r\n<li>Accepts also all kind of major jobs</li>\r\n<li>On your committed time our service men visit your site and serve you.</li>\r\n<li>We also take our customer feedback about service.</li>\r\n</ol>'),
(3, 'Help', 'help', '<p><strong>How to use Application</strong></p>\r\n<p>easy guide to use this application. This introfuction will help you and also instruct you about our service and facilities.</p>\r\n<p><strong>Register your Self&nbsp;</strong></p>\r\n<p>Step 1 : Open Account Tab</p>\r\n<p><img src="http://gujjurocks.com/servpro/userfiles/contents/origional/1431175568.png" alt="" /></p>\r\n<p>Register your self in this tab. This will generate identity in our server your email address is mendetory.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>How to Add Appointment for Service</strong></p>\r\n<p><strong>Step 1&nbsp;: Open AtoZ Tab</strong></p>\r\n<p>This tab will list&nbsp;all Services which we provide.&nbsp;</p>\r\n<p><img src="http://gujjurocks.com/servpro/userfiles/contents/origional/1431175596.png" alt="" /></p>\r\n<p><strong>Step 2&nbsp;: Choose One service</strong></p>\r\n<p><strong>Step 3 : Add Appointment Details&nbsp;</strong></p>\r\n<p>You need to set your Address, Date and Time of service appointment. On this date our service men will visit you.</p>\r\n<p><img src="http://gujjurocks.com/servpro/userfiles/contents/origional/1431175630.png" alt="" />&nbsp;</p>\r\n<p><strong>Step 4 : Add Details of your appliances service</strong></p>\r\n<p>You can enter text and also attach Image of your appliances. Also can add PROMO CODE here this will help you to gives benifit of our offers.</p>\r\n<p><img src="http://gujjurocks.com/servpro/userfiles/contents/origional/1431175652.png" alt="" /></p>\r\n<p><strong>Step 5 : Click on Send and exit.</strong></p>\r\n<p>&nbsp;</p>\r\n<p><strong>List your order&nbsp;</strong></p>\r\n<p>Click on jobs tab to list your jobs order.</p>\r\n<p><img src="http://gujjurocks.com/servpro/userfiles/contents/origional/1431175685.png" alt="" />&nbsp;</p>');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
CREATE TABLE IF NOT EXISTS `register` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unique_code` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `name` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `image` varchar(300) NOT NULL,
  `city` varchar(30) NOT NULL,
  `zip` varchar(30) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  `imei` varchar(60) NOT NULL,
  `gcm_code` longtext NOT NULL,
  `notification` int(11) NOT NULL,
  `newslater` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `unique_code`, `email`, `name`, `password`, `phone`, `image`, `city`, `zip`, `reg_date`, `status`, `imei`, `gcm_code`, `notification`, `newslater`) VALUES
(1, '154rb1', 'subhash@gmail.com', 'subhasj', 'ede997b0caf2ec398110d79d9eba38bb', '9909038886', '', 'morbi', '313131', '2015-09-18 10:31:46', 0, '355607060091520', 'APA91bFQEbDWOdDQG2UT-9jBgrYl7v3e46u9mSeGz8VqzJoQuc7mJsI7WhGoVv-ItWcS1JuaDrvBPLCGzUULVEdYbbmsYASRVEUe3g2boTEEpOsiirgQh-Y', 1, 1),
(2, '', 'sanghani@gmail.com', 'sanghani', 'ede997b0caf2ec398110d79d9eba38bb', '9909038886', '', '', '', '2015-07-18 11:41:00', 0, '355607060091520', 'APA91bFQEbDWOdDQG2UT-9jBgrYl7v3e46u9mSeGz8VqzJoQuc7mJsI7WhGoVv-ItWcS1JuaDrvBPLCGzUULVEdYbbmsYASRVEUe3g2boTEEpOsiirgQh-Y', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE IF NOT EXISTS `reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `dr_id` int(11) NOT NULL,
  `cl_id` int(11) NOT NULL,
  `rating` double NOT NULL,
  `review` varchar(500) NOT NULL,
  `on_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `approved` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `dr_id`, `cl_id`, `rating`, `review`, `on_date`, `approved`) VALUES
(1, 1, 1, 1, 4, 'nice', '2015-07-10 14:27:12', 0),
(2, 1, 1, 1, 5, 'how''s is plan', '2015-07-10 14:43:33', 0);

-- --------------------------------------------------------

--
-- Table structure for table `service_charges`
--

DROP TABLE IF EXISTS `service_charges`;
CREATE TABLE IF NOT EXISTS `service_charges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clinic_id` int(11) NOT NULL,
  `dr_id` int(11) NOT NULL,
  `service` varchar(300) NOT NULL,
  `charge` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `service_charges`
--

INSERT INTO `service_charges` (`id`, `clinic_id`, `dr_id`, `service`, `charge`) VALUES
(1, 1, 1, 'Teath Cleaning', 150),
(2, 1, 1, 'Cover on teath', 800),
(3, 1, 1, 'New Teeth placement', 1200),
(4, 1, 1, 'Teeth CHogathu', 3000);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `type` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`,`type`),
  UNIQUE KEY `title_2` (`title`,`type`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `title`, `type`) VALUES
(21, ' Internist', 'speciality'),
(9, ' Love As', 'speciality'),
(8, ' Special Treet', 'speciality'),
(38, 'Cosmetic Dentist', 'speciality'),
(37, 'Dava', 'speciality'),
(2, 'Denstist', 'speciality'),
(24, 'Dental', 'speciality'),
(27, 'Hard', 'speciality'),
(36, 'hart and chamdi', 'speciality'),
(25, 'Hart Surjan', 'speciality'),
(10, 'Heart', 'speciality'),
(14, 'Hematologist', 'speciality'),
(15, 'Internist', 'speciality'),
(11, 'Kidney', 'speciality'),
(6, 'MD', 'degree'),
(5, 'MMBS', 'degree'),
(1, 'Nurology', 'speciality'),
(13, 'Oncologist', 'speciality'),
(3, 'Orthopadic', 'speciality'),
(12, 'Primary Care Doctor', 'speciality'),
(22, 'Pulmonologist Primary Care Docto', 'speciality'),
(26, 'Special Treet', 'speciality'),
(23, 'Travel Medicine Specialist Family Physician', 'speciality'),
(4, 'Urology', 'speciality');

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

DROP TABLE IF EXISTS `timetable`;
CREATE TABLE IF NOT EXISTS `timetable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dr_id` int(11) NOT NULL,
  `cl_id` int(11) NOT NULL,
  `day` varchar(20) NOT NULL,
  `during` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=149 ;

--
-- Dumping data for table `timetable`
--

INSERT INTO `timetable` (`id`, `dr_id`, `cl_id`, `day`, `during`) VALUES
(23, 1, 1, 'mon', '8:30 - 9:00 AM'),
(24, 1, 1, 'tue', '8:30 - 9:00 AM'),
(25, 1, 1, 'wed', '8:30 - 9:00 AM'),
(26, 1, 1, 'thu', '8:30 - 9:00 AM'),
(27, 1, 1, 'fri', '8:30 - 9:00 AM'),
(28, 1, 1, 'sat', '8:30 - 9:00 AM'),
(29, 1, 1, 'sun', '8:30 - 9:00 AM'),
(30, 1, 1, 'mon', '9:00 - 9:30 AM'),
(31, 1, 1, 'tue', '9:00 - 9:30 AM'),
(32, 1, 1, 'wed', '9:00 - 9:30 AM'),
(33, 1, 1, 'thu', '9:00 - 9:30 AM'),
(34, 1, 1, 'fri', '9:00 - 9:30 AM'),
(35, 1, 1, 'sat', '9:00 - 9:30 AM'),
(36, 1, 1, 'sun', '9:00 - 9:30 AM'),
(37, 1, 1, 'mon', '9:30 - 10:00 AM'),
(38, 1, 1, 'tue', '9:30 - 10:00 AM'),
(39, 1, 1, 'wed', '9:30 - 10:00 AM'),
(40, 1, 1, 'thu', '9:30 - 10:00 AM'),
(41, 1, 1, 'fri', '9:30 - 10:00 AM'),
(42, 1, 1, 'sat', '9:30 - 10:00 AM'),
(43, 1, 1, 'sun', '9:30 - 10:00 AM'),
(44, 1, 1, 'mon', '10:00 - 10:30 AM'),
(45, 1, 1, 'tue', '10:00 - 10:30 AM'),
(46, 1, 1, 'wed', '10:00 - 10:30 AM'),
(47, 1, 1, 'thu', '10:00 - 10:30 AM'),
(48, 1, 1, 'fri', '10:00 - 10:30 AM'),
(49, 1, 1, 'sat', '10:00 - 10:30 AM'),
(50, 1, 1, 'sun', '10:00 - 10:30 AM'),
(51, 1, 1, 'mon', '10:30 - 11:00 AM'),
(52, 1, 1, 'tue', '10:30 - 11:00 AM'),
(53, 1, 1, 'wed', '10:30 - 11:00 AM'),
(54, 1, 1, 'thu', '10:30 - 11:00 AM'),
(55, 1, 1, 'fri', '10:30 - 11:00 AM'),
(56, 1, 1, 'sat', '10:30 - 11:00 AM'),
(57, 1, 1, 'sun', '10:30 - 11:00 AM'),
(58, 1, 1, 'mon', '11:00 - 11:30 AM'),
(59, 1, 1, 'tue', '11:00 - 11:30 AM'),
(60, 1, 1, 'wed', '11:00 - 11:30 AM'),
(61, 1, 1, 'thu', '11:00 - 11:30 AM'),
(62, 1, 1, 'fri', '11:00 - 11:30 AM'),
(63, 1, 1, 'sat', '11:00 - 11:30 AM'),
(64, 1, 1, 'sun', '11:00 - 11:30 AM'),
(65, 1, 1, 'mon', '11:30 - 12:00 PM'),
(66, 1, 1, 'tue', '11:30 - 12:00 PM'),
(67, 1, 1, 'wed', '11:30 - 12:00 PM'),
(68, 1, 1, 'thu', '11:30 - 12:00 PM'),
(69, 1, 1, 'fri', '11:30 - 12:00 PM'),
(70, 1, 1, 'sat', '11:30 - 12:00 PM'),
(71, 1, 1, 'mon', '12:00 - 12:30 PM'),
(72, 1, 1, 'tue', '12:00 - 12:30 PM'),
(73, 1, 1, 'wed', '12:00 - 12:30 PM'),
(74, 1, 1, 'thu', '12:00 - 12:30 PM'),
(75, 1, 1, 'fri', '12:00 - 12:30 PM'),
(76, 1, 1, 'sat', '12:00 - 12:30 PM'),
(77, 1, 1, 'mon', '12:30 - 01:00 PM'),
(78, 1, 1, 'tue', '12:30 - 01:00 PM'),
(79, 1, 1, 'wed', '12:30 - 01:00 PM'),
(80, 1, 1, 'thu', '12:30 - 01:00 PM'),
(81, 1, 1, 'fri', '12:30 - 01:00 PM'),
(82, 1, 1, 'sat', '12:30 - 01:00 PM'),
(83, 1, 1, 'mon', '02:00 - 02:30 PM'),
(84, 1, 1, 'tue', '02:00 - 02:30 PM'),
(85, 1, 1, 'wed', '02:00 - 02:30 PM'),
(86, 1, 1, 'thu', '02:00 - 02:30 PM'),
(87, 1, 1, 'fri', '02:00 - 02:30 PM'),
(88, 1, 1, 'sat', '02:00 - 02:30 PM'),
(89, 1, 1, 'mon', '02:30 - 03:00 PM'),
(90, 1, 1, 'tue', '02:30 - 03:00 PM'),
(91, 1, 1, 'wed', '02:30 - 03:00 PM'),
(92, 1, 1, 'thu', '02:30 - 03:00 PM'),
(93, 1, 1, 'fri', '02:30 - 03:00 PM'),
(94, 1, 1, 'sat', '02:30 - 03:00 PM'),
(95, 1, 1, 'mon', '03:00 - 03:30 PM'),
(96, 1, 1, 'tue', '03:00 - 03:30 PM'),
(97, 1, 1, 'wed', '03:00 - 03:30 PM'),
(98, 1, 1, 'thu', '03:00 - 03:30 PM'),
(99, 1, 1, 'fri', '03:00 - 03:30 PM'),
(100, 1, 1, 'sat', '03:00 - 03:30 PM'),
(101, 1, 1, 'mon', '04:00 - 04:30 PM'),
(102, 1, 1, 'tue', '04:00 - 04:30 PM'),
(103, 1, 1, 'wed', '04:00 - 04:30 PM'),
(104, 1, 1, 'thu', '04:00 - 04:30 PM'),
(105, 1, 1, 'fri', '04:00 - 04:30 PM'),
(106, 1, 1, 'sat', '04:00 - 04:30 PM'),
(107, 1, 1, 'mon', '04:30 - 05:00 PM'),
(108, 1, 1, 'tue', '04:30 - 05:00 PM'),
(109, 1, 1, 'wed', '04:30 - 05:00 PM'),
(110, 1, 1, 'thu', '04:30 - 05:00 PM'),
(111, 1, 1, 'fri', '04:30 - 05:00 PM'),
(112, 1, 1, 'sat', '04:30 - 05:00 PM'),
(113, 1, 1, 'mon', '05:00 - 05:30 PM'),
(114, 1, 1, 'tue', '05:00 - 05:30 PM'),
(115, 1, 1, 'wed', '05:00 - 05:30 PM'),
(116, 1, 1, 'thu', '05:00 - 05:30 PM'),
(117, 1, 1, 'fri', '05:00 - 05:30 PM'),
(118, 1, 1, 'sat', '05:00 - 05:30 PM'),
(119, 1, 1, 'mon', '06:30 - 07:00 PM'),
(120, 1, 1, 'tue', '06:30 - 07:00 PM'),
(121, 1, 1, 'wed', '06:30 - 07:00 PM'),
(122, 1, 1, 'thu', '06:30 - 07:00 PM'),
(123, 1, 1, 'fri', '06:30 - 07:00 PM'),
(124, 1, 1, 'sat', '06:30 - 07:00 PM'),
(125, 1, 1, 'mon', '07:00 - 07:30 PM'),
(126, 1, 1, 'tue', '07:00 - 07:30 PM'),
(127, 1, 1, 'wed', '07:00 - 07:30 PM'),
(128, 1, 1, 'thu', '07:00 - 07:30 PM'),
(129, 1, 1, 'fri', '07:00 - 07:30 PM'),
(130, 1, 1, 'sat', '07:00 - 07:30 PM'),
(131, 1, 1, 'mon', '07:30 - 08:00 PM'),
(132, 1, 1, 'tue', '07:30 - 08:00 PM'),
(133, 1, 1, 'wed', '07:30 - 08:00 PM'),
(134, 1, 1, 'thu', '07:30 - 08:00 PM'),
(135, 1, 1, 'fri', '07:30 - 08:00 PM'),
(136, 1, 1, 'sat', '07:30 - 08:00 PM'),
(137, 1, 1, 'mon', '08:00 - 08:30 PM'),
(138, 1, 1, 'tue', '08:00 - 08:30 PM'),
(139, 1, 1, 'wed', '08:00 - 08:30 PM'),
(140, 1, 1, 'thu', '08:00 - 08:30 PM'),
(141, 1, 1, 'fri', '08:00 - 08:30 PM'),
(142, 1, 1, 'sat', '08:00 - 08:30 PM'),
(143, 1, 1, 'mon', '08:30 - 09:00 PM'),
(144, 1, 1, 'tue', '08:30 - 09:00 PM'),
(145, 1, 1, 'wed', '08:30 - 09:00 PM'),
(146, 1, 1, 'thu', '08:30 - 09:00 PM'),
(147, 1, 1, 'fri', '08:30 - 09:00 PM'),
(148, 1, 1, 'sat', '08:30 - 09:00 PM');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  `email` varchar(255) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `type` varchar(5) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `active`, `type`) VALUES
(1, 'admin', 'ede997b0caf2ec398110d79d9eba38bb', 'admin@gmail.com', 1, 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
