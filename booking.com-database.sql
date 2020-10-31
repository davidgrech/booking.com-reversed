-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 17, 2019 at 09:00 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dgrech01`
--

-- --------------------------------------------------------

--
-- Table structure for table `City_ID`
--

CREATE TABLE `City_ID` (
  `City_ID` int(11) NOT NULL,
  `Country_ID` int(11) NOT NULL,
  `City_Name` varchar(255) NOT NULL,
  `City_tax` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `City_ID`
--

INSERT INTO `City_ID` (`City_ID`, `Country_ID`, `City_Name`, `City_tax`) VALUES
(1, 1, 'Bournemouth', 20),
(3, 4, 'Paris', 20),
(4, 2, 'San Francisco', 16),
(5, 6, 'Berlin', 19),
(6, 8, 'Graz', 20),
(7, 9, 'Antwerp', 21),
(8, 10, 'Tartu', 20),
(9, 11, 'Turku', 24),
(10, 12, 'Kavala', 24),
(11, 13, 'Cork', 23),
(12, 14, 'Naples', 22),
(13, 15, 'Riga', 21),
(14, 16, 'Rotterdam', 21);

-- --------------------------------------------------------

--
-- Table structure for table `Country`
--

CREATE TABLE `Country` (
  `Country_ID` int(11) NOT NULL,
  `Country_Name` varchar(255) NOT NULL,
  `Currency_ID` int(11) NOT NULL,
  `VAT` decimal(11,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Country`
--

INSERT INTO `Country` (`Country_ID`, `Country_Name`, `Currency_ID`, `VAT`) VALUES
(1, 'United Kingdom', 2, '20'),
(2, 'United States of America', 3, '16'),
(4, 'France', 1, '20'),
(6, 'Germany', 1, '19'),
(7, 'Spain', 1, '21'),
(8, 'Austria', 1, '20'),
(9, 'Belgium', 1, '21'),
(10, 'Estonia', 1, '20'),
(11, 'Finland', 1, '24'),
(12, 'Greece', 1, '24'),
(13, 'Ireland', 1, '23'),
(14, 'Italy', 1, '22'),
(15, 'Latvia', 1, '21'),
(16, 'Netherlands', 1, '21');

-- --------------------------------------------------------

--
-- Table structure for table `Currency`
--

