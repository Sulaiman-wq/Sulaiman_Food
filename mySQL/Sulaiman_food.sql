-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 11, 2021 at 04:32 PM
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
-- Database: `Sulaiman_food`
--

-- --------------------------------------------------------

--
-- Table structure for table `foodMenu`
--

CREATE TABLE `foodMenu` (
  `Food_id` varchar(100) NOT NULL,
  `Food_Name` varchar(100) NOT NULL,
  `Food_Detail` varchar(1000) NOT NULL,
  `Price` varchar(100) NOT NULL,
  `Image_Path` varchar(100) NOT NULL,
  `Shop_id` varchar(100) NOT NULL,
  `User_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=tis620;

--
-- Dumping data for table `foodMenu`
--

INSERT INTO `foodMenu` (`Food_id`, `Food_Name`, `Food_Detail`, `Price`, `Image_Path`, `Shop_id`, `User_id`) VALUES
('F00003', 'ชุดมนุษย์เงินเดือน', 'ชุดสุดคุ้ม เอาใจมนุษย์เงินเดือน', '99', '/Sulaiman_food/Shop/imageFood/Foodmenu528080.jpg', 'S00002', 'U00002'),
('F00009', 'กุ้งห่อใบตอง', 'อร่อยถึงเนื้อ ถึงเครื่อง', '349', '/Sulaiman_food/Shop/imageFood/Foodmenu892404.jpg', 'S00004', 'U00004'),
('F00025', 'ชุดสุขภาพ', 'นุ่มอร่อย', '159', '/Sulaiman_food/Shop/imageFood/Foodmenu129569.jpg', 'S00004', 'U00004'),
('F00026', 'ยำปลาหมึก', 'เค็มกว่าน้ำทะเล', '45', '/Sulaiman_food/Shop/imageFood/Foodmenu927303.jpg', 'S00004', 'U00004'),
('F00027', 'ชุดไก่แซ่บ', 'เนื้อน่องไก่เน้นๆ', '159', '/Sulaiman_food/Shop/imageFood/Foodmenu170210.jpg', 'S00005', 'U00009'),
('F00028', 'ไก่ชุดสุดคุ้ม', 'น่องไก่ 9 ชิ้น', '159', '/Sulaiman_food/Shop/imageFood/Foodmenu951942.jpg', 'S00005', 'U00009'),
('F00029', 'ไก่ชุดคอมโบ้', 'ชุดคอมโบ้ ทานได้ทั้งครอบครัว', '259', '/Sulaiman_food/Shop/imageFood/Foodmenu838040.jpg', 'S00005', 'U00009'),
('F00030', 'พิซซ่าชุดเล็ก', 'ชุดสุดคุ้ม', '99', '/Sulaiman_food/Shop/imageFood/Foodmenu906329.jpg', 'S00006', 'U00010'),
('F00031', 'พิซซ่าชุด 1 แถม 1', 'ชุด 1 แถม 1 หมดเขต 30 พฤษภาคมนี้', '499', '/Sulaiman_food/Shop/imageFood/Foodmenu756904.jpg', 'S00006', 'U00010'),
('F00032', 'พิซซ่าบุฟเฟ่ต์', 'พิซซ่าบุฟเฟ่ต์ ทานได้ไม่อั้น ไม่จำกัดชั่วโมง', '899', '/Sulaiman_food/Shop/imageFood/Foodmenu468750.jpg', 'S00006', 'U00010'),
('F00033', 'ชุดต้มยำหม้อไฟ', 'ชุดผักต้มยำหม้อไฟ', '399', '/Sulaiman_food/Shop/imageFood/Foodmenu34162.jpg', 'S00002', 'U00002'),
('F00034', 'ชุดเล็กพร้อมทาน', 'ชุดเล็กพร้อมทาน เหมาะสำหรับหนึ่งคน', '99', '/Sulaiman_food/Shop/imageFood/Foodmenu237839.jpg', 'S00002', 'U00002'),
('F00035', 'เป็ดย่าง MK', 'ชุดเป็ดย่างนุ่มๆ', '159', '/Sulaiman_food/Shop/imageFood/Foodmenu263079.jpg', 'S00002', 'U00002'),
('F00036', 'ชุดเบเกอรี่', 'ชุดเบเกอรี่สุดคุ้ม', '299', '/Sulaiman_food/Shop/imageFood/Foodmenu706177.jpg', 'S00003', 'U00003'),
('F00037', 'พาย', 'พายอบใหม่ทุกวัน', '40', '/Sulaiman_food/Shop/imageFood/Foodmenu432927.jpg', 'S00003', 'U00003'),
('F00038', 'ปลาย่าง', 'เนื้อปลาสดใหม่', '259', '/Sulaiman_food/Shop/imageFood/Foodmenu289318.jpg', 'S00007', 'U00005'),
('F00039', 'เนื้อสุกกำลังดี', 'เนื้อนุ่ม ละลายในปาก', '459', '/Sulaiman_food/Shop/imageFood/Foodmenu18270.jpg', 'S00007', 'U00005'),
('F00040', 'คาปูชิโน่', 'หอมกลิ่นกาแฟแท้ๆ', '89', '/Sulaiman_food/Shop/imageFood/Foodmenu737341.jpg', 'S00007', 'U00005'),
('F00041', 'ปลาซาบะ', 'ปลาเนื้อนุ่ม ละมุนลิ้น', '149', '/Sulaiman_food/Shop/imageFood/Foodmenu108422.jpg', 'S00007', 'U00005'),
('F00042', 'เค้กชาเย็น', 'อร่อย หอมหวาน', '150', '/Sulaiman_food/Shop/imageFood/Foodmenu255779.jpg', 'S00008', 'U00006'),
('F00043', 'กุ้งผัดผัก', 'กุ้งสดใหม่ทุกวัน', '99', '/Sulaiman_food/Shop/imageFood/Foodmenu84990.jpg', 'S00008', 'U00006'),
('F00044', 'ชุดสุดคุ้ม', 'ทานได้2 คน', '159', '/Sulaiman_food/Shop/imageFood/Foodmenu549196.jpg', 'S00008', 'U00006'),
('F00045', 'เซ็ตครอบครัว', 'ทานได้ 4 คน', '450', '/Sulaiman_food/Shop/imageFood/Foodmenu972256.jpg', 'S00008', 'U00006'),
('F00046', 'กับข้าวเซ็ตใหญ่', 'ทานได้ 10 คน', '899', '/Sulaiman_food/Shop/imageFood/Foodmenu40737.jpg', 'S00008', 'U00006'),
('F00047', 'ยำไข่ดาว', 'อร่อย อยากให้ลอง', '109', '/Sulaiman_food/Shop/imageFood/Foodmenu205074.jpg', 'S00009', 'U00011'),
('F00048', 'ต้มโคล้ง', 'อร่อยมาก', '189', '/Sulaiman_food/Shop/imageFood/Foodmenu305960.jpg', 'S00009', 'U00011'),
('F00049', 'ผักผัดรวมมิตร', 'ผักสดใหม่ทุกวัน', '99', '/Sulaiman_food/Shop/imageFood/Foodmenu767877.jpg', 'S00009', 'U00011'),
('F00050', 'ชุดเซ็ตรวม', 'ทานได้ 4 คน', '299', '/Sulaiman_food/Shop/imageFood/Foodmenu296634.jpg', 'S00009', 'U00011'),
('F00051', 'ชุดไก่เเซ่บ', 'ไก่แซ่บเผ็ดซี้ด', '169', '/Sulaiman_food/Shop/imageFood/Foodmenu292786.jpg', 'S00010', 'U00012'),
('F00052', 'วุ้นขนมเค้ก', 'นนอร่อยอย่าบอกใคร', '69', '/Sulaiman_food/Shop/imageFood/Foodmenu232486.jpg', 'S00001', 'U00001'),
('F00053', 'ผักผัดรวม', 'อร่อยแน่นอน', '55', '/Sulaiman_food/Shop/imageFood/Foodmenu104767.jpg', 'S00001', 'U00001'),
('F00054', 'ยำไข่ดาว', 'อร่อย', '60', '/Sulaiman_food/Shop/imageFood/Foodmenu133943.jpg', 'S00001', 'U00001'),
('F00055', 'ปลาซาบะย่างเกลือ', 'อร่อยไม่เหมือนใคร', '169', '/Sulaiman_food/Shop/imageFood/Foodmenu508819.jpg', 'S00001', 'U00001'),
('F00056', 'เนื้อวากิว', 'เนื้อนุ่ม หวานหอมเครื่องเทศ', '450', '/Sulaiman_food/Shop/imageFood/Foodmenu349396.jpg', 'S00001', 'U00001'),
('F00057', 'กุ้งผัดบ็อกเคอรี่', 'กุ้งสดใหม่ทุกวัน', '99', '/Sulaiman_food/Shop/imageFood/Foodmenu776985.jpg', 'S00001', 'U00001');

-- --------------------------------------------------------

--
-- Table structure for table `infomationShop`
--

CREATE TABLE `infomationShop` (
  `Shop_id` varchar(100) NOT NULL,
  `Name_shop` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address_shop` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Phone_shop` text DEFAULT NULL,
  `Url_image` text DEFAULT NULL,
  `Latitude` varchar(100) DEFAULT NULL,
  `Longitude` varchar(100) DEFAULT NULL,
  `User_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=tis620;

--
-- Dumping data for table `infomationShop`
--

INSERT INTO `infomationShop` (`Shop_id`, `Name_shop`, `Address_shop`, `Phone_shop`, `Url_image`, `Latitude`, `Longitude`, `User_id`) VALUES
('S00001', 'MD ซีฟู๊ดทะเลเดือด', '720/19 หมู่บ้านทวีสุข หมู่ที่ 3 ตำบลพะวง อำเภอเมือง จังหวัดสงขลา 90100', '0857788859', '/Sulaiman_food/Shop/Shop513782.jpg', '13.6862983', '100.5909983', 'U00001'),
('S00002', 'MK', '164/15 หมู่บ้านนิรันดร์วิลล์55 ซ.ทรัพย์บุญชัย 39 ถ.ศรีนครินทร์ ต.บางเมือง อ.เมือง จ.สมุทรปราการ 10270', '085-3454431', '/Sulaiman_food/Shop/Shop630212.jpg', '13.601586', '100.6265219', 'U00002'),
('S00003', 'S & P', '766/3 ซ.ลาซาล34 ถ.สุขุมวิท105 แขวง บางนา เขตบางนา กรุงเทพ 10260', '0852223324', '/Sulaiman_food/Shop/Shop904714.jpg', '13.655955', '100.607925', 'U00003'),
('S00004', 'วีระชัยFood', '554/12 หมู่ที่3 ต.บางกระดี่ อ.เมือง จ.มุกดาหาร 67000', '0859966632', '/Sulaiman_food/Shop/Shop292185.jpg', '13.646309', '100.602188', 'U00004'),
('S00005', 'KFC', '99 หมู่3 ตำบลยะริ่ง​ อำเภอเมือง​จังหวัดสมุทรปราการ​10260', '0889659985', '/Sulaiman_food/Shop/Shop359755.jpg', '13.6016022', '100.6264987', 'U00009'),
('S00006', 'พิซซ่า ฮัท', '54/3 หมู่ที่3 ตำบลแม่อำนวย อำเภอเมือง จังหวัดมุกดาหาร 23343', '1150', '/Sulaiman_food/Shop/Shop806850.jpg', '13.645002', '100.584086', 'U00010'),
('S00007', 'ฟ้าใสโภชนา', '578 หมู่ที่1 ตำบลบางโฉลง อำเภอเมือง จังหวัดกรุงเทพ 10240', '0854142241', '/Sulaiman_food/Shop/Shop163126.jpg', '13.669513', '100.591437', 'U00005'),
('S00008', 'วิวดี คาเฟ่', '65/3 หมู่ที่3 ตำบลบางไผ่ อำเภอสะปัน จังหวัดเชียงใหม่ 97000', '0859933362', '/Sulaiman_food/Shop/Shop127415.jpg', '13.686259', '100.591119', 'U00006'),
('S00009', 'F & M', '45 หมู่ที่ 3 ตำบลบางละมุน อำเภอบางพลี จังหวัด สมุทรปราการ 10250', '0869985254', '/Sulaiman_food/Shop/Shop921387.jpg', '13.709065', '100.599859', 'U00011'),
('S00010', 'KFC', '43 หมู่ที่6​ ตำบลบางเมือง​ อำเภอเมือง​ จังหวัดสมุทรปราการ​ 10270', '0859933652', '/Sulaiman_food/Shop/Shop473727.jpg', '13.6015844', '100.6265344', 'U00012');

-- --------------------------------------------------------

--
-- Table structure for table `orderTABLE`
--

CREATE TABLE `orderTABLE` (
  `Order_id` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `Order_datetime` text COLLATE utf8_unicode_ci NOT NULL,
  `Shop_id` text COLLATE utf8_unicode_ci NOT NULL,
  `Name_shop` text COLLATE utf8_unicode_ci NOT NULL,
  `Distance` text COLLATE utf8_unicode_ci NOT NULL,
  `Transport` text COLLATE utf8_unicode_ci NOT NULL,
  `Food_id` text COLLATE utf8_unicode_ci NOT NULL,
  `Food_Name` text COLLATE utf8_unicode_ci NOT NULL,
  `Price` text COLLATE utf8_unicode_ci NOT NULL,
  `Amount` text COLLATE utf8_unicode_ci NOT NULL,
  `Sum` text COLLATE utf8_unicode_ci NOT NULL,
  `Rider_id` text COLLATE utf8_unicode_ci NOT NULL,
  `Status` text COLLATE utf8_unicode_ci NOT NULL,
  `User_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Name` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orderTABLE`
--

INSERT INTO `orderTABLE` (`Order_id`, `Order_datetime`, `Shop_id`, `Name_shop`, `Distance`, `Transport`, `Food_id`, `Food_Name`, `Price`, `Amount`, `Sum`, `Rider_id`, `Status`, `User_id`, `Name`) VALUES
('D00001', '2021-05-18 22:42:44', 'S00001', 'MD ซีฟู๊ดทะเลเดือด', '7.84', '105', '[F00017, F00020, F00016, F00023]', '[กะบับ ไก่, ใส้อั่วเนื้อ, ข้าวซอยไก่ แม่ประพิมพ์, หอยเชลล์]', '[90, 120, 80, 250]', '[1, 1, 3, 5]', '[90, 120, 240, 1250]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00002', '2021-05-18 23:41:24', 'S00001', 'MD ซีฟู๊ดทะเลเดือด', '7.84', '105', '[F00019, F00018, F00016, F00020]', '[กุ้งสดย่าง, ตำข้าวโพด, ข้าวซอยไก่ แม่ประพิมพ์, ใส้อั่วเนื้อ]', '[150, 60, 80, 120]', '[1, 3, 3, 2]', '[150, 180, 240, 240]', 'none', 'Userorder', 'U00008', 'user2'),
('D00003', '2021-05-19 21:46:31', 'S00001', 'MD ซีฟู๊ดทะเลเดือด', '7.84', '105', '[F00018, F00020, F00016]', '[ตำข้าวโพด, ใส้อั่วเนื้อ, ข้าวซอยไก่ แม่ประพิมพ์]', '[60, 120, 80]', '[1, 1, 1]', '[60, 120, 80]', 'none', 'ShopCooking', 'U00008', 'user2'),
('D00004', '2021-05-19 23:13:27', 'S00002', 'เจ๊ปู แซ่บเว่อ', '17.61', '205', '[F00003]', '[ส้มตำข้าวโพดไข่เค็ม]', '[60]', '[1]', '[60]', 'none', 'RiderHandle', 'U00008', 'user2'),
('D00005', '2021-05-20 14:39:56', 'S00001', 'MD ซีฟู๊ดทะเลเดือด', '7.84', '105', '[F00018, F00020]', '[ตำข้าวโพด, ใส้อั่วเนื้อ]', '[60, 120]', '[1, 1]', '[60, 120]', 'none', 'Finish', 'U00008', 'user2'),
('D00006', '2021-05-23 21:33:26', 'S00007', 'ฟ้าใสโภชนา', '0.01', '35', '[F00040, F00041, F00039]', '[คาปูชิโน่, ปลาซาบะ, เนื้อสุกกำลังดี]', '[89, 149, 459]', '[2, 1, 1]', '[178, 149, 459]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00007', '2021-05-24 21:21:25', 'S00001', 'MD ซีฟู๊ดทะเลเดือด', '2.64', '55', '[F00016, F00018]', '[ข้าวซอยไก่ แม่ประพิมพ์, ตำข้าวโพด]', '[80, 60]', '[2, 1]', '[160, 60]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00008', '2021-05-24 21:24:41', 'S00002', 'MK', '2.65', '55', '[F00033]', '[ชุดต้มยำหม้อไฟ]', '[399]', '[1]', '[399]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00009', '2021-05-24 21:25:38', 'S00001', 'MD ซีฟู๊ดทะเลเดือด', '2.64', '55', '[F00023, F00022, F00020, F00019]', '[หอยเชลล์, กุ้งมังกรย่างสด, ใส้อั่วเนื้อ, กุ้งสดย่าง]', '[250, 900, 120, 150]', '[1, 1, 1, 1]', '[250, 900, 120, 150]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00010', '2021-05-24 22:24:15', 'S00002', 'MK', '2.65', '55', '[F00003, F00033]', '[ชุดมนุษย์เงินเดือน, ชุดต้มยำหม้อไฟ]', '[99, 399]', '[1, 1]', '[99, 399]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00011', '2021-05-24 22:25:21', 'S00001', 'MD ซีฟู๊ดทะเลเดือด', '2.64', '55', '[F00016]', '[ข้าวซอยไก่ แม่ประพิมพ์]', '[80]', '[1]', '[80]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00012', '2021-05-24 22:28:14', 'S00001', 'MD ซีฟู๊ดทะเลเดือด', '2.64', '55', '[F00016]', '[ข้าวซอยไก่ แม่ประพิมพ์]', '[80]', '[1]', '[80]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00013', '2021-05-24 22:39:24', 'S00001', 'MD ซีฟู๊ดทะเลเดือด', '2.64', '55', '[F00018]', '[ตำข้าวโพด]', '[60]', '[1]', '[60]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00014', '2021-05-24 22:40:55', 'S00001', 'MD ซีฟู๊ดทะเลเดือด', '2.64', '55', '[F00016]', '[ข้าวซอยไก่ แม่ประพิมพ์]', '[80]', '[1]', '[80]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00015', '2021-05-24 22:42:01', 'S00001', 'MD ซีฟู๊ดทะเลเดือด', '2.64', '55', '[F00016]', '[ข้าวซอยไก่ แม่ประพิมพ์]', '[80]', '[1]', '[80]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00016', '2021-05-24 22:42:38', 'S00001', 'MD ซีฟู๊ดทะเลเดือด', '2.64', '55', '[F00017]', '[กะบับ ไก่]', '[90]', '[1]', '[90]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00017', '2021-05-24 22:44:51', 'S00001', 'MD ซีฟู๊ดทะเลเดือด', '2.64', '55', '[F00016]', '[ข้าวซอยไก่ แม่ประพิมพ์]', '[80]', '[1]', '[80]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00018', '2021-05-24 22:45:38', 'S00001', 'MD ซีฟู๊ดทะเลเดือด', '2.64', '55', '[F00017]', '[กะบับ ไก่]', '[90]', '[1]', '[90]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00019', '2021-05-24 22:53:34', 'S00001', 'MD ซีฟู๊ดทะเลเดือด', '2.64', '55', '[F00017]', '[กะบับ ไก่]', '[90]', '[1]', '[90]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00020', '2021-05-24 22:55:03', 'S00001', 'MD ซีฟู๊ดทะเลเดือด', '2.64', '55', '[F00016]', '[ข้าวซอยไก่ แม่ประพิมพ์]', '[80]', '[1]', '[80]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00021', '2021-05-24 22:56:45', 'S00001', 'MD ซีฟู๊ดทะเลเดือด', '2.64', '55', '[F00016]', '[ข้าวซอยไก่ แม่ประพิมพ์]', '[80]', '[1]', '[80]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00022', '2021-05-25 00:09:08', 'S00001', 'MD ซีฟู๊ดทะเลเดือด', '2.64', '55', '[F00016, F00017]', '[ข้าวซอยไก่ แม่ประพิมพ์, กะบับ ไก่]', '[80, 90]', '[1, 1]', '[80, 90]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00023', '2021-05-25 00:09:38', 'S00001', 'MD ซีฟู๊ดทะเลเดือด', '2.64', '55', '[F00019]', '[กุ้งสดย่าง]', '[150]', '[1]', '[150]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00024', '2021-05-25 00:11:56', 'S00001', 'MD ซีฟู๊ดทะเลเดือด', '2.64', '55', '[F00016]', '[ข้าวซอยไก่ แม่ประพิมพ์]', '[80]', '[1]', '[80]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00025', '2021-05-25 00:15:41', 'S00002', 'MK', '0.00', '35', '[F00035, F00034]', '[เป็ดย่าง MK, ชุดเล็กพร้อมทาน]', '[159, 99]', '[2, 1]', '[318, 99]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00026', '2021-05-25 00:17:59', 'S00002', 'MK', '0.00', '35', '[F00003]', '[ชุดมนุษย์เงินเดือน]', '[99]', '[1]', '[99]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00027', '2021-05-25 00:25:59', 'S00002', 'MK', '0.00', '35', '[F00033, F00003, F00035]', '[ชุดต้มยำหม้อไฟ, ชุดมนุษย์เงินเดือน, เป็ดย่าง MK]', '[399, 99, 159]', '[1, 1, 2]', '[399, 99, 318]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00028', '2021-05-25 16:21:21', 'S00001', 'MD ซีฟู๊ดทะเลเดือด', '0.01', '35', '[F00016]', '[ข้าวซอยไก่ แม่ประพิมพ์]', '[80]', '[1]', '[80]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00029', '2021-05-25 16:22:32', 'S00001', 'MD ซีฟู๊ดทะเลเดือด', '0.01', '35', '[F00018]', '[ตำข้าวโพด]', '[60]', '[1]', '[60]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00030', '2021-05-25 16:23:41', 'S00001', 'MD ซีฟู๊ดทะเลเดือด', '0.01', '35', '[F00016]', '[ข้าวซอยไก่ แม่ประพิมพ์]', '[80]', '[1]', '[80]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00031', '2021-05-28 18:05:52', 'S00002', 'MK', '2.59', '55', '[F00034, F00003]', '[ชุดเล็กพร้อมทาน, ชุดมนุษย์เงินเดือน]', '[99, 99]', '[5, 2]', '[495, 198]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00032', '2021-05-28 18:07:49', 'S00003', 'S ', '3.84', '65', '[F00037, F00036]', '[พาย, ชุดเบเกอรี่]', '[40, 299]', '[2, 1]', '[80, 299]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00033', '2021-05-29 01:53:35', 'S00001', 'MD ซีฟู๊ดทะเลเดือด', '10.17', '125', '[F00053, F00052, F00019]', '[สย, ไก่กรอบรสเด็ด, กุ้งสดย่าง SeeFood]', '[12, 269, 150]', '[1, 1, 1]', '[12, 269, 150]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00034', '2021-05-29 01:54:26', 'S00001', 'MD ซีฟู๊ดทะเลเดือด', '10.17', '125', '[F00016, F00019, F00017]', '[ข้าวซอยไก่ แม่ประพิมพ์, กุ้งสดย่าง SeeFood, กะบับ ไก่]', '[80, 150, 90]', '[2, 2, 2]', '[160, 300, 180]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00035', '2021-05-29 01:55:06', 'S00001', 'MD ซีฟู๊ดทะเลเดือด', '10.17', '125', '[F00016]', '[ข้าวซอยไก่ แม่ประพิมพ์]', '[80]', '[1]', '[80]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00036', '2021-05-30 21:23:37', 'S00007', 'ฟ้าใสโภชนา', '1.87', '45', '[F00041, F00040, F00039, F00038]', '[ปลาซาบะ, คาปูชิโน่, เนื้อสุกกำลังดี, ปลาย่าง]', '[149, 89, 459, 259]', '[1, 1, 3, 1]', '[149, 89, 1377, 259]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00037', '2021-05-30 23:16:50', 'S00001', 'MD ซีฟู๊ดทะเลเดือด', '0.00', '35', '[F00053, F00052, F00054, F00056, F00057]', '[ผักผัดรวม, วุ้นขนมเค้ก, ยำไข่ดาว, เนื้อวากิว, กุ้งผัดบ็อกเคอรี่]', '[55, 69, 60, 450, 99]', '[210, 8, 8, 1, 6]', '[11550, 552, 480, 450, 594]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00038', '2021-05-31 11:49:08', 'S00004', 'วีระชัยFood', '5.62', '85', '[F00009, F00026, F00009]', '[กุ้งห่อใบตอง, ยำปลาหมึก, กุ้งห่อใบตอง]', '[349, 45, 349]', '[1, 2, 3]', '[349, 90, 1047]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00039', '2021-05-31 11:58:00', 'S00001', 'MD ซีฟู๊ดทะเลเดือด', '10.17', '125', '[F00017, F00053]', '[กะบับ ไก่, ผักผัดรวม]', '[90, 55]', '[1, 1]', '[90, 55]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00040', '2021-05-31 17:52:54', 'S00002', 'MK', '7.64', '105', '[F00033, F00035, F00003]', '[ชุดต้มยำหม้อไฟ, เป็ดย่าง MK, ชุดมนุษย์เงินเดือน]', '[399, 159, 99]', '[2, 3, 1]', '[798, 477, 99]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00041', '2021-05-31 17:53:41', 'S00002', 'MK', '7.64', '105', '[F00033]', '[ชุดต้มยำหม้อไฟ]', '[399]', '[1]', '[399]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00042', '2021-05-31 17:54:24', 'S00002', 'MK', '7.64', '105', '[F00034, F00035]', '[ชุดเล็กพร้อมทาน, เป็ดย่าง MK]', '[99, 159]', '[1, 2]', '[99, 318]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00043', '2021-05-31 18:08:36', 'S00002', 'MK', '7.64', '105', '[F00033]', '[ชุดต้มยำหม้อไฟ]', '[399]', '[1]', '[399]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00044', '2021-05-31 18:12:56', 'S00002', 'MK', '7.64', '105', '[F00035]', '[เป็ดย่าง MK]', '[159]', '[1]', '[159]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00045', '2021-05-31 18:14:58', 'S00002', 'MK', '7.64', '105', '[F00034, F00035]', '[ชุดเล็กพร้อมทาน, เป็ดย่าง MK]', '[99, 159]', '[3, 1]', '[297, 159]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00046', '2021-05-31 18:16:31', 'S00002', 'MK', '7.64', '105', '[F00003, F00035]', '[ชุดมนุษย์เงินเดือน, เป็ดย่าง MK]', '[99, 159]', '[1, 1]', '[99, 159]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00047', '2021-06-01 17:37:07', 'S00003', 'S ', '6.36', '85', '[F00037]', '[พาย]', '[40]', '[1]', '[40]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00048', '2021-06-01 17:39:27', 'S00003', 'S ', '6.36', '85', '[F00036]', '[ชุดเบเกอรี่]', '[299]', '[1]', '[299]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00049', '2021-06-01 17:40:47', 'S00003', 'S ', '6.36', '85', '[F00036]', '[ชุดเบเกอรี่]', '[299]', '[1]', '[299]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00050', '2021-06-01 17:47:18', 'S00003', 'S ', '6.36', '85', '[F00036]', '[ชุดเบเกอรี่]', '[299]', '[1]', '[299]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00051', '2021-06-01 17:48:46', 'S00003', 'S ', '6.36', '85', '[F00036]', '[ชุดเบเกอรี่]', '[299]', '[1]', '[299]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00052', '2021-06-01 17:54:21', 'S00003', 'S ', '6.36', '85', '[F00036]', '[ชุดเบเกอรี่]', '[299]', '[1]', '[299]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00053', '2021-06-01 17:55:32', 'S00003', 'S ', '6.36', '85', '[F00036]', '[ชุดเบเกอรี่]', '[299]', '[1]', '[299]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00054', '2021-06-01 17:56:44', 'S00003', 'S ', '6.36', '85', '[F00037]', '[พาย]', '[40]', '[1]', '[40]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00055', '2021-06-02 22:23:50', 'S00003', 'S ', '6.36', '85', '[F00037, F00036, F00037]', '[พาย, ชุดเบเกอรี่, พาย]', '[40, 299, 40]', '[1, 1, 1]', '[40, 299, 40]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00056', '2021-06-02 22:28:53', 'S00003', 'S ', '6.36', '85', '[F00036]', '[ชุดเบเกอรี่]', '[299]', '[1]', '[299]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00057', '2021-06-02 22:30:20', 'S00003', 'S ', '6.36', '85', '[F00036]', '[ชุดเบเกอรี่]', '[299]', '[1]', '[299]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00058', '2021-06-02 22:30:44', 'S00003', 'S ', '6.36', '85', '[F00037]', '[พาย]', '[40]', '[1]', '[40]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00059', '2021-06-02 22:35:53', 'S00003', 'S ', '6.36', '85', '[F00036]', '[ชุดเบเกอรี่]', '[299]', '[1]', '[299]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00060', '2021-06-02 22:37:32', 'S00003', 'S ', '6.36', '85', '[F00036]', '[ชุดเบเกอรี่]', '[299]', '[1]', '[299]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00061', '2021-06-02 22:40:37', 'S00003', 'S ', '6.36', '85', '[F00036]', '[ชุดเบเกอรี่]', '[299]', '[1]', '[299]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00062', '2021-06-02 22:56:50', 'S00002', 'MK', '7.64', '105', '[F00003]', '[ชุดมนุษย์เงินเดือน]', '[99]', '[1]', '[99]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00063', '2021-06-02 22:57:27', 'S00002', 'MK', '7.64', '105', '[F00003]', '[ชุดมนุษย์เงินเดือน]', '[99]', '[1]', '[99]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00064', '2021-06-02 22:57:47', 'S00002', 'MK', '7.64', '105', '[F00035]', '[เป็ดย่าง MK]', '[159]', '[1]', '[159]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00065', '2021-06-02 22:58:01', 'S00002', 'MK', '7.64', '105', '[F00003]', '[ชุดมนุษย์เงินเดือน]', '[99]', '[1]', '[99]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00066', '2021-06-02 22:59:34', 'S00002', 'MK', '7.64', '105', '[F00003]', '[ชุดมนุษย์เงินเดือน]', '[99]', '[1]', '[99]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00067', '2021-06-02 22:59:47', 'S00002', 'MK', '7.64', '105', '[F00035]', '[เป็ดย่าง MK]', '[159]', '[1]', '[159]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00068', '2021-06-02 23:02:55', 'S00002', 'MK', '7.64', '105', '[F00003]', '[ชุดมนุษย์เงินเดือน]', '[99]', '[1]', '[99]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00069', '2021-06-02 23:03:12', 'S00002', 'MK', '7.64', '105', '[F00033]', '[ชุดต้มยำหม้อไฟ]', '[399]', '[1]', '[399]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00070', '2021-06-02 23:05:39', 'S00002', 'MK', '7.64', '105', '[F00003]', '[ชุดมนุษย์เงินเดือน]', '[99]', '[1]', '[99]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00071', '2021-06-02 23:06:03', 'S00002', 'MK', '7.64', '105', '[F00035]', '[เป็ดย่าง MK]', '[159]', '[1]', '[159]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00072', '2021-06-02 23:08:08', 'S00002', 'MK', '7.64', '105', '[F00033]', '[ชุดต้มยำหม้อไฟ]', '[399]', '[1]', '[399]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00073', '2021-06-02 23:08:31', 'S00002', 'MK', '7.64', '105', '[F00003]', '[ชุดมนุษย์เงินเดือน]', '[99]', '[1]', '[99]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00074', '2021-06-02 23:10:45', 'S00002', 'MK', '7.64', '105', '[F00003]', '[ชุดมนุษย์เงินเดือน]', '[99]', '[1]', '[99]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00075', '2021-06-02 23:11:06', 'S00002', 'MK', '7.64', '105', '[F00003]', '[ชุดมนุษย์เงินเดือน]', '[99]', '[1]', '[99]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00076', '2021-06-02 23:11:21', 'S00002', 'MK', '7.64', '105', '[F00003]', '[ชุดมนุษย์เงินเดือน]', '[99]', '[1]', '[99]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00077', '2021-06-02 23:11:47', 'S00002', 'MK', '7.64', '105', '[F00035]', '[เป็ดย่าง MK]', '[159]', '[1]', '[159]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00078', '2021-06-02 23:12:12', 'S00002', 'MK', '7.64', '105', '[F00003]', '[ชุดมนุษย์เงินเดือน]', '[99]', '[1]', '[99]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00079', '2021-06-02 23:13:51', 'S00002', 'MK', '7.64', '105', '[F00003]', '[ชุดมนุษย์เงินเดือน]', '[99]', '[1]', '[99]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00080', '2021-06-02 23:14:24', 'S00002', 'MK', '7.64', '105', '[F00003]', '[ชุดมนุษย์เงินเดือน]', '[99]', '[1]', '[99]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00081', '2021-06-02 23:14:39', 'S00002', 'MK', '7.64', '105', '[F00003]', '[ชุดมนุษย์เงินเดือน]', '[99]', '[1]', '[99]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00082', '2021-06-02 23:14:52', 'S00002', 'MK', '7.64', '105', '[F00003]', '[ชุดมนุษย์เงินเดือน]', '[99]', '[1]', '[99]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00083', '2021-06-02 23:17:09', 'S00002', 'MK', '7.64', '105', '[F00033]', '[ชุดต้มยำหม้อไฟ]', '[399]', '[1]', '[399]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00084', '2021-06-02 23:17:56', 'S00002', 'MK', '7.64', '105', '[F00003]', '[ชุดมนุษย์เงินเดือน]', '[99]', '[1]', '[99]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00085', '2021-06-02 23:27:05', 'S00002', 'MK', '7.64', '105', '[F00003]', '[ชุดมนุษย์เงินเดือน]', '[99]', '[1]', '[99]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00086', '2021-06-02 23:27:37', 'S00002', 'MK', '7.64', '105', '[F00003]', '[ชุดมนุษย์เงินเดือน]', '[99]', '[1]', '[99]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00087', '2021-06-02 23:28:12', 'S00002', 'MK', '7.64', '105', '[F00003]', '[ชุดมนุษย์เงินเดือน]', '[99]', '[1]', '[99]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00088', '2021-06-02 23:30:04', 'S00002', 'MK', '7.64', '105', '[F00033]', '[ชุดต้มยำหม้อไฟ]', '[399]', '[1]', '[399]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00089', '2021-06-02 23:32:18', 'S00002', 'MK', '7.64', '105', '[F00003]', '[ชุดมนุษย์เงินเดือน]', '[99]', '[1]', '[99]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00090', '2021-06-02 23:32:45', 'S00002', 'MK', '7.64', '105', '[F00035]', '[เป็ดย่าง MK]', '[159]', '[1]', '[159]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00091', '2021-06-03 01:00:15', 'S00002', 'MK', '7.64', '105', '[F00033]', '[ชุดต้มยำหม้อไฟ]', '[399]', '[1]', '[399]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00092', '2021-06-03 01:05:45', 'S00002', 'MK', '7.64', '105', '[F00033]', '[ชุดต้มยำหม้อไฟ]', '[399]', '[1]', '[399]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00093', '2021-06-03 01:06:14', 'S00002', 'MK', '0.01', '35', '[F00003]', '[ชุดมนุษย์เงินเดือน]', '[99]', '[1]', '[99]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00094', '2021-06-03 01:09:07', 'S00002', 'MK', '0.01', '35', '[F00003]', '[ชุดมนุษย์เงินเดือน]', '[99]', '[1]', '[99]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00095', '2021-06-03 01:11:26', 'S00002', 'MK', '0.01', '35', '[F00003]', '[ชุดมนุษย์เงินเดือน]', '[99]', '[1]', '[99]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00096', '2021-06-03 01:15:04', 'S00002', 'MK', '0.01', '35', '[F00033, F00003]', '[ชุดต้มยำหม้อไฟ, ชุดมนุษย์เงินเดือน]', '[399, 99]', '[1, 1]', '[399, 99]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00097', '2021-06-03 01:19:12', 'S00002', 'MK', '0.01', '35', '[F00033]', '[ชุดต้มยำหม้อไฟ]', '[399]', '[1]', '[399]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00098', '2021-06-03 01:24:47', 'S00002', 'MK', '0.01', '35', '[F00003]', '[ชุดมนุษย์เงินเดือน]', '[99]', '[1]', '[99]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00099', '2021-06-03 01:30:33', 'S00002', 'MK', '0.01', '35', '[F00034]', '[ชุดเล็กพร้อมทาน]', '[99]', '[1]', '[99]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00100', '2021-06-03 01:31:35', 'S00002', 'MK', '0.01', '35', '[F00003]', '[ชุดมนุษย์เงินเดือน]', '[99]', '[1]', '[99]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00101', '2021-06-03 01:32:29', 'S00002', 'MK', '0.01', '35', '[F00003]', '[ชุดมนุษย์เงินเดือน]', '[99]', '[1]', '[99]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00102', '2021-06-03 01:33:39', 'S00002', 'MK', '0.01', '35', '[F00034]', '[ชุดเล็กพร้อมทาน]', '[99]', '[1]', '[99]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00103', '2021-06-03 01:34:55', 'S00002', 'MK', '0.01', '35', '[F00033]', '[ชุดต้มยำหม้อไฟ]', '[399]', '[1]', '[399]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00104', '2021-06-03 01:37:36', 'S00002', 'MK', '0.01', '35', '[F00003]', '[ชุดมนุษย์เงินเดือน]', '[99]', '[1]', '[99]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00105', '2021-06-03 01:43:57', 'S00002', 'MK', '0.01', '35', '[F00003]', '[ชุดมนุษย์เงินเดือน]', '[99]', '[1]', '[99]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00106', '2021-06-03 01:44:59', 'S00002', 'MK', '0.01', '35', '[F00003]', '[ชุดมนุษย์เงินเดือน]', '[99]', '[1]', '[99]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00107', '2021-06-03 01:45:14', 'S00002', 'MK', '0.01', '35', '[F00033]', '[ชุดต้มยำหม้อไฟ]', '[399]', '[1]', '[399]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00108', '2021-06-03 01:45:53', 'S00002', 'MK', '0.01', '35', '[F00033]', '[ชุดต้มยำหม้อไฟ]', '[399]', '[1]', '[399]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00109', '2021-06-03 01:46:15', 'S00002', 'MK', '0.01', '35', '[F00033]', '[ชุดต้มยำหม้อไฟ]', '[399]', '[1]', '[399]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00110', '2021-06-03 01:46:33', 'S00002', 'MK', '0.01', '35', '[F00033]', '[ชุดต้มยำหม้อไฟ]', '[399]', '[1]', '[399]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00111', '2021-06-03 01:48:34', 'S00002', 'MK', '0.01', '35', '[F00003]', '[ชุดมนุษย์เงินเดือน]', '[99]', '[1]', '[99]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00112', '2021-06-03 01:52:46', 'S00002', 'MK', '0.01', '35', '[F00033]', '[ชุดต้มยำหม้อไฟ]', '[399]', '[1]', '[399]', 'none', 'Userorder', 'U00007', 'สุไลมาน'),
('D00113', '2021-06-03 01:53:05', 'S00002', 'MK', '0.01', '35', '[F00003]', '[ชุดมนุษย์เงินเดือน]', '[99]', '[1]', '[99]', 'none', 'Userorder', 'U00007', 'สุไลมาน');

-- --------------------------------------------------------

--
-- Table structure for table `userTABLE`
--

CREATE TABLE `userTABLE` (
  `User_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ChooseType` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `User` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Token` text COLLATE utf8_unicode_ci NOT NULL,
  `Shop_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `userTABLE`
--

INSERT INTO `userTABLE` (`User_id`, `ChooseType`, `Name`, `User`, `Password`, `Token`, `Shop_id`) VALUES
('U00001', 'Shop', ' สุไลมาน', 'shop', '12345', 'e3eKAtRxTxateFSb1oYx82:APA91bG1bj1T0lfYXm_zNReSHWKftcZpT7Wko6TkTPoaFsPYrN1tUemqVVrWEOfrfghpOCz5UseYxFyd5jqxJcnXwsJ7ir9x_GOhQtYLT2HafZR9PeEIzsTpfAYWWVJDQFOHekxdPtAz', 'S00001'),
('U00002', 'Shop', 'สมหมาย', 'shop2', '12345', 'e3casi1JTGCvtq9Noxq5Xn:APA91bFeaMo4MirLs7AQda1xzNSNSZfi_EYAPanLU9LM1YiB6KP-cxKpywcY7z9xSFPR-b70zJttjkL6TDMDrjpjKzO52Xz4SS5ropCVC6BhugcgVtE_EqKEVDmbdux3ToeF84Pbl99q', 'S00002'),
('U00003', 'Shop', 'shop3', 'shop3', '12345', 'e3eKAtRxTxateFSb1oYx82:APA91bG1bj1T0lfYXm_zNReSHWKftcZpT7Wko6TkTPoaFsPYrN1tUemqVVrWEOfrfghpOCz5UseYxFyd5jqxJcnXwsJ7ir9x_GOhQtYLT2HafZR9PeEIzsTpfAYWWVJDQFOHekxdPtAz', 'S00003'),
('U00004', 'Shop', 'สมศักดิ์', 'shop4', '12345', '', 'S00004'),
('U00005', 'Shop', 'สุวรรณ', 'shop5', '12345', '', 'S00007'),
('U00006', 'Shop', 'ประภา มนตรี', 'shop6', '12345', '', 'S00008'),
('U00007', 'User', 'สุไลมาน', 'user', '12345', 'dRsGuVpTQEdyrStRJq_Mn3:APA91bHy6du5r80b46bAoQWRbMmxPaXn93wfn_x88yBvXQ9GS6yTAjtkx-7dJ5gIrVs6lJ56QXbjhpbR9azxqW9Z9-tDUP-DD7kUL45E6V7OdqRKEeLK7uZmSWKKQGOXpK8_DgIyhYOR', NULL),
('U00008', 'User', 'user2', 'user2', '12345', 'e3eKAtRxTxateFSb1oYx82:APA91bG1bj1T0lfYXm_zNReSHWKftcZpT7Wko6TkTPoaFsPYrN1tUemqVVrWEOfrfghpOCz5UseYxFyd5jqxJcnXwsJ7ir9x_GOhQtYLT2HafZR9PeEIzsTpfAYWWVJDQFOHekxdPtAz', NULL),
('U00009', 'Shop', 'kfc', 'kfc', '12345', '', 'S00005'),
('U00010', 'Shop', 'เดอะพิซซ่า', 'pisza', '12345', '', 'S00006'),
('U00011', 'Shop', 'sulaiman', 'shop7', '12345', 'e3casi1JTGCvtq9Noxq5Xn:APA91bFeaMo4MirLs7AQda1xzNSNSZfi_EYAPanLU9LM1YiB6KP-cxKpywcY7z9xSFPR-b70zJttjkL6TDMDrjpjKzO52Xz4SS5ropCVC6BhugcgVtE_EqKEVDmbdux3ToeF84Pbl99q', 'S00009'),
('U00012', 'Shop', 'ต้น', 'shop8', '12345', 'e3casi1JTGCvtq9Noxq5Xn:APA91bFeaMo4MirLs7AQda1xzNSNSZfi_EYAPanLU9LM1YiB6KP-cxKpywcY7z9xSFPR-b70zJttjkL6TDMDrjpjKzO52Xz4SS5ropCVC6BhugcgVtE_EqKEVDmbdux3ToeF84Pbl99q', 'S00010'),
('U00013', 'Shop', 'ธนากร บอกดี', 'shop9', '12345', 'e3casi1JTGCvtq9Noxq5Xn:APA91bFeaMo4MirLs7AQda1xzNSNSZfi_EYAPanLU9LM1YiB6KP-cxKpywcY7z9xSFPR-b70zJttjkL6TDMDrjpjKzO52Xz4SS5ropCVC6BhugcgVtE_EqKEVDmbdux3ToeF84Pbl99q', NULL),
('U00014', 'User', 'สมเกียติ', 'user3', '12345', '', NULL),
('U00015', 'Rider', 'สมชาย', 'rider', '12345', '', NULL),
('U00016', 'Rider', 'ชาติชาย', 'rider2', '12345', 'dRsGuVpTQEdyrStRJq_Mn3:APA91bHy6du5r80b46bAoQWRbMmxPaXn93wfn_x88yBvXQ9GS6yTAjtkx-7dJ5gIrVs6lJ56QXbjhpbR9azxqW9Z9-tDUP-DD7kUL45E6V7OdqRKEeLK7uZmSWKKQGOXpK8_DgIyhYOR', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `foodMenu`
--
ALTER TABLE `foodMenu`
  ADD PRIMARY KEY (`Food_id`);

--
-- Indexes for table `infomationShop`
--
ALTER TABLE `infomationShop`
  ADD PRIMARY KEY (`Shop_id`);

--
-- Indexes for table `orderTABLE`
--
ALTER TABLE `orderTABLE`
  ADD PRIMARY KEY (`Order_id`);

--
-- Indexes for table `userTABLE`
--
ALTER TABLE `userTABLE`
  ADD PRIMARY KEY (`User_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
