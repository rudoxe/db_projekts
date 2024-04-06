-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 06, 2024 at 05:44 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_book_store_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `full_name`, `email`, `password`) VALUES
(1, 'Elias', 'ipa22.r.vikmanis@vtdt.edu.lv', '$2y$10$Nqq/y251QX2Ccvb1Ax7hUuMqQSkG3yRLCxN2KPdetnSP3oaXVH70a');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`) VALUES
(3, 'Nikhil Abraham'),
(4, 'F. Scott Fitzgerald'),
(5, 'J.K. Rowling'),
(6, 'J.D. Salinger'),
(7, 'Harper Lee'),
(8, 'George Orwell'),
(9, 'Jane Austen');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `author_id` int NOT NULL,
  `description` text NOT NULL,
  `category_id` int NOT NULL,
  `cover` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author_id`, `description`, `category_id`, `cover`, `file`) VALUES
(1, 'Pride and Prejudice', 1, 'Jane Austen\'s famous novel depicting the societal issues of 19th-century England.', 1, 'pride_and_prejudice.jpg', 'pride_and_prejudice.pdf'),
(2, '1984', 2, 'George Orwell\'s dystopian masterpiece portraying a totalitarian regime and its impact on individual freedom.', 1, '1984.jpg', '1984.pdf'),
(3, 'To Kill a Mockingbird', 3, 'Harper Lee\'s Pulitzer Prize-winning novel addressing racial injustice and moral growth in the American South.', 1, 'to_kill_a_mockingbird.jpg', 'to_kill_a_mockingbird.pdf'),
(4, 'The Catcher in the Rye', 4, 'J.D. Salinger\'s iconic novel following the journey of Holden Caulfield through the streets of New York City.', 1, 'the_catcher_in_the_rye.jpg', 'the_catcher_in_the_rye.pdf'),
(5, 'Harry Potter and the Sorcerer\'s Stone', 5, 'J.K. Rowling\'s fantasy novel introducing readers to the magical world of Hogwarts and the young wizard Harry Potter.', 2, 'harry_potter_and_the_sorcerers_stone.jpg', 'harry_potter_and_the_sorcerers_stone.pdf'),
(6, 'The Great Gatsby', 6, 'F. Scott Fitzgerald\'s classic novel depicting the Jazz Age in America and the pursuit of the American Dream.', 1, 'the_great_gatsby.jpg', 'the_great_gatsby.pdf'),
(7, 'Coding For Dummies', 7, 'A beginner\'s guide to coding and programming concepts written by Nikhil Abraham.', 3, '6611899f7ecac0.31647655.jpg', '66118968df5a55.32263905.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(3, 'Novel'),
(4, 'Dystopian'),
(5, 'Fantasy novel'),
(6, 'Coding');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
