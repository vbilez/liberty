-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 01, 2018 at 09:09 PM
-- Server version: 5.6.31-log
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `libertypress`
--

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE IF NOT EXISTS `portfolio` (
  `id` int(11) NOT NULL,
  `videourl` varchar(255) NOT NULL,
  `clientname` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `description` text NOT NULL,
  `title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_circle_image_carousel`
--

CREATE TABLE IF NOT EXISTS `wp_circle_image_carousel` (
  `id` int(10) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `image_name` varchar(500) NOT NULL,
  `image_description` text,
  `image_order` int(11) NOT NULL DEFAULT '0',
  `open_link_in` tinyint(1) NOT NULL DEFAULT '1',
  `enable_light_box_img_desc` tinyint(1) NOT NULL DEFAULT '1',
  `createdon` datetime NOT NULL,
  `custom_link` varchar(1000) DEFAULT NULL,
  `post_id` int(10) DEFAULT NULL,
  `slider_id` int(10) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_circle_image_carousel`
--

INSERT INTO `wp_circle_image_carousel` (`id`, `title`, `image_name`, `image_description`, `image_order`, `open_link_in`, `enable_light_box_img_desc`, `createdon`, `custom_link`, `post_id`, `slider_id`) VALUES
(1, 'about-team1', 'about-team1.jpeg', NULL, 0, 1, 1, '2018-01-06 16:38:00', '', NULL, 1),
(2, 'about-team2', 'about-team2.jpeg', NULL, 0, 1, 1, '2018-01-06 16:38:00', '', NULL, 1),
(3, 'about-team3', 'about-team3.jpeg', NULL, 0, 1, 1, '2018-01-06 16:38:00', '', NULL, 1),
(4, 'about-team4', 'about-team4.jpeg', NULL, 0, 1, 1, '2018-01-06 16:39:00', 'http://kyivstar.ua', NULL, 1),
(5, 'team5', 'about-team1.jpeg', NULL, 0, 1, 1, '2018-01-08 17:27:00', '', NULL, 1),
(6, 'about-team6', 'about-team2.jpeg', NULL, 0, 1, 1, '2018-01-08 17:28:00', '', NULL, 1),
(7, 'about-team7', 'about-team3.jpeg', NULL, 0, 1, 1, '2018-01-08 17:28:00', '', NULL, 1),
(8, 'about-team8', 'about-team4.jpeg', NULL, 0, 1, 1, '2018-01-08 17:28:00', '', NULL, 1),
(9, 'about-team9', 'about-team4.jpeg', NULL, 0, 1, 1, '2018-01-08 17:28:00', '', NULL, 1),
(10, 'about-team10', 'about-team3.jpeg', NULL, 0, 1, 1, '2018-01-08 17:29:00', '', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Коментатор WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-01-11 11:03:47', '2018-01-11 09:03:47', 'Привіт, це коментар.\nЩоби почати модерування, редагування, та видалення коментарів, будь ласка, відвідайте розділ коментарів у Майстерні.\nАватари коментаторів ідуть із <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 60, 'vbilez', 'd.sqate@gmail.com', '', '127.0.0.1', '2018-01-08 15:16:14', '2018-01-08 13:16:14', 'comment', 0, '1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_huge_itportfolio_images`
--

CREATE TABLE IF NOT EXISTS `wp_huge_itportfolio_images` (
  `id` int(11) unsigned NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portfolio_id` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image_url` text COLLATE utf8mb4_unicode_ci,
  `sl_url` text COLLATE utf8mb4_unicode_ci,
  `sl_type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_target` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL,
  `published` tinyint(4) unsigned DEFAULT NULL,
  `published_in_sl_width` tinyint(4) unsigned DEFAULT NULL,
  `category` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `huge_it_loadDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_huge_itportfolio_images`
--

INSERT INTO `wp_huge_itportfolio_images` (`id`, `name`, `portfolio_id`, `description`, `image_url`, `sl_url`, `sl_type`, `link_target`, `ordering`, `published`, `published_in_sl_width`, `category`, `huge_it_loadDate`) VALUES
(1, 'Cutthroat & Cavalier', '1', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p><p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'http://libertypress.ua/wp-content/plugins/portfolio-gallery/assets/images/Front_images/projects/1.jpg;http://libertypress.ua/wp-content/plugins/portfolio-gallery/assets/images/Front_images/projects/1.1.jpg;http://libertypress.ua/wp-content/plugins/portfolio-gallery/assets/images/Front_images/projects/1.2.jpg;', 'http://huge-it.com/wordpress-plugins-portfolio-gallery-demo/#plugin_demo_wrapper', 'image', 'on', 0, 1, NULL, '', '2018-01-09 10:17:01'),
(2, 'Nespresso', '1', '<h6>Lorem Ipsum </h6><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p><p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><ul><li>lorem ipsum</li><li>dolor sit amet</li><li>lorem ipsum</li><li>dolor sit amet</li></ul>', 'https://vimeo.com/76602135;http://libertypress.ua/wp-content/plugins/portfolio-gallery/assets/images/Front_images/projects/9.1.jpg;http://libertypress.ua/wp-content/plugins/portfolio-gallery/assets/images/Front_images/projects/9.2.jpg;', 'http://huge-it.com/wordpress-portfolio-gallery-demo-2-full-height-block/#plugin_demo_wrapper', 'video', 'on', 1, 1, NULL, '', '2018-01-09 10:17:01'),
(3, 'Nexus', '1', '<h6>Lorem Ipsum </h6><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p><p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><ul><li>lorem ipsum</li><li>dolor sit amet</li><li>lorem ipsum</li><li>dolor sit amet</li></ul>', 'http://libertypress.ua/wp-content/plugins/portfolio-gallery/assets/images/Front_images/projects/3.jpg;http://libertypress.ua/wp-content/plugins/portfolio-gallery/assets/images/Front_images/projects/3.1.jpg;http://libertypress.ua/wp-content/plugins/portfolio-gallery/assets/images/Front_images/projects/3.2.jpg:https://www.youtube.com/watch?v=YMQdfGFK5XQ;', 'http://huge-it.com/wordpress-portfolio-gallery-demo-3-gallery-content-popup/#plugin_demo_wrapper', 'image', 'on', 2, 1, NULL, '', '2018-01-09 10:17:01'),
(4, 'De7igner', '1', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p><h7>Dolor sit amet</h7><p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'http://libertypress.ua/wp-content/plugins/portfolio-gallery/assets/images/Front_images/projects/4.jpg;http://libertypress.ua/wp-content/plugins/portfolio-gallery/assets/images/Front_images/projects/4.1.jpg;http://libertypress.ua/wp-content/plugins/portfolio-gallery/assets/images/Front_images/projects/4.2.jpg;', 'http://huge-it.com/wordpress-portfolio-gallery-demo-4-full-width-block/#plugin_demo_wrapper', 'image', 'on', 3, 1, NULL, '', '2018-01-09 10:17:01'),
(5, 'Autumn / Winter Collection', '1', '<h6>Lorem Ipsum</h6><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'http://libertypress.ua/wp-content/plugins/portfolio-gallery/assets/images/Front_images/projects/2.jpg;', 'http://huge-it.com/wordpress-portfolio-gallery-demo-5-faq-toggle-updown/#plugin_demo_wrapper', 'image', 'on', 4, 1, NULL, '', '2018-01-09 10:17:01'),
(6, 'Retro Headphones', '1', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p><p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'http://libertypress.ua/wp-content/plugins/portfolio-gallery/assets/images/Front_images/projects/6.jpg;https://vimeo.com/80514062;http://libertypress.ua/wp-content/plugins/portfolio-gallery/assets/images/Front_images/projects/6.1.jpg;http://libertypress.ua/wp-content/plugins/portfolio-gallery/assets/images/Front_images/projects/6.2.jpg;', 'http://huge-it.com/wordpress-portfolio-gallery-demo-6-content-slider/#plugin_demo_wrapper', 'image', 'on', 5, 1, NULL, '', '2018-01-09 10:17:01'),
(7, 'Take Fight', '1', '<h6>Lorem Ipsum</h6><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p><p>Excepteur sint occaecat cupidatat non proident , sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'http://libertypress.ua/wp-content/plugins/portfolio-gallery/assets/images/Front_images/projects/7.jpg;http://libertypress.ua/wp-content/plugins/portfolio-gallery/assets/images/Front_images/projects/7.2.jpg;https://www.youtube.com/watch?v=SP3Dgr9S4pM;http://libertypress.ua/wp-content/plugins/portfolio-gallery/assets/images/Front_images/projects/7.3.jpg;', 'http://huge-it.com/wordpress-portfolio-gallery-demo-7-lightbox-gallery/#plugin_demo_wrapper', 'image', 'on', 6, 1, NULL, '', '2018-01-09 10:17:01'),
(8, 'The Optic', '1', '<h6>Lorem Ipsum </h6><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p><p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><ul><li>lorem ipsum</li><li>dolor sit amet</li><li>lorem ipsum</li><li>dolor sit amet</li></ul>', 'http://libertypress.ua/wp-content/plugins/portfolio-gallery/assets/images/Front_images/projects/8.jpg;http://libertypress.ua/wp-content/plugins/portfolio-gallery/assets/images/Front_images/projects/8.1.jpg;http://libertypress.ua/wp-content/plugins/portfolio-gallery/assets/images/Front_images/projects/8.3.jpg;', 'http://huge-it.com/wordpress-plugins/', 'image', 'on', 7, 1, NULL, '', '2018-01-09 10:17:01'),
(9, 'Cone Music', '1', '<ul><li>lorem ipsumdolor sit amet</li><li>lorem ipsum dolor sit amet</li></ul><p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'http://libertypress.ua/wp-content/plugins/portfolio-gallery/assets/images/Front_images/projects/5.jpg;http://libertypress.ua/wp-content/plugins/portfolio-gallery/assets/images/Front_images/projects/5.1.jpg;http://libertypress.ua/wp-content/plugins/portfolio-gallery/assets/images/Front_images/projects/5.2.jpg;', 'http://huge-it.com/portfolio-gallery/', 'image', 'on', 8, 1, NULL, '', '2018-01-09 10:17:01');

-- --------------------------------------------------------

--
-- Table structure for table `wp_huge_itportfolio_portfolios`
--

CREATE TABLE IF NOT EXISTS `wp_huge_itportfolio_portfolios` (
  `id` int(11) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sl_height` int(11) unsigned DEFAULT NULL,
  `sl_width` int(11) unsigned DEFAULT NULL,
  `pause_on_hover` text COLLATE utf8mb4_unicode_ci,
  `portfolio_list_effects_s` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `param` text COLLATE utf8mb4_unicode_ci,
  `sl_position` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL,
  `published` text COLLATE utf8mb4_unicode_ci,
  `categories` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ht_show_sorting` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'off',
  `ht_show_filtering` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'off',
  `autoslide` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'on',
  `show_loading` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'on',
  `loading_icon_type` int(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_huge_itportfolio_portfolios`
--

INSERT INTO `wp_huge_itportfolio_portfolios` (`id`, `name`, `sl_height`, `sl_width`, `pause_on_hover`, `portfolio_list_effects_s`, `description`, `param`, `sl_position`, `ordering`, `published`, `categories`, `ht_show_sorting`, `ht_show_filtering`, `autoslide`, `show_loading`, `loading_icon_type`) VALUES
(1, 'My First Portfolio', 375, 600, 'on', '2', '4000', '1000', 'off', 1, '300', 'My_First_Category,My_Second_Category,My_Third_Category,', 'off', 'off', 'on', 'on', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_huge_it_videogallery_galleries`
--

CREATE TABLE IF NOT EXISTS `wp_huge_it_videogallery_galleries` (
  `id` int(11) unsigned NOT NULL,
  `name` varchar(200) NOT NULL,
  `sl_height` int(11) unsigned DEFAULT NULL,
  `sl_width` int(11) unsigned DEFAULT NULL,
  `pause_on_hover` text,
  `videogallery_list_effects_s` text,
  `description` text,
  `param` text,
  `sl_position` text NOT NULL,
  `ordering` int(11) NOT NULL,
  `published` text,
  `huge_it_sl_effects` text NOT NULL,
  `display_type` int(11) DEFAULT '2',
  `content_per_page` int(11) DEFAULT '5',
  `autoslide` varchar(3) DEFAULT 'on'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_huge_it_videogallery_galleries`
--

INSERT INTO `wp_huge_it_videogallery_galleries` (`id`, `name`, `sl_height`, `sl_width`, `pause_on_hover`, `videogallery_list_effects_s`, `description`, `param`, `sl_position`, `ordering`, `published`, `huge_it_sl_effects`, `display_type`, `content_per_page`, `autoslide`) VALUES
(1, 'My First Video Gallery', 375, 600, 'on', 'random', '4000', '1000', 'center', 1, '300', '5', 2, 5, 'on'),
(2, 'New Video Gallery', 375, 600, 'on', 'cubeH', '4000', '1000', 'left', 1, '300', '7', 2, 5, 'on');

-- --------------------------------------------------------

--
-- Table structure for table `wp_huge_it_videogallery_videos`
--

CREATE TABLE IF NOT EXISTS `wp_huge_it_videogallery_videos` (
  `id` int(11) unsigned NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `videogallery_id` varchar(200) DEFAULT NULL,
  `description` text,
  `image_url` text,
  `sl_url` varchar(128) DEFAULT NULL,
  `sl_type` text NOT NULL,
  `link_target` text NOT NULL,
  `ordering` int(11) NOT NULL,
  `published` tinyint(4) unsigned DEFAULT NULL,
  `published_in_sl_width` tinyint(4) unsigned DEFAULT NULL,
  `thumb_url` text,
  `show_controls` varchar(3) DEFAULT 'on',
  `show_info` varchar(3) DEFAULT 'on'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_huge_it_videogallery_videos`
--

INSERT INTO `wp_huge_it_videogallery_videos` (`id`, `name`, `videogallery_id`, `description`, `image_url`, `sl_url`, `sl_type`, `link_target`, `ordering`, `published`, `published_in_sl_width`, `thumb_url`, `show_controls`, `show_info`) VALUES
(1, 'People Are Awesome', '1', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p><p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'https://www.youtube.com/embed/yNHyTk2jYNA', 'http://huge-it.com/wordpress-video-gallery-demo-1-content-popup/#plugin_demo_wrapper', 'video', 'on', 0, 1, NULL, NULL, 'on', 'on'),
(2, 'Africa Race', '1', '<ul><li>lorem ipsumdolor sit amet</li><li>lorem ipsum dolor sit amet</li></ul><p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'http://player.vimeo.com/video/62604342', 'http://huge-it.com/wordpress-video-gallery-demo-2-content-video-slider/#plugin_demo_wrapper', 'video', 'on', 1, 1, NULL, NULL, 'on', 'on'),
(3, 'London City In Motion', '1', '<h6>Lorem Ipsum </h6><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p><p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><ul><li>lorem ipsum</li><li>dolor sit amet</li><li>lorem ipsum</li><li>dolor sit amet</li></ul>', 'http://player.vimeo.com/video/99310168', 'http://huge-it.com/wordpress-video-gallery-demo-3-lightbox-video-gallery/#plugin_demo_wrapper', 'video', 'on', 2, 1, NULL, NULL, 'on', 'on'),
(4, 'Dubai City As You have Never Seen It Before', '1', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p><h6>Dolor sit amet</h6><p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'https://www.youtube.com/embed/t5vta25jHQI', 'http://huge-it.com/wordpress-video-gallery-demo-4-video-slider/#plugin_demo_wrapper', 'video', 'on', 3, 1, NULL, NULL, 'on', 'on'),
(5, 'Never say no to a Panda !', '1', '<h6>Lorem Ipsum</h6><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'http://player.vimeo.com/video/15371143', 'http://huge-it.com/wordpress-video-gallery-demo-5-thumbnails/#plugin_demo_wrapper', 'video', 'on', 4, 1, NULL, NULL, 'on', 'on'),
(6, 'INDO-FLU', '1', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p>', 'http://player.vimeo.com/video/103151169', 'http://huge-it.com/wordpress-video-gallery-demo-6-custom-thumbnails/#plugin_demo_wrapper', 'video', 'on', 5, 1, NULL, NULL, 'on', 'on'),
(7, 'People Are Awesome Womens Edition', '1', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p><h6>Lorem Ipsum</h6><p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'https://www.youtube.com/embed/R5avCAn1vs0', 'http://huge-it.com/wordpress-video-gallery-demo-7-block-style-view/#plugin_demo_wrapper', 'video', 'on', 6, 1, NULL, NULL, 'on', 'on'),
(8, 'Norwey', '1', '<h6>Lorem Ipsum </h6><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p><p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><ul><li>lorem ipsum</li><li>dolor sit amet</li><li>lorem ipsum</li><li>dolor sit amet</li></ul>', 'http://player.vimeo.com/video/31022539', 'http://huge-it.com/wordpress-video-gallery-demo-1-content-popup/#plugin_demo_wrapper', 'video', 'on', 7, 1, NULL, NULL, 'on', 'on'),
(9, 'Slow Motion', '1', '<h6>Lorem Ipsum </h6><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p><p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><ul><li>lorem ipsum</li><li>dolor sit amet</li><li>lorem ipsum</li><li>dolor sit amet</li></ul>', 'https://www.youtube.com/embed/gb69WX82Hvs', 'http://huge-it.com/wordpress-video-gallery-demo-2-content-video-slider/#plugin_demo_wrapper', 'video', 'on', 7, 1, NULL, NULL, 'on', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=793 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://libertypress.ua', 'yes'),
(2, 'home', 'http://libertypress.ua', 'yes'),
(3, 'blogname', 'liberty', 'yes'),
(4, 'blogdescription', 'Просто ще один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'd.sqate@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/blog/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:7:{i:0;s:71:"circle-image-slider-with-lightbox/circle-image-slider-with-lightbox.php";i:1;s:51:"display-posts-shortcode/display-posts-shortcode.php";i:2;s:53:"jonradio-multiple-themes/jonradio-multiple-themes.php";i:3;s:57:"photo-video-gallery-master/photo-video-gallery-master.php";i:4;s:35:"sp-form-example/sp-form-example.php";i:5;s:67:"video-embed-thumbnail-generator/video-embed-thumbnail-generator.php";i:6;s:24:"video_menu/videomenu.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:114:"C:\\xampp\\htdocs\\press71/wp-content/plugins/circle-image-slider-with-lightbox/circle-image-slider-with-lightbox.php";i:1;s:62:"C:\\xampp\\htdocs\\press71/wp-content/plugins/akismet/akismet.php";i:3;s:66:"C:\\xampp\\htdocs\\press71/wp-content/themes/twentyfifteen/footer.php";i:4;s:66:"C:\\xampp\\htdocs\\press71/wp-content/themes/twentyfifteen/header.php";i:5;s:64:"C:\\xampp\\htdocs\\press71/wp-content/themes/twentyfifteen/page.php";}', 'no'),
(40, 'template', 'liberty', 'yes'),
(41, 'stylesheet', 'liberty', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Kiev', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:64:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:21:"make_video_thumbnails";b:1;s:13:"encode_videos";b:1;s:25:"edit_others_video_encodes";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:37:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:21:"make_video_thumbnails";b:1;s:13:"encode_videos";b:1;s:25:"edit_others_video_encodes";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:12:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;s:21:"make_video_thumbnails";b:1;s:13:"encode_videos";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'uk', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:2:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'cron', 'a:5:{i:1519938229;a:1:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1519938230;a:2:{s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1519981452;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1519986676;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1515661676;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(124, 'can_compress_scripts', '1', 'no'),
(132, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1519900759;s:7:"checked";a:4:{s:7:"liberty";s:3:"1.0";s:13:"twentyfifteen";s:3:"1.9";s:15:"twentyseventeen";s:3:"1.4";s:13:"twentysixteen";s:3:"1.4";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(142, 'current_theme', 'Liberty', 'yes'),
(143, 'theme_mods_liberty', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1515252877;s:4:"data";a:1:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}s:18:"custom_css_post_id";i:-1;}', 'yes'),
(144, 'theme_switched', '', 'yes'),
(166, 'recently_activated', 'a:0:{}', 'yes'),
(212, 'widget_rich_web_photo_slider', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(215, 'circle_thumbnail_slider_plus_lightbox_settings', 'a:15:{s:16:"pauseonmouseover";b:1;s:4:"auto";b:0;s:5:"speed";i:1000;s:5:"pause";i:1000;s:8:"circular";b:1;s:11:"imageMargin";i:15;s:11:"imageheight";i:120;s:10:"imagewidth";i:120;s:7:"visible";s:1:"8";s:11:"min_visible";s:1:"4";s:6:"scroll";s:1:"1";s:12:"resizeImages";i:1;s:17:"scollerBackground";s:7:"#FFFFFF";s:12:"show_caption";s:1:"0";s:8:"lightbox";i:0;}', 'yes'),
(216, 'circle_image_carousel', 'a:0:{}', 'yes'),
(218, 'theme_mods_twentyfifteen', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1515253468;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-1";a:0:{}}}}', 'yes'),
(231, 'nav_menu_options', 'a:1:{s:8:"auto_add";a:0:{}}', 'yes'),
(238, 'jr_mt_internal_settings', 'a:4:{s:7:"version";s:5:"7.1.1";s:9:"permalink";s:36:"/%year%/%monthnum%/%day%/%postname%/";s:10:"query_vars";a:48:{i:0;s:1:"m";i:1;s:1:"p";i:2;s:5:"posts";i:3;s:1:"w";i:4;s:3:"cat";i:5;s:12:"withcomments";i:6;s:15:"withoutcomments";i:7;s:1:"s";i:8;s:6:"search";i:9;s:5:"exact";i:10;s:8:"sentence";i:11;s:8:"calendar";i:12;s:4:"page";i:13;s:5:"paged";i:14;s:4:"more";i:15;s:2:"tb";i:16;s:2:"pb";i:17;s:6:"author";i:18;s:5:"order";i:19;s:7:"orderby";i:20;s:4:"year";i:21;s:8:"monthnum";i:22;s:3:"day";i:23;s:4:"hour";i:24;s:6:"minute";i:25;s:6:"second";i:26;s:4:"name";i:27;s:13:"category_name";i:28;s:3:"tag";i:29;s:4:"feed";i:30;s:11:"author_name";i:31;s:6:"static";i:32;s:8:"pagename";i:33;s:7:"page_id";i:34;s:5:"error";i:35;s:10:"attachment";i:36;s:13:"attachment_id";i:37;s:7:"subpost";i:38;s:10:"subpost_id";i:39;s:7:"preview";i:40;s:6:"robots";i:41;s:8:"taxonomy";i:42;s:4:"term";i:43;s:5:"cpage";i:44;s:9:"post_type";i:45;s:5:"embed";i:46;s:11:"post_format";i:47;s:10:"rest_route";}s:6:"v7init";b:1;}', 'yes'),
(239, 'jr_mt_settings', 'a:13:{s:9:"all_pages";s:0:"";s:9:"all_posts";s:0:"";s:9:"site_home";s:0:"";s:7:"current";s:0:"";s:8:"ajax_all";s:0:"";s:3:"url";a:1:{i:0;a:6:{s:3:"url";s:27:"http://libertypress.ua/blog";s:7:"rel_url";s:4:"blog";s:5:"theme";s:15:"twentyseventeen";s:4:"prep";a:2:{i:0;a:4:{s:4:"host";s:15:"libertypress.ua";s:4:"path";s:5:"/blog";s:4:"port";i:0;s:5:"query";a:0:{}}i:1;a:4:{s:4:"host";s:19:"www.libertypress.ua";s:4:"path";s:5:"/blog";s:4:"port";i:0;s:5:"query";a:0:{}}}s:2:"id";s:2:"37";s:5:"id_kw";s:7:"page_id";}}s:10:"url_prefix";a:0:{}s:12:"url_asterisk";a:1:{i:0;a:4:{s:3:"url";s:29:"http://libertypress.ua/blog/*";s:7:"rel_url";s:6:"blog/*";s:5:"theme";s:15:"twentyseventeen";s:4:"prep";a:2:{i:0;a:4:{s:4:"host";s:15:"libertypress.ua";s:4:"path";s:7:"/blog/*";s:4:"port";i:0;s:5:"query";a:0:{}}i:1;a:4:{s:4:"host";s:19:"www.libertypress.ua";s:4:"path";s:7:"/blog/*";s:4:"port";i:0;s:5:"query";a:0:{}}}}}s:13:"query_present";b:0;s:5:"query";a:0:{}s:8:"remember";a:1:{s:5:"query";a:0:{}}s:8:"override";a:1:{s:5:"query";a:0:{}}s:7:"aliases";a:2:{i:0;a:3:{s:3:"url";s:22:"http://libertypress.ua";s:4:"prep";a:4:{s:4:"host";s:15:"libertypress.ua";s:4:"port";i:0;s:4:"path";s:0:"";s:5:"query";a:0:{}}s:4:"home";b:1;}i:1;a:3:{s:3:"url";s:26:"http://www.libertypress.ua";s:4:"prep";a:4:{s:4:"host";s:19:"www.libertypress.ua";s:4:"port";i:0;s:4:"path";s:0:"";s:5:"query";a:0:{}}s:4:"home";b:0;}}}', 'yes'),
(266, '_transient_twentyseventeen_categories', '1', 'yes'),
(287, 'responsive_video_grid_settings', 'a:2:{s:22:"display_video_lightbox";s:1:"1";s:17:"scollerBackground";s:7:"#FFFFFF";}', 'yes'),
(288, 'responsive_video_grid_messages', 'a:0:{}', 'yes'),
(291, 'gallery_video_lightbox_type', 'new_type', 'yes'),
(292, 'gallery_video_lightbox_lightboxView', 'view1', 'yes'),
(293, 'gallery_video_lightbox_speed_new', '600', 'yes'),
(294, 'gallery_video_lightbox_overlayClose_new', 'true', 'yes'),
(295, 'gallery_video_lightbox_loop_new', 'true', 'yes'),
(296, 'gallery_video_disable_right_click', 'off', 'yes'),
(297, 'widget_huge_it_gallery_video_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(300, 'portfolio_gallery_lightbox_type', 'new_type', 'yes'),
(301, 'portfolio_gallery_admin_image_hover_preview', 'on', 'yes'),
(302, 'portfolio_gallery_version', '2.4.2', 'yes'),
(303, 'portfolio_gallery_disable_right_click', 'off', 'yes'),
(304, 'widget_portfolio_gallery_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(327, 'theme_mods_twentysixteen', 'a:1:{s:18:"custom_css_post_id";i:-1;}', 'yes'),
(356, 'theme_mods_libertymedia', 'a:1:{s:18:"custom_css_post_id";i:-1;}', 'yes'),
(383, 'widget_video_central_widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(384, 'widget_video_central_featured_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(385, 'widget_video_central_popular_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(386, 'widget_video_central_recent_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(387, 'widget_video_central_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(388, 'widget_video_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(389, '_video_central_db_version', '1.1', 'yes'),
(390, 'rewrite_rules', 'a:133:{s:9:"videos/?$";s:28:"index.php?post_type=playlist";s:39:"videos/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?post_type=playlist&feed=$matches[1]";s:34:"videos/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?post_type=playlist&feed=$matches[1]";s:26:"videos/page/([0-9]{1,})/?$";s:46:"index.php?post_type=playlist&paged=$matches[1]";s:40:"videos/view/([^/]+)/page/?([0-9]{1,})/?$";s:45:"index.php?video_view=$matches[1]&=$matches[2]";s:22:"videos/view/([^/]+)/?$";s:32:"index.php?video_view=$matches[1]";s:34:"videos/search/page/?([0-9]{1,})/?$";s:22:"index.php?=$matches[1]";s:16:"videos/search/?$";s:22:"index.php?video_search";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:38:"videos/video/.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:48:"videos/video/.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:68:"videos/video/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"videos/video/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"videos/video/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:44:"videos/video/.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:27:"videos/video/(.+?)/embed/?$";s:38:"index.php?video=$matches[1]&embed=true";s:31:"videos/video/(.+?)/trackback/?$";s:32:"index.php?video=$matches[1]&tb=1";s:51:"videos/video/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?video=$matches[1]&feed=$matches[2]";s:46:"videos/video/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?video=$matches[1]&feed=$matches[2]";s:39:"videos/video/(.+?)/page/?([0-9]{1,})/?$";s:45:"index.php?video=$matches[1]&paged=$matches[2]";s:46:"videos/video/(.+?)/comment-page-([0-9]{1,})/?$";s:45:"index.php?video=$matches[1]&cpage=$matches[2]";s:35:"videos/video/(.+?)(?:/([0-9]+))?/?$";s:44:"index.php?video=$matches[1]&page=$matches[2]";s:57:"videos/video-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?video_tag=$matches[1]&feed=$matches[2]";s:52:"videos/video-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?video_tag=$matches[1]&feed=$matches[2]";s:33:"videos/video-tag/([^/]+)/embed/?$";s:42:"index.php?video_tag=$matches[1]&embed=true";s:45:"videos/video-tag/([^/]+)/page/?([0-9]{1,})/?$";s:49:"index.php?video_tag=$matches[1]&paged=$matches[2]";s:27:"videos/video-tag/([^/]+)/?$";s:31:"index.php?video_tag=$matches[1]";s:62:"videos/video-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?video_category=$matches[1]&feed=$matches[2]";s:57:"videos/video-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?video_category=$matches[1]&feed=$matches[2]";s:38:"videos/video-category/([^/]+)/embed/?$";s:47:"index.php?video_category=$matches[1]&embed=true";s:50:"videos/video-category/([^/]+)/page/?([0-9]{1,})/?$";s:54:"index.php?video_category=$matches[1]&paged=$matches[2]";s:32:"videos/video-category/([^/]+)/?$";s:36:"index.php?video_category=$matches[1]";s:35:"playlists/.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"playlists/.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"playlists/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"playlists/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"playlists/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"playlists/.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"playlists/(.+?)/embed/?$";s:41:"index.php?playlist=$matches[1]&embed=true";s:28:"playlists/(.+?)/trackback/?$";s:35:"index.php?playlist=$matches[1]&tb=1";s:48:"playlists/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?playlist=$matches[1]&feed=$matches[2]";s:43:"playlists/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?playlist=$matches[1]&feed=$matches[2]";s:36:"playlists/(.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?playlist=$matches[1]&paged=$matches[2]";s:43:"playlists/(.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?playlist=$matches[1]&cpage=$matches[2]";s:32:"playlists/(.+?)(?:/([0-9]+))?/?$";s:47:"index.php?playlist=$matches[1]&page=$matches[2]";s:52:"blog/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:47:"blog/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:28:"blog/category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:40:"blog/category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:22:"blog/category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:49:"blog/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:44:"blog/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:25:"blog/tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:37:"blog/tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:19:"blog/tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:50:"blog/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:45:"blog/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:26:"blog/type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:38:"blog/type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:20:"blog/type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:42:"videos/search/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?video_search=$matches[1]&paged=$matches[2]";s:24:"videos/search/([^/]+)/?$";s:34:"index.php?video_search=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:52:"blog/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:47:"blog/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:28:"blog/author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:40:"blog/author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:22:"blog/author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:74:"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:69:"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:50:"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:62:"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:44:"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:61:"blog/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:56:"blog/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:37:"blog/([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:49:"blog/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:31:"blog/([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:48:"blog/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:43:"blog/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:24:"blog/([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:36:"blog/([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:18:"blog/([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:32:"blog/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:42:"blog/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:62:"blog/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"blog/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"blog/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"blog/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:21:"blog/([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:25:"blog/([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:45:"blog/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:40:"blog/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:33:"blog/([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:40:"blog/([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:29:"blog/([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:21:"blog/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:31:"blog/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:51:"blog/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:46:"blog/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:46:"blog/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:27:"blog/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(393, '_video_central_root_slug', 'videos', 'yes'),
(394, '_video_central_include_root', '1', 'yes'),
(395, '_video_central_show_on_root', 'videos', 'yes'),
(396, '_video_central_video_slug', 'video', 'yes'),
(397, '_video_central_video_tag_tax_slug', 'video-tag', 'yes'),
(398, '_video_central_video_category_tax_slug', 'video-categories', 'yes'),
(399, '_video_central_view_slug', 'view', 'yes'),
(400, '_video_central_search_slug', 'search', 'yes'),
(419, 'video_category_children', 'a:0:{}', 'yes'),
(468, 'kgvid_video_embed_options', 'a:113:{s:12:"embed_method";s:17:"WordPress Default";s:13:"overlay_title";s:2:"on";s:6:"poster";s:66:"http://libertypress.ua/wp-content/uploads/2018/01/about-team4.jpeg";s:17:"endofvideooverlay";s:0:"";s:9:"watermark";s:0:"";s:17:"watermark_link_to";s:4:"home";s:13:"watermark_url";s:0:"";s:5:"align";s:4:"left";s:6:"resize";s:2:"on";s:8:"auto_res";s:9:"automatic";s:11:"pixel_ratio";s:2:"on";s:9:"fullwidth";s:2:"on";s:5:"width";s:3:"640";s:6:"height";s:3:"360";s:12:"fixed_aspect";s:8:"vertical";s:13:"gallery_width";s:3:"960";s:13:"gallery_thumb";s:3:"250";s:11:"gallery_end";s:0:"";s:16:"gallery_per_page";s:0:"";s:13:"gallery_title";s:2:"on";s:16:"controlbar_style";s:6:"docked";s:16:"pauseothervideos";s:2:"on";s:6:"volume";s:1:"1";s:7:"preload";s:8:"metadata";s:7:"js_skin";s:16:"kg-video-js-skin";s:17:"custom_attributes";s:0:"";s:7:"bgcolor";s:0:"";s:13:"configuration";s:0:"";s:4:"skin";s:96:"http://libertypress.ua/wp-content/plugins/video-embed-thumbnail-generator/flash/skin/kg_skin.xml";s:11:"stream_type";s:14:"liveOrRecorded";s:10:"scale_mode";s:9:"letterbox";s:8:"autohide";s:2:"on";s:10:"playbutton";s:2:"on";s:10:"embeddable";s:2:"on";s:6:"schema";s:2:"on";s:16:"twitter_username";s:0:"";s:11:"right_click";s:2:"on";s:14:"click_download";s:2:"on";s:11:"count_views";s:14:"start_complete";s:15:"generate_thumbs";s:1:"4";s:8:"featured";s:2:"on";s:12:"thumb_parent";s:5:"video";s:12:"capabilities";a:3:{s:21:"make_video_thumbnails";a:3:{s:13:"administrator";s:2:"on";s:6:"editor";s:2:"on";s:6:"author";s:2:"on";}s:13:"encode_videos";a:3:{s:13:"administrator";s:2:"on";s:6:"editor";s:2:"on";s:6:"author";s:2:"on";}s:25:"edit_others_video_encodes";a:2:{s:13:"administrator";s:2:"on";s:6:"editor";s:2:"on";}}s:15:"delete_children";s:19:"encoded videos only";s:9:"titlecode";s:8:"<strong>";s:8:"template";s:6:"gentle";s:8:"app_path";s:14:"/usr/local/bin";s:9:"video_app";s:6:"ffmpeg";s:18:"browser_thumbnails";s:2:"on";s:14:"replace_format";s:7:"fullres";s:11:"encode_1080";s:2:"on";s:10:"encode_720";s:2:"on";s:10:"encode_480";s:2:"on";s:13:"encode_mobile";s:2:"on";s:13:"custom_format";a:3:{s:6:"format";s:4:"h264";s:5:"width";s:0:"";s:6:"height";s:0:"";}s:18:"hide_video_formats";s:2:"on";s:17:"auto_thumb_number";s:1:"1";s:19:"auto_thumb_position";s:2:"50";s:11:"error_email";s:6:"nobody";s:14:"htaccess_login";s:0:"";s:17:"htaccess_password";s:0:"";s:16:"ffmpeg_watermark";a:6:{s:3:"url";s:0:"";s:5:"scale";s:1:"9";s:5:"align";s:5:"right";s:1:"x";s:1:"6";s:6:"valign";s:6:"bottom";s:1:"y";s:1:"5";}s:4:"moov";s:4:"none";s:9:"moov_path";s:14:"/usr/local/bin";s:12:"rate_control";s:3:"crf";s:8:"h264_CRF";s:2:"23";s:8:"webm_CRF";s:2:"10";s:7:"ogv_CRF";s:1:"6";s:18:"bitrate_multiplier";s:3:"0.1";s:12:"h264_profile";s:8:"baseline";s:10:"h264_level";s:1:"3";s:13:"audio_bitrate";s:3:"160";s:18:"ffmpeg_auto_rotate";s:2:"on";s:20:"simultaneous_encodes";s:1:"1";s:7:"threads";s:1:"1";s:4:"nice";s:2:"on";s:13:"sample_format";s:6:"mobile";s:13:"ffmpeg_exists";b:0;s:7:"version";s:6:"4.6.20";s:12:"jw_player_id";b:0;s:15:"template_gentle";b:0;s:14:"encode_fullres";b:0;s:11:"encode_webm";b:0;s:10:"encode_vp9";b:0;s:10:"encode_ogg";b:0;s:13:"encode_custom";b:0;s:18:"video_bitrate_flag";b:0;s:11:"ffmpeg_vpre";b:0;s:19:"ffmpeg_old_rotation";b:0;s:7:"nostdin";b:0;s:17:"overlay_embedcode";b:0;s:14:"twitter_button";b:0;s:15:"facebook_button";b:0;s:12:"downloadlink";b:0;s:10:"view_count";b:0;s:6:"inline";b:0;s:13:"minimum_width";b:0;s:18:"gallery_pagination";b:0;s:22:"nativecontrolsfortouch";b:0;s:8:"autoplay";b:0;s:4:"loop";b:0;s:4:"mute";b:0;s:13:"playback_rate";b:0;s:21:"endofvideooverlaysame";b:0;s:11:"auto_encode";b:0;s:15:"auto_encode_gif";b:0;s:10:"auto_thumb";b:0;s:10:"open_graph";b:0;s:12:"twitter_card";b:0;s:15:"oembed_provider";b:0;s:15:"oembed_security";b:0;s:13:"sample_rotate";b:0;s:17:"alwaysloadscripts";b:0;}', 'yes'),
(493, 'category_children', 'a:0:{}', 'yes'),
(501, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.4.zip";s:6:"locale";s:2:"uk";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.4.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.4-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.4-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.4";s:7:"version";s:5:"4.9.4";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1519900753;s:15:"version_checked";s:5:"4.9.4";s:12:"translations";a:0:{}}', 'no'),
(503, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:17:"d.sqate@gmail.com";s:7:"version";s:5:"4.9.4";s:9:"timestamp";i:1517938151;}', 'no'),
(768, '_transient_is_multi_author', '0', 'yes'),
(780, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1519900760;s:7:"checked";a:9:{s:19:"akismet/akismet.php";s:5:"4.0.1";s:71:"circle-image-slider-with-lightbox/circle-image-slider-with-lightbox.php";s:5:"1.0.3";s:51:"display-posts-shortcode/display-posts-shortcode.php";s:5:"2.9.0";s:35:"sp-form-example/sp-form-example.php";s:3:"1.0";s:9:"hello.php";s:3:"1.6";s:53:"jonradio-multiple-themes/jonradio-multiple-themes.php";s:5:"7.1.1";s:57:"photo-video-gallery-master/photo-video-gallery-master.php";s:5:"1.4.8";s:67:"video-embed-thumbnail-generator/video-embed-thumbnail-generator.php";s:6:"4.6.20";s:24:"video_menu/videomenu.php";s:3:"0.1";}s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":11:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.3";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.3.zip";s:5:"icons";a:3:{s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:7:"default";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";}s:7:"banners";a:2:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";s:7:"default";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.4";s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:6:{s:71:"circle-image-slider-with-lightbox/circle-image-slider-with-lightbox.php";O:8:"stdClass":9:{s:2:"id";s:47:"w.org/plugins/circle-image-slider-with-lightbox";s:4:"slug";s:33:"circle-image-slider-with-lightbox";s:6:"plugin";s:71:"circle-image-slider-with-lightbox/circle-image-slider-with-lightbox.php";s:11:"new_version";s:5:"1.0.3";s:3:"url";s:64:"https://wordpress.org/plugins/circle-image-slider-with-lightbox/";s:7:"package";s:82:"https://downloads.wordpress.org/plugin/circle-image-slider-with-lightbox.1.0.3.zip";s:5:"icons";a:2:{s:2:"1x";s:86:"https://ps.w.org/circle-image-slider-with-lightbox/assets/icon-128x128.png?rev=1206857";s:7:"default";s:86:"https://ps.w.org/circle-image-slider-with-lightbox/assets/icon-128x128.png?rev=1206857";}s:7:"banners";a:2:{s:2:"1x";s:88:"https://ps.w.org/circle-image-slider-with-lightbox/assets/banner-772x250.png?rev=1206908";s:7:"default";s:88:"https://ps.w.org/circle-image-slider-with-lightbox/assets/banner-772x250.png?rev=1206908";}s:11:"banners_rtl";a:0:{}}s:51:"display-posts-shortcode/display-posts-shortcode.php";O:8:"stdClass":9:{s:2:"id";s:37:"w.org/plugins/display-posts-shortcode";s:4:"slug";s:23:"display-posts-shortcode";s:6:"plugin";s:51:"display-posts-shortcode/display-posts-shortcode.php";s:11:"new_version";s:5:"2.9.0";s:3:"url";s:54:"https://wordpress.org/plugins/display-posts-shortcode/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/display-posts-shortcode.2.9.0.zip";s:5:"icons";a:3:{s:2:"1x";s:75:"https://ps.w.org/display-posts-shortcode/assets/icon-128x128.jpg?rev=985418";s:2:"2x";s:75:"https://ps.w.org/display-posts-shortcode/assets/icon-256x256.jpg?rev=985418";s:7:"default";s:75:"https://ps.w.org/display-posts-shortcode/assets/icon-256x256.jpg?rev=985418";}s:7:"banners";a:2:{s:2:"1x";s:77:"https://ps.w.org/display-posts-shortcode/assets/banner-772x250.jpg?rev=479842";s:7:"default";s:77:"https://ps.w.org/display-posts-shortcode/assets/banner-772x250.jpg?rev=479842";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:3:{s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:7:"default";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";}s:7:"banners";a:2:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";s:7:"default";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}s:53:"jonradio-multiple-themes/jonradio-multiple-themes.php";O:8:"stdClass":9:{s:2:"id";s:38:"w.org/plugins/jonradio-multiple-themes";s:4:"slug";s:24:"jonradio-multiple-themes";s:6:"plugin";s:53:"jonradio-multiple-themes/jonradio-multiple-themes.php";s:11:"new_version";s:5:"7.1.1";s:3:"url";s:55:"https://wordpress.org/plugins/jonradio-multiple-themes/";s:7:"package";s:73:"https://downloads.wordpress.org/plugin/jonradio-multiple-themes.7.1.1.zip";s:5:"icons";a:3:{s:2:"1x";s:77:"https://ps.w.org/jonradio-multiple-themes/assets/icon-128x128.png?rev=1134086";s:2:"2x";s:77:"https://ps.w.org/jonradio-multiple-themes/assets/icon-256x256.png?rev=1134086";s:7:"default";s:77:"https://ps.w.org/jonradio-multiple-themes/assets/icon-256x256.png?rev=1134086";}s:7:"banners";a:2:{s:2:"1x";s:78:"https://ps.w.org/jonradio-multiple-themes/assets/banner-772x250.jpg?rev=587407";s:7:"default";s:78:"https://ps.w.org/jonradio-multiple-themes/assets/banner-772x250.jpg?rev=587407";}s:11:"banners_rtl";a:0:{}}s:57:"photo-video-gallery-master/photo-video-gallery-master.php";O:8:"stdClass":9:{s:2:"id";s:40:"w.org/plugins/photo-video-gallery-master";s:4:"slug";s:26:"photo-video-gallery-master";s:6:"plugin";s:57:"photo-video-gallery-master/photo-video-gallery-master.php";s:11:"new_version";s:5:"1.4.8";s:3:"url";s:57:"https://wordpress.org/plugins/photo-video-gallery-master/";s:7:"package";s:75:"https://downloads.wordpress.org/plugin/photo-video-gallery-master.1.4.8.zip";s:5:"icons";a:3:{s:2:"1x";s:79:"https://ps.w.org/photo-video-gallery-master/assets/icon-128x128.png?rev=1292727";s:2:"2x";s:79:"https://ps.w.org/photo-video-gallery-master/assets/icon-256x256.png?rev=1447131";s:7:"default";s:79:"https://ps.w.org/photo-video-gallery-master/assets/icon-256x256.png?rev=1447131";}s:7:"banners";a:2:{s:2:"1x";s:81:"https://ps.w.org/photo-video-gallery-master/assets/banner-772x250.png?rev=1292680";s:7:"default";s:81:"https://ps.w.org/photo-video-gallery-master/assets/banner-772x250.png?rev=1292680";}s:11:"banners_rtl";a:0:{}}s:67:"video-embed-thumbnail-generator/video-embed-thumbnail-generator.php";O:8:"stdClass":9:{s:2:"id";s:45:"w.org/plugins/video-embed-thumbnail-generator";s:4:"slug";s:31:"video-embed-thumbnail-generator";s:6:"plugin";s:67:"video-embed-thumbnail-generator/video-embed-thumbnail-generator.php";s:11:"new_version";s:6:"4.6.20";s:3:"url";s:62:"https://wordpress.org/plugins/video-embed-thumbnail-generator/";s:7:"package";s:81:"https://downloads.wordpress.org/plugin/video-embed-thumbnail-generator.4.6.20.zip";s:5:"icons";a:3:{s:2:"1x";s:83:"https://ps.w.org/video-embed-thumbnail-generator/assets/icon-128x128.jpg?rev=994329";s:2:"2x";s:83:"https://ps.w.org/video-embed-thumbnail-generator/assets/icon-256x256.jpg?rev=994329";s:7:"default";s:83:"https://ps.w.org/video-embed-thumbnail-generator/assets/icon-256x256.jpg?rev=994329";}s:7:"banners";a:2:{s:2:"1x";s:85:"https://ps.w.org/video-embed-thumbnail-generator/assets/banner-772x250.jpg?rev=486715";s:7:"default";s:85:"https://ps.w.org/video-embed-thumbnail-generator/assets/banner-772x250.jpg?rev=486715";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(785, '_transient_timeout_dash_v2_1ba4cf213ee97a4b25c78e8a35c7da22', '1519952970', 'no'),
(786, '_transient_dash_v2_1ba4cf213ee97a4b25c78e8a35c7da22', '<div class="rss-widget"><p><strong>Помилка RSS:</strong> WP HTTP Error: cURL error 28: Resolving timed out after 10514 milliseconds</p></div><div class="rss-widget"><p><strong>Помилка RSS:</strong> WP HTTP Error: cURL error 28: Resolving timed out after 10561 milliseconds</p></div>', 'no'),
(791, '_site_transient_timeout_theme_roots', '1519926465', 'no'),
(792, '_site_transient_theme_roots', 'a:5:{s:7:"liberty";s:7:"/themes";s:12:"libertymedia";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB AUTO_INCREMENT=336 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1515242503:1'),
(4, 8, '_edit_last', '1'),
(5, 8, '_edit_lock', '1515243273:1'),
(6, 11, '_edit_last', '1'),
(7, 11, '_edit_lock', '1516284464:1'),
(10, 2, '_edit_lock', '1515242496:1'),
(11, 1, '_edit_lock', '1515416932:1'),
(12, 1, '_edit_last', '1'),
(13, 16, '_edit_last', '1'),
(14, 16, '_edit_lock', '1515243716:1'),
(15, 18, '_wp_attached_file', '2018/01/1.png'),
(16, 18, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:296;s:6:"height";i:295;s:4:"file";s:13:"2018/01/1.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(17, 19, '_wp_attached_file', '2018/01/2.png'),
(18, 19, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:295;s:6:"height";i:295;s:4:"file";s:13:"2018/01/2.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(19, 20, '_wp_attached_file', '2018/01/3.png'),
(20, 20, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:295;s:6:"height";i:296;s:4:"file";s:13:"2018/01/3.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"3-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(21, 21, '_wp_attached_file', '2018/01/4.png'),
(22, 21, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:295;s:6:"height";i:296;s:4:"file";s:13:"2018/01/4.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"4-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(23, 22, '_wp_attached_file', '2018/01/about-team1.jpeg'),
(24, 22, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:970;s:6:"height";i:670;s:4:"file";s:24:"2018/01/about-team1.jpeg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"about-team1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"about-team1-300x207.jpeg";s:5:"width";i:300;s:6:"height";i:207;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"about-team1-768x530.jpeg";s:5:"width";i:768;s:6:"height";i:530;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(25, 23, '_wp_attached_file', '2018/01/about-team2.jpeg'),
(26, 23, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:970;s:6:"height";i:670;s:4:"file";s:24:"2018/01/about-team2.jpeg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"about-team2-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"about-team2-300x207.jpeg";s:5:"width";i:300;s:6:"height";i:207;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"about-team2-768x530.jpeg";s:5:"width";i:768;s:6:"height";i:530;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(27, 24, '_wp_attached_file', '2018/01/about-team3.jpeg'),
(28, 24, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:970;s:6:"height";i:670;s:4:"file";s:24:"2018/01/about-team3.jpeg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"about-team3-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"about-team3-300x207.jpeg";s:5:"width";i:300;s:6:"height";i:207;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"about-team3-768x530.jpeg";s:5:"width";i:768;s:6:"height";i:530;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(29, 25, '_wp_attached_file', '2018/01/about-team4.jpeg'),
(30, 25, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1975;s:6:"height";i:1481;s:4:"file";s:24:"2018/01/about-team4.jpeg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"about-team4-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"about-team4-300x225.jpeg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"about-team4-768x576.jpeg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"about-team4-1024x768.jpeg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(31, 26, '_edit_last', '1'),
(32, 26, '_edit_lock', '1515252727:1'),
(39, 33, '_customize_changeset_uuid', 'b6dd4b90-5fdc-4fb0-ab6f-90ffe2a8be71'),
(42, 35, '_customize_changeset_uuid', 'b6dd4b90-5fdc-4fb0-ab6f-90ffe2a8be71'),
(44, 36, '_customize_changeset_uuid', 'b6dd4b90-5fdc-4fb0-ab6f-90ffe2a8be71'),
(46, 37, '_customize_changeset_uuid', 'b6dd4b90-5fdc-4fb0-ab6f-90ffe2a8be71'),
(47, 42, '_menu_item_type', 'post_type'),
(48, 42, '_menu_item_menu_item_parent', '0'),
(49, 42, '_menu_item_object_id', '33'),
(50, 42, '_menu_item_object', 'page'),
(51, 42, '_menu_item_target', ''),
(52, 42, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(53, 42, '_menu_item_xfn', ''),
(54, 42, '_menu_item_url', ''),
(55, 43, '_menu_item_type', 'post_type'),
(56, 43, '_menu_item_menu_item_parent', '0'),
(57, 43, '_menu_item_object_id', '35'),
(58, 43, '_menu_item_object', 'page'),
(59, 43, '_menu_item_target', ''),
(60, 43, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(61, 43, '_menu_item_xfn', ''),
(62, 43, '_menu_item_url', ''),
(63, 44, '_menu_item_type', 'post_type'),
(64, 44, '_menu_item_menu_item_parent', '0'),
(65, 44, '_menu_item_object_id', '36'),
(66, 44, '_menu_item_object', 'page'),
(67, 44, '_menu_item_target', ''),
(68, 44, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(69, 44, '_menu_item_xfn', ''),
(70, 44, '_menu_item_url', ''),
(71, 45, '_menu_item_type', 'post_type'),
(72, 45, '_menu_item_menu_item_parent', '0'),
(73, 45, '_menu_item_object_id', '37'),
(74, 45, '_menu_item_object', 'page'),
(75, 45, '_menu_item_target', ''),
(76, 45, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(77, 45, '_menu_item_xfn', ''),
(78, 45, '_menu_item_url', ''),
(90, 47, '_menu_item_type', 'post_type'),
(91, 47, '_menu_item_menu_item_parent', '0'),
(92, 47, '_menu_item_object_id', '11'),
(93, 47, '_menu_item_object', 'page'),
(94, 47, '_menu_item_target', ''),
(95, 47, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(96, 47, '_menu_item_xfn', ''),
(97, 47, '_menu_item_url', ''),
(98, 47, '_menu_item_orphaned', '1515410601'),
(99, 48, '_menu_item_type', 'custom'),
(100, 48, '_menu_item_menu_item_parent', '0'),
(101, 48, '_menu_item_object_id', '48'),
(102, 48, '_menu_item_object', 'custom'),
(103, 48, '_menu_item_target', ''),
(104, 48, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(105, 48, '_menu_item_xfn', ''),
(106, 48, '_menu_item_url', 'http://http://libertypress.ua/somethingelsehere'),
(107, 48, '_menu_item_orphaned', '1515410661'),
(153, 35, '_edit_lock', '1515412928:1'),
(154, 35, '_edit_last', '1'),
(155, 54, '_edit_last', '1'),
(156, 54, '_edit_lock', '1515414003:1'),
(157, 56, '_menu_item_type', 'post_type'),
(158, 56, '_menu_item_menu_item_parent', '0'),
(159, 56, '_menu_item_object_id', '54'),
(160, 56, '_menu_item_object', 'page'),
(161, 56, '_menu_item_target', ''),
(162, 56, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(163, 56, '_menu_item_xfn', ''),
(164, 56, '_menu_item_url', ''),
(166, 37, '_edit_lock', '1515416939:1'),
(167, 37, '_edit_last', '1'),
(168, 33, '_edit_lock', '1516284471:1'),
(169, 60, '_edit_last', '1'),
(171, 60, '_edit_lock', '1515417389:1'),
(173, 63, '_edit_last', '1'),
(174, 63, '_edit_lock', '1515417425:1'),
(176, 65, '_wp_attached_file', '2018/01/Wildlife.wmv'),
(177, 65, '_wp_attachment_metadata', 'a:14:{s:8:"lossless";b:0;s:7:"bitrate";i:5981397;s:12:"bitrate_mode";s:3:"cbr";s:8:"filesize";i:26246026;s:9:"mime_type";s:14:"video/x-ms-wmv";s:6:"length";i:30;s:16:"length_formatted";s:4:"0:30";s:5:"width";i:1280;s:6:"height";i:720;s:10:"fileformat";s:3:"asf";s:10:"dataformat";s:3:"wmv";s:7:"encoder";s:38:"Windows Media Video 9 Advanced Profile";s:5:"audio";a:12:{s:5:"codec";s:23:"Windows Media Audio 9.2";s:8:"channels";i:2;s:11:"sample_rate";i:44100;s:7:"bitrate";i:201987;s:15:"bits_per_sample";i:16;s:10:"dataformat";s:3:"wma";s:12:"bitrate_mode";s:3:"cbr";s:8:"lossless";b:0;s:7:"encoder";s:23:"Windows Media Audio 9.2";s:15:"encoder_options";s:41:"192 kbps, 44 kHz, stereo (A/V) 1-pass CBR";s:11:"channelmode";s:6:"stereo";s:17:"compression_ratio";d:0.1431313775510204;}s:17:"created_timestamp";i:1219698676;}'),
(178, 66, '_oembed_44db208ffba81118a8e6548b8dab51fe', '<iframe width="756" height="425" src="https://www.youtube.com/embed/1kfXOHohijo?feature=oembed" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(179, 66, '_oembed_time_44db208ffba81118a8e6548b8dab51fe', '1515489022'),
(180, 66, '_edit_last', '1'),
(182, 66, '_edit_lock', '1515489010:1'),
(183, 66, '_oembed_f7dd629c21d05a235e2a75ffb724acef', '<iframe width="500" height="281" src="https://www.youtube.com/embed/1kfXOHohijo?feature=oembed" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(184, 66, '_oembed_time_f7dd629c21d05a235e2a75ffb724acef', '1515489040'),
(185, 66, '_oembed_f8e1caa326ac4bdc2a5accdb7ea31c0d', '<iframe width="740" height="416" src="https://www.youtube.com/embed/1kfXOHohijo?feature=oembed" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(186, 66, '_oembed_time_f8e1caa326ac4bdc2a5accdb7ea31c0d', '1515489040'),
(188, 68, '_edit_last', '1'),
(189, 68, 'PVGM_all_photos_details', 's:1786:"a:3:{i:0;a:9:{s:16:"PVGM_image_label";s:5:"ipsum";s:14:"PVGM_image_url";s:57:"http://libertypress.ua/wp-includes/images/media/video.png";s:24:"PVGM_gallery_admin_thumb";s:57:"http://libertypress.ua/wp-includes/images/media/video.png";s:25:"PVGM_gallery_admin_medium";s:57:"http://libertypress.ua/wp-includes/images/media/video.png";s:25:"PVGM_gallery_admin_circle";s:57:"http://libertypress.ua/wp-includes/images/media/video.png";s:15:"PVGM_video_link";s:0:"";s:18:"PVGM_external_link";s:0:"";s:19:"PVGM_portfolio_type";s:5:"video";s:16:"PVGM_image_descp";s:23:"description lorem ipsum";}i:1;a:9:{s:16:"PVGM_image_label";s:0:"";s:14:"PVGM_image_url";s:66:"http://libertypress.ua/wp-content/uploads/2018/01/about-team3.jpeg";s:24:"PVGM_gallery_admin_thumb";s:66:"http://libertypress.ua/wp-content/uploads/2018/01/about-team3.jpeg";s:25:"PVGM_gallery_admin_medium";s:66:"http://libertypress.ua/wp-content/uploads/2018/01/about-team3.jpeg";s:25:"PVGM_gallery_admin_circle";s:66:"http://libertypress.ua/wp-content/uploads/2018/01/about-team3.jpeg";s:15:"PVGM_video_link";s:0:"";s:18:"PVGM_external_link";s:0:"";s:19:"PVGM_portfolio_type";s:5:"image";s:16:"PVGM_image_descp";s:0:"";}i:2;a:9:{s:16:"PVGM_image_label";s:5:"guide";s:14:"PVGM_image_url";s:57:"http://libertypress.ua/wp-includes/images/media/video.png";s:24:"PVGM_gallery_admin_thumb";s:57:"http://libertypress.ua/wp-includes/images/media/video.png";s:25:"PVGM_gallery_admin_medium";s:57:"http://libertypress.ua/wp-includes/images/media/video.png";s:25:"PVGM_gallery_admin_circle";s:57:"http://libertypress.ua/wp-includes/images/media/video.png";s:15:"PVGM_video_link";s:43:"https://www.youtube.com/watch?v=6wkcladPF_o";s:18:"PVGM_external_link";s:0:"";s:19:"PVGM_portfolio_type";s:5:"video";s:16:"PVGM_image_descp";s:4:"desc";}}";'),
(190, 68, 'PVGM_total_images_count', '3'),
(191, 68, 'PVGM_Gallery_Settings_68', 's:792:"a:21:{s:11:"PVGM_Effect";s:5:"fifth";s:10:"PVGM_Color";s:7:"#31A3DD";s:19:"PVGM_Label_Bg_Color";s:7:"#000000";s:21:"PVGM_Label_Text_Color";s:7:"#ffffff";s:21:"PVGM_Descp_Text_Color";s:7:"#ffffff";s:20:"PVGM_Button_Bg_Color";s:7:"#000000";s:22:"PVGM_Button_Text_Color";s:7:"#ffffff";s:23:"PVGM_Show_Gallery_Title";s:3:"yes";s:21:"PVGM_Show_Image_Label";s:3:"yes";s:21:"PVGM_Show_Image_Descp";s:3:"yes";s:22:"PVGM_Show_Image_Button";s:3:"yes";s:16:"PVGM_Button_Text";s:0:"";s:19:"PVGM_Gallery_Layout";s:8:"col-md-6";s:14:"PVGM_Open_Link";s:6:"_blank";s:15:"PVGM_Font_Style";s:5:"Arial";s:20:"PVGM_Lable_Font_Size";s:2:"18";s:16:"PVGM_tlineheight";s:2:"24";s:19:"PVGM_Desc_Font_Size";s:2:"14";s:14:"PVGM_Light_Box";s:8:"lightbox";s:17:"PVGM_Image_Border";s:2:"no";s:15:"PVGM_Custom_CSS";s:0:"";}";'),
(192, 68, '_edit_lock', '1516285547:1'),
(193, 69, '_edit_last', '1'),
(194, 69, '_edit_lock', '1515324958:1'),
(209, 76, '_wp_attached_file', '2018/01/videoplayback.mp4'),
(210, 76, '_wp_attachment_metadata', 'a:10:{s:8:"filesize";i:51870748;s:9:"mime_type";s:9:"video/mp4";s:6:"length";i:601;s:16:"length_formatted";s:5:"10:01";s:5:"width";i:640;s:6:"height";i:360;s:10:"fileformat";s:3:"mp4";s:10:"dataformat";s:9:"quicktime";s:5:"audio";a:7:{s:10:"dataformat";s:3:"mp4";s:5:"codec";s:19:"ISO/IEC 14496-3 AAC";s:11:"sample_rate";d:44100;s:8:"channels";i:2;s:15:"bits_per_sample";i:16;s:8:"lossless";b:0;s:11:"channelmode";s:6:"stereo";}s:17:"created_timestamp";i:1515993134;}'),
(211, 77, '_edit_last', '1'),
(212, 77, '_edit_lock', '1516283410:1'),
(213, 77, '_video_central_featured_video', '1'),
(214, 77, '_video_central_description', '<p>desc</p>\n'),
(216, 77, '_video_central_source', 'self'),
(217, 77, '_video_central_video_duration', '10:01'),
(218, 79, '_edit_last', '1'),
(219, 79, '_edit_lock', '1516282765:1'),
(220, 79, '_video_central_featured_video', '0'),
(221, 79, '_video_central_description', '<p>desc2 lorem</p>\n'),
(222, 79, '_video_central_mp4', '65'),
(223, 79, '_video_central_source', 'self'),
(224, 79, '_video_central_video_duration', '4:00'),
(225, 79, '_video_central_video_views_count', '0'),
(226, 77, '_video_central_video_views_count', '0'),
(231, 77, '_video_central_mp4', '76'),
(232, 81, 'videos', 'a:2:{i:0;a:7:{s:6:"artist";s:0:"";s:9:"artworkId";i:0;s:10:"artworkUrl";s:0:"";s:7:"videoId";i:77;s:6:"length";s:0:"";s:5:"title";s:9:"New video";s:5:"order";i:0;}i:1;a:7:{s:6:"artist";s:0:"";s:9:"artworkId";i:0;s:10:"artworkUrl";s:0:"";s:7:"videoId";i:79;s:6:"length";s:0:"";s:5:"title";s:12:"custom video";s:5:"order";i:1;}}'),
(233, 81, '_edit_last', '1'),
(234, 81, '_edit_lock', '1516283600:1'),
(235, 83, '_menu_item_type', 'custom'),
(236, 83, '_menu_item_menu_item_parent', '42'),
(237, 83, '_menu_item_object_id', '83'),
(238, 83, '_menu_item_object', 'custom'),
(239, 83, '_menu_item_target', ''),
(240, 83, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(241, 83, '_menu_item_xfn', ''),
(242, 83, '_menu_item_url', 'http://libertypress.ua/portfolio-wedding'),
(244, 84, '_menu_item_type', 'custom'),
(245, 84, '_menu_item_menu_item_parent', '42'),
(246, 84, '_menu_item_object_id', '84'),
(247, 84, '_menu_item_object', 'custom'),
(248, 84, '_menu_item_target', ''),
(249, 84, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(250, 84, '_menu_item_xfn', ''),
(251, 84, '_menu_item_url', 'http://libertypress.ua/portfolio-production'),
(261, 86, '_edit_last', '1'),
(262, 86, '_edit_lock', '1516287619:1'),
(263, 86, 'PVGM_all_photos_details', 's:1704:"a:3:{i:0;a:9:{s:16:"PVGM_image_label";s:0:"";s:14:"PVGM_image_url";s:66:"http://libertypress.ua/wp-content/uploads/2018/01/about-team4.jpeg";s:24:"PVGM_gallery_admin_thumb";s:66:"http://libertypress.ua/wp-content/uploads/2018/01/about-team4.jpeg";s:25:"PVGM_gallery_admin_medium";s:66:"http://libertypress.ua/wp-content/uploads/2018/01/about-team4.jpeg";s:25:"PVGM_gallery_admin_circle";s:66:"http://libertypress.ua/wp-content/uploads/2018/01/about-team4.jpeg";s:15:"PVGM_video_link";s:0:"";s:18:"PVGM_external_link";s:0:"";s:19:"PVGM_portfolio_type";s:5:"image";s:16:"PVGM_image_descp";s:0:"";}i:1;a:9:{s:16:"PVGM_image_label";s:0:"";s:14:"PVGM_image_url";s:57:"http://libertypress.ua/wp-includes/images/media/video.png";s:24:"PVGM_gallery_admin_thumb";s:57:"http://libertypress.ua/wp-includes/images/media/video.png";s:25:"PVGM_gallery_admin_medium";s:57:"http://libertypress.ua/wp-includes/images/media/video.png";s:25:"PVGM_gallery_admin_circle";s:57:"http://libertypress.ua/wp-includes/images/media/video.png";s:15:"PVGM_video_link";s:0:"";s:18:"PVGM_external_link";s:0:"";s:19:"PVGM_portfolio_type";s:5:"video";s:16:"PVGM_image_descp";s:0:"";}i:2;a:9:{s:16:"PVGM_image_label";s:0:"";s:14:"PVGM_image_url";s:57:"http://libertypress.ua/wp-includes/images/media/video.png";s:24:"PVGM_gallery_admin_thumb";s:57:"http://libertypress.ua/wp-includes/images/media/video.png";s:25:"PVGM_gallery_admin_medium";s:57:"http://libertypress.ua/wp-includes/images/media/video.png";s:25:"PVGM_gallery_admin_circle";s:57:"http://libertypress.ua/wp-includes/images/media/video.png";s:15:"PVGM_video_link";s:0:"";s:18:"PVGM_external_link";s:0:"";s:19:"PVGM_portfolio_type";s:5:"image";s:16:"PVGM_image_descp";s:0:"";}}";'),
(264, 86, 'PVGM_total_images_count', '3'),
(265, 86, 'PVGM_Gallery_Settings_86', 's:792:"a:21:{s:11:"PVGM_Effect";s:5:"fifth";s:10:"PVGM_Color";s:7:"#31A3DD";s:19:"PVGM_Label_Bg_Color";s:7:"#000000";s:21:"PVGM_Label_Text_Color";s:7:"#ffffff";s:21:"PVGM_Descp_Text_Color";s:7:"#ffffff";s:20:"PVGM_Button_Bg_Color";s:7:"#000000";s:22:"PVGM_Button_Text_Color";s:7:"#ffffff";s:23:"PVGM_Show_Gallery_Title";s:3:"yes";s:21:"PVGM_Show_Image_Label";s:3:"yes";s:21:"PVGM_Show_Image_Descp";s:3:"yes";s:22:"PVGM_Show_Image_Button";s:3:"yes";s:16:"PVGM_Button_Text";s:0:"";s:19:"PVGM_Gallery_Layout";s:8:"col-md-6";s:14:"PVGM_Open_Link";s:6:"_blank";s:15:"PVGM_Font_Style";s:5:"Arial";s:20:"PVGM_Lable_Font_Size";s:2:"18";s:16:"PVGM_tlineheight";s:2:"24";s:19:"PVGM_Desc_Font_Size";s:2:"14";s:14:"PVGM_Light_Box";s:8:"lightbox";s:17:"PVGM_Image_Border";s:2:"no";s:15:"PVGM_Custom_CSS";s:0:"";}";'),
(266, 76, '_kgflashmediaplayer-poster-id', '24'),
(267, 76, '_kgflashmediaplayer-poster', 'http://libertypress.ua/wp-content/uploads/2018/01/about-team3.jpeg'),
(268, 76, '_thumbnail_id', '24'),
(269, 76, '_kgvid-meta', 'a:25:{s:5:"embed";s:12:"Single Video";s:12:"downloadlink";s:5:"false";s:6:"starts";s:1:"0";s:7:"play_25";s:1:"0";s:7:"play_50";s:1:"0";s:7:"play_75";s:1:"0";s:13:"completeviews";s:1:"0";s:14:"numberofthumbs";s:1:"4";s:9:"thumbtime";s:8:"04:20.25";s:10:"lockaspect";s:2:"on";s:9:"showtitle";s:5:"false";s:19:"gallery_thumb_width";s:3:"250";s:6:"aspect";s:6:"0.5625";s:6:"poster";s:66:"http://libertypress.ua/wp-content/uploads/2018/01/about-team3.jpeg";s:3:"url";s:67:"http://libertypress.ua/wp-content/uploads/2018/01/videoplayback.mp4";s:8:"maxwidth";s:3:"640";s:9:"maxheight";s:3:"360";s:13:"encodefullres";s:5:"false";s:10:"encode1080";s:10:"notchecked";s:9:"encode720";s:10:"notchecked";s:9:"encode480";s:10:"notchecked";s:12:"encodemobile";s:10:"notchecked";s:10:"encodewebm";s:5:"false";s:9:"encodevp9";s:5:"false";s:9:"encodeogg";s:5:"false";}'),
(270, 88, '_wp_attached_file', '2018/01/nd2.mp4'),
(271, 88, '_wp_attachment_metadata', 'a:10:{s:8:"filesize";i:51870748;s:9:"mime_type";s:9:"video/mp4";s:6:"length";i:601;s:16:"length_formatted";s:5:"10:01";s:5:"width";i:640;s:6:"height";i:360;s:10:"fileformat";s:3:"mp4";s:10:"dataformat";s:9:"quicktime";s:5:"audio";a:7:{s:10:"dataformat";s:3:"mp4";s:5:"codec";s:19:"ISO/IEC 14496-3 AAC";s:11:"sample_rate";d:44100;s:8:"channels";i:2;s:15:"bits_per_sample";i:16;s:8:"lossless";b:0;s:11:"channelmode";s:6:"stereo";}s:17:"created_timestamp";i:1515993134;}'),
(272, 88, '_kgflashmediaplayer-poster-id', '25'),
(273, 88, '_kgflashmediaplayer-poster', 'http://libertypress.ua/wp-content/uploads/2018/01/about-team4.jpeg'),
(274, 88, '_thumbnail_id', '25'),
(275, 88, '_kgvid-meta', 'a:23:{s:5:"embed";s:12:"Single Video";s:12:"downloadlink";s:5:"false";s:6:"starts";s:1:"0";s:7:"play_25";s:1:"0";s:7:"play_50";s:1:"0";s:7:"play_75";s:1:"0";s:13:"completeviews";s:1:"0";s:14:"numberofthumbs";s:1:"4";s:10:"lockaspect";s:2:"on";s:9:"showtitle";s:5:"false";s:19:"gallery_thumb_width";s:3:"250";s:6:"aspect";s:6:"0.5625";s:3:"url";s:57:"http://libertypress.ua/wp-content/uploads/2018/01/nd2.mp4";s:8:"maxwidth";s:3:"640";s:9:"maxheight";s:3:"360";s:13:"encodefullres";s:5:"false";s:10:"encode1080";s:10:"notchecked";s:9:"encode720";s:10:"notchecked";s:9:"encode480";s:10:"notchecked";s:12:"encodemobile";s:10:"notchecked";s:10:"encodewebm";s:5:"false";s:9:"encodevp9";s:5:"false";s:9:"encodeogg";s:5:"false";}'),
(276, 89, '_wp_attached_file', '2018/01/nd3.mp4'),
(277, 89, '_wp_attachment_metadata', 'a:10:{s:8:"filesize";i:51870748;s:9:"mime_type";s:9:"video/mp4";s:6:"length";i:601;s:16:"length_formatted";s:5:"10:01";s:5:"width";i:640;s:6:"height";i:360;s:10:"fileformat";s:3:"mp4";s:10:"dataformat";s:9:"quicktime";s:5:"audio";a:7:{s:10:"dataformat";s:3:"mp4";s:5:"codec";s:19:"ISO/IEC 14496-3 AAC";s:11:"sample_rate";d:44100;s:8:"channels";i:2;s:15:"bits_per_sample";i:16;s:8:"lossless";b:0;s:11:"channelmode";s:6:"stereo";}s:17:"created_timestamp";i:1515993134;}'),
(278, 90, '_wp_attached_file', '2018/01/wordpressurl.txt'),
(279, 91, '_wp_attached_file', '2018/01/wordpressurl-Copy.txt'),
(280, 92, '_wp_attached_file', '2018/01/wordpressurl-Copy-2.txt'),
(281, 93, '_wp_attached_file', '2018/01/wordpressurl-Copy-3.txt'),
(282, 94, '_wp_attached_file', '2018/01/wordpressurl-Copy-4.txt'),
(283, 95, '_wp_attached_file', '2018/01/nd2-1.mp4'),
(284, 95, '_wp_attachment_metadata', 'a:10:{s:8:"filesize";i:51870748;s:9:"mime_type";s:9:"video/mp4";s:6:"length";i:601;s:16:"length_formatted";s:5:"10:01";s:5:"width";i:640;s:6:"height";i:360;s:10:"fileformat";s:3:"mp4";s:10:"dataformat";s:9:"quicktime";s:5:"audio";a:7:{s:10:"dataformat";s:3:"mp4";s:5:"codec";s:19:"ISO/IEC 14496-3 AAC";s:11:"sample_rate";d:44100;s:8:"channels";i:2;s:15:"bits_per_sample";i:16;s:8:"lossless";b:0;s:11:"channelmode";s:6:"stereo";}s:17:"created_timestamp";i:1515993134;}'),
(285, 96, '_wp_attached_file', '2018/01/nd3-1.mp4'),
(286, 96, '_wp_attachment_metadata', 'a:10:{s:8:"filesize";i:51870748;s:9:"mime_type";s:9:"video/mp4";s:6:"length";i:601;s:16:"length_formatted";s:5:"10:01";s:5:"width";i:640;s:6:"height";i:360;s:10:"fileformat";s:3:"mp4";s:10:"dataformat";s:9:"quicktime";s:5:"audio";a:7:{s:10:"dataformat";s:3:"mp4";s:5:"codec";s:19:"ISO/IEC 14496-3 AAC";s:11:"sample_rate";d:44100;s:8:"channels";i:2;s:15:"bits_per_sample";i:16;s:8:"lossless";b:0;s:11:"channelmode";s:6:"stereo";}s:17:"created_timestamp";i:1515993134;}'),
(287, 98, '_wp_attached_file', '2018/02/MY_VIDEO.mp4'),
(288, 98, '_wp_attachment_metadata', 'a:10:{s:7:"bitrate";i:285562;s:8:"filesize";i:430783;s:9:"mime_type";s:15:"video/quicktime";s:6:"length";i:12;s:16:"length_formatted";s:4:"0:12";s:5:"width";i:268;s:6:"height";i:356;s:10:"fileformat";s:3:"mp4";s:10:"dataformat";s:9:"quicktime";s:17:"created_timestamp";i:-2082844800;}'),
(289, 99, '_wp_attached_file', '2018/02/MY_VIDEO-1.mp4'),
(290, 99, '_wp_attachment_metadata', 'a:10:{s:7:"bitrate";i:285562;s:8:"filesize";i:430783;s:9:"mime_type";s:15:"video/quicktime";s:6:"length";i:12;s:16:"length_formatted";s:4:"0:12";s:5:"width";i:268;s:6:"height";i:356;s:10:"fileformat";s:3:"mp4";s:10:"dataformat";s:9:"quicktime";s:17:"created_timestamp";i:-2082844800;}'),
(291, 100, '_wp_attached_file', '2018/02/MY_VIDEO-2.mp4'),
(292, 100, '_wp_attachment_metadata', 'a:10:{s:7:"bitrate";i:285562;s:8:"filesize";i:430783;s:9:"mime_type";s:15:"video/quicktime";s:6:"length";i:12;s:16:"length_formatted";s:4:"0:12";s:5:"width";i:268;s:6:"height";i:356;s:10:"fileformat";s:3:"mp4";s:10:"dataformat";s:9:"quicktime";s:17:"created_timestamp";i:-2082844800;}'),
(293, 101, '_wp_attached_file', '2018/02/MY_VIDEO-3.mp4'),
(294, 101, '_wp_attachment_metadata', 'a:10:{s:7:"bitrate";i:285562;s:8:"filesize";i:430783;s:9:"mime_type";s:15:"video/quicktime";s:6:"length";i:12;s:16:"length_formatted";s:4:"0:12";s:5:"width";i:268;s:6:"height";i:356;s:10:"fileformat";s:3:"mp4";s:10:"dataformat";s:9:"quicktime";s:17:"created_timestamp";i:-2082844800;}'),
(295, 102, '_wp_attached_file', '2018/02/MY_VIDEO-4.mp4'),
(296, 102, '_wp_attachment_metadata', 'a:10:{s:7:"bitrate";i:285562;s:8:"filesize";i:430783;s:9:"mime_type";s:15:"video/quicktime";s:6:"length";i:12;s:16:"length_formatted";s:4:"0:12";s:5:"width";i:268;s:6:"height";i:356;s:10:"fileformat";s:3:"mp4";s:10:"dataformat";s:9:"quicktime";s:17:"created_timestamp";i:-2082844800;}'),
(297, 103, '_wp_attached_file', '2018/02/MY_VIDEO-5.mp4'),
(298, 103, '_wp_attachment_metadata', 'a:10:{s:7:"bitrate";i:285562;s:8:"filesize";i:430783;s:9:"mime_type";s:15:"video/quicktime";s:6:"length";i:12;s:16:"length_formatted";s:4:"0:12";s:5:"width";i:268;s:6:"height";i:356;s:10:"fileformat";s:3:"mp4";s:10:"dataformat";s:9:"quicktime";s:17:"created_timestamp";i:-2082844800;}'),
(299, 104, '_wp_attached_file', '2018/02/Jaymes-Young-Northern-Lights.jpg'),
(300, 104, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:720;s:4:"file";s:40:"2018/02/Jaymes-Young-Northern-Lights.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:40:"Jaymes-Young-Northern-Lights-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:40:"Jaymes-Young-Northern-Lights-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:40:"Jaymes-Young-Northern-Lights-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:41:"Jaymes-Young-Northern-Lights-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:24:"PVGM_gallery_admin_thumb";a:4:{s:4:"file";s:40:"Jaymes-Young-Northern-Lights-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:25:"PVGM_gallery_admin_circle";a:4:{s:4:"file";s:40:"Jaymes-Young-Northern-Lights-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:25:"PVGM_gallery_admin_medium";a:4:{s:4:"file";s:40:"Jaymes-Young-Northern-Lights-400x720.jpg";s:5:"width";i:400;s:6:"height";i:720;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(301, 103, '_thumbnail_id', '104'),
(302, 105, '_wp_attached_file', '2018/02/MY_VIDEO-6.mp4'),
(303, 105, '_wp_attachment_metadata', 'a:10:{s:7:"bitrate";i:285562;s:8:"filesize";i:430783;s:9:"mime_type";s:15:"video/quicktime";s:6:"length";i:12;s:16:"length_formatted";s:4:"0:12";s:5:"width";i:268;s:6:"height";i:356;s:10:"fileformat";s:3:"mp4";s:10:"dataformat";s:9:"quicktime";s:17:"created_timestamp";i:-2082844800;}'),
(304, 106, '_wp_attached_file', '2018/02/odesz.jpg'),
(305, 106, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:720;s:4:"file";s:17:"2018/02/odesz.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"odesz-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"odesz-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:17:"odesz-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"odesz-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:24:"PVGM_gallery_admin_thumb";a:4:{s:4:"file";s:17:"odesz-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:25:"PVGM_gallery_admin_circle";a:4:{s:4:"file";s:17:"odesz-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:25:"PVGM_gallery_admin_medium";a:4:{s:4:"file";s:17:"odesz-400x720.jpg";s:5:"width";i:400;s:6:"height";i:720;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(306, 105, '_thumbnail_id', '106'),
(307, 108, '_wp_attached_file', '2018/02/MY_VIDEO-7.mp4'),
(308, 108, '_wp_attachment_metadata', 'a:10:{s:7:"bitrate";i:285562;s:8:"filesize";i:430783;s:9:"mime_type";s:15:"video/quicktime";s:6:"length";i:12;s:16:"length_formatted";s:4:"0:12";s:5:"width";i:268;s:6:"height";i:356;s:10:"fileformat";s:3:"mp4";s:10:"dataformat";s:9:"quicktime";s:17:"created_timestamp";i:-2082844800;}'),
(309, 109, '_wp_attached_file', '2018/02/Фоновый-рисунок-средства-просмотра-фотографий-Windows.jpg'),
(310, 109, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:600;s:4:"file";s:106:"2018/02/Фоновый-рисунок-средства-просмотра-фотографий-Windows.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:106:"Фоновый-рисунок-средства-просмотра-фотографий-Windows-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:106:"Фоновый-рисунок-средства-просмотра-фотографий-Windows-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:106:"Фоновый-рисунок-средства-просмотра-фотографий-Windows-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:24:"PVGM_gallery_admin_thumb";a:4:{s:4:"file";s:106:"Фоновый-рисунок-средства-просмотра-фотографий-Windows-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:25:"PVGM_gallery_admin_circle";a:4:{s:4:"file";s:106:"Фоновый-рисунок-средства-просмотра-фотографий-Windows-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:25:"PVGM_gallery_admin_medium";a:4:{s:4:"file";s:106:"Фоновый-рисунок-средства-просмотра-фотографий-Windows-400x600.jpg";s:5:"width";i:400;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(312, 108, '_kgvid-meta', 'a:28:{s:5:"embed";s:12:"Single Video";s:5:"width";s:3:"268";s:6:"height";s:3:"356";s:11:"actualwidth";i:268;s:12:"actualheight";i:356;s:12:"downloadlink";s:5:"false";s:6:"starts";s:1:"0";s:7:"play_25";s:1:"0";s:7:"play_50";s:1:"0";s:7:"play_75";s:1:"0";s:13:"completeviews";s:1:"0";s:14:"numberofthumbs";s:1:"4";s:10:"lockaspect";s:2:"on";s:9:"showtitle";s:5:"false";s:19:"gallery_thumb_width";s:3:"250";s:6:"aspect";s:7:"1.32836";s:3:"url";s:64:"http://libertypress.ua/wp-content/uploads/2018/02/MY_VIDEO-7.mp4";s:8:"maxwidth";s:3:"640";s:9:"maxheight";s:3:"360";s:13:"encodefullres";s:5:"false";s:10:"encode1080";s:10:"notchecked";s:9:"encode720";s:10:"notchecked";s:9:"encode480";s:10:"notchecked";s:12:"encodemobile";s:10:"notchecked";s:10:"encodewebm";s:5:"false";s:9:"encodevp9";s:5:"false";s:9:"encodeogg";s:5:"false";s:6:"poster";s:71:"http://libertypress.ua/wp-content/uploads/2018/02/MY_VIDEO-7_thumb0.jpg";}'),
(313, 110, '_wp_attached_file', '2018/02/MY_VIDEO-7_thumb0.jpg'),
(314, 110, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:268;s:6:"height";i:356;s:4:"file";s:29:"2018/02/MY_VIDEO-7_thumb0.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"MY_VIDEO-7_thumb0-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"MY_VIDEO-7_thumb0-226x300.jpg";s:5:"width";i:226;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:24:"PVGM_gallery_admin_thumb";a:4:{s:4:"file";s:29:"MY_VIDEO-7_thumb0-268x300.jpg";s:5:"width";i:268;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(315, 108, '_kgflashmediaplayer-poster-id', '110'),
(316, 110, '_kgflashmediaplayer-video-id', '108'),
(317, 108, '_kgflashmediaplayer-poster', 'http://libertypress.ua/wp-content/uploads/2018/02/MY_VIDEO-7_thumb0.jpg'),
(318, 108, '_thumbnail_id', '110'),
(319, 111, '_wp_attached_file', '2018/02/Landscape-757.mp4'),
(320, 111, '_wp_attachment_metadata', 'a:10:{s:8:"filesize";i:14084797;s:9:"mime_type";s:9:"video/mp4";s:6:"length";i:24;s:16:"length_formatted";s:4:"0:24";s:5:"width";i:1920;s:6:"height";i:1080;s:10:"fileformat";s:3:"mp4";s:10:"dataformat";s:9:"quicktime";s:5:"audio";a:7:{s:10:"dataformat";s:3:"mp4";s:5:"codec";s:19:"ISO/IEC 14496-3 AAC";s:11:"sample_rate";d:48000;s:8:"channels";i:2;s:15:"bits_per_sample";i:16;s:8:"lossless";b:0;s:11:"channelmode";s:6:"stereo";}s:17:"created_timestamp";i:1442182746;}'),
(321, 112, '_wp_attached_file', '2018/02/WideWallpapers_ByMortallity_17.jpg'),
(322, 112, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1200;s:4:"file";s:42:"2018/02/WideWallpapers_ByMortallity_17.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:42:"WideWallpapers_ByMortallity_17-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:42:"WideWallpapers_ByMortallity_17-300x188.jpg";s:5:"width";i:300;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:42:"WideWallpapers_ByMortallity_17-768x480.jpg";s:5:"width";i:768;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:43:"WideWallpapers_ByMortallity_17-1024x640.jpg";s:5:"width";i:1024;s:6:"height";i:640;s:9:"mime-type";s:10:"image/jpeg";}s:24:"PVGM_gallery_admin_thumb";a:4:{s:4:"file";s:42:"WideWallpapers_ByMortallity_17-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:25:"PVGM_gallery_admin_circle";a:4:{s:4:"file";s:42:"WideWallpapers_ByMortallity_17-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:25:"PVGM_gallery_admin_medium";a:4:{s:4:"file";s:43:"WideWallpapers_ByMortallity_17-400x1200.jpg";s:5:"width";i:400;s:6:"height";i:1200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(323, 111, '_thumbnail_id', '112'),
(324, 113, '_wp_attached_file', '2018/02/small.mp4'),
(325, 113, '_wp_attachment_metadata', 'a:10:{s:8:"filesize";i:383631;s:9:"mime_type";s:9:"video/mp4";s:6:"length";i:6;s:16:"length_formatted";s:4:"0:06";s:5:"width";i:560;s:6:"height";i:320;s:10:"fileformat";s:3:"mp4";s:10:"dataformat";s:9:"quicktime";s:5:"audio";a:7:{s:10:"dataformat";s:3:"mp4";s:5:"codec";s:19:"ISO/IEC 14496-3 AAC";s:11:"sample_rate";d:48000;s:8:"channels";i:1;s:15:"bits_per_sample";i:16;s:8:"lossless";b:0;s:11:"channelmode";s:4:"mono";}s:17:"created_timestamp";i:1269120551;}'),
(326, 114, '_wp_attached_file', '2018/02/WideWallpapers_ByMortallity_22.jpg'),
(327, 114, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1200;s:4:"file";s:42:"2018/02/WideWallpapers_ByMortallity_22.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:42:"WideWallpapers_ByMortallity_22-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:42:"WideWallpapers_ByMortallity_22-300x188.jpg";s:5:"width";i:300;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:42:"WideWallpapers_ByMortallity_22-768x480.jpg";s:5:"width";i:768;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:43:"WideWallpapers_ByMortallity_22-1024x640.jpg";s:5:"width";i:1024;s:6:"height";i:640;s:9:"mime-type";s:10:"image/jpeg";}s:24:"PVGM_gallery_admin_thumb";a:4:{s:4:"file";s:42:"WideWallpapers_ByMortallity_22-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:25:"PVGM_gallery_admin_circle";a:4:{s:4:"file";s:42:"WideWallpapers_ByMortallity_22-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:25:"PVGM_gallery_admin_medium";a:4:{s:4:"file";s:43:"WideWallpapers_ByMortallity_22-400x1200.jpg";s:5:"width";i:400;s:6:"height";i:1200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(328, 113, '_thumbnail_id', '114'),
(329, 116, '_kgflashmediaplayer-poster-id', '104'),
(330, 116, '_kgflashmediaplayer-poster', 'http://libertypress.ua/wp-content/uploads/2018/02/Jaymes-Young-Northern-Lights.jpg'),
(331, 116, '_thumbnail_id', '104'),
(332, 116, '_kgvid-meta', 'a:24:{s:5:"embed";s:12:"Single Video";s:12:"downloadlink";s:5:"false";s:6:"starts";s:1:"0";s:7:"play_25";s:1:"0";s:7:"play_50";s:1:"0";s:7:"play_75";s:1:"0";s:13:"completeviews";s:1:"0";s:14:"numberofthumbs";s:1:"4";s:10:"lockaspect";s:2:"on";s:9:"showtitle";s:5:"false";s:19:"gallery_thumb_width";s:3:"250";s:6:"aspect";s:6:"0.5625";s:6:"poster";s:82:"http://libertypress.ua/wp-content/uploads/2018/02/Jaymes-Young-Northern-Lights.jpg";s:10:"encode1080";s:2:"on";s:9:"encode720";s:2:"on";s:9:"encode480";s:2:"on";s:12:"encodemobile";s:2:"on";s:3:"url";s:43:"https://www.youtube.com/watch?v=x0P3z0RtprM";s:8:"maxwidth";s:3:"640";s:9:"maxheight";s:3:"360";s:13:"encodefullres";s:5:"false";s:10:"encodewebm";s:5:"false";s:9:"encodevp9";s:5:"false";s:9:"encodeogg";s:5:"false";}'),
(333, 118, '_wp_attached_file', '2018/03/302a79df2dce95ef5ea235e1eaa2a0f3329fb845.jpg'),
(334, 118, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1440;s:6:"height";i:1080;s:4:"file";s:52:"2018/03/302a79df2dce95ef5ea235e1eaa2a0f3329fb845.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:52:"302a79df2dce95ef5ea235e1eaa2a0f3329fb845-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:52:"302a79df2dce95ef5ea235e1eaa2a0f3329fb845-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:52:"302a79df2dce95ef5ea235e1eaa2a0f3329fb845-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:53:"302a79df2dce95ef5ea235e1eaa2a0f3329fb845-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:24:"PVGM_gallery_admin_thumb";a:4:{s:4:"file";s:52:"302a79df2dce95ef5ea235e1eaa2a0f3329fb845-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:25:"PVGM_gallery_admin_circle";a:4:{s:4:"file";s:52:"302a79df2dce95ef5ea235e1eaa2a0f3329fb845-400x400.jpg";s:5:"width";i:400;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:25:"PVGM_gallery_admin_medium";a:4:{s:4:"file";s:53:"302a79df2dce95ef5ea235e1eaa2a0f3329fb845-400x1080.jpg";s:5:"width";i:400;s:6:"height";i:1080;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(335, 119, '_thumbnail_id', '118');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-01-11 11:03:47', '2018-01-11 09:03:47', '', 'Привіт, світ!', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d1%96%d1%82-%d1%81%d0%b2%d1%96%d1%82', '', '', '2018-01-06 14:44:51', '2018-01-06 12:44:51', '', 0, 'http://libertypress.ua/?p=1', 0, 'post', '', 1),
(2, 1, '2018-01-11 11:03:47', '2018-01-11 09:03:47', 'Це приклад сторінки. Вона відрізняється від записів блогу, бо залишається на одному місці і відображається в меню сайту (у більшості тем). Більшість людей починають зі сторінки, яка представляє їх потенційним відвідувачам сайту. На ній можна написати щось на кшталт цього:\n\n<blockquote>Привіт! Вдень я кур''єр, а ввечері - актор що подає надії. А це мій блог. Я живу у Львові, люблю свого чудового собаку Бровка та карпатський чай. (І ще потрапляти під дощ.)</blockquote>\n\n...або цього:\n\n<blockquote>Компанія "Штучки АБВ" була заснована в 1992 році, і з тих пір забезпечує людей відмінними штучками. Компанія знаходиться в Стрию, має штат з понад 2000 співробітників і приносить багато користі жителям Стрия.</blockquote>\n\nЯк новому користувачу WordPress, вам слід перейти до <a href="http://libertypress.ua/wp-admin/">вашої майстерні</a>, щоб видалити цю сторінку і створити нові сторінки для вашого вмісту. Насолоджуйтесь!', 'Зразок сторінки', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-01-11 11:03:47', '2018-01-11 09:03:47', '', 0, 'http://libertypress.ua/?page_id=2', 0, 'page', '', 0),
(4, 1, '2018-01-12 12:31:36', '2018-01-12 10:31:36', '[sitepoint_contact_form]', 'jlsdjfl', '', 'publish', 'closed', 'closed', '', 'jlsdjfl', '', '', '2018-01-12 12:34:04', '2018-01-12 10:34:04', '', 0, 'http://libertypress.ua/?page_id=4', 0, 'page', '', 0),
(5, 1, '2018-01-12 12:31:36', '2018-01-12 10:31:36', '[''sitepoint_contact_form'']', 'jlsdjfl', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2018-01-12 12:31:36', '2018-01-12 10:31:36', '', 4, 'http://libertypress.ua/2018/01/12/4-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2018-01-12 12:31:49', '2018-01-12 10:31:49', '[''sitepoint_contact_form'']', 'jlsdjfl', '', 'inherit', 'closed', 'closed', '', '4-autosave-v1', '', '', '2018-01-12 12:31:49', '2018-01-12 10:31:49', '', 4, 'http://libertypress.ua/2018/01/12/4-autosave-v1/', 0, 'revision', '', 0),
(7, 1, '2018-01-12 12:34:04', '2018-01-12 10:34:04', '[sitepoint_contact_form]', 'jlsdjfl', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2018-01-12 12:34:04', '2018-01-12 10:34:04', '', 4, 'http://libertypress.ua/2018/01/12/4-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2018-01-12 13:33:51', '2018-01-12 11:33:51', 'Ми звяжемось із вами якнайшвидше!', 'Дякую шо поділились з нами', '', 'publish', 'closed', 'closed', '', 'thankyou', '', '', '2018-01-06 14:47:48', '2018-01-06 12:47:48', '', 0, 'http://libertypress.ua/?page_id=8', 0, 'page', '', 0),
(9, 1, '2018-01-12 13:33:51', '2018-01-12 11:33:51', 'Ми звяжемось із вами якнайшвидше!', 'Дякую шо поділились з нами', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-01-12 13:33:51', '2018-01-12 11:33:51', '', 8, 'http://libertypress.ua/2018/01/12/8-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2018-01-06 13:51:36', '2018-01-06 11:51:36', '', 'wedding', '', 'publish', 'closed', 'closed', '', 'portfolio-wedding', '', '', '2018-01-08 14:29:32', '2018-01-08 12:29:32', '', 0, 'http://libertypress.ua/?page_id=11', 0, 'page', '', 0),
(12, 1, '2018-01-06 13:51:36', '2018-01-06 11:51:36', '', 'wedding', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-01-06 13:51:36', '2018-01-06 11:51:36', '', 11, 'http://libertypress.ua/2018/01/06/11-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2018-01-06 14:44:51', '2018-01-06 12:44:51', '', 'Привіт, світ!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-01-06 14:44:51', '2018-01-06 12:44:51', '', 1, 'http://libertypress.ua/2018/01/06/1-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2018-01-06 14:57:04', '2018-01-06 12:57:04', 'somethingelse', 'somethingelse', '', 'publish', 'closed', 'closed', '', 'somethingelse', '', '', '2018-01-06 14:57:04', '2018-01-06 12:57:04', '', 0, 'http://libertypress.ua/?page_id=16', 0, 'page', '', 0),
(17, 1, '2018-01-06 14:57:04', '2018-01-06 12:57:04', 'somethingelse', 'somethingelse', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-01-06 14:57:04', '2018-01-06 12:57:04', '', 16, 'http://libertypress.ua/2018/01/06/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2018-01-06 15:52:02', '2018-01-06 13:52:02', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2018-01-06 15:52:02', '2018-01-06 13:52:02', '', 0, 'http://libertypress.ua/wp-content/uploads/2018/01/1.png', 0, 'attachment', 'image/png', 0),
(19, 1, '2018-01-06 15:52:04', '2018-01-06 13:52:04', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2018-01-06 15:52:04', '2018-01-06 13:52:04', '', 0, 'http://libertypress.ua/wp-content/uploads/2018/01/2.png', 0, 'attachment', 'image/png', 0),
(20, 1, '2018-01-06 15:52:05', '2018-01-06 13:52:05', '', '3', '', 'inherit', 'open', 'closed', '', '3', '', '', '2018-01-06 15:52:05', '2018-01-06 13:52:05', '', 0, 'http://libertypress.ua/wp-content/uploads/2018/01/3.png', 0, 'attachment', 'image/png', 0),
(21, 1, '2018-01-06 15:52:06', '2018-01-06 13:52:06', '', '4', '', 'inherit', 'open', 'closed', '', '4', '', '', '2018-01-06 15:52:06', '2018-01-06 13:52:06', '', 0, 'http://libertypress.ua/wp-content/uploads/2018/01/4.png', 0, 'attachment', 'image/png', 0),
(22, 1, '2018-01-06 15:53:16', '2018-01-06 13:53:16', '', 'about-team1', '', 'inherit', 'open', 'closed', '', 'about-team1', '', '', '2018-01-06 15:53:16', '2018-01-06 13:53:16', '', 0, 'http://libertypress.ua/wp-content/uploads/2018/01/about-team1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2018-01-06 15:53:18', '2018-01-06 13:53:18', '', 'about-team2', '', 'inherit', 'open', 'closed', '', 'about-team2', '', '', '2018-01-06 15:53:18', '2018-01-06 13:53:18', '', 0, 'http://libertypress.ua/wp-content/uploads/2018/01/about-team2.jpeg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2018-01-06 15:53:19', '2018-01-06 13:53:19', '', 'about-team3', '', 'inherit', 'open', 'closed', '', 'about-team3', '', '', '2018-01-06 15:53:19', '2018-01-06 13:53:19', '', 0, 'http://libertypress.ua/wp-content/uploads/2018/01/about-team3.jpeg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2018-01-06 15:53:21', '2018-01-06 13:53:21', '', 'about-team4', '', 'inherit', 'open', 'closed', '', 'about-team4', '', '', '2018-01-06 15:53:21', '2018-01-06 13:53:21', '', 0, 'http://libertypress.ua/wp-content/uploads/2018/01/about-team4.jpeg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2018-01-06 15:56:35', '2018-01-06 13:56:35', '[print_circle_slider_plus_lightbox]', 'Slider', '', 'publish', 'closed', 'closed', '', 'slider', '', '', '2018-01-06 17:34:23', '2018-01-06 15:34:23', '', 0, 'http://libertypress.ua/?page_id=26', 0, 'page', '', 0),
(27, 1, '2018-01-06 15:56:35', '2018-01-06 13:56:35', '[Rich_Web_Slider id="1"]', 'Slider', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-01-06 15:56:35', '2018-01-06 13:56:35', '', 26, 'http://libertypress.ua/2018/01/06/26-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2018-01-06 17:34:23', '2018-01-06 15:34:23', '[print_circle_slider_plus_lightbox]', 'Slider', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-01-06 17:34:23', '2018-01-06 15:34:23', '', 26, 'http://libertypress.ua/2018/01/06/26-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2018-01-08 12:37:53', '2018-01-08 10:37:53', '', 'portfolio', '', 'publish', 'closed', 'closed', '', 'portfolio', '', '', '2018-01-08 12:37:53', '2018-01-08 10:37:53', '', 0, 'http://libertypress.ua/?page_id=33', 0, 'page', '', 0),
(35, 1, '2018-01-08 12:37:54', '2018-01-08 10:37:54', '', 'aboutus', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2018-01-08 13:56:50', '2018-01-08 11:56:50', '', 0, 'http://libertypress.ua/?page_id=35', 0, 'page', '', 0),
(36, 1, '2018-01-08 12:37:54', '2018-01-08 10:37:54', '', 'contacts', '', 'publish', 'closed', 'closed', '', 'contacts', '', '', '2018-01-08 12:37:54', '2018-01-08 10:37:54', '', 0, 'http://libertypress.ua/?page_id=36', 0, 'page', '', 0),
(37, 1, '2018-01-08 12:37:54', '2018-01-08 10:37:54', '<code class="php plain">[display-posts posts_per_page=</code><code class="php string">"1000"</code> <code class="php plain">order=</code><code class="php string">"DESC"</code><code class="php plain">]</code>', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2018-01-08 15:07:47', '2018-01-08 13:07:47', '', 0, 'http://libertypress.ua/?page_id=37', 0, 'page', '', 0),
(38, 1, '2018-01-08 12:37:53', '2018-01-08 10:37:53', '', 'portfolio', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2018-01-08 12:37:53', '2018-01-08 10:37:53', '', 33, 'http://libertypress.ua/2018/01/08/33-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2018-01-08 12:37:54', '2018-01-08 10:37:54', '', 'aboutus', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2018-01-08 12:37:54', '2018-01-08 10:37:54', '', 35, 'http://libertypress.ua/2018/01/08/35-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2018-01-08 12:37:54', '2018-01-08 10:37:54', '', 'contacts', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2018-01-08 12:37:54', '2018-01-08 10:37:54', '', 36, 'http://libertypress.ua/2018/01/08/36-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2018-01-08 12:37:54', '2018-01-08 10:37:54', '', 'dropdown', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2018-01-08 12:37:54', '2018-01-08 10:37:54', '', 37, 'http://libertypress.ua/2018/01/08/37-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2018-01-08 12:37:55', '2018-01-08 10:37:55', '', 'Портфоліо', '', 'publish', 'closed', 'closed', '', '42', '', '', '2018-01-18 16:01:17', '2018-01-18 14:01:17', '', 0, 'http://libertypress.ua/2018/01/08/42/', 2, 'nav_menu_item', '', 0),
(43, 1, '2018-01-08 12:37:55', '2018-01-08 10:37:55', '', 'Про нас', '', 'publish', 'closed', 'closed', '', '43', '', '', '2018-01-18 16:01:16', '2018-01-18 14:01:16', '', 0, 'http://libertypress.ua/2018/01/08/43/', 1, 'nav_menu_item', '', 0),
(44, 1, '2018-01-08 12:37:56', '2018-01-08 10:37:56', '', 'Контакти', '', 'publish', 'closed', 'closed', '', '44', '', '', '2018-01-18 16:01:17', '2018-01-18 14:01:17', '', 0, 'http://libertypress.ua/2018/01/08/44/', 5, 'nav_menu_item', '', 0),
(45, 1, '2018-01-08 12:37:57', '2018-01-08 10:37:57', ' ', '', '', 'publish', 'closed', 'closed', '', '45', '', '', '2018-01-18 16:01:17', '2018-01-18 14:01:17', '', 0, 'http://libertypress.ua/2018/01/08/45/', 6, 'nav_menu_item', '', 0),
(47, 1, '2018-01-08 13:23:20', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-01-08 13:23:20', '0000-00-00 00:00:00', '', 0, 'http://libertypress.ua/?p=47', 1, 'nav_menu_item', '', 0),
(48, 1, '2018-01-08 13:24:20', '0000-00-00 00:00:00', '', 'Something else here', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-01-08 13:24:20', '0000-00-00 00:00:00', '', 0, 'http://libertypress.ua/?p=48', 1, 'nav_menu_item', '', 0),
(54, 1, '2018-01-08 14:10:14', '2018-01-08 12:10:14', '', 'Наші клієнти', '', 'publish', 'closed', 'closed', '', 'our-clients', '', '', '2018-01-08 14:10:50', '2018-01-08 12:10:50', '', 0, 'http://libertypress.ua/?page_id=54', 0, 'page', '', 0),
(55, 1, '2018-01-08 14:10:14', '2018-01-08 12:10:14', '', 'Наші клієнти', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2018-01-08 14:10:14', '2018-01-08 12:10:14', '', 54, 'http://libertypress.ua/2018/01/08/54-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2018-01-08 14:22:42', '2018-01-08 12:22:42', ' ', '', '', 'publish', 'closed', 'closed', '', '56', '', '', '2018-01-18 16:01:17', '2018-01-18 14:01:17', '', 0, 'http://libertypress.ua/?p=56', 7, 'nav_menu_item', '', 0),
(57, 1, '2018-01-08 14:23:43', '2018-01-08 12:23:43', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2018-01-08 14:23:43', '2018-01-08 12:23:43', '', 37, 'http://libertypress.ua/2018/01/08/37-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2018-01-08 15:07:47', '2018-01-08 13:07:47', '<code class="php plain">[display-posts posts_per_page=</code><code class="php string">"1000"</code> <code class="php plain">order=</code><code class="php string">"DESC"</code><code class="php plain">]</code>', 'Blog', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2018-01-08 15:07:47', '2018-01-08 13:07:47', '', 37, 'http://libertypress.ua/2018/01/08/37-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2018-01-08 15:11:34', '2018-01-08 13:11:34', '<strong>Мій запис в блог.</strong>\r\n\r\nДруге речення.\r\n\r\n&nbsp;', 'Мій запис в блог.', '', 'publish', 'open', 'open', '', 'ddfd', '', '', '2018-01-08 15:18:38', '2018-01-08 13:18:38', '', 0, 'http://libertypress.ua/?p=60', 0, 'post', '', 1),
(61, 1, '2018-01-08 15:11:34', '2018-01-08 13:11:34', 'fdsfdsfdsf', 'ddfd', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2018-01-08 15:11:34', '2018-01-08 13:11:34', '', 60, 'http://libertypress.ua/2018/01/08/60-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2018-01-08 15:18:38', '2018-01-08 13:18:38', '<strong>Мій запис в блог.</strong>\r\n\r\nДруге речення.\r\n\r\n&nbsp;', 'Мій запис в блог.', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2018-01-08 15:18:38', '2018-01-08 13:18:38', '', 60, 'http://libertypress.ua/blog/60-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2018-01-08 15:19:20', '2018-01-08 13:19:20', 'Дорогі друзі,', 'Новий запис', '', 'publish', 'open', 'open', '', '%d0%bd%d0%be%d0%b2%d0%b8%d0%b9-%d0%b7%d0%b0%d0%bf%d0%b8%d1%81', '', '', '2018-01-08 15:19:20', '2018-01-08 13:19:20', '', 0, 'http://libertypress.ua/?p=63', 0, 'post', '', 0),
(64, 1, '2018-01-08 15:19:20', '2018-01-08 13:19:20', 'Дорогі друзі,', 'Новий запис', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2018-01-08 15:19:20', '2018-01-08 13:19:20', '', 63, 'http://libertypress.ua/blog/63-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2018-01-09 11:10:35', '2018-01-09 09:10:35', 'https://youtu.be/1kfXOHohijo', 'відео', '', 'publish', 'open', 'open', '', '%d0%b2%d1%96%d0%b4%d0%b5%d0%be', '', '', '2018-01-09 11:10:35', '2018-01-09 09:10:35', '', 0, 'http://libertypress.ua/?p=66', 0, 'post', '', 0),
(67, 1, '2018-01-09 11:10:35', '2018-01-09 09:10:35', 'https://youtu.be/1kfXOHohijo', 'відео', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2018-01-09 11:10:35', '2018-01-09 09:10:35', '', 66, 'http://libertypress.ua/blog/66-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2018-01-18 12:53:22', '2018-01-18 10:53:22', '', 'Wedding', '', 'publish', 'closed', 'closed', '', 'new-gallery', '', '', '2018-01-18 16:10:59', '2018-01-18 14:10:59', '', 0, 'http://libertypress.ua/?post_type=pvgm_gallery&#038;p=68', 0, 'pvgm_gallery', '', 0),
(69, 1, '2018-01-07 13:02:00', '2018-01-07 11:02:00', '[PVGM id=68]', 'Gallery', '', 'publish', 'open', 'open', '', 'gallery', '', '', '2018-01-07 13:02:00', '2018-01-07 11:02:00', '', 0, 'http://libertypress.ua/?p=69', 0, 'post', '', 0),
(70, 1, '2018-01-07 13:02:00', '2018-01-07 11:02:00', '[PVGM id=68]', 'Gallery', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2018-01-07 13:02:00', '2018-01-07 11:02:00', '', 69, 'http://libertypress.ua/blog/69-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2018-01-18 15:40:17', '2018-01-18 13:40:17', '', 'New video', '', 'publish', 'open', 'closed', '', 'new-video', '', '', '2018-01-18 15:52:02', '2018-01-18 13:52:02', '', 0, 'http://libertypress.ua/?post_type=video&#038;p=77', 0, 'video', '', 0),
(78, 1, '2018-01-18 15:40:17', '2018-01-18 13:40:17', '', 'New video', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2018-01-18 15:40:17', '2018-01-18 13:40:17', '', 77, 'http://libertypress.ua/blog/77-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2018-01-18 15:41:36', '2018-01-18 13:41:36', '', 'custom video', '', 'publish', 'open', 'closed', '', 'custom-video', '', '', '2018-01-18 15:41:36', '2018-01-18 13:41:36', '', 0, 'http://libertypress.ua/?post_type=video&#038;p=79', 0, 'video', '', 0),
(80, 1, '2018-01-18 15:41:36', '2018-01-18 13:41:36', '', 'custom video', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2018-01-18 15:41:36', '2018-01-18 13:41:36', '', 79, 'http://libertypress.ua/blog/79-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2018-01-18 15:54:26', '2018-01-18 13:54:26', '', '', '', 'publish', 'closed', 'closed', '', '81-2', '', '', '2018-01-18 15:54:26', '2018-01-18 13:54:26', '', 0, 'http://libertypress.ua/?post_type=playlist&#038;p=81', 0, 'playlist', '', 0),
(82, 1, '2018-01-18 15:54:26', '2018-01-18 13:54:26', '', '', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2018-01-18 15:54:26', '2018-01-18 13:54:26', '', 81, 'http://libertypress.ua/blog/81-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2018-01-18 16:00:37', '2018-01-18 14:00:37', '', 'Wedding', '', 'publish', 'closed', 'closed', '', 'wedding-2', '', '', '2018-01-18 16:01:17', '2018-01-18 14:01:17', '', 0, 'http://libertypress.ua/?p=83', 3, 'nav_menu_item', '', 0),
(84, 1, '2018-01-18 16:01:17', '2018-01-18 14:01:17', '', 'Production', '', 'publish', 'closed', 'closed', '', 'production', '', '', '2018-01-18 16:01:17', '2018-01-18 14:01:17', '', 0, 'http://libertypress.ua/?p=84', 4, 'nav_menu_item', '', 0),
(86, 1, '2018-01-18 16:28:47', '2018-01-18 14:28:47', '', 'Gallery', '', 'publish', 'closed', 'closed', '', 'gallery', '', '', '2018-01-18 16:30:13', '2018-01-18 14:30:13', '', 0, 'http://libertypress.ua/?post_type=pvgm_gallery&#038;p=86', 0, 'pvgm_gallery', '', 0),
(90, 1, '2018-01-22 17:23:12', '2018-01-22 15:23:12', '', 'wordpressurl', '', 'inherit', 'open', 'closed', '', 'wordpressurl', '', '', '2018-01-22 17:23:12', '2018-01-22 15:23:12', '', 0, 'http://libertypress.ua/wp-content/uploads/2018/01/wordpressurl.txt', 0, 'attachment', 'text/plain', 0),
(91, 1, '2018-01-22 17:28:45', '2018-01-22 15:28:45', '', 'wordpressurl - Copy', '', 'inherit', 'open', 'closed', '', 'wordpressurl-copy', '', '', '2018-01-22 17:28:45', '2018-01-22 15:28:45', '', 0, 'http://libertypress.ua/wp-content/uploads/2018/01/wordpressurl-Copy.txt', 0, 'attachment', 'text/plain', 0),
(92, 1, '2018-01-22 17:32:56', '2018-01-22 15:32:56', '', 'wordpressurl - Copy (2)', '', 'inherit', 'open', 'closed', '', 'wordpressurl-copy-2', '', '', '2018-01-22 17:32:56', '2018-01-22 15:32:56', '', 0, 'http://libertypress.ua/wp-content/uploads/2018/01/wordpressurl-Copy-2.txt', 0, 'attachment', 'text/plain', 0),
(93, 1, '2018-01-22 17:33:47', '2018-01-22 15:33:47', '', 'wordpressurl - Copy (3)', '', 'inherit', 'open', 'closed', '', 'wordpressurl-copy-3', '', '', '2018-01-22 17:33:47', '2018-01-22 15:33:47', '', 0, 'http://libertypress.ua/wp-content/uploads/2018/01/wordpressurl-Copy-3.txt', 0, 'attachment', 'text/plain', 0),
(94, 1, '2018-01-22 17:34:07', '2018-01-22 15:34:07', '', 'wordpressurl - Copy (4)', '', 'inherit', 'open', 'closed', '', 'wordpressurl-copy-4', '', '', '2018-01-22 17:34:07', '2018-01-22 15:34:07', '', 0, 'http://libertypress.ua/wp-content/uploads/2018/01/wordpressurl-Copy-4.txt', 0, 'attachment', 'text/plain', 0),
(103, 1, '2018-02-07 19:39:28', '2018-02-07 17:39:28', 'Лорем іпсум', 'Тайтл', '', 'inherit', 'open', 'closed', '', 'my_video-6', '', '', '2018-02-07 19:39:29', '2018-02-07 17:39:29', '', 0, 'http://libertypress.ua/wp-content/uploads/2018/02/MY_VIDEO-5.mp4', 0, 'attachment', 'video/mp4', 0),
(104, 1, '2018-02-07 19:39:28', '2018-02-07 17:39:28', '', 'Jaymes Young - Northern Lights', '', 'inherit', 'open', 'closed', '', 'jaymes-young-northern-lights', '', '', '2018-02-07 19:39:28', '2018-02-07 17:39:28', '', 0, 'http://libertypress.ua/wp-content/uploads/2018/02/Jaymes-Young-Northern-Lights.jpg', 0, 'attachment', 'image/jpeg', 0),
(105, 1, '2018-02-07 19:47:08', '2018-02-07 17:47:08', 'Опис', 'Титул', '', 'inherit', 'open', 'closed', '', 'my_video', '', '', '2018-02-07 19:47:10', '2018-02-07 17:47:10', '', 0, 'https://www.youtube.com/watch?v=z03l7kZmUvk', 0, 'attachment', 'video/mp4', 0),
(106, 1, '2018-02-07 19:47:09', '2018-02-07 17:47:09', '', 'odesz', '', 'inherit', 'open', 'closed', '', 'odesz', '', '', '2018-02-07 19:47:09', '2018-02-07 17:47:09', '', 0, 'http://libertypress.ua/wp-content/uploads/2018/02/odesz.jpg', 0, 'attachment', 'image/jpeg', 0),
(108, 1, '2018-02-14 15:13:04', '2018-02-14 13:13:04', 'mydesc', 'mytitle', '', 'inherit', 'open', 'closed', '', 'my_video-7', '', '', '2018-02-14 15:15:25', '2018-02-14 13:15:25', '', 0, 'http://libertypress.ua/wp-content/uploads/2018/02/MY_VIDEO-7.mp4', 0, 'attachment', 'video/mp4', 0),
(109, 1, '2018-02-14 15:13:05', '2018-02-14 13:13:05', '', 'Фоновый рисунок средства просмотра фотографий Windows', '', 'inherit', 'open', 'closed', '', '%d1%84%d0%be%d0%bd%d0%be%d0%b2%d1%8b%d0%b9-%d1%80%d0%b8%d1%81%d1%83%d0%bd%d0%be%d0%ba-%d1%81%d1%80%d0%b5%d0%b4%d1%81%d1%82%d0%b2%d0%b0-%d0%bf%d1%80%d0%be%d1%81%d0%bc%d0%be%d1%82%d1%80%d0%b0-%d1%84', '', '', '2018-02-14 15:13:05', '2018-02-14 13:13:05', '', 0, 'http://libertypress.ua/wp-content/uploads/2018/02/Фоновый-рисунок-средства-просмотра-фотографий-Windows.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2018-02-14 15:15:24', '2018-02-14 13:15:24', '', 'mytitle thumbnail', '', 'inherit', 'open', 'closed', '', 'mytitle-thumbnail', '', '', '2018-02-14 15:15:24', '2018-02-14 13:15:24', '', 108, 'http://libertypress.ua/wp-content/uploads/2018/02/MY_VIDEO-7_thumb0.jpg', 0, 'attachment', 'image/jpeg', 0),
(111, 1, '2018-02-14 17:52:19', '2018-02-14 15:52:19', 'Дескріпшн великий довгий', 'Тайтл2', '', 'inherit', 'open', 'closed', '', 'landscape-757', '', '', '2018-02-14 17:52:21', '2018-02-14 15:52:21', '', 0, 'http://libertypress.ua/wp-content/uploads/2018/02/Landscape-757.mp4', 0, 'attachment', 'video/mp4', 0),
(112, 1, '2018-02-14 17:52:19', '2018-02-14 15:52:19', '', 'WideWallpapers_ByMortallity_17', '', 'inherit', 'open', 'closed', '', 'widewallpapers_bymortallity_17', '', '', '2018-02-14 17:52:19', '2018-02-14 15:52:19', '', 0, 'http://libertypress.ua/wp-content/uploads/2018/02/WideWallpapers_ByMortallity_17.jpg', 0, 'attachment', 'image/jpeg', 0),
(113, 1, '2018-02-16 13:48:30', '2018-02-16 11:48:30', 'small video desc', 'Small', '', 'inherit', 'open', 'closed', '', 'small', '', '', '2018-02-16 13:48:31', '2018-02-16 11:48:31', '', 0, 'http://libertypress.ua/wp-content/uploads/2018/02/small.mp4', 0, 'attachment', 'video/mp4', 0),
(114, 1, '2018-02-16 13:48:30', '2018-02-16 11:48:30', '', 'WideWallpapers_ByMortallity_22', '', 'inherit', 'open', 'closed', '', 'widewallpapers_bymortallity_22', '', '', '2018-02-16 13:48:30', '2018-02-16 11:48:30', '', 0, 'http://libertypress.ua/wp-content/uploads/2018/02/WideWallpapers_ByMortallity_22.jpg', 0, 'attachment', 'image/jpeg', 0),
(115, 1, '2018-02-23 13:30:39', '0000-00-00 00:00:00', '', 'Авточернетка', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-02-23 13:30:39', '0000-00-00 00:00:00', '', 0, 'http://libertypress.ua/?p=115', 0, 'post', '', 0),
(116, 1, '2018-02-23 13:33:35', '2018-02-23 11:33:35', 'Felix Cartal - Hold Tight music', 'Felix Cartal - Hold Tight', '', 'inherit', 'open', 'closed', '', 'youtubelink', '', '', '2018-02-23 14:49:18', '2018-02-23 12:49:18', '', 0, 'https://www.youtube.com/watch?v=x0P3z0RtprM', 0, 'attachment', 'video/mp4', 0),
(117, 1, '2018-02-23 15:55:45', '2018-02-23 13:55:45', 'Nexus ft. Wiley Koyote - Echoes sdlkfjlsdkf', 'Nexus ft. Wiley Koyote - Echoes', '', 'inherit', 'open', 'closed', '', 'youtubelink-2', '', '', '2018-02-23 15:55:45', '2018-02-23 13:55:45', '', 0, 'https://www.youtube.com/watch?v=mvzuU3bT3wo', 0, 'attachment', 'video/mp4', 0),
(118, 1, '2018-03-01 16:00:23', '2018-03-01 14:00:23', '', '302a79df2dce95ef5ea235e1eaa2a0f3329fb845', '', 'inherit', 'open', 'closed', '', '302a79df2dce95ef5ea235e1eaa2a0f3329fb845', '', '', '2018-03-01 16:00:23', '2018-03-01 14:00:23', '', 0, 'http://libertypress.ua/wp-content/uploads/2018/03/302a79df2dce95ef5ea235e1eaa2a0f3329fb845.jpg', 0, 'attachment', 'image/jpeg', 0),
(119, 1, '2018-03-01 16:00:33', '2018-03-01 14:00:33', 'kjnkdfnvkjdsnvkjdnfdnjkflhgkjfsdghkdghflksghsgkfdhsgkhdfgkdsjghlhjsdg', 'testvideo', '', 'inherit', 'open', 'closed', '', 'youtubelink-3', '', '', '2018-03-01 16:00:34', '2018-03-01 14:00:34', '', 0, 'https://www.youtube.com/watch?v=LbBUXFSrqKs', 0, 'attachment', 'video/mp4', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_responsive_video_grid`
--

CREATE TABLE IF NOT EXISTS `wp_responsive_video_grid` (
  `id` int(10) NOT NULL,
  `vtype` varchar(50) NOT NULL,
  `vid` varchar(500) NOT NULL,
  `video_url` varchar(1000) DEFAULT NULL,
  `embed_url` varchar(300) NOT NULL,
  `HdnMediaSelection` varchar(500) NOT NULL,
  `image_name` varchar(500) NOT NULL,
  `videotitle` varchar(1000) NOT NULL,
  `videotitleurl` varchar(1000) DEFAULT NULL,
  `video_description` text,
  `video_order` int(11) NOT NULL DEFAULT '0',
  `open_link_in` tinyint(1) NOT NULL DEFAULT '1',
  `enable_light_box_video_desc` tinyint(1) NOT NULL DEFAULT '1',
  `createdon` datetime NOT NULL,
  `slider_id` int(10) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_responsive_video_grid`
--

INSERT INTO `wp_responsive_video_grid` (`id`, `vtype`, `vid`, `video_url`, `embed_url`, `HdnMediaSelection`, `image_name`, `videotitle`, `videotitleurl`, `video_description`, `video_order`, `open_link_in`, `enable_light_box_video_desc`, `createdon`, `slider_id`) VALUES
(1, 'youtube', 'BMp23VvkTVM', 'https://www.youtube.com/watch?v=BMp23VvkTVM', '//www.youtube.com/embed/BMp23VvkTVM', 'http://libertypress.ua/wp-content/uploads/2018/01/about-team1.jpeg', 'BMp23VvkTVM_big.jpeg', 'Reactjs', '', '', 0, 0, 0, '2018-01-09 11:59:38', 1),
(2, 'youtube', 'gbTSl88k5pk', 'https://www.youtube.com/watch?v=gbTSl88k5pk', '//www.youtube.com/embed/gbTSl88k5pk', 'http://img.youtube.com/vi/gbTSl88k5pk/0.jpg', 'gbTSl88k5pk_big.jpg', 'Видеокурс ReactJS Essential. Урок 1. Введение в React', 'https://www.youtube.com/watch?v=gbTSl88k5pk', '', 0, 0, 0, '2018-01-09 12:00:51', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_photo_slider_instal`
--

CREATE TABLE IF NOT EXISTS `wp_rich_web_photo_slider_instal` (
  `id` int(10) unsigned NOT NULL,
  `SL_Img_Title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Sl_Img_Description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `Sl_Img_Url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Sl_Link_Url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Sl_Link_NewTab` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Sl_Number` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_photo_slider_instal`
--

INSERT INTO `wp_rich_web_photo_slider_instal` (`id`, `SL_Img_Title`, `Sl_Img_Description`, `Sl_Img_Url`, `Sl_Link_Url`, `Sl_Link_NewTab`, `Sl_Number`) VALUES
(9, '', '', 'http://libertypress.ua/wp-content/uploads/2018/01/about-team1-300x207.jpeg', '', '', 1),
(10, '', '', 'http://libertypress.ua/wp-content/uploads/2018/01/about-team2.jpeg', '', 'undefined', 1),
(11, '', '', 'http://libertypress.ua/wp-content/uploads/2018/01/about-team3.jpeg', '', 'undefined', 1),
(12, '', '', 'http://libertypress.ua/wp-content/uploads/2018/01/about-team4-1024x768.jpeg', '', 'undefined', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_photo_slider_manager`
--

CREATE TABLE IF NOT EXISTS `wp_rich_web_photo_slider_manager` (
  `id` int(10) unsigned NOT NULL,
  `Slider_Title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Slider_Type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Slider_IMGS_Quantity` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_photo_slider_manager`
--

INSERT INTO `wp_rich_web_photo_slider_manager` (`id`, `Slider_Title`, `Slider_Type`, `Slider_IMGS_Quantity`) VALUES
(1, 'vbilez', 'Circle Thumbnails', 4);

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect1`
--

CREATE TABLE IF NOT EXISTS `wp_rich_web_slider_effect1` (
  `id` int(10) unsigned NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_SlS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_SlSS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_PoH` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_BoxS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_BoxSC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_IBW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_IBS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_IBC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_IBR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_TBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_TC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_TTA` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_TFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_TFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_TUp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_ArBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_ArOp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_ArType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_ArHBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_ArHOp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_ArHEff` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_ArBoxW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_NavW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_NavH` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_NavPB` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_NavBW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_NavBS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_NavBC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_NavBR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_NavCC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_NavHC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_ArPFT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_NavPos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect1`
--

INSERT INTO `wp_rich_web_slider_effect1` (`id`, `rich_web_slider_ID`, `rich_web_slider_name`, `rich_web_slider_type`, `rich_web_Sl1_SlS`, `rich_web_Sl1_SlSS`, `rich_web_Sl1_PoH`, `rich_web_Sl1_W`, `rich_web_Sl1_H`, `rich_web_Sl1_BoxS`, `rich_web_Sl1_BoxSC`, `rich_web_Sl1_IBW`, `rich_web_Sl1_IBS`, `rich_web_Sl1_IBC`, `rich_web_Sl1_IBR`, `rich_web_Sl1_TBgC`, `rich_web_Sl1_TC`, `rich_web_Sl1_TTA`, `rich_web_Sl1_TFS`, `rich_web_Sl1_TFF`, `rich_web_Sl1_TUp`, `rich_web_Sl1_ArBgC`, `rich_web_Sl1_ArOp`, `rich_web_Sl1_ArType`, `rich_web_Sl1_ArHBgC`, `rich_web_Sl1_ArHOp`, `rich_web_Sl1_ArHEff`, `rich_web_Sl1_ArBoxW`, `rich_web_Sl1_NavW`, `rich_web_Sl1_NavH`, `rich_web_Sl1_NavPB`, `rich_web_Sl1_NavBW`, `rich_web_Sl1_NavBS`, `rich_web_Sl1_NavBC`, `rich_web_Sl1_NavBR`, `rich_web_Sl1_NavCC`, `rich_web_Sl1_NavHC`, `rich_web_Sl1_ArPFT`, `rich_web_Sl1_NavPos`) VALUES
(1, '1', 'Slider Navigation 1', 'Slider Navigation', 'true', '3', 'true', '750', '400', 'true', '#0084aa', '10', 'solid', '#ffffff', '0', '#0084aa', '#ffffff', 'center', '10', 'Aldhabi', 'true', '#1e73be', '82', '1', '#1e73be', '80', 'slide out', '50', '8', '8', '8', '1', 'solid', '#ffffff', '20', '#0084aa', '#ffffff', '35', 'bottom'),
(2, '2', 'Slider Navigation 2', 'Slider Navigation', 'true', '3', 'true', '380', '450', 'true', '#0084aa', '0', 'none', '#ffffff', '0', '#0084aa', '#ffffff', 'center', '10', 'Aldhabi', 'true', 'rgba(30,115,190,0.6)', '100', '2', '#1e73be', '100', 'flip out', '50', '8', '8', '8', '1', 'solid', '#ffffff', '20', '#0084aa', '#1967aa', '40', 'bottom');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect1_loader`
--

CREATE TABLE IF NOT EXISTS `wp_rich_web_slider_effect1_loader` (
  `id` int(10) unsigned NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_L_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_LT_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_L_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_L_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_LT_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_LT_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_LT_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_LT_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_L_T1_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_L_T2_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_L_T3_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_LT_T2_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_L_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_LT_T2_AnC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_LT_T3_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_L_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_Loading_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect1_loader`
--

INSERT INTO `wp_rich_web_slider_effect1_loader` (`id`, `rich_web_slider_ID`, `Rich_Web_NSL_L_Show`, `Rich_Web_NSL_LT_Show`, `Rich_Web_NSL_LT`, `Rich_Web_NSL_L_BgC`, `Rich_Web_NSL_L_T`, `Rich_Web_NSL_LT_T`, `Rich_Web_NSL_LT_FS`, `Rich_Web_NSL_LT_FF`, `Rich_Web_NSL_LT_C`, `Rich_Web_NSL_L_T1_C`, `Rich_Web_NSL_L_T2_C`, `Rich_Web_NSL_L_T3_C`, `Rich_Web_NSL_LT_T2_BC`, `Rich_Web_NSL_L_C`, `Rich_Web_NSL_LT_T2_AnC`, `Rich_Web_NSL_LT_T3_BgC`, `Rich_Web_NSL_L_S`, `Rich_Web_NSL_Loading_Show`) VALUES
(1, '1', 'true', 'true', 'Loading', '#ffffff', 'Type 4', 'Type 4', '13', 'Abadi MT Condensed Light', '#dd3333', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#0084aa', '#ffffff', '#dd3333', 'small', 'true'),
(2, '2', 'true', 'true', 'Loading', '#ffffff', 'Type 2', 'Type 2', '13', 'Abadi MT Condensed Light', '#0066bf', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#0066bf', '#ffffff', '#dd3333', 'middle', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect2`
--

CREATE TABLE IF NOT EXISTS `wp_rich_web_slider_effect2` (
  `id` int(10) unsigned NOT NULL,
  `richideo_EN_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_BIB` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_P` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Loop` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_SD` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_AT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Cont_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Cont_BSC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Cont_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Cont_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Cont_Op` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Cont_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Cont_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Cont_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Cont_BR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_TShow` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_TC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_TSC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_TFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_TFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_TTA` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_DShow` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_DC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_DSC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_DFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_DFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_DTA` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_LFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_LFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_LC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_LBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_LBC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_LBR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_LPos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_LHBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_LHC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_ArrShow` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_AFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_AC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Link_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Link_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect2`
--

INSERT INTO `wp_rich_web_slider_effect2` (`id`, `richideo_EN_ID`, `rich_web_slider_name`, `rich_web_slider_type`, `rich_CS_BIB`, `rich_CS_P`, `rich_CS_Loop`, `rich_CS_SD`, `rich_CS_AT`, `rich_CS_Cont_BgC`, `rich_CS_Cont_BSC`, `rich_CS_Cont_W`, `rich_CS_Cont_H`, `rich_CS_Cont_Op`, `rich_CS_Cont_BW`, `rich_CS_Cont_BS`, `rich_CS_Cont_BC`, `rich_CS_Cont_BR`, `rich_CS_Video_TShow`, `rich_CS_Video_TC`, `rich_CS_Video_TSC`, `rich_CS_Video_TFS`, `rich_CS_Video_TFF`, `rich_CS_Video_TTA`, `rich_CS_Video_DShow`, `rich_CS_Video_DC`, `rich_CS_Video_DSC`, `rich_CS_Video_DFS`, `rich_CS_Video_DFF`, `rich_CS_Video_DTA`, `rich_CS_Video_Show`, `rich_CS_Video_W`, `rich_CS_Video_H`, `rich_CS_LFS`, `rich_CS_LFF`, `rich_CS_LC`, `rich_CS_LT`, `rich_CS_LBgC`, `rich_CS_LBC`, `rich_CS_LBR`, `rich_CS_LPos`, `rich_CS_LHBgC`, `rich_CS_LHC`, `rich_CS_Video_ArrShow`, `rich_CS_AFS`, `rich_CS_AC`, `rich_CS_Icon`, `rich_CS_Link_BW`, `rich_CS_Link_BS`) VALUES
(1, '3', 'Content Slider', 'Content Slider', 'true', 'true', 'true', '10', 'bounceUp', '#0084aa', '#0084aa', '650', '400', '50', '0', 'solid', '#898989', '0', 'true', '#ffffff', '#ffffff', '20', 'Aldhabi', 'left', 'true', '#ffffff', '#ffffff', '18', 'Aldhabi', 'left', 'true', '36', 'on', '16', 'Vijaya', '#ffffff', 'View More', '#007da0', '#ffffff', '0', 'left', '#0084aa', '#000000', 'true', '30', '#ffffff', '3', '1', 'solid'),
(2, '4', 'Content-Slider', 'Content Slider', 'true', 'true', 'true', '20', 'bounce3', '#0084aa', '#0084aa', '800', '400', '100', '0', 'solid', '#898989', '0', 'true', '#ffffff', '#ffffff', '20', 'Aldhabi', 'left', 'true', '#ffffff', '#ffffff', '18', 'Aldhabi', 'left', 'true', '36', 'on', '16', 'Vijaya', '#ffffff', 'View More', '#007893', '#ffffff', '10', 'left', '#3190aa', '#ffffff', 'true', '30', '#ffffff', '3', '1', 'solid');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect2_loader`
--

CREATE TABLE IF NOT EXISTS `wp_rich_web_slider_effect2_loader` (
  `id` int(10) unsigned NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_L_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_LT_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_L_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_L_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_LT_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_LT_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_LT_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_LT_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_L_T1_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_L_T2_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_L_T3_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_LT_T2_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_L_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_LT_T2_AnC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_LT_T3_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_L_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_Loading_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect2_loader`
--

INSERT INTO `wp_rich_web_slider_effect2_loader` (`id`, `rich_web_slider_ID`, `Rich_Web_ContSl_L_Show`, `Rich_Web_ContSl_LT_Show`, `Rich_Web_ContSl_LT`, `Rich_Web_ContSl_L_BgC`, `Rich_Web_ContSl_L_T`, `Rich_Web_ContSl_LT_T`, `Rich_Web_ContSl_LT_FS`, `Rich_Web_ContSl_LT_FF`, `Rich_Web_ContSl_LT_C`, `Rich_Web_ContSl_L_T1_C`, `Rich_Web_ContSl_L_T2_C`, `Rich_Web_ContSl_L_T3_C`, `Rich_Web_ContSl_LT_T2_BC`, `Rich_Web_ContSl_L_C`, `Rich_Web_ContSl_LT_T2_AnC`, `Rich_Web_ContSl_LT_T3_BgC`, `Rich_Web_ContSl_L_S`, `Rich_Web_ContSl_Loading_Show`) VALUES
(1, '3', 'true', 'true', 'Loading', '#ffffff', 'Type 1', 'Type 2', '13', 'Abadi MT Condensed Light', '#000000', '#357ebf', '#0066bf', '#145b91', 'rgba(30,115,190,0.54)', '#dd9933', '#ffffff', '#dd3333', 'middle', 'true'),
(2, '4', 'true', 'false', 'Loading', '#ffffff', 'Type 3', 'Type 2', '13', 'Abadi MT Condensed Light', '#dd3333', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#000000', '#ffffff', '#dd3333', 'middle', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect3`
--

CREATE TABLE IF NOT EXISTS `wp_rich_web_slider_effect3` (
  `id` int(10) unsigned NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_animation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_SShow` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_SShow_Speed` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Anim_Dur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Ic_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_PPL_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Randomize` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Loop` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Width` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Height` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Border_Width` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Border_Style` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Border_Color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Box_Shadow` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Shadow_Color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Desc_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Desc_Size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Desc_Color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Desc_Font_Family` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Desc_Text_Align` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Desc_Bg_Color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Desc_Transparency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Title_Font_Size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Title_Color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Title_Text_Shadow` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Title_Font_Family` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Title_Text_Align` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Border_Width` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Border_Style` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Border_Color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Font_Size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Font_Family` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Bg_Color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Transparency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Hover_Border_Color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Hover_Bg_Color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Hover_Color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Hover_Transparency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Icon_Size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Icon_Type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Hover_Icon_Type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect3`
--

INSERT INTO `wp_rich_web_slider_effect3` (`id`, `rich_web_slider_ID`, `rich_web_slider_name`, `rich_web_slider_type`, `rich_fsl_animation`, `rich_fsl_SShow`, `rich_fsl_SShow_Speed`, `rich_fsl_Anim_Dur`, `rich_fsl_Ic_Show`, `rich_fsl_PPL_Show`, `rich_fsl_Randomize`, `rich_fsl_Loop`, `rich_fsl_Width`, `rich_fsl_Height`, `rich_fsl_Border_Width`, `rich_fsl_Border_Style`, `rich_fsl_Border_Color`, `rich_fsl_Box_Shadow`, `rich_fsl_Shadow_Color`, `rich_fsl_Desc_Show`, `rich_fsl_Desc_Size`, `rich_fsl_Desc_Color`, `rich_fsl_Desc_Font_Family`, `rich_fsl_Desc_Text_Align`, `rich_fsl_Desc_Bg_Color`, `rich_fsl_Desc_Transparency`, `rich_fsl_Title_Font_Size`, `rich_fsl_Title_Color`, `rich_fsl_Title_Text_Shadow`, `rich_fsl_Title_Font_Family`, `rich_fsl_Title_Text_Align`, `rich_fsl_Link_Text`, `rich_fsl_Link_Border_Width`, `rich_fsl_Link_Border_Style`, `rich_fsl_Link_Border_Color`, `rich_fsl_Link_Font_Size`, `rich_fsl_Link_Color`, `rich_fsl_Link_Font_Family`, `rich_fsl_Link_Bg_Color`, `rich_fsl_Link_Transparency`, `rich_fsl_Link_Hover_Border_Color`, `rich_fsl_Link_Hover_Bg_Color`, `rich_fsl_Link_Hover_Color`, `rich_fsl_Link_Hover_Transparency`, `rich_fsl_Icon_Size`, `rich_fsl_Icon_Type`, `rich_fsl_Hover_Icon_Type`) VALUES
(1, '5', 'Fashion Slider 1', 'Fashion Slider', 'fade', '1', '3', '3', '1', '', '', '1', '750', '390', '0', 'solid', '#ffffff', '35', '#606060', 'on', '15', '#ffffff', 'Aldhabi', 'left', 'rgba(0,132,170,0.75)', '', '18', '#ffffff', '0', 'Aldhabi', 'center', 'View More', '0', 'solid', '#0084aa', '19', '#0084aa', 'Vijaya', 'rgba(255,255,255,0.65)', '', '#0084aa', '#0084aa', 'rgba(255,255,255,0.65)', '', '30', '1', '12'),
(2, '6', 'Fashion Slider 2', 'Fashion Slider', 'fade', '1', '3', '3', '1', '', '', '1', '600', '300', '4', 'solid', '#ffffff', '30', '#0084aa', 'on', '15', '#0084aa', 'Aldhabi', 'left', 'rgba(255,255,255,0.65)', '', '18', '#0084aa', '0', 'Aldhabi', 'center', 'View More', '0', 'solid', '#0084aa', '19', '#0084aa', 'Vijaya', 'rgba(255,255,255,0.65)', '', '#0084aa', '#0084aa', 'rgba(255,255,255,0.65)', '', '30', '1', '12');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect3_loader`
--

CREATE TABLE IF NOT EXISTS `wp_rich_web_slider_effect3_loader` (
  `id` int(10) unsigned NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_L_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_LT_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_L_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_L_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_LT_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_LT_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_LT_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_LT_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_L_T1_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_L_T2_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_L_T3_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_LT_T2_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_L_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_LT_T2_AnC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_LT_T3_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_L_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_Loading_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect3_loader`
--

INSERT INTO `wp_rich_web_slider_effect3_loader` (`id`, `rich_web_slider_ID`, `Rich_Web_FSl_L_Show`, `Rich_Web_FSl_LT_Show`, `Rich_Web_FSl_LT`, `Rich_Web_FSl_L_BgC`, `Rich_Web_FSl_L_T`, `Rich_Web_FSl_LT_T`, `Rich_Web_FSl_LT_FS`, `Rich_Web_FSl_LT_FF`, `Rich_Web_FSl_LT_C`, `Rich_Web_FSl_L_T1_C`, `Rich_Web_FSl_L_T2_C`, `Rich_Web_FSl_L_T3_C`, `Rich_Web_FSl_LT_T2_BC`, `Rich_Web_FSl_L_C`, `Rich_Web_FSl_LT_T2_AnC`, `Rich_Web_FSl_LT_T3_BgC`, `Rich_Web_FSl_L_S`, `Rich_Web_FSl_Loading_Show`) VALUES
(1, '5', 'false', 'true', 'Loading', '#ffffff', 'Type 4', 'Type 1', '18', 'Vijaya', '#0066bf', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#ffffff', '#ffffff', '#dd3333', 'large', 'true'),
(2, '6', 'false', 'true', 'Loading', '#ffffff', 'Type 2', 'Type 2', '17', 'Aldhabi', '#000000', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#ffffff', '#ffffff', '#dd3333', 'middle', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect4`
--

CREATE TABLE IF NOT EXISTS `wp_rich_web_slider_effect4` (
  `id` int(10) unsigned NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_BxSShow` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_BxSType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_BxS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_BxC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_TDABgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_TDAPos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_LBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_TFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_TFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_TCC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_TC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_ArBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_ArBR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_ArType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_ArHBC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_ArHBR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_ArText` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_ArLeft` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_ArRight` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_ArTextC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_ArTextFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_ArTextFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect4`
--

INSERT INTO `wp_rich_web_slider_effect4` (`id`, `rich_web_slider_ID`, `rich_web_slider_name`, `rich_web_slider_type`, `Rich_Web_Sl_CT_W`, `Rich_Web_Sl_CT_H`, `Rich_Web_Sl_CT_BW`, `Rich_Web_Sl_CT_BS`, `Rich_Web_Sl_CT_BC`, `Rich_Web_Sl_CT_BxSShow`, `Rich_Web_Sl_CT_BxSType`, `Rich_Web_Sl_CT_BxS`, `Rich_Web_Sl_CT_BxC`, `Rich_Web_Sl_CT_TDABgC`, `Rich_Web_Sl_CT_TDAPos`, `Rich_Web_Sl_CT_LBgC`, `Rich_Web_Sl_CT_TFS`, `Rich_Web_Sl_CT_TFF`, `Rich_Web_Sl_CT_TCC`, `Rich_Web_Sl_CT_TC`, `Rich_Web_Sl_CT_ArBgC`, `Rich_Web_Sl_CT_ArBR`, `Rich_Web_Sl_CT_ArType`, `Rich_Web_Sl_CT_ArHBC`, `Rich_Web_Sl_CT_ArHBR`, `Rich_Web_Sl_CT_ArText`, `Rich_Web_Sl_CT_ArLeft`, `Rich_Web_Sl_CT_ArRight`, `Rich_Web_Sl_CT_ArTextC`, `Rich_Web_Sl_CT_ArTextFS`, `Rich_Web_Sl_CT_ArTextFF`) VALUES
(1, '7', 'Circle Thumbnails', 'Circle Thumbnails', '750', '410', '7', 'solid', '#ffffff', 'true', 'true', '8', '#009491', '#009491', 'bottom', '#009491', '23', 'Vijaya', '#ffffff', '#cccccc', '#007573', '25', '1', '#009491', '30', 'true', 'Prev', 'Next', '#ffffff', '20', 'Vijaya'),
(2, '8', 'Circle Thumbnails 2', 'Circle Thumbnails', '650', '370', '7', 'solid', '#ffffff', 'true', 'false', '20', '#009491', 'rgba(0,148,145,0.6)', 'top', 'rgba(0,148,145,0.6)', '23', 'Vijaya', '#ffffff', '#cccccc', '#007573', '25', '1', '#009491', '30', 'true', 'Prev', 'Next', 'rgba(255,255,255,0.6)', '20', 'Vijaya');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect4_loader`
--

CREATE TABLE IF NOT EXISTS `wp_rich_web_slider_effect4_loader` (
  `id` int(10) unsigned NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_L_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_LT_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_L_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_L_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_LT_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_LT_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_LT_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_LT_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_L_T1_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_L_T2_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_L_T3_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_LT_T2_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_L_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_LT_T2_AnC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_LT_T3_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_L_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_Loading_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect4_loader`
--

INSERT INTO `wp_rich_web_slider_effect4_loader` (`id`, `rich_web_slider_ID`, `Rich_Web_CircleSl_L_Show`, `Rich_Web_CircleSl_LT_Show`, `Rich_Web_CircleSl_LT`, `Rich_Web_CircleSl_L_BgC`, `Rich_Web_CircleSl_L_T`, `Rich_Web_CircleSl_LT_T`, `Rich_Web_CircleSl_LT_FS`, `Rich_Web_CircleSl_LT_FF`, `Rich_Web_CircleSl_LT_C`, `Rich_Web_CircleSl_L_T1_C`, `Rich_Web_CircleSl_L_T2_C`, `Rich_Web_CircleSl_L_T3_C`, `Rich_Web_CircleSl_LT_T2_BC`, `Rich_Web_CircleSl_L_C`, `Rich_Web_CircleSl_LT_T2_AnC`, `Rich_Web_CircleSl_LT_T3_BgC`, `Rich_Web_CircleSl_L_S`, `Rich_Web_CircleSl_Loading_Show`) VALUES
(1, '7', 'false', 'true', 'Loading', '#ffffff', 'Type 1', 'Type 3', '15', 'Abadi MT Condensed Light', '#ffffff', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#dd9933', '#ffffff', '#009491', 'middle', 'true'),
(2, '8', 'true', 'false', 'Loading', '#ffffff', 'Type 4', 'Type 2', '13', 'Abadi MT Condensed Light', '#dd3333', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#009491', '#1e73be', '#dd3333', 'middle', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect5`
--

CREATE TABLE IF NOT EXISTS `wp_rich_web_slider_effect5` (
  `id` int(10) unsigned NOT NULL,
  `rich_web_slider_ID` varchar(255) NOT NULL,
  `rich_web_slider_name` varchar(255) NOT NULL,
  `rich_web_slider_type` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_BW` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_BS` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_BC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_BoxShShow` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_BoxShType` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_BoxSh` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_BoxShC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_IW` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_IH` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_IBW` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_IBS` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_IBC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_IBR` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_ICBW` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_ICBS` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_ICBC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_TBgC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_TC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_TFS` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_TFF` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_THBgC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_THC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Pop_OC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Pop_BW` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Pop_BC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Pop_BoxShShow` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Pop_BoxShType` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Pop_BoxSh` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Pop_BoxShC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_L_BgC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_L_C` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_L_FS` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_L_BW` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_L_BS` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_L_BC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_L_BR` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_L_HBgC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_L_HC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_L_Type` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_L_Text` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_L_IType` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_L_FF` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PI_BgC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PI_C` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PI_FS` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PI_BW` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PI_BS` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PI_BC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PI_BR` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PI_HBgC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PI_HC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PI_Type` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PI_Text` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PI_IType` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PI_FF` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Arr_BgC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Arr_C` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Arr_FS` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Arr_BW` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Arr_BS` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Arr_BC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Arr_BR` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Arr_HBgC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Arr_HC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Arr_Type` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Arr_FF` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Arr_IType` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Arr_Next` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Arr_Prev` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PCI_FS` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PCI_C` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PCI_Type` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_rich_web_slider_effect5`
--

INSERT INTO `wp_rich_web_slider_effect5` (`id`, `rich_web_slider_ID`, `rich_web_slider_name`, `rich_web_slider_type`, `Rich_Web_Sl_SC_BW`, `Rich_Web_Sl_SC_BS`, `Rich_Web_Sl_SC_BC`, `Rich_Web_Sl_SC_BoxShShow`, `Rich_Web_Sl_SC_BoxShType`, `Rich_Web_Sl_SC_BoxSh`, `Rich_Web_Sl_SC_BoxShC`, `Rich_Web_Sl_SC_IW`, `Rich_Web_Sl_SC_IH`, `Rich_Web_Sl_SC_IBW`, `Rich_Web_Sl_SC_IBS`, `Rich_Web_Sl_SC_IBC`, `Rich_Web_Sl_SC_IBR`, `Rich_Web_Sl_SC_ICBW`, `Rich_Web_Sl_SC_ICBS`, `Rich_Web_Sl_SC_ICBC`, `Rich_Web_Sl_SC_TBgC`, `Rich_Web_Sl_SC_TC`, `Rich_Web_Sl_SC_TFS`, `Rich_Web_Sl_SC_TFF`, `Rich_Web_Sl_SC_THBgC`, `Rich_Web_Sl_SC_THC`, `Rich_Web_Sl_SC_Pop_OC`, `Rich_Web_Sl_SC_Pop_BW`, `Rich_Web_Sl_SC_Pop_BC`, `Rich_Web_Sl_SC_Pop_BoxShShow`, `Rich_Web_Sl_SC_Pop_BoxShType`, `Rich_Web_Sl_SC_Pop_BoxSh`, `Rich_Web_Sl_SC_Pop_BoxShC`, `Rich_Web_Sl_SC_L_BgC`, `Rich_Web_Sl_SC_L_C`, `Rich_Web_Sl_SC_L_FS`, `Rich_Web_Sl_SC_L_BW`, `Rich_Web_Sl_SC_L_BS`, `Rich_Web_Sl_SC_L_BC`, `Rich_Web_Sl_SC_L_BR`, `Rich_Web_Sl_SC_L_HBgC`, `Rich_Web_Sl_SC_L_HC`, `Rich_Web_Sl_SC_L_Type`, `Rich_Web_Sl_SC_L_Text`, `Rich_Web_Sl_SC_L_IType`, `Rich_Web_Sl_SC_L_FF`, `Rich_Web_Sl_SC_PI_BgC`, `Rich_Web_Sl_SC_PI_C`, `Rich_Web_Sl_SC_PI_FS`, `Rich_Web_Sl_SC_PI_BW`, `Rich_Web_Sl_SC_PI_BS`, `Rich_Web_Sl_SC_PI_BC`, `Rich_Web_Sl_SC_PI_BR`, `Rich_Web_Sl_SC_PI_HBgC`, `Rich_Web_Sl_SC_PI_HC`, `Rich_Web_Sl_SC_PI_Type`, `Rich_Web_Sl_SC_PI_Text`, `Rich_Web_Sl_SC_PI_IType`, `Rich_Web_Sl_SC_PI_FF`, `Rich_Web_Sl_SC_Arr_BgC`, `Rich_Web_Sl_SC_Arr_C`, `Rich_Web_Sl_SC_Arr_FS`, `Rich_Web_Sl_SC_Arr_BW`, `Rich_Web_Sl_SC_Arr_BS`, `Rich_Web_Sl_SC_Arr_BC`, `Rich_Web_Sl_SC_Arr_BR`, `Rich_Web_Sl_SC_Arr_HBgC`, `Rich_Web_Sl_SC_Arr_HC`, `Rich_Web_Sl_SC_Arr_Type`, `Rich_Web_Sl_SC_Arr_FF`, `Rich_Web_Sl_SC_Arr_IType`, `Rich_Web_Sl_SC_Arr_Next`, `Rich_Web_Sl_SC_Arr_Prev`, `Rich_Web_Sl_SC_PCI_FS`, `Rich_Web_Sl_SC_PCI_C`, `Rich_Web_Sl_SC_PCI_Type`) VALUES
(1, '9', 'Slider Carousel 1', 'Slider Carousel', '2', 'solid', '#ffffff', 'true', 'true', '15', '#0084aa', '270', '150', '4', 'solid', '#ffffff', '0', '0', 'solid', '#b5b5b5', '#0084aa', '#ffffff', '23', 'Vijaya', '#ffffff', '#0084aa', 'rgba(0,132,170,0.85)', '10', '#ffffff', 'true', 'false', '50', '#ffffff', 'rgba(255,255,255,0.7)', '#0084aa', '18', '0', 'solid', '#ffffff', '3', 'rgba(0,132,170,0.7)', '#ffffff', 'text', 'More', 'link', 'Vijaya', 'rgba(0,132,170,0.7)', '#ffffff', '18', '0', 'solid', '#0084aa', '3', 'rgba(255,255,255,0.7)', '#0084aa', 'text', 'Picture', 'picture-o', 'Gabriola', 'rgba(255,255,255,0.6)', '#0084aa', '20', '0', 'solid', '#6a90d8', '10', 'rgba(0,132,170,0.6)', '#ffffff', 'icon', 'Gabriola', 'angle', 'Next', 'Prev', '35', '#0084aa', 'home'),
(2, '10', 'Slider Carousel 2', 'Slider Carousel', '5', 'solid', '#ffffff', 'true', 'false', '25', '#0084aa', '270', '150', '5', 'solid', '#ffffff', '15', '0', 'solid', '#b5b5b5', '#0084aa', '#ffffff', '23', 'Vijaya', '#ffffff', '#0084aa', 'rgba(0,132,170,0.75)', '10', '#ffffff', 'true', 'false', '50', '#ffffff', 'rgba(255,255,255,0.5)', '#0084aa', '16', '0', 'solid', '#ffffff', '3', 'rgba(0,132,170,0.5)', '#ffffff', 'icon', 'More', 'link', 'Vijaya', 'rgba(0,132,170,0.5)', '#ffffff', '18', '0', 'solid', '#0084aa', '3', 'rgba(255,255,255,0.5)', '#0084aa', 'icon', 'Picture', 'picture-o', 'Gabriola', 'rgba(255,255,255,0.5)', '#0084aa', '20', '0', 'solid', '#6a90d8', '10', 'rgba(0,132,170,0.5)', '#ffffff', 'icon', 'Gabriola', 'angle-double', 'Next', 'Prev', '35', '#0084aa', 'times');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect5_loader`
--

CREATE TABLE IF NOT EXISTS `wp_rich_web_slider_effect5_loader` (
  `id` int(10) unsigned NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_L_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_LT_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_L_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_L_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_LT_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_LT_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_LT_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_LT_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_L_T1_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_L_T2_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_L_T3_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_LT_T2_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_L_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_LT_T2_AnC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_LT_T3_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_HT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_H_OvC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_L_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_Loading_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect5_loader`
--

INSERT INTO `wp_rich_web_slider_effect5_loader` (`id`, `rich_web_slider_ID`, `Rich_Web_CarSl_L_Show`, `Rich_Web_CarSl_LT_Show`, `Rich_Web_CarSl_LT`, `Rich_Web_CarSl_L_BgC`, `Rich_Web_CarSl_L_T`, `Rich_Web_CarSl_LT_T`, `Rich_Web_CarSl_LT_FS`, `Rich_Web_CarSl_LT_FF`, `Rich_Web_CarSl_LT_C`, `Rich_Web_CarSl_L_T1_C`, `Rich_Web_CarSl_L_T2_C`, `Rich_Web_CarSl_L_T3_C`, `Rich_Web_CarSl_LT_T2_BC`, `Rich_Web_CarSl_L_C`, `Rich_Web_CarSl_LT_T2_AnC`, `Rich_Web_CarSl_LT_T3_BgC`, `Rich_Web_CarSl_HT`, `Rich_Web_CarSl_H_OvC`, `Rich_Web_CarSl_L_S`, `Rich_Web_CarSl_Loading_Show`) VALUES
(1, '9', 'true', 'true', 'Loading', '#ffffff', 'Type 3', 'Type 4', '18', 'Aharoni', '#1e73be', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#1e73be', '#ffffff', '#1e73be', '11', '#dd3333', 'middle', 'true'),
(2, '10', 'false', 'true', 'Loading', '#ffffff', 'Type 2', 'Type 3', '17', 'Aharoni', '#ffffff', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#ffffff', '#ffffff', '#1e73be', '11', '#dd3333', 'middle', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect6`
--

CREATE TABLE IF NOT EXISTS `wp_rich_web_slider_effect6` (
  `id` int(10) unsigned NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_AP` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_TS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_PT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_SS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_SVis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_CS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_SLoop` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_SSc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_SlPos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_ShNavBut` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_I_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_I_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_I_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_I_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_I_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_I_BR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_I_BoxShShow` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_I_BoxShType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_I_BoxSh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_I_BoxShC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_T_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_T_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Nav_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Nav_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Nav_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Nav_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Nav_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Nav_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Nav_BR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Nav_PB` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Nav_CC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Nav_HC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Nav_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Arr_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Arr_Type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Arr_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Arr_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect6`
--

INSERT INTO `wp_rich_web_slider_effect6` (`id`, `rich_web_slider_ID`, `rich_web_slider_name`, `rich_web_slider_type`, `Rich_Web_Sl_FS_BgC`, `Rich_Web_Sl_FS_AP`, `Rich_Web_Sl_FS_TS`, `Rich_Web_Sl_FS_PT`, `Rich_Web_Sl_FS_SS`, `Rich_Web_Sl_FS_SVis`, `Rich_Web_Sl_FS_CS`, `Rich_Web_Sl_FS_SLoop`, `Rich_Web_Sl_FS_SSc`, `Rich_Web_Sl_FS_SlPos`, `Rich_Web_Sl_FS_ShNavBut`, `Rich_Web_Sl_FS_I_W`, `Rich_Web_Sl_FS_I_H`, `Rich_Web_Sl_FS_I_BW`, `Rich_Web_Sl_FS_I_BS`, `Rich_Web_Sl_FS_I_BC`, `Rich_Web_Sl_FS_I_BR`, `Rich_Web_Sl_FS_I_BoxShShow`, `Rich_Web_Sl_FS_I_BoxShType`, `Rich_Web_Sl_FS_I_BoxSh`, `Rich_Web_Sl_FS_I_BoxShC`, `Rich_Web_Sl_FS_T_C`, `Rich_Web_Sl_FS_T_FF`, `Rich_Web_Sl_FS_Nav_Show`, `Rich_Web_Sl_FS_Nav_W`, `Rich_Web_Sl_FS_Nav_H`, `Rich_Web_Sl_FS_Nav_BW`, `Rich_Web_Sl_FS_Nav_BS`, `Rich_Web_Sl_FS_Nav_BC`, `Rich_Web_Sl_FS_Nav_BR`, `Rich_Web_Sl_FS_Nav_PB`, `Rich_Web_Sl_FS_Nav_CC`, `Rich_Web_Sl_FS_Nav_HC`, `Rich_Web_Sl_FS_Nav_C`, `Rich_Web_Sl_FS_Arr_Show`, `Rich_Web_Sl_FS_Arr_Type`, `Rich_Web_Sl_FS_Arr_S`, `Rich_Web_Sl_FS_Arr_C`) VALUES
(1, '11', 'Flexible Slider 1', 'Flexible Slider', '#0084aa', 'true', '400', '4', '1', 'true', '6', 'true', '200', 'center', 'true', '225', '225', '5', 'solid', '#ffffff', '134', 'true', 'false', '33', '#0084aa', '#0084aa', 'Aldhabi', 'true', '15', '10', '1', 'solid', '#0084aa', '15', '3', '#0084aa', '#0066bf', '#ffffff', 'true', 'angle', '40', '#ffffff'),
(2, '12', 'Flexible Slider 2', 'Flexible Slider', '#0084aa', 'true', '400', '4', '1', 'true', '6', 'true', '200', 'center', 'true', '225', '225', '5', 'solid', '#ffffff', '0', 'true', 'true', '33', '#0084aa', '#0084aa', 'Aldhabi', 'true', '15', '10', '1', 'solid', '#0084aa', '15', '3', '#0084aa', '#0066bf', '#ffffff', 'true', 'angle', '40', '#ffffff');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect6_loader`
--

CREATE TABLE IF NOT EXISTS `wp_rich_web_slider_effect6_loader` (
  `id` int(10) unsigned NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_L_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_LT_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_L_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_L_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_LT_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_LT_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_LT_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_LT_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_L_T1_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_L_T2_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_L_T3_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_LT_T2_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_L_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_LT_T2_AnC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_LT_T3_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_L_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_Loading_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect6_loader`
--

INSERT INTO `wp_rich_web_slider_effect6_loader` (`id`, `rich_web_slider_ID`, `Rich_Web_FlexibleSl_L_Show`, `Rich_Web_FlexibleSl_LT_Show`, `Rich_Web_FlexibleSl_LT`, `Rich_Web_FlexibleSl_L_BgC`, `Rich_Web_FlexibleSl_L_T`, `Rich_Web_FlexibleSl_LT_T`, `Rich_Web_FlexibleSl_LT_FS`, `Rich_Web_FlexibleSl_LT_FF`, `Rich_Web_FlexibleSl_LT_C`, `Rich_Web_FlexibleSl_L_T1_C`, `Rich_Web_FlexibleSl_L_T2_C`, `Rich_Web_FlexibleSl_L_T3_C`, `Rich_Web_FlexibleSl_LT_T2_BC`, `Rich_Web_FlexibleSl_L_C`, `Rich_Web_FlexibleSl_LT_T2_AnC`, `Rich_Web_FlexibleSl_LT_T3_BgC`, `Rich_Web_FlexibleSl_L_S`, `Rich_Web_FlexibleSl_Loading_Show`) VALUES
(1, '11', 'true', 'false', 'Loading', '#ffffff', 'Type 1', 'Type 2', '13', 'Abadi MT Condensed Light', '#dd3333', '#dd8282', '#c9c9c9', '#000000', 'rgba(30,115,190,0.54)', '#ffffff', '#ffffff', '#dd3333', 'middle', 'true'),
(2, '12', 'true', 'false', 'Loading', '#ffffff', 'Type 3', 'Type 2', '13', 'Abadi MT Condensed Light', '#dd3333', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#0084aa', '#ffffff', '#dd3333', 'middle', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect7`
--

CREATE TABLE IF NOT EXISTS `wp_rich_web_slider_effect7` (
  `id` int(10) unsigned NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_AP` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_PT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Tr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_TFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_TFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_TC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_DFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_DFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_DC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_LFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_LFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_LC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_LBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_LBW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_LBS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_LBC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_LBR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_LHC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_LHBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Arr_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Arr_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Arr_RT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Arr_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Arr_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Arr_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Arr_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Arr_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Arr_BR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Arr_HC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Arr_HBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Nav_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Nav_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Nav_PB` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Nav_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Nav_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Nav_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Nav_BR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Nav_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Nav_HC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Nav_CC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect7`
--

INSERT INTO `wp_rich_web_slider_effect7` (`id`, `rich_web_slider_ID`, `rich_web_slider_name`, `rich_web_slider_type`, `Rich_Web_Sl_DS_AP`, `Rich_Web_Sl_DS_PT`, `Rich_Web_Sl_DS_Tr`, `Rich_Web_Sl_DS_H`, `Rich_Web_Sl_DS_BW`, `Rich_Web_Sl_DS_BS`, `Rich_Web_Sl_DS_BC`, `Rich_Web_Sl_DS_TFS`, `Rich_Web_Sl_DS_TFF`, `Rich_Web_Sl_DS_TC`, `Rich_Web_Sl_DS_DFS`, `Rich_Web_Sl_DS_DFF`, `Rich_Web_Sl_DS_DC`, `Rich_Web_Sl_DS_LFS`, `Rich_Web_Sl_DS_LFF`, `Rich_Web_Sl_DS_LC`, `Rich_Web_Sl_DS_LBgC`, `Rich_Web_Sl_DS_LBW`, `Rich_Web_Sl_DS_LBS`, `Rich_Web_Sl_DS_LBC`, `Rich_Web_Sl_DS_LBR`, `Rich_Web_Sl_DS_LHC`, `Rich_Web_Sl_DS_LHBgC`, `Rich_Web_Sl_DS_LT`, `Rich_Web_Sl_DS_Arr_Show`, `Rich_Web_Sl_DS_Arr_LT`, `Rich_Web_Sl_DS_Arr_RT`, `Rich_Web_Sl_DS_Arr_C`, `Rich_Web_Sl_DS_Arr_BgC`, `Rich_Web_Sl_DS_Arr_BW`, `Rich_Web_Sl_DS_Arr_BS`, `Rich_Web_Sl_DS_Arr_BC`, `Rich_Web_Sl_DS_Arr_BR`, `Rich_Web_Sl_DS_Arr_HC`, `Rich_Web_Sl_DS_Arr_HBgC`, `Rich_Web_Sl_DS_Nav_W`, `Rich_Web_Sl_DS_Nav_H`, `Rich_Web_Sl_DS_Nav_PB`, `Rich_Web_Sl_DS_Nav_BW`, `Rich_Web_Sl_DS_Nav_BS`, `Rich_Web_Sl_DS_Nav_BC`, `Rich_Web_Sl_DS_Nav_BR`, `Rich_Web_Sl_DS_Nav_C`, `Rich_Web_Sl_DS_Nav_HC`, `Rich_Web_Sl_DS_Nav_CC`) VALUES
(1, '13', 'Dynamic Slider 1', 'Dynamic Slider', 'true', '5', 'true', '250', '4', 'solid', '#ffffff', '15', 'Aldhabi', '#ffffff', '14', 'Aldhabi', '#598fbf', '16', 'Aldhabi', '#ffffff', '#dd3333', '0', 'dotted', '#4a1fc1', '0', '#dd3333', '#ffffff', 'View', 'true', 'Prev', 'Next', '#ffffff', '#0084aa', '0', 'solid', '#16a309', '46', '#ffffff', '#5598aa', '11', '12', '5', '1', 'solid', '#ffffff', '50', '#0084aa', '#dd3333', '#ffffff'),
(2, '14', 'Dynamic Slider 2', 'Dynamic Slider', 'true', '5', 'true', '400', '4', 'solid', '#ffffff', '18', 'Aldhabi', '#598fbf', '16', 'Aldhabi', '#ffffff', '16', 'Aldhabi', '#ffffff', 'rgba(221,51,51,0)', '1', 'solid', '#ffffff', '0', '#0084aa', 'rgba(255,255,255,0)', 'View More', 'true', 'Prev', 'Next', '#0084aa', 'rgba(255,255,255,0.45)', '0', 'solid', '#000000', '46', '#0084aa', '#ffffff', '10', '10', '5', '1', 'solid', '#ffffff', '50', '#0084aa', '#ffffff', '#ffffff');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect7_loader`
--

CREATE TABLE IF NOT EXISTS `wp_rich_web_slider_effect7_loader` (
  `id` int(10) unsigned NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_L_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_LT_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_L_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_L_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_LT_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_LT_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_LT_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_LT_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_L_T1_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_L_T2_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_L_T3_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_LT_T2_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_L_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_LT_T2_AnC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_LT_T3_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_ImgT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_L_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_Loading_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect7_loader`
--

INSERT INTO `wp_rich_web_slider_effect7_loader` (`id`, `rich_web_slider_ID`, `Rich_Web_DynamicSl_L_Show`, `Rich_Web_DynamicSl_LT_Show`, `Rich_Web_DynamicSl_LT`, `Rich_Web_DynamicSl_L_BgC`, `Rich_Web_DynamicSl_L_T`, `Rich_Web_DynamicSl_LT_T`, `Rich_Web_DynamicSl_LT_FS`, `Rich_Web_DynamicSl_LT_FF`, `Rich_Web_DynamicSl_LT_C`, `Rich_Web_DynamicSl_L_T1_C`, `Rich_Web_DynamicSl_L_T2_C`, `Rich_Web_DynamicSl_L_T3_C`, `Rich_Web_DynamicSl_LT_T2_BC`, `Rich_Web_DynamicSl_L_C`, `Rich_Web_DynamicSl_LT_T2_AnC`, `Rich_Web_DynamicSl_LT_T3_BgC`, `Rich_Web_DynamicSl_ImgT`, `Rich_Web_DynamicSl_L_S`, `Rich_Web_DynamicSl_Loading_Show`) VALUES
(1, '13', 'true', 'true', 'Loading', '#ffffff', 'Type 3', 'Type 2', '21', 'Gabriola', '#0084aa', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#007596', '#0084aa', '#dd3333', 'Type 2', 'middle', 'true'),
(2, '14', 'true', 'true', 'LOADING', '#ffffff', 'Type 2', 'Type 2', '13', 'Abadi MT Condensed Light', '#0084aa', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#0084aa', '#0084aa', '#dd3333', 'Type 1', 'middle', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect8`
--

CREATE TABLE IF NOT EXISTS `wp_rich_web_slider_effect8` (
  `id` int(10) unsigned NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_BR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_BoxShShow` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_BoxShType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_BoxSh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_BoxShC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_CM` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_TA` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_AP` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_PH` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Loop` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_PT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_CS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Nav_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Nav_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Nav_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Nav_PB` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Nav_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Nav_BR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Nav_CBC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Nav_HBC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Nav_Pos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_SS_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_SS_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_SS_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_SS_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_SS_BR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_SS_StC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_SS_SpC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Arr_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Arr_Type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Arr_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Arr_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Pop_OvC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Pop_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Pop_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Pop_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Pop_BR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Pop_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_TFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_TFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_TC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Pop_ArrType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Pop_ArrS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Pop_ArrC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_CIT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_CIS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_CIC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect8`
--

INSERT INTO `wp_rich_web_slider_effect8` (`id`, `rich_web_slider_ID`, `rich_web_slider_name`, `rich_web_slider_type`, `Rich_Web_Sl_TSL_W`, `Rich_Web_Sl_TSL_H`, `Rich_Web_Sl_TSL_BW`, `Rich_Web_Sl_TSL_BS`, `Rich_Web_Sl_TSL_BC`, `Rich_Web_Sl_TSL_BR`, `Rich_Web_Sl_TSL_BoxShShow`, `Rich_Web_Sl_TSL_BoxShType`, `Rich_Web_Sl_TSL_BoxSh`, `Rich_Web_Sl_TSL_BoxShC`, `Rich_Web_Sl_TSL_CM`, `Rich_Web_Sl_TSL_TA`, `Rich_Web_Sl_TSL_AP`, `Rich_Web_Sl_TSL_PH`, `Rich_Web_Sl_TSL_Loop`, `Rich_Web_Sl_TSL_PT`, `Rich_Web_Sl_TSL_CS`, `Rich_Web_Sl_TSL_Nav_Show`, `Rich_Web_Sl_TSL_Nav_W`, `Rich_Web_Sl_TSL_Nav_H`, `Rich_Web_Sl_TSL_Nav_PB`, `Rich_Web_Sl_TSL_Nav_BC`, `Rich_Web_Sl_TSL_Nav_BR`, `Rich_Web_Sl_TSL_Nav_CBC`, `Rich_Web_Sl_TSL_Nav_HBC`, `Rich_Web_Sl_TSL_Nav_Pos`, `Rich_Web_Sl_TSL_SS_Show`, `Rich_Web_Sl_TSL_SS_W`, `Rich_Web_Sl_TSL_SS_H`, `Rich_Web_Sl_TSL_SS_BC`, `Rich_Web_Sl_TSL_SS_BR`, `Rich_Web_Sl_TSL_SS_StC`, `Rich_Web_Sl_TSL_SS_SpC`, `Rich_Web_Sl_TSL_Arr_Show`, `Rich_Web_Sl_TSL_Arr_Type`, `Rich_Web_Sl_TSL_Arr_S`, `Rich_Web_Sl_TSL_Arr_C`, `Rich_Web_Sl_TSL_Pop_OvC`, `Rich_Web_Sl_TSL_Pop_BW`, `Rich_Web_Sl_TSL_Pop_BS`, `Rich_Web_Sl_TSL_Pop_BC`, `Rich_Web_Sl_TSL_Pop_BR`, `Rich_Web_Sl_TSL_Pop_BgC`, `Rich_Web_Sl_TSL_TFS`, `Rich_Web_Sl_TSL_TFF`, `Rich_Web_Sl_TSL_TC`, `Rich_Web_Sl_TSL_Pop_ArrType`, `Rich_Web_Sl_TSL_Pop_ArrS`, `Rich_Web_Sl_TSL_Pop_ArrC`, `Rich_Web_Sl_TSL_CIT`, `Rich_Web_Sl_TSL_CIS`, `Rich_Web_Sl_TSL_CIC`) VALUES
(1, '15', 'Thumbnails Slider & Lightbox 1', 'Thumbnails Slider & Lightbox', '700', '425', '5', 'solid', '#598fbf', '0', 'true', 'false', '32', '#598fbf', 'vertical', 'true', 'true', 'true', 'true', '5', '500', 'true', '50', '50', '4', '#ffffff', '0', '#598fbf', '#598fbf', 'bottom', 'true', '10', '10', '#598fbf', '8', '#598fbf', '#ffffff', 'true', '9', '39', '#ffffff', 'rgba(89,143,191,0.85)', '0', 'solid', '#ffffff', '0', 'rgba(89,143,191,0)', '27', 'Gabriola', '#ffffff', 'angle-double', '27', '#ffffff', 'times-circle', '28', 'rgba(255,255,255,0.86)'),
(2, '16', 'Thumbnails Slider & Lightbox 2', 'Thumbnails Slider & Lightbox', '700', '425', '5', 'solid', '#ffffff', '0', 'true', 'true', '15', '#598fbf', 'fade', 'false', 'true', 'true', 'false', '5', '500', 'true', '25', '25', '6', 'rgba(255,255,255,0.43)', '20', 'rgba(89,143,191,0.46)', 'rgba(89,143,191,0.41)', 'top', 'false', '10', '10', '#598fbf', '8', '#598fbf', '#ffffff', 'true', '9', '39', '#ffffff', 'rgba(89,143,191,0.85)', '0', 'solid', '#ffffff', '0', 'rgba(89,143,191,0)', '27', 'Gabriola', '#ffffff', 'angle-double', '27', '#ffffff', 'times-circle', '28', 'rgba(255,255,255,0.86');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect8_loader`
--

CREATE TABLE IF NOT EXISTS `wp_rich_web_slider_effect8_loader` (
  `id` int(10) unsigned NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_L_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_LT_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_L_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_L_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_LT_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_LT_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_LT_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_LT_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_L_T1_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_L_T2_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_L_T3_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_LT_T2_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_L_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_LT_T2_AnC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_LT_T3_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_L_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_Loading_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect8_loader`
--

INSERT INTO `wp_rich_web_slider_effect8_loader` (`id`, `rich_web_slider_ID`, `Rich_Web_ThSl_L_Show`, `Rich_Web_ThSl_LT_Show`, `Rich_Web_ThSl_LT`, `Rich_Web_ThSl_L_BgC`, `Rich_Web_ThSl_L_T`, `Rich_Web_ThSl_LT_T`, `Rich_Web_ThSl_LT_FS`, `Rich_Web_ThSl_LT_FF`, `Rich_Web_ThSl_LT_C`, `Rich_Web_ThSl_L_T1_C`, `Rich_Web_ThSl_L_T2_C`, `Rich_Web_ThSl_L_T3_C`, `Rich_Web_ThSl_LT_T2_BC`, `Rich_Web_ThSl_L_C`, `Rich_Web_ThSl_LT_T2_AnC`, `Rich_Web_ThSl_LT_T3_BgC`, `Rich_Web_ThSl_L_S`, `Rich_Web_ThSl_Loading_Show`) VALUES
(1, '15', 'false', 'true', 'Loading', '#ffffff', 'Type 2', 'Type 1', '15', 'Abadi MT Condensed Light', '#828282', '#dd9933', '#dd9933', '#dd3333', '#000000', '#dd3333', '#ffffff', '#dd3333', 'middle', 'true'),
(2, '16', 'true', 'false', 'Loading', '#ffffff', 'Type 1', 'Type 2', '13', 'Abadi MT Condensed Light', '#dd3333', '#000000', '#606060', '#b7b7b7', '#000000', '#ffffff', '#81d742', '#dd3333', 'middle', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect9`
--

CREATE TABLE IF NOT EXISTS `wp_rich_web_slider_effect9` (
  `id` int(10) unsigned NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_BSh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_BShC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Img_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Img_BSh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Img_BShC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Title_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Title_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Title_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Title_TSh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Title_TShC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Title_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Link_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Link_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Link_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Link_TSh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Link_TShC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Link_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Link_Text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect9`
--

INSERT INTO `wp_rich_web_slider_effect9` (`id`, `rich_web_slider_ID`, `rich_web_slider_name`, `rich_web_slider_type`, `Rich_Web_AcSL_W`, `Rich_Web_AcSL_H`, `Rich_Web_AcSL_BW`, `Rich_Web_AcSL_BS`, `Rich_Web_AcSL_BC`, `Rich_Web_AcSL_BSh`, `Rich_Web_AcSL_BShC`, `Rich_Web_AcSL_Img_W`, `Rich_Web_AcSL_Img_BSh`, `Rich_Web_AcSL_Img_BShC`, `Rich_Web_AcSL_Title_FS`, `Rich_Web_AcSL_Title_FF`, `Rich_Web_AcSL_Title_C`, `Rich_Web_AcSL_Title_TSh`, `Rich_Web_AcSL_Title_TShC`, `Rich_Web_AcSL_Title_BgC`, `Rich_Web_AcSL_Link_FS`, `Rich_Web_AcSL_Link_FF`, `Rich_Web_AcSL_Link_C`, `Rich_Web_AcSL_Link_TSh`, `Rich_Web_AcSL_Link_TShC`, `Rich_Web_AcSL_Link_BgC`, `Rich_Web_AcSL_Link_Text`) VALUES
(1, '17', 'Accordion 1', 'Accordion Slider', '720', '350', '7', 'solid', '#eaeaea', '14', '#0084aa', '596', '2', '#eaeaea', '16', 'Aldhabi', '#ffffff', '3', '#ffffff', 'rgba(0,132,170,0.65)', '16', 'Vijaya', '#0084aa', '3', '#0084aa', 'rgba(255,255,255,0.6)', 'View . . .'),
(2, '18', 'Accordion 2', 'Accordion Slider', '720', '350', '7', 'solid', '#ffffff', '14', '#0084aa', '572', '3', '#ffffff', '16', 'Aldhabi', '#0084aa', '3', '#ffffff', 'rgba(255,255,255,0.8)', '16', 'Vijaya', '#ffffff', '3', 'rgba(0,132,170,0.5)', 'rgba(255,255,255,0.6)', 'View . . .');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect9_loader`
--

CREATE TABLE IF NOT EXISTS `wp_rich_web_slider_effect9_loader` (
  `id` int(10) unsigned NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_L_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_LT_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_L_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_L_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_LT_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_LT_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_LT_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_LT_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_L_T1_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_L_T2_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_L_T3_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_LT_T2_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_L_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_LT_T2_AnC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_LT_T3_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_L_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_Loading_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect9_loader`
--

INSERT INTO `wp_rich_web_slider_effect9_loader` (`id`, `rich_web_slider_ID`, `Rich_Web_AccSl_L_Show`, `Rich_Web_AccSl_LT_Show`, `Rich_Web_AccSl_LT`, `Rich_Web_AccSl_L_BgC`, `Rich_Web_AccSl_L_T`, `Rich_Web_AccSl_LT_T`, `Rich_Web_AccSl_LT_FS`, `Rich_Web_AccSl_LT_FF`, `Rich_Web_AccSl_LT_C`, `Rich_Web_AccSl_L_T1_C`, `Rich_Web_AccSl_L_T2_C`, `Rich_Web_AccSl_L_T3_C`, `Rich_Web_AccSl_LT_T2_BC`, `Rich_Web_AccSl_L_C`, `Rich_Web_AccSl_LT_T2_AnC`, `Rich_Web_AccSl_LT_T3_BgC`, `Rich_Web_AccSl_L_S`, `Rich_Web_AccSl_Loading_Show`) VALUES
(1, '17', 'false', 'true', 'Loading', '#ffffff', 'Type 2', 'Type 2', '17', 'Abadi MT Condensed Light', '#0084aa', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#ffffff', '#00688e', '#dd3333', 'middle', 'true'),
(2, '18', 'false', 'true', 'Loading', '#ffffff', 'Type 2', 'Type 2', '13', 'Abadi MT Condensed Light', '#0084aa', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#ffffff', '#007087', '#dd3333', 'middle', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect10`
--

CREATE TABLE IF NOT EXISTS `wp_rich_web_slider_effect10` (
  `id` int(10) unsigned NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_BR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_BSh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_ShC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_ET` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_SSh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_SShChT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_T_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_T_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_T_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_T_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_T_TA` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_T_Sh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_T_ShC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_N_Sh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_N_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_N_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_N_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_N_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_N_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_N_HBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_N_CC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_N_M` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_Ic_Sh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_Ic_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_Ic_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_Ic_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_L_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_L_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_L_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_L_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_L_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_L1_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_L2_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_L3_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect10`
--

INSERT INTO `wp_rich_web_slider_effect10` (`id`, `rich_web_slider_ID`, `rich_web_slider_name`, `rich_web_slider_type`, `Rich_Web_AnSL_W`, `Rich_Web_AnSL_H`, `Rich_Web_AnSL_BW`, `Rich_Web_AnSL_BS`, `Rich_Web_AnSL_BC`, `Rich_Web_AnSL_BR`, `Rich_Web_AnSL_BSh`, `Rich_Web_AnSL_ShC`, `Rich_Web_AnSL_ET`, `Rich_Web_AnSL_SSh`, `Rich_Web_AnSL_SShChT`, `Rich_Web_AnSL_T_FS`, `Rich_Web_AnSL_T_FF`, `Rich_Web_AnSL_T_C`, `Rich_Web_AnSL_T_BgC`, `Rich_Web_AnSL_T_TA`, `Rich_Web_AnSL_T_Sh`, `Rich_Web_AnSL_T_ShC`, `Rich_Web_AnSL_N_Sh`, `Rich_Web_AnSL_N_S`, `Rich_Web_AnSL_N_BW`, `Rich_Web_AnSL_N_BC`, `Rich_Web_AnSL_N_BgC`, `Rich_Web_AnSL_N_BS`, `Rich_Web_AnSL_N_HBgC`, `Rich_Web_AnSL_N_CC`, `Rich_Web_AnSL_N_M`, `Rich_Web_AnSL_Ic_Sh`, `Rich_Web_AnSL_Ic_T`, `Rich_Web_AnSL_Ic_S`, `Rich_Web_AnSL_Ic_C`, `Rich_Web_AnSL_L_BgC`, `Rich_Web_AnSL_L_T`, `Rich_Web_AnSL_L_FS`, `Rich_Web_AnSL_L_FF`, `Rich_Web_AnSL_L_C`, `Rich_Web_AnSL_L1_T`, `Rich_Web_AnSL_L2_T`, `Rich_Web_AnSL_L3_T`) VALUES
(1, '19', 'Animation Slider 1', 'Animation Slider', '700', '536', '0', 'none', '#1e73be', '0', '10', '#000000', '4', 'true', '5500', '22', 'Abadi MT Condensed Light', '#ffffff', 'rgba(0,0,0,0.3)', 'center', '5', 'Image', 'true', '13', '1', 'rgba(0,0,0,0.15)', 'rgba(0,0,0,0.15)', 'Type 1', 'rgba(255,255,255,0.4)', 'rgba(0,0,0,0.3)', '3', 'true', 'rich_web rich_web-angle-double', '40', '#ffffff', '#000000', 'Loading. Please Wait...', '16', 'Abadi MT Condensed Light', '#ffffff', '#ffffff', '#1e73be', '#bababa'),
(2, '20', 'Animation Slider 2', 'Animation Slider', '700', '536', '0', 'none', '#1e73be', '0', '0', 'rgba(0,0,0,0)', '6', 'true', '5500', '22', 'Abadi MT Condensed Light', '#ffffff', 'rgba(30,115,190,0.3)', 'center', '5', 'Icon', 'false', '13', '1', '#1e73be', '#1e73be', 'Type 1', 'rgba(255,255,255,0.4)', 'rgba(0,0,0,0.3)', '3', 'true', 'rich_web rich_web-caret', '50', 'rgba(30,115,190,0.8)', '#000000', 'Loading. Please Wait...', '16', 'Abadi MT Condensed Light', '#ffffff', '#ffffff', '#1e73be', '#bababa');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect10_loader`
--

CREATE TABLE IF NOT EXISTS `wp_rich_web_slider_effect10_loader` (
  `id` int(10) unsigned NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_L_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_LT_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_L_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_L_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_LT_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_LT_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_LT_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_LT_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_L_T1_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_L_T2_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_L_T3_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_LT_T2_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_L_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_LT_T2_AnC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_LT_T3_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_L_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_Loading_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect10_loader`
--

INSERT INTO `wp_rich_web_slider_effect10_loader` (`id`, `rich_web_slider_ID`, `Rich_Web_AnimSl_L_Show`, `Rich_Web_AnimSl_LT_Show`, `Rich_Web_AnimSl_LT`, `Rich_Web_AnimSl_L_BgC`, `Rich_Web_AnimSl_L_T`, `Rich_Web_AnimSl_LT_T`, `Rich_Web_AnimSl_LT_FS`, `Rich_Web_AnimSl_LT_FF`, `Rich_Web_AnimSl_LT_C`, `Rich_Web_AnimSl_L_T1_C`, `Rich_Web_AnimSl_L_T2_C`, `Rich_Web_AnimSl_L_T3_C`, `Rich_Web_AnimSl_LT_T2_BC`, `Rich_Web_AnimSl_L_C`, `Rich_Web_AnimSl_LT_T2_AnC`, `Rich_Web_AnimSl_LT_T3_BgC`, `Rich_Web_AnimSl_L_S`, `Rich_Web_AnimSl_Loading_Show`) VALUES
(1, '19', 'true', 'true', 'Loading', '#ffffff', 'Type 1', 'Type 2', '13', 'Abadi MT Condensed Light', '#dd3333', '#dd3333', '#dd0000', '#990700', 'rgba(30,115,190,0.54)', '#dd0000', '#dd3333', '#dd3333', 'middle', 'true'),
(2, '20', 'true', 'true', 'Loading', '#ffffff', 'Type 2', 'Type 2', '15', 'Abadi MT Condensed Light', '#004da0', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#1e73be', '#1e73be', '#dd3333', 'middle', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effects_data`
--

CREATE TABLE IF NOT EXISTS `wp_rich_web_slider_effects_data` (
  `id` int(10) unsigned NOT NULL,
  `slider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effects_data`
--

INSERT INTO `wp_rich_web_slider_effects_data` (`id`, `slider_name`, `slider_type`) VALUES
(1, 'Slider Navigation 1', 'Slider Navigation'),
(2, 'Slider Navigation 2', 'Slider Navigation'),
(3, 'Content Slider', 'Content Slider'),
(4, 'Content-Slider', 'Content Slider'),
(5, 'Fashion Slider 1', 'Fashion Slider'),
(6, 'Fashion Slider 2', 'Fashion Slider'),
(7, 'Circle Thumbnails', 'Circle Thumbnails'),
(8, 'Circle Thumbnails 2', 'Circle Thumbnails'),
(9, 'Slider Carousel 1', 'Slider Carousel'),
(10, 'Slider Carousel 2', 'Slider Carousel'),
(11, 'Flexible Slider 1', 'Flexible Slider'),
(12, 'Flexible Slider 2', 'Flexible Slider'),
(13, 'Dynamic Slider 1', 'Dynamic Slider'),
(14, 'Dynamic Slider 2', 'Dynamic Slider'),
(15, 'Thumbnails Slider & Lightbox 1', 'Thumbnails Slider & Lightbox'),
(16, 'Thumbnails Slider & Lightbox 2', 'Thumbnails Slider & Lightbox'),
(17, 'Accordion 1', 'Accordion Slider'),
(18, 'Accordion 2', 'Accordion Slider'),
(19, 'Animation Slider 1', 'Animation Slider'),
(20, 'Animation Slider 2', 'Animation Slider');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_font_family`
--

CREATE TABLE IF NOT EXISTS `wp_rich_web_slider_font_family` (
  `id` int(10) unsigned NOT NULL,
  `Font_family` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_font_family`
--

INSERT INTO `wp_rich_web_slider_font_family` (`id`, `Font_family`) VALUES
(1, 'Abadi MT Condensed Light'),
(2, 'Aharoni'),
(3, 'Aldhabi'),
(4, 'Andalus'),
(5, 'Angsana New'),
(6, 'AngsanaUPC'),
(7, 'Aparajita'),
(8, 'Arabic Typesetting'),
(9, 'Arial'),
(10, 'Arial Black'),
(11, 'Batang'),
(12, 'BatangChe'),
(13, 'Browallia New'),
(14, 'BrowalliaUPC'),
(15, 'Calibri'),
(16, 'Calibri Light'),
(17, 'Calisto MT'),
(18, 'Cambria'),
(19, 'Candara'),
(20, 'Century Gothic'),
(21, 'Comic Sans MS'),
(22, 'Consolas'),
(23, 'Constantia'),
(24, 'Copperplate Gothic'),
(25, 'Copperplate Gothic Light'),
(26, 'Corbel'),
(27, 'Cordia New'),
(28, 'CordiaUPC'),
(29, 'Courier New'),
(30, 'DaunPenh'),
(31, 'David'),
(32, 'DFKai-SB'),
(33, 'DilleniaUPC'),
(34, 'DokChampa'),
(35, 'Dotum'),
(36, 'DotumChe'),
(37, 'Ebrima'),
(38, 'Estrangelo Edessa'),
(39, 'EucrosiaUPC'),
(40, 'Euphemia'),
(41, 'FangSong'),
(42, 'Franklin Gothic Medium'),
(43, 'FrankRuehl'),
(44, 'FreesiaUPC'),
(45, 'Gabriola'),
(46, 'Gadugi'),
(47, 'Gautami'),
(48, 'Georgia'),
(49, 'Gisha'),
(50, 'Gulim'),
(51, 'GulimChe'),
(52, 'Gungsuh'),
(53, 'GungsuhChe'),
(54, 'Impact'),
(55, 'IrisUPC'),
(56, 'Iskoola Pota'),
(57, 'JasmineUPC'),
(58, 'KaiTi'),
(59, 'Kalinga'),
(60, 'Kartika'),
(61, 'Khmer UI'),
(62, 'KodchiangUPC'),
(63, 'Kokila'),
(64, 'Lao UI'),
(65, 'Latha'),
(66, 'Leelawadee'),
(67, 'Levenim MT'),
(68, 'LilyUPC'),
(69, 'Lucida Console'),
(70, 'Lucida Handwriting Italic'),
(71, 'Lucida Sans Unicode'),
(72, 'Malgun Gothic'),
(73, 'Mangal'),
(74, 'Manny ITC'),
(75, 'Marlett'),
(76, 'Meiryo'),
(77, 'Meiryo UI'),
(78, 'Microsoft Himalaya'),
(79, 'Microsoft JhengHei'),
(80, 'Microsoft JhengHei UI'),
(81, 'Microsoft New Tai Lue'),
(82, 'Microsoft PhagsPa'),
(83, 'Microsoft Sans Serif'),
(84, 'Microsoft Tai Le'),
(85, 'Microsoft Uighur'),
(86, 'Microsoft YaHei'),
(87, 'Microsoft YaHei UI'),
(88, 'Microsoft Yi Baiti'),
(89, 'MingLiU_HKSCS'),
(90, 'MingLiU_HKSCS-ExtB'),
(91, 'Miriam'),
(92, 'Mongolian Baiti'),
(93, 'MoolBoran'),
(94, 'MS UI Gothic'),
(95, 'MV Boli'),
(96, 'Myanmar Text'),
(97, 'Narkisim'),
(98, 'Nirmala UI'),
(99, 'News Gothic MT'),
(100, 'NSimSun'),
(101, 'Nyala'),
(102, 'Palatino Linotype'),
(103, 'Plantagenet Cherokee'),
(104, 'Raavi'),
(105, 'Rod'),
(106, 'Sakkal Majalla'),
(107, 'Segoe Print'),
(108, 'Segoe Script'),
(109, 'Segoe UI Symbol'),
(110, 'Shonar Bangla'),
(111, 'Shruti'),
(112, 'SimHei'),
(113, 'SimKai'),
(114, 'Simplified Arabic'),
(115, 'SimSun'),
(116, 'SimSun-ExtB'),
(117, 'Sylfaen'),
(118, 'Tahoma'),
(119, 'Times New Roman'),
(120, 'Traditional Arabic'),
(121, 'Trebuchet MS'),
(122, 'Tunga'),
(123, 'Utsaah'),
(124, 'Vani'),
(125, 'Vijaya');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_id`
--

CREATE TABLE IF NOT EXISTS `wp_rich_web_slider_id` (
  `id` int(10) unsigned NOT NULL,
  `Slider_ID` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_id`
--

INSERT INTO `wp_rich_web_slider_id` (`id`, `Slider_ID`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без категорії', '%d0%b1%d0%b5%d0%b7-%d0%ba%d0%b0%d1%82%d0%b5%d0%b3%d0%be%d1%80%d1%96%d1%97', 0),
(2, 'header-menu', 'header-menu', 0),
(3, 'extra-menu', 'extra-menu', 0),
(4, 'new', 'new', 0),
(5, 'Wedding', 'weddingcat', 0),
(6, 'Production', 'productioncat', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(42, 2, 0),
(43, 2, 0),
(44, 2, 0),
(45, 2, 0),
(56, 2, 0),
(60, 1, 0),
(63, 1, 0),
(66, 1, 0),
(69, 1, 0),
(77, 4, 0),
(83, 2, 0),
(84, 2, 0),
(93, 6, 0),
(94, 6, 0),
(95, 5, 0),
(96, 6, 0),
(98, 6, 0),
(99, 5, 0),
(100, 5, 0),
(101, 5, 0),
(102, 6, 0),
(103, 5, 0),
(105, 6, 0),
(108, 5, 0),
(111, 5, 0),
(113, 5, 0),
(116, 5, 0),
(117, 5, 0),
(119, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 5),
(2, 2, 'nav_menu', '', 0, 7),
(3, 3, 'nav_menu', '', 0, 0),
(4, 4, 'video_category', '', 0, 1),
(5, 5, 'category', '', 0, 0),
(6, 6, 'category', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'vbilez'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'plugin_editor_notice,theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '115'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(19, 1, 'wp_user-settings', 'editor=tinymce&libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1516272798'),
(21, 1, 'nav_menu_recently_edited', '2'),
(22, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(24, 1, 'closedpostboxes_post', 'a:0:{}'),
(25, 1, 'metaboxhidden_post', 'a:6:{i:0;s:11:"postexcerpt";i:1;s:13:"trackbacksdiv";i:2;s:10:"postcustom";i:3;s:16:"commentstatusdiv";i:4;s:7:"slugdiv";i:5;s:9:"authordiv";}'),
(26, 1, 'closedpostboxes_page', 'a:0:{}'),
(27, 1, 'metaboxhidden_page', 'a:5:{i:0;s:10:"postcustom";i:1;s:16:"commentstatusdiv";i:2;s:11:"commentsdiv";i:3;s:7:"slugdiv";i:4;s:9:"authordiv";}'),
(28, 1, 'closedpostboxes_pvgm_gallery', 'a:0:{}'),
(29, 1, 'metaboxhidden_pvgm_gallery', 'a:1:{i:0;s:7:"slugdiv";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'vbilez', '$P$B1vhuCn6tNn0yo0kX.drcIrj82C.Fl.', 'vbilez', 'd.sqate@gmail.com', '', '2018-01-11 09:03:45', '', 0, 'vbilez');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_circle_image_carousel`
--
ALTER TABLE `wp_circle_image_carousel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_huge_itportfolio_images`
--
ALTER TABLE `wp_huge_itportfolio_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_huge_itportfolio_portfolios`
--
ALTER TABLE `wp_huge_itportfolio_portfolios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_huge_it_videogallery_galleries`
--
ALTER TABLE `wp_huge_it_videogallery_galleries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_huge_it_videogallery_videos`
--
ALTER TABLE `wp_huge_it_videogallery_videos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_responsive_video_grid`
--
ALTER TABLE `wp_responsive_video_grid`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_photo_slider_instal`
--
ALTER TABLE `wp_rich_web_photo_slider_instal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_photo_slider_manager`
--
ALTER TABLE `wp_rich_web_photo_slider_manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect1`
--
ALTER TABLE `wp_rich_web_slider_effect1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect1_loader`
--
ALTER TABLE `wp_rich_web_slider_effect1_loader`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect2`
--
ALTER TABLE `wp_rich_web_slider_effect2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect2_loader`
--
ALTER TABLE `wp_rich_web_slider_effect2_loader`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect3`
--
ALTER TABLE `wp_rich_web_slider_effect3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect3_loader`
--
ALTER TABLE `wp_rich_web_slider_effect3_loader`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect4`
--
ALTER TABLE `wp_rich_web_slider_effect4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect4_loader`
--
ALTER TABLE `wp_rich_web_slider_effect4_loader`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect5`
--
ALTER TABLE `wp_rich_web_slider_effect5`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect5_loader`
--
ALTER TABLE `wp_rich_web_slider_effect5_loader`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect6`
--
ALTER TABLE `wp_rich_web_slider_effect6`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect6_loader`
--
ALTER TABLE `wp_rich_web_slider_effect6_loader`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect7`
--
ALTER TABLE `wp_rich_web_slider_effect7`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect7_loader`
--
ALTER TABLE `wp_rich_web_slider_effect7_loader`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect8`
--
ALTER TABLE `wp_rich_web_slider_effect8`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect8_loader`
--
ALTER TABLE `wp_rich_web_slider_effect8_loader`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect9`
--
ALTER TABLE `wp_rich_web_slider_effect9`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect9_loader`
--
ALTER TABLE `wp_rich_web_slider_effect9_loader`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect10`
--
ALTER TABLE `wp_rich_web_slider_effect10`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect10_loader`
--
ALTER TABLE `wp_rich_web_slider_effect10_loader`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effects_data`
--
ALTER TABLE `wp_rich_web_slider_effects_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_font_family`
--
ALTER TABLE `wp_rich_web_slider_font_family`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_id`
--
ALTER TABLE `wp_rich_web_slider_id`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_circle_image_carousel`
--
ALTER TABLE `wp_circle_image_carousel`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_huge_itportfolio_images`
--
ALTER TABLE `wp_huge_itportfolio_images`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `wp_huge_itportfolio_portfolios`
--
ALTER TABLE `wp_huge_itportfolio_portfolios`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_huge_it_videogallery_galleries`
--
ALTER TABLE `wp_huge_it_videogallery_galleries`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_huge_it_videogallery_videos`
--
ALTER TABLE `wp_huge_it_videogallery_videos`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=793;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=336;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=120;
--
-- AUTO_INCREMENT for table `wp_responsive_video_grid`
--
ALTER TABLE `wp_responsive_video_grid`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_rich_web_photo_slider_instal`
--
ALTER TABLE `wp_rich_web_photo_slider_instal`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `wp_rich_web_photo_slider_manager`
--
ALTER TABLE `wp_rich_web_photo_slider_manager`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect1`
--
ALTER TABLE `wp_rich_web_slider_effect1`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect1_loader`
--
ALTER TABLE `wp_rich_web_slider_effect1_loader`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect2`
--
ALTER TABLE `wp_rich_web_slider_effect2`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect2_loader`
--
ALTER TABLE `wp_rich_web_slider_effect2_loader`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect3`
--
ALTER TABLE `wp_rich_web_slider_effect3`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect3_loader`
--
ALTER TABLE `wp_rich_web_slider_effect3_loader`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect4`
--
ALTER TABLE `wp_rich_web_slider_effect4`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect4_loader`
--
ALTER TABLE `wp_rich_web_slider_effect4_loader`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect5`
--
ALTER TABLE `wp_rich_web_slider_effect5`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect5_loader`
--
ALTER TABLE `wp_rich_web_slider_effect5_loader`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect6`
--
ALTER TABLE `wp_rich_web_slider_effect6`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect6_loader`
--
ALTER TABLE `wp_rich_web_slider_effect6_loader`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect7`
--
ALTER TABLE `wp_rich_web_slider_effect7`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect7_loader`
--
ALTER TABLE `wp_rich_web_slider_effect7_loader`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect8`
--
ALTER TABLE `wp_rich_web_slider_effect8`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect8_loader`
--
ALTER TABLE `wp_rich_web_slider_effect8_loader`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect9`
--
ALTER TABLE `wp_rich_web_slider_effect9`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect9_loader`
--
ALTER TABLE `wp_rich_web_slider_effect9_loader`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect10`
--
ALTER TABLE `wp_rich_web_slider_effect10`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect10_loader`
--
ALTER TABLE `wp_rich_web_slider_effect10_loader`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effects_data`
--
ALTER TABLE `wp_rich_web_slider_effects_data`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `wp_rich_web_slider_font_family`
--
ALTER TABLE `wp_rich_web_slider_font_family`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=126;
--
-- AUTO_INCREMENT for table `wp_rich_web_slider_id`
--
ALTER TABLE `wp_rich_web_slider_id`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
