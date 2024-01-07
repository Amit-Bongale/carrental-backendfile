-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2024 at 08:21 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cars`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `name` varchar(50) NOT NULL,
  `mobile` int(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `location` varchar(100) NOT NULL,
  `pickuptime` varchar(15) NOT NULL,
  `pickupdate` varchar(20) NOT NULL,
  `dropdate` varchar(20) NOT NULL,
  `id` int(100) NOT NULL,
  `carmodel` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`name`, `mobile`, `email`, `location`, `pickuptime`, `pickupdate`, `dropdate`, `id`, `carmodel`) VALUES
('Amit 21', 2147483647, 'hokado44sfd11@mcenb.com', 'banglore', '20:53', '2023-12-09', '2023-12-13', 21, ''),
('amit', 2147483647, 'wenayep651@wikfee.com', 'sanajksdfaskd', '23:22', '2023-12-27', '2023-12-29', 22, 'Kia Optima'),
('amit', 2147483647, 'wenayep651@wikfee.com', 'sanajksdfaskd', '23:22', '2023-12-27', '2023-12-29', 23, 'Kia Optima');

-- --------------------------------------------------------

--
-- Table structure for table `carsdata`
--

CREATE TABLE `carsdata` (
  `model` varchar(50) NOT NULL,
  `drivername` varchar(50) NOT NULL,
  `driverrating` varchar(5) NOT NULL,
  `carrating` varchar(5) NOT NULL,
  `seats` varchar(2) NOT NULL,
  `priceperday` varchar(10) NOT NULL,
  `drivercontact` varchar(50) NOT NULL,
  `driveremail` varchar(50) NOT NULL,
  `imageurl1` varchar(1000) NOT NULL,
  `imageurl2` varchar(1000) NOT NULL,
  `imageurl3` varchar(1000) NOT NULL,
  `imageurl4` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carsdata`
--

