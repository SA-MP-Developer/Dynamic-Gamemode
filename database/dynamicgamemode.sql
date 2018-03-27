-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 27 mars 2018 à 18:43
-- Version du serveur :  5.7.19
-- Version de PHP :  5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `dynamicgamemode`
--

-- --------------------------------------------------------

--
-- Structure de la table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
CREATE TABLE IF NOT EXISTS `accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `cash` int(11) NOT NULL,
  `kills` int(11) NOT NULL,
  `deaths` int(11) NOT NULL,
  `experience` int(11) NOT NULL,
  `telNumber` int(11) NOT NULL,
  `skin` int(11) NOT NULL,
  `idInventory` int(11) NOT NULL,
  `gender` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `business`
--

DROP TABLE IF EXISTS `business`;
CREATE TABLE IF NOT EXISTS `business` (
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
  `virtualworld` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `businesstype`
--

DROP TABLE IF EXISTS `businesstype`;
CREATE TABLE IF NOT EXISTS `businesstype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `containers`
--

DROP TABLE IF EXISTS `containers`;
CREATE TABLE IF NOT EXISTS `containers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idOwner` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `containerstype`
--

DROP TABLE IF EXISTS `containerstype`;
CREATE TABLE IF NOT EXISTS `containerstype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `factions`
--

DROP TABLE IF EXISTS `factions`;
CREATE TABLE IF NOT EXISTS `factions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `idType` int(11) NOT NULL,
  `idFactionQG` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `factionsqg`
--

DROP TABLE IF EXISTS `factionsqg`;
CREATE TABLE IF NOT EXISTS `factionsqg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `posExtX` float NOT NULL,
  `posExtY` float NOT NULL,
  `posExtZ` float NOT NULL,
  `posIntX` float NOT NULL,
  `posIntY` float NOT NULL,
  `posIntZ` float NOT NULL,
  `virtualworld` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `factionstype`
--

DROP TABLE IF EXISTS `factionstype`;
CREATE TABLE IF NOT EXISTS `factionstype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `houses`
--

DROP TABLE IF EXISTS `houses`;
CREATE TABLE IF NOT EXISTS `houses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idType` int(11) NOT NULL,
  `virtualworld` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `housestype`
--

DROP TABLE IF EXISTS `housestype`;
CREATE TABLE IF NOT EXISTS `housestype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `interior` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE IF NOT EXISTS `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idContainer` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `itemType` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `itemstype`
--

DROP TABLE IF EXISTS `itemstype`;
CREATE TABLE IF NOT EXISTS `itemstype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `qgtype`
--

DROP TABLE IF EXISTS `qgtype`;
CREATE TABLE IF NOT EXISTS `qgtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `interior` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE IF NOT EXISTS `vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idModel` int(11) NOT NULL,
  `idTrunk` int(11) NOT NULL,
  `idOwner` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `vehiclesmodels`
--

DROP TABLE IF EXISTS `vehiclesmodels`;
CREATE TABLE IF NOT EXISTS `vehiclesmodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
