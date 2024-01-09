-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 28, 2022 at 10:00 AM
-- Server version: 5.7.32
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `car_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `car_id` int(11) NOT NULL,
  `car_category` varchar(500) NOT NULL,
  `car_name` varchar(500) NOT NULL,
  `car_descrip` varchar(500) NOT NULL,
  `car_price` varchar(500) NOT NULL,
  `car_code` varchar(500) NOT NULL,
  `car_feature` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`car_id`, `car_category`, `car_name`, `car_descrip`, `car_price`, `car_code`, `car_feature`) VALUES
(1, 'Maruti', 'Maruti Baleno', 'Spacious interior Well built on the inside and out. Fitment quality feels premium now Well-loaded features list\r\nRefined and enjoyable to use petrol engine\r\nComfortable ride quality even over bad roads', '600000', '1212', '2021'),
(2, 'TATA', 'Tata Punch', 'Striking looks High quality cabin Great interior space and comfort Ride comfort over bad roads Mild off road capability 5-star Global NCAP safety rating', '800000', '1321', '2022'),
(4, 'Hyundai', 'Creta ', 'Mid-Size,SUV Petrol, Diesel,Manual,Automatic  ', '1200000', '1231', '2021'),
(5, 'Honda', 'Honda Amaze', 'The Honda New Amaze is a Big compact sedan with good performance, features & tech.Honda New Amaze is a available in 9 variants - E MT DIESEL Diesel,E MT PETROL Petrol,S CVT Petrol,S MT Diesel,S MT Petrol,VX CVT Diesel,VX CVT Petrol,VX MT Diesel,VX MT Petrol,', '700000', '1245', '2022'),
(6, ' Renault ', 'Kwid', 'The Renault Kwid is a SUV styled hatchback with affordable pricing & connected car features. Renault Kwid is a available in 11 variants - CLIMBER(O) EASY-R DT Petrol, CLIMBER(O) EASY-R Petrol, RXT(O) 1.0L EASY-R Petrol, CLIMBER (O) DT Petrol, CLIMBER (O) Petrol, RXL 1.0 EASY-R Petrol, RXT 1.0L (O) Petrol, RXT 0.8 Petrol, RXL 1.0 Petrol, RXL 0.8 Petrol, RXE 0.8 Petrol.', '500000', '1281', '2021');

-- --------------------------------------------------------

--
-- Table structure for table `car_db`
--

CREATE TABLE `car_db` (
  `id` int(11) NOT NULL,
  `car_id` varchar(500) NOT NULL,
  `car_price` varchar(500) NOT NULL,
  `quantity` varchar(500) NOT NULL,
  `total` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`car_id`),
  ADD UNIQUE KEY `Unique` (`car_code`),
  ADD UNIQUE KEY `car_category` (`car_category`);

--
-- Indexes for table `car_db`
--
ALTER TABLE `car_db`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `car_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `car_db`
--
ALTER TABLE `car_db`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
