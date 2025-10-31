-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2025 at 04:17 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `udonjourney`
--

-- --------------------------------------------------------

--
-- Table structure for table `accommodations`
--

CREATE TABLE `accommodations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `price_range` varchar(50) DEFAULT NULL,
  `image` varchar(512) DEFAULT NULL,
  `latitude` decimal(10,7) DEFAULT NULL,
  `longitude` decimal(10,7) DEFAULT NULL,
  `amenities` text DEFAULT NULL,
  `rating` decimal(3,2) DEFAULT 0.00,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accommodations`
--

INSERT INTO `accommodations` (`id`, `name`, `description`, `address`, `phone`, `price_range`, `image`, `latitude`, `longitude`, `amenities`, `rating`, `created_at`) VALUES
(1, 'โรงแรมธารบุรี', 'โรงแรมธารบุรี ตั้งอยู่ที่ 123 ถนนอุดรดุษฎี ตำบลหมากแข้ง อำเภอเมืองอุดรธานี จังหวัดอุดรธานี', '123 ถนน ถ. อดุลยเดช ตำบลหมากแข้ง อำเภอเมืองอุดรธานี อุดรธานี 41000', '+66-910213642', '600-1000', '/PhurinatUD_Full/assets/images/thanburi.jpg', 17.4115000, 102.8001000, 'ห้องพักตกแต่งอย่างอบอุ่นพร้อม Wi-Fi ฟรี\r\nห้องฟิตเนส\r\nที่จอดรถ', 4.70, '2025-10-30 07:58:41'),
(2, 'โรงแรมพาราไดซ์', 'โรงแรม 4 ดาว ใจกลางเมืองอุดรธานี ตกแต่งสวยงาม พร้อมสิ่งอำนวยความสะดวกครบครัน', '44 29 ถ. โพศรี ตำบลหมากแข้ง อำเภอเมืองอุดรธานี อุดรธานี 41000', '0848788060', '1,500-3,000 บาท', '/PhurinatUD_full/assets/images/paradise.jpg', 17.4001000, 102.7993000, 'Wi-Fi ฟรี, สระว่ายน้ำ, ฟิตเนส, ห้องอาหาร, ที่จอดรถ', 4.50, '2025-10-30 08:44:56'),
(7, 'โรงแรม เดอ ปริ้นเซส อุดรธานี', 'รีสอร์ทท่ามกลางสวนดอกไม้ บรรยากาศธรรมชาติ', 'หมู่ที่ 14 135/135, ถ.นิตโย อำเภอเมืองอุดรธานี 41000', '042-204444', '1,200-3,000 บาท', '/PhurinatUD_full/assets/images/DePrincess.jpg', 17.3949000, 102.8097000, 'สระว่ายน้ำกลางแจ้งฟรี\r\nห้องนวด\r\nฟิตเนส\r\nที่จอดรถส่วนตัวฟรี\r\nบริการรับที่สนามบิน\r\nแผนกต้อนรับ 24 ชั่วโมง', 4.40, '2025-10-30 08:44:56'),
(8, 'โรงแรมเวลาดี อุดรธานี', 'ป็นโรงแรม 4 ดาว ที่ตั้งอยู่ใจกลางเมืองอุดรธานี มีการออกแบบที่ทันสมัยและมีสิ่งอำนวยความสะดวกครบครัน', '471 ถ. อดุลยเดช ตำบลหมากแข้ง อำเภอเมืองอุดรธานี อุดรธานี 41000', '042-219219', '1,200-3,000 บาท', '/PhurinatUD_full/assets/images/veladee.jpg', 17.4168000, 102.8000000, 'Wi-Fi ฟรี, ที่จอดรถ, ร้านอาหาร, สระว่ายน้ำ', 4.50, '2025-10-30 08:45:07'),
(9, 'โรงแรมเซ็นทาราอุดร', 'โรงแรม 4 ดาวใจกลางเมือง สะดวกสบาย ครบครัน', 'อุดรธานี ตำบลหมากแข้ง เมือง อุดรธานี 41000', '042-343555', '2,000-4,000 บาท', '/PhurinatUD_full/assets/images/centara.jpg', 17.4070000, 102.8009000, 'Wi-Fi ฟรี, ห้องออกกำลังกาย, สระว่ายน้ำ, ร้านอาหาร, ห้องประชุม', 4.70, '2025-10-30 08:45:07'),
(10, 'โรงแรมสยามแกรนด์อุดรธานี', 'เป็นโรงแรมระดับ 4 ดาว ตั้งอยู่ที่ 444 หมู่ 4 ต.หนองบัว อ.เมืองอุดรธานี ', '444 หมู่ที่ 4 เทศบาลตำบลหนองบัว อำเภอเมืองอุดรธานี อุดรธานี 41000', '042-111241', '800-1,500 บาท', '/PhurinatUD_full/assets/images/siamgrand.jpg', 17.3840000, 102.8271000, 'สนามกอล์ฟ\r\nสระว่ายน้ำกลางแจ้ง\r\nฟิตเนส\r\nที่จอดรถสาธารณะฟรี\r\nแผนกต้อนรับ 24 ชั่วโมง\r\nที่เก็บสัมภาระ', 4.50, '2025-10-30 08:45:07'),
(11, 'โฮมสเตย์บ้านเชียง', 'โฮมสเตย์ในชุมชนบ้านเชียง สัมผัสวิถีชีวิตท้องถิ่น', '164 ตำบล บ้านเชียง อำเภอหนองหาน อุดรธานี 41320', '0816695942', '500-1,000 บาท', '/PhurinatUD_full/assets/images/homebanchaing.jpg', 17.4078000, 103.2389000, 'Wi-Fi, อาหารเช้า, จักรยาน', 4.40, '2025-10-30 08:45:07'),
(12, 'โรงแรมภูคะนิง', 'เป็นโรงแรมสไตล์เรียบง่ายที่ตั้งอยู่ในตำบลสามพร้าว อำเภอเมือง จังหวัดอุดรธานี มีบริการห้องพักที่สะอาดและกว้างขวาง', '222 ตำบล สามพร้าว อำเภอเมืองอุดรธานี อุดรธานี 41000', '042-188445', '500-1,000 บาท', '/PhurinatUD_full/assets/images/Phukaning.jpg', 17.4301000, 102.8164000, 'ห้องนวด\r\nที่จอดรถส่วนตัวฟรี\r\nแผนกต้อนรับ 24 ชั่วโมง\r\nที่เก็บสัมภาระ\r\nร้านอาหาร\r\nคาราโอเกะ', 4.50, '2025-10-30 08:45:07'),
(13, 'บ้านต้นรีสอร์ท', 'รีสอร์ท วิวสวยงาม อากาศเย็นสบาย', '254 Udon-Nhongseag Rd., Nadee, Muang Nadee Ban Nong Khun อุดรธานี 41000', '0802049419', '500-800 บาท', '/PhurinatUD_full/assets/images/Banton.jpg', 17.3675000, 102.7204000, 'บริการ Wi-Fi ฟรี\r\nที่จอดรถฟรี\r\nบริการรูมเซอร์วิส\r\nมีสิ่งอำนวยความสะดวกสำหรับเด็ก\r\nที่พักปลอดบุหรี่', 4.50, '2025-10-30 08:45:07'),
(16, 'บีทู อุดร บูติค แอนด์ บัดเจ็ต', 'โรงแรมแบบสบายๆ ซึ่งตกแต่งภายนอกด้วยสีสันสดใสในย่านพักอาศัยแห่งนี้ตั้งอยู่ห่างจากศาลเจ้าปู่ย่าประมาณ 2 กม. ', '284/29 หมู่ 9 ซอยบ้าน ซอย หนองเหล็ก อำเภอเมืองอุดรธานี อุดรธานี 41000', '042-110380', '500-1,000 บาท', '/PhurinatUD_full/assets/images/B2.jpg', 17.4145000, 102.8085000, 'ที่จอดรถฟรี\r\nแผนกต้อนรับ 24 ชั่วโมง\r\nลิฟต์\r\nห้ามสูบบุหรี่ในพื้นที่ส่วนกลาง', 4.60, '2025-10-30 14:00:32');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`) VALUES
(1, 'สถานที่ท่องเที่ยว', 'จุดท่องเที่ยวทั่วไป', '2025-10-30 05:54:37'),
(2, 'ที่พัก', 'โรงแรม รีสอร์ท', '2025-10-30 05:54:37'),
(3, 'สถานบริการเชื้อเพลิง', 'ปั๊มน้ำมัน', '2025-10-30 05:54:37'),
(4, 'ร้านขายของชำ', 'ร้านค้าทั่วไป', '2025-10-30 05:54:37'),
(5, 'สถานที่ทางศาสนา', 'วัด โบสถ์ มัสยิด', '2025-10-30 05:54:37'),
(6, 'สถานพยาบาล', 'โรงพยาบาล คลินิก', '2025-10-30 05:54:37'),
(7, 'สถานีตำรวจ', 'สถานีตำรวจในพื้นที่', '2025-10-30 05:54:37');

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(512) DEFAULT NULL,
  `latitude` decimal(10,7) DEFAULT NULL,
  `longitude` decimal(10,7) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`id`, `name`, `slug`, `description`, `image`, `latitude`, `longitude`, `category`, `created_at`) VALUES
(1, 'สวนสาธารณะหนองประจักษ์', 'nong-prajakt', 'สวนสาธารณะใจกลางเมือง มีเป็ดยักษ์สีเหลืองเป็นสัญลักษณ์', '/PhurinatUD_full/assets/images/13.jpg', 17.4193000, 102.7804000, 'สถานที่ท่องเที่ยว', '2025-10-29 16:03:28'),
(2, 'ทะเลบัวแดง', 'red-lotus-sea', 'ทะเลบัวแดง บานเต็มผืนน้ำ ช่วงฤดูบัว', '/PhurinatUD_full/assets/images/3.jpg', 17.2125000, 103.0332000, 'สถานที่ท่องเที่ยว', '2025-10-29 16:03:28'),
(3, 'พิพิธภัณฑ์บ้านเชียง', 'ban-chiang-museum', 'พิพิธภัณฑ์บ้านเชียง แหล่งโบราณคดีสำคัญ', '/PhurinatUD_full/assets/images/9.jpg', 7.4074000, 103.2361000, 'สถานที่ท่องเที่ยว', '2025-10-29 16:03:28'),
(4, 'คำชะโนด', 'kamchanod', 'คำชะโนด จะเป็นลักษณะของเกาะป่า ที่มีน้ำล้อมรอบตัว กว่า 20 ไร่ และถูกปกคลุมไปด้วยต้นคำชะโนดสูงไปทั้งเกาะ', '/PhurinatUD_full/assets/images/k10.jpg', 17.7427000, 103.3598000, 'สถานที่ท่องเที่ยว', '2025-10-29 16:03:28'),
(5, 'อุทยานภูพระบาท', 'phu-phra-bat', 'อุทยานประวัติศาสตร์ภูพระบาท ที่แสดงถึงอารายธรรมของมนุษย์และการเปลี่ยนแปลงของสภาพภูมิประเทศ โดยพื้นที่นี้จะเป็นหินทรายที่ถูกสร้างขึ้นจากขบวนการกัดกร่อนจากธรรมชาติ', '/PhurinatUD_full/assets/images/p2.jpg', 17.7310000, 102.3575000, 'สถานที่ท่องเที่ยว', '2025-10-29 16:03:28'),
(6, 'วัดป่าภูก้อน', 'wat-pa-phu-kon', 'ตั้งอยู่ในเขตป่าสงวนแห่งชาติป่านายูงและป่าน้ำโสม อำเภอนายูง จังหวัดอุดรธานี วัดนี้เป็นที่ประดิษฐาน พระพุทธไสยาสน์โลกนาถศาสดามหามุนี ซึ่งเป็นพระพุทธรูปปางไสยาสน์ที่แกะสลักด้วยหินอ่อนสีขาวจากประเทศอิตาลีทั้งองค์', '/PhurinatUD_full/assets/images/4.jpg', 17.9231000, 102.1181000, 'สถานที่ทางศาสนา', '2025-10-29 16:03:28'),
(8, 'วัดสันติวนาราม', 'place-690329569048d', ' วัดที่โดดเด่นด้วย พระอุโบสถทรงดอกบัว ตั้งอยู่กลางน้ำอย่างสวยงาม', '/PhurinatUD_full/assets/images/santi.jpg', 17.4395000, 103.2504000, 'สถานที่ทางศาสนา', '2025-10-30 08:45:07'),
(9, 'ทุ่งดอกไม้ บ้านห้วยสำราญ', 'place-690329ba91271', 'ทุ่งดอกไม้ บ้านห้วยสำราญ เลยค่ะ โดยที่นี่จะมีการปลูกดอกไม้มากมาย ไม่ว่าจะเป็น ไม้ดอก ไม้ประดับ และเก็บเกี่ยวกันตลอดทั้งปี', '/PhurinatUD_full/assets/images/flower.jpg', 17.4151000, 102.7872000, 'สถานที่ท่องเที่ยว', '2025-10-30 08:45:07'),
(10, 'เขื่อนห้วยหลวง', 'talad-ton-tan', 'เขื่อนห้วยหลวง มีวิวทิวทัศน์ที่สวยงดงามมาก เต็มไปด้วยสีเขียวของป่าเขา และยังมีลมเย็นๆ ให้เราได้นั่งชิล', '/PhurinatUD_full/assets/images/KHR.jpg', 17.3633000, 102.5822000, 'สถานที่ท่องเที่ยว', '2025-10-30 08:45:07'),
(11, 'อ่างน้ำพาน', 'huay-luang-waterfall', 'อ่างน้ำพาน เป็นอ่างเก็บน้ำขนาดใหญ่อีกแห่งของภาคอีสาน ครอบคลุมพื้นที่มากกว่า 3 ตำบลเป็นอีกสถานที่ท่องเที่ยวพักผ่อนหย่อนใจของชาวอุดรฯ', '/PhurinatUD_full/assets/images/Nampan.jpg', 17.8593000, 103.0553000, 'สถานที่ท่องเที่ยว', '2025-10-30 08:45:07'),
(12, 'พิพิธภัณฑ์เมืองอุดรธานี', 'udon-wax-museum', ' พิพิธภัณฑ์เมืองอุดรธานี เป็นอาคารที่มีเอกลักษณ์สุดๆ เมื่อก่อนนั้นจะเป็น ตึกราชินูเก่า หรือ อาคารโรงเรียนราชินูทิศ ที่สร้างขึ้นมาตามพระดำริของสมเด็จพระศรีพัชรินทราบรมราชินีนาถ พระบรมราชชนนีพันปีหลวง', '/PhurinatUD_full/assets/images/museum.jpg', 17.4118000, 102.7818000, 'สถานที่ท่องเที่ยว', '2025-10-30 08:45:07'),
(13, 'ศาลเจ้าพ่อหลักเมืองอุดรธานี', 'city-pillar-shrine', 'ศาลเจ้าพ่อหลักเมืองอุดรธานี สถานที่ศักดิ์สิทธิ์ประจำจังหวัด', '/PhurinatUD_full/assets/images/lagmeung.jpg', 17.4136000, 102.7875000, 'สถานที่ทางศาสนา', '2025-10-30 08:45:07'),
(14, 'ถนนคนเดินอุดร', 'place-69032ed8be755', 'ถนนคนเดินสุดชิว ทุกวันศุกร์-เสาร์ มีอาหาร เสื้อผ้า ของบริโภคต่างๆ', '/PhurinatUD_full/assets/images/KondernUD.jpg', 17.4148000, 102.7862000, 'สถานที่ท่องเที่ยว', '2025-10-30 08:45:07'),
(15, 'ภูฝอยลม', 'place-69032cd57c5f2', 'ภูฝอยลม หรือ อุทยานล้านปีภูฝอยลม สถานที่ที่รอบล้อมไปด้วยภูเขามากมาย รวมถึงมีดอกไม้สวยๆ ในสวนรวมพรรณไม้', '/PhurinatUD_full/assets/images/pufoylom.jpg', 17.1620000, 102.6980000, 'สถานที่ท่องเที่ยว', '2025-10-30 08:45:07'),
(16, 'น้ำตกยูงทอง', 'phu-kon-temple', 'น้ำตกยูงทอง เป็นน้ำตกสวยๆ ตั้งอยู่บนสันเขาภูพานและภูย่าอู และอยู่ภายในพื้นที่ อุทยานแห่งชาตินายูง-น้ำโสม', '/PhurinatUD_full/assets/images/Nayung.jpg', 17.9247000, 102.2510000, 'สถานที่ท่องเที่ยว', '2025-10-30 08:45:07'),
(17, 'วัดป่าไชยวาน', 'phu-pha-thoep-national-park', 'วัดป่าไชยวาน โดยวัดนี้จะมีทั้งรูปปั้นพญานาค อยู่ด้านหน้าตัวโบสถ์ และโบสถ์เองก็มีการก่อสร้างที่ไม่มีเหมือนวัดไหนๆ เลย เพราะมีการใช้ผนังเป็นสีอิฐสีน้ำตาล', '/PhurinatUD_full/assets/images/chaiwan.jpg', 17.3031000, 103.2282000, 'สถานที่ทางศาสนา', '2025-10-30 08:45:07'),
(18, 'วัดป่าอัมพวัน', 'place-69033147f320b', 'เป็นวัดที่มีเอกลักษณ์ทางสถาปัตยกรรมโดดเด่นสะดุดตาด้วยโบสถ์สีน้ำเงินเข้ม', '/PhurinatUD_full/assets/images/11.jpg', 17.5445000, 102.9301000, 'สถานที่ทางศาสนา', '2025-10-30 09:35:03'),
(19, 'วัดป่าบ้านตาด', 'place-690331ec709a3', 'วัดป่าบ้านตาด (วัดเกษรศีลคุณ) เป็นวัดป่าสายวิปัสสนากรรมฐาน ตั้งอยู่ที่บ้านตาด อำเภอเมือง จังหวัดอุดรธานี วัดนี้ก่อตั้งขึ้นโดย พระธรรมวิสุทธิมงคล (หลวงตามหาบัว ญาณสัมปันโน)', '/PhurinatUD_full/assets/images/Banthad.jpg', 17.2975000, 102.7781000, 'สถานที่ทางศาสนา', '2025-10-30 09:37:48');

-- --------------------------------------------------------

--
-- Table structure for table `place_categories`
--

CREATE TABLE `place_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `place_categories`
--

