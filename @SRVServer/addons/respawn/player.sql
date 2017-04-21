-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 20, 2017 at 08:00 PM
-- Server version: 5.6.33
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u0103425_arma_server_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE `player` (
  `uid` varchar(32) NOT NULL,
  `name` varchar(64) NOT NULL,
  `damage` double UNSIGNED NOT NULL DEFAULT '0',
  `direction` double NOT NULL DEFAULT '0',
  `position` text,
  `hitpoints` varchar(255) NOT NULL DEFAULT '[]',
  `assigned_items` text,
  `backpack` varchar(64) DEFAULT NULL,
  `backpack_items` text,
  `backpack_magazines` text,
  `backpack_weapons` text,
  `current_weapon` varchar(64) DEFAULT NULL,
  `goggles` varchar(64) DEFAULT NULL,
  `handgun_items` text,
  `handgun_weapon` varchar(64) DEFAULT NULL,
  `headgear` varchar(64) DEFAULT NULL,
  `binocular` varchar(64) DEFAULT NULL,
  `loaded_magazines` text,
  `primary_weapon` varchar(64) DEFAULT NULL,
  `primary_weapon_items` text,
  `secondary_weapon` varchar(64) DEFAULT NULL,
  `secondary_weapon_items` text,
  `uniform` varchar(64) DEFAULT NULL,
  `uniform_items` text,
  `uniform_magazines` text,
  `uniform_weapons` text,
  `vest` varchar(64) DEFAULT NULL,
  `vest_items` text,
  `vest_magazines` text,
  `vest_weapons` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--
-- Indexes for dumped tables
--

--
-- Indexes for table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`uid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
