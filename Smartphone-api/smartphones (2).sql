-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 10, 2024 at 09:15 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smartphones`
--

-- --------------------------------------------------------

--
-- Table structure for table `phonedetails`
--

DROP TABLE IF EXISTS `phonedetails`;
CREATE TABLE IF NOT EXISTS `phonedetails` (
  `DetailID` int NOT NULL AUTO_INCREMENT,
  `PhoneID` int NOT NULL,
  `ReleaseYear` year NOT NULL,
  `Camera` varchar(255) NOT NULL,
  `Processor` varchar(255) NOT NULL,
  `Display` varchar(255) NOT NULL,
  `BatteryCapacity` int NOT NULL,
  `CanadianPrice` decimal(10,2) NOT NULL,
  PRIMARY KEY (`DetailID`),
  KEY `fk_phone` (`PhoneID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `phonedetails`
--

INSERT INTO `phonedetails` (`DetailID`, `PhoneID`, `ReleaseYear`, `Camera`, `Processor`, `Display`, `BatteryCapacity`, `CanadianPrice`) VALUES
(1, 1, 2021, 'Triple 64MP + 12MP + 12MP', 'Exynos 2100 (International) / Snapdragon 888 (USA)', '6.2 inches, Dynamic AMOLED 2X, 120Hz', 4000, '1129.00'),
(2, 2, 2020, 'Dual 12MP + 12MP', 'A14 Bionic', '6.1 inches, Super Retina XDR OLED', 2815, '979.00'),
(3, 3, 2021, 'Triple 48MP + 50MP + 2MP', 'Snapdragon 888', '6.55 inches, Fluid AMOLED, 120Hz', 4500, '799.00'),
(4, 4, 2020, 'Dual 12.2MP + 16MP', 'Snapdragon 765G', '6.0 inches, OLED, 90Hz', 4080, '799.00'),
(5, 5, 2021, 'Triple 108MP + 13MP + 5MP', 'Snapdragon 888', '6.81 inches, AMOLED, 120Hz', 4600, '849.00'),
(6, 6, 2020, 'Triple 12MP + 12MP + 12MP', 'Snapdragon 865', '6.1 inches, OLED, 120Hz', 4000, '1199.00'),
(7, 7, 2020, 'Triple 108MP + 16MP + 8MP', 'Snapdragon 865', '6.7 inches, OLED, 90Hz', 5000, '1049.00'),
(8, 8, 2020, 'Triple 64MP + 13MP + 12MP', 'Snapdragon 765G', '6.8 inches, Rotating P-OLED', 4000, '1199.00'),
(9, 9, 2020, 'Quad 50MP + 12MP + 40MP + TOF 3D', 'Kirin 990 5G', '6.58 inches, OLED, 90Hz', 4200, '1349.00'),
(10, 10, 2021, 'Quad 50MP + 13MP + 50MP + 3MP', 'Snapdragon 888', '6.7 inches, LTPO AMOLED, 1B colors, 120Hz', 4500, '1450.00');

-- --------------------------------------------------------

--
-- Table structure for table `phones`
--

DROP TABLE IF EXISTS `phones`;
CREATE TABLE IF NOT EXISTS `phones` (
  `PhoneID` int NOT NULL AUTO_INCREMENT,
  `Model` varchar(255) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `ImageFileName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PhoneID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `phones`
--

INSERT INTO `phones` (`PhoneID`, `Model`, `Price`, `ImageFileName`) VALUES
(1, 'Samsung Galaxy S21', '1129.00', 'Samsung-Galaxy-S21.jpeg'),
(2, 'Apple iPhone 12', '979.00', 'apple-iphone-12.jpg'),
(3, 'OnePlus 9', '799.00', 'oneplus-9.jpg'),
(4, 'Google Pixel 5', '799.00', 'google-pixel-5.jpg'),
(5, 'Xiaomi Mi 11', '849.00', 'xiaomi-mi-11.jpg'),
(6, 'Sony Xperia 5 II', '1199.00', 'sony-xperia-5-ii.jpg'),
(7, 'Motorola Edge Plus', '1049.00', 'motorola-edge-plus.jpg'),
(8, 'LG Wing', '1199.00', 'lg-wing.jpg'),
(9, 'Huawei P40 Pro', '1349.00', 'huawei-p40-pro.jpg'),
(10, 'Oppo Find X3 Pro', '1450.00', 'oppo-find-x3-pro.jpg');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `phonedetails`
--
ALTER TABLE `phonedetails`
  ADD CONSTRAINT `fk_phone` FOREIGN KEY (`PhoneID`) REFERENCES `phones` (`PhoneID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
