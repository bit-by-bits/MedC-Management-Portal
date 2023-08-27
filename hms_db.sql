-- Set SQL mode and other configurations
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

-- Create the `hms_db` database if not already created
CREATE DATABASE IF NOT EXISTS `hms_db`;

-- Use the `hms_db` database
USE `hms_db`;

-- Create `registration` table
CREATE TABLE `registration` (
  `userName` varchar(100) NOT NULL,
  `bitsMail` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL,
  `bitsId` varchar(15) NOT NULL,
  `contactNo` varchar(10) NOT NULL,
  PRIMARY KEY (`userName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Insert data into `registration` table
INSERT INTO `registration` (`userName`, `bitsMail`, `password`, `bitsId`, `contactNo`) VALUES 
('oop_project', 'f20200000@pilani.bits-pilani.ac.in', '12345', '2020A3PS0000P', '7007000000'),
('john_doe', 'john@example.com', 'password123', '2023A1PS0001P', '1234567890'),
('jane_doe', 'jane@example.com', 'securepwd', '2023A1PS0002P', '9876543210');

-- Create `users` table
CREATE TABLE `users` (
  `username` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  PRIMARY KEY (`username`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`username`) REFERENCES `registration` (`userName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Insert data into `users` table
INSERT INTO `users` (`username`, `user_password`) VALUES 
('oop_project', '12345'),
('john_doe', 'password123'),
('jane_doe', 'securepwd');

-- Create `admin_users` table
CREATE TABLE `admin_users` (
  `username` varchar(100) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Insert data into `admin_users` table
INSERT INTO `admin_users` (`username`, `user_password`) VALUES 
('oop_admin', 'admin123'),
('admin2', 'admin456');

-- Create `notices` table
CREATE TABLE `notices` (
  `notice_title` varchar(100) NOT NULL,
  `notice_body` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Insert data into `notices` table
INSERT INTO `notices` (`notice_title`, `notice_body`) VALUES 
('Important Notice', 'This is an important notice for all users.'),
('Meeting Tomorrow', 'There will be a meeting tomorrow at 10:00 AM.');

-- Create `appointments` table
CREATE TABLE `appointments` (
  `name` varchar(100) NOT NULL,
  `id` varchar(100) NOT NULL,
  `contact` int NOT NULL,
  `doctor` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Insert data into `appointments` table
INSERT INTO `appointments` (`name`, `id`, `contact`, `doctor`, `time`) VALUES 
('John Doe', '2023A1PS0001P', 1234567890, 'Dr. Smith', '2023-08-28 09:00 AM'),
('Jane Doe', '2023A1PS0002P', 9876543210, 'Dr. Johnson', '2023-08-29 10:30 AM');

-- Commit the transaction
COMMIT;