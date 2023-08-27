-- Set SQL mode and other configurations
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

-- Drop the `hms_db` database if it already exists
DROP DATABASE IF EXISTS `hms_db`;

-- Create the `hms_db` database if not already created
CREATE DATABASE IF NOT EXISTS `hms_db`;

-- Use the `hms_db` database
USE `hms_db`;

-- Create `registration` table
CREATE TABLE IF NOT EXISTS `registration` (
  `userName` varchar(100) NOT NULL,
  `bitsMail` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL,
  `bitsId` varchar(15) NOT NULL,
  `contactNo` varchar(10) NOT NULL,
  PRIMARY KEY (`userName`)
);

-- Insert sample data into `registration` table
INSERT INTO `registration` (`userName`, `bitsMail`, `password`, `bitsId`, `contactNo`) VALUES 
('johndoe', 'johndoe@bits-pilani.ac.in', 'securepassword1', '2023A1PS1234P', '1234567890'),
('janedoe', 'janedoe@bits-pilani.ac.in', 'securepassword2', '2023A1PS5678P', '9876543210');

-- Create `users` table
CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  PRIMARY KEY (`username`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`username`) REFERENCES `registration` (`userName`)
);

-- Insert sample data into `users` table
INSERT INTO `users` (`username`, `user_password`) VALUES 
('johndoe', 'securepassword1'),
('janedoe', 'securepassword2');

-- Create `admin_users` table
CREATE TABLE IF NOT EXISTS `admin_users` (
  `username` varchar(100) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  PRIMARY KEY (`username`)
);

-- Insert sample data into `admin_users` table
INSERT INTO `admin_users` (`username`, `user_password`) VALUES 
('admin1', 'adminpassword1'),
('admin2', 'adminpassword2');

-- Create `notices` table
CREATE TABLE IF NOT EXISTS `notices` (
  `notice_id` INT AUTO_INCREMENT PRIMARY KEY,
  `notice_title` varchar(100) NOT NULL,
  `notice_body` TEXT NOT NULL
);

-- Insert sample data into `notices` table
INSERT INTO `notices` (`notice_title`, `notice_body`) VALUES 
('Important Notice 1', 'This is an important notice for all users. Please read it carefully.'),
('Important Notice 2', 'Another important notice to keep you informed.');

-- Create `appointments` table
CREATE TABLE IF NOT EXISTS `appointments` (
  `appointment_id` INT AUTO_INCREMENT PRIMARY KEY,
  `name` varchar(100) NOT NULL,
  `id` varchar(15) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `doctor` varchar(100) NOT NULL,
  `time` INT NOT NULL
);

-- Insert sample data into `appointments` table
INSERT INTO `appointments` (`name`, `id`, `contact`, `doctor`, `time`) VALUES 
('John Doe', '2023A1PS1234P', '1234567890', 'Dr. Smith', '1930'),
('Jane Doe', '2023A1PS5678P', '9876543210', 'Dr. Johnson', '1100');

-- Create `orders` table
CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` INT AUTO_INCREMENT PRIMARY KEY,
  `name` VARCHAR(100) NOT NULL,
  `id` VARCHAR(15) NOT NULL,
  `mode` VARCHAR(100) NOT NULL,
  `medicine` VARCHAR(100) NOT NULL,
  `qty` INT NOT NULL,
  `order_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Insert sample data into `orders` table
INSERT INTO `orders` (`name`, `id`, `mode`, `medicine`, `qty`) VALUES 
('John Doe', '2023A1PS1234P', 'Instant', 'Painkiller', 5),
('Jane Doe', '2023A1PS5678P', 'Later', 'Antibiotic', 3);

-- Commit the transaction
COMMIT;