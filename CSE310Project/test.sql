-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2020 at 08:29 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `beginner`
--

CREATE TABLE `beginner` (
  `reps` int(20) NOT NULL,
  `sets` int(20) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beginner`
--

INSERT INTO `beginner` (`reps`, `sets`, `type`) VALUES
(5, 2, 'pushup'),
(5, 3, 'Sit ups'),
(5, 2, 'Back'),
(5, 3, 'Legs'),
(5, 3, 'Chest(normal)'),
(5, 3, 'Abs'),
(5, 3, 'Legs'),
(5, 3, 'Shoulders');

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE `equipment` (
  `name` varchar(255) NOT NULL,
  `amount` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`name`, `amount`) VALUES
('trademill', 5),
('trademill', 6),
('weights', 15),
('Rowing machine', 5),
('Eliptical aka cross trainer', 4),
('Upright bike', 5),
('Leg curl', 3),
('Abs crunch', 2),
('Chest press machine', 5),
('Stair mill', 3),
('Recumbent exercise bike', 3),
('Hack squat machine', 3),
('Seated calf machine', 2),
('Bench press', 3),
('Shoulder press', 3);

-- --------------------------------------------------------

--
-- Table structure for table `intense`
--

CREATE TABLE `intense` (
  `reps` int(20) NOT NULL,
  `sets` int(20) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `intense`
--

INSERT INTO `intense` (`reps`, `sets`, `type`) VALUES
(15, 5, 'pushup'),
(8, 4, 'Chest(Burbell)'),
(10, 4, 'Back'),
(10, 4, 'Shoulders'),
(10, 4, 'biceps (10kg)'),
(15, 5, 'Triceps'),
(20, 5, 'Sit ups'),
(15, 5, 'Abs');

-- --------------------------------------------------------

--
-- Table structure for table `medium`
--

CREATE TABLE `medium` (
  `reps` int(20) NOT NULL,
  `sets` int(20) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medium`
--

INSERT INTO `medium` (`reps`, `sets`, `type`) VALUES
(15, 4, 'Sit ups'),
(5, 3, 'Sit ups'),
(8, 3, 'Chest(Burbell)'),
(10, 2, 'Back'),
(10, 3, 'Shoulders'),
(10, 3, 'Legs'),
(10, 5, 'Triceps'),
(10, 4, 'Abs');

-- --------------------------------------------------------

--
-- Table structure for table `traineemessage`
--

CREATE TABLE `traineemessage` (
  `name` varchar(200) NOT NULL,
  `message` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `trainermessage`
--

CREATE TABLE `trainermessage` (
  `name` varchar(200) NOT NULL,
  `message` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` int(200) NOT NULL,
  `age` int(200) NOT NULL,
  `sex` varchar(200) NOT NULL,
  `weight` int(200) NOT NULL,
  `height` varchar(200) NOT NULL,
  `current_address` varchar(200) NOT NULL,
  `prev_exp` varchar(200) NOT NULL,
  `maj_inj` varchar(200) NOT NULL,
  `habi_smoke` varchar(200) NOT NULL,
  `user_type` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `password`, `email`, `phone`, `age`, `sex`, `weight`, `height`, `current_address`, `prev_exp`, `maj_inj`, `habi_smoke`, `user_type`) VALUES
(1, 'Jisan', 'kulu', 'jisanuday27@gmail.com', 1302311986, 52, 'm', 5, '5', 'mogbazar', 'asuhduad', 'aiusdguas', 'auushdau', 'Trainer'),
(2, 'sazzad', 'kulus', 'sazzadkulu@gmail.com', 1302311986, 52, 'male', 52, '6', 'bra mm on baria', '1 year', 'no', 'auushdau', 'Trainee'),
(3, 'arafat', 'arafat', 'arafat123@gmail.com', 132145698, 24, 'female', 65, '5', 'gram', '5', 'no', 'yes', 'trainee'),
(4, 'admin', 'admin', 'admin@admin.com', 123546, 52, 'male', 52, '5', 'mogbazar', 'asuhduad', 'no', 'no', 'admin'),
(5, 'Dola', 'hello', 'dola@dola.com', 123123, 25, 'female', 52, '5', 'mogbazar', 'yes', 'no', 'no', 'trainer'),
(6, 'ads', 'ads', 'ads@gmail.com', 123456789, 52, 'male', 54, '6', 'uttara', '1 year', 'no', 'yes', 'Trainee '),
(7, 'hello', 'hello', 'hello@hello.com', 13123132, 52, 'm', 63, '6', 'sadas', 'asd', 'dsa', 'sd', 'trainee'),
(8, 'rifat', 'asdf', 'rifatadar06@gmail.com', 132456987, 24, 'male', 65, '5', 'mogbazar', '1 year', 'no', 'no', 'trainer'),
(9, 'Adar', '123', 'adar@adar.com', 123123123, 30, 'Male', 83, '5', 'mogbazar', 'no', 'no', 'no', 'trainee');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
