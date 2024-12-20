-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2024 at 08:35 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `net`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `link`, `designation`, `ads`, `type`, `facebook`, `twitter`, `linkedin`, `instagram`, `created_at`, `updated_at`) VALUES
(118, 'Md Nazrul Islam', 'CEO', 'public/ads/657e7471f1e0f.jpg', 1, 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://instagram.com', NULL, NULL),
(119, 'Md Rakibul Islam', 'Executive Member', 'public/ads/657ee235cc57d.jpeg', 1, 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://instagram.com', NULL, NULL),
(120, 'Ms. Jannatul Ferdaus', 'Manageing Drirector', 'public/ads/657ee2c7b105a.png', 1, 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://instagram.com', NULL, NULL),
(121, 'Abdur Rahman', 'Vice-Chairman', 'public/ads/657ee308af652.png', 1, 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://instagram.com', NULL, NULL),
(122, 'Abdur Rahman', 'Vice-Chairman', 'public/ads/657ee5a6393b6.png', 1, 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/profile.php?id=61550511971497&ref=embed_page', 'https://instagram.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_bn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soft_delete` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_bn`, `category_en`, `soft_delete`, `created_at`, `updated_at`) VALUES
(1, 'ওয়াই-ফাই', 'ওয়াই-ফাই', '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `district_bn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `district_bn`, `district_en`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka', 'ঢাকা', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `livetv`
--

CREATE TABLE `livetv` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `embed_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `livetv`
--

INSERT INTO `livetv` (`id`, `embed_code`, `status`, `created_at`, `updated_at`) VALUES
(1, '<iframe width=\"300\" height=\"220\" src=\"https://www.youtube.com/embed/oqGO941aZAc\" title=\"রাতের আঁধারে সক্রিয় অবরোধকারীরা | BNP Oborodh | Fire in Bus | Somoy TV\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_04_16_115107_create_categories_table', 1),
(5, '2020_04_16_115141_create_subcategories_table', 1),
(6, '2020_04_29_153713_create_districts_table', 1),
(7, '2020_04_29_153726_create_subdistricts_table', 1),
(8, '2020_04_30_102439_create_posts_table', 1),
(9, '2020_05_31_131832_create_socials_table', 1),
(10, '2020_05_31_131923_create_seos_table', 1),
(11, '2020_05_31_134432_create_namaz_table', 1),
(12, '2020_05_31_135413_create_livetv_table', 1),
(13, '2020_06_01_150304_create_notices_table', 1),
(14, '2020_06_01_151613_create_websites_table', 1),
(15, '2020_06_10_224008_create_photos_table', 1),
(16, '2020_06_10_225639_create_videos_table', 1),
(17, '2020_07_03_125924_create_ads_table', 1),
(18, '2020_07_05_082330_create_settings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `namaz`
--

CREATE TABLE `namaz` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fajr` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `johr` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asor` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `magrib` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `esha` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jummah` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `namaz`
--

INSERT INTO `namaz` (`id`, `fajr`, `johr`, `asor`, `magrib`, `esha`, `jummah`, `created_at`, `updated_at`) VALUES
(1, '৫.৩০ মিনিট', '১.৩০ মিনিট', '৪ টা', '৬ টা', '৭.৩০ মিনিট', '১.৪০ মিনিট', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `notice` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `notice`, `status`, `created_at`, `updated_at`) VALUES
(1, 'আমাদের ওয়েবসাইটে সার্বিক উন্নয়নের কাজ চলছে আমাদের সাথে থাকার জন্য আপনাকে  ধন্যবাদ!', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `photo`, `title`, `type`, `created_at`, `updated_at`) VALUES
(60, 'public/photos_gallery/6644e2f1318a2.png', '1', '1', NULL, NULL),
(61, 'public/photos_gallery/6644e306e1ec9.png', '2', '0', NULL, NULL),
(62, 'public/photos_gallery/6644e324c4b3d.png', '2', '0', NULL, NULL),
(63, 'public/photos_gallery/6644e34477f29.png', '3', '0', NULL, NULL),
(64, 'public/photos_gallery/6644e34dd6d45.png', '5', '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_id` int(11) NOT NULL,
  `subcat_id` int(11) DEFAULT NULL,
  `dist_id` int(11) DEFAULT NULL,
  `subdist_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `title_bn` varchar(5000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_en` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_bn` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags_bn` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_month` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `short_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categoryhomepage` int(11) DEFAULT NULL,
  `apply_link` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstpackage` int(11) DEFAULT NULL,
  `seconpackage` int(11) DEFAULT NULL,
  `thirdpackage` int(11) DEFAULT NULL,
  `fourpackage` int(11) DEFAULT NULL,
  `fifthpackage` int(11) DEFAULT NULL,
  `sixpackage` int(11) DEFAULT NULL,
  `seventhpackage` int(11) DEFAULT NULL,
  `eightpackage` int(11) DEFAULT NULL,
  `ninthpackage` int(11) DEFAULT NULL,
  `tenthpackage` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `cat_id`, `subcat_id`, `dist_id`, `subdist_id`, `user_id`, `title_bn`, `title_en`, `image`, `details_en`, `details_bn`, `tags_bn`, `tags_en`, `post_date`, `post_month`, `created_at`, `updated_at`, `short_details`, `categoryhomepage`, `apply_link`, `firstpackage`, `seconpackage`, `thirdpackage`, `fourpackage`, `fifthpackage`, `sixpackage`, `seventhpackage`, `eightpackage`, `ninthpackage`, `tenthpackage`) VALUES
(160, 1, 57, NULL, NULL, 1, 'স্বাধীন', NULL, 'public/postimages/664483c1eb98b.jpeg', NULL, '<p>যারা বিনোদনের জন্য বা অনলাইন ক্লাস বা ওয়েব সাইট ব্রাউজ</p><p>করার জন্য ইন্টারনেট ব্যবহার করে থাকেন</p><p>তাদের জন্য</p><p>স্বাধীন প্যাকেজটি ভালো একটা সমাধান।</p>', NULL, NULL, '15-05-2024', 'May', NULL, NULL, NULL, NULL, 'https://www.google.com/search?q=eng+to+bang%5D&oq=eng+to+&gs_lcrp=EgZjaHJvbWUqCAgCEEUYJxg7MgYIABBFGDkyBggBEEUYQDIICAIQRRgnGDsyCQgDEEUYOxiABDIMCAQQIxgnGIAEGIoFMgwIBRAAGAoYsQMYgAQyBwgGEAAYgAQyBggHEEUYPdIBCDMwODdqMGo3qAIAsAIA&sourceid=chrome&ie=UTF-8', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(162, 1, 57, NULL, NULL, 1, 'স্বাধীন এক্সপ্রেস', NULL, 'public/postimages/6644843ce1462.jpeg', NULL, '<p>যাদের প্রচুর পরিমানে ডাটা প্রতিমাসে ব্যবহার করতে হয় বিশেষ করে যারা অনলাইন এপস ব্যবহার করে দেশ বা দেশের বাইরে ভিডিও কলে কথা বলতে হয়,ভিডিও মিটিং করতে হয়,প্রচুর পরিমানে মুভি বা সিরিজ দেখেন,গেম খেলেন তাদের জন্য স্বাধীন এক্সপ্রেস প্যাকেজটি চমৎকার একটি সমাধান হতে পারে।<br></p>', NULL, NULL, '15-05-2024', 'May', NULL, NULL, NULL, NULL, 'https://www.google.com/search?q=eng+to+bang%5D&oq=eng+to+&gs_lcrp=EgZjaHJvbWUqCAgCEEUYJxg7MgYIABBFGDkyBggBEEUYQDIICAIQRRgnGDsyCQgDEEUYOxiABDIMCAQQIxgnGIAEGIoFMgwIBRAAGAoYsQMYgAQyBwgGEAAYgAQyBggHEEUYPdIBCDMwODdqMGo3qAIAsAIA&sourceid=chrome&ie=UTF-8', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(163, 1, 57, NULL, NULL, 1, 'বিজয়', NULL, 'public/postimages/66448470a6b76.jpeg', NULL, '<p>প্রয়োজন কিংবা বিনোদন,যেমন-ই হোক আপনার আয়োজন স্বাধীন-এর বিজয় হতে পারে আপনার পুরো বছরের ইন্টারনেটের সহজ সমাধান।দূর্দান্ত গতির ইন্টারনেটের সারা বছরের সহজ সমাধান বিজয়-প্যাকেজ।<br></p>', NULL, NULL, '15-05-2024', 'May', NULL, NULL, NULL, NULL, 'https://www.google.com/search?q=eng+to+bang%5D&oq=eng+to+&gs_lcrp=EgZjaHJvbWUqCAgCEEUYJxg7MgYIABBFGDkyBggBEEUYQDIICAIQRRgnGDsyCQgDEEUYOxiABDIMCAQQIxgnGIAEGIoFMgwIBRAAGAoYsQMYgAQyBwgGEAAYgAQyBggHEEUYPdIBCDMwODdqMGo3qAIAsAIA&sourceid=chrome&ie=UTF-8', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE `seos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_author` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_analytics` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_verification` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alexa_analytics` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seos`
--

INSERT INTO `seos` (`id`, `meta_author`, `meta_title`, `meta_keyword`, `meta_description`, `google_analytics`, `google_verification`, `alexa_analytics`, `created_at`, `updated_at`) VALUES
(1, 'Ramss Net - Broadband & Internet Service Providers', 'Ramss Net - Broadband & Internet Service Providers', 'Ramss Net - Broadband & Internet Service Providers', 'Ramss Net - Broadband & Internet Service Providers', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_bn` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_bn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baner1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baner2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baner3` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobilelogo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebookpage` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terms` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `privacy` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baner1_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baner2_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baner3_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baner1short_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baner2short_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baner3short_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_download` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apply_link` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_image` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tarif_link` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_video_link` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ftp_link` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counter1` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counter2` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counter3` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counter4` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counter5` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counter6` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `live_tv` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason1` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason2` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason3` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `logo`, `address_bn`, `phone_bn`, `phone_en`, `email`, `created_at`, `updated_at`, `favicon`, `baner1`, `baner2`, `baner3`, `mobilelogo`, `facebookpage`, `terms`, `privacy`, `baner1_text`, `baner2_text`, `baner3_text`, `baner1short_text`, `baner2short_text`, `baner3short_text`, `footer_description`, `app_download`, `apply_link`, `package_image`, `tarif_link`, `about_video_link`, `ftp_link`, `counter1`, `counter2`, `counter3`, `counter4`, `counter5`, `counter6`, `live_tv`, `reason1`, `reason2`, `reason3`) VALUES
(1, 'public/ads/66445462a2cd4.png', 'চুনকুটিয়া মোদ্দো পাড়া বেবি স্ট্যান্ড সাত্তার কমপ্লেক্স (গোরুন্ড ফ্লোর) দক্ষিণ কেরানীগঞ্জ ঢাকা-১৩১০।', '+8801970661298', '+8809639105105', 'info@elitedesign.com.bd', NULL, NULL, 'public/ads/664456cde82d8.png', 'public/ads/6644b3f0d52ef.jpg', 'public/ads/6644b65b17bfe.jpg', 'public/ads/6644b67b2e55f.jpg', 'public/ads/664454ff016f7.png', 'elitedesignbd', '<p>These terms and conditions outline the rules and regulations for the use of Alokito Bondhu Technical Training Program\'s Website, located at www.alokitobtp.com.</p>\r\n\r\n<p>By accessing this website we assume you accept these terms and conditions. Do not continue to use Alokito Bondhu Technical Training Program if you do not agree to take all of the terms and conditions stated on this page.</p>\r\n\r\n<p>The following terminology applies to these Terms and Conditions, Privacy Statement and Disclaimer Notice and all Agreements: \"Client\", \"You\" and \"Your\" refers to you, the person log on this website and compliant to the Company\'s terms and conditions. \"The Company\", \"Ourselves\", \"We\", \"Our\" and \"Us\", refers to our Company. \"Party\", \"Parties\", or \"Us\", refers to both the Client and ourselves. All terms refer to the offer, acceptance and consideration of payment necessary to undertake the process of our assistance to the Client in the most appropriate manner for the express purpose of meeting the Client\'s needs in respect of provision of the Company\'s stated services, in accordance with and subject to, prevailing law of bd. Any use of the above terminology or other words in the singular, plural, capitalization and/or he/she or they, are taken as interchangeable and therefore as referring to same.</p>\r\n\r\n<h3><strong>Cookies</strong></h3>\r\n\r\n<p>We employ the use of cookies. By accessing Alokito Bondhu Technical Training Program, you agreed to use cookies in agreement with the Alokito Bondhu Technical Training Program\'s Privacy Policy. </p>\r\n\r\n<p>Most interactive websites use cookies to let us retrieve the user\'s details for each visit. Cookies are used by our website to enable the functionality of certain areas to make it easier for people visiting our website. Some of our affiliate/advertising partners may also use cookies.</p>\r\n\r\n<h3><strong>License</strong></h3>\r\n\r\n<p>Unless otherwise stated, Alokito Bondhu Technical Training Program and/or its licensors own the intellectual property rights for all material on Alokito Bondhu Technical Training Program. All intellectual property rights are reserved. You may access this from Alokito Bondhu Technical Training Program for your own personal use subjected to restrictions set in these terms and conditions.</p>\r\n\r\n<p>You must not:</p>\r\n<ul>\r\n    <li>Republish material from Alokito Bondhu Technical Training Program</li>\r\n    <li>Sell, rent or sub-license material from Alokito Bondhu Technical Training Program</li>\r\n    <li>Reproduce, duplicate or copy material from Alokito Bondhu Technical Training Program</li>\r\n    <li>Redistribute content from Alokito Bondhu Technical Training Program</li></ul>\r\n\r\n<p>Parts of this website offer an opportunity for users to post and exchange opinions and information in certain areas of the website. Alokito Bondhu Technical Training Program does not filter, edit, publish or review Comments prior to their presence on the website. Comments do not reflect the views and opinions of Alokito Bondhu Technical Training Program,its agents and/or affiliates. Comments reflect the views and opinions of the person who post their views and opinions. To the extent permitted by applicable laws, Alokito Bondhu Technical Training Program shall not be liable for the Comments or for any liability, damages or expenses caused and/or suffered as a result of any use of and/or posting of and/or appearance of the Comments on this website.</p>\r\n\r\n<p>Alokito Bondhu Technical Training Program reserves the right to monitor all Comments and to remove any Comments which can be considered inappropriate, offensive or causes breach of these Terms and Conditions.</p>\r\n\r\n<p>You warrant and represent that:</p>\r\n\r\n<ul>\r\n    <li>You are entitled to post the Comments on our website and have all necessary licenses and consents to do so;</li>\r\n    <li>The Comments do not invade any intellectual property right, including without limitation copyright, patent or trademark of any third party;</li>\r\n    <li>The Comments do not contain any defamatory, libelous, offensive, indecent or otherwise unlawful material which is an invasion of privacy</li>\r\n    <li>The Comments will not be used to solicit or promote business or custom or present commercial activities or unlawful activity.</li>\r\n</ul>\r\n\r\n<p>You hereby grant Alokito Bondhu Technical Training Program a non-exclusive license to use, reproduce, edit and authorize others to use, reproduce and edit any of your Comments in any and all forms, formats or media.</p>\r\n\r\n<h3><strong>Hyperlinking to our Content</strong></h3>\r\n\r\n<p>The following organizations may link to our Website without prior written approval:</p>\r\n\r\n<ul>\r\n    <li>Government agencies;</li>\r\n    <li>Search engines;</li>\r\n    <li>News organizations;</li>\r\n    <li>Online directory distributors may link to our Website in the same manner as they hyperlink to the Websites of other listed businesses; and</li>\r\n    <li>System wide Accredited Businesses except soliciting non-profit organizations, charity shopping malls, and charity fundraising groups which may not hyperlink to our Web site.</li>\r\n</ul>\r\n\r\n<p>These organizations may link to our home page, to publications or to other Website information so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products and/or services; and (c) fits within the context of the linking party\'s site.</p>\r\n\r\n<p>We may consider and approve other link requests from the following types of organizations:</p>\r\n\r\n<ul>\r\n    <li>commonly-known consumer and/or business information sources;</li>\r\n    <li>dot.com community sites;</li>\r\n    <li>associations or other groups representing charities;</li>\r\n    <li>online directory distributors;</li>\r\n    <li>internet portals;</li>\r\n    <li>accounting, law and consulting firms; and</li>\r\n    <li>educational institutions and trade associations.</li>\r\n</ul>\r\n\r\n<p>We will approve link requests from these organizations if we decide that: (a) the link would not make us look unfavorably to ourselves or to our accredited businesses; (b) the organization does not have any negative records with us; (c) the benefit to us from the visibility of the hyperlink compensates the absence of Alokito Bondhu Technical Training Program; and (d) the link is in the context of general resource information.</p>\r\n\r\n<p>These organizations may link to our home page so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products or services; and (c) fits within the context of the linking party\'s site.</p>\r\n\r\n<p>If you are one of the organizations listed in paragraph 2 above and are interested in linking to our website, you must inform us by sending an e-mail to Alokito Bondhu Technical Training Program. Please include your name, your organization name, contact information as well as the URL of your site, a list of any URLs from which you intend to link to our Website, and a list of the URLs on our site to which you would like to link. Wait 2-3 weeks for a response.</p>\r\n\r\n<p>Approved organizations may hyperlink to our Website as follows:</p>\r\n\r\n<ul>\r\n    <li>By use of our corporate name; or</li>\r\n    <li>By use of the uniform resource locator being linked to; or</li>\r\n    <li>By use of any other description of our Website being linked to that makes sense within the context and format of content on the linking party\'s site.</li>\r\n</ul>\r\n\r\n<p>No use of Alokito Bondhu Technical Training Program\'s logo or other artwork will be allowed for linking absent a trademark license agreement.</p>\r\n\r\n<h3><strong>iFrames</strong></h3>\r\n\r\n<p>Without prior approval and written permission, you may not create frames around our Webpages that alter in any way the visual presentation or appearance of our Website.</p>\r\n\r\n<h3><strong>Content Liability</strong></h3>\r\n\r\n<p>We shall not be hold responsible for any content that appears on your Website. You agree to protect and defend us against all claims that is rising on your Website. No link(s) should appear on any Website that may be interpreted as libelous, obscene or criminal, or which infringes, otherwise violates, or advocates the infringement or other violation of, any third party rights.</p>\r\n\r\n<h3><strong>Reservation of Rights</strong></h3>\r\n\r\n<p>We reserve the right to request that you remove all links or any particular link to our Website. You approve to immediately remove all links to our Website upon request. We also reserve the right to amen these terms and conditions and it\'s linking policy at any time. By continuously linking to our Website, you agree to be bound to and follow these linking terms and conditions.</p>\r\n\r\n<h3><strong>Removal of links from our website</strong></h3>\r\n\r\n<p>If you find any link on our Website that is offensive for any reason, you are free to contact and inform us any moment. We will consider requests to remove links but we are not obligated to or so or to respond to you directly.</p>\r\n\r\n<p>We do not ensure that the information on this website is correct, we do not warrant its completeness or accuracy; nor do we promise to ensure that the website remains available or that the material on the website is kept up to date.</p>\r\n\r\n<h3><strong>Disclaimer</strong></h3>\r\n\r\n<p>To the maximum extent permitted by applicable law, we exclude all representations, warranties and conditions relating to our website and the use of this website. Nothing in this disclaimer will:</p>\r\n\r\n<ul>\r\n    <li>limit or exclude our or your liability for death or personal injury;</li>\r\n    <li>limit or exclude our or your liability for fraud or fraudulent misrepresentation;</li>\r\n    <li>limit any of our or your liabilities in any way that is not permitted under applicable law; or</li>\r\n    <li>exclude any of our or your liabilities that may not be excluded under applicable law.</li>\r\n</ul>\r\n\r\n<p>The limitations and prohibitions of liability set in this Section and elsewhere in this disclaimer: (a) are subject to the preceding paragraph; and (b) govern all liabilities arising under the disclaimer, including liabilities arising in contract, in tort and for breach of statutory duty.</p>\r\n\r\n<p>As long as the website and the information and services on the website are provided free of charge, we will not be liable for any loss or damage of any nature.</p>', '<h1><span style=\"font-size: 16px;\">At Alokito Bondhu Technical Training Program, accessible from www.alokitobtp.com, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by Alokito Bondhu Technical Training Program and how we use it.</span></h1><h1><span style=\"font-size: 16px;\">If you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">This Privacy Policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in Alokito Bondhu Technical Training Program. This policy is not applicable to any information collected offline or via channels other than this website.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">Consent</span></h1><h1><span style=\"font-size: 16px;\">By using our website, you hereby consent to our Privacy Policy and agree to its terms.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">Information we collect</span></h1><h1><span style=\"font-size: 16px;\">The personal information that you are asked to provide, and the reasons why you are asked to provide it, will be made clear to you at the point we ask you to provide your personal information.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">If you contact us directly, we may receive additional information about you such as your name, email address, phone number, the contents of the message and/or attachments you may send us, and any other information you may choose to provide.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">When you register for an Account, we may ask for your contact information, including items such as name, company name, address, email address, and telephone number.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">How we use your information</span></h1><h1><span style=\"font-size: 16px;\">We use the information we collect in various ways, including to:</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">Provide, operate, and maintain our website</span></h1><h1><span style=\"font-size: 16px;\">Improve, personalize, and expand our website</span></h1><h1><span style=\"font-size: 16px;\">Understand and analyze how you use our website</span></h1><h1><span style=\"font-size: 16px;\">Develop new products, services, features, and functionality</span></h1><h1><span style=\"font-size: 16px;\">Communicate with you, either directly or through one of our partners, including for customer service, to provide you with updates and other information relating to the website, and for marketing and promotional purposes</span></h1><h1><span style=\"font-size: 16px;\">Send you emails</span></h1><h1><span style=\"font-size: 16px;\">Find and prevent fraud</span></h1><h1><span style=\"font-size: 16px;\">Log Files</span></h1><h1><span style=\"font-size: 16px;\">Alokito Bondhu Technical Training Program follows a standard procedure of using log files. These files log visitors when they visit websites. All hosting companies do this and a part of hosting services\' analytics. The information collected by log files include internet protocol (IP) addresses, browser type, Internet Service Provider (ISP), date and time stamp, referring/exit pages, and possibly the number of clicks. These are not linked to any information that is personally identifiable. The purpose of the information is for analyzing trends, administering the site, tracking users\' movement on the website, and gathering demographic information.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">Cookies and Web Beacons</span></h1><h1><span style=\"font-size: 16px;\">Like any other website, Alokito Bondhu Technical Training Program uses \"cookies\". These cookies are used to store information including visitors\' preferences, and the pages on the website that the visitor accessed or visited. The information is used to optimize the users\' experience by customizing our web page content based on visitors\' browser type and/or other information.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">Our Advertising Partners</span></h1><h1><span style=\"font-size: 16px;\">Some of advertisers on our site may use cookies and web beacons. Our advertising partners are listed below. Each of our advertising partners has their own Privacy Policy for their policies on user data. For easier access, we hyperlinked to their Privacy Policies below.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">Google</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">https://policies.google.com/technologies/ads</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">Advertising Partners Privacy Policies</span></h1><h1><span style=\"font-size: 16px;\">You may consult this list to find the Privacy Policy for each of the advertising partners of Alokito Bondhu Technical Training Program.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">Third-party ad servers or ad networks uses technologies like cookies, JavaScript, or Web Beacons that are used in their respective advertisements and links that appear on Alokito Bondhu Technical Training Program, which are sent directly to users\' browser. They automatically receive your IP address when this occurs. These technologies are used to measure the effectiveness of their advertising campaigns and/or to personalize the advertising content that you see on websites that you visit.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">Note that Alokito Bondhu Technical Training Program has no access to or control over these cookies that are used by third-party advertisers.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">Third Party Privacy Policies</span></h1><h1><span style=\"font-size: 16px;\">Alokito Bondhu Technical Training Program\'s Privacy Policy does not apply to other advertisers or websites. Thus, we are advising you to consult the respective Privacy Policies of these third-party ad servers for more detailed information. It may include their practices and instructions about how to opt-out of certain options.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">You can choose to disable cookies through your individual browser options. To know more detailed information about cookie management with specific web browsers, it can be found at the browsers\' respective websites.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">CCPA Privacy Rights (Do Not Sell My Personal Information)</span></h1><h1><span style=\"font-size: 16px;\">Under the CCPA, among other rights, California consumers have the right to:</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">Request that a business that collects a consumer\'s personal data disclose the categories and specific pieces of personal data that a business has collected about consumers.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">Request that a business delete any personal data about the consumer that a business has collected.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">Request that a business that sells a consumer\'s personal data, not sell the consumer\'s personal data.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">GDPR Data Protection Rights</span></h1><h1><span style=\"font-size: 16px;\">We would like to make sure you are fully aware of all of your data protection rights. Every user is entitled to the following:</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">The right to access – You have the right to request copies of your personal data. We may charge you a small fee for this service.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">The right to rectification – You have the right to request that we correct any information you believe is inaccurate. You also have the right to request that we complete the information you believe is incomplete.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">The right to erasure – You have the right to request that we erase your personal data, under certain conditions.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">The right to restrict processing – You have the right to request that we restrict the processing of your personal data, under certain conditions.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">The right to object to processing – You have the right to object to our processing of your personal data, under certain conditions.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">The right to data portability – You have the right to request that we transfer the data that we have collected to another organization, or directly to you, under certain conditions.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">Children\'s Information</span></h1><h1><span style=\"font-size: 16px;\">Another part of our priority is adding protection for children while using the internet. We encourage parents and guardians to observe, participate in, and/or monitor and guide their online activity.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">Alokito Bondhu Technical Training Program does not knowingly collect any Personal Identifiable Information from children under the age of 13. If you think that your child provided this kind of information on our website, we strongly encourage you to contact us immediately and we will do our best efforts to promptly remove such information from our records.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">Changes to This Privacy Policy</span></h1><h1><span style=\"font-size: 16px;\">We may update our Privacy Policy from time to time. Thus, we advise you to review this page periodically for any changes. We will notify you of any changes by posting the new Privacy Policy on this page. These changes are effective immediately, after they are posted on this page.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">Contact Us</span></h1><h1><span style=\"font-size: 16px;\">If you have any questions or suggestions about our Privacy Policy, do not hesitate to contact us.</span></h1>', 'Ramss Net পেলো স্মার্ট বাংলাদেশ এওয়ার্ড ২০২৩', 'দূর্দান্ত গতির ইন্টারনেটে স্বপ্ন এবার সত্যি হবে', 'মোবাইল ইন্টারনেটের  সেরা অফার', 'স্মার্ট ভিলেজের স্বপ্ন আর স্বপ্ন নয়,Ramss Net হাত ধরে হচ্ছে সত্যি', 'দূর্দান্ত গতি,উন্নত সেবা,নিরবিচ্ছিন্ন সংযোগের প্রশ্নে আপোসহীন সেবা', 'আপনার প্রয়োজনীয় সবটুকু সেবার জন্য দেশসেরা স্বাধীন ওয়াই-ফাই\'কে কেনো বেছে নিবেন?', 'Ramss Net বাংলাদেশ টেলিযোগাযোগ নিয়ন্ত্রণ কমিশন থেকে অনুমোদিত একটি লাইসেন্স প্রাপ্ত কোম্পানি যা ২০১৭ সাল থেকে দেশে কাজ করছে।', '/app.apk', 'https://apply.com', 'public/ads/664460c4b09b7.jpg', 'https://www.shadhinwifi.com/public/frontend/img/btrc-tarif-plan.pdf', 'zQhhGcA9K5E&t=1286s', 'http://moviemazic.xyz/', '252', '452', '55', '64', '64', '8', 'http://172.17.50.112/', 'public/ads/6644d5a047694.jpg', 'public/ads/6644d5b5afaac.jpg', 'public/ads/6644d5c8d1078.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `facebook`, `twitter`, `youtube`, `instagram`, `linkedin`, `created_at`, `updated_at`) VALUES
(1, 'https://www.facebook.com/profile.php?id=61550511971497&ref=embed_page', 'https://www.facebook.com/profile.php?id=61550511971497&ref=embed_page', 'https://www.youtube.com/@alokitobtp6335', 'https://www.facebook.com/profile.php?id=61550511971497&ref=embed_page', 'https://www.facebook.com/profile.php?id=61550511971497&ref=embed_page', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_bn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `subcategory_bn`, `subcategory_en`, `created_at`, `updated_at`) VALUES
(57, '1', 'সকল ওয়াই-ফাই', 'সকল ওয়াই-ফাই', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subdistricts`
--

CREATE TABLE `subdistricts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `district_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subdistrict_bn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subdistrict_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subdistricts`
--

INSERT INTO `subdistricts` (`id`, `district_id`, `subdistrict_bn`, `subdistrict_en`, `created_at`, `updated_at`) VALUES
(1, '1', 'Mirpur', 'মিরপুর', NULL, NULL),
(2, '1', 'bvbvbvcv', 'bvvbbvbv', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `district` int(11) DEFAULT NULL,
  `post` int(11) DEFAULT NULL,
  `setting` int(11) DEFAULT NULL,
  `gallery` int(11) DEFAULT NULL,
  `ads` int(11) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `facebookid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profilepic` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allpost` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `type`, `category`, `district`, `post`, `setting`, `gallery`, `ads`, `role`, `facebookid`, `profilepic`, `allpost`) VALUES
(1, 'Phakal Police Lines', 'info@phakal.edu.bd', '2023-11-04 18:40:46', '$2y$10$GUI4DwNqBMs956xDS2DfGeeleWVkXOZYDGjRYMzKjcoFgogsmEIDu', 'aHCxtAk0oFyuM8oBfpTjTCQC905F1FsmfytMf2ejoOg60OW9yb0i0IO9G0PD', '2023-11-04 18:40:46', '2023-11-29 07:34:23', 1, 1, 1, 1, 1, 1, 1, 1, 'https://facebook.com/elitedesignbd', NULL, 1),
(2, 'মোঃ নাঈম হোসেন', 'nayeem@elitedesign.com.bd', NULL, '$2y$10$A4k4Wpgm9a4WM5svlJuR2eeECnXYjsHaWF5E9axWzqPAfG.4ec32K', '1TszKSdPXO6INgOU29dcBxKaviO07ntRaDZCNrBfsNoWIkCv6rhtNPqsnsnQ', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'https://elitedesign.com.bd', NULL, NULL),
(3, 'Abdullah Al Mamun', 'dearsabdullah@gmail.comgmail.com', NULL, '$2y$10$siGhUcIpLuTNtcjGMvzZ5uKixLGM/N6GtemWoEdcdj9cYo5iQTNvW', NULL, '2023-11-16 15:58:18', '2023-11-16 15:58:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `embed_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `embed_code`, `type`, `created_at`, `updated_at`) VALUES
(40, 'স্বাধীন এপ এ লগইন করুন', 'aNY2WK5sU4U', '0', NULL, NULL),
(41, 'স্বাধীন এপ এর মাধ্যমে যেভাবে পেমেন্ট করবেন', 'MajFumWHceA', '0', NULL, NULL),
(42, 'যদি প্রয়োজন হয় স্বাধীন এপ-এ পাসওয়ার্ড চেঞ্জ করবেন যেভাবে', 'coXCDuyZSIw', '0', NULL, NULL),
(43, 'জিপিএ ৫ পেয়েও পড়াশুনা বন্ধের পথে !', '4ACQH7CESbQ', '1', NULL, NULL),
(44, 'Jolly LLB (2013)', '9E-KrhMSQ9Q', '1', NULL, NULL),
(45, 'Ikke Pe Ikka Superhit', 'v_igYqOs9Ng', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `websites`
--

CREATE TABLE `websites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `website_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `websites`
--

INSERT INTO `websites` (`id`, `website_name`, `website_link`, `created_at`, `updated_at`) VALUES
(9, 'প্রধানমন্ত্রীর কার্যালয়', 'https://pmo.gov.bd/', NULL, NULL),
(10, 'বাংলাদেশ জাতীয় সংসদ', 'http://www.parliament.gov.bd/', NULL, NULL),
(17, 'বাংলাদেশ সেনাবাহিনী', 'https://www.army.mil.bd/', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `livetv`
--
ALTER TABLE `livetv`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `namaz`
--
ALTER TABLE `namaz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subdistricts`
--
ALTER TABLE `subdistricts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `websites`
--
ALTER TABLE `websites`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `livetv`
--
ALTER TABLE `livetv`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `namaz`
--
ALTER TABLE `namaz`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `subdistricts`
--
ALTER TABLE `subdistricts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `websites`
--
ALTER TABLE `websites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
