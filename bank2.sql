-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2022 at 06:50 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank2`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `Account_no` int(10) NOT NULL,
  `Account_type` varchar(10) NOT NULL,
  `Balance` int(20) NOT NULL,
  `Aadhar_no` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`Account_no`, `Account_type`, `Balance`, `Aadhar_no`) VALUES
(10001, 'Savings', 200100, '111111222222'),
(10002, 'Savings', 10000, '222222111111'),
(10003, 'Savings', 30100, '222222333333'),
(10004, 'Savings', 21100, '333333222222'),
(10005, 'Savings', 10000, '333333444444'),
(10006, 'Savings', 24800, '444444333333'),
(10007, 'savings', 10000, '111111111111'),
(10008, 'savings', 1183000, '101010101010');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `FName` varchar(20) NOT NULL,
  `LName` varchar(20) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Phone_no` varchar(10) NOT NULL,
  `Aadhar_no` varchar(12) NOT NULL,
  `DOB` varchar(10) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Username` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`FName`, `LName`, `Address`, `Email`, `Phone_no`, `Aadhar_no`, `DOB`, `Gender`, `Username`) VALUES
('sineka', 'ram', 'thanjore', 'sineka@gmail.com', '4567890123', '101010101010', '13-10-2000', 'Female', 'sine'),
('moni', 'sekar', 'salem', 'moni@gmail.com', '9012345678', '111111111111', '23-12-2000', 'Female', 'moni'),
('Riddhi', 'Sanghvi', 'Shivajinagr, Pune -03', 'rsanghvi97@gmail.com', '7709319760', '111111222222', '1997-10-31', 'Female', 'Riddhi'),
('Ruchi', 'Shinde', 'Hadapsar,Pune -12', 'ruchi@gmail.com', '8446018873', '222222111111', '1997-07-13', 'Female', 'RuchiS'),
('Shikha', 'Jaiswal', 'ABC,Pune-14', 'shikhaJ@yahoo.com', '9096761781', '333333222222', '1996-12-02', 'Female', 'Shikh'),
('Priyanka', 'Lokhande', 'Vishrantwadi,Pune-01', 'pri97@gmail.com', '9762904612', '333333444444', '1997-10-25', 'Female', 'Pri'),
('Sharvari', 'Kulkarni', 'Vimannagar,Pune-02', 'sharvari@gmail.com', '7709880176', '444444333333', '1997-03-04', 'Female', 'Shar');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `eid` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `salary` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`eid`, `name`, `phone`, `salary`) VALUES
('E001', 'sundari', '9188024134', '125000'),
('E002', 'Karthika', '9876543218', '150000'),
('E003', 'Jumana', '987655328', '200000'),
('E004', 'Sandhiya', '786543279', '156789'),
('E005', 'Akila', '8281175783', '250000');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `Sr` int(10) NOT NULL,
  `Account_no` int(10) NOT NULL,
  `BenificiaryAccount_no` int(10) NOT NULL,
  `Amount` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`Sr`, `Account_no`, `BenificiaryAccount_no`, `Amount`) VALUES
(1, 10001, 10004, 1000),
(2, 10001, 10002, 100),
(3, 10001, 10003, 100),
(4, 10006, 10005, 100),
(5, 10008, 10001, 500),
(6, 10008, 10001, 1500);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Username` varchar(20) NOT NULL,
  `Password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Username`, `Password`) VALUES
('mmnn', 'mmnnww'),
('moni', 'moni12'),
('narma', 'narmat'),
('pree', 'pree19'),
('Pri', 'Pri123'),
('Riddhi', 'sangss'),
('RuchiS', 'ruchi'),
('Shar', 'shar'),
('Shikh', 'shikha'),
('sine', 'sine13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`Account_no`),
  ADD KEY `Aadhar_no` (`Aadhar_no`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Aadhar_no`),
  ADD KEY `Username` (`Username`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`Sr`),
  ADD KEY `Account_no` (`Account_no`),
  ADD KEY `BenificiaryAccount_no` (`BenificiaryAccount_no`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `Account_no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10009;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `Sr` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `Account_ibfk_1` FOREIGN KEY (`Aadhar_no`) REFERENCES `customer` (`Aadhar_no`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `Customer_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `user` (`Username`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `Transactions_ibfk_1` FOREIGN KEY (`Account_no`) REFERENCES `account` (`Account_no`),
  ADD CONSTRAINT `Transactions_ibfk_2` FOREIGN KEY (`BenificiaryAccount_no`) REFERENCES `account` (`Account_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
