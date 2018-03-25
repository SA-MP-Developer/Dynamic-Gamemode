-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2018 at 08:06 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sa-mp-fr`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `ip` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bans`
--

CREATE TABLE `bans` (
  `ID` int(11) NOT NULL,
  `IP` varchar(15) NOT NULL,
  `ReasonBan` varchar(144) NOT NULL,
  `BanBy` varchar(24) NOT NULL,
  `BanTime` int(11) NOT NULL,
  `HourOfBan` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `business`
--

CREATE TABLE `business` (
  `id` int(11) NOT NULL,
  `idOwner` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `posExtX` float NOT NULL,
  `posExtY` float NOT NULL,
  `posExtZ` float NOT NULL,
  `posIntX` float NOT NULL,
  `posIntY` float NOT NULL,
  `posIntZ` float NOT NULL,
  `idType` int(11) NOT NULL,
  `virtualworld` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `factions`
--

CREATE TABLE `factions` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `idType` int(11) NOT NULL,
  `idFactionQG` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `houses`
--

CREATE TABLE `houses` (
  `id` int(11) NOT NULL,
  `idType` int(11) NOT NULL,
  `virtualworld` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL,
  `idModel` int(11) NOT NULL,
  `idOwner` int(11) NOT NULL,
  `PosX` float NOT NULL,
  `PosY` float NOT NULL,
  `PosZ` float NOT NULL,
  `RotX` float NOT NULL,
  `RotY` float NOT NULL,
  `RotZ` float NOT NULL,
  `Interior` int(11) NOT NULL,
  `VirtualWorld` int(11) NOT NULL,
  `ColorOne` int(11) NOT NULL,
  `ColorTwo` int(11) NOT NULL,
  `Plate` varchar(255) NOT NULL DEFAULT 'Aucun'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vehicles_params`
--

CREATE TABLE `vehicles_params` (
  `VehicleSQLID` int(11) NOT NULL,
  `Engine` tinyint(1) NOT NULL,
  `Door1` tinyint(1) NOT NULL,
  `Door2` tinyint(1) NOT NULL,
  `Door3` tinyint(1) NOT NULL,
  `Door4` tinyint(1) NOT NULL,
  `Window1` tinyint(1) NOT NULL,
  `Window2` tinyint(1) NOT NULL,
  `Window3` tinyint(1) NOT NULL,
  `Window4` tinyint(1) NOT NULL,
  `Trunk` tinyint(1) NOT NULL,
  `Hood` tinyint(1) NOT NULL,
  `Alarm` tinyint(1) NOT NULL,
  `IsAlarm` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vehicles_trunk`
--

CREATE TABLE `vehicles_trunk` (
  `id` int(11) NOT NULL,
  `VehicleID` int(11) NOT NULL,
  `ObjectType` int(11) NOT NULL,
  `ObjectID` int(11) NOT NULL,
  `ModelID` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bans`
--
ALTER TABLE `bans`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `business`
--
ALTER TABLE `business`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `factions`
--
ALTER TABLE `factions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles_params`
--
ALTER TABLE `vehicles_params`
  ADD PRIMARY KEY (`VehicleSQLID`);

--
-- Indexes for table `vehicles_trunk`
--
ALTER TABLE `vehicles_trunk`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bans`
--
ALTER TABLE `bans`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `factions`
--
ALTER TABLE `factions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `houses`
--
ALTER TABLE `houses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vehicles_trunk`
--
ALTER TABLE `vehicles_trunk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
