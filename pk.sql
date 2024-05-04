-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 04, 2024 at 06:34 PM
-- Server version: 8.0.30
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pk`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities_pages`
--

CREATE TABLE `activities_pages` (
  `id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `index` int DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activities_pages`
--

INSERT INTO `activities_pages` (`id`, `title`, `content`, `createdAt`, `updatedAt`, `index`, `status`) VALUES
(1, 'জননিরাপত্তা ও শৃংখলা ', '', '2023-08-29 11:39:00.377', '2023-10-03 07:11:43.118', 1, NULL),
(2, 'অপরাধ তদন্ত', '', '2023-08-29 11:47:20.636', '2023-10-03 07:10:26.983', 2, NULL),
(3, 'কমিউনিটি পুলিশিং', '', '2023-08-29 11:47:40.021', '2023-10-03 07:10:38.367', 3, NULL),
(5, 'ওপেন হাউজ ডে ', '', '2024-04-28 08:30:39.150', '2024-04-28 08:34:31.944', 5, NULL),
(6, 'অপরাধ সভা', '', '2024-04-28 08:34:21.869', '2024-04-28 08:34:21.869', 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `activities_sub_pages`
--

CREATE TABLE `activities_sub_pages` (
  `id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pageId` int NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `index` int DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activities_sub_pages`
--

INSERT INTO `activities_sub_pages` (`id`, `title`, `pageId`, `content`, `createdAt`, `updatedAt`, `index`, `status`) VALUES
(1, 'টহল', 1, '', '2023-08-29 11:45:44.539', '2023-10-03 07:13:34.416', 1, NULL),
(4, 'ভিআইপি ডিউটি', 1, '', '2023-08-29 11:51:19.805', '2024-04-28 08:32:38.750', 4, NULL),
(5, 'চেকপোস্ট', 1, '', '2023-08-29 11:51:36.685', '2023-10-03 05:59:53.881', 5, NULL),
(9, 'মত বিনিময় সভা', 3, '', '2023-08-29 11:53:22.438', '2023-10-03 07:12:28.374', 9, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `activity_slider`
--

CREATE TABLE `activity_slider` (
  `id` int NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_slider`
--

INSERT INTO `activity_slider` (`id`, `image`, `title`, `createdAt`, `updatedAt`) VALUES
(7, '1714229953805_13.jpg', 'মহাসড়কের পার্শ্বে অবৈধ স্থাপনা অপসারণ করতে হবে- হাইওয়ে পুলিশ প্রধান', '2024-04-27 14:59:13.813', '2024-04-27 14:59:13.813'),
(8, '1714230025015_17.jpg', 'ঢাকা-টাঙ্গাইল মহাসড়কের গুরুত্বপূর্ণ স্থানসমূহ পরিদর্শন করেছেন- হাইওয়ে পুলিশ প্রধান ', '2024-04-27 15:00:25.022', '2024-04-27 15:00:25.022');

-- --------------------------------------------------------

--
-- Table structure for table `administration_pages`
--

CREATE TABLE `administration_pages` (
  `id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `index` int DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `administration_pages`
--

INSERT INTO `administration_pages` (`id`, `title`, `content`, `createdAt`, `updatedAt`, `index`, `status`) VALUES
(2, 'অতিরিক্ত আইজিপির জীবন বৃত্তান্ত', '<p><br></p>', '2023-08-27 09:33:20.339', '2024-04-28 08:06:50.315', 1, NULL),
(13, 'অতিরিক্ত আইজিপি’র বার্তা', '', '2024-04-27 09:35:53.978', '2024-04-28 08:07:20.758', 2, NULL),
(15, 'ডিআইজি ( প্রশাসন )', '', '2024-04-27 09:38:09.882', '2024-04-27 09:38:09.882', 4, NULL),
(16, 'ডিআইজি (উত্তর বিভাগ)', '', '2024-04-27 09:38:23.520', '2024-04-27 09:38:23.520', 5, NULL),
(17, 'ডিআইজি (পশ্চিম বিভাগ)', '', '2024-04-27 09:38:37.190', '2024-04-27 09:38:37.190', 6, NULL),
(18, 'ডিআইজি (দক্ষিণ বিভাগ)', '', '2024-04-27 09:39:08.984', '2024-04-27 09:39:55.061', 7, NULL),
(19, 'ডিআইজি (পূর্ব বিভাগ)', '', '2024-04-27 09:40:05.311', '2024-04-27 09:40:05.311', 8, NULL),
(20, 'অতিরিক্ত ডিআইজি (প্রশাসন)', '', '2024-04-27 09:40:21.950', '2024-04-27 09:40:21.950', 9, NULL),
(21, 'অতিরিক্ত ডিআইজি (এইচ আর অ্যান্ড মিডিয়া)', '', '2024-04-27 09:40:37.450', '2024-04-28 08:08:43.082', 10, NULL),
(22, 'অতিরিক্ত ডিআইজি (ফিন্যান্স অ্যান্ড ডেভেলপমেন্ট)', '', '2024-04-27 09:40:52.035', '2024-04-28 08:10:37.978', 11, NULL),
(23, 'অতিরিক্ত ডিআইজি ইন্টিলিজেন্টস, রিসার্চ অ্যান্ড প্লানিং)', '', '2024-04-27 09:41:05.901', '2024-04-28 08:15:10.284', 12, NULL),
(24, 'অতিরিক্ত ডিআইজি (অপারেশনস্ অ্যান্ড ট্রাফিক ম্যানেজমেন্ট)', '', '2024-04-27 09:41:44.470', '2024-04-28 08:16:52.506', 13, NULL),
(25, 'পুলিশ সুপার( প্রশাসন)', '', '2024-04-27 09:42:43.062', '2024-04-27 09:42:43.062', 14, NULL),
(26, 'অতিরিক্ত পুলিশ সুপার (অপারেশনস্ অ্যান্ড স্পেশাল অ্যাফেয়ার্স)', '', '2024-04-27 09:43:19.431', '2024-04-28 08:20:44.312', 15, NULL),
(27, 'সহকারী  পুলিশ সুপার (স্টাফ অফিসার টু অতিরিক্ত আইজি)', '', '2024-04-27 09:43:51.929', '2024-04-28 08:18:00.047', 15, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `administration_sub_pages`
--

CREATE TABLE `administration_sub_pages` (
  `id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pageId` int NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `index` int DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bitnews`
--

CREATE TABLE `bitnews` (
  `id` int NOT NULL,
  `officerId` int NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `index` int DEFAULT NULL,
  `latitude` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bit_officers`
--

CREATE TABLE `bit_officers` (
  `id` int NOT NULL,
  `thanaId` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `index` int DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bit_officers`
--

INSERT INTO `bit_officers` (`id`, `thanaId`, `name`, `email`, `image`, `fax`, `address`, `current_address`, `location`, `mobile`, `phone`, `designation`, `createdAt`, `updatedAt`, `index`, `status`) VALUES
(6, 2, 'মোঃ রফিকুল ইসলাম', 'ada@gmail.com', '1693733832406_DomDaines.png', 'fdhdfghdfg', 'রশিদাবাদ ইউনিয়ন', 'রশিদাবাদ ', '', '০১৩২০-০৯৫৩৯৯', '000', 'এসআই(নিঃ)', '2023-09-03 05:23:05.523', '2023-10-09 12:25:19.229', NULL, NULL),
(9, 2, 'মোঃ রোকনুজ্জামান', '', NULL, '', 'লতিবাবাদ ইউনিয়ন', 'লতিবাবাদ', '', '০১৩২০-০৯৫৪০০', '', 'এসআই(নিঃ)', '2023-09-03 05:50:33.581', '2023-09-03 06:26:10.424', NULL, NULL),
(10, 4, 'তহুরা আক্তার', '', NULL, '', '১, ২ ও ৩নং ওয়ার্ড', 'পৌরসভা', '', '০১৩২০-০৯৫৪২৫', '', 'এসআই(নিঃ)', '2023-09-03 06:27:17.452', '2023-09-03 06:27:17.452', NULL, NULL),
(11, 4, 'মোঃ আসাদুজ্জামান', '', NULL, '', '৪, ৫ ও ৬নং ওয়ার্ড', 'পৌরসভা', '', '০১৩২০-০৯৫৪২৬', '', 'এসআই(নিঃ)', '2023-09-03 06:28:15.852', '2023-09-03 06:28:15.852', NULL, NULL),
(12, 8, 'মোজাম্মেল হক', '', NULL, '', 'বনগ্রাম ইউনিয়ন', 'বনগ্রাম', '', '০১৩২০-০৯৫৫৩০', '', 'এসআই(নিঃ)', '2023-09-03 06:29:21.310', '2023-09-03 06:29:21.310', NULL, NULL),
(13, 8, 'মোঃ আব্দুর রাজ্জাক', '', NULL, '', 'সহশ্রাম ধুলদিয়া ইউনিয়ন', 'সহশ্রাম ধুলদিয়া', '', '০১৩২০-০৯৫৫৩১', '', 'এসআই(নিঃ)', '2023-09-03 06:30:15.331', '2023-09-03 06:30:15.331', NULL, NULL),
(14, 5, 'মোঃ ইকবাল হোসেন', '', NULL, '', 'সিংপুর ইউনিয়ন', 'সিংপুর', '', '	০১৩২০-০৯৫৬৮৩', '', 'এসআই(নিঃ)', '2023-09-03 06:31:53.196', '2023-09-03 06:31:53.196', NULL, NULL),
(15, 5, 'মোঃ হাফিজুর রহমান', '', NULL, '', 'দামপাড়া ইউনিয়ন', 'দামপাড়া', '', '০১৩২০-০৯৫৬৮৪', '', 'এসআই(নিঃ)', '2023-09-03 06:32:40.236', '2023-09-03 06:32:40.236', NULL, NULL),
(29, 4, 'test service 2', 'admin@itify.tech', NULL, '০৯৪১ - ৬১৭৬৩', 'dfgdfg', 'sdfdsf', '', '01705541563', '01705541563', 'sdfsa', '2023-10-09 11:10:27.165', '2023-10-09 11:10:27.165', NULL, NULL),
(30, 4, 'Test', 'admin@itify.tech', '1698673935601_download.jpg', '', 'Karimganj', 'Karimganj thana', '', '01705541566', '01705541566', 'এসআই(নিঃ)', '2023-10-30 13:52:15.604', '2023-10-30 13:52:15.604', NULL, NULL),
(31, 2, 'User', '', '1698674774574_download.jpg', '', 'Kishoreganj', 'Kishoreganj Sadar', 'https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d29219.219512969736!2d90.4019254!3d23.733024299999997!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1710225911649!5m2!1sen!2', '01705541567', '01705541567', 'এসআই(নিঃ)', '2023-10-30 14:06:14.577', '2024-03-12 06:48:07.085', NULL, NULL),
(32, 2, 'fdggdg', 'faridpurzp@gmail.com', NULL, '', 'shgjhghjghg', 'RTTTYY', '', '01705541568', '01705541568', 'SI', '2023-11-09 06:29:49.568', '2023-11-09 06:29:49.568', NULL, NULL),
(33, 3, 'kawser ali', 'kawser@gmail.com', '1710225719217_closeup-textural-bright-exotic-flowers-generative-al (1).jpg', '', 'Dhaka', 'asfasfag', 'https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d29219.219512969736!2d90.4019254!3d23.733024299999997!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1710225911649!5m2!1sen!2', '01872788594', '01872788594', 'SI', '2024-03-10 12:51:52.836', '2024-03-12 06:47:21.433', NULL, NULL),
(34, 3, 'Hilel Dixon', 'ruriluvyc@mailinator.com', NULL, '+1 (238) 847-8525', 'Ad inventore rerum a', 'Aliquid voluptas cup', 'Incidunt sit volupt', '22222222222', '22222222222', 'Dolor velit id alias', '2024-03-18 11:33:31.192', '2024-03-19 10:06:24.973', NULL, NULL),
(35, 15, 'Mannix Weeks', 'hikis@mailinator.com', NULL, '+1 (978) 185-4429', 'Deleniti elit sint ', 'Irure commodi eiusmo', 'Voluptatibus praesen', '22222222222', '22222222222', 'Facere itaque irure ', '2024-03-19 10:07:01.735', '2024-03-19 10:07:01.735', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bit_police_pages`
--

CREATE TABLE `bit_police_pages` (
  `id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `index` int DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bit_police_pages`
--

INSERT INTO `bit_police_pages` (`id`, `title`, `content`, `createdAt`, `updatedAt`, `index`, `status`) VALUES
(2, 'বিট পরিচিতি ', '<p><u></u><br></p>', '2023-09-02 06:31:11.262', '2023-10-03 06:14:36.376', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bottom_news`
--

CREATE TABLE `bottom_news` (
  `id` int NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bottom_news`
--

INSERT INTO `bottom_news` (`id`, `date`, `description`, `link`) VALUES
(4, '2023-08-16', 'অ্যাপ ডাউনলোড করুন। করোনার লক্ষণ দেখা দিলে গোপন না করে ডাক্তারের পরামর্শের জন্য ফ্রি কল করুন ৩৩৩ ও ১৬২৬৩ নম্বরে। করোনাভাইরাস প্রতিরোধে নিয়ম মেনে মাস্ক ব্যবহার করুন। আতঙ্কিত না হয়ে বরং সচেতন থাকুন। ভিজিট করুন', 'https://bit.ly/coronatracerbd'),
(5, '2023-08-16', 'নিজে সুরক্ষিত থাকুন অন্যকেও নিরাপদ রাখুন। দেশের প্রথম ক্রাউডফান্ডিং প্ল্যাটফর্ম \'একদেশ\'- এর মাধ্যমে আর্থিক অনুদান পৌঁছে দিন নির্বাচিত সরকারি-বেসরকারি প্রতিষ্ঠানসমূহে। ভিজিট করুন ', 'https://bit.ly/coronatracerbd'),
(6, '2023-08-16', 'নো মাস্ক নো সার্ভিস। করোনাভাইরাসের বিস্তার রোধে এখনই ডাউনলোড করুন Corona Tracer BD অ্যাপ। ডাউনলোড করতে ক্লিক করুন', 'https://bit.ly/coronatracerbd');

-- --------------------------------------------------------

--
-- Table structure for table `button_links`
--

CREATE TABLE `button_links` (
  `id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `button_links`
--

INSERT INTO `button_links` (`id`, `title`, `link`, `createdAt`, `updatedAt`) VALUES
(2, 'PHQ', 'https://www.police.gov.bd/', '2023-11-02 13:11:13.452', '2024-04-27 11:47:54.373'),
(3, 'RAB', 'https://www.rab.gov.bd/', '2023-11-02 13:17:56.106', '2024-04-27 11:48:41.549'),
(4, 'DMP', 'www.dmp.gov.bd', '2024-04-27 11:49:04.787', '2024-04-27 11:49:04.787'),
(5, 'CMP', '#', '2024-04-27 11:49:19.844', '2024-04-27 11:49:19.844'),
(6, 'RMP', '#', '2024-04-27 11:49:28.771', '2024-04-27 11:49:28.771'),
(7, 'KMP', '#', '2024-04-27 11:49:40.816', '2024-04-27 11:49:40.816'),
(8, 'BMP', '#', '2024-04-27 11:49:54.035', '2024-04-27 11:49:54.035'),
(9, 'RPMP', '#', '2024-04-27 11:50:07.276', '2024-04-27 11:50:07.276'),
(10, 'GMP', '#', '2024-04-27 11:50:18.654', '2024-04-27 11:50:18.654'),
(11, 'PBI', '#', '2024-04-27 11:50:32.122', '2024-04-27 11:50:32.122'),
(12, 'CID', '#', '2024-04-27 11:50:41.232', '2024-04-27 11:50:41.232'),
(13, 'IP', '#', '2024-04-27 11:50:53.418', '2024-04-27 11:50:53.418');

-- --------------------------------------------------------

--
-- Table structure for table `contact_address`
--

CREATE TABLE `contact_address` (
  `id` int NOT NULL,
  `office` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map` longtext COLLATE utf8mb4_unicode_ci,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_address`
--

INSERT INTO `contact_address` (`id`, `office`, `phone`, `fax`, `email`, `map`, `mobile`, `createdAt`, `updatedAt`) VALUES
(1, 'হাইওয়ে পুলিশ হেডকোয়ার্টার্স, ঢাকা ।', '+০২-৫৮৯৫৭৯১১', '+৮৮ ০২-৫৮৯৫২৮২৩', 'addlighp@police.gov.bd', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d116755.64071723873!2d90.33414455820309!3d23.867844899999998!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c42f947450ed%3A0x4087a6470a95e528!2sHighway%20Police%20Headquaters!5e0!3m2!1sen!2sbd!4v1572892793398!5m2!1sen!2sbd', '+৮৮০১৭৬৯৬৯০২৯৬ +৮৮০১৭৬৯৬৯০২৯৭, +৮৮০১৭১৩৩৭৩০৯৮', '2023-11-08 07:24:17.349', '2024-04-27 07:21:24.458');

-- --------------------------------------------------------

--
-- Table structure for table `contact_person`
--

CREATE TABLE `contact_person` (
  `id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `index` int DEFAULT NULL,
  `others` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_person`
--

INSERT INTO `contact_person` (`id`, `name`, `email`, `index`, `others`, `createdAt`, `updatedAt`) VALUES
(1, 'Addl.IGP', 'addlighp@police.gov.bd', 1, NULL, '2023-11-08 09:10:04.683', '2024-04-30 15:30:26.233'),
(3, 'DIG ( Admin )', 'digadminhp@police.gov.bd', 2, NULL, '2023-11-08 09:23:30.341', '2024-04-30 15:32:47.289');

-- --------------------------------------------------------

--
-- Table structure for table `crime_mangement`
--

CREATE TABLE `crime_mangement` (
  `id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `index` int DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crime_mangement`
--

INSERT INTO `crime_mangement` (`id`, `title`, `content`, `createdAt`, `updatedAt`, `index`, `status`) VALUES
(1, 'মাসিক কার্যক্রম পরিসংখ্যান ', '<p><br></p>', '2023-09-04 04:30:07.290', '2024-04-28 08:38:30.512', 1, NULL),
(2, 'বাৎসরিক কার্যক্রম পরিসংখ্যান', '', '2023-09-04 04:42:29.313', '2024-04-28 08:38:42.724', 3, NULL),
(3, 'ত্রৈমাসিক কার্যক্রম র্পরিসংখ্যান', '', '2023-09-04 04:42:41.570', '2024-04-28 08:37:35.306', 2, NULL),
(6, 'উল্লেখযোগ্য অর্জন', '', '2024-04-28 08:41:14.791', '2024-04-28 08:41:14.791', 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dig`
--

CREATE TABLE `dig` (
  `id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dig`
--

INSERT INTO `dig` (`id`, `name`, `designation`, `image`, `content`, `createdAt`, `updatedAt`) VALUES
(4, 'পুলিশ হেডকোয়ার্টার্স ', 'https://www.police.gov.bd/', '1698928187097_Logo.png', '#DFF0F9', '2023-09-04 09:40:12.448', '2024-04-27 07:24:07.700');

-- --------------------------------------------------------

--
-- Table structure for table `directoris`
--

CREATE TABLE `directoris` (
  `id` int NOT NULL,
  `categoryId` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `index` int DEFAULT NULL,
  `subCategoryId` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `directoris`
--

INSERT INTO `directoris` (`id`, `categoryId`, `name`, `email`, `image`, `fax`, `mobile`, `phone`, `designation`, `createdAt`, `updatedAt`, `index`, `subCategoryId`) VALUES
(10, 2, 'Md Shahabuddin Khan, bpm(bar)', 'addlighp@police.gov.bd', '1714221393793_addligp.gif', '+880 2 58952823', '01320182100', '+880 2 58957139 (Off)', 'Addl IGP', '2023-10-30 13:41:15.033', '2024-04-27 13:09:21.504', 1, 11),
(13, 2, 'ডিআইজি (প্রশাসন)', 'digadminhp@police.gov.bd', '1714223590138_demo101.jpg', '০২-৫৮৯৫৭১৩৯', '+৮৮০১৩২০-১৮২১০৩', '০২-৫৮৯৫৭১৩৯', 'ডিআইজি (প্রশাসন)', '2024-04-27 13:13:10.143', '2024-04-27 13:13:10.143', 2, 11),
(14, 2, 'ডিআইজি (উত্তর বিভাগ)', 'dignorthhp@police.gov.bd', '1714223696035_demo101.jpg', '+৮৮০১৩২০-১৮২১০৫', '+৮৮০১৩২০-১৮২১০৫', '+৮৮০১৩২০-১৮২১০৫', 'ডিআইজি (উত্তর বিভাগ)', '2024-04-27 13:14:56.047', '2024-04-27 13:14:56.047', 3, 11),
(15, 2, 'ডিআইজি (দক্ষিণ বিভাগ)', 'digsouthhp@police.gov.bd', '1714223782268_demo101.jpg', '+৮৮০১৩২০-১৮২১১৩', '+৮৮০১৩২০-১৮২১১৩', '+৮৮০১৩২০-১৮২১১৩', 'ডিআইজি (দক্ষিণ বিভাগ)', '2024-04-27 13:16:22.280', '2024-04-27 13:16:22.280', 4, 11),
(16, 2, 'ডিআইজি (পূর্ব বিভাগ)', 'digeasthp@police.gov.bd', '1714223910504_demo101.jpg', '+৮৮০১৩২০-১৮২১০৭', '+৮৮০১৩২০-১৮২১০৭', '+৮৮০১৩২০-১৮২১০৭', 'ডিআইজি (পূর্ব বিভাগ)', '2024-04-27 13:18:30.510', '2024-04-27 13:18:30.510', 5, 11),
(17, 2, 'ডিআইজি (পশ্চিম বিভাগ)', 'digwesthp@police.gov.bd', '1714224004371_demo101.jpg', '', '+৮৮০১৩২০-১৮২১০৮', '+৮৮০১৩২০-১৮২১০৮', 'ডিআইজি (পশ্চিম বিভাগ)', '2024-04-27 13:20:04.381', '2024-04-27 13:20:04.381', 6, 11),
(18, 10, 'test', 'spboguraregionhp@police.gov.bd', '1714224735621_demo101.jpg', '', '+৮৮০১৩২০-১৮২১০৮', '+৮৮০১৩২০-১৮২১০৮', 'sp', '2024-04-27 13:32:15.630', '2024-04-27 13:32:15.630', 7, 12);

-- --------------------------------------------------------

--
-- Table structure for table `directory_categories`
--

CREATE TABLE `directory_categories` (
  `id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `index` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `directory_categories`
--

INSERT INTO `directory_categories` (`id`, `title`, `createdAt`, `updatedAt`, `index`) VALUES
(2, 'Highway Police Headquarters', '2023-09-03 11:19:43.955', '2024-04-27 12:29:54.751', NULL),
(10, 'DIG  North Division', '2024-04-27 13:21:05.600', '2024-04-27 13:21:05.600', NULL),
(11, 'DIG - South Division', '2024-04-27 13:21:31.264', '2024-04-27 13:21:31.264', NULL),
(12, 'DIG - East Division', '2024-04-27 13:21:54.974', '2024-04-27 13:21:54.974', NULL),
(13, 'DIG - West Division', '2024-04-27 13:22:08.028', '2024-04-27 13:22:08.028', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `directory_sub_categories`
--

CREATE TABLE `directory_sub_categories` (
  `id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `index` int DEFAULT NULL,
  `categoryId` int NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `directory_sub_categories`
--

INSERT INTO `directory_sub_categories` (`id`, `title`, `index`, `categoryId`, `createdAt`, `updatedAt`) VALUES
(11, 'Highway Police Headquarters', NULL, 2, '2024-04-27 13:09:08.935', '2024-04-27 13:09:08.935'),
(12, 'Gazipur Region', NULL, 10, '2024-04-27 13:23:15.846', '2024-04-27 13:23:15.846'),
(13, 'Mymensingh Region', NULL, 10, '2024-04-27 13:23:29.199', '2024-04-27 13:23:29.199'),
(14, 'Bogura Region', NULL, 13, '2024-04-27 13:23:59.226', '2024-04-27 13:23:59.226'),
(15, 'Rangpur Region', NULL, 13, '2024-04-27 13:24:17.745', '2024-04-27 13:24:17.745'),
(16, 'Madaripur Region', NULL, 11, '2024-04-27 13:29:33.322', '2024-04-27 13:29:33.322'),
(17, 'Khulna Region', NULL, 11, '2024-04-27 13:29:58.165', '2024-04-27 13:29:58.165');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `mobile`, `designation`, `phone`, `image`, `createdAt`, `updatedAt`) VALUES
(3, 'মোঃ আব্দুর রাজ্জাক', '০১৩২০-০৯৫৩৯৯', 'এসআই(নিঃ)', '', '1693301879324_dawod_img.gif', '2023-08-29 09:37:59.327', '2023-09-07 06:46:35.771');

-- --------------------------------------------------------

--
-- Table structure for table `exsp`
--

CREATE TABLE `exsp` (
  `id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `designationId` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ex_police_super`
--

CREATE TABLE `ex_police_super` (
  `id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ex_police_super`
--

INSERT INTO `ex_police_super` (`id`, `name`, `image`, `title`, `from_date`, `to_date`, `createdAt`, `updatedAt`) VALUES
(2, 'Mallick Faqrul Islam,', '1714232808338_hwp-1-981x1024.jpeg', 'bpm, ppm ', '2020-05-20', '2023-02-19', '2023-10-12 05:23:27.848', '2024-04-27 15:46:48.347'),
(3, 'Barrister Mahbubur Rahman,', '1714232881681_addl_igp_profile.jpg', 'bpm,ppm', '2019-06-17', '2020-05-05', '2023-11-11 07:26:49.770', '2024-04-27 15:48:01.687'),
(4, 'Mr. Md. Atiqul Islam, ', '1714233140548_demo101.jpg', 'BPM(Bar) PPM (Bar)', '2016-11-06', '2019-07-02', '2024-04-27 15:52:20.562', '2024-04-27 15:52:20.562'),
(5, 'Mr. Mallik Faqrul Islam, ', '1714233212447_demo101.jpg', 'bpm, ppm', '2015-01-18', '2010-10-31', '2024-04-27 15:53:32.453', '2024-04-27 15:53:32.453');

-- --------------------------------------------------------

--
-- Table structure for table `ex_unit_force`
--

CREATE TABLE `ex_unit_force` (
  `id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unitId` int NOT NULL,
  `sub_unitId` int DEFAULT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `footer_branding`
--

CREATE TABLE `footer_branding` (
  `id` int NOT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `company_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footer_branding`
--

INSERT INTO `footer_branding` (`id`, `company`, `facebook`, `youtube`, `whatsapp`, `createdAt`, `updatedAt`, `company_link`) VALUES
(1, 'এফএলআইটি : 01872788592 /  ০১৭২৯৭২৪২৩২', '#', '#', '#', '2023-09-25 06:21:15.694', '2023-09-25 09:04:50.112', '#');

-- --------------------------------------------------------

--
-- Table structure for table `footer_data`
--

CREATE TABLE `footer_data` (
  `id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `headingId` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footer_data`
--

INSERT INTO `footer_data` (`id`, `title`, `link`, `createdAt`, `updatedAt`, `headingId`) VALUES
(2, 'ভৌগলিক পরিচিতি ', 'http://localhost:5173/zilla-police-page-details/3', '2023-08-21 05:08:50.764', '2024-04-27 11:29:21.376', 3),
(3, 'হাইওয়ে পুলিশের ইতিহাস', 'http://localhost:5173/zilla-police-page-details/4', '2023-08-21 05:09:01.465', '2024-04-27 15:37:10.418', 3),
(4, 'আমাদের লক্ষ্য ও উদ্দেশ্য', 'http://localhost:5173/zilla-police-page-details/6', '2023-08-21 05:09:14.264', '2024-04-27 15:37:43.846', 3),
(5, 'সাংগঠনিক কাঠামো', 'http://localhost:5173/zilla-police-page-details/7', '2023-08-21 05:09:29.576', '2024-04-27 15:38:04.943', 3),
(6, 'কর্মকর্তাগ্ণ', '#', '2023-08-21 05:09:45.949', '2024-04-27 11:35:26.425', 3),
(7, 'কর্মচারীবৃন্দ', '#', '2023-08-21 05:10:01.486', '2024-04-27 11:36:42.896', 3),
(8, 'এক নজরে হাইওয়ে পুলিশ', 'http://localhost:5173/zilla-police-page-details/9', '2023-08-21 05:11:23.852', '2024-04-27 15:40:35.676', 3),
(9, 'এরিয়া অব হাইওয়ে পুলিশ', '#', '2023-08-21 05:11:33.084', '2024-04-28 08:49:54.608', 3),
(10, 'নাগরিক সেবা', '#', '2023-08-21 05:11:56.356', '2024-04-27 11:39:14.239', 4),
(15, 'মাসিক কার্যক্রম পরিসংখ্যান', '#', '2023-08-21 05:15:01.888', '2024-04-28 08:50:47.523', 5),
(20, 'উৎঘাটিত গুরুত্বপূর্ন মামলা সমূহ', '#', '2023-08-21 05:19:22.603', '2023-08-21 05:19:22.603', 6),
(21, 'উদ্ধার', '#', '2023-08-21 05:19:34.092', '2023-08-21 05:19:34.092', 6),
(22, 'গ্রেফতার', '#', '2023-08-21 05:19:46.678', '2023-08-21 05:19:46.678', 6),
(25, 'ত্রৈমাসিক কার্যক্রম র্পরিসংখ্যান', '#', '2024-04-28 08:54:11.122', '2024-04-28 08:54:11.122', 5),
(26, 'বাৎসরিক কার্যক্রম পরিসংখ্যান', '#', '2024-04-28 08:55:45.849', '2024-04-28 08:55:45.849', 5);

-- --------------------------------------------------------

--
-- Table structure for table `footer_heading`
--

CREATE TABLE `footer_heading` (
  `id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footer_heading`
--

INSERT INTO `footer_heading` (`id`, `title`, `createdAt`, `updatedAt`) VALUES
(3, 'আমাদের সর্ম্পকে', '2023-08-21 05:06:19.069', '2023-08-21 05:06:19.069'),
(4, 'সেবা', '2023-08-21 05:06:30.693', '2023-08-21 05:06:30.693'),
(5, 'অপরাধ ব্যাবস্থাপনা', '2023-08-21 05:06:58.397', '2023-08-21 05:06:58.397'),
(6, 'উল্লেখযোগ্য অর্জন', '2023-08-21 05:07:12.805', '2023-08-21 05:07:12.805');

-- --------------------------------------------------------

--
-- Table structure for table `image_gallery`
--

CREATE TABLE `image_gallery` (
  `id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mainImage` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `multipleImages` text COLLATE utf8mb4_unicode_ci,
  `imageCategoryId` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image_gallery`
--

INSERT INTO `image_gallery` (`id`, `title`, `mainImage`, `createdAt`, `updatedAt`, `multipleImages`, `imageCategoryId`) VALUES
(4, 'Independent day 2024', '1714235434965_9.jpg', '2024-03-18 11:44:03.377', '2024-04-27 16:30:35.018', '1714235434968_3.jpg,1714235434990_4.jpg,', 7),
(5, 'May 2023', '1714235556575_16.jpg', '2024-03-18 11:46:39.222', '2024-04-27 16:32:36.643', '1714235556582_3.jpg,1714235556605_4.jpg,1714235556619_5.jpg,', 8);

-- --------------------------------------------------------

--
-- Table structure for table `image_gallery_category`
--

CREATE TABLE `image_gallery_category` (
  `id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image_gallery_category`
--

INSERT INTO `image_gallery_category` (`id`, `title`, `image`, `createdAt`, `updatedAt`) VALUES
(3, 'Photo Galler 101', '1714228408307_1.jpg', '2024-03-18 11:39:48.824', '2024-04-27 16:25:52.687'),
(4, 'অতিরিক্ত আইজিপি', '1714228418315_2.jpg', '2024-03-18 11:40:19.633', '2024-04-27 16:26:44.975'),
(5, 'Soth zone', '1714228439384_4.jpg', '2024-03-18 11:40:58.853', '2024-04-27 16:26:29.292'),
(6, 'Gallery 102', '1714228460676_3.jpg', '2024-03-18 11:41:33.942', '2024-04-27 16:27:10.787'),
(7, 'Gallery 103', '1714228473017_5.jpg', '2024-03-18 11:42:07.325', '2024-04-27 16:27:22.196'),
(8, 'Gallery 104', '1714228484720_6.jpg', '2024-03-18 11:42:24.138', '2024-04-27 16:27:35.003'),
(9, 'Gallery 105', '1714228542485_7.jpg', '2024-03-18 11:42:58.457', '2024-04-27 16:27:44.522'),
(10, 'Gallery 106', '1714228560756_8.jpg', '2024-04-27 14:36:00.762', '2024-04-27 16:27:56.731'),
(11, 'Gallery 107', '1714229077146_9.jpg', '2024-04-27 14:44:37.160', '2024-04-27 16:28:07.208');

-- --------------------------------------------------------

--
-- Table structure for table `important_data`
--

CREATE TABLE `important_data` (
  `id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `headingId` int NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `important_data`
--

INSERT INTO `important_data` (`id`, `title`, `link`, `headingId`, `createdAt`, `updatedAt`) VALUES
(3, 'রাষ্ট্রপতির কার্যালয় ', '#', 2, '2024-03-10 13:12:36.573', '2024-04-27 14:13:26.250'),
(4, 'প্রধানমন্ত্রীর কার্যালয়', 'pm.gov.bd', 2, '2024-03-10 13:13:07.280', '2024-04-27 14:14:25.081'),
(5, 'মন্ত্রিপরিষদ বিভাগ', '#', 2, '2024-04-27 14:14:54.366', '2024-04-27 14:14:54.366'),
(6, 'জনপ্রশাসন মন্ত্রণালয়', '#', 2, '2024-04-27 14:15:11.593', '2024-04-27 14:15:11.593'),
(7, 'জননিরাপত্তা বিভাগ', '#', 2, '2024-04-27 14:15:34.457', '2024-04-27 14:15:34.457'),
(8, 'সুরক্ষা সেবা বিভাগ', '#', 2, '2024-04-27 14:15:52.354', '2024-04-27 14:15:52.354'),
(9, 'ইনোভেশন টিম', 'http://www.mhapsd.gov.bd/site/view/innovation/Innovation%20Team', 3, '2024-04-27 14:19:35.387', '2024-04-27 14:19:35.387'),
(10, 'তথ্য বাতায়ন হালনাগাদ সংক্রান্ত ত্রৈমাসিক প্রতিবেদন', 'http://www.mhapsd.gov.bd/site/view/innovation/Quarterly%20Report%20on%20Web%20Portal', 3, '2024-04-27 14:19:57.230', '2024-04-27 14:20:12.626'),
(11, 'সেবা সহজিকরণ', 'http://www.mhapsd.gov.bd/site/view/innovation/Service%20Process%20Simplification', 3, '2024-04-27 14:20:39.067', '2024-04-27 14:20:39.067'),
(12, 'ইনোভেশন কর্মপরিকল্পনা', 'http://www.mhapsd.gov.bd/site/view/innovation/Innovation%20Workplan', 3, '2024-04-27 14:21:08.413', '2024-04-27 14:21:08.413'),
(13, 'উদ্ভাবনী উদ্যোগ/ধারণা', 'http://www.mhapsd.gov.bd/site/view/innovation/Innovative%20Ideas', 3, '2024-04-27 14:21:28.085', '2024-04-27 14:21:28.085');

-- --------------------------------------------------------

--
-- Table structure for table `important_heading`
--

CREATE TABLE `important_heading` (
  `id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `important_heading`
--

INSERT INTO `important_heading` (`id`, `title`, `createdAt`, `updatedAt`) VALUES
(2, 'গুরুত্বপূর্ণ লিংকসমূহ ', '2024-03-10 13:08:52.827', '2024-04-27 14:18:55.360'),
(3, 'ইনোভেশন কর্নার ', '2024-04-27 14:18:34.646', '2024-04-27 14:18:34.646');

-- --------------------------------------------------------

--
-- Table structure for table `important_links`
--

CREATE TABLE `important_links` (
  `id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `important_links`
--

INSERT INTO `important_links` (`id`, `title`, `link`, `createdAt`, `updatedAt`) VALUES
(2, 'xdfgvdfg', 'dfgdsg', '2023-11-02 11:06:31.985', '2023-11-02 11:06:31.985');

-- --------------------------------------------------------

--
-- Table structure for table `latest_news`
--

CREATE TABLE `latest_news` (
  `id` int NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `latest_news`
--

INSERT INTO `latest_news` (`id`, `content`, `createdAt`, `file`, `title`, `updatedAt`) VALUES
(15, '<p><a class=\"notice__tenders__link\" rel=\"bookmark\" title=\"নিলাম দর-বিজ্ঞপ্তি, স্মারক নং- হাঃপুঃহেঃকোঃ/৯৬৫৬/১(১৭)\" href=\"http://localhost:5173/notice-board-details/45\">নিলাম দর-বিজ্ঞপ্তি, স্মারক নং- হাঃপুঃহেঃকোঃ/৯৬৫৬/১(১৭)</a></p>', '2024-04-27 10:45:37.146', '1714214737142_1.png', 'নিলাম দর-বিজ্ঞপ্তি, স্মারক নং- হাঃপুঃহেঃকোঃ/৯৬৫৬/১(১৭)', '2024-04-27 10:45:37.146'),
(16, '', '2024-04-27 10:45:56.135', '1714214756132_2.png', 'উন্মুক্ত দরপত্র বিজ্ঞপ্তি স্মারক নং হাঃ পুঃ হেঃ কোঃ/১০১১৭(১৯)', '2024-04-27 10:45:56.135'),
(17, '<p><br></p>', '2024-04-27 13:45:19.015', '1714225519003_demo101.jpg', 'test 1001', '2024-04-27 13:45:19.015'),
(18, '', '2024-04-27 16:13:03.196', NULL, 'Job Circular', '2024-04-27 16:13:03.196'),
(19, '<p><br></p>', '2024-04-27 16:13:37.598', NULL, 'দরপত্র বিজ্ঞপ্তি স্মারক নং- হাঃপুঃহেঃকোঃ/৭৬৪৪', '2024-04-27 16:13:37.598'),
(20, '<p><a href=\"https://www.highwaypolice.gov.bd/2023/11/%e0%a6%a8%e0%a6%bf%e0%a6%b2%e0%a6%be%e0%a6%ae-%e0%a6%a6%e0%a6%b0-%e0%a6%ac%e0%a6%bf%e0%a6%9c%e0%a7%8d%e0%a6%9e%e0%a6%aa%e0%a7%8d%e0%a6%a4%e0%a6%bf-%e0%a6%a4%e0%a6%be%e0%a6%b0%e0%a6%bf%e0%a6%96/\" target=\"_blank\">নিলাম দর-বিজ্ঞপ্তি, স্মারক নং- হাঃপুঃহেঃকোঃ/৯৬৫৬/১(১৭)</a></p>', '2024-04-27 16:14:08.226', NULL, 'নিলাম দর-বিজ্ঞপ্তি, স্মারক নং- হাঃপুঃহেঃকোঃ/৯৬৫৬/১(১৭)', '2024-04-27 16:14:08.226'),
(21, '<p><a href=\"https://www.highwaypolice.gov.bd/2023/12/%e0%a6%89%e0%a6%a8%e0%a7%8d%e0%a6%ae%e0%a7%81%e0%a6%95%e0%a7%8d%e0%a6%a4-%e0%a6%a6%e0%a6%b0%e0%a6%aa%e0%a6%a4%e0%a7%8d%e0%a6%b0-%e0%a6%ac%e0%a6%bf%e0%a6%9c%e0%a7%8d%e0%a6%9e%e0%a6%aa%e0%a7%8d%e0%a6%a4/\" target=\"_blank\">উন্মুক্ত দরপত্র বিজ্ঞপ্তি স্মারক নং হাঃ পুঃ হেঃ কোঃ/১০১১৭(১৯)</a></p>', '2024-04-27 16:14:52.135', NULL, 'উন্মুক্ত দরপত্র বিজ্ঞপ্তি স্মারক নং হাঃ পুঃ হেঃ কোঃ/১০১১৭(১৯)', '2024-04-27 16:14:52.135'),
(22, '<p>Officer Order # 101</p>', '2024-04-27 16:15:23.380', NULL, 'Officer Order # 101', '2024-04-27 16:15:23.380'),
(23, '<p>Officer Order # 102</p><p><br></p>', '2024-04-27 16:15:46.304', NULL, 'Officer Order # 102', '2024-04-27 16:15:46.304');

-- --------------------------------------------------------

--
-- Table structure for table `megamenu`
--

CREATE TABLE `megamenu` (
  `id` int NOT NULL,
  `parent_id` int DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grid_col` int DEFAULT NULL,
  `index` int DEFAULT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `megamenu`
--

INSERT INTO `megamenu` (`id`, `parent_id`, `name`, `link`, `color`, `grid_col`, `index`, `createdAt`, `updatedAt`, `content`) VALUES
(1, NULL, 'Mara Cross', 'Dolorum et non molli', '#27b48e', 2, 4, '2024-04-27 15:32:19.695', '2024-04-29 14:50:27.031', '<p>Odio sit labore illo.ahsdfhas fas d\'fasdf\'a s\'dfas\'dfa sdfa</p>'),
(2, NULL, 'Zena Church', 'Quaerat saepe magna ', '#7034ac', 3, 3, '2024-04-27 15:32:33.713', '2024-04-29 14:49:50.942', '<p>Suscipit doloremque .</p><p>ahsdfhas</p><p>fas</p><p>d\'fasdf\'a</p><p>s\'dfas\'dfa</p><p>sdfa</p><p><br></p>'),
(3, 1, 'Gary Mckay', 'Ut nihil laboriosam', '#3b8123', 19, 2, '2024-04-27 15:36:11.634', '2024-04-29 14:49:00.123', '<p>Voluptates sit earum.</p><p>&nbsp;zxfvzxvxcv z zx zx</p><p>czcvzxvz</p><p>zxcvz</p>'),
(4, 3, 'Cleo Sheppard', 'Numquam alias nihil ', '#773328', 32, 3, '2024-04-27 15:37:12.684', '2024-04-29 14:50:05.259', '<p>Nisi voluptate quo a.<br><br></p><p>ahsdfhas</p><p>fas</p><p>d\'fasdf\'a</p><p>s\'dfas\'dfa</p><p>sdfa</p>'),
(5, 1, 'Summer Britt', 'Quisquam assumenda s', '#55d28c', 41, 1, '2024-04-27 15:45:17.674', '2024-04-29 14:49:18.024', '<p>ahsdfhas</p><p>fas</p><p>d\'fasdf\'a</p><p>s\'dfas\'dfa</p><p>sdfa</p>'),
(6, 1, 'Otto Berger', 'Odit eos vero proide', '#fdb694', 31, 2, '2024-04-27 15:45:53.566', '2024-04-29 14:49:36.355', '<p>ahsdfhas fas d\'fasdf\'a s\'dfas\'dfa sdfa</p>');

-- --------------------------------------------------------

--
-- Table structure for table `news_pages`
--

CREATE TABLE `news_pages` (
  `id` int NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `index` int DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news_pages_post`
--

CREATE TABLE `news_pages_post` (
  `id` int NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pageId` int NOT NULL,
  `index` int DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news_sub_pages`
--

CREATE TABLE `news_sub_pages` (
  `id` int NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pageId` int NOT NULL,
  `index` int DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news_sub_pages_post`
--

CREATE TABLE `news_sub_pages_post` (
  `id` int NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pageId` int NOT NULL,
  `index` int DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `noticecategoryrelation`
--

CREATE TABLE `noticecategoryrelation` (
  `id` int NOT NULL,
  `noticeId` int NOT NULL,
  `categoryId` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `noticecategoryrelation`
--

INSERT INTO `noticecategoryrelation` (`id`, `noticeId`, `categoryId`) VALUES
(107, 44, 2),
(108, 44, 6),
(109, 45, 2),
(110, 45, 6),
(111, 46, 2),
(112, 46, 6),
(114, 47, 2),
(113, 47, 7),
(115, 48, 1),
(116, 48, 2),
(117, 49, 1),
(118, 49, 2),
(119, 50, 1),
(120, 50, 2),
(122, 51, 2),
(121, 51, 3),
(123, 52, 3);

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_in_news` tinyint(1) NOT NULL DEFAULT '0',
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `index` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `title`, `content`, `file`, `published_in_news`, `createdAt`, `updatedAt`, `index`) VALUES
(44, 'NOC-MD- MustafaKamal', '<p><a href=\"https://www.highwaypolice.gov.bd/2024/04/noc-md-mustafakamal/\" target=\"_blank\">NOC-MD- MustafaKamal</a></p>', '1714214639333_2.png', 0, '2024-03-18 11:26:56.926', '2024-04-27 16:11:58.295', NULL),
(45, 'NOC-SGT-Mahmudun Nabi', '<p><a href=\"https://www.highwaypolice.gov.bd/2024/04/noc-sgt-mahmudun-nabi/\" target=\"_blank\">NOC-SGT-Mahmudun Nabi</a></p>', '1714214601553_1.png', 1, '2024-04-27 10:40:36.834', '2024-04-27 16:12:07.919', NULL),
(46, 'NOC-Kamruzzaman', '<p><br></p><p><br></p>', '1714225519006_demo101.jpg', 1, '2024-04-27 13:45:19.017', '2024-04-27 16:12:27.724', NULL),
(47, 'Job Circular', '', NULL, 1, '2024-04-27 16:13:03.201', '2024-04-27 16:13:03.201', NULL),
(48, 'দরপত্র বিজ্ঞপ্তি স্মারক নং- হাঃপুঃহেঃকোঃ/৭৬৪৪', '<p><br></p>', NULL, 1, '2024-04-27 16:13:37.599', '2024-04-27 16:13:37.599', NULL),
(49, 'নিলাম দর-বিজ্ঞপ্তি, স্মারক নং- হাঃপুঃহেঃকোঃ/৯৬৫৬/১(১৭)', '<p><a href=\"https://www.highwaypolice.gov.bd/2023/11/%e0%a6%a8%e0%a6%bf%e0%a6%b2%e0%a6%be%e0%a6%ae-%e0%a6%a6%e0%a6%b0-%e0%a6%ac%e0%a6%bf%e0%a6%9c%e0%a7%8d%e0%a6%9e%e0%a6%aa%e0%a7%8d%e0%a6%a4%e0%a6%bf-%e0%a6%a4%e0%a6%be%e0%a6%b0%e0%a6%bf%e0%a6%96/\" target=\"_blank\">নিলাম দর-বিজ্ঞপ্তি, স্মারক নং- হাঃপুঃহেঃকোঃ/৯৬৫৬/১(১৭)</a></p>', NULL, 1, '2024-04-27 16:14:08.229', '2024-04-27 16:14:08.229', NULL),
(50, 'উন্মুক্ত দরপত্র বিজ্ঞপ্তি স্মারক নং হাঃ পুঃ হেঃ কোঃ/১০১১৭(১৯)', '<p><a href=\"https://www.highwaypolice.gov.bd/2023/12/%e0%a6%89%e0%a6%a8%e0%a7%8d%e0%a6%ae%e0%a7%81%e0%a6%95%e0%a7%8d%e0%a6%a4-%e0%a6%a6%e0%a6%b0%e0%a6%aa%e0%a6%a4%e0%a7%8d%e0%a6%b0-%e0%a6%ac%e0%a6%bf%e0%a6%9c%e0%a7%8d%e0%a6%9e%e0%a6%aa%e0%a7%8d%e0%a6%a4/\" target=\"_blank\">উন্মুক্ত দরপত্র বিজ্ঞপ্তি স্মারক নং হাঃ পুঃ হেঃ কোঃ/১০১১৭(১৯)</a></p>', NULL, 1, '2024-04-27 16:14:52.137', '2024-04-27 16:14:52.137', NULL),
(51, 'Officer Order # 101', '<p>Officer Order # 101</p>', NULL, 1, '2024-04-27 16:15:23.382', '2024-04-27 16:15:23.382', NULL),
(52, 'Officer Order # 102', '<p>Officer Order # 102</p><p><br></p>', NULL, 1, '2024-04-27 16:15:46.306', '2024-04-27 16:15:46.306', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notice_categories`
--

CREATE TABLE `notice_categories` (
  `id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `index` int DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notice_categories`
--

INSERT INTO `notice_categories` (`id`, `title`, `createdAt`, `updatedAt`, `index`, `status`) VALUES
(1, 'টেন্ডার', '2023-08-31 10:49:36.784', '2023-08-31 10:51:30.609', NULL, NULL),
(2, 'নোটিশ', '2023-08-31 11:21:52.956', '2024-04-27 10:36:18.443', NULL, NULL),
(3, 'অফিস আদেশ', '2023-08-31 11:22:03.212', '2024-04-27 10:36:09.179', NULL, NULL),
(6, 'এনওসি', '2024-04-27 10:36:27.042', '2024-04-27 10:36:27.042', NULL, NULL),
(7, 'চাকুরী বিজ্ঞপ্তি', '2024-04-27 10:36:41.455', '2024-04-27 10:36:41.455', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `officers`
--

CREATE TABLE `officers` (
  `id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bcs_batch` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `officers`
--

INSERT INTO `officers` (`id`, `name`, `mobile`, `designation`, `phone`, `image`, `bcs_batch`, `createdAt`, `updatedAt`) VALUES
(1, 'htryh1', 'dfhfdgh1', 'gfhfdh1', 'fghbfdg1', '1693139199238_add_sp_crime_img.gif', 'fghf1', '2023-08-27 12:26:39.241', '2023-08-27 12:26:47.165');

-- --------------------------------------------------------

--
-- Table structure for table `page_visitor_counter`
--

CREATE TABLE `page_visitor_counter` (
  `id` int NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `totalVisits` int NOT NULL DEFAULT '0',
  `todayVisits` int NOT NULL DEFAULT '0',
  `lastUpdated` datetime(3) DEFAULT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_visitor_counter`
--

INSERT INTO `page_visitor_counter` (`id`, `path`, `totalVisits`, `todayVisits`, `lastUpdated`, `createdAt`, `updatedAt`) VALUES
(5, 'zilla-police-page-details3', 26, 3, '2024-04-28 08:22:23.463', '2024-04-25 03:10:19.281', '2024-04-28 09:08:42.282'),
(6, 'zilla-police-page-details4', 14, 9, '2024-04-27 09:18:20.694', '2024-04-25 03:25:08.692', '2024-04-27 15:37:22.905'),
(7, 'zilla-police-page-details5', 15, 15, '2024-04-25 03:25:11.873', '2024-04-25 03:25:11.875', '2024-04-25 10:11:24.201'),
(8, 'zilla-police-sub-page-details2', 6, 6, '2024-04-25 03:27:49.439', '2024-04-25 03:27:49.455', '2024-04-25 03:28:41.031'),
(9, 'former-of-cheif-sp', 15, 2, '2024-04-28 04:49:26.184', '2024-04-25 03:29:17.506', '2024-04-28 09:21:36.044'),
(10, 'administration-page-details8', 1, 1, '2024-04-25 03:29:57.353', '2024-04-25 03:29:57.355', '2024-04-25 03:29:57.355'),
(11, 'administration-page-details6', 1, 1, '2024-04-25 03:30:06.134', '2024-04-25 03:30:06.137', '2024-04-25 03:30:06.137'),
(12, 'sub-unit-details1', 4, 4, '2024-04-25 03:30:35.894', '2024-04-25 03:30:35.897', '2024-04-25 05:25:43.151'),
(13, 'sub-unit-details12', 1, 1, '2024-04-25 03:30:56.878', '2024-04-25 03:30:56.881', '2024-04-25 03:30:56.881'),
(14, 'sub-unit-details17', 1, 1, '2024-04-25 03:30:58.161', '2024-04-25 03:30:58.166', '2024-04-25 03:30:58.166'),
(15, 'sub-unit-details13', 1, 1, '2024-04-25 03:30:58.723', '2024-04-25 03:30:58.729', '2024-04-25 03:30:58.729'),
(16, 'sub-unit-details18', 1, 1, '2024-04-25 03:30:59.734', '2024-04-25 03:30:59.738', '2024-04-25 03:30:59.738'),
(17, 'unit-details6', 1, 1, '2024-04-25 03:31:24.600', '2024-04-25 03:31:24.605', '2024-04-25 03:31:24.605'),
(18, 'unit-details9', 1, 1, '2024-04-25 03:31:29.262', '2024-04-25 03:31:29.266', '2024-04-25 03:31:29.266'),
(19, 'unit-details12', 1, 1, '2024-04-25 03:31:30.420', '2024-04-25 03:31:30.425', '2024-04-25 03:31:30.425'),
(20, 'activities-sub-page-details1', 13, 0, '2024-04-28 04:44:24.799', '2024-04-25 03:31:49.955', '2024-04-28 04:44:24.805'),
(21, 'activities-sub-page-details2', 5, 5, '2024-04-25 03:31:56.246', '2024-04-25 03:31:56.250', '2024-04-25 10:11:07.900'),
(22, 'activities-sub-page-details4', 1, 1, '2024-04-25 03:31:57.658', '2024-04-25 03:31:57.663', '2024-04-25 03:31:57.663'),
(23, 'activities-sub-page-details7', 3, 3, '2024-04-25 03:31:58.196', '2024-04-25 03:31:58.198', '2024-04-25 10:11:01.006'),
(24, 'activities-sub-page-details6', 3, 3, '2024-04-25 03:31:58.836', '2024-04-25 03:31:58.837', '2024-04-25 10:11:00.318'),
(25, 'activities-sub-page-details8', 1, 1, '2024-04-25 03:31:59.235', '2024-04-25 03:31:59.237', '2024-04-25 03:31:59.237'),
(26, 'activities-sub-page-details9', 1, 1, '2024-04-25 03:31:59.522', '2024-04-25 03:31:59.524', '2024-04-25 03:31:59.524'),
(27, 'crime-management-details1', 6, 3, '2024-04-28 04:43:25.623', '2024-04-25 03:32:19.879', '2024-04-28 08:50:23.751'),
(28, 'crime-management-details3', 11, 4, '2024-04-28 08:52:12.128', '2024-04-25 03:32:23.570', '2024-04-28 08:55:51.655'),
(29, 'crime-management-details2', 5, 5, '2024-04-25 03:32:24.302', '2024-04-25 03:32:24.303', '2024-04-25 10:10:55.935'),
(30, 'service-details5', 3, 3, '2024-04-25 03:32:46.664', '2024-04-25 03:32:46.665', '2024-04-25 03:33:26.790'),
(31, 'service-details11', 1, 1, '2024-04-25 03:32:54.344', '2024-04-25 03:32:54.346', '2024-04-25 03:32:54.346'),
(32, 'services-submenu-details2', 1, 1, '2024-04-25 03:33:17.507', '2024-04-25 03:33:17.509', '2024-04-25 03:33:17.509'),
(33, 'services-submenu-details1', 1, 1, '2024-04-25 03:33:22.236', '2024-04-25 03:33:22.238', '2024-04-25 03:33:22.238'),
(34, 'service-details9', 2, 2, '2024-04-25 03:33:23.224', '2024-04-25 03:33:23.227', '2024-04-25 03:33:26.134'),
(35, 'service-details2', 1, 1, '2024-04-25 03:33:24.110', '2024-04-25 03:33:24.112', '2024-04-25 03:33:24.112'),
(36, 'notices1', 13, 1, '2024-04-28 04:56:32.297', '2024-04-25 03:33:51.084', '2024-04-28 04:56:32.333'),
(37, 'notices2', 13, 9, '2024-04-27 10:42:02.134', '2024-04-25 03:33:57.949', '2024-04-27 16:15:55.371'),
(38, 'notices3', 11, 8, '2024-04-27 10:47:28.601', '2024-04-25 03:33:59.570', '2024-04-27 16:15:53.358'),
(39, 'notices4', 1, 1, '2024-04-25 03:34:01.552', '2024-04-25 03:34:01.554', '2024-04-25 03:34:01.554'),
(40, 'video-gallery', 3, 3, '2024-04-25 03:34:38.612', '2024-04-25 03:34:38.614', '2024-04-25 05:26:51.719'),
(41, 'photo-gallery', 13, 0, '2024-04-28 04:58:17.236', '2024-04-25 03:35:02.293', '2024-04-28 04:58:17.246'),
(42, 'photo-gallery4', 1, 1, '2024-04-25 03:35:08.695', '2024-04-25 03:35:08.696', '2024-04-25 03:35:08.696'),
(43, 'bit-policing-details2', 3, 3, '2024-04-25 03:35:33.851', '2024-04-25 03:35:33.852', '2024-04-25 05:26:54.179'),
(44, 'info-bit-officers', 3, 3, '2024-04-25 03:36:29.678', '2024-04-25 03:36:29.682', '2024-04-25 08:07:41.564'),
(45, 'phone-directory', 40, 2, '2024-04-30 15:26:49.850', '2024-04-25 03:37:22.105', '2024-04-30 15:30:30.874'),
(46, 'map-kishorganj', 24, 3, '2024-04-30 15:26:52.789', '2024-04-25 03:37:55.151', '2024-04-30 15:32:52.434'),
(47, 'home', 124, 1, '2024-05-04 18:30:53.459', '2024-04-25 03:45:18.129', '2024-05-04 18:31:53.629'),
(48, 'sub-unit-details9', 2, 2, '2024-04-25 05:26:57.127', '2024-04-25 05:26:57.129', '2024-04-25 05:26:57.144'),
(49, 'administration-page-details10', 2, 2, '2024-04-25 05:26:58.433', '2024-04-25 05:26:58.435', '2024-04-25 05:26:58.451'),
(50, 'officers', 3, 0, '2024-04-28 08:25:16.242', '2024-04-27 09:33:53.824', '2024-04-28 08:25:16.249'),
(51, 'employees', 4, 0, '2024-04-28 08:25:39.390', '2024-04-27 09:34:05.530', '2024-04-28 08:25:39.396'),
(52, 'zilla-police-page-details9', 12, 5, '2024-04-28 07:12:06.851', '2024-04-27 10:01:38.541', '2024-04-28 09:47:11.408'),
(53, 'news', 6, 6, '2024-04-27 10:42:13.281', '2024-04-27 10:42:13.283', '2024-04-27 10:47:02.667'),
(54, 'notices6', 5, 5, '2024-04-27 10:47:31.041', '2024-04-27 10:47:31.043', '2024-04-27 16:14:36.924'),
(55, 'notices6', 1, 1, '2024-04-27 10:47:31.031', '2024-04-27 10:47:31.034', '2024-04-27 10:47:31.034'),
(56, 'notices7', 3, 3, '2024-04-27 10:47:43.128', '2024-04-27 10:47:43.132', '2024-04-27 16:14:33.679'),
(57, 'notices7', 1, 1, '2024-04-27 10:47:43.139', '2024-04-27 10:47:43.141', '2024-04-27 10:47:43.141'),
(58, 'site-map', 1, 1, '2024-04-27 11:51:17.199', '2024-04-27 11:51:17.202', '2024-04-27 11:51:17.202'),
(59, 'sp-details2', 4, 1, '2024-04-28 07:47:55.808', '2024-04-27 13:52:31.183', '2024-04-28 07:48:23.219'),
(60, 'zilla-police-page-details6', 3, 3, '2024-04-27 14:24:45.437', '2024-04-27 14:24:45.441', '2024-04-27 15:37:27.871'),
(61, 'zilla-police-page-details6', 1, 1, '2024-04-27 14:24:45.455', '2024-04-27 14:24:45.459', '2024-04-27 14:24:45.459'),
(62, 'recent-activities', 5, 5, '2024-04-27 14:46:00.818', '2024-04-27 14:46:00.820', '2024-04-27 14:57:15.063'),
(63, 'zilla-police-page-details7', 1, 1, '2024-04-27 15:37:53.261', '2024-04-27 15:37:53.264', '2024-04-27 15:37:53.264'),
(64, 'zilla-police-page-details7', 1, 1, '2024-04-27 15:37:53.263', '2024-04-27 15:37:53.265', '2024-04-27 15:37:53.265'),
(65, 'zilla-police-page-details10', 3, 3, '2024-04-27 15:40:48.183', '2024-04-27 15:40:48.187', '2024-04-27 15:41:53.216'),
(66, 'zilla-police-page-details10', 1, 1, '2024-04-27 15:40:48.189', '2024-04-27 15:40:48.194', '2024-04-27 15:40:48.194'),
(67, 'administration-page-details15', 1, 1, '2024-04-27 15:53:58.154', '2024-04-27 15:53:58.156', '2024-04-27 15:53:58.156'),
(68, 'administration-page-details15', 1, 1, '2024-04-27 15:53:58.156', '2024-04-27 15:53:58.158', '2024-04-27 15:53:58.158'),
(69, 'all-notice', 2, 2, '2024-04-27 16:22:34.582', '2024-04-27 16:22:34.584', '2024-04-27 16:22:58.247'),
(70, 'photo-gallery8', 3, 3, '2024-04-27 16:28:22.351', '2024-04-27 16:28:22.354', '2024-04-27 16:32:43.103'),
(71, 'photo-gallery8', 1, 1, '2024-04-27 16:28:22.360', '2024-04-27 16:28:22.363', '2024-04-27 16:28:22.363'),
(72, 'service-details10', 1, 1, '2024-04-28 04:42:42.621', '2024-04-28 04:42:42.633', '2024-04-28 04:42:42.633'),
(73, 'service-details10', 1, 1, '2024-04-28 04:42:42.622', '2024-04-28 04:42:42.633', '2024-04-28 04:42:42.633'),
(74, 'sub-unit-details20', 1, 1, '2024-04-28 04:45:21.960', '2024-04-28 04:45:21.964', '2024-04-28 04:45:21.964'),
(75, 'sub-unit-details20', 1, 1, '2024-04-28 04:45:21.977', '2024-04-28 04:45:21.982', '2024-04-28 04:45:21.982'),
(76, 'sub-unit-details27', 2, 2, '2024-04-28 07:59:39.510', '2024-04-28 07:59:39.517', '2024-04-28 07:59:39.550'),
(77, 'recent-activites-details11', 1, 1, '2024-04-28 08:22:53.360', '2024-04-28 08:22:53.365', '2024-04-28 08:22:53.365'),
(78, 'activities-details5', 6, 6, '2024-04-28 08:31:29.457', '2024-04-28 08:31:29.462', '2024-04-28 08:41:42.519'),
(79, 'zilla-police-page-details8', 6, 6, '2024-04-28 09:17:03.412', '2024-04-28 09:17:03.419', '2024-04-28 20:21:50.206'),
(80, 'administration-page-details16', 2, 2, '2024-04-28 09:22:17.805', '2024-04-28 09:22:17.821', '2024-04-28 09:22:17.855'),
(81, 'administration-page-details13', 2, 2, '2024-04-28 11:10:02.713', '2024-04-28 11:10:02.715', '2024-04-28 11:10:02.804');

-- --------------------------------------------------------

--
-- Table structure for table `recent_activity`
--

CREATE TABLE `recent_activity` (
  `id` int NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `heading` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `latitude` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `userId` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recent_activity`
--

INSERT INTO `recent_activity` (`id`, `image`, `heading`, `content`, `createdAt`, `updatedAt`, `latitude`, `longitude`, `userId`) VALUES
(4, '1714844244751_7.jpeg', 'sfdasd', 'asdfas', '2024-05-04 17:37:24.761', '2024-05-04 17:37:24.761', 'null', 'null', 29),
(5, '1714846279366_images.png', 'Qui est aut est pra', 'Nihil rerum illum n', '2024-05-04 18:11:19.385', '2024-05-04 18:11:19.385', '23.773184', '90.4003584', 19);

-- --------------------------------------------------------

--
-- Table structure for table `reset_token`
--

CREATE TABLE `reset_token` (
  `id` int NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration_time` int NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reset_token`
--

INSERT INTO `reset_token` (`id`, `email`, `token`, `expiration_time`, `createdAt`, `updatedAt`) VALUES
(3, 'dev.arafat.zaimahtech@gmail.com', '9515C6', 2147483647, '2023-10-01 06:00:59.378', '2023-10-01 06:00:59.378'),
(7, 'dev.arafat.zaimahtech@gmail.com', 'A997FA', 2147483647, '2023-10-01 06:56:35.297', '2023-10-01 06:56:35.297'),
(8, 'dev.arafat.zaimahtech@gmail.com', 'BF39E2', 2147483647, '2023-10-01 06:56:37.253', '2023-10-01 06:56:37.253'),
(9, 'dev.arafat.zaimahtech@gmail.com', '6778B7', 2147483647, '2023-10-01 06:57:04.442', '2023-10-01 06:57:04.442');

-- --------------------------------------------------------

--
-- Table structure for table `right_others`
--

CREATE TABLE `right_others` (
  `id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `right_others`
--

INSERT INTO `right_others` (`id`, `title`, `content`, `image`, `createdAt`, `updatedAt`) VALUES
(2, 'Hotline', NULL, '1710076522810_hotline_v.2_bn.png', '2023-11-02 12:08:19.483', '2024-03-10 13:15:22.818'),
(3, 'শেখ রাসেল পদক ২০২৪', NULL, '1714227451192_rasel.jpeg', '2024-03-10 13:17:05.721', '2024-04-27 14:17:31.199');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int NOT NULL,
  `home_page` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_section` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer_section` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `zilla_police` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `administration` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `units` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `activity` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `crime_management` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `service` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `notice_board` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `bit_policing` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_directory` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `home_page`, `work_section`, `footer_section`, `zilla_police`, `administration`, `units`, `activity`, `crime_management`, `service`, `notice_board`, `bit_policing`, `phone_directory`, `user`, `role`) VALUES
(1, 'Read Home,Add Home,Edit Home,Delete Home', '', '', '', 'Read Menu Section,Add Menu Section,Edit Menu Section,Delete Menu Section', '', '', '', 'Read Roles,Add Roles,Edit Roles,Delete Roles', '', '', '', 'Read Users,Add Users,Edit Users,Delete Users', 'Admin'),
(3, 'Read Home,Add Home,Edit Home,Delete Home', '', '', '', 'Read Menu Section,Add Menu Section,Edit Menu Section,Delete Menu Section', '', '', '', '', '', '', '', '', 'User'),
(4, '', '', '', '', '', '', '', '', '', '', '', '', '', 'Bit Police'),
(5, 'Read Home,Add Home,Edit Home,Delete Home', '', '', '', 'Read Menu Section,Add Menu Section,Edit Menu Section,Delete Menu Section', '', '', '', '', '', '', '', '', 'Test User'),
(6, 'Read Home,Add Home,Edit Home,Delete Home', '', '', '', 'Read Menu Section,Add Menu Section,Edit Menu Section,Delete Menu Section', '', '', '', 'Read Roles,Add Roles,Edit Roles,Delete Roles', '', '', '', 'Read Users,Add Users,Edit Users,Delete Users', 'Admin 2'),
(9, '', '', '', '', '', '', '', '', '', '', '', '', '', 'Recent Activity');

-- --------------------------------------------------------

--
-- Table structure for table `service_pages`
--

CREATE TABLE `service_pages` (
  `id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `index` int DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_pages`
--

INSERT INTO `service_pages` (`id`, `title`, `content`, `createdAt`, `updatedAt`, `index`, `status`) VALUES
(10, 'নাগরিক সেবা', '<div class=\"pt-0\" style=\"box-sizing: border-box; padding-top: 0px !important; color: rgb(33, 37, 41); font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><h5 style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.25rem;\"><br></h5><div class=\"\" style=\"box-sizing: border-box;\"><p class=\"geo__familarity__desc pt-2\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0rem !important; padding-top: 0.5rem !important; font-size: 14px; font-weight: 400; color: rgb(113, 115, 116);\"><br></p><br></div><br></div>', '2023-08-30 05:19:59.213', '2024-04-27 10:02:22.693', 1, NULL),
(11, 'আত্নত্যাগ ', '<p><br></p>', '2023-08-30 05:20:53.261', '2024-04-27 10:03:48.395', 5, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `service_sub_pages`
--

CREATE TABLE `service_sub_pages` (
  `id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pageId` int NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `index` int DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sp`
--

CREATE TABLE `sp` (
  `id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `index` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sp`
--

INSERT INTO `sp` (`id`, `name`, `designation`, `content`, `createdAt`, `updatedAt`, `image`, `title`, `index`) VALUES
(2, 'Md Shahabuddin Khan, ', 'বিপিএম(বার)', '<p>জনাব মোঃ শাহাবুদ্দিন খান, বিপিএম (বার), অ্যাডিশনাল আইজি, বাংলাদেশ পুলিশ,\r\n খুলনা বিভাগের ঝিনাইদহ জেলার শৈলকুপা থানার, হিতামপুর গ্রামে এক মুসলিম \r\nপরিবারে জন্মগ্রহণ করেন। তিনি ১৯৯৫ সালে ১৫তম বিসিএস (পুলিশ) এ সহকারী \r\nপুলিশ সুপার হিসেবে বাংলাদেশ পুলিশে যোগদান করেন। তিনি বাংলাদেশ কৃষি \r\nবিশ্ববিদ্যালয়, ময়মনসিংহ থেকে কৃষি বিষয়ে স্নাতক ও স্নাতকোত্তর ডিগ্রি \r\nঅর্জন করেন।<br>তিনি বাংলাদেশ পুলিশের বিভিন্ন ইউনিটে আন্তরিক, নিষ্ঠা ও \r\nদক্ষতার সাথে দায়িত্ব পালন করেছেন। তিনি বাংলাদেশের মুন্সিগঞ্জ, কুষ্টিয়া, \r\nরাজশাহী, নরসিংদী ও নারায়ণগঞ্জ জেলার পুলিশ সুপার হিসেবে দায়িত্ব পালন \r\nকরেন। ঢাকা মেট্রোপলিটন পুলিশের যুগ্ম কমিশনার (ক্রাইম অ্যান্ড অপারেশন) \r\nএবং র‌্যাপিড অ্যাকশন ব্যাটালিয়ন (র‌্যাব-১২, র‌্যাব-১০, র‌্যাব-০৪) এর \r\nপরিচালক হিসেবে দায়িত্ব পালন করেন। তিনি ডেপুটি ইন্সপেক্টর জেনারেল হিসেবে \r\nশিল্পাঞ্চল পুলিশ এবং পুলিশ কমিশনার হিসেবে বরিশাল মেট্রোপলিটন পুলিশে \r\nদায়িত্ব পালন করেন। এছাড়াও অ্যাডিশনাল আইজি (ফিন্যান্স) হিসেবে পুলিশ \r\nহেডকোয়ার্টার্সে দায়িত্ব পালন করে। জনাব মোঃ শাহাবুদ্দিন খান পেশাগত \r\nদায়িত্বের অংশ হিসেবে আন্তর্জাতিক অঙ্গনে অবদান রেখেছেন। তিনি জাতিসংঘ \r\nশান্তি রক্ষী হিসেবে কসেভো ও সুদানের দারফু মিশনে দায়িত্ব পালন করেন।<br>তিনি\r\n তার পেশাদারিত্ব, সাহসিকতা এবং সেবার স্বীকৃতি স্বরূপ দুইবার বাংলাদেশ \r\nপুলিশের সর্বোচ্চ পদক (বিপিএম) পুরষ্কারে ভূষিত হয়েছেন। এছাড়াও পেশাগত \r\nদায়িত্ব, দক্ষতা, কর্তব্যনিষ্ঠার মানদন্ডের বিবেচনায় তিনি দুইবার আইজিপির্স\r\n গুড সার্ভিস ব্যাজ অর্জন করেন।<br>তিনি বিভিন্ন বৈদেশিক প্রশিক্ষণে (মার্কিন যুক্তরাষ্ট্র, সিঙ্গাপুর, জাপান) ভ্রমন করেন।<br>ব্যক্তিগত জীবনে তিনি বিবাহিত, ১ পুত্র এবং ১ কন্যা সন্তানের জনক।<br></p>', '2023-11-02 10:13:41.461', '2024-04-27 13:53:45.037', '1714226025012_addligp.gif', 'অতিরিক্ত আইজিপি', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sub_units`
--

CREATE TABLE `sub_units` (
  `id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unitId` int NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `index` int DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_units`
--

INSERT INTO `sub_units` (`id`, `title`, `unitId`, `createdAt`, `updatedAt`, `index`, `status`, `content`) VALUES
(20, 'গাজীপুর রিজিয়ন', 19, '2024-04-27 09:53:38.694', '2024-04-27 09:53:38.694', 1, NULL, ''),
(21, 'মাদারীপুর রিজিয়ন', 21, '2024-04-27 09:54:05.524', '2024-04-27 12:18:28.631', 2, NULL, ''),
(22, 'বগুড়া রিজিয়ন', 20, '2024-04-27 09:54:35.523', '2024-04-27 09:54:35.523', 3, NULL, ''),
(23, 'রংপুর রিজিয়ন', 20, '2024-04-27 09:54:54.077', '2024-04-27 09:54:54.077', 4, NULL, ''),
(24, 'কুমিল্লা রিজিয়ন', 22, '2024-04-27 09:55:24.806', '2024-04-27 12:20:43.107', 5, NULL, ''),
(25, 'সিলেট রিজিয়ন', 22, '2024-04-27 09:55:35.806', '2024-04-27 12:20:50.200', 6, NULL, ''),
(26, 'খুলনা রিজিয়ন', 21, '2024-04-27 09:55:57.699', '2024-04-27 12:19:17.212', 7, NULL, ''),
(27, 'ময়মনসিংহ রিজিয়ন', 19, '2024-04-27 09:56:16.328', '2024-04-27 12:17:49.435', 8, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `thana`
--

CREATE TABLE `thana` (
  `id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `index` int DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `thana`
--

INSERT INTO `thana` (`id`, `title`, `createdAt`, `updatedAt`, `index`, `status`) VALUES
(2, 'কিশোরগঞ্জ মডেল থানা', '2023-09-02 06:46:24.420', '2023-09-02 06:46:24.420', NULL, NULL),
(3, 'ইটনা থানা', '2023-09-02 06:46:47.763', '2023-09-02 06:46:47.763', NULL, NULL),
(4, 'করিমগঞ্জ থানা', '2023-09-02 06:47:02.852', '2023-09-02 06:47:02.852', NULL, NULL),
(5, 'নিকলি থানা', '2023-09-02 06:47:13.131', '2023-09-02 06:47:13.131', NULL, NULL),
(6, 'মিঠামইন থানা', '2023-09-02 06:47:33.757', '2023-09-02 06:52:31.885', NULL, NULL),
(7, 'বাজিতপুর থানা', '2023-09-02 06:47:43.507', '2023-09-02 06:47:43.507', NULL, NULL),
(8, 'কটিয়াদি থানা', '2023-09-02 06:48:03.195', '2023-09-02 06:48:03.195', NULL, NULL),
(10, 'তাড়াইল থানা', '2023-09-02 06:48:51.156', '2023-09-02 06:48:51.156', NULL, NULL),
(11, 'ভৈরব থানা', '2023-09-02 06:50:36.812', '2023-09-02 06:50:36.812', NULL, NULL),
(12, 'অষ্টগ্রাম থানা', '2023-09-02 06:50:47.419', '2023-09-02 06:50:47.419', NULL, NULL),
(13, 'হোসেনপুর থানা', '2023-09-02 06:51:30.645', '2023-09-02 06:51:30.645', NULL, NULL),
(14, 'পাকুন্দিয়া থানা', '2023-09-02 06:51:43.804', '2023-09-02 06:51:43.804', NULL, NULL),
(15, 'কুলিয়ারচর থানা', '2023-09-02 06:51:58.627', '2023-09-02 06:51:58.627', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `top_banner`
--

CREATE TABLE `top_banner` (
  `id` int NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `top_banner`
--

INSERT INTO `top_banner` (`id`, `date`, `image`) VALUES
(5, '2024-04-27', '1714203118324_padmabanner.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `top_slider`
--

CREATE TABLE `top_slider` (
  `id` int NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `top_slider`
--

INSERT INTO `top_slider` (`id`, `date`, `image`) VALUES
(18, '2024-04-27', '1714203084761_banner-hwp.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `index` int DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `title`, `createdAt`, `updatedAt`, `index`, `status`, `content`) VALUES
(19, 'ডিআইজি (উত্তর বিভাগ)', '2024-04-27 09:49:30.285', '2024-04-27 09:49:30.285', 1, NULL, ''),
(20, 'ডিআইজি (পশ্চিম বিভাগ)', '2024-04-27 09:49:55.890', '2024-04-27 09:49:55.890', 2, NULL, ''),
(21, 'ডিআইজি (দক্ষিণ বিভাগ)', '2024-04-27 09:50:33.967', '2024-04-27 09:50:33.967', 3, NULL, ''),
(22, 'ডিআইজি (পূর্ব বিভাগ)', '2024-04-27 09:50:44.953', '2024-04-27 09:50:44.953', 4, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `unit_force`
--

CREATE TABLE `unit_force` (
  `id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_designation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bcs_batch` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unitId` int NOT NULL,
  `sub_unitId` int DEFAULT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `permissions` longtext COLLATE utf8mb4_unicode_ci,
  `permissions_module` longtext COLLATE utf8mb4_unicode_ci,
  `role_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `phone`, `password`, `image`, `createdAt`, `updatedAt`, `permissions`, `permissions_module`, `role_id`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2b$10$TsEpGmr0S2Nzruyzya7YUeKm/8y419FhlBrix7P.fhBcP2YficXs2', NULL, '2023-09-21 09:24:55.248', '2023-09-21 09:24:55.248', NULL, NULL, 1),
(2, 'User', 'user@gmail.com', '01705541563', '$2b$10$O7T4Ake8eTUTPKN1J7hWpujKjFvih5Jjx/bv4lzEqlM4gLufXAMLO', NULL, '2023-09-21 09:25:57.429', '2023-09-21 09:25:57.429', NULL, NULL, 3),
(19, 'Mohsin', 'm_ohs_in@yahoo.com', NULL, '$2b$10$QKZoN.z1BlDrdkjh168qd.tFN/ylUO3LB.8ke5E9HFwXx61BfypwW', NULL, '2023-10-30 13:04:58.128', '2023-11-11 06:50:17.039', NULL, NULL, 1),
(20, 'Test', '01705541566', NULL, '$2b$10$nNJBSZqH6A7Y.syAt54idObvfjMbwjz/D.9VNQF3Uw4SJfkGANaLy', NULL, '2023-10-30 13:52:15.686', '2023-10-30 13:53:38.597', '30', 'BitPolice', 4),
(21, 'User', '01705541567', NULL, '$2b$10$bINmaQnWKeWWSjNNZEFcRuSlfbvjJyjMNU6ghYV5We8CxPGqsUbry', NULL, '2023-10-30 14:06:14.664', '2023-10-30 14:06:14.664', '31', 'BitPolice', 4),
(24, 'fdggdg', '01705541568', NULL, '$2b$10$9B/UClw0y1gjbfetfD2XpeGrrX840X1KYmxUGtVXZrEwGSFcFKXbe', NULL, '2023-11-09 06:29:49.807', '2023-11-09 06:29:49.807', '32', 'BitPolice', 4),
(25, 'kawser ali', '01872788594', NULL, '$2b$10$DZ6CoDjzrHybTuah3G5lsuedQwEdGWGEDZwVpveWK/KhfICoo9FE.', NULL, '2024-03-10 12:51:52.945', '2024-03-10 12:51:52.945', '33', 'BitPolice', 4),
(26, 'Hilel Dixon', 'Adipisci esse fugit', NULL, '$2b$10$ktulGWGcF8fYWhE3D.687.LHadmWkMtNhUbCo5YqR5Z9MJaGPg5gK', NULL, '2024-03-18 11:33:31.304', '2024-03-18 11:33:31.304', '34', 'BitPolice', 4),
(27, 'Mannix Weeks', '22222222222', NULL, '$2b$10$hCnzw7d2ictW.b19oxEVouE.G01fOEWWHrQin2o1cqiy9khXo8ZTq', NULL, '2024-03-19 10:07:01.859', '2024-03-19 10:07:01.859', '35', 'BitPolice', 4);

-- --------------------------------------------------------

--
-- Table structure for table `video_gallery`
--

CREATE TABLE `video_gallery` (
  `id` int NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `video_gallery`
--

INSERT INTO `video_gallery` (`id`, `image`, `title`, `content`, `createdAt`, `updatedAt`) VALUES
(1, '1714230868741_v102.jpg', 'মহাসড়কে দুর্ঘটনা অথবা যে কোন বিপদে পড়লে আপনি কি করবেন?', 'https://www.youtube.com/embed/Hf9USa__XnM ', '2023-08-20 05:39:44.017', '2024-04-27 15:15:35.445'),
(5, '1714230510871_v101.jpg', 'ঈদের দিন পর্যন্ত মহাসড়কে কাজ করবে হাইওয়ে পুলিশ- হাইওয়ে পুলিশ প্রধান', 'https://www.youtube.com/embed/z2rYgEEZdF4 ', '2023-09-24 10:08:39.032', '2024-04-27 15:29:52.026'),
(6, '1714232071489_v103_south-zone.jpg', 'ঢাকা-টাঙ্গাইল মহাসড়কে যানজট নিরসনে সাউন্ড ড্রোন!', 'https://www.youtube.com/embed/Tozvh_WoV_E', '2024-04-27 15:32:40.758', '2024-04-27 15:34:53.648');

-- --------------------------------------------------------

--
-- Table structure for table `visitor_counter`
--

CREATE TABLE `visitor_counter` (
  `id` int NOT NULL,
  `visitor_no` int DEFAULT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitor_counter`
--

INSERT INTO `visitor_counter` (`id`, `visitor_no`, `createdAt`, `updatedAt`) VALUES
(1, 1, '2023-11-02 06:41:31.016', '2023-11-02 06:41:31.016'),
(2, 2, '2023-11-02 06:41:31.072', '2023-11-02 06:41:31.072'),
(3, 3, '2023-11-02 06:43:21.340', '2023-11-02 06:43:21.340'),
(4, 4, '2023-11-02 06:43:21.810', '2023-11-02 06:43:21.810'),
(5, 5, '2023-11-02 06:43:36.613', '2023-11-02 06:43:36.613'),
(6, 6, '2023-11-02 06:43:36.895', '2023-11-02 06:43:36.895'),
(7, 7, '2023-11-02 06:44:51.906', '2023-11-02 06:44:51.906'),
(8, 8, '2023-11-02 06:44:51.924', '2023-11-02 06:44:51.924'),
(9, 9, '2023-11-02 06:46:39.335', '2023-11-02 06:46:39.335'),
(10, 9, '2023-11-02 06:46:39.338', '2023-11-02 06:46:39.338'),
(11, 11, '2023-11-02 06:46:44.159', '2023-11-02 06:46:44.159'),
(12, 12, '2023-11-02 06:47:04.769', '2023-11-02 06:47:04.769'),
(13, 13, '2023-11-02 06:47:04.847', '2023-11-02 06:47:04.847'),
(14, 14, '2023-11-02 06:47:14.004', '2023-11-02 06:47:14.004'),
(15, 15, '2023-11-02 06:47:14.078', '2023-11-02 06:47:14.078'),
(16, 16, '2023-11-02 06:47:31.499', '2023-11-02 06:47:31.499'),
(17, 17, '2023-11-02 06:47:31.551', '2023-11-02 06:47:31.551'),
(18, 18, '2023-11-02 06:48:26.355', '2023-11-02 06:48:26.355'),
(19, 19, '2023-11-02 06:48:37.295', '2023-11-02 06:48:37.295'),
(20, 20, '2023-11-02 06:48:58.442', '2023-11-02 06:48:58.442'),
(21, 21, '2023-11-02 06:49:03.289', '2023-11-02 06:49:03.289'),
(22, 22, '2023-11-02 06:49:14.245', '2023-11-02 06:49:14.245'),
(23, 23, '2023-11-02 06:49:21.783', '2023-11-02 06:49:21.783'),
(24, 24, '2023-11-02 06:49:27.762', '2023-11-02 06:49:27.762'),
(25, 25, '2023-11-02 06:49:33.766', '2023-11-02 06:49:33.766'),
(26, 26, '2023-11-02 06:49:55.796', '2023-11-02 06:49:55.796'),
(27, 27, '2023-11-02 06:51:52.402', '2023-11-02 06:51:52.402'),
(28, 28, '2023-11-02 06:51:59.228', '2023-11-02 06:51:59.228'),
(29, 29, '2023-11-02 06:52:23.051', '2023-11-02 06:52:23.051'),
(30, 30, '2023-11-02 06:57:34.388', '2023-11-02 06:57:34.388'),
(31, 31, '2023-11-02 07:29:14.120', '2023-11-02 07:29:14.120'),
(32, 32, '2023-11-08 04:29:00.239', '2023-11-08 04:29:00.239'),
(33, 33, '2023-11-08 09:38:07.702', '2023-11-08 09:38:07.702'),
(34, 34, '2023-11-09 06:19:51.073', '2023-11-09 06:19:51.073'),
(35, 35, '2023-11-11 06:40:55.355', '2023-11-11 06:40:55.355'),
(36, 36, '2023-11-11 06:40:56.139', '2023-11-11 06:40:56.139'),
(37, 37, '2024-03-10 11:23:46.823', '2024-03-10 11:23:46.823'),
(38, 38, '2024-03-10 12:42:10.469', '2024-03-10 12:42:10.469'),
(39, 39, '2024-03-11 09:48:14.738', '2024-03-11 09:48:14.738'),
(40, 40, '2024-03-11 10:11:05.647', '2024-03-11 10:11:05.647'),
(41, 41, '2024-03-12 05:36:29.967', '2024-03-12 05:36:29.967'),
(42, 42, '2024-03-12 09:46:08.516', '2024-03-12 09:46:08.516'),
(43, 43, '2024-03-13 05:42:04.426', '2024-03-13 05:42:04.426'),
(44, 44, '2024-03-14 07:20:50.009', '2024-03-14 07:20:50.009'),
(45, 45, '2024-03-14 08:41:27.086', '2024-03-14 08:41:27.086'),
(46, 46, '2024-03-17 05:23:10.587', '2024-03-17 05:23:10.587'),
(47, 47, '2024-03-17 06:59:27.820', '2024-03-17 06:59:27.820'),
(48, 48, '2024-03-18 10:35:46.639', '2024-03-18 10:35:46.639'),
(49, 49, '2024-03-18 11:34:51.134', '2024-03-18 11:34:51.134'),
(50, 50, '2024-03-18 11:44:23.919', '2024-03-18 11:44:23.919'),
(51, 51, '2024-03-19 06:31:24.708', '2024-03-19 06:31:24.708'),
(52, 52, '2024-03-19 10:05:57.662', '2024-03-19 10:05:57.662'),
(53, 53, '2024-03-20 06:22:54.159', '2024-03-20 06:22:54.159'),
(54, 54, '2024-03-21 05:49:43.594', '2024-03-21 05:49:43.594'),
(55, 55, '2024-03-23 08:19:45.987', '2024-03-23 08:19:45.987'),
(56, 56, '2024-04-03 09:48:21.040', '2024-04-03 09:48:21.040'),
(57, 57, '2024-04-16 05:15:47.272', '2024-04-16 05:15:47.272'),
(58, 58, '2024-04-25 02:41:30.372', '2024-04-25 02:41:30.372'),
(59, 59, '2024-04-25 05:25:10.017', '2024-04-25 05:25:10.017'),
(60, 60, '2024-04-25 08:02:25.870', '2024-04-25 08:02:25.870'),
(61, 61, '2024-04-25 10:08:15.415', '2024-04-25 10:08:15.415'),
(62, 62, '2024-04-25 11:11:19.750', '2024-04-25 11:11:19.750'),
(63, 63, '2024-04-25 11:28:20.942', '2024-04-25 11:28:20.942'),
(64, 64, '2024-04-27 06:04:11.946', '2024-04-27 06:04:11.946'),
(65, 65, '2024-04-27 15:58:05.264', '2024-04-27 15:58:05.264'),
(66, 66, '2024-04-27 16:16:35.676', '2024-04-27 16:16:35.676'),
(67, 67, '2024-04-28 04:16:37.603', '2024-04-28 04:16:37.603'),
(68, 68, '2024-04-28 07:03:10.469', '2024-04-28 07:03:10.469'),
(69, 69, '2024-04-30 15:19:49.945', '2024-04-30 15:19:49.945'),
(70, 70, '2024-05-04 18:30:53.054', '2024-05-04 18:30:53.054');

-- --------------------------------------------------------

--
-- Table structure for table `works`
--

CREATE TABLE `works` (
  `id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `workSectionId` int NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `works`
--

INSERT INTO `works` (`id`, `title`, `workSectionId`, `content`, `createdAt`, `updatedAt`) VALUES
(10, 'আমাদের সর্ম্পকে', 8, '', '2024-04-27 10:14:07.586', '2024-04-27 10:15:07.548'),
(11, 'কর্মকর্তাবৃন্দ ', 8, '', '2024-04-27 10:15:44.440', '2024-04-27 10:15:44.440'),
(12, 'কর্মচারীবৃন্দ ', 8, '', '2024-04-27 10:16:51.290', '2024-04-27 10:16:51.290'),
(13, 'সেবা প্রদান প্রতিশ্রুতি ', 9, '', '2024-04-27 10:17:37.209', '2024-04-27 10:17:37.209'),
(14, 'ফোকাল পয়েন্ট কর্মকর্তা/পরিবীক্ষণ কমিটি ', 9, '', '2024-04-27 10:17:59.234', '2024-04-27 10:17:59.234'),
(15, 'ত্রৈমাসিক/বার্ষিক পরিবীক্ষণ/মূল্যায়ন প্রতিবেদন ', 9, '', '2024-04-27 10:18:20.366', '2024-04-27 10:18:20.366'),
(16, 'শুদ্ধাচার কৌশল কর্মপরিকল্পনা', 11, '', '2024-04-27 10:21:16.674', '2024-04-27 10:21:16.674'),
(17, 'ফোকাল পয়েন্ট কর্মকর্তা ও বিকল্প কর্মকর্তা', 11, '', '2024-04-27 10:21:33.324', '2024-04-27 10:21:33.324'),
(18, 'ত্রৈমাসিক/ষান্মাসিক পরিবীক্ষণ/মূল্যায়ন প্রতিবেদন', 11, '', '2024-04-27 10:21:51.947', '2024-04-27 10:21:51.947'),
(19, 'এপিএ নির্দেশিকা/পরিপত্র/এপিএ টিম', 12, '', '2024-04-27 10:22:13.743', '2024-04-27 10:22:13.743'),
(20, 'এপিএ চুক্তিসমূহ ', 12, '', '2024-04-27 10:22:30.862', '2024-04-27 10:22:30.862'),
(21, 'পরিবীক্ষণ ও মূল্যায়ন প্রতিবেদন', 12, '', '2024-04-27 10:23:00.627', '2024-04-27 10:23:00.627'),
(22, 'তথ্য প্রদানকারী কর্মকর্তা', 13, '', '2024-04-27 10:27:26.006', '2024-04-27 10:27:26.006'),
(23, 'বিকল্প তথ্য প্রদানকারী কর্মকর্তা', 13, '', '2024-04-27 10:27:39.904', '2024-04-27 10:27:39.904'),
(24, 'আপীল কর্তৃপক্ষ', 13, '', '2024-04-27 10:27:53.822', '2024-04-27 10:27:53.822'),
(25, 'অনিক ও আপিল কর্মকর্তা', 14, '', '2024-04-27 10:28:32.249', '2024-04-27 10:28:32.249'),
(26, 'মাসিক/ত্রৈমাসিক/বার্ষিক পরিবীক্ষণ/মূল্যায়ন প্রতিবেদন', 14, '', '2024-04-27 10:28:50.466', '2024-04-27 10:28:50.466'),
(27, ' অভিযোগ দাখিল (অনলাইন আবেদন)', 14, '', '2024-04-27 10:29:11.868', '2024-04-27 10:29:11.868');

-- --------------------------------------------------------

--
-- Table structure for table `work_document_section`
--

CREATE TABLE `work_document_section` (
  `id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `work_document_section`
--

INSERT INTO `work_document_section` (`id`, `title`, `image`, `createdAt`, `updatedAt`) VALUES
(8, 'আমাদের বিষয়', '1714212756824_about-us.png', '2024-03-10 12:58:11.555', '2024-04-27 10:14:45.696'),
(9, 'সেবা প্রদান প্রতিশ্রুতি (সিটিজেন্স চার্টার) ', '1714212801367_cc.png', '2024-03-10 12:58:20.818', '2024-04-27 10:13:21.379'),
(11, 'জাতীয় শুদ্ধাচার কৌশল ', '1714213204587_NI.png', '2024-04-27 10:20:04.597', '2024-04-27 10:20:04.597'),
(12, 'বার্ষিক কর্মসম্পাদন চুক্তি (এপিএ) ', '1714213255882_apa.png', '2024-04-27 10:20:24.544', '2024-04-27 10:20:55.888'),
(13, 'তথ্য অধিকার', '1714213508820_rti.png', '2024-04-27 10:25:08.825', '2024-04-27 10:25:08.825'),
(14, 'অভিযোগ ও প্রতিকার', '1714213540232_complain.png', '2024-04-27 10:25:40.238', '2024-04-27 10:25:40.238');

-- --------------------------------------------------------

--
-- Table structure for table `zilla_police_pages`
--

CREATE TABLE `zilla_police_pages` (
  `id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `index` int DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `zilla_police_pages`
--

INSERT INTO `zilla_police_pages` (`id`, `title`, `content`, `createdAt`, `updatedAt`, `index`, `status`) VALUES
(4, 'হাইওয়ে পুলিশের ইতিহাস', '\n<div class=\"about-aea\">\n\n    <p style=\"text-align: left;\"><img src=\"data:image/jpeg;base64,/9j/4QAYRXhpZgAASUkqAAgAAAAAAAAAAAAAAP/sABFEdWNreQABAAQAAAArAAD/4QMZaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLwA8P3hwYWNrZXQgYmVnaW49Iu+7vyIgaWQ9Ilc1TTBNcENlaGlIenJlU3pOVGN6a2M5ZCI/PiA8eDp4bXBtZXRhIHhtbG5zOng9ImFkb2JlOm5zOm1ldGEvIiB4OnhtcHRrPSJBZG9iZSBYTVAgQ29yZSA1LjMtYzAxMSA2Ni4xNDU2NjEsIDIwMTIvMDIvMDYtMTQ6NTY6MjcgICAgICAgICI+IDxyZGY6UkRGIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+IDxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiIHhtbG5zOnhtcE1NPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvbW0vIiB4bWxuczpzdFJlZj0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL3NUeXBlL1Jlc291cmNlUmVmIyIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOjE5RkU5RkRFMEFBNDExRUE5NUZGQjhDNTUyQ0ZBNzVDIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjE5RkU5RkREMEFBNDExRUE5NUZGQjhDNTUyQ0ZBNzVDIiB4bXA6Q3JlYXRvclRvb2w9IkFkb2JlIFBob3Rvc2hvcCBDUzYgV2luZG93cyI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSI1RjlBMTUwNEREMzM1QjdEMUVBQTVEMjE1RjlDQjhFMSIgc3RSZWY6ZG9jdW1lbnRJRD0iNUY5QTE1MDRERDMzNUI3RDFFQUE1RDIxNUY5Q0I4RTEiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz7/7gAOQWRvYmUAZMAAAAAB/9sAhAALBwcHCAcLCAgLEAoJChASDgsLDhIVERESEREVFBASERESEBQU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\" width=\"300px\">১১ই জুন/২০০৫ খ্রিঃ, ৫৫৭ জন জনবলের সমন্বয়ে প্রাথমিক যাত্রা শুরু হয়।\n        পরবর্তীতে ১৪৮৫ জন জনবল জেলা পুলিশ হতে ন্যাস্ত করণের মাধ্যমে ২৪ টি\n        হাইওয়ে প্রস্তাবিত থানা ও ৪৮ টি হাইওয়ে পুলিশ ফাঁড়িতে জনবল বৃদ্ধি করা\n        হয়।</p>\n\n\n\n    <p style=\"text-align: left;\">২০১২ সালে ১৫০ জন এবং ২০১৫ সালে ৬২৮ জন জনবলের মঞ্জুরী পাওয়া যায়।\n        উক্ত ৬২৮ জন জনবল মঞ্জুরীর প্রেক্ষিতে গাজীপুর রিজিয়নকে বিভক্ত করে সিলেট\n        রিজিয়ন ও মাদারীপুর রিজিয়নকে বিভক্ত করে যশোর রিজিয়ন গঠন করা হয়েছে।</p>\n\n\n\n    <p style=\"text-align: left;\">২০১৭ সালে হাইওয়ে পুলিশ, গাজীপুর রিজিয়নের আওতাধীন জামালপুর জেলার\n        বকশিগঞ্জ নামক স্থানে বকশিগঞ্জ হাইওয়ে থানা নামে ৪১ জন জনবলের সমš^য়ে\n        হাইওয়ে পুলিশের অনুকূলে একটি নতুন থানা সৃষ্টি করা হয়েছে।</p>\n\n\n\n    <p style=\"text-align: left;\">বর্তমানে অঞ্চল সমূহের পরিবর্তে রিজিয়ন নামকরণ করা হয়েছে। বর্তমানে হাইওয়ে পুলিশের মঞ্জুরীকৃত জনবলের সংখ্যা ২৮৬১ জন।</p>\n</div>', '2023-08-21 10:42:45.106', '2024-04-27 09:21:57.750', 2, NULL);
INSERT INTO `zilla_police_pages` (`id`, `title`, `content`, `createdAt`, `updatedAt`, `index`, `status`) VALUES
(6, 'আমাদের লক্ষ্য ও উদ্দেশ্য', '<p style=\"text-align:center\">ভিশন<br>\n(Vision)</p>\n\n\n\n<p style=\"text-align:center\">মহাসড়কে নিরাপদ ও নিবিঘ্নে চলাচল<br> (Ensure safe and secure highways)</p><p style=\"text-align: center;\">----------------------------------------------</p><p style=\"text-align:center\">মিশন<br>\n(Mission)</p>\n\n\n\n<p>হাইওয়ে পুলিশ এ মর্মে দৃঢ় প্রতিজ্ঞা বদ্ধ যে </p>\n\n\n\n<p class=\"aersf\">সড়ক দুর্ঘটনা হ্রাস এবং মানুষের জীবন রক্ষা করতে পদক্ষেপ গ্রহণ;<br>প্রতি বন্ধকতা অপসারণ পূর্বক মহাসড়কে যান চলাচল নিরবচ্ছিন্ন;<br>চালক, হেল্পার এবং সড়ক ব্যবহার কারীদের জন্য সচেতনতা মূলক কর্মসূচির আয়োজন;<br>স্টেক হোল্ডারদের সাথে নিয়ে দায়িত্ব পালন;<br>মহাসড়ক ব্যবহার কারীদের মধ্যে নিরাপত্তা বোধ বৃদ্ধি এবং<br>সর্বোচ্চ নৈতিকতা, সৌজন্য মূলক আচরণএ বং পেশা দারিত্বের সাথে আইন প্রয়োগ করা হবে।</p>\n\n\n\n<p> Highway Police is committed to </p>\n\n\n\n<p class=\"aersf\">take steps to reduce traffic accident and save human lives <br>\nremove obstacles to facilitate uninterrupted traffic flow <br>\ncreate awareness among driver, helper and road users<br>\nwork in partnership with all stakeholders<br>\nenhance sense of security among highway users<br>\nenforce law with integrity, courtesy and the highest standard of professionalism</p><p style=\"text-align: center;\"><br></p><p style=\"text-align: center;\"><br></p>', '2023-08-21 10:44:47.504', '2024-04-27 14:25:59.330', 3, NULL);
INSERT INTO `zilla_police_pages` (`id`, `title`, `content`, `createdAt`, `updatedAt`, `index`, `status`) VALUES
(7, 'সাংগঠনিক কাঠামো', '<p style=\"text-align: center;\"><img src=\"data:image/jpeg;base64,/9j/4AAQSkZJRgABAgEBLAEsAAD/4SHyRXhpZgAATU0AKgAAAAgACAESAAMAAAABAAEAAAEaAAUAAAABAAAAbgEbAAUAAAABAAAAdgEoAAMAAAABAAIAAAExAAIAAAAUAAAAfgEyAAIAAAAUAAAAkuocAAcAAAgMAAAApodpAAQAAAABAAAItAAAEPgAAAEsAAAAAQAAASwAAAABQWRvYmUgUGhvdG9zaG9wIDcuMAAyMDIwOjAzOjEyIDE2OjMxOjMzABzqAAAACAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABKABAAMAAAAB//8AAKACAAQAAAABAAADtqADAAQAAAABAAADIOocAAcAAAgMAAAI6gAAAAAc6gAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYBAwADAAAAAQAGAAABGgAFAAAAAQAAEUYBGwAFAAAAAQAAEU4BKAADAAAAAQACAAACAQAEAAAAAQAAEVYCAgAEAAAAAQAAEJQAAAAAAAAASAAAAAEAAABIAAAAAf/Y/+AAEEpGSUYAAQIBAEgASAAA/+0ADEFkb2JlX0NN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IGVzYz0iQ1IiPz4KPHg6eGFwbWV0YSB4bWxuczp4PSdhZG9iZTpuczptZXRhLycgeDp4YXB0az0nWE1QIHRvb2xraXQgMi44LjItMzMsIGZyYW1ld29yayAxLjUnPgo8cmRmOlJERiB4bWxuczpyZGY9J2h0dHA6Ly93d3cudzMub3JnLzE5OTkvMDIvMjItcmRmLXN5bnRheC1ucyMnIHhtbG5zOmlYPSdodHRwOi8vbnMuYWRvYmUuY29tL2lYLzEuMC8nPgoKIDxyZGY6RGVzY3JpcHRpb24gYWJvdXQ9J3V1aWQ6YTRlNzE0ZGUtNjQ0Yy0xMWVhLTljZWUtOTMwMzBlOGY4OWI0JwogIHhtbG5zOnBkZj0naHR0cDovL25zLmFkb2JlLmNvbS9wZGYvMS4zLyc+CiAgPCEtLSBwZGY6Q3JlYXRvciBpcyBhbGlhc2VkIC0tPgogPC9yZGY6RGVzY3JpcHRpb24+CgogPHJkZjpEZXNjcmlwdGlvbiBhYm91dD0ndXVpZDphNGU3MTRkZS02NDRjLTExZWEtOWNlZS05MzAzMGU4Zjg5YjQnCiAgeG1sbnM6eGFwPSdodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvJwogIHhtbG5zOnhtcD0naHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyc+CiAgPHhhcDpDcmVhdG9yVG9vbD5NaWNyb3NvZnQgV2luZG93cyBQaG90byBWaWV3ZXIgNi4xLjc2MDAuMTYzODU8L3hhcDpDcmVhdG9yVG9vbD4KIDwvcmRmOkRlc2NyaXB0aW9uPgoKIDxyZGY6RGVzY3JpcHRpb24gYWJvdXQ9J3V1aWQ6YTRlNzE0ZGUtNjQ0Yy0xMWVhLTljZWUtOTMwMzBlOGY4OWI0JwogIHhtbG5zOnhhcE1NPSdodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvbW0vJz4KICA8eGFwTU06RG9jdW1lbnRJRD5hZG9iZTpkb2NpZDpwaG90b3Nob3A6Y2M5MGVmODYtNjQ0OS0xMWVhLTljZWUtOTMwMzBlOGY4OWI0PC94YXBNTTpEb2N1bWVudElEPgogPC9yZGY6RGVzY3JpcHRpb24+Cgo8L3JkZjpSREY+CjwveDp4YXBtZXRhPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKPD94cGFja2V0IGVuZD0ndyc/Pv/uACFBZG9iZQBkAAAAAAADABADAAECAAAAAAAAAAAAAAAA/9sAQwABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAgICAgICAgICAgIDAwMDAwMDAwMD/8IACwgDIAO2AQERAP/EAK8AAQABAwUBAQAAAAAAAAAAAAAKBQgJAgMEBgcBCxAAAAUFAAECBAUEAgICAwEAAgMECAkBBQYHCgAQESASExkwQFBgFCEVGBoWFzE4IiM1Jik6EQABAwQBAwIEAgUIBgUIARUBAgMEEQUGBxIAIQgxE0EiFAkQUWEyIxUWIDBxgZFCFxhAUGBSJBmhMyUmKPCxweFiNicK0YJDNDcpcpKyZEY4OcLSY0Q1RUe3Sf/aAAgBAQEAAACfwAAHm1A9oAAAAG3q1ABxuSAAAAbO8AAAAAAAFP5/0AAAAAABs7wAAAAAAAAAAAAAAHz6AAADH1G73uPTeTw6bmRzwgAAAAAAAAAAAAAUStgAAAjMe/et9y7Jw6h1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\" width=\"300px\"></p>', '2024-04-27 09:23:10.730', '2024-04-27 14:27:32.175', 4, NULL);
INSERT INTO `zilla_police_pages` (`id`, `title`, `content`, `createdAt`, `updatedAt`, `index`, `status`) VALUES
(8, 'এরিয়া অফ হাইওয়ে পুলিশ', '<p class=\"MsoNormal\" style=\"margin: 0in 0in 11px; line-height: 107%; font-size: 15px; font-family: &quot;Calibri&quot;, sans-serif; text-align: center;\"><span style=\"font-family: &quot;Nirmala UI&quot;, sans-serif;\">এরিয়া অব হাইওয়ে\n        পুলিশ</span></p><p style=\"text-align: center;\"><br></p>', '2024-04-27 09:24:49.462', '2024-04-28 09:16:20.727', 1, NULL),
(9, 'এক নজরে হাইওয়ে পুলিশ', '<p>হাইওয়ে পুলিশের যাত্রা শুরু ১১/০৬/২০০৫ খ্রিঃ।</p>\n\n\n\n<p>সাধারণ তথ্যাদিঃ</p>\n\n\n\n<p style=\"text-align: center;\">হাইওয়ে পুলিশের যাত্রা শুরু ১১/০৬/২০০৫ খ্রিঃ।</p><p>\nসাধারণ তথ্যাদিঃ\n০\n</p><table width=\"99%\" border=\"1\">\n<tbody>\n<tr>\n<td style=\"text-align: center;\" width=\"55\">ক্রঃ নং</td>\n<td style=\"text-align: center;\" colspan=\"2\" width=\"576\">বিবরণ</td>\n</tr>\n<tr>\n<td width=\"55\">১</td>\n<td width=\"300\">ইউনিটের নাম</td>\n<td style=\"text-align: center;\" width=\"276\">হাইওয়ে পুলিশ হেডকোয়ার্টার্স</td>\n</tr>\n<tr>\n<td width=\"55\">২</td>\n<td width=\"300\">বর্তমানে হাইওয়ে পুলিশ হেডকোয়ার্টার্সের অফিস ঠিকানা</td>\n<td width=\"276\">ঢাকাস্থ রাজধানী উন্নয়ন কর্তৃপক্ষের আওতাধীন বাড়ী নং- ৩৪ (৭ তলা বিল্ডিং), রোড নং- শাহজালাল এভিনিউ, সেক্টর-৪, উত্তরা, ঢাকা-১২৩০।</td>\n</tr>\n<tr>\n<td width=\"55\">৩</td>\n<td width=\"300\">হাইওয়ে রিজিয়ন সমূহ</td>\n<td width=\"276\">০৬ টি</td></tr>\n<tr>\n<td width=\"55\">৪</td>\n<td width=\"300\">হাইওয়ে সার্কেল সমূহ</td>\n<td width=\"276\">১০ টি</td>\n</tr>\n<tr>\n<td width=\"55\">৫</td>\n<td width=\"300\">হাইওয়ে থানা সমূহ</td>\n<td width=\"276\">৩৬ টি</td>\n</tr>\n<tr>\n<td width=\"55\">৬</td>\n<td width=\"300\">হাইওয়ে ফাঁড়ি সমূহ</td>\n<td width=\"276\">৩৭ টি</td>\n</tr>\n<tr>\n<td width=\"55\">৭</td>\n<td width=\"300\">হাইওয়ে মোট থানা/ফাঁড়ির সংখ্যা</td>\n<td width=\"276\">৭৩ টি।</td>\n</tr>\n<tr>\n<td width=\"55\">৮</td>\n<td width=\"300\">হাইওয়ে পুলিশের মঞ্জুরীকৃত জনবল সমূহ</td>\n<td width=\"276\">পূর্বের মঞ্জুরী ২৮২০ জন + ২০১৭ সালে বকশিগঞ্জ হাইওয়ে থানার জনবল মঞ্জুরী ৪১ জন সহ= মোট ২৮৬১ জন</td>\n</tr>\n<tr>\n<td width=\"55\">৯</td>\n<td width=\"300\">হাইওয়ে কমিউনিটি পুলিশীং সংক্রান্ত তথ্য</td>\n<td width=\"276\">সর্বমোট কমিটি সংখ্যা- ১৪০৭ টিও সদস্য সংখ্যা- ২০,৮৩২ জন।</td>\n</tr>\n<tr>\n<td rowspan=\"7\" width=\"55\">১০</td>\n<td colspan=\"2\" width=\"576\">হাইওয়ে পুলিশের ভবন নির্মাণ সংক্রান্ত তথ্যঃ</td>\n</tr>\n<tr>\n<td width=\"300\">বাংলাদেশের বিভিন্ন স্থানে পুলিশ বিভাগের ৫০ টি হাইওয়ে আউটপোস্ট নির্মাণ শীর্ষক প্রকল্পের আওতায় মোট আউটপোস্টের সংখ্যাঃ</td>\n<td width=\"276\">৫০ টি।</td>\n</tr>\n<tr>\n<td width=\"300\">মোট প্রাপ্ত জমির সংখ্যাঃ</td>\n<td width=\"276\">৫০ টি।</td>\n</tr>\n<tr>\n<td width=\"300\">মোট টেন্ডার হয়েছেঃ</td>\n<td width=\"276\">৩২ টি।</td>\n</tr>\n<tr>\n<td width=\"300\">নির্মাণ কাজ সমাপ্ত হয়েছেঃ</td>\n<td width=\"276\">২৮ টি।</td>\n</tr>\n<tr>\n<td width=\"300\">নির্মাণ কাজ চলমানঃ</td>\n<td width=\"276\">০৪ টি।</td>\n</tr>\n<tr>\n<td width=\"300\">টেন্ডার প্রক্রিয়াধীনঃ</td>\n<td width=\"276\">০২ টি।</td></tr></tbody></table>', '2024-04-27 09:25:14.752', '2024-04-27 15:40:12.369', 6, NULL),
(10, 'আইন ও বিধি', '<p style=\"text-align: center;\"><a href=\"http://www.highwaypolice.gov.bd//wp-content/uploads/2019/11/Bangladesg-Gagat-Highway-Police-2009-1.pdf\" target=\"_blank\" rel=\"noopener noreferrer\">Bangladesh Gagat Highway Police-2009</a></p>', '2024-04-27 09:25:43.117', '2024-04-27 15:41:45.155', 7, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `zilla_police_sub_pages`
--

CREATE TABLE `zilla_police_sub_pages` (
  `id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pageId` int NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `index` int DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_prisma_migrations`
--

CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checksum` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logs` text COLLATE utf8mb4_unicode_ci,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `applied_steps_count` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `_prisma_migrations`
--

INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES
('03def74c-af57-4a00-97bc-dae2b5457d51', 'fa639eaa3e04fcc779d67715bd7ae2e8ecccae5db3534e58ef43d6153bee478e', '2023-08-27 11:18:02.547', '20230827111802_init', NULL, NULL, '2023-08-27 11:18:02.534', 1),
('05539107-579d-4204-b7de-8b318c33c4a0', '84398d3f411aeda61cdce2c6a2e8d28e4c9ac267d8204d5d0386e685bd9b57ef', '2023-08-19 06:45:45.996', '20230819064545_init', NULL, NULL, '2023-08-19 06:45:45.974', 1),
('077b3bcf-25e2-4ef1-9956-9dfc86b5ef95', '3e248b87780fb11c728f5f94a557d67383ea309a5e835264737bf953e127f61b', '2023-11-08 06:43:53.025', '20231108064352_init', NULL, NULL, '2023-11-08 06:43:53.016', 1),
('096d7d59-dfdb-4726-aa65-0517705ebe5e', '89b2218e79b497411333ebe6f7a1f6e1dce4989bbbb6028d8cdcd19bb3b82ba6', '2023-09-21 06:58:31.158', '20230921065831_init', NULL, NULL, '2023-09-21 06:58:31.113', 1),
('13883ab4-7104-4fbc-b0e3-dab5f5ca86a9', '37a6e228ce74d39025d278c71d675eac9c4abc754c99acfa5c4be58ff0295f34', '2023-11-08 08:37:38.890', '20231108083738_init', NULL, NULL, '2023-11-08 08:37:38.863', 1),
('15a03e4b-fcec-448c-af1c-a9edb083dbf5', '989287e7a8a7ebfa8200fd8020c577fc358964159435ec4f965c5b349d67d7d2', '2023-09-10 10:32:20.177', '20230910103220_init', NULL, NULL, '2023-09-10 10:32:20.127', 1),
('1aebc2e7-150b-4f53-ac0b-20118e97a4d8', 'b9c720c539a15da3bfedb367f31616eeb15458868fed0397d9f3c83122369a4f', '2023-10-08 06:04:25.395', '20231008060425_init', NULL, NULL, '2023-10-08 06:04:25.327', 1),
('1b33b6b8-29e2-41c5-84bb-0e0383ef14d7', 'ee9bc8a70682f0c623c7da4e0e4ceb4fdeaaba9d42b2e3561a19745b7b1a2f25', '2023-08-17 11:14:35.762', '20230817111242_works', NULL, NULL, '2023-08-17 11:14:35.711', 1),
('22bf2bd1-721a-4d25-9fe1-fbef10b47f9f', 'e33c1ec76df9f60607d757abab3d7deb98507fbd81d269b4e6c543f2e77b9209', '2023-09-20 07:08:25.490', '20230920070825_init', NULL, NULL, '2023-09-20 07:08:25.439', 1),
('2693cc55-5c32-47d2-b606-cf4028e83773', 'c827112c2e355dd2ec1cc03660af40db4669f1fbab84b94f8ab30bc7ea311a5b', '2023-08-16 10:29:04.385', '20230816102904_init', NULL, NULL, '2023-08-16 10:29:04.368', 1),
('2c38add8-647c-4e2b-8f86-822665ae3cb9', '0485f329dc2e16e4af8cc03e79b1bdf7cbca3eb796ea770e9efb102bc0a00c09', '2023-09-04 06:43:37.671', '20230904064337_init', NULL, NULL, '2023-09-04 06:43:37.661', 1),
('2cd140b2-dde5-406b-b40e-f4229eb82de0', '7a9c587a3916f3b763b4111f73c2b05938f498d74a404be406d310a604a0914f', '2023-09-21 09:09:30.651', '20230921090930_init', NULL, NULL, '2023-09-21 09:09:30.607', 1),
('2dc4c571-11b7-49bb-9fe2-c280b879764f', '79612c62afff4e23b25a2c60fcb32aaaa0b746a60b3aabc2c2324a8d020ba9f0', '2023-09-21 07:10:00.537', '20230921071000_init', NULL, NULL, '2023-09-21 07:10:00.467', 1),
('319046ff-673f-41ab-bfae-83c5be82d8b7', '78cef961cebd6765bc868d3d287111bf5e6e90c2673c12d9b746bf1ff25540d5', '2023-08-21 04:46:13.124', '20230821044613_init', NULL, NULL, '2023-08-21 04:46:13.029', 1),
('3ad508e0-8aaa-4da7-8443-f04687f4c415', 'bf60bed037ec168858e39b7cd686aa87f76710eed609895e7a790a0e0e34dba4', '2023-09-10 05:56:58.787', '20230910055658_init', NULL, NULL, '2023-09-10 05:56:58.694', 1),
('3b2be4f5-1a2f-4765-ba6d-ab85fde71953', 'c4eff73d7c871d43fb5e66d9bf3a5e522265a1d0fc28ea0d59ff6ee415dcbf20', '2023-11-08 09:08:12.175', '20231108090812_init', NULL, NULL, '2023-11-08 09:08:12.162', 1),
('418a1db0-76cb-429e-9c3b-cd223b83772e', '33cbed6cc7622eacf639d62c46457fb22b578281d95aae6e1bdd186b8553eedf', '2023-09-09 09:12:26.520', '20230909091226_init', NULL, NULL, '2023-09-09 09:12:26.460', 1),
('45bea059-07dc-4bd3-b8a1-11af6a9b57cc', 'fc186cca7d2b6d65e34352945caacb97d6649c12b50918db57109078bf14e4f2', '2023-10-05 06:26:07.502', '20231005062607_init', NULL, NULL, '2023-10-05 06:26:07.405', 1),
('48642135-a16b-4441-8fc5-d0ba2fd02a77', '0a7dc11e53420b3a5c9a11dc206d62a24ce7bc6f848a8b1345f44d5a3883010f', '2023-08-17 05:44:02.681', '20230817054402_init', NULL, NULL, '2023-08-17 05:44:02.630', 1),
('4d80c882-e7f0-4e7a-a851-2f3a429d4b8d', '4d86c1db0d0210c2785b1ebfced6f5cfc87b527e5ae8c1a025542d4f5d4edb60', '2023-09-19 09:33:06.464', '20230919093306_init', NULL, NULL, '2023-09-19 09:33:06.454', 1),
('539aaa30-1c0d-46e3-9088-657b317d4c88', '20cce0a301f93995b7c99e639d17a5b95714427ec78eb318c0bcc443d9f46165', '2023-10-12 05:15:59.575', '20231012051559_init', NULL, NULL, '2023-10-12 05:15:59.564', 1),
('5899aed0-ee06-4c8e-9560-fe086ae8464b', '300006efc2b633615c2521a6556f95e9eeb62b430758e77f4f01f302add9b636', '2023-09-25 06:01:01.527', '20230925060101_init', NULL, NULL, '2023-09-25 06:01:01.497', 1),
('5b94c292-102e-49af-81ba-5832b8cc8969', 'f525a47271084db220407e4f17c2240ffed9d52e4b5603c3eb7512de95cecae2', '2023-11-02 10:47:56.080', '20231102104756_init', NULL, NULL, '2023-11-02 10:47:56.052', 1),
('5f253fc4-e31a-421f-bfce-ab6b31464aa2', '7fab0ba664fc60200b2ce96f90ab064652ca38e8d7d18de1fd53040c9a5c5f94', '2023-08-21 09:50:58.108', '20230821095058_init', NULL, NULL, '2023-08-21 09:50:58.054', 1),
('6098f86f-b144-42ab-9401-bfac87ec313e', '09501a369aa8eeb29c10720b90be59d8923c054e46315d0da3156802037db54c', '2023-08-16 05:19:01.307', '20230816051901_init', NULL, NULL, '2023-08-16 05:19:01.294', 1),
('687f4188-d03c-40ec-8c53-1a56051a4c9a', 'cf52b1fd1bc166e3fdc292e62a9db1a925c0b368abfe90fa0142629c6aaa25f4', '2023-09-30 12:29:17.298', '20230930122917_init', NULL, NULL, '2023-09-30 12:29:17.272', 1),
('69a0913f-6777-42e4-af32-4d0896926ed3', '00e7838e8fef3dec90b9f538f5078fa3c9999e4b54d8b99fb66223ffba1bdf92', '2023-08-14 06:18:09.234', '20230813053901_init', NULL, NULL, '2023-08-14 06:18:09.206', 1),
('6c481ebb-3b30-4779-9925-b171c3980981', '90dac0f524db40bd85a75d4def2adf4881bdb90412567d2cbdcfe34d0ea75e4d', '2023-09-02 09:41:05.585', '20230902094105_init', NULL, NULL, '2023-09-02 09:41:05.537', 1),
('6da621cd-63e1-4787-87cd-df51c74e2ff7', 'c17e142365f52979dc280d5c93dbfbcfe7efeec9fa2286197ed9b7135b000460', '2023-09-21 08:54:39.375', '20230921085439_init', NULL, NULL, '2023-09-21 08:54:39.316', 1),
('74e1d12f-ddfe-46a0-b7ae-df0c6652a7ba', '1f8cef12a01fff55bf3f784a3b5060c7f92374b7e6c20bc2f76f29330369b17c', '2023-09-04 07:17:40.325', '20230904071740_init', NULL, NULL, '2023-09-04 07:17:40.309', 1),
('76225f2d-642b-42dd-8515-7c59d7bd0f5f', '7bca51170db5de05537141e897977e44fdf6c01537c24f112752788abf91cd92', '2023-10-01 11:26:42.856', '20231001112642_init', NULL, NULL, '2023-10-01 11:26:42.750', 1),
('78d5fa7f-d4c2-465b-9a29-bbd146bd9fe6', '3cf374c5058d2d5e68081cba6c7c2dd6bcc005352769f96d46f2ce0a2e17d706', '2023-09-09 12:00:52.805', '20230909120052_init', NULL, NULL, '2023-09-09 12:00:52.639', 1),
('7b0508d7-683c-4ed1-ada7-99087041cf00', 'b62021682b87b276b855a26c640556494ef9da6ef37dda661a2202fdaa632a86', '2023-08-14 06:18:09.410', '20230814061809_init', NULL, NULL, '2023-08-14 06:18:09.397', 1),
('7d34bfa5-a252-4ddf-b14b-ecf01d0a2158', '4b7f5b635cf42d5e633ab67c6b1b2f3a2d9813896dc8f28896ce6421a81a558b', '2023-09-04 09:12:35.747', '20230904091235_init', NULL, NULL, '2023-09-04 09:12:35.736', 1),
('7d8c1600-523f-4f03-aadd-3b84969d64a7', 'a59e6ad1cb0464f62712b33109d28ac68918f9b9dbec055b83c4162028483d57', '2023-09-02 04:41:28.078', '20230902044128_init', NULL, NULL, '2023-09-02 04:41:28.065', 1),
('857c0d98-d357-4a9e-9319-e81d3ebb78a2', '1e83a802fa7abeaa02bcf08004f76bd0ced21196024ed27afe9a2673ec75319b', '2023-10-09 08:55:25.886', '20231009085525_init', NULL, NULL, '2023-10-09 08:55:25.762', 1),
('87b01aea-9d45-4dba-a2a8-cf9bbc5ee12d', '079420062bfdb4823c39a4539052c3c6698bc7f0550b0f509b0f6002b7ef33bf', '2023-08-14 10:24:35.216', '20230814102435_init', NULL, NULL, '2023-08-14 10:24:35.205', 1),
('88857ae3-2354-40fa-8c90-77407d2a965b', 'db1c3833dff9ccc730b11a0398ba0171dcfd9889b76323ab96572dd836e6c791', '2023-08-28 06:56:14.543', '20230828065614_init', NULL, NULL, '2023-08-28 06:56:14.529', 1),
('88a54881-6c56-4980-b05d-b20573993517', 'ac5b69bbf9e372d6fe89d6284715615135cafdc4a2bd4b3d17cc551ee90aff34', '2023-08-20 05:22:17.080', '20230820052217_init', NULL, NULL, '2023-08-20 05:22:17.049', 1),
('8bafe562-4733-437b-a77d-4d8d85e930ed', '838a9a32f036190d97bb468d6d01e893fd32bbae98acfb7e6e42f7756888c203', '2023-09-02 06:24:05.777', '20230902062405_init', NULL, NULL, '2023-09-02 06:24:05.766', 1),
('9abfb81d-1c73-44b7-bdcc-dbdb84e44b90', '26c843549e204724adc0dbf82c6f002b89cc0f1e45efb78b8408ad48e573e2fb', '2023-08-21 09:52:57.260', '20230821095257_init', NULL, NULL, '2023-08-21 09:52:57.212', 1),
('a17a3557-8ea1-4674-b282-f501e00b83a4', 'ddfc69b5a44be1f52cd08357ed94e0c97a7f29375054ba0e033480e9aa89c5bb', '2023-11-02 09:44:42.417', '20231102094442_init', NULL, NULL, '2023-11-02 09:44:42.400', 1),
('a1e15908-1b54-4dea-b045-5d1280b35f92', '691b8251182f99061a674195b6a3d731db1ac6e5cc377db87ca67b2135200ed6', '2023-08-19 06:43:20.839', '20230819064320_init', NULL, NULL, '2023-08-19 06:43:20.815', 1),
('a2105f8a-6866-469a-bece-daf4f9aa793d', '8b652ca6998adb020f877e7d099c30be4f384d5c1d354b32d8868e5fccf55863', '2023-08-29 11:10:43.760', '20230829111043_init', NULL, NULL, '2023-08-29 11:10:43.703', 1),
('a2fd01a2-cac5-4ac0-9ae8-236b4bf8091c', 'b16f1f96e501ef3dd82d95c0a7c4feeef1e4d5d4b5318a738906dd5891b59387', '2023-09-25 06:14:55.195', '20230925061455_init', NULL, NULL, '2023-09-25 06:14:55.184', 1),
('a9c8e4ad-c831-4f3e-9adf-82f2d75687ab', 'f277c4eff80e72a5e3b3f7f0430515801fdf58170eae78ce39fedc05cbbdad18', '2023-08-14 11:38:38.587', '20230814113838_init', NULL, NULL, '2023-08-14 11:38:38.574', 1),
('a9ec773d-9055-445f-a656-c05d4889bcd8', '5bd6d20207d070a1b8e339170d5dbc03e3ac3c3a66d3e478a15d0d3c086375e8', '2023-11-02 06:02:33.778', '20231102060233_init', NULL, NULL, '2023-11-02 06:02:33.768', 1),
('ac071d18-5345-4fbc-a099-5427bdf19939', 'e157a98fafa8a4fb2e8837dc42fe0dee645650807d14a6f9d23a035964fd87dd', '2023-08-31 10:26:48.325', '20230831102648_init', NULL, NULL, '2023-08-31 10:26:48.245', 1),
('b0093900-656f-46f7-b7f6-ee4f1ffb6b1e', '842f34bba7a769a9d5c3b3865238836ba57cc1b68566b7764db0737abc6a66ae', '2023-08-20 05:19:55.824', '20230820051955_init', NULL, NULL, '2023-08-20 05:19:55.749', 1),
('b2e317f9-0241-477e-9f2b-c079c12817dc', '6e89b1cb053ad2c01cebbea1857edbf9bd5cdd7a0a7b08939e9dd506540b7df8', '2023-08-27 09:13:55.258', '20230827091355_init', NULL, NULL, '2023-08-27 09:13:55.201', 1),
('b2f92b2d-13dd-4338-8ba6-aea7790d08d4', '2b2872f4fafd5bc603efbabd6e16531f2ed4cfcc7dc581fa37e57c19074fc9bf', '2023-08-19 05:47:22.154', '20230819054722_init', NULL, NULL, '2023-08-19 05:47:22.080', 1),
('ca8a5893-bd6f-44df-bf70-41d884c617a7', '84398d3f411aeda61cdce2c6a2e8d28e4c9ac267d8204d5d0386e685bd9b57ef', '2023-08-20 05:22:58.824', '20230820052258_init', NULL, NULL, '2023-08-20 05:22:58.793', 1),
('cdc7fcec-a19b-49ea-90d1-a50300f2e6f2', '3e7d17b5ca567ae29ad2e14c2eb27b5a5aed969d47ea6aa0f5679f37546a61b0', '2023-08-30 04:41:07.715', '20230830044107_init', NULL, NULL, '2023-08-30 04:41:07.647', 1),
('ce224a5f-cc60-4064-8c7e-a474fadf86c5', '8a7061aee14281ac2428f34451c6e163c0c136b8d16a04f176e0f9d7d07dca17', '2023-11-02 12:15:19.654', '20231102121519_init', NULL, NULL, '2023-11-02 12:15:19.642', 1),
('d219e9a3-6a73-4796-a959-534aabec00cd', '5cf7fa8ca49695e5d1b00195c8cee93aa5a42b55ef207be40aba6c69c9019b85', '2023-08-27 11:00:30.283', '20230827110030_init', NULL, NULL, '2023-08-27 11:00:30.265', 1),
('d396cd81-b1d9-4032-9249-4b11057ec30f', '03aba96cfe8338bdb5d4aab7753f3ff8c3853ec17de0bfbf6c98acf09f294875', '2023-11-02 11:54:37.885', '20231102115437_init', NULL, NULL, '2023-11-02 11:54:37.870', 1),
('d7b47346-9a70-493a-8081-1e624645b253', 'b8dd37967e3b3e4d8028f148a04413b5206c7cc8c4b74cf2cd446008cf68ccdf', '2023-09-19 09:28:25.110', '20230919092825_init', NULL, NULL, '2023-09-19 09:28:25.099', 1),
('dbbda938-cf6d-421a-b581-debc2897b820', '85f5faf99655ac1df8ab4516036fd4b232efaaab4c59d5fbe8f62bf4aab7c74a', '2023-08-27 10:54:49.886', '20230827105449_init', NULL, NULL, '2023-08-27 10:54:49.873', 1),
('dee7770f-3400-4c27-9fa2-7f73b21282a7', '74bd56ca4430db6705cd9b69a4859d8d9ce9726d941d0c71c5926cf2a31c09f6', '2023-11-02 09:59:43.819', '20231102095943_init', NULL, NULL, '2023-11-02 09:59:43.808', 1),
('dfefb797-40f8-44ca-b73d-0f0369e22519', '30e21cff4b9104e1d5e96d161323f719d8af0d2a4fdb5b3d81f44bdce2c345fa', '2023-08-28 11:13:42.255', '20230828111342_init', NULL, NULL, '2023-08-28 11:13:42.102', 1),
('e0eff29d-0678-40ac-87a0-4c5379bdca0c', 'a751444397dc4efcfccd5988a749975133b93e44012dcc56505459ef5080ddb3', '2023-09-03 10:18:12.934', '20230903101812_init', NULL, NULL, '2023-09-03 10:18:12.876', 1),
('e2d35f58-a14f-4813-86d3-6977534b9b41', '135c407e85d3403ad46ffc2ff1d0b93d07761474246e6426e2c542e1d9fdcb00', '2023-08-20 11:30:24.615', '20230820113024_init', NULL, NULL, '2023-08-20 11:30:24.524', 1),
('e42dcd10-9f80-4b51-8ce3-cf2e21acf14d', 'e310a9cafdebf0d48bc73fde430aa6caf4458f6fd35d0c5b7f9126e7e88e95f6', '2023-09-30 12:19:04.974', '20230930121904_init', NULL, NULL, '2023-09-30 12:19:04.722', 1),
('e4a51df5-67e2-43f6-b192-48db094dd304', 'a08526e5f71cc229483970df5bf4b2f88c77b822234c3a231086087fcc085361', '2023-09-04 04:23:42.907', '20230904042342_init', NULL, NULL, '2023-09-04 04:23:42.896', 1),
('e616ed8d-82cc-4469-bb09-177e91a58736', '5fc431e9bf863b56bc46cb7b1c982d318d78dce4acdc72f9b742a782926ed444', '2023-11-02 06:43:03.250', '20231102064303_init', NULL, NULL, '2023-11-02 06:43:03.221', 1),
('ea1e488b-5d4f-4c9e-ac3d-cd534f129985', '4738d19ee62fbf8b1c7a852e3542cd61a5ce2ec35ebc7b6f2d658e2c90bd4780', '2023-09-02 06:40:46.940', '20230902064046_init', NULL, NULL, '2023-09-02 06:40:46.928', 1),
('ef3ce88a-56e1-40ea-825c-4d87e60c47fd', '94f27bf3a561f93ca45349a379e3c8977ff665e3b5911ccf0fd97d4f50853176', '2023-08-16 04:45:12.109', '20230816044238_bottom_news', NULL, NULL, '2023-08-16 04:45:12.096', 1),
('fa795738-a83e-45b4-8aa1-f30374d8a1c4', '4d9e5b5895e52e555f330c1742f67aac999ffa3345236c53b294df203c3fb7c5', '2023-09-04 10:05:53.307', '20230904100553_init', NULL, NULL, '2023-09-04 10:05:53.276', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities_pages`
--
ALTER TABLE `activities_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activities_sub_pages`
--
ALTER TABLE `activities_sub_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Activities_Sub_Pages_pageId_fkey` (`pageId`);

--
-- Indexes for table `activity_slider`
--
ALTER TABLE `activity_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `administration_pages`
--
ALTER TABLE `administration_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `administration_sub_pages`
--
ALTER TABLE `administration_sub_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `administration_Sub_Pages_pageId_fkey` (`pageId`);

--
-- Indexes for table `bitnews`
--
ALTER TABLE `bitnews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `BitNews_officerId_fkey` (`officerId`);

--
-- Indexes for table `bit_officers`
--
ALTER TABLE `bit_officers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Bit_Officers_thanaId_fkey` (`thanaId`);

--
-- Indexes for table `bit_police_pages`
--
ALTER TABLE `bit_police_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bottom_news`
--
ALTER TABLE `bottom_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `button_links`
--
ALTER TABLE `button_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_address`
--
ALTER TABLE `contact_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_person`
--
ALTER TABLE `contact_person`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crime_mangement`
--
ALTER TABLE `crime_mangement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dig`
--
ALTER TABLE `dig`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `directoris`
--
ALTER TABLE `directoris`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Directoris_categoryId_fkey` (`categoryId`),
  ADD KEY `Directoris_subCategoryId_fkey` (`subCategoryId`);

--
-- Indexes for table `directory_categories`
--
ALTER TABLE `directory_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `directory_sub_categories`
--
ALTER TABLE `directory_sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Directory_Sub_Categories_categoryId_fkey` (`categoryId`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exsp`
--
ALTER TABLE `exsp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ExSp_designationId_fkey` (`designationId`);

--
-- Indexes for table `ex_police_super`
--
ALTER TABLE `ex_police_super`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ex_unit_force`
--
ALTER TABLE `ex_unit_force`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Ex_Unit_Force_unitId_fkey` (`unitId`),
  ADD KEY `Ex_Unit_Force_sub_unitId_fkey` (`sub_unitId`);

--
-- Indexes for table `footer_branding`
--
ALTER TABLE `footer_branding`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_data`
--
ALTER TABLE `footer_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Footer_Data_headingId_fkey` (`headingId`);

--
-- Indexes for table `footer_heading`
--
ALTER TABLE `footer_heading`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_gallery`
--
ALTER TABLE `image_gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Image_Gallery_imageCategoryId_fkey` (`imageCategoryId`);

--
-- Indexes for table `image_gallery_category`
--
ALTER TABLE `image_gallery_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `important_data`
--
ALTER TABLE `important_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Important_Data_headingId_fkey` (`headingId`);

--
-- Indexes for table `important_heading`
--
ALTER TABLE `important_heading`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `important_links`
--
ALTER TABLE `important_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `latest_news`
--
ALTER TABLE `latest_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `megamenu`
--
ALTER TABLE `megamenu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `MegaMenu_parent_id_fkey` (`parent_id`);

--
-- Indexes for table `news_pages`
--
ALTER TABLE `news_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_pages_post`
--
ALTER TABLE `news_pages_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `News_Pages_Post_pageId_fkey` (`pageId`);

--
-- Indexes for table `news_sub_pages`
--
ALTER TABLE `news_sub_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `News_Sub_Pages_pageId_fkey` (`pageId`);

--
-- Indexes for table `news_sub_pages_post`
--
ALTER TABLE `news_sub_pages_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `News_Sub_Pages_Post_pageId_fkey` (`pageId`);

--
-- Indexes for table `noticecategoryrelation`
--
ALTER TABLE `noticecategoryrelation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `NoticeCategoryRelation_noticeId_categoryId_key` (`noticeId`,`categoryId`),
  ADD KEY `NoticeCategoryRelation_categoryId_fkey` (`categoryId`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice_categories`
--
ALTER TABLE `notice_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `officers`
--
ALTER TABLE `officers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_visitor_counter`
--
ALTER TABLE `page_visitor_counter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recent_activity`
--
ALTER TABLE `recent_activity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Recent_Activity_userId_fkey` (`userId`);

--
-- Indexes for table `reset_token`
--
ALTER TABLE `reset_token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `right_others`
--
ALTER TABLE `right_others`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Role_role_key` (`role`);

--
-- Indexes for table `service_pages`
--
ALTER TABLE `service_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_sub_pages`
--
ALTER TABLE `service_sub_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Service_Sub_Pages_pageId_fkey` (`pageId`);

--
-- Indexes for table `sp`
--
ALTER TABLE `sp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_units`
--
ALTER TABLE `sub_units`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Sub_Units_unitId_fkey` (`unitId`);

--
-- Indexes for table `thana`
--
ALTER TABLE `thana`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `top_banner`
--
ALTER TABLE `top_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `top_slider`
--
ALTER TABLE `top_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unit_force`
--
ALTER TABLE `unit_force`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Unit_Force_unitId_fkey` (`unitId`),
  ADD KEY `Unit_Force_sub_unitId_fkey` (`sub_unitId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `User_email_key` (`email`),
  ADD UNIQUE KEY `User_phone_key` (`phone`),
  ADD KEY `User_role_id_fkey` (`role_id`);

--
-- Indexes for table `video_gallery`
--
ALTER TABLE `video_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitor_counter`
--
ALTER TABLE `visitor_counter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Works_workSectionId_fkey` (`workSectionId`);

--
-- Indexes for table `work_document_section`
--
ALTER TABLE `work_document_section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zilla_police_pages`
--
ALTER TABLE `zilla_police_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zilla_police_sub_pages`
--
ALTER TABLE `zilla_police_sub_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Zilla_Police_Sub_Pages_pageId_fkey` (`pageId`);

--
-- Indexes for table `_prisma_migrations`
--
ALTER TABLE `_prisma_migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities_pages`
--
ALTER TABLE `activities_pages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `activities_sub_pages`
--
ALTER TABLE `activities_sub_pages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `activity_slider`
--
ALTER TABLE `activity_slider`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `administration_pages`
--
ALTER TABLE `administration_pages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `administration_sub_pages`
--
ALTER TABLE `administration_sub_pages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bitnews`
--
ALTER TABLE `bitnews`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bit_officers`
--
ALTER TABLE `bit_officers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `bit_police_pages`
--
ALTER TABLE `bit_police_pages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bottom_news`
--
ALTER TABLE `bottom_news`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `button_links`
--
ALTER TABLE `button_links`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `contact_address`
--
ALTER TABLE `contact_address`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_person`
--
ALTER TABLE `contact_person`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `crime_mangement`
--
ALTER TABLE `crime_mangement`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dig`
--
ALTER TABLE `dig`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `directoris`
--
ALTER TABLE `directoris`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `directory_categories`
--
ALTER TABLE `directory_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `directory_sub_categories`
--
ALTER TABLE `directory_sub_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `exsp`
--
ALTER TABLE `exsp`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ex_police_super`
--
ALTER TABLE `ex_police_super`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ex_unit_force`
--
ALTER TABLE `ex_unit_force`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `footer_branding`
--
ALTER TABLE `footer_branding`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `footer_data`
--
ALTER TABLE `footer_data`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `footer_heading`
--
ALTER TABLE `footer_heading`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `image_gallery`
--
ALTER TABLE `image_gallery`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `image_gallery_category`
--
ALTER TABLE `image_gallery_category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `important_data`
--
ALTER TABLE `important_data`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `important_heading`
--
ALTER TABLE `important_heading`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `important_links`
--
ALTER TABLE `important_links`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `latest_news`
--
ALTER TABLE `latest_news`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `megamenu`
--
ALTER TABLE `megamenu`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `news_pages`
--
ALTER TABLE `news_pages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news_pages_post`
--
ALTER TABLE `news_pages_post`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news_sub_pages`
--
ALTER TABLE `news_sub_pages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news_sub_pages_post`
--
ALTER TABLE `news_sub_pages_post`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `noticecategoryrelation`
--
ALTER TABLE `noticecategoryrelation`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `notice_categories`
--
ALTER TABLE `notice_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `officers`
--
ALTER TABLE `officers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `page_visitor_counter`
--
ALTER TABLE `page_visitor_counter`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `recent_activity`
--
ALTER TABLE `recent_activity`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reset_token`
--
ALTER TABLE `reset_token`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `right_others`
--
ALTER TABLE `right_others`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `service_pages`
--
ALTER TABLE `service_pages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `service_sub_pages`
--
ALTER TABLE `service_sub_pages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sp`
--
ALTER TABLE `sp`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sub_units`
--
ALTER TABLE `sub_units`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `thana`
--
ALTER TABLE `thana`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `top_banner`
--
ALTER TABLE `top_banner`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `top_slider`
--
ALTER TABLE `top_slider`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `unit_force`
--
ALTER TABLE `unit_force`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `video_gallery`
--
ALTER TABLE `video_gallery`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `visitor_counter`
--
ALTER TABLE `visitor_counter`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `works`
--
ALTER TABLE `works`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `work_document_section`
--
ALTER TABLE `work_document_section`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `zilla_police_pages`
--
ALTER TABLE `zilla_police_pages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `zilla_police_sub_pages`
--
ALTER TABLE `zilla_police_sub_pages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activities_sub_pages`
--
ALTER TABLE `activities_sub_pages`
  ADD CONSTRAINT `Activities_Sub_Pages_pageId_fkey` FOREIGN KEY (`pageId`) REFERENCES `activities_pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `administration_sub_pages`
--
ALTER TABLE `administration_sub_pages`
  ADD CONSTRAINT `administration_Sub_Pages_pageId_fkey` FOREIGN KEY (`pageId`) REFERENCES `administration_pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bitnews`
--
ALTER TABLE `bitnews`
  ADD CONSTRAINT `BitNews_officerId_fkey` FOREIGN KEY (`officerId`) REFERENCES `bit_officers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bit_officers`
--
ALTER TABLE `bit_officers`
  ADD CONSTRAINT `Bit_Officers_thanaId_fkey` FOREIGN KEY (`thanaId`) REFERENCES `thana` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `directoris`
--
ALTER TABLE `directoris`
  ADD CONSTRAINT `Directoris_categoryId_fkey` FOREIGN KEY (`categoryId`) REFERENCES `directory_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Directoris_subCategoryId_fkey` FOREIGN KEY (`subCategoryId`) REFERENCES `directory_sub_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `directory_sub_categories`
--
ALTER TABLE `directory_sub_categories`
  ADD CONSTRAINT `Directory_Sub_Categories_categoryId_fkey` FOREIGN KEY (`categoryId`) REFERENCES `directory_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `exsp`
--
ALTER TABLE `exsp`
  ADD CONSTRAINT `ExSp_designationId_fkey` FOREIGN KEY (`designationId`) REFERENCES `administration_pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ex_unit_force`
--
ALTER TABLE `ex_unit_force`
  ADD CONSTRAINT `Ex_Unit_Force_sub_unitId_fkey` FOREIGN KEY (`sub_unitId`) REFERENCES `sub_units` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Ex_Unit_Force_unitId_fkey` FOREIGN KEY (`unitId`) REFERENCES `units` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `footer_data`
--
ALTER TABLE `footer_data`
  ADD CONSTRAINT `Footer_Data_headingId_fkey` FOREIGN KEY (`headingId`) REFERENCES `footer_heading` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `image_gallery`
--
ALTER TABLE `image_gallery`
  ADD CONSTRAINT `Image_Gallery_imageCategoryId_fkey` FOREIGN KEY (`imageCategoryId`) REFERENCES `image_gallery_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `important_data`
--
ALTER TABLE `important_data`
  ADD CONSTRAINT `Important_Data_headingId_fkey` FOREIGN KEY (`headingId`) REFERENCES `important_heading` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `megamenu`
--
ALTER TABLE `megamenu`
  ADD CONSTRAINT `MegaMenu_parent_id_fkey` FOREIGN KEY (`parent_id`) REFERENCES `megamenu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `news_pages_post`
--
ALTER TABLE `news_pages_post`
  ADD CONSTRAINT `News_Pages_Post_pageId_fkey` FOREIGN KEY (`pageId`) REFERENCES `news_pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `news_sub_pages`
--
ALTER TABLE `news_sub_pages`
  ADD CONSTRAINT `News_Sub_Pages_pageId_fkey` FOREIGN KEY (`pageId`) REFERENCES `news_pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `news_sub_pages_post`
--
ALTER TABLE `news_sub_pages_post`
  ADD CONSTRAINT `News_Sub_Pages_Post_pageId_fkey` FOREIGN KEY (`pageId`) REFERENCES `news_sub_pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `noticecategoryrelation`
--
ALTER TABLE `noticecategoryrelation`
  ADD CONSTRAINT `NoticeCategoryRelation_categoryId_fkey` FOREIGN KEY (`categoryId`) REFERENCES `notice_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `NoticeCategoryRelation_noticeId_fkey` FOREIGN KEY (`noticeId`) REFERENCES `notices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `service_sub_pages`
--
ALTER TABLE `service_sub_pages`
  ADD CONSTRAINT `Service_Sub_Pages_pageId_fkey` FOREIGN KEY (`pageId`) REFERENCES `service_pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sub_units`
--
ALTER TABLE `sub_units`
  ADD CONSTRAINT `Sub_Units_unitId_fkey` FOREIGN KEY (`unitId`) REFERENCES `units` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `unit_force`
--
ALTER TABLE `unit_force`
  ADD CONSTRAINT `Unit_Force_sub_unitId_fkey` FOREIGN KEY (`sub_unitId`) REFERENCES `sub_units` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Unit_Force_unitId_fkey` FOREIGN KEY (`unitId`) REFERENCES `units` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `User_role_id_fkey` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `works`
--
ALTER TABLE `works`
  ADD CONSTRAINT `Works_workSectionId_fkey` FOREIGN KEY (`workSectionId`) REFERENCES `work_document_section` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `zilla_police_sub_pages`
--
ALTER TABLE `zilla_police_sub_pages`
  ADD CONSTRAINT `Zilla_Police_Sub_Pages_pageId_fkey` FOREIGN KEY (`pageId`) REFERENCES `zilla_police_pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
