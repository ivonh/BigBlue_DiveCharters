-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
-- Developed by Hans Telford for TAFE Coomera students undertaking ICTPRG527 and ICTPRG503 (core units of Diploma Software Development)
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2019 at 06:34 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bigblue_divecharters`
--
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bigblue_divecharters` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `bigblue_divecharters`;
-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;

CREATE TABLE IF NOT EXISTS `customers` (
  `Customer_ID` varchar(6) NOT NULL,
  `FName` varchar(25) NOT NULL,
  `LName` varchar(25) NOT NULL,
  `DateOfBirth` date NOT NULL,
  `Phone` varchar(25) NOT NULL,
  `Email` varchar(32) NOT NULL,
  `CertificationLevel` varchar(25) NOT NULL DEFAULT 'OW',
  `CertificationNumber` varchar(25) NOT NULL,
  `CertificationDate` date NOT NULL,
  `TrainingAgency` varchar(25) NOT NULL DEFAULT 'PADI',
  PRIMARY KEY (`Customer_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`Customer_ID`, `FName`, `LName`, `DateOfBirth`, `Phone`, `Email`, `CertificationLevel`, `CertificationNumber`, `CertificationDate`, `TrainingAgency`) VALUES
('C001', 'Alice', 'Langford', '1995-02-01', '0400-123-456', 'alicelangford@googlemail.com.au', 'OW', 'OW123123', '2017-04-03', 'PADI'),
('C002', 'Jason', 'Langford', '1993-06-30', '0401-987-987', 'jlangford@googlemail.com.au', 'OW', 'OW123124', '2017-04-03', 'PADI'),
('C003', 'Tai', 'Kryver', '1987-08-31', '0422-988-889', 'tk@hotnet.mail.com', 'ADV', '897654321', '2009-08-31', 'NAUI'),
('C004', 'Sally', 'Warren', '1970-12-11', '0430-456-456', 'swarren@hotnet.mail.com', 'ADV', 'S09876543', '2000-05-09', 'SSI'),
('C005', 'Amera', 'Talbot', '1996-03-18', '0430-666-777', 'ameratalbot@googlenet.com.au', 'OW', 'OW100567', '2012-04-26', 'PADI'),
('C006', 'Jim', 'Stamper', '2000-09-19', '0410-754-123', 'jimstamper@xyz.net.au', 'OW', 'B0123456', '2019-03-14', 'BSAC'),
('C007', 'Natasha', 'Murphy', '1999-11-17', '0401-999-333', 'n_murphy@googlenet.com.au', 'OW', 'OW110785', '2015-10-02', 'PADI'),
('C008', 'Peter', 'McKinlay', '1985-02-15', '0420-234-567', 'pmac@xyz.net.au', 'OW', '9234101', '2010-08-31', 'NASDS'),
('C009', 'Kim', 'Eistenfeld', '2000-01-24', '0432-456-999', 'keistenfeld@googlenet.com.au', 'OW', 'OW124675', '2018-04-08', 'PADI'),
('C010', 'Andrew', 'Petersen', '1996-05-27', '0410-548-123', 'apetersen@xyz.net.au', 'ADV', 'AD096785', '2016-11-18', 'PADI'),
('C011', 'Sina', 'Jazayeri', '2000-11-03', '0401-568-221', 'sina@googlenet.com.au', 'OW', 'OW138899', '2018-10-12', 'PADI'),
('C012', 'Anita', 'McPherson', '1993-02-09', '0420-567-888', 'amac@xyz.net.au', 'OW', 'OW138900', '2018-10-12', 'PADI'),
('C013', 'Joseph', 'Batteson', '1992-10-24', '0432-987-231', 'jbatteson@googlenet.com.au', 'OW', 'OW154789', '2018-04-08', 'PADI'),
('C014', 'Melissa', 'Masterson', '1999-05-12', '0410-765-321', 'melissa@xyz.net.au', 'ADV', 'AD096786', '2016-11-18', 'PADI'),
('C015', 'Karen', 'Langford', '1998-07-10', '0400-321-891', 'karenlangford@googlemail.com.au', 'OW', 'OW123125', '2017-04-03', 'PADI');

-- --------------------------------------------------------

--
-- Table structure for table `diveboats`
--

DROP TABLE IF EXISTS `diveboats`;

CREATE TABLE IF NOT EXISTS `diveboats` (
  `DiveBoat_ID` varchar(6) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Type` varchar(25) NOT NULL,
  `Length` int(11) NOT NULL,
  `Capacity` int(11) NOT NULL,
  `CallSign` varchar(12) NOT NULL,
  PRIMARY KEY (`DiveBoat_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diveboats`
--

INSERT INTO `diveboats` (`DiveBoat_ID`, `Name`, `Type`, `Length`, `Capacity`, `CallSign`) VALUES
('DB001', 'Reef Seeker', 'Aluminium', 12, 8, 'RS2AA'),
('DB002', 'Manta 1', 'Aluminium', 12, 8, 'Manta3BB'),
('DB003', 'Dive Ventura', 'Aluminium', 9, 6, 'RS3BB'),
('DB004', 'Dive Ventura 2', 'Aluminium', 9, 6, 'RS4CC');

-- --------------------------------------------------------

--
-- Table structure for table `divesites`
--
DROP TABLE IF EXISTS `divesites`;

CREATE TABLE IF NOT EXISTS `divesites` (
  `DiveSite_ID` varchar(6) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Location` varchar(25) NOT NULL,
  `MaxDepth` int(11) NOT NULL,
  `MinCert` varchar(25) NOT NULL,
  `Description` varchar(255) NOT NULL,
  PRIMARY KEY (`DiveSite_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `divesites`
--

INSERT INTO `divesites` (`DiveSite_ID`, `Name`, `Location`, `MaxDepth`, `MinCert`, `Description`) VALUES
('DS001', 'Scottish Prince Wreck', ' Southport', 12, 'OW', 'Sunk in 1887 the wreck is home to crayfish, rays, wobbegongs and many pelagic fish species'),
('DS002', 'Migaloo Reef', 'Broadbeach', 18, 'OW', 'Named after the famous white Humpback whale that was sighted there, divers often encounter groupers, wobbegongs, moray eels and scorpion fish'),
('DS003', 'Greta''s Reef', 'Southport', 25, 'ADV', 'Noted for dolphin encounters, turtles, wobbegongs and amazing number of nudibranchs. Advanced divers only!'),
('DS004', 'Mermaid Reef', 'Mermaid Beach', 15, 'OW', 'Home to many small species of reef fish and pelagic species'),
('DS005', 'Palm Beach Reef', 'Palm Beach', 20, 'OW', 'Expansive reef home to turtles, leopard sharks, wobbegongs and hundreds of reef fish species'),
('DS006', 'Fido Reef', 'Tweed Heads', 15, 'OW', 'Expansive reef that is subject to current, a great area for drift diving and exploring - also home to the SS Fido wreck'),
('DS007', 'Cook Island', 'Tweed Heads', 12, 'OW', '600 metres off Fingal Heads, this aquatic reserve is home to leopard sharks, wobbeygongs, crayfish and numerous coral fish species'),
('DS008', 'Nine-Mile Reef', 'Tweed Heads', 25, 'ADV', 'Home to resident grey nurse sharks, eagle ray schools and groupers, this site is spectacular to say the least. Advanced divers only!');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--
DROP TABLE IF EXISTS `employees`;

CREATE TABLE IF NOT EXISTS `employees` (
  `Employee_ID` varchar(6) NOT NULL,
  `FName` varchar(25) NOT NULL,
  `LName` varchar(25) NOT NULL,
  `Phone` varchar(25) NOT NULL,
  `Email` varchar(32) NOT NULL,
  `Role` varchar(25) NOT NULL,
  `Qualification` varchar(25) NOT NULL,
  PRIMARY KEY (`Employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`Employee_ID`, `FName`, `LName`, `Phone`, `Email`, `Role`, `Qualification`) VALUES
('E001', 'Tom', 'Chapman', '0401-233-544', 'tc123@enet.com.au', 'Skipper', 'Cert IV Masters'),
('E002', 'Anita', 'Padgett', '0422-898-989', 'apadgett@enet.com.au', 'Divemaster', 'PADI DM456789'),
('E003', 'Alison', 'Tomaya', '0411-565-454', 'alisontomaya@hcc.net.au', 'Skipper', 'Cert IV Masters'),
('E004', 'Bruce', 'Waterford', '0410-110-222', 'brucewaterford@iin.com.au', 'Divemaster', 'PADI DM299456'),
('E005', 'Felicity', 'Applegate', '0423-110-999', 'fapplegate@fcc.net.au', 'Divemaster', 'NAUI D876235'),
('E006', 'Steven', 'Roberts', '0400-346-239', 'sroberts@be.com.au', 'Skipper', 'Cert IV Masters');



--
-- Table structure for table `divecharters`
--
DROP TABLE IF EXISTS `divecharters`;

CREATE TABLE IF NOT EXISTS `divecharters` (
  `DiveCharter_ID` varchar(12) NOT NULL,
  `Date` date NOT NULL,
  `DiveSiteID` varchar(6) NOT NULL,
  `DiveBoatID` varchar(6) NOT NULL,
  `Skipper` varchar(6) NOT NULL,
  `Divemaster` varchar(6) NOT NULL,
  `BaseCost` decimal(10,0) NOT NULL,
  `GearHire` decimal(10,0) NOT NULL,
  PRIMARY KEY (`DiveCharter_ID`),
  CONSTRAINT `divecharters_ibfk_1` FOREIGN KEY (`DiveSiteID`) REFERENCES `divesites` (`DiveSite_ID`),
  CONSTRAINT `divecharters_ibfk_2` FOREIGN KEY (`DiveBoatID`) REFERENCES `diveboats` (`DiveBoat_ID`),
  CONSTRAINT `divecharters_ibfk_3` FOREIGN KEY (`Skipper`) REFERENCES `employees` (`Employee_ID`),
  CONSTRAINT `divecharters_ibfk_4` FOREIGN KEY (`Divemaster`) REFERENCES `employees` (`Employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `divecharters`
--

INSERT INTO `divecharters` (`DiveCharter_ID`, `Date`, `DiveSiteID`, `DiveBoatID`, `Skipper`, `Divemaster`, `BaseCost`, `GearHire`) VALUES
('DC001', '2021-06-22', 'DS001', 'DB001', 'E001', 'E002', '140', '125'),
('DC002', '2021-06-22', 'DS002', 'DB002', 'E003', 'E004', '160', '125'),
('DC003', '2021-06-23', 'DS004', 'DB001', 'E001', 'E002', '165', '125'),
('DC004', '2021-06-23', 'DS005', 'DB002', 'E003', 'E004', '165', '125'),
('DC005', '2021-06-24', 'DS008', 'DB003', 'E006', 'E005', '200', '150');

-- --------------------------------------------------------


--
-- Table structure for table `bookings`
--
DROP TABLE IF EXISTS `bookings`;

CREATE TABLE IF NOT EXISTS `bookings` (
  `Booking_ID` varchar(6) NOT NULL,
  `DiveCharterID` varchar(6) NOT NULL,
  `CustomerID` varchar(6) NOT NULL,
  `GearHireRequired` varchar(1) NOT NULL,
  `Counter` int(11) NOT NULL,
  PRIMARY KEY (`Booking_ID`),
  CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`DiveCharterID`) REFERENCES `divecharters` (`DiveCharter_ID`),
  CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`Customer_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`Booking_ID`, `DiveCharterID`, `CustomerID`, `GearHireRequired`, `Counter`) VALUES
('B001', 'DC002', 'C001', 'N', 1),
('B002', 'DC002', 'C002', 'Y', 2),
('B003', 'DC002', 'C003', 'N', 3),
('B004', 'DC002', 'C004', 'N', 4),
('B005', 'DC001', 'C005', 'Y', 5),
('B006', 'DC001', 'C006', 'Y', 6),
('B007', 'DC002', 'C007', 'N', 7),
('B008', 'DC002', 'C008', 'Y', 8),
('B009', 'DC002', 'C009', 'N', 9),
('B010', 'DC001', 'C010', 'N', 10),
('B011', 'DC003', 'C012', 'N', 11),
('B012', 'DC003', 'C013', 'Y', 12),
('B013', 'DC003', 'C014', 'N', 13),
('B014', 'DC003', 'C004', 'N', 14),
('B015', 'DC004', 'C005', 'Y', 15),
('B016', 'DC004', 'C006', 'Y', 16),
('B017', 'DC005', 'C003', 'N', 17),
('B018', 'DC002', 'C012', 'N', 18);

-- AUTO_INCREMENT for table `bookings`
ALTER TABLE `bookings`
MODIFY `Counter` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;

-- --------------------------------------------------------

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
