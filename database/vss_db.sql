-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2022 at 12:02 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vss_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(30) NOT NULL,
  `code` varchar(200) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `thumbnail_path` text NOT NULL,
  `video_path` text NOT NULL,
  `user_id` int(30) NOT NULL,
  `total_views` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `code`, `title`, `description`, `thumbnail_path`, `video_path`, `user_id`, `total_views`, `date_created`) VALUES
(9, 'b3SaDAgylFVieO8k', 'Darbar', 'Song', '', 'b3SaDAgylFVieO8k.mp4', 4, 1, '2022-11-03 11:25:16'),
(11, 'GfVhnaZvWp25CRzK', 'Rajini', 'Entry Song', 'GfVhnaZvWp25CRzK.jpg', 'GfVhnaZvWp25CRzK.mp4', 6, 0, '2022-11-03 16:20:57'),
(12, 'juOB9fvsqW7LIwKg', 'Clock', 'Rotation', 'juOB9fvsqW7LIwKg.jpg', 'juOB9fvsqW7LIwKg.mov', 6, 0, '2022-11-03 16:25:11'),
(13, 'Do3CrwjAI6LqGgyQ', 'Earth', 'Earth Rotation', 'Do3CrwjAI6LqGgyQ.mp4', 'Do3CrwjAI6LqGgyQ.jpg', 6, 0, '2022-11-03 16:26:38'),
(14, 'iqQ9EaO1xdP0tgY6', 'Sampe', 'Testing', 'iqQ9EaO1xdP0tgY6.jpg', 'iqQ9EaO1xdP0tgY6.mp4', 6, 0, '2022-11-03 16:29:37'),
(15, 'uBVLvxiAPc5YjOpZ', 'Mobile Phone', 'Testing', 'uBVLvxiAPc5YjOpZ.jpg', 'uBVLvxiAPc5YjOpZ.mp4', 6, 0, '2022-11-03 16:31:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `avatar` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `middlename`, `contact`, `address`, `email`, `password`, `avatar`, `date_created`) VALUES
(1, 'John', 'Smith', 'C', '8909876789', 'Sample Address', 'jsmith@sample.com', '1254737c076cf867dc53d60a0364f38e', '', '2022-11-03 10:32:29'),
(2, 'Claire', 'Blake', '', '8747808787', 'Sample Address', 'cblake@sample.com', '4744ddea876b11dcb1d169fadf494418', '', '2022-11-03 10:13:17'),
(3, 'George', 'Wilson', '', '9809878987', 'Sample Address', 'gwilson@sample.com', 'gwilson123', '', '2022-11-03 11:26:17'),
(4, 'Kaviyarasu', 'V', '', '6789876909', 'hvhdfhfdhfdhfd', 'kaviv261@gmail.com', 'aaa123', '', '2022-11-03 11:24:17'),
(5, 'Sasi', 'k', 'ram', '7865789078', 'karur', 'sasi@gmail.com', 'sasi123', '1667471940_2.jpg', '2022-11-03 16:09:20'),
(6, 'arun', 'kumar', '', '6789876909', 'trichy', 'arun@gmail.com', 'arun', '', '2022-11-03 16:19:58');

-- --------------------------------------------------------

--
-- Table structure for table `views`
--

CREATE TABLE `views` (
  `id` int(30) NOT NULL,
  `upload_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `ip_address` varchar(200) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `views`
--

INSERT INTO `views` (`id`, `upload_id`, `user_id`, `ip_address`, `date_created`) VALUES
(1, 2, 0, '::1', '2023-11-03 14:44:37'),
(2, 2, 2, '', '2022-11-03 14:48:16'),
(3, 1, 2, '', '2022-11-03 14:59:06'),
(4, 1, 0, '::1', '2022-11-03 15:48:14'),
(5, 4, 0, '::1', '2022-11-03 15:49:45'),
(6, 3, 0, '::1', '2022-11-03 17:08:36'),
(7, 5, 0, '::1', '2022-11-03 17:08:55'),
(8, 8, 0, '::1', '2022-11-03 11:23:08'),
(9, 9, 0, '::1', '2022-11-03 11:28:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `views`
--
ALTER TABLE `views`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