CREATE TABLE `Currency` (
  `Currency_ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Symbol` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Currency`
--

INSERT INTO `Currency` (`Currency_ID`, `Name`, `Symbol`) VALUES
(1, 'Euro', '€'),
(2, 'Sterling', '£'),
(3, 'USA Dollar', '$');

-- --------------------------------------------------------

--
-- Table structure for table `Facilities`
--

CREATE TABLE `Facilities` (
  `Facilities_ID` int(11) NOT NULL,
  `Type` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Facilities`
--

INSERT INTO `Facilities` (`Facilities_ID`, `Type`, `Description`) VALUES
(1, 'Parking', 'Car parking spaces available'),
(2, 'Bar', 'Alcoholic drinks available'),
(3, 'Restaurant', 'Restaurant food available'),
(4, 'Wifi', 'Wifi available'),
(5, 'Conference room', 'Conference room available for use'),
(6, 'Swimming pool', 'Swimming pool on site'),
(7, 'Breakfast', 'Breakfast available'),
(8, 'Pets yes', 'Pets allowed '),
(9, 'Pets no', 'Pets not allowed'),
(10, 'Spa and related services', 'Spa and related services available'),
(11, 'Fitness centre/gym', 'Fitness centre/gym available'),
(12, 'Terrace', 'terrace available'),
(13, 'Outdoor furniture', 'Outdoor furniture on site'),
(14, 'Garden', 'Garden on site'),
(15, 'Housekeeping', 'Housekeeping in rooms'),
(16, 'Room service', 'Room service available'),
(17, 'Services', 'Services: ironing, dry cleaning, laundry'),
(18, 'Safety deposit box', 'Safety deposit box available'),
(19, 'For business: fax, photocopying, printing', 'For business: fax, photocopying, printing'),
(20, 'Meeting and banquet facilities ', 'Meeting and banquet facilities '),
(21, 'Gift shop ', 'Gift shop with souvenirs'),
(22, '24-hour reception ', '24-hour reception '),
(23, 'Concierge ', 'Resident caretaker on site'),
(24, 'Luggage storage', 'Luggage storage at property '),
(25, 'Express check in and out service ', 'Quick check in and check out '),
(26, 'Newspapers', 'Daily newspapers available '),
(27, 'Elevator ', 'Elevator at property'),
(28, 'Air conditioning ', 'Air conditioning '),
(29, 'Heating', 'Property has heating'),
(30, 'Airport shuttle bus', 'Transportation to and from the airport to the property'),
(31, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `Member_Status`
--

CREATE TABLE `Member_Status` (
  `Member_Status_ID` int(11) NOT NULL,
  `Type` varchar(255) NOT NULL,
  `Discount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Member_Status`
--

INSERT INTO `Member_Status` (`Member_Status_ID`, `Type`, `Discount`) VALUES
(1, 'Genius 1', 10),
(2, 'Genius 2', 25),
(3, 'Non member', 0);

-- --------------------------------------------------------

--
-- Table structure for table `Property`
--

CREATE TABLE `Property` (
  `Property_ID` int(11) NOT NULL,
  `Property_Type_ID` int(11) NOT NULL,
  `Description_Blurb` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Contact_Email` varchar(255) NOT NULL,
  `Contact_Number` varchar(255) NOT NULL,
  `Property_Star_ID` int(11) NOT NULL,
  `Street_Address_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Property`
--

INSERT INTO `Property` (`Property_ID`, `Property_Type_ID`, `Description_Blurb`, `Name`, `Contact_Email`, `Contact_Number`, `Property_Star_ID`, `Street_Address_ID`) VALUES
(1, 1, 'In the centre of Bournemouth, 5 minutes’ walk from East Cliff beach, The Roundhouse has a 24-hour front desk, a restaurant and 2 bars.', 'Roundhouse Hotel', 'enquiries@britaniahotels.com', '08712220037', 2, 4),
(2, 1, 'Situated just 5 minutes\' walk from the beach and vibrant promenade, Hilton Bournemouth features a heated indoor pool, complimentary 24-hour fitness centre and the eforea spa & health club with sauna...', 'Hilton Bournemouth', 'enquiries@hilton.com', '01202804775', 2, 5),
(3, 1, 'Located on the seafront, overlooking Bournemouth Bay, this iconic and uniquely styled hotel has a 1930s Art Deco style, a seasonal outdoor heated pool, a day spa, and a lido deck.', 'Cumberland Hotel', 'sales@oceanahotels.co.uk', '+44(0)1202 298 350', 2, 6),
(4, 1, 'Situated on the seafront, overlooking Bournemouth Bay, Ocean Beach Hotel & Spa has an outdoor pool. With a superb cliff-top location, it is just a short walk from Bournemouth\'s town centre and...', 'Ocean Beach Hotel & Spa', 'sales@oceanahotels.co.uk', '+44 1202 298350', 3, 12),
(5, 1, 'Just 10 minutes’ walk from Bournemouth Pier, Heathlands Hotel is situated on East Cliff. The hotel also has a popular restaurant and free WiFi is available at reception.', 'Heathlands Hotel', 'sales@oceanahotels.co.uk', '+44871 222 0049', 3, 15),
(6, 1, 'Located on Bournemouth\'s East Cliff, 5 minutes\' walk from the town centre, the Hallmark Hotel East Cliff offers 3-star accommodation with free WiFi.', 'Hallmark Hotel Bournemouth East Cliff', 'sales@hallmarkhotel.com', '0330 028 3412', 3, 11),
(7, 1, 'This Victorian townhouse offers bright, modern rooms, located just 5 minutes’ walk from Bournemouth’s award-winning beach. With a restaurant and lounge bar, there is also free high-speed WiFi.', 'Durley Dean', 'reservations@durleydean.co.uk', '+441202 557711', 3, 16),
(8, 1, 'In Bournemouth’s town centre, 500 metres from the beach, The Russell Court Hotel has rooms with modern décor. With a restaurant and bar, it is 0.5 miles from the Bournemouth International Centre.', 'Russell Court Hotel', 'info@russellcourthotel.com', '+441202 295 819', 4, 13),
(9, 1, 'With a dramatic seafront location, Highcliff Marriott Hotel has a leisure club with a fitness area and seasonal outdoor pool. Bournemouth town centre is a 10-minute walk away.', 'Bournemouth Highcliff Marriott Hotel', 'contact@marriott.com', '+441202 557702', 2, 10);

-- --------------------------------------------------------

--
-- Table structure for table `Property_Facilities`
--

CREATE TABLE `Property_Facilities` (
  `Property_Facilities_ID` int(11) NOT NULL,
  `Property_ID` int(11) NOT NULL,
  `Facilities_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Property_Facilities`
--

INSERT INTO `Property_Facilities` (`Property_Facilities_ID`, `Property_ID`, `Facilities_ID`) VALUES
(12, 2, 22),
(13, 2, 28),
(14, 2, 2),
(15, 2, 1),
(16, 2, 10),
(17, 2, 6),
(18, 6, 7),
(19, 6, 14),
(20, 6, 4),
(21, 6, 28),
(22, 6, 2),
(117, 1, 28),
(118, 1, 1),
(119, 1, 7),
(120, 1, 29),
(121, 1, 24),
(122, 1, 16),
(123, 3, 22),
(124, 3, 25),
(125, 3, 11),
(126, 3, 2),
(127, 3, 26),
(128, 3, 25),
(129, 4, 20),
(130, 4, 15),
(131, 4, 4),
(132, 4, 2),
(133, 4, 28),
(134, 4, 9),
(135, 5, 22),
(136, 5, 29),
(137, 5, 14),
(138, 5, 4),
(139, 5, 7),
(140, 5, 28),
(141, 5, 3),
(142, 7, 15),
(143, 7, 22),
(144, 7, 24),
(145, 7, 4),
(146, 7, 28),
(147, 7, 7),
(148, 8, 22),
(149, 8, 4),
(150, 8, 16),
(151, 8, 7),
(152, 8, 3),
(153, 8, 5),
(154, 9, 22),
(155, 9, 3),
(156, 9, 4),
(157, 9, 7),
(158, 9, 3),
(159, 9, 16),
(160, 9, 22),
(161, 9, 24),
(162, 9, 25),
(163, 9, 28);

-- --------------------------------------------------------

--
-- Table structure for table `Property_Rooms`
--

CREATE TABLE `Property_Rooms` (
  `Property_Rooms_ID` int(11) NOT NULL,
  `Property_ID` int(11) NOT NULL,
  `Room_Type_ID` int(11) NOT NULL,
  `Base_Rate` int(11) NOT NULL,
  `Total_No_Rooms` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Property_Rooms`
--

INSERT INTO `Property_Rooms` (`Property_Rooms_ID`, `Property_ID`, `Room_Type_ID`, `Base_Rate`, `Total_No_Rooms`) VALUES
(1, 1, 1, 35, 13),
(2, 1, 2, 51, 8),
(3, 1, 3, 51, 11),
(8, 2, 1, 75, 11),
(9, 2, 2, 105, 13),
(10, 2, 3, 105, 12),
(11, 3, 2, 55, 11),
(12, 3, 1, 45, 13),
(13, 3, 3, 55, 11),
(14, 4, 2, 43, 14),
(15, 4, 1, 33, 15),
(16, 4, 3, 38, 9),
(17, 5, 2, 29, 8),
(18, 5, 1, 22, 11),
(19, 5, 3, 29, 18),
(20, 6, 2, 33, 23),
(21, 6, 1, 28, 18),
(22, 6, 3, 33, 10),
(23, 7, 2, 40, 19),
(24, 7, 1, 30, 15),
(25, 7, 3, 40, 19),
(26, 8, 2, 39, 18),
(27, 8, 1, 30, 17),
(28, 8, 3, 39, 12),
(29, 9, 2, 45, 15),
(30, 9, 1, 35, 20),
(31, 9, 3, 45, 17);

-- --------------------------------------------------------

--
-- Table structure for table `Property_Star_Rating`
--

CREATE TABLE `Property_Star_Rating` (
  `Property_Star_ID` int(11) NOT NULL,
  `Type` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Property_Star_Rating`
--

INSERT INTO `Property_Star_Rating` (`Property_Star_ID`, `Type`, `Description`) VALUES
(1, 'Five Star', 'Excellent'),
(2, 'Four Star', 'Above Average'),
(3, 'Three Star', 'Average'),
(4, 'Two Star', 'Below Average'),
(5, 'One Star', 'Poor');

-- --------------------------------------------------------

--
-- Table structure for table `Property_Type`
--

CREATE TABLE `Property_Type` (
  `Property_Type_ID` int(11) NOT NULL,
  `Type` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Property_Type`
--

INSERT INTO `Property_Type` (`Property_Type_ID`, `Type`, `Description`) VALUES
(1, 'Hotel', 'Building with multiple bedrooms to book');

-- --------------------------------------------------------

--
-- Table structure for table `Reservation`
--

CREATE TABLE `Reservation` (
  `Reservation_ID` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `Check_In_Date` date NOT NULL,
  `Check_Out_Date` date NOT NULL,
  `Booking_Date` date NOT NULL,
  `Number_Of_Guests` int(11) NOT NULL,
  `Payment_Confirmed` tinyint(1) NOT NULL,
  `Property_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Reservation`
--

INSERT INTO `Reservation` (`Reservation_ID`, `User_ID`, `Check_In_Date`, `Check_Out_Date`, `Booking_Date`, `Number_Of_Guests`, `Payment_Confirmed`, `Property_ID`) VALUES
(6, 1, '2020-01-13', '2020-01-14', '2019-11-09', 1, 1, 1),
(7, 2, '2020-01-13', '2020-01-14', '2019-11-09', 1, 1, 1),
(8, 3, '2020-01-13', '2020-01-14', '2019-11-07', 1, 1, 1),
(9, 4, '2020-01-13', '2020-01-15', '2019-11-03', 1, 1, 1),
(10, 10, '2020-01-13', '2020-01-14', '2019-11-01', 1, 1, 7),
(11, 9, '2020-01-15', '2020-01-16', '2019-11-14', 1, 1, 5),
(12, 11, '2019-11-15', '2019-11-17', '2019-10-09', 1, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `Reservation_Details`
--

CREATE TABLE `Reservation_Details` (
  `Reservation_Details_ID` int(11) NOT NULL,
  `Reservation_ID` int(11) NOT NULL,
  `Property_Rooms_ID1` int(11) NOT NULL,
  `Guest_Name` varchar(255) NOT NULL,
  `Date` date NOT NULL,
  `Reservation_Status_ID` int(11) NOT NULL,
  `Price_Per_Night` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Reservation_Details`
--

INSERT INTO `Reservation_Details` (`Reservation_Details_ID`, `Reservation_ID`, `Property_Rooms_ID1`, `Guest_Name`, `Date`, `Reservation_Status_ID`, `Price_Per_Night`) VALUES
(1, 6, 2, 'Osmond Kennedy', '2020-01-13', 1, '45.90'),
(2, 7, 2, 'Sarah Kennedy', '2020-01-13', 1, '51.00'),
(3, 8, 2, 'Ingar Ingarl', '2020-01-13', 2, '51.00'),
(4, 9, 2, 'Tami Scholes', '2020-01-13', 1, '51.00'),
(5, 9, 2, 'Tami Scholes', '2020-01-14', 1, '51.00'),
(6, 10, 23, 'Manya Hepher', '2020-01-13', 1, '40.00'),
(7, 11, 17, 'Matthus Eakin', '2020-01-15', 1, '29.00'),
(8, 12, 17, 'Gayla Hassan', '2019-11-15', 2, '29.00'),
(9, 12, 17, 'Gayla Hassan', '2019-11-16', 2, '29.00');

-- --------------------------------------------------------

--
-- Table structure for table `Reservation_Status`
--

CREATE TABLE `Reservation_Status` (
  `Reservation_Status_ID` int(10) NOT NULL,
  `Type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Reservation_Status`
--

INSERT INTO `Reservation_Status` (`Reservation_Status_ID`, `Type`) VALUES
(1, 'Guaranteed Reservation'),
(2, 'Non-Guaranteed Reservation');

-- --------------------------------------------------------

--
-- Table structure for table `Reservation_Type`
--

CREATE TABLE `Reservation_Type` (
  `Reservation_Type_ID` int(11) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Additional_Charge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Reservation_Type`
--

INSERT INTO `Reservation_Type` (`Reservation_Type_ID`, `Description`, `Additional_Charge`) VALUES
(1, 'Breakfast included', 10),
(2, 'Free cancelation', 10),
(3, 'Non refundable', 10);

-- --------------------------------------------------------

--
-- Table structure for table `Room_Facilities`
--

CREATE TABLE `Room_Facilities` (
  `Room_Facilities_ID` int(11) NOT NULL,
  `Property_Rooms_ID` int(11) NOT NULL,
  `Facilities_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Room_Facilities`
--

INSERT INTO `Room_Facilities` (`Room_Facilities_ID`, `Property_Rooms_ID`, `Facilities_ID`) VALUES
(1, 1, 28),
(2, 1, 4),
(3, 1, 16),
(4, 2, 28),
(5, 2, 4),
(6, 2, 16),
(7, 3, 28),
(8, 3, 4),
(9, 3, 16),
(10, 8, 15),
(11, 8, 18),
(12, 8, 29),
(13, 9, 28),
(14, 9, 9),
(15, 9, 4),
(16, 10, 28),
(17, 10, 16),
(18, 10, 4),
(19, 11, 28),
(20, 11, 16),
(21, 11, 18),
(22, 12, 16),
(23, 12, 4),
(24, 12, 28),
(25, 13, 16),
(26, 13, 28),
(27, 13, 8);

-- --------------------------------------------------------

--
-- Table structure for table `Room_Type`
--

CREATE TABLE `Room_Type` (
  `Room_Type_ID` int(11) NOT NULL,
  `Type` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `People_Capacity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Room_Type`
--

INSERT INTO `Room_Type` (`Room_Type_ID`, `Type`, `Description`, `People_Capacity`) VALUES
(1, 'Single', 'A standard single room', 1),
(2, 'Double', 'A standard double room', 2),
(3, 'Twin', 'A standard twin room', 2);

-- --------------------------------------------------------

--
-- Table structure for table `Street_Address`
--

CREATE TABLE `Street_Address` (
  `Street_Address_ID` int(11) NOT NULL,
  `City_ID` int(11) NOT NULL,
  `Address_Line_1` varchar(255) NOT NULL,
  `Address_Line_2` varchar(255) NOT NULL,
  `Longitude` decimal(15,6) NOT NULL,
  `Latitude` decimal(15,6) NOT NULL,
  `Postcode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Street_Address`
--

INSERT INTO `Street_Address` (`Street_Address_ID`, `City_ID`, `Address_Line_1`, `Address_Line_2`, `Longitude`, `Latitude`, `Postcode`) VALUES
(1, 1, '235 Commercial Road', 'Poole Hill', '50.719479', '-1.886756', 'BH1 5LN'),
(2, 3, '10 Rue de Belzunce', '', '48.879498', '2.352272', '75010'),
(3, 4, '1085 Mission St', '', '37.779339', '-122.410375', 'CA 94103'),
(4, 1, '1 Meyrick Rd', 'Lansdowne', '50.721255', '-1.866659', 'BH1 2PR'),
(5, 1, 'Terrace Rd', '', '50.718938', '-1.880927', 'BH2 5EL'),
(6, 1, '27 Overcliff Dr', '', '50.719278', '-1.861070', 'BH1 3AF'),
(7, 5, 'Kollwitzstraße 88', '', '52.538340', '13.420654', '10435'),
(8, 12, 'Via Speranzella', '', '40.839447', '14.247329', 'R6RX+86'),
(9, 14, 'Dominee Jan Scharpstraat 298', '', '51.919986', '4.486326', 'WF9P+RX'),
(10, 10, 'Thasou 3', '', '40.940972', '24.424808', 'WCRG+V4'),
(11, 7, 'Reuzenstraat 23', '', '51.215755', '4.441743', '6C8R+8V'),
(12, 11, 'Hayfield Manor Hotel, Perrott Ave', 'College Rd', '51.890940', '-8.490083', 'VGR5+9X'),
(13, 6, 'Sparkassenpl. 4', '', '47.069410', '15.437071', '3C9Q+P2'),
(14, 13, 'Elizabetes iela 55', 'Centra rajons', '56.954832', '24.117636', 'LV-1010'),
(15, 8, 'Ülikooli 8', '51003 Tartu', '58.378642', '26.722799', '9PHF+C4'),
(16, 9, 'Humalistonkatu 5', '20100 Turku', '60.450482', '22.259891', 'F725+6V');

-- --------------------------------------------------------

--
-- Table structure for table `Title`
--

CREATE TABLE `Title` (
  `Title_ID` int(11) NOT NULL,
  `Description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Title`
--

INSERT INTO `Title` (`Title_ID`, `Description`) VALUES
(1, 'Mr'),
(2, 'Miss'),
(3, 'Mrs');

-- --------------------------------------------------------

--
-- Table structure for table `Trip_Type`
--

CREATE TABLE `Trip_Type` (
  `Trip_Type_ID` int(11) NOT NULL,
  `Type` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Trip_Type`
--

INSERT INTO `Trip_Type` (`Trip_Type_ID`, `Type`, `Description`) VALUES
(1, 'Family', ''),
(2, 'Business', ''),
(3, 'leisure', '');

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `User_ID` int(11) NOT NULL,
  `Title_ID` int(11) DEFAULT NULL,
  `First_Name` varchar(255) DEFAULT NULL,
  `Display_Name` varchar(255) DEFAULT NULL,
  `Surname` varchar(255) DEFAULT NULL,
  `DOB` varchar(255) DEFAULT NULL,
  `Email_Address` varchar(255) DEFAULT NULL,
  `Phone_Number` varchar(255) DEFAULT NULL,
  `Member_Status` int(11) DEFAULT NULL,
  `Street_Address_ID` int(11) DEFAULT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`User_ID`, `Title_ID`, `First_Name`, `Display_Name`, `Surname`, `DOB`, `Email_Address`, `Phone_Number`, `Member_Status`, `Street_Address_ID`, `Password`) VALUES
(1, 1, 'Osmond', 'OsmondK76', 'Kennedy', '23/06/1976', 'okennedy1@is.gd', '+1 (346) 876-9654', 3, 3, 'd2695f450e0ccdbc7bdb69e7a6465e6d'),
(2, 3, 'Jacqueline', 'StarGazer33', 'Kennedy', '23/05/1976', 'jgorries11@networkadvertising.org\r\n', '+1 (765) 763-9387', 3, 3, 'Echo1234'),
(3, 2, 'Ingar\r\n', 'IngarI98', 'Ivanenko', '22/07/1988', 'iivanenko2y@fema.gov', '+33(0)7654783938', 1, 2, 'Echo1234'),
(4, 2, 'Tami', 'tscholes5', 'Scholes', '12/4/1985', 'tscholes5@state.gov', '+33(0)7864478376\r\n', 1, 2, 'Echo1234'),
(5, 1, 'Grant\r\n', 'Reisen87', 'Borthe\r\n', '8/04/1962', 'gbortheg@answers.com\r\n', '+49(0)7635209716', 3, 7, 'Echo1234'),
(6, 1, 'Jarib', 'MegaHurts', 'Brunt\r\n', '12/09/1988', 'jbrunt3@fotki.com\r\n', '+358 7638390752', 3, 16, 'Echo1234'),
(7, 3, 'Charlena\r\n', 'Just4Now', 'Setch', '23/08/1992', 'csetch0@stumbleupon.com\r\n', '(+49 30) 902 77 31 01', 1, 7, 'Echo1234'),
(8, 2, 'Odelia\r\n', 'TrueTouch45', 'Prendergast', '20/03/1997', 'oprendergast2@dyndns.org', '+31 8461064839', 2, 9, 'Echo1234'),
(9, 1, 'Matthus', 'AON87', 'Eakin', '23/09/1989', 'meakin6@networksolutions.com', '+371 7639082983', 3, 14, 'Echo1234'),
(10, 1, 'Manya', 'FreeToday77', 'Hepher\r\n', '09/12/1968', 'mhepher7@amazon.co.jp\r\n', '+32 7653027539', 1, 10, 'Echo1234'),
(11, 3, 'Gelya\r\n', 'Geyla876\r\n', 'Hassan\r\n', '23/08/1968', 'ghassan8@jigsy.com\r\n', '+39 7810963983', 2, 8, 'Echo1234'),
(12, 1, 'Ahmad\r\n', 'EternalDream8', 'Beet', '29/01/1991', 'abeetc@dailymail.co.uk', '+353 21 484 5900', 3, 12, 'Echo1234'),
(15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rO\0j›TpÕò™¡eª“r');

-- --------------------------------------------------------

--
-- Table structure for table `User_Reviews`
--

CREATE TABLE `User_Reviews` (
  `User_Review_ID` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `Property_ID` int(11) NOT NULL,
  `Average_Score` decimal(15,1) NOT NULL,
  `Description_Blurb` varchar(255) NOT NULL,
  `Staff` decimal(15,1) NOT NULL,
  `Comfort` decimal(15,1) NOT NULL,
  `Value_For_Money` decimal(15,1) NOT NULL,
  `Facilities` decimal(15,1) NOT NULL,
  `Cleanliness` decimal(15,1) NOT NULL,
  `Breakfast` decimal(15,1) NOT NULL,
  `Location` decimal(15,1) NOT NULL,
  `Free_Wifi` decimal(15,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `User_Reviews`
--

INSERT INTO `User_Reviews` (`User_Review_ID`, `User_ID`, `Property_ID`, `Average_Score`, `Description_Blurb`, `Staff`, `Comfort`, `Value_For_Money`, `Facilities`, `Cleanliness`, `Breakfast`, `Location`, `Free_Wifi`) VALUES
(1, 9, 1, '8.7', 'Restaurant staff superb. They work so hard. Food was divine every day. Plenty of it. Breakfast superb. Open, welcoming hotel. Room very quiet and large. Staff very attentive.', '8.6', '8.8', '7.8', '8.7', '8.9', '8.0', '9.1', '8.0'),
(2, 12, 1, '8.2', 'Fantastic hotel with very friendly staff. Great food and the rooftop bar is worth a visit.\r\nLocation perfect !!', '8.7', '9.1', '6.7', '8.6', '6.2', '8.0', '8.2', '8.3'),
(3, 5, 1, '7.9', 'Its absolute fantastic hotel with ac, smart tv, massive bed for that price', '8.0', '8.9', '6.0', '9.1', '6.7', '8.5', '7.1', '8.0'),
(4, 7, 1, '8.0', 'Our room was spacious and immaculate.\r\nThe hotel is stunning throughout.', '6.9', '7.9', '6.0', '8.8', '9.0', '8.5', '8.1', '8.4'),
(5, 8, 1, '5.8', 'Did not tick all boxes. Left me wanting for more.', '5.8', '4.9', '3.2', '5.9', '5.7', '6.0', '5.6', '6.0'),
(6, 10, 1, '3.8', 'Shocking', '2.8', '3.9', '2.0', '4.5', '4.0', '3.2', '4.5', '3.3'),
(7, 11, 1, '6.1', 'Disappointing', '4.5', '6.6', '2.5', '6.7', '6.2', '6.8', '6.3', '6.9'),
(8, 6, 1, '7.5', 'We liked how close it was to the venue we went to visit. Comfortable beds . Friendly staff at reception & downstairs bar. Staff in the sky bar were not so friendly.', '5.8', '7.9', '6.0', '7.8', '8.0', '8.2', '8.5', '8.0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `City_ID`
--
ALTER TABLE `City_ID`
  ADD PRIMARY KEY (`City_ID`),
  ADD KEY `FK_Country_ID` (`Country_ID`);

--
-- Indexes for table `Country`
--
ALTER TABLE `Country`
  ADD PRIMARY KEY (`Country_ID`),
  ADD KEY `FK_Currency_ID` (`Currency_ID`);

--
-- Indexes for table `Currency`
--
ALTER TABLE `Currency`
  ADD PRIMARY KEY (`Currency_ID`);

--
-- Indexes for table `Facilities`
--
ALTER TABLE `Facilities`
  ADD PRIMARY KEY (`Facilities_ID`);

--
-- Indexes for table `Member_Status`
--
ALTER TABLE `Member_Status`
  ADD PRIMARY KEY (`Member_Status_ID`);

--
-- Indexes for table `Property`
--
ALTER TABLE `Property`
  ADD PRIMARY KEY (`Property_ID`),
  ADD KEY `FK_Street_Address_ID` (`Street_Address_ID`),
  ADD KEY `FK_Property_Type_ID` (`Property_Type_ID`),
  ADD KEY `FK_Property_Star_Rating_ID` (`Property_Star_ID`);

--
-- Indexes for table `Property_Facilities`
--
ALTER TABLE `Property_Facilities`
  ADD PRIMARY KEY (`Property_Facilities_ID`),
  ADD KEY `FK_Property_Facilities_ID` (`Property_ID`),
  ADD KEY `FK_Facilities_ID1` (`Facilities_ID`);

--
-- Indexes for table `Property_Rooms`
--
ALTER TABLE `Property_Rooms`
  ADD PRIMARY KEY (`Property_Rooms_ID`),
  ADD KEY `FK_Room_Type_ID` (`Room_Type_ID`),
  ADD KEY `FK_Property_ID2` (`Property_ID`);

--
-- Indexes for table `Property_Star_Rating`
--
ALTER TABLE `Property_Star_Rating`
  ADD PRIMARY KEY (`Property_Star_ID`);

--
-- Indexes for table `Property_Type`
--
ALTER TABLE `Property_Type`
  ADD PRIMARY KEY (`Property_Type_ID`);

--
-- Indexes for table `Reservation`
--
ALTER TABLE `Reservation`
  ADD PRIMARY KEY (`Reservation_ID`),
  ADD KEY `FK_User_ID` (`User_ID`),
  ADD KEY `FK_Property_ID` (`Property_ID`);

--
-- Indexes for table `Reservation_Details`
--
ALTER TABLE `Reservation_Details`
  ADD PRIMARY KEY (`Reservation_Details_ID`),
  ADD KEY `FK_Reservation_ID` (`Reservation_ID`),
  ADD KEY `FK_Reservation_Status_ID` (`Reservation_Status_ID`),
  ADD KEY `FK_Property_Rooms_ID` (`Property_Rooms_ID1`);

--
-- Indexes for table `Reservation_Status`
--
ALTER TABLE `Reservation_Status`
  ADD PRIMARY KEY (`Reservation_Status_ID`);

--
-- Indexes for table `Reservation_Type`
--
ALTER TABLE `Reservation_Type`
  ADD PRIMARY KEY (`Reservation_Type_ID`);

--
-- Indexes for table `Room_Facilities`
--
ALTER TABLE `Room_Facilities`
  ADD PRIMARY KEY (`Room_Facilities_ID`),
  ADD KEY `FK_Property_Rooms_ID1` (`Property_Rooms_ID`),
  ADD KEY `FK_Facilities_ID` (`Facilities_ID`);

--
-- Indexes for table `Room_Type`
--
ALTER TABLE `Room_Type`
  ADD PRIMARY KEY (`Room_Type_ID`);

--
-- Indexes for table `Street_Address`
--
ALTER TABLE `Street_Address`
  ADD PRIMARY KEY (`Street_Address_ID`),
  ADD KEY `FK_City_ID` (`City_ID`);

--
-- Indexes for table `Title`
--
ALTER TABLE `Title`
  ADD PRIMARY KEY (`Title_ID`);

--
-- Indexes for table `Trip_Type`
--
ALTER TABLE `Trip_Type`
  ADD PRIMARY KEY (`Trip_Type_ID`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`User_ID`),
  ADD KEY `FK_Title_ID` (`Title_ID`),
  ADD KEY `FK_Member_Status_ID` (`Member_Status`),
  ADD KEY `FK_Street_Address_ID1` (`Street_Address_ID`);

--
-- Indexes for table `User_Reviews`
--
ALTER TABLE `User_Reviews`
  ADD PRIMARY KEY (`User_Review_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `City_ID`
--
ALTER TABLE `City_ID`
  MODIFY `City_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `Country`
--
ALTER TABLE `Country`
  MODIFY `Country_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `Currency`
--
ALTER TABLE `Currency`
  MODIFY `Currency_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `Facilities`
--
ALTER TABLE `Facilities`
  MODIFY `Facilities_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `Member_Status`
--
ALTER TABLE `Member_Status`
  MODIFY `Member_Status_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Property`
--
ALTER TABLE `Property`
  MODIFY `Property_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `Property_Facilities`
--
ALTER TABLE `Property_Facilities`
  MODIFY `Property_Facilities_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `Property_Rooms`
--
ALTER TABLE `Property_Rooms`
  MODIFY `Property_Rooms_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `Property_Star_Rating`
--
ALTER TABLE `Property_Star_Rating`
  MODIFY `Property_Star_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `Property_Type`
--
ALTER TABLE `Property_Type`
  MODIFY `Property_Type_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Reservation`
--
ALTER TABLE `Reservation`
  MODIFY `Reservation_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `Reservation_Details`
--
ALTER TABLE `Reservation_Details`
  MODIFY `Reservation_Details_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `Reservation_Status`
--
ALTER TABLE `Reservation_Status`
  MODIFY `Reservation_Status_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Reservation_Type`
--
ALTER TABLE `Reservation_Type`
  MODIFY `Reservation_Type_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Room_Facilities`
--
ALTER TABLE `Room_Facilities`
  MODIFY `Room_Facilities_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `Room_Type`
--
ALTER TABLE `Room_Type`
  MODIFY `Room_Type_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Street_Address`
--
ALTER TABLE `Street_Address`
  MODIFY `Street_Address_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `Title`
--
ALTER TABLE `Title`
  MODIFY `Title_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Trip_Type`
--
ALTER TABLE `Trip_Type`
  MODIFY `Trip_Type_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `User_Reviews`
--
ALTER TABLE `User_Reviews`
  MODIFY `User_Review_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `City_ID`
--
ALTER TABLE `City_ID`
  ADD CONSTRAINT `FK_Country_ID` FOREIGN KEY (`Country_ID`) REFERENCES `Country` (`Country_ID`);

--
-- Constraints for table `Country`
--
ALTER TABLE `Country`
  ADD CONSTRAINT `FK_Currency_ID` FOREIGN KEY (`Currency_ID`) REFERENCES `Currency` (`Currency_ID`);

--
-- Constraints for table `Property`
--
ALTER TABLE `Property`
  ADD CONSTRAINT `FK_Property_Star_Rating_ID` FOREIGN KEY (`Property_Star_ID`) REFERENCES `Property_Star_Rating` (`Property_Star_ID`),
  ADD CONSTRAINT `FK_Property_Type_ID` FOREIGN KEY (`Property_Type_ID`) REFERENCES `Property_Type` (`Property_Type_ID`),
  ADD CONSTRAINT `FK_Street_Address_ID` FOREIGN KEY (`Street_Address_ID`) REFERENCES `Street_Address` (`Street_Address_ID`);

--
-- Constraints for table `Property_Facilities`
--
ALTER TABLE `Property_Facilities`
  ADD CONSTRAINT `FK_Facilities_ID1` FOREIGN KEY (`Facilities_ID`) REFERENCES `Facilities` (`Facilities_ID`),
  ADD CONSTRAINT `FK_Property_Facilities_ID` FOREIGN KEY (`Property_ID`) REFERENCES `Property` (`Property_ID`);

--
-- Constraints for table `Property_Rooms`
--
ALTER TABLE `Property_Rooms`
  ADD CONSTRAINT `FK_Property_ID2` FOREIGN KEY (`Property_ID`) REFERENCES `Property` (`Property_ID`),
  ADD CONSTRAINT `FK_Room_Type_ID` FOREIGN KEY (`Room_Type_ID`) REFERENCES `Room_Type` (`Room_Type_ID`);

--
-- Constraints for table `Reservation`
--
ALTER TABLE `Reservation`
  ADD CONSTRAINT `FK_Property_ID` FOREIGN KEY (`Property_ID`) REFERENCES `Property` (`Property_ID`),
  ADD CONSTRAINT `FK_User_ID` FOREIGN KEY (`User_ID`) REFERENCES `User` (`User_ID`);

--
-- Constraints for table `Reservation_Details`
--
ALTER TABLE `Reservation_Details`
  ADD CONSTRAINT `FK_Property_Rooms_ID` FOREIGN KEY (`Property_Rooms_ID1`) REFERENCES `Property_Rooms` (`Property_Rooms_ID`),
  ADD CONSTRAINT `FK_Reservation_ID` FOREIGN KEY (`Reservation_ID`) REFERENCES `Reservation` (`Reservation_ID`),
  ADD CONSTRAINT `FK_Reservation_Status_ID` FOREIGN KEY (`Reservation_Status_ID`) REFERENCES `Reservation_Status` (`Reservation_Status_ID`);

--
-- Constraints for table `Room_Facilities`
--
ALTER TABLE `Room_Facilities`
  ADD CONSTRAINT `FK_Facilities_ID` FOREIGN KEY (`Facilities_ID`) REFERENCES `Facilities` (`Facilities_ID`),
  ADD CONSTRAINT `FK_Property_Rooms_ID1` FOREIGN KEY (`Property_Rooms_ID`) REFERENCES `Property_Rooms` (`Property_Rooms_ID`);

--
-- Constraints for table `Street_Address`
--
ALTER TABLE `Street_Address`
  ADD CONSTRAINT `FK_City_ID` FOREIGN KEY (`City_ID`) REFERENCES `City_ID` (`City_ID`);

--
-- Constraints for table `User`
--
ALTER TABLE `User`
  ADD CONSTRAINT `FK_Member_Status_ID` FOREIGN KEY (`Member_Status`) REFERENCES `Member_Status` (`Member_Status_ID`),
  ADD CONSTRAINT `FK_Street_Address_ID1` FOREIGN KEY (`Street_Address_ID`) REFERENCES `Street_Address` (`Street_Address_ID`),
  ADD CONSTRAINT `FK_Title_ID` FOREIGN KEY (`Title_ID`) REFERENCES `Title` (`Title_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