INSERT INTO `place_categories` (`id`, `name`, `description`, `icon`, `created_at`) VALUES
(1, 'สถานที่ท่องเที่ยว', 'สถานที่ท่องเที่ยวต่างๆ ในจังหวัด', '🏞️', '2025-10-30 07:42:18'),
(2, 'ที่พัก', 'โรงแรม รีสอร์ท ที่พัก', '🏨', '2025-10-30 07:42:18'),
(3, 'สถานที่ทางศาสนา', 'วัด ศาลเจ้า สถานที่ศักดิ์สิทธิ์', '⛩️', '2025-10-30 07:42:18'),
(4, 'สถานพยาบาล', 'โรงพยาบาล คลินิก', '🏥', '2025-10-30 07:42:18'),
(5, 'สถานีตำรวจ', 'สถานีตำรวจต่างๆ', '🚔', '2025-10-30 07:42:18');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `image` varchar(512) DEFAULT NULL,
  `product_url` varchar(512) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `image`, `product_url`, `category`, `created_at`) VALUES
(1, 'ของที่ระลึกคำชะโนด', 'ของที่ระลึกจากสถานที่ศักดิ์สิทธิ์ คำชะโนด', 150.00, '/PhurinatUD_full/assets/images/kamchanod1.jpg', 'https://www.facebook.com/Kumchanod.amulet/?locale=th_TH', 'souvenir', '2025-10-29 16:39:00'),
(2, 'ของฝากบ้านเชียง', 'เป็นผลิตภัณฑ์ที่เป็นที่รู้จักมากที่สุดของบ้านเชียง มีลักษณะเฉพาะคือลวดลายเขียนสีแดงบนพื้นสีนวลหรือสีแดง มีหลายยุคสมัยและหลายลวดลาย', 69.00, '/PhurinatUD_full/assets/images/banchaing.jpg', 'https://shopee.co.th/%E0%B8%97%E0%B8%B5%E0%B9%88%E0%B9%83%E0%B8%AA%E0%B9%88%E0%B9%80%E0%B8%97%E0%B8%B5%E0%B8%A2%E0%B8%99%E0%B8%AB%E0%B8%AD%E0%B8%A1%E0%B8%87%E0%B8%B2%E0%B8%99%E0%B9%80%E0%B8%84%E0%B8%A3%E0%B8%B7%E0%B9%88%E0%B8%AD%E0%B8%87%E0%B8%9B%E0%B8%B1%E0%B9%89%E0%B8%99%E0%B8%94%E0%B8%B4%E0%B8%99%E0%B9%80%E0%B8%9C%E0%B8%B2%E0%B8%9A%E0%B9%89%E0%B8%B2%E0%B8%99%E0%B9%80%E0%B8%8A%E0%B8%B5%E0%B8%A2%E0%B8%87-%E0%B8%AD%E0%B8%B8%E0%B8%94%E0%B8%A3%E0%B8%98%E0%B8%B2%E0%B8%99%E0%B8%B5-i.276109373.28101574732?extraP', 'souvenir', '2025-10-29 16:39:00'),
(4, 'ผ้าหมี่ขิดอุดรธานี', 'เป็นผ้าทอพื้นเมืองที่มีชื่อเสียงของจังหวัดอุดรธานี และ ตลาดผ้าบ้านนาข่า ที่อำเภอเมืองอุดรธานี', 1000.00, '/PhurinatUD_full/assets/images/nakha.jpg', 'https://www.chobmai.com/article/619/%E0%B8%A5%E0%B8%B2%E0%B8%A2%E0%B8%9C%E0%B9%89%E0%B8%B2%E0%B9%80%E0%B8%AD%E0%B8%81%E0%B8%A5%E0%B8%B1%E0%B8%81%E0%B8%A9%E0%B8%93%E0%B9%8C-%E0%B8%9B%E0%B8%A3%E0%B8%B0%E0%B8%88%E0%B8%B3%E0%B8%88%E0%B8%B1%E0%B8%87%E0%B8%AB%E0%B8%A7%E0%B8%B1%E0%B8%94%E0%B8%AD%E0%B8%B8%E0%B8%94%E0%B8%A3%E0%B8%98%E0%B8%B2%E0%B8%99%E0%B8%B5-%E0%B8%9C%E0%B9%89%E0%B8%B2%E0%B8%A5%E0%B8%B2%E0%B8%A2%E0%B8%81%E0%B9%89%E0%B8%99%E0%B8%AB%E0%B8%AD%E0%B8%A2-%E0%B8%AD%E0%B8%B2%E0%B8%A3%E0%B8%A2%E0%B8%98%E0%B', 'souvenir', '2025-10-29 16:39:00'),
(5, 'ผ้าไหมมัดหมี่อุดร', 'ผ้าไหมมัดหมี่ลายสวยงาม ทอด้วยมือจากชุมชนในจังหวัดอุดรธานี', 1500.00, '/PhurinatUD_full/assets/images/mikid.jpg', 'https://www.chobmai.com/article/619/%E0%B8%A5%E0%B8%B2%E0%B8%A2%E0%B8%9C%E0%B9%89%E0%B8%B2%E0%B9%80%E0%B8%AD%E0%B8%81%E0%B8%A5%E0%B8%B1%E0%B8%81%E0%B8%A9%E0%B8%93%E0%B9%8C-%E0%B8%9B%E0%B8%A3%E0%B8%B0%E0%B8%88%E0%B8%B3%E0%B8%88%E0%B8%B1%E0%B8%87%E0%B8%AB%E0%B8%A7%E0%B8%B1%E0%B8%94%E0%B8%AD%E0%B8%B8%E0%B8%94%E0%B8%A3%E0%B8%98%E0%B8%B2%E0%B8%99%E0%B8%B5-%E0%B8%9C%E0%B9%89%E0%B8%B2%E0%B8%A5%E0%B8%B2%E0%B8%A2%E0%B8%81%E0%B9%89%E0%B8%99%E0%B8%AB%E0%B8%AD%E0%B8%A2-%E0%B8%AD%E0%B8%B2%E0%B8%A3%E0%B8%A2%E0%B8%98%E0%B', 'handicraft', '2025-10-30 08:45:07'),
(9, 'ไส้อั่วอุดร', 'ไส้อั่วรสเด็ด ของฝากขึ้นชื่อของจังหวัดอุดรธานี', 350.00, '/PhurinatUD_full/assets/images/saiuur.jpg', 'https://www.facebook.com/tongtajibiz/', 'food', '2025-10-30 08:45:07'),
(10, 'VT แหนมเนืองอุดร ', 'แหนมเนืองรสชาติต้นตำรับ หมักด้วยสูตรโบราณ', 385.00, '/PhurinatUD_full/assets/images/VT.jpg', 'https://www.facebook.com/168vt/', 'food', '2025-10-30 08:45:07'),
(11, 'ข้าวเกรียบปลาอุดร', 'ข้าวเกรียบปลาทำจากปลาสดในท้องถิ่น กรอบอร่อย', 35.00, '/PhurinatUD_full/assets/images/khawpla.jpg', 'https://bcudru.wixsite.com/imsukudon/product-page/%E0%B8%82-%E0%B8%B2%E0%B8%A7%E0%B9%80%E0%B8%81%E0%B8%A3-%E0%B8%A2%E0%B8%9A%E0%B8%9B%E0%B8%A5%E0%B8%B2', 'food', '2025-10-30 08:45:07'),
(16, 'กระเป๋าสาน ', 'กระเป๋าสานจากไม้ไผ่ ฝีมือชาวบ้าน ใส่ของได้เยอะ', 300.00, '/PhurinatUD_full/assets/images/jaksan.jpg', 'https://www.facebook.com/choeisaanjood', 'handicraft', '2025-10-30 08:45:07'),
(18, 'ชาบัวแดง', 'ชาสมุนไพรท้องถิ่น ดื่มแล้วสดชื่น', 55.00, '/PhurinatUD_full/assets/images/Chabuedang.jpg', 'https://chaingwae.com/home/product/%E0%B8%8A%E0%B8%B2%E0%B8%9A%E0%B8%B1%E0%B8%A7%E0%B9%81%E0%B8%94%E0%B8%87', 'health', '2025-10-30 08:45:07'),
(19, 'น้ำผึ้งป่าอุดร', 'น้ำผึ้งป่าธรรมชาติ 100% จากป่าในจังหวัดอุดรธานี', 280.00, '/PhurinatUD_full/assets/images/nampueng.jpg', 'https://www.facebook.com/Organichoney.UD/', 'food', '2025-10-30 08:45:07');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` enum('hospital','police','fire_station','gas_station','bank','post_office','other') NOT NULL,
  `address` text DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `latitude` decimal(10,7) DEFAULT NULL,
  `longitude` decimal(10,7) DEFAULT NULL,
  `operating_hours` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `type`, `address`, `phone`, `latitude`, `longitude`, `operating_hours`, `description`, `created_at`) VALUES
(1, 'โรงพยาบาลอุดรธานี', 'hospital', '346 ถ.โพศรี ต.หมากแข้ง อ.เมือง จ.อุดรธานี 41000', '042-246555', 17.4120000, 102.7895000, '24 ชั่วโมง', 'โรงพยาบาลศูนย์ประจำจังหวัดอุดรธานี บริการตรวจรักษาทุกสาขา มีห้องฉุกเฉิน', '2025-10-30 08:45:07'),
(2, 'โรงพยาบาลอุดรธานี เวชการ', 'hospital', '98/1 ถ.ประจักษ์ศิลปาคม อ.เมือง จ.อุดรธานี', '042-248999', 17.4155000, 102.7868000, '24 ชั่วโมง', 'โรงพยาบาลเอกชน บริการครบวงจร มีแผนกฉุกเฉิน', '2025-10-30 08:45:07'),
(3, 'โรงพยาบาลเอกอุดร', 'hospital', '555/5 ถ.ทหาร ต.หมากแข้ง อ.เมือง จ.อุดรธานี', '042-221555', 17.4068000, 102.7920000, '24 ชั่วโมง', 'โรงพยาบาลเอกชน มีศูนย์รักษาหัวใจ และศูนย์มะเร็ง', '2025-10-30 08:45:07'),
(4, 'โรงพยาบาลค่ายสรรพสิทธิประสงค์', 'hospital', 'ค่ายสรรพสิทธิประสงค์ อ.เมือง จ.อุดรธานี', '042-246100', 17.3985000, 102.7755000, '24 ชั่วโมง', 'โรงพยาบาลทหาร รับรักษาทั้งทหารและพลเรือน', '2025-10-30 08:45:07'),
(5, 'โรงพยาบาลส่งเสริมสุขภาพตำบล บ้านหมากแข้ง', 'hospital', 'ต.หมากแข้ง อ.เมือง จ.อุดรธานี', '042-222333', 17.4145000, 102.7920000, '08:30-16:30 น.', 'โรงพยาบาลส่งเสริมสุขภาพตำบล บริการตรวจรักษาทั่วไป', '2025-10-30 08:45:07'),
(6, 'สถานีตำรวจภูธรเมืองอุดรธานี', 'police', 'ถ.เทสาบาล 1 อ.เมือง จ.อุดรธานี', '042-221297', 17.4168000, 102.7845000, '24 ชั่วโมง', 'สถานีตำรวจหลักของเมืองอุดรธานี รับแจ้งความและให้ความช่วยเหลือตลอด 24 ชั่วโมง', '2025-10-30 08:45:07'),
(7, 'สถานีตำรวจภูธรบ้านดุง', 'police', 'อ.บ้านดุง จ.อุดรธานี', '042-441100', 17.4260000, 102.8295000, '24 ชั่วโมง', 'สถานีตำรวจภูธรอำเภอบ้านดุง', '2025-10-30 08:45:07'),
(8, 'สถานีตำรวจภูธรกุมภวาปี', 'police', 'อ.กุมภวาปี จ.อุดรธานี', '042-431100', 17.4095000, 102.7735000, '24 ชั่วโมง', 'สถานีตำรวจภูธรอำเภอกุมภวาปี ดูแลพื้นที่ทะเลบัวแดง', '2025-10-30 08:45:07'),
(9, 'สถานีตำรวจภูธรหนองหาน', 'police', 'อ.หนองหาน จ.อุดรธานี', '042-451100', 17.4068000, 102.9440000, '24 ชั่วโมง', 'สถานีตำรวจภูธรอำเภอหนองหาน ดูแลพื้นที่บ้านเชียง', '2025-10-30 08:45:07'),
(10, 'สถานีตำรวจภูธรบ้านผือ', 'police', 'อ.บ้านผือ จ.อุดรธานี', '042-461100', 17.4288000, 102.9368000, '24 ชั่วโมง', 'สถานีตำรวจภูธรอำเภอบ้านผือ ดูแลพื้นที่อุทยานภูพระบาท', '2025-10-30 08:45:07'),
(11, 'สถานีดับเพลิงเมืองอุดรธานี', 'fire_station', 'ถ.อุดรดุษฎี อ.เมือง จ.อุดรธานี', '042-221555', 17.4102000, 102.7858000, '24 ชั่วโมง', 'สถานีดับเพลิงหลักของจังหวัด พร้อมให้บริการฉุกเฉินตลอด 24 ชั่วโมง', '2025-10-30 08:45:07'),
(12, 'สถานีดับเพลิงอำเภอบ้านดุง', 'fire_station', 'อ.บ้านดุง จ.อุดรธานี', '042-441234', 17.4262000, 102.8292000, '24 ชั่วโมง', 'สถานีดับเพลิงอำเภอบ้านดุง', '2025-10-30 08:45:07'),
(13, 'ปตท. สาขาอุดรธานี 1', 'gas_station', 'ถ.โพศรี อ.เมือง จ.อุดรธานี', '042-222111', 17.4130000, 102.7888000, '24 ชั่วโมง', 'สถานีบริการน้ำมัน ปตท. พร้อมร้านสะดวกซื้อ', '2025-10-30 08:45:07'),
(14, 'ปตท. สาขาอุดรธานี 2', 'gas_station', 'ถ.ประจักษ์ศิลปาคม อ.เมือง จ.อุดรธานี', '042-222112', 17.4165000, 102.7875000, '24 ชั่วโมง', 'สถานีบริการน้ำมัน ปตท. มีบริการล้างรถ', '2025-10-30 08:45:07'),
(15, 'เชลล์ อุดรธานี', 'gas_station', 'ถ.ทหาร อ.เมือง จ.อุดรธานี', '042-222113', 17.4075000, 102.7912000, '24 ชั่วโมง', 'สถานีบริการน้ำมันเชลล์ พร้อมร้านกาแฟ', '2025-10-30 08:45:07'),
(16, 'บางจาก อุดรธานี', 'gas_station', 'ถ.อุดรดุษฎี อ.เมือง จ.อุดรธานี', '042-222114', 17.4095000, 102.7852000, '24 ชั่วโมง', 'สถานีบริการน้ำมันบางจาก', '2025-10-30 08:45:07'),
(17, 'ธนาคารกรุงไทย สาขาอุดรธานี', 'bank', 'ถ.โพศรี อ.เมือง จ.อุดรธานี', '042-245678', 17.4142000, 102.7882000, '08:30-15:30 น. (จ-ศ)', 'ธนาคารกรุงไทย มี ATM ตลอด 24 ชั่วโมง', '2025-10-30 08:45:07'),
(18, 'ธนาคารกสิกรไทย สาขาอุดรธานี', 'bank', 'ถ.ประจักษ์ศิลปาคม อ.เมือง จ.อุดรธานี', '042-245679', 17.4152000, 102.7872000, '08:30-15:30 น. (จ-ศ)', 'ธนาคารกสิกรไทย มี ATM และบริการแลกเปลี่ยนเงินตรา', '2025-10-30 08:45:07'),
(19, 'ธนาคารไทยพาณิชย์ สาขาอุดรธานี', 'bank', 'ถ.ทหาร อ.เมือง จ.อุดรธานี', '042-245680', 17.4062000, 102.7908000, '08:30-15:30 น. (จ-ศ)', 'ธนาคารไทยพาณิชย์ บริการครบวงจร', '2025-10-30 08:45:07'),
(20, 'ไปรษณีย์อุดรธานี', 'post_office', 'ถ.วัดมหาชัย อ.เมือง จ.อุดรธานี', '042-221405', 17.4158000, 102.7848000, '08:30-16:30 น. (จ-ศ), 09:00-12:00 น. (ส)', 'ที่ทำการไปรษณีย์จังหวัดอุดรธานี บริการส่งพัสดุและธุรกรรมทางไปรษณีย์', '2025-10-30 08:45:07'),
(21, 'ไปรษณีย์บ้านดุง', 'post_office', 'อ.บ้านดุง จ.อุดรธานี', '042-441205', 17.4265000, 102.8298000, '08:30-16:30 น. (จ-ศ)', 'ที่ทำการไปรษณีย์อำเภอบ้านดุง', '2025-10-30 08:45:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('user','admin') DEFAULT 'user',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`, `created_at`) VALUES
(1, 'admin', 'admin@example.com', '$2y$10$a3z6mqyN7751D9hB/qWZW.ipV7nT9xCpLMTI7iJ7oXPPTWE9WhKHa', 'admin', '2025-10-29 16:07:25'),
(2, 'user1', 'user1@example.com', '$2y$10$CjU5kCniqAAKx0np3kWw..EVJW3QZPHvPVtfUgELUkP6UNizS9CKK', 'user', '2025-10-29 16:07:25'),
(8, 'user', 'chokchai.c1972@gmail.com', '$2y$10$JNXbcCCIWq1bMWN9ojEgfOs/aawoy/FpVLOszJCoXp.SrE0jJBfGe', 'user', '2025-10-29 17:09:36'),
(10, 'teennykubb', 'phurinatssx@gmail.com', '$2y$10$/md8X.7MroRPgjLO/qggBe3WKM7BLT2nTX/wSfZGbZZQcleda0n3e', 'user', '2025-10-30 15:32:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accommodations`
--
ALTER TABLE `accommodations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `place_categories`
--
ALTER TABLE `place_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accommodations`
--
ALTER TABLE `accommodations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `place_categories`
--
ALTER TABLE `place_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
