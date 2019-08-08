-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2018 at 05:45 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `de_recipe`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comments`
--

CREATE TABLE `tbl_comments` (
  `comment_id` int(5) NOT NULL,
  `comment` text NOT NULL,
  `user_id` int(5) NOT NULL,
  `adddate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `recipe_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_comments`
--

INSERT INTO `tbl_comments` (`comment_id`, `comment`, `user_id`, `adddate`, `recipe_id`) VALUES
(1, 'This is very nice', 13, '2018-01-07 04:19:43', 20),
(2, 'asdfasdf asdf asdfas', 13, '2018-01-07 04:21:12', 20);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_recipe`
--

CREATE TABLE `tbl_recipe` (
  `recipe_id` int(5) NOT NULL,
  `user_id` int(5) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` text,
  `ingredients` text,
  `directions` text,
  `photo` varchar(100) DEFAULT NULL,
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_recipe`
--

INSERT INTO `tbl_recipe` (`recipe_id`, `user_id`, `name`, `description`, `ingredients`, `directions`, `photo`, `add_time`) VALUES
(19, 13, 'Magic Cake', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus imperdiet, nulla et dictum interdum, nisi lorem egestas odio, vitae scelerisque enim ligula venenatis dolor. Maecenas nisl est, ultrices nec congue eget, auctor vitae massa. Fusce luctus vestibulum augue ut aliquet. Mauris ante ligula, facilisis sed ornare eu, lobortis in odio. Praesent convallis urna a lacus interdum ut hendrerit risus congue. Nunc sagittis dictum nisi, sed ullamcorper ipsum dignissim ac...', '2 eggs\r\n1 pound sugar\r\n2 butter', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit.', 'magic-cake1.jpg', '2017-12-26 11:17:16'),
(20, 13, 'Magic Cake', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus imperdiet, nulla et dictum interdum, nisi lorem egestas odio, vitae scelerisque enim ligula venenatis dolor. Maecenas nisl est, ultrices nec congue eget, auctor vitae massa. Fusce luctus vestibulum augue ut aliquet. Mauris ante ligula, facilisis sed ornare eu, lobortis in odio. Praesent convallis urna a lacus interdum ut hendrerit risus congue. Nunc sagittis dictum nisi, sed ullamcorper ipsum dignissim ac...', '2 eggs\r\n1 pound sugar\r\n2 butter', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit.', 'magic-cake1.jpg', '2017-12-26 11:17:32'),
(21, 13, 'Magic Cake', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus imperdiet, nulla et dictum interdum, nisi lorem egestas odio, vitae scelerisque enim ligula venenatis dolor. Maecenas nisl est, ultrices nec congue eget, auctor vitae massa. Fusce luctus vestibulum augue ut aliquet. Mauris ante ligula, facilisis sed ornare eu, lobortis in odio. Praesent convallis urna a lacus interdum ut hendrerit risus congue. Nunc sagittis dictum nisi, sed ullamcorper ipsum dignissim ac...', '2 eggs\r\n1 pound sugar\r\n2 butter', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit.', 'magic-cake1.jpg', '2017-12-26 11:17:46'),
(22, 13, 'Magic Cake', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus imperdiet, nulla et dictum interdum, nisi lorem egestas odio, vitae scelerisque enim ligula venenatis dolor. Maecenas nisl est, ultrices nec congue eget, auctor vitae massa. Fusce luctus vestibulum augue ut aliquet. Mauris ante ligula, facilisis sed ornare eu, lobortis in odio. Praesent convallis urna a lacus interdum ut hendrerit risus congue. Nunc sagittis dictum nisi, sed ullamcorper ipsum dignissim ac...', '2 eggs\r\n1 pound sugar\r\n2 butter', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit.', 'florida-omelette.jpg', '2017-12-26 11:18:24'),
(23, 13, 'DAFSAADSFSDF', 'FDADFADSF', 'GKJGKJHKHLKJH;LKH', 'ADFADFSASDF', 'florida-omelette.jpg', '2017-12-28 07:04:31');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(5) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_name`, `user_email`, `password`, `add_time`) VALUES
(13, 'Bhargav', 'bhargav.kiran@gmail.com', '12345', '2017-12-25 17:01:40'),
(14, 'Bhargav Kiran', 'bhargav.kiran@vishnu.edu.in', '12345', '2018-01-02 09:49:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `tbl_recipe`
--
ALTER TABLE `tbl_recipe`
  ADD PRIMARY KEY (`recipe_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  MODIFY `comment_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_recipe`
--
ALTER TABLE `tbl_recipe`
  MODIFY `recipe_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
