

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharmacy`
--




--
-- Table structure for table `drugs`
--

CREATE TABLE `drugs` (
  `NAME` varchar(50) NOT NULL,
  `TYPE` varchar(20) NOT NULL,
  `BARCODE` varchar(20) NOT NULL,
  `DOSE` varchar(10) NOT NULL,
  `CODE` varchar(10) NOT NULL,
  `COST_PRICE` double NOT NULL,
  `SELLING_PRICE` double NOT NULL,
  `EXPIRY` varchar(20) NOT NULL,
  `PRODUCTION_DATE` date NOT NULL,
  `EXPIRATION_DATE` date NOT NULL,
  `QUANTITY` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `drugs`
--

INSERT INTO `drugs` (`NAME`, `TYPE`, `BARCODE`, `DOSE`, `CODE`, `COST_PRICE`, `SELLING_PRICE`, `EXPIRY`,  `PRODUCTION_DATE`, `EXPIRATION_DATE`,  `QUANTITY`) VALUES
('Novalo', 'Pills', 'fsdgjfihjorodsf', 'normal', '3d00', 2, 3, 'Available for use', '2017-03-03', '2022-03-03',  40),
('novafol', 'Pills', 'ftrkl432432md', 'normal', '2xaa', 33, 40, 'Available for use', '2016-01-01', '2022-01-01',  27);

-- --------------------------------------------------------

--
-- Table structure for table `expiry`
--

CREATE TABLE `expiry` (
  `PRODUCT_NAME` varchar(50) NOT NULL,
  `PRODUCT_CODE` varchar(20) NOT NULL,
  `DATE_OF_EXPIRY` varchar(10) NOT NULL,
  `QUANTITY_REMAIN` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

-- --------------------------------------------------------


--
-- Table structure for table `inbox`
--

CREATE TABLE `inbox` (
  `MESSAGE_FROM` varchar(20) NOT NULL,
  `MESSAGE_TO` varchar(20) NOT NULL,
  `MESSAGE_TEXT` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `inbox`
--

INSERT INTO `inbox` (`MESSAGE_FROM`, `MESSAGE_TO`, `MESSAGE_TEXT`) VALUES
('admin', 'mark', 'Welcome mark'),
('mark', 'admin', 'Welcome sir'),
('admin', 'mark', 'Hay , mark '),
('mark', 'admin', 'Hay '),
('mark', 'admin', 'Welcome'),
('admin', 'mark', 'Hello , mark'),
('admin', 'mark', 'mark , Please go and update\nthe drug roof '),
('admin', 'Tony', 'Welcome'),
('admin', 'mark', 'This is your salary on the disk , \n3000 , close in 12  ; good luck'),
('admin', 'mark', 'good job meet me in five'),
('mark', 'admin', 'Ok i will '),
('admin', 'mark', 'gdfgfdgfdgfdg'),
('admin', 'mark', 'haaaaaaaaaaaaaaaai'),
('admin', 'mark', 'What is wrong ? '),
('mark', 'admin', 'I am okay thanks ');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `NAME` varchar(50) NOT NULL,
  `TYPE` varchar(20) NOT NULL,
  `DATE` varchar(20) NOT NULL,
  `TIME` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`NAME`, `TYPE`, `DATE`, `TIME`) VALUES
('admin', 'Admin', '17-02-2021', '10:30:24'),
('admin', 'Admin', '17-02-2021', '10:32:48'),
('mark', 'Employee', '17-02-2017', '10:32:56'),
('admin', 'Admin', '17-02-2015', '10:33:10'),
('mark', 'Employee', '17-02-2013', '10:33:37'),
('admin', 'Admin', '17-02-2011', '10:36:21'),
('admin', 'Admin', '17-02-2012', '10:36:53'),
('admin', 'Admin', '17-02-2012', '10:49:27'),
('admin', 'Admin', '17-02-2012', '11:02:23'),
('admin', 'Admin', '17-02-2019', '01:40:08'),
('admin', 'Admin', '18-02-2012', '10:50:29'),
('admin', 'Admin', '18-02-2017', '10:51:50'),
('admin', 'Admin', '18-02-2021', '10:53:33'),
('admin', 'Admin', '18-02-2017', '10:58:41'),
('admin', 'Admin', '18-02-2017', '11:15:39'),
('mark', 'Employee', '18-02-2021', '11:18:19'),
('admin', 'Admin', '18-02-2017', '11:23:25'),
('mark', 'Employee', '18-02-2021', '11:24:19'),
('admin', 'Admin', '04-04-2011', '06:32:57'),
('mark', 'Employee', '04-04-2011', '06:39:00'),
('admin', 'Admin', '13-04-2011', '02:57:26'),
('admin', 'Admin', '13-04-2011', '03:06:11'),
('admin', 'Admin', '13-04-2011', '03:08:31'),
('admin', 'Admin', '13-04-2017', '03:09:40'),
('admin', 'Admin', '13-04-2017', '03:13:24'),
('admin', 'Admin', '13-04-2017', '05:04:26'),
('admin', 'Admin', '24-03-2018', '08:51:01'),
('mark', 'Employee', '24-03-2018', '08:52:17'),
('admin', 'Admin', '24-03-2018', '08:52:50');

-- --------------------------------------------------------

--
-- Table structure for table `message_history`
--

CREATE TABLE `message_history` (
  `MESSAGE_FROM` varchar(20) NOT NULL,
  `MESSAGE_TO` varchar(20) NOT NULL,
  `MESSAGE_TEXT` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `BARCODE` varchar(20) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `TYPE` varchar(20) NOT NULL,
  `QUANTITY` int(11) NOT NULL,
  `PRICE` double NOT NULL,
  `AMOUNT` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`BARCODE`, `NAME`,`USER_ID`, `TYPE`, `QUANTITY`, `PRICE`, `AMOUNT`) VALUES
('fsdgjfihjorodsf', 'Novalo',1, 'Pills',  40, 2, 80);

-- --------------------------------------------------------


--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `DOB` varchar(20) NOT NULL,
  `ADDRESS` varchar(100) NOT NULL,
  `PHONE` varchar(20) NOT NULL,
  `SALARY` double NOT NULL,
  `PASSWORD` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `NAME`, `DOB`, `ADDRESS`, `PHONE`, `SALARY`, `PASSWORD`) VALUES
(1, 'admin', '23-12-1995', 'Rus', '9800000000', 50000, 'admin'),
(2, 'mark', '3-2-1972', 'Russ', '01290789432', 2000, 'mark'),
(3, 'clark', '3-2-1971', 'Rus', '01147893423', 4000, 'rootaccess'),
(4, 'Tont Stark', '7-8-1977', ' California', '011804368743', 3000, 'rootaccess');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--


--
-- Indexes for table `drugs`
--
ALTER TABLE `drugs`
  ADD PRIMARY KEY (`BARCODE`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`BARCODE`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);
--
-- Indexes for table `purchase`
--  
  ALTER TABLE purchase 
  add constraint fkr3
  foreign key(USER_ID)
  references users(id) 
  on update cascade on delete cascade;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