INSERT INTO `carsdata` (`model`, `drivername`, `driverrating`, `carrating`, `seats`, `priceperday`, `drivercontact`, `driveremail`, `imageurl1`, `imageurl2`, `imageurl3`, `imageurl4`) VALUES
('AudiA4', 'Karthik Menon', '4.5', '4.6', '4', '3500', '+91 87654 32109', 'karthik.menon@gmail.com', 'https://stimg.cardekho.com/images/carexteriorimages/930x620/Audi/A4/10548/1689591781105/front-left-side-47.jpg', 'https://stimg.cardekho.com/images/carexteriorimages/930x620/Audi/A4/10548/1689591781105/side-view-(left)-90.jpg', 'https://stimg.cardekho.com/images/carexteriorimages/930x620/Audi/A4/10548/1689591781105/front-view-118.jpg', 'https://stimg.cardekho.com/images/carexteriorimages/930x620/Audi/A4/10548/1689591781105/rear-view-119.jpg'),
('BMW X5', 'Kiran Mehta', '4.8', '4.7', '5', '10000', '+91 87654 32145', 'kiranmehta@gmail.com', 'https://stimg.cardekho.com/images/carexteriorimages/930x620/BMW/X5-2023/10452/1688992642182/front-left-side-47.jpg', 'https://stimg.cardekho.com/images/carexteriorimages/930x620/BMW/X5/10490/1689853299825/rear-left-view-121.jpg', 'https://stimg.cardekho.com/images/carinteriorimages/930x620/BMW/X5/10490/1689853374371/ambient-lighting-view-181.jpg', 'https://stimg.cardekho.com/images/carinteriorimages/930x620/BMW/X5/10490/1689853374371/rear-seats-52.jpg'),
('BMW3 Series', 'Meera Kapoor', '4.2', '4.1', '5', '8000', '+91 76543 21098', 'meera.kapoor@gmail.com', 'https://stimg.cardekho.com/images/carexteriorimages/930x620/BMW/3-Series-Gran-Limousine/10581/1689667989271/front-left-side-47.jpg', 'https://stimg.cardekho.com/images/carexteriorimages/930x620/BMW/3-Series-Gran-Limousine/10581/1689667989271/front-view-118.jpg', 'https://stimg.cardekho.com/images/carexteriorimages/930x620/BMW/3-Series-Gran-Limousine/10581/1689667989271/exterior-image-164.jpg', 'https://stimg.cardekho.com/images/carinteriorimages/930x620/BMW/3-Series-Gran-Limousine/10581/1689667972304/dashboard-59.jpg'),
('Chevrolet Beat', 'Vishal Sharma', '4.2', '4.0', '4', '2500', '+91 87654 32119', 'vishal.sharma@gmail.com', 'https://m.media-amazon.com/images/I/41McB02zqSL._AC_UF1000,1000_QL80_.jpg', 'https://www.team-bhp.com/forum/attachments/test-drives-initial-ownership-reports/326738d1270971294-chevrolet-beat-lt-cocktail-green-initial-ownership-report-18.jpg', 'https://www.team-bhp.com/forum/attachments/test-drives-initial-ownership-reports/338189d1272269636-chevrolet-beat-lt-cocktail-green-initial-ownership-report-50.jpg', 'https://www.team-bhp.com/forum/attachments/test-drives-initial-ownership-reports/326719d1270971094-chevrolet-beat-lt-cocktail-green-initial-ownership-report-04.jpg'),
('Chevrolet Malibu', 'Ananya Patel', '4.8', '4.5', '5', '2800', '+91 65432 10987', 'ananya.patel@gmail.com', 'https://www.chevrolet.com/content/dam/chevrolet/na/us/english/index/vehicles/2024/cars/malibu/01-images/colorizer/images/2024-malibu-1sp-gnt-colorizer.jpg?imwidth=600', 'https://www.chevrolet.com/content/dam/chevrolet/na/us/english/index/vehicles/2024/cars/malibu/01-images/mov/2024-malibu-mov-design-01.png?imwidth=1200', 'https://www.chevrolet.com/content/dam/chevrolet/na/us/english/index/vehicles/2024/cars/malibu/01-images/gallery/previews/2024-malibu-mov-gallery-preview-03.png?imwidth=419', 'https://cdn.jdpower.com/JDPA_2020-Chevrolet-Malibu-RS-Red-Front-Quarter-Small.jpg'),
('Datsun Redi-Go', 'Amit Patel', '4.0', '3.8', '4', '2200', '+91 76543 21129', 'amit.patel@gmail.com', 'https://imgd.aeplcdn.com/1200x900/n/cw/ec/45245/datsun-redi-go-right-front-three-quarter19.jpeg?q=80', 'https://stimg.cardekho.com/images/carexteriorimages/930x620/Datsun/RediGO/7843/1662016027572/front-left-side-47.jpg', 'https://imgd.aeplcdn.com/664x374/n/cw/ec/45245/datsun-redi-go-exterior14.jpeg?q=80', 'https://imgd.aeplcdn.com/664x374/n/cw/ec/45245/datsun-redi-go-exterior16.jpeg?q=80'),
('Fiat 500', 'Rahul Kapoor', '4.3', '4.1', '4', '3000', '+91 98765 43216', 'rahul.kapoor@gmail.com', 'https://stimg.cardekho.com/images/carexteriorimages/930x620/Kia/EV6/8947/1654159762071/front-left-side-47.jpg', 'https://stimg.cardekho.com/images/carexteriorimages/930x620/Kia/EV6/8947/1654159762071/exterior-image-166.jpg', 'https://stimg.cardekho.com/images/carexteriorimages/930x620/Kia/EV6/8947/1654159762071/rear-right-side-48.jpg', 'https://stimg.cardekho.com/images/carinteriorimages/930x620/Kia/EV6/8947/1654159706679/door-view-of-driver-seat-51.jpg'),
('Ford EcoSport', 'Rajat Verma', '4.3', '4.0', '5', '3500', '+91 87654 32115', 'rajat.verma@gmail.com', 'https://blogmedia.dealerfire.com/wp-content/uploads/sites/582/2021/09/2021-Ford-EcoSport-White-Platinum-Image_o.jpg', 'https://storage.googleapis.com/wackk-images-production-4f204ab/Gshoy9W2WgnZBSH6DXCpXKTs', 'https://m.media-amazon.com/images/I/71kwlaytcLL._AC_UF1000,1000_QL80_.jpg', 'https://www.karmaxcars.com/wp-content/uploads/2022/09/20220910_110137-1320-x-616.jpg'),
('Ford Fusion', 'Vikram Singh', '4.0', '3.8', '4', '3200', '+91 76543 21098', 'vikram.singh@gmail.com', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/2019_Ford_Fusion_Titanium_Energi%2C_front_2.29.20.jpg/1920px-2019_Ford_Fusion_Titanium_Energi%2C_front_2.29.20.jpg', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ab/Ford_Fusion_%282nd_generation%29_IMG_5310.jpg/1920px-Ford_Fusion_%282nd_generation%29_IMG_5310.jpg', 'https://cars.usnews.com/static/images/Auto/izmo/i154319660/2020_ford_fusion_dashboard.jpg', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTc1iTxm0jxzF3CuI8AxBIc8yMcn_2j5rQciA&usqp=CAU'),
('Ford Mustang', 'Arjun Patel', '4.8', '4.9', '4', '12000', '+91 87654 32137', 'arjun.patel@gmail.com', 'https://stimg.cardekho.com/images/carexteriorimages/930x620/Ford/Mustang-2024/7939/1663750110692/front-left-side-47.jpg', 'https://stimg.cardekho.com/images/carexteriorimages/930x620/Ford/Mustang-2024/7939/1663750110692/side-view-(left)-90.jpg', 'https://stimg.cardekho.com/images/carinteriorimages/930x620/Ford/Mustang-2024/7939/1663749911591/interior-image-207.jpg', 'https://stimg.cardekho.com/images/carinteriorimages/930x620/Ford/Mustang-2024/7939/1663749911591/door-view-of-driver-seat-51.jpg'),
('Honda Accord', 'Priya Sharma', '4.2', '4.0', '5', '2500', '+91 87654 32109', 'priya.sharma@gmail.com', 'https://imgd.aeplcdn.com/664x374/cw/ec/21613/Honda-Accord-Right-Front-Three-Quarter-64767.jpg?v=201711021421&q=80', 'https://imgd.aeplcdn.com/664x374/cw/ec/21613/Honda-Accord-Right-Rear-Three-Quarter-64769.jpg?v=201711021421&q=80', 'https://imgd.aeplcdn.com/664x374/cw/ec/21613/Honda-Accord-Interior-64770.jpg?v=201711021421&q=80', 'https://imgd.aeplcdn.com/664x374/cw/ec/21613/Honda-Accord-Exterior-82684.jpg'),
('Honda City', 'Sunita Das', '4.6', '4.4', '5', '3500', '+91 98765 43215', 'sunita.das@gmail.com', 'https://stimg.cardekho.com/images/carexteriorimages/930x620/Honda/City/9710/1677914238296/front-left-side-47.jpg', 'https://stimg.cardekho.com/images/carexteriorimages/930x620/Honda/City/9710/1677753995244/rear-left-view-121.jpg', 'https://stimg.cardekho.com/images/carinteriorimages/930x620/Honda/City/9710/1677754131096/dashboard-59.jpg', 'https://stimg.cardekho.com/images/carinteriorimages/930x620/Honda/City/9710/1677754131096/airbags-94.jpg'),
('Hyundai Creta', 'Meenakshi Das', '4.7', '4.5', '5', '3300', '+91 76543 21140', 'meenakshi.das@gmail.com', 'https://stimg.cardekho.com/images/carexteriorimages/930x620/Hyundai/Creta/11019/Hyundai-Creta-SX-Opt-Adventure-Edition-IVT/1691469378196/exterior-image-166.jpg', 'https://stimg.cardekho.com/images/carexteriorimages/930x620/Hyundai/Creta/11019/Hyundai-Creta-SX-Opt-Adventure-Edition-IVT/1691469378196/exterior-image-165.jpg', 'https://stimg.cardekho.com/images/carexteriorimages/930x620/Hyundai/Creta/11019/Hyundai-Creta-SX-Opt-Adventure-Edition-IVT/1691469378196/rear-right-side-48.jpg', 'https://stimg.cardekho.com/images/carexteriorimages/930x620/Hyundai/Creta/11019/Hyundai-Creta-SX-Opt-Adventure-Edition-IVT/1691469378196/front-view-118.jpg'),
('Hyundai i20', 'Anjali Deshmukh', '4.4', '4.2', '5', '2500', '+91 98765 43214', 'anjali.deshmukh@gmail.com', 'https://s7g10.scene7.com/is/image/hyundaiautoever/Hyundai-i20-nline-5ps_0030?wid=1280&hei=720&fit=wrap,1', 'https://cdni.autocarindia.com/Utils/ImageResizer.ashx?n=https://cdni.autocarindia.com/ExtraImages/20200930123556_Hyundai-i20-N-Line-front-1.jpg&w=700&q=90&c=1', 'https://media.zigcdn.com/media/content/2021/Aug/hyundaii20nlinetitle2.jpg', 'https://akm-img-a-in.tosshub.com/indiatoday/images/story/202010/hyundai-i20-n-line-reveal-02_1200x768.jpeg?size=690:388'),
('Hyundai Sonata', 'Aishwarya Reddy', '4.7', '4.4', '5', '2600', '+91 43210 98765', 'aishwarya.reddy@gmail.com', 'https://stimg.cardekho.com/images/carexteriorimages/930x620/Hyundai/Hyundai-Sonata/3786/exterior-image-167.jpg', 'https://stimg.cardekho.com/images/carexteriorimages/930x620/Hyundai/Hyundai-Sonata/3786/exterior-image-168.jpg', 'https://stimg.cardekho.com/images/carexteriorimages/930x620/Hyundai/Hyundai-Sonata/3786/exterior-image-169.jpg', 'https://www.wardsauto.com/sites/wardsauto.com/files/styles/article_featured_retina/public/uploads/2017/07/482952018sonata20t.jpg?itok=7vKx5P2d'),
('Hyundai Venue', 'Amit Kumar', '4.5', '4.3', '5', '2300', '+91 76543 21125', 'amit.kumar@gmail.com', 'https://stimg.cardekho.com/images/carexteriorimages/930x620/Hyundai/Venue/10145/1697696499095/front-left-side-47.jpg', 'https://stimg.cardekho.com/images/carexteriorimages/930x620/Hyundai/Venue/10142/1684739946788/rear-left-view-121.jpg', 'https://stimg.cardekho.com/images/carinteriorimages/930x620/Hyundai/Venue/10141/1684740024015/dashboard-59.jpg', 'https://stimg.cardekho.com/images/carinteriorimages/930x620/Hyundai/Venue/10141/1684740024015/seats-(aerial-view)-53.jpg'),
('Kia Optima', 'Sanjay Kapoor', '4.1', '3.9', '4', '3600', '+91 32109 87654', 'sanjay.kapoor@gmail.com', 'https://img2.carmax.com/assets/25149419/hero.jpg?width=800&height=450', 'https://img2.carmax.com/assets/24941932/image/12.jpg?width=1600&height=1200', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLIFy8QBflaXf65qdObQMj1-65V92E1xAxrw&usqp=CAU', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSL17VqHkxGJSOEYoBeBvrmNaocWOanYd0GbtNvPaoPaLWVxom9xVDh91f5XvFCS_KE9_4&usqp=CAU'),
('Kia Seltos', 'Neha Gupta', '4.6', '4.4', '5', '3500', '+91 98765 43217', 'neha.gupta@gmail.com', 'https://stimg.cardekho.com/images/carexteriorimages/930x620/Kia/Seltos-2023/8709/1688465684023/front-left-side-47.jpg', 'https://stimg.cardekho.com/images/carexteriorimages/930x620/Kia/Seltos-2023/8709/1688466133190/exterior-image-165.jpg', 'https://stimg.cardekho.com/images/carinteriorimages/930x620/Kia/Seltos-2023/8709/1688466182657/steering-wheel-54.jpg', 'https://stimg.cardekho.com/images/carinteriorimages/930x620/Kia/Seltos-2023/8709/1688466182657/door-view-of-driver-seat-51.jpg'),
('Lexus ES', 'Pooja Verma', '4.8', '4.5', '5', '6000', '+91 54321 09876', 'pooja.verma@gmail.com', 'https://stimg.cardekho.com/images/carexteriorimages/930x620/Lexus/ES/9399/1665652746848/front-left-side-47.jpg', 'https://stimg.cardekho.com/images/carexteriorimages/930x620/Lexus/ES/9399/1665652746848/rear-left-view-121.jpg', 'https://stimg.cardekho.com/images/carexteriorimages/930x620/Lexus/ES/9399/1665652746848/exterior-image-165.jpg', 'https://stimg.cardekho.com/images/carinteriorimages/930x620/Lexus/ES/9399/1665652673614/rear-arm-rest-close-view-194.jpg'),
('Mahindra XUV700', 'Vivek Kumar', '4.8', '4.7', '7', '5500', '+91 76543 21113', 'vivek.kumar@gmail.com', 'https://stimg.cardekho.com/images/carexteriorimages/930x620/Mahindra/XUV700/10797/1690277045969/exterior-image-165.jpg?imwidth=890&impolicy=resize', 'https://stimg.cardekho.com/images/carexteriorimages/930x620/Mahindra/XUV700/10797/1690277045969/rear-right-side-48.jpg', 'https://stimg.cardekho.com/images/carinteriorimages/930x620/Mahindra/XUV700/10797/1690276952900/dashboard-59.jpg?imwidth=890&impolicy=resize', 'https://stimg.cardekho.com/images/carinteriorimages/930x620/Mahindra/XUV700/10797/1690276952900/airbags-94.jpg'),
('Maruti Suzuki Swift', 'Amit Sharma', '4.5', '4.3', '5', '2400', '+91 98765 43213', 'amit.sharma@gmail.com', 'https://stimg.cardekho.com/images/carexteriorimages/930x620/Maruti/Swift/10406/1697698080681/front-left-side-47.jpg?tr=w-880,h-495', 'https://imgd-ct.aeplcdn.com/664x415/n/cw/ec/54399/swift-exterior-left-side-view.jpeg?q=80\r\n', 'https://stimg.cardekho.com/images/carinteriorimages/930x620/Maruti/Swift/10402/1688128110464/dashboard-59.jpg', 'https://gomechanic.in/blog/wp-content/uploads/2019/10/05_swift_styling_front_quarter_cafe.jpg'),
('Mazda6', 'Neha Gupta', '4.6', '4.3', '5', '5500', '+91 21098 76543', 'neha.gupta@gmail.com', 'https://hips.hearstapps.com/hmg-prod/images/2021-mazda-mazda6-carbon-edition-394-edit-1611709080.jpg?crop=0.668xw:0.564xh;0.311xw,0.400xh&resize=1200:*', 'https://www.cnet.com/a/img/resize/7b895bd6646c11cecb555787347418dd6c81db10/hub/2021/06/10/0de6b99a-c87f-4cc3-9a6a-f23245e3de03/mazda6-lead.jpg?auto=webp&width=1200', 'https://www.cnet.com/a/img/resize/7f7f33136092c58a667bea9ce35da71287fb0ea9/hub/2021/06/04/b150828b-66aa-4cb9-9c25-856a374191d9/2021-mazda-6-15.jpg?auto=webp&width=1200', 'https://www.cnet.com/a/img/resize/5255485ca0e65a6717ef1c84e57e5c8684438707/hub/2021/06/04/89a6cdb1-54d8-45bd-a7ba-f0e71157ac20/2021-mazda-6-31.jpg?auto=webp&width=1200'),
('Mercedes-Benz C-Class', 'Ajay Kumar', '4.0', '3.9', '4', '8000', '+91 65432 10987', 'ajay.kumar@gmail.com', 'https://stimg.cardekho.com/images/carexteriorimages/930x620/Mercedes-Benz/C-Class/10858/1690452480264/front-left-side-47.jpg', 'https://stimg.cardekho.com/images/carexteriorimages/930x620/Mercedes-Benz/C-Class/10858/1690452480264/exterior-image-167.jpg', 'https://stimg.cardekho.com/images/carinteriorimages/930x620/Mercedes-Benz/C-Class/10858/1690452454517/dashboard-59.jpg', 'https://stimg.cardekho.com/images/carinteriorimages/930x620/Mercedes-Benz/C-Class/10858/1690452454517/interior-image-211.jpg'),
('Nissan Altima', 'Rahul Verma', '4.3', '4.1', '4', '3000', '+91 54321 09876', 'rahul.verma@gmail.com', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfFU6J_PnR7JS-HVPVQm5kRJjqlm_tQ3jAdQ&usqp=CAU', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvdhJO6yyO2cT8uZ3xZGrr7-C8L3u2WSdPow&usqp=CAU', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4Zx0ORcibgj6zwaDecSpyyJq4k9TsgCbrTA&usqp=CAU', 'https://www.nissanusa.com/content/dam/Nissan/us/vehicles/altima/2024/Gallery/interior/360/charcoal-sport-leather.png'),
('Nissan Kicks', 'Meera Desai', '4.3', '4.1', '5', '2200', '+91 87654 32122', 'meera.desai@gmail.com', 'https://stimg.cardekho.com/images/carexteriorimages/930x620/Nissan/Kicks/7832/1647945473430/front-left-side-47.jpg?imwidth=890&impolicy=resize', 'https://stimg.cardekho.com/images/carexteriorimages/930x620/Nissan/Kicks/7832/1647945473430/exterior-image-167.jpg?imwidth=890&impolicy=resize', 'https://stimg.cardekho.com/images/carinteriorimages/930x620/Nissan/Kicks/7832/1647945410678/dashboard-59.jpg?imwidth=890&impolicy=resize', 'https://stimg.cardekho.com/images/carinteriorimages/930x620/Nissan/Kicks/7832/1647945410678/airbags-94.jpg?imwidth=890&impolicy=resize'),
('Renault Duster', 'Rajesh Singh', '4.4', '4.2', '5', '3200', '+91 76543 21128', 'rajesh.singh@gmail.com', 'https://imgd.aeplcdn.com/664x374/n/cw/ec/47028/duster-exterior-right-front-three-quarter-2.jpeg?q=80', 'https://www.v3cars.com/media/model-imgs/1625903010-renault-duster.jpg', 'https://imgd.aeplcdn.com/664x374/n/cw/ec/47028/duster-exterior-left-side-view.jpeg?q=80', 'https://imgd.aeplcdn.com/1280x720/n/cw/ec/45954/renault-duster-exterior0.jpeg?wm=0'),
('Renault Kiger', 'Alok Mehta', '4.2', '4.0', '5', '2300', '+91 87654 32116', 'alok.mehta@gmail.com', 'https://stimg.cardekho.com/images/carexteriorimages/930x620/Renault/Kiger/10044/1697698263482/front-left-side-47.jpg?imwidth=890&impolicy=resize', 'https://stimg.cardekho.com/images/carexteriorimages/930x620/Renault/Kiger/10042/1683117510296/rear-left-view-121.jpg?imwidth=890&impolicy=resize', 'https://stimg.cardekho.com/images/carinteriorimages/930x620/Renault/Kiger/10042/1683117433693/dashboard-59.jpg?imwidth=890&impolicy=resize', 'https://imgd-ct.aeplcdn.com/664x415/n/cw/ec/141857/kiger-interior-rear-seats.jpeg?isig=0&q=80'),
('Skoda Rapid', 'Vikas Patel', '4.7', '4.5', '5', '3000', '+91 76543 21120', 'vikas.patel@gmail.com', 'https://cdni.autocarindia.com/Utils/ImageResizer.ashx?n=https://cdni.autocarindia.com/Galleries/20161122035008_DSC_6598.jpg', 'https://gomechanic.in/blog/wp-content/uploads/2020/05/2020-Skoda-Rapid-1.0-TSI-e1596699009100.jpg', 'https://cdn.skoda-storyboard.com/2017/02/170222-%C5%A0KODA-RAPID-and-%C5%A0KODA-RAPID-SPACEBACK-optimized-interior-and-exterior-2.jpg', 'https://5.imimg.com/data5/SELLER/Default/2023/4/297339793/WH/QG/ZV/94284151/skoda-500x500.jpg'),
('Tata Harrier', 'Sneha Patel', '4.6', '4.4', '5', '4000', '+91 87654 32112', 'sneha.patel@gmail.com', 'https://stimg.cardekho.com/images/carexteriorimages/930x620/Tata/Harrier/9368/1697532960290/front-left-side-47.jpg', 'https://stimg.cardekho.com/images/carexteriorimages/930x620/Tata/Harrier/11290/1700110684167/exterior-image-167.jpg', 'https://stimg.cardekho.com/images/carinteriorimages/930x620/Tata/Harrier/9368/1697532879993/dashboard-59.jpg', 'https://stimg.cardekho.com/images/carinteriorimages/930x620/Tata/Harrier/9368/1697532879993/seats-(aerial-view)-53.jpg'),
('Tesla Model 3', 'Divya Kapoor', '4.7', '4.4', '5', '4800', '+91 32109 87654', 'divya.kapoor@gmail.com', 'https://stimg.cardekho.com/images/carexteriorimages/930x620/Tesla/Model-3/5251/1693556345148/front-left-side-47.jpg', 'https://stimg.cardekho.com/images/carinteriorimages/930x620/Tesla/Model-3/5251/1693556412217/dashboard-59.jpg', 'https://stimg.cardekho.com/images/carinteriorimages/930x620/Tesla/Model-3/5251/1693556412217/door-view-of-driver-seat-51.jpg', 'https://cars.usnews.com/static/images/Auto/custom/15203/2023_Tesla_Model_3_Rear_Seats_1.jpg'),
('Toyota Camry', 'Rajesh Kumar', '4.5', '4.2', '5', '3000', '+91 98765 43210', 'rajesh.kumar@gmail.com', 'https://imgd-ct.aeplcdn.com/1056x660/n/b886bsa_1460381.jpg?q=80', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeKnv0y4vl7fNhkJwW9VeeErHG5CanuAl97eRBPQ_V-Z4AduykXan9eZj61phsa0oHczA&usqp=CAU', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNI2-zacQBkKj3e01PwrGdIhlmkwCJaV1Ydg&usqp=CAU', 'https://kubrick.htvapps.com/htv-prod-media.s3.amazonaws.com/images/orlando-toyota-1662757322.png?resize=660:*'),
('Toyota Fortuner', 'Vikrant Singh', '4.9', '4.8', '7', '6000', '+91 98765 43220', 'vikrant.singh@gmail.com', 'https://stimg.cardekho.com/images/carexteriorimages/930x620/Toyota/Fortuner/10903/1695443447797/front-left-side-47.jpg', 'https://stimg.cardekho.com/images/carexteriorimages/930x620/Toyota/Fortuner/10903/1690544151440/rear-left-view-121.jpg', 'https://stimg.cardekho.com/images/carinteriorimages/930x620/Toyota/Fortuner/10903/1690544016397/steering-wheel-54.jpg', 'https://stimg.cardekho.com/images/carinteriorimages/930x620/Toyota/Fortuner/10903/1690544016397/rear-arm-rest-close-view-194.jpg'),
('Toyota Innova Crysta', 'Priyanka Singh', '4.7', '4.6', '7', '5000', '+91 87654 32117', 'priyanka.singh@gmail.com', 'https://stimg.cardekho.com/images/carexteriorimages/930x620/Toyota/Innova-Crysta/9612/1697698611076/front-left-side-47.jpg?imwidth=890&impolicy=resize', 'https://stimg.cardekho.com/images/carexteriorimages/930x620/Toyota/Innova-Crysta/9612/1680599962805/exterior-image-165.jpg?imwidth=890&impolicy=resize', 'https://stimg.cardekho.com/images/carinteriorimages/930x620/Toyota/Innova-Crysta/9612/1680599876791/steering-wheel-54.jpg?imwidth=890&impolicy=resize', 'https://stimg.cardekho.com/images/carinteriorimages/930x620/Toyota/Innova-Crysta/9612/1680599876791/airbags-94.jpg?imwidth=890&impolicy=resize'),
('Volkswagen Passat', 'Kunal Reddy', '4.3', '4.0', '4', '2800', '+91 43210 98765', 'kunal.reddy@gmail.com', 'https://i.i-sgcm.com/new_cars/cars/11853/11853_m.jpg', 'https://www.actualidadmotor.com/wp-content/uploads/2014/07/volkswagen-passat-2015-oficial-detalles-9.jpg', 'https://stimg2.cardekho.com/images/roadTestimages/930x620/20171110_205512/483/volkswagen0.jpg', 'https://di-uploads-development.dealerinspire.com/stonemountainvw/uploads/2017/11/2017-Passat-6-1024x640.jpeg'),
('Volkswagen Polo', 'Amit Khanna', '4.5', '4.3', '5', '2600', '+91 76543 21118', 'amit.khanna@gmail.com', 'https://imgd.aeplcdn.com/1280x720/n/9u05hta_1493790.jpg?q=80', 'https://images.news18.com/ibnlive/uploads/2017/06/2017-VW-Polo-GTI-front-three-quarters-leaked-image.jpg', 'https://imgd-ct.aeplcdn.com/664x415/n/cw/ec/29628/polo-exterior-rear-view-2.jpeg?q=80', 'https://i.pinimg.com/originals/aa/7b/c2/aa7bc28e0103606035043c67212242a6.png'),
('Volkswagen Vento', 'Rohan Gupta', '4.5', '4.3', '5', '2500', '+91 98765 43218', 'rohan.gupta@gmail.com', 'https://www.motorbeam.com/wp-content/uploads/2018-Volkwagen-Vento-Front.jpg', 'https://imgd.aeplcdn.com/664x374/n/cw/ec/26563/vento-exterior-right-front-three-quarter-169148.jpeg?q=80', 'https://cdni.autocarindia.com/ExtraImages/20200907125656_2020-VW-Vento-AT-front-action.jpg', 'https://images.91wheels.com/news/wp-content/uploads/2020/07/Volkswagen-Vento-Exterior-1.jpeg?w=1080&q=65');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` int(15) NOT NULL,
  `message` varchar(200) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`firstname`, `lastname`, `email`, `mobile`, `message`, `id`) VALUES
('abc', 'abc', 'gibip57727@ikanid.com', 2147483647, 'ttest', 6),
('rakshita', 'balikai', 'rakshitabalikai09@gmail.com', 2147483647, 'very good carrental service', 7),
('', '', '', 0, '', 8),
('', '', '', 0, '', 9),
('', '', '', 0, '', 10),
('', '', '', 0, '', 11),
('', '', '', 0, '', 12),
('', '', '', 0, '', 13),
('prasanna', 'sfsd', 'bekov85823@notedns.com', 54184158, 'hi', 14);

-- --------------------------------------------------------

--
-- Table structure for table `featuredcars`
--

CREATE TABLE `featuredcars` (
  `model` varchar(50) NOT NULL,
  `drivername` varchar(50) NOT NULL,
  `driverrating` varchar(5) NOT NULL,
  `carrating` varchar(5) NOT NULL,
  `seats` varchar(2) NOT NULL,
  `priceperday` varchar(10) NOT NULL,
  `drivercontact` varchar(50) NOT NULL,
  `driveremail` varchar(50) NOT NULL,
  `imageurl1` varchar(1000) NOT NULL,
  `imageurl2` varchar(500) NOT NULL,
  `imageurl3` varchar(500) NOT NULL,
  `imageurl4` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `featuredcars`
--

INSERT INTO `featuredcars` (`model`, `drivername`, `driverrating`, `carrating`, `seats`, `priceperday`, `drivercontact`, `driveremail`, `imageurl1`, `imageurl2`, `imageurl3`, `imageurl4`) VALUES
('Chevrolet Malibu', 'Ananya Patel', '4.8', '4.5', '5', '2800', '+91 65432 10987', 'ananya.patel@gmail.com', 'https://www.chevrolet.com/content/dam/chevrolet/na/us/english/index/vehicles/2024/cars/malibu/01-images/colorizer/images/2024-malibu-1sp-gnt-colorizer.jpg?imwidth=600', 'https://www.chevrolet.com/content/dam/chevrolet/na/us/english/index/vehicles/2024/cars/malibu/01-images/mov/2024-malibu-mov-design-01.png?imwidth=1200', 'https://www.chevrolet.com/content/dam/chevrolet/na/us/english/index/vehicles/2024/cars/malibu/01-images/gallery/previews/2024-malibu-mov-gallery-preview-03.png?imwidth=419', 'https://cdn.jdpower.com/JDPA_2020-Chevrolet-Malibu-RS-Red-Front-Quarter-Small.jpg'),
('Tesla Model 3', 'Divya Kapoor', '4.7', '4.4', '5', '4800', '+91 32109 87654', 'divya.kapoor@gmail.com', 'https://stimg.cardekho.com/images/carexteriorimages/930x620/Tesla/Model-3/5251/1693556345148/front-left-side-47.jpg', 'https://stimg.cardekho.com/images/carinteriorimages/930x620/Tesla/Model-3/5251/1693556412217/dashboard-59.jpg', 'https://stimg.cardekho.com/images/carinteriorimages/930x620/Tesla/Model-3/5251/1693556412217/door-view-of-driver-seat-51.jpg', 'https://cars.usnews.com/static/images/Auto/custom/15203/2023_Tesla_Model_3_Rear_Seats_1.jpg'),
('Honda Accord', 'Priya Sharma', '4.2', '4.0', '5', '2500', '+91 87654 32109', 'priya.sharma@gmail.com', 'https://imgd.aeplcdn.com/664x374/cw/ec/21613/Honda-Accord-Right-Front-Three-Quarter-64767.jpg?v=201711021421&q=80', 'https://imgd.aeplcdn.com/664x374/cw/ec/21613/Honda-Accord-Right-Rear-Three-Quarter-64769.jpg?v=201711021421&q=80', 'https://imgd.aeplcdn.com/664x374/cw/ec/21613/Honda-Accord-Interior-64770.jpg?v=201711021421&q=80', 'https://imgd.aeplcdn.com/664x374/cw/ec/21613/Honda-Accord-Exterior-82684.jpg?v=201711021421&q=80'),
('Nissan Altima', 'Rahul Verma', '4.3', '4.1', '4', '3000', '+91 54321 09876', 'rahul.verma@gmail.com', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfFU6J_PnR7JS-HVPVQm5kRJjqlm_tQ3jAdQ&usqp=CAU', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvdhJO6yyO2cT8uZ3xZGrr7-C8L3u2WSdPow&usqp=CAU', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4Zx0ORcibgj6zwaDecSpyyJq4k9TsgCbrTA&usqp=CAU', 'https://www.nissanusa.com/content/dam/Nissan/us/vehicles/altima/2024/Gallery/interior/360/charcoal-sport-leather.png'),
('Toyota Camry', 'Rajesh Kumar', '4.5', '4.2', '5', '3000', '+91 98765 43210', 'rajesh.kumar@gmail.com', 'https://imgd-ct.aeplcdn.com/1056x660/n/b886bsa_1460381.jpg?q=80', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeKnv0y4vl7fNhkJwW9VeeErHG5CanuAl97eRBPQ_V-Z4AduykXan9eZj61phsa0oHczA&usqp=CAU', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNI2-zacQBkKj3e01PwrGdIhlmkwCJaV1Ydg&usqp=CAU', 'https://kubrick.htvapps.com/htv-prod-media.s3.amazonaws.com/images/orlando-toyota-1662757322.png?resize=660:*'),
('Ford Fusion', 'Vikram Singh', '4.0', '3.8', '4', '3200', '+91 76543 21098', 'vikram.singh@gmail.com', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/2019_Ford_Fusion_Titanium_Energi%2C_front_2.29.20.jpg/1920px-2019_Ford_Fusion_Titanium_Energi%2C_front_2.29.20.jpg', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ab/Ford_Fusion_%282nd_generation%29_IMG_5310.jpg/1920px-Ford_Fusion_%282nd_generation%29_IMG_5310.jpg', 'https://cars.usnews.com/static/images/Auto/izmo/i154319660/2020_ford_fusion_dashboard.jpg', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTc1iTxm0jxzF3CuI8AxBIc8yMcn_2j5rQciA&usqp=CAU');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carsdata`
--
ALTER TABLE `carsdata`
  ADD PRIMARY KEY (`model`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `featuredcars`
--
ALTER TABLE `featuredcars`
  ADD PRIMARY KEY (`drivername`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
