-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 12, 2017 at 03:37 AM
-- Server version: 5.5.51-38.2
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `vincent_mgnt10`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminnotification_inbox`
--

CREATE TABLE IF NOT EXISTS `adminnotification_inbox` (
  `notification_id` int(10) unsigned NOT NULL COMMENT 'Notification id',
  `severity` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Problem type',
  `date_added` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Create date',
  `title` varchar(255) NOT NULL COMMENT 'Title',
  `description` text COMMENT 'Description',
  `url` varchar(255) DEFAULT NULL COMMENT 'Url',
  `is_read` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Flag if notification read',
  `is_remove` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Flag if notification might be removed'
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8 COMMENT='Adminnotification Inbox';

--
-- Dumping data for table `adminnotification_inbox`
--

INSERT INTO `adminnotification_inbox` (`notification_id`, `severity`, `date_added`, `title`, `description`, `url`, `is_read`, `is_remove`) VALUES
(1, 4, '2008-07-25 01:24:40', 'Magento 1.1 Production Version Now Available', 'We are thrilled to announce the availability of the production release of Magento 1.1. Read more about the release in the Magento Blog.', 'http://www.magentocommerce.com/blog/comments/magento-11-is-here-1/', 0, 0),
(2, 4, '2008-08-02 01:30:16', 'Updated iPhone Theme is now available', 'Updated iPhone theme for Magento 1.1 is now available on Magento Connect and for upgrade through your Magento Connect Manager.', 'http://www.magentocommerce.com/blog/comments/updated-iphone-theme-for-magento-11-is-now-available/', 0, 0),
(3, 3, '2008-08-02 01:40:27', 'Magento version 1.1.2 is now available', 'Magento version 1.1.2 is now available for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-version-112-is-now-available/', 0, 0),
(4, 3, '2008-08-13 17:51:46', 'Magento version 1.1.3 is now available', 'Magento version 1.1.3 is now available', 'http://www.magentocommerce.com/blog/comments/magento-version-113-is-now-available/', 0, 0),
(5, 1, '2008-09-02 21:10:31', 'Magento Version 1.1.4 Security Update Now Available', 'Magento 1.1.4 Security Update Now Available. If you are using Magento version 1.1.x, we highly recommend upgrading to this version as soon as possible.', 'http://www.magentocommerce.com/blog/comments/magento-version-114-security-update/', 0, 0),
(6, 3, '2008-09-15 22:09:54', 'Magento version 1.1.5 Now Available', 'Magento version 1.1.5 Now Available.\n\nThis release includes many bug fixes, a new category manager and a new skin for the default Magento theme.', 'http://www.magentocommerce.com/blog/comments/magento-version-115-now-available/', 0, 0),
(7, 3, '2008-09-17 20:18:35', 'Magento version 1.1.6 Now Available', 'Magento version 1.1.6 Now Available.\n\nThis version includes bug fixes for Magento 1.1.x that are listed in the release notes section.', 'http://www.magentocommerce.com/blog/comments/magento-version-116-now-available/', 0, 0),
(8, 4, '2008-11-08 01:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(9, 3, '2008-11-20 03:31:12', 'Magento version 1.1.7 Now Available', 'Magento version 1.1.7 Now Available.\n\nThis version includes over 350 issue resolutions for Magento 1.1.x that are listed in the release notes section, and new functionality that includes:\n\n-Google Website Optimizer integration\n-Google Base integration\n-Scheduled DB logs cleaning option', 'http://www.magentocommerce.com/blog/comments/magento-version-117-now-available/', 0, 0),
(10, 3, '2008-11-26 23:24:50', 'Magento Version 1.1.8 Now Available', 'Magento version 1.1.8 now available.\n\nThis version includes some issue resolutions for Magento 1.1.x that are listed in the release notes section.', 'http://www.magentocommerce.com/blog/comments/magento-version-118-now-available/', 0, 0),
(11, 3, '2008-12-30 09:45:59', 'Magento version 1.2.0 is now available for download and upgrade', 'We are extremely happy to announce the availability of Magento version 1.2.0 for download and upgrade.\n\nThis version includes numerous issue resolutions for Magento version 1.1.x and some highly requested new features such as:\n\n    * Support for Downloadable/Digital Products. \n    * Added Layered Navigation to site search result page.\n    * Improved site search to utilize MySQL fulltext search\n    * Added support for fixed-taxes on product level.\n    * Upgraded Zend Framework to the latest stable version 1.7.2', 'http://www.magentocommerce.com/blog/comments/magento-version-120-is-now-available/', 0, 0),
(12, 2, '2008-12-30 23:59:22', 'Magento version 1.2.0.1 now available', 'Magento version 1.2.0.1 now available.This version includes some issue resolutions for Magento 1.2.x that are listed in the release notes section.', 'http://www.magentocommerce.com/blog/comments/magento-version-1201-available/', 0, 0),
(13, 2, '2009-01-12 22:41:49', 'Magento version 1.2.0.2 now available', 'Magento version 1.2.0.2 is now available for download and upgrade. This version includes an issue resolutions for Magento version 1.2.0.x as listed in the release notes.', 'http://www.magentocommerce.com/blog/comments/magento-version-1202-now-available/', 0, 0),
(14, 3, '2009-01-24 02:25:56', 'Magento version 1.2.0.3 now available', 'Magento version 1.2.0.3 is now available for download and upgrade. This version includes issue resolutions for Magento version 1.2.0.x as listed in the release notes.', 'http://www.magentocommerce.com/blog/comments/magento-version-1203-now-available/', 0, 0),
(15, 3, '2009-02-02 23:57:00', 'Magento version 1.2.1 is now available for download and upgrade', 'We are happy to announce the availability of Magento version 1.2.1 for download and upgrade.\n\nThis version includes some issue resolutions for Magento version 1.2.x. A full list of items included in this release can be found on the release notes page.', 'http://www.magentocommerce.com/blog/comments/magento-version-121-now-available/', 0, 0),
(16, 3, '2009-02-24 02:45:47', 'Magento version 1.2.1.1 now available', 'Magento version 1.2.1.1 now available.This version includes some issue resolutions for Magento 1.2.x that are listed in the release notes section.', 'http://www.magentocommerce.com/blog/comments/magento-version-1211-now-available/', 0, 0),
(17, 3, '2009-02-27 03:39:24', 'CSRF Attack Prevention', 'We have just posted a blog entry about a hypothetical CSRF attack on a Magento admin panel. Please read the post to find out if your Magento installation is at risk at http://www.magentocommerce.com/blog/comments/csrf-vulnerabilities-in-web-application-and-how-to-avoid-them-in-magento/', 'http://www.magentocommerce.com/blog/comments/csrf-vulnerabilities-in-web-application-and-how-to-avoid-them-in-magento/', 0, 0),
(18, 2, '2009-03-04 01:03:58', 'Magento version 1.2.1.2 now available', 'Magento version 1.2.1.2 is now available for download and upgrade.\nThis version includes some updates to improve admin security as described in the release notes page.', 'http://www.magentocommerce.com/blog/comments/magento-version-1212-now-available/', 0, 0),
(19, 3, '2009-03-31 02:22:40', 'Magento version 1.3.0 now available', 'Magento version 1.3.0 is now available for download and upgrade. This version includes numerous issue resolutions for Magento version 1.2.x and new features as described on the release notes page.', 'http://www.magentocommerce.com/blog/comments/magento-version-130-is-now-available/', 0, 0),
(20, 3, '2009-04-18 04:06:02', 'Magento version 1.3.1 now available', 'Magento version 1.3.1 is now available for download and upgrade. This version includes some issue resolutions for Magento version 1.3.x and new features such as Checkout By Amazon and Amazon Flexible Payment. To see a full list of updates please check the release notes page.', 'http://www.magentocommerce.com/blog/comments/magento-version-131-now-available/', 0, 0),
(21, 3, '2009-05-19 22:31:21', 'Magento version 1.3.1.1 now available', 'Magento version 1.3.1.1 is now available for download and upgrade. This version includes some issue resolutions for Magento version 1.3.x and a security update for Magento installations that run on multiple domains or sub-domains. If you are running Magento with multiple domains or sub-domains we highly recommend upgrading to this version.', 'http://www.magentocommerce.com/blog/comments/magento-version-1311-now-available/', 0, 0),
(22, 3, '2009-05-29 22:54:06', 'Magento version 1.3.2 now available', 'This version includes some improvements and issue resolutions for version 1.3.x that are listed on the release notes page. also included is a Beta version of the Compile module.', 'http://www.magentocommerce.com/blog/comments/magento-version-132-now-available/', 0, 0),
(23, 3, '2009-06-01 19:32:52', 'Magento version 1.3.2.1 now available', 'Magento version 1.3.2.1 now available for download and upgrade.\n\nThis release solves an issue for users running Magento with PHP 5.2.0, and changes to index.php to support the new Compiler Module.', 'http://www.magentocommerce.com/blog/comments/magento-version-1321-now-available/', 0, 0),
(24, 3, '2009-07-02 01:21:44', 'Magento version 1.3.2.2 now available', 'Magento version 1.3.2.2 is now available for download and upgrade.\n\nThis release includes issue resolution for Magento version 1.3.x. To see a full list of changes please visit the release notes page http://www.magentocommerce.com/download/release_notes.', 'http://www.magentocommerce.com/blog/comments/magento-version-1322-now-available/', 0, 0),
(25, 3, '2009-07-23 06:48:54', 'Magento version 1.3.2.3 now available', 'Magento version 1.3.2.3 is now available for download and upgrade.\n\nThis release includes issue resolution for Magento version 1.3.x. We recommend to upgrade to this version if PayPal payment modules are in use. To see a full list of changes please visit the release notes page http://www.magentocommerce.com/download/release_notes.', 'http://www.magentocommerce.com/blog/comments/magento-version-1323-now-available/', 0, 0),
(26, 4, '2009-08-28 18:26:28', 'PayPal is updating Payflow Pro and Website Payments Pro (Payflow Edition) UK.', 'If you are using Payflow Pro and/or Website Payments Pro (Payflow Edition) UK.  payment methods, you will need to update the URLÃ¢â¬Ës in your Magento Administrator Panel in order to process transactions after September 1, 2009. Full details are available here: http://www.magentocommerce.com/wiki/paypal_payflow_changes', 'http://www.magentocommerce.com/wiki/paypal_payflow_changes', 0, 0),
(27, 2, '2009-09-23 20:16:49', 'Magento Version 1.3.2.4 Security Update', 'Magento Version 1.3.2.4 is now available. This version includes a security updates for Magento 1.3.x that solves possible XSS vulnerability issue on customer registration page and is available through SVN, Download Page and through the Magento Connect Manager.', 'http://www.magentocommerce.com/blog/comments/magento-version-1324-security-update/', 0, 0),
(28, 4, '2009-09-25 14:57:54', 'Magento Preview Version 1.4.0.0-alpha2 is now available', 'We are happy to announce the availability of Magento Preview Version 1.4.0.0-alpha2 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1400-alpha2-now-available/', 0, 0),
(29, 4, '2009-10-07 00:55:40', 'Magento Preview Version 1.4.0.0-alpha3 is now available', 'We are happy to announce the availability of Magento Preview Version 1.4.0.0-alpha3 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1400-alpha3-now-available/', 0, 0),
(30, 4, '2009-12-09 01:30:36', 'Magento Preview Version 1.4.0.0-beta1 is now available', 'We are happy to announce the availability of Magento Preview Version 1.4.0.0-beta1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1400-beta1-now-available/', 0, 0),
(31, 4, '2009-12-31 11:22:12', 'Magento Preview Version 1.4.0.0-rc1 is now available', 'We are happy to announce the availability of Magento Preview Version 1.4.0.0-rc1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1400-rc1-now-available/', 0, 0),
(32, 4, '2010-02-13 05:39:53', 'Magento CE Version 1.4.0.0 Stable is now available', 'We are excited to announce the availability of Magento CE Version 1.4.0.0 Stable for upgrade and download.', 'http://bit.ly/c53rpK', 0, 0),
(33, 3, '2010-02-20 04:39:36', 'Magento CE Version 1.4.0.1 Stable is now available', 'Magento CE 1.4.0.1 Stable is now available for upgrade and download.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1401-stable-now-available/', 0, 0),
(34, 4, '2010-04-23 20:09:03', 'Magento Version CE 1.3.3.0 Stable - Now Available With Support for 3-D Secure', 'Based on community requests, we are excited to announce the release of Magento CE 1.3.3.0-Stable with support for 3-D Secure. This release is intended for Magento merchants using version 1.3.x, who want to add support for 3-D Secure.', 'http://www.magentocommerce.com/blog/comments/magento-version-ce-1330-stable-now-available-with-support-for-3-d-secure/', 0, 0),
(35, 4, '2010-05-31 17:20:21', 'Announcing the Launch of Magento Mobile', 'The Magento team is pleased to announce the launch of Magento mobile, a new product that will allow Magento merchants to easily create branded, native mobile storefront applications that are deeply integrated with MagentoÃ¢â¬â¢s market-leading eCommerce platform. The product includes a new administrative manager, a native iPhone app that is fully customizable, and a service where Magento manages the submission and maintenance process for the iTunes App Store.\n\nLearn more by visiting the Magento mobile product page and sign-up to be the first to launch a native mobile commerce app, fully integrated with Magento.', 'http://www.magentocommerce.com/product/mobile', 0, 0),
(36, 4, '2010-06-10 20:08:08', 'Magento CE Version 1.4.1.0 Stable is now available', 'We are excited to announce the availability of Magento CE Version 1.4.1.0 Stable for upgrade and download. Some of the highlights of this release include: Enhanced PayPal integration (more info to follow), Change of Database structure of the Sales module to no longer use EAV, and much more.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1410-stable-now-available/', 0, 0),
(37, 4, '2010-07-26 21:37:34', 'Magento CE Version 1.4.1.1 Stable is now available', 'We are excited to announce the availability of Magento CE Version 1.4.1.1 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1411-stable-now-available/', 0, 0),
(38, 4, '2010-07-28 05:12:12', 'Magento CE Version 1.4.2.0-beta1 Preview Release Now Available', 'This release gives a preview of the new Magento Connect Manager.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1420-beta1-now-available/', 0, 0),
(39, 4, '2010-07-28 20:15:01', 'Magento CE Version 1.4.1.1 Patch Available', 'As some users experienced issues with upgrading to CE 1.4.1.1 through PEAR channels we provided a patch for it that is available on our blog http://www.magentocommerce.com/blog/comments/magento-ce-version-1411-stable-patch/', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1411-stable-patch/', 0, 0),
(40, 4, '2010-10-12 00:13:25', 'Magento Mobile is now live!', 'Magento Mobile is now live! Signup today to have your own native iPhone mobile-shopping app in iTunes for the holiday season! Learn more at http://www.magentomobile.com/', 'http://www.magentomobile.com/', 0, 0),
(41, 4, '2010-11-08 23:52:06', 'Magento CE Version 1.4.2.0-RC1 Preview Release Now Available', 'We are happy to announce the availability of Magento Preview Version 1.4.2.0-RC1 for download.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1420-rc1-now-available/', 0, 0),
(42, 4, '2010-12-02 22:33:00', 'Magento CE Version 1.4.2.0-RC2 Preview Release Now Available', 'We are happy to announce the availability of Magento Preview Version 1.4.2.0-RC2 for download.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1420-rc2-now-available/', 0, 0),
(43, 4, '2010-12-09 00:29:55', 'Magento CE Version 1.4.2.0 Stable is now available', 'We are excited to announce the availability of Magento CE Version 1.4.2.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1420-stable-now-available/', 0, 0),
(44, 4, '2010-12-18 01:23:55', 'Magento Preview Version CE 1.5.0.0-alpha1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-alpha1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-alpha1-now-available/', 0, 0),
(45, 4, '2010-12-30 01:51:08', 'Magento Preview Version CE 1.5.0.0-alpha2 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-alpha2 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-alpha2-now-available/', 0, 0),
(46, 4, '2011-01-14 02:35:36', 'Magento Preview Version CE 1.5.0.0-beta1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-beta1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-beta1-now-available/', 0, 0),
(47, 4, '2011-01-21 23:19:09', 'Magento Preview Version CE 1.5.0.0-beta2 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-beta2 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-beta2-now-available/', 0, 0),
(48, 4, '2011-01-27 23:27:57', 'Magento Preview Version CE 1.5.0.0-rc1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-rc1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-rc1-now-available/', 0, 0),
(49, 4, '2011-02-03 23:56:33', 'Magento Preview Version CE 1.5.0.0-rc2 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-rc2 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-rc2-now-available/', 0, 0),
(50, 4, '2011-02-08 21:43:23', 'Magento CE Version 1.5.0.0 Stable is now available', 'We are excited to announce the availability of Magento CE Version 1.5.0.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-community-professional-and-enterprise-editions-releases-now-availab/', 0, 0),
(51, 4, '2011-02-10 01:42:57', 'Magento CE 1.5.0.1 stable Now Available', 'We are excited to announce the availability of Magento CE Version 1.5.0.1 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-1501-stable-now-available/', 0, 0),
(52, 4, '2011-03-18 21:15:45', 'Magento CE 1.5.1.0-beta1 Now Available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.1.0-beta1 for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1510-beta1-now-available/', 0, 0),
(53, 4, '2011-03-31 18:43:02', 'Magento CE 1.5.1.0-rc1 Now Available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.1.0-rc1 for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1510-rc1-now-available/', 0, 0),
(54, 4, '2011-04-26 19:21:07', 'Magento CE 1.5.1.0-stable Now Available', 'We are excited to announce the availability of Magento CE Version 1.5.1.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1510-stable-now-available/', 0, 0),
(55, 4, '2011-05-26 19:33:23', 'Magento Preview Version CE 1.6.0.0-alpha1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.0.0-alpha1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1600-alpha1-now-available/', 0, 0),
(56, 4, '2011-06-15 18:12:08', 'Magento Preview Version CE 1.6.0.0-beta1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.0.0-beta1for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1600-beta1-now-available/', 0, 0),
(57, 4, '2011-06-30 19:03:58', 'Magento Preview Version CE 1.6.0.0-rc1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.0.0-rc1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1600-rc1-now-available/', 0, 0),
(58, 4, '2011-07-11 19:07:39', 'Magento Preview Version CE 1.6.0.0-rc2 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.0.0-rc2 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1600-rc2-now-available/', 0, 0),
(59, 4, '2011-08-19 17:58:31', 'Magento CE 1.6.0.0-stable Now Available', 'We are excited to announce the availability of Magento CE Version 1.6.0.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1600-stable-now-available/', 0, 0),
(60, 4, '2011-09-17 01:31:26', 'Magento Preview Version CE 1.6.1.0-beta1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.1.0-beta1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1610-beta1-now-available/', 0, 0),
(61, 4, '2011-09-29 15:44:10', 'Magento Preview Version CE 1.6.1.0-rc1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.1.0-rc1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1610-rc1-now-available/', 0, 0),
(62, 4, '2011-10-19 17:50:05', 'Magento CE 1.6.1.0-stable Now Available', 'We are excited to announce the availability of Magento CE Version 1.6.1.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1610-stable-now-available/', 0, 0),
(63, 4, '2011-12-30 19:39:35', 'Magento Preview Version CE 1.7.0.0-alpha1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.7.0.0-alpha1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1700-alpha1-now-available/', 0, 0),
(64, 4, '2012-01-11 19:24:20', 'Magento CE 1.6.2.0-stable Now Available', 'We are excited to announce the availability of Magento CE Version 1.6.2.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1620-stable-now-available/', 0, 0),
(65, 4, '2012-03-02 21:54:12', 'Magento Preview Version CE 1.7.0.0-beta1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.7.0.0-beta1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1700-beta1-now-available/', 0, 0),
(66, 4, '2012-04-23 10:02:40', 'Magento Community Preview Version CE 1.7.0.0-RC1 has been released!', 'Learn more about the exciting new features and updates in this release and how you can take it for a test drive. As this is a preview version, we need to stress that it''s likely unstable and that we DON''T recommend that you use it in any production environment just yet.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1700-rc1-now-available/', 0, 0),
(67, 4, '2012-05-11 05:46:54', 'Magento Community 1.7 and Magento Enterprise 1.12 now available!', 'Learn more about the exciting new features and updates in these releases.', 'http://www.magentocommerce.com/blog/comments/magento-enterprise-112-and-community-17-now-available/', 0, 0),
(68, 4, '2012-06-20 14:54:07', 'Magento Community Edition 1.7.0.1 now available! ', 'We have just released an updated version of Magento Community Edition, version 1.7.0.1. This update delivers new, minor functionality and fixes for some potential security vulnerabilities.', 'http://www.magentocommerce.com/blog/comments/magento-community-edition-1701-released/', 0, 0),
(69, 4, '2012-07-05 15:21:43', 'Important Security Update - Zend Platform Vulnerability', 'We have recently learned of a serious vulnerability in the Zend platform on which Magento is built. Learn more and access a patch that addresses this issue. ', 'http://www.magentocommerce.com/blog/comments/important-security-update-zend-platform-vulnerability/', 0, 0),
(70, 4, '2012-11-19 17:27:42', 'Wrap up more holiday sales with financing', 'Give your customers up to 6 months financing. You get paid right away with Bill Me Later, a PayPal service. Itâs a great way to extend financing in time for the holidays. Learn More.', 'http://www.magentocommerce.com/paypal/billmelater?utm_source=CEMessaging&utm_medium=copy&utm_content=sixmonths&utm_campaign=BML', 0, 0),
(71, 4, '2012-12-07 08:22:30', 'Increase Your Sales With PayPal', 'Magento merchants using PayPal Express Checkout can help increase their sales on average 18%. It is one simple thing you can do right now to help boost your sales. Learn more.', 'http://www.magentocommerce.com/add-paypal?utm_source=CEModule&utm_medium=copy&utm_content=18&utm_campaign=choosepaypal', 0, 0),
(72, 4, '2013-01-15 19:02:07', 'Imagine 2013 Registration is Now Open!', 'Join 1500 merchants, partners, developers and enthusiasts from 35+ countries around the world for Magentoâs premier global conference! Collaborate, learn, network and get inspired by the future of eCommerce. Tickets will sell out fast! April 8th â 10th in Las Vegas.', 'https://registration.imagineecommerce.com/', 0, 0),
(73, 4, '2013-02-12 14:53:42', 'Get More eCommerce Power with Magento Enterprise', 'Limited time offer: Get a free, customized evaluation of your Community Edition site from a Magento Solution Partner. This evaluation gives you a clear look at the numerous benefits you can achieve by upgrading to Enterprise Edition. ', 'http://www.magentocommerce.com/community-to-enterprise?utm_source=CEMM&utm_medium=copy&utm_campaign=CE2EE', 0, 0),
(74, 2, '2013-09-27 13:28:13', 'Magento Community Edition 1.8.0.0 - now available for download!', 'Get tax, security, performance, and many other improvements. \n\nLearn more at http://www.magentocommerce.com/blog/comments/magento-community-edition-one-eight-now-available/ ', 'http://www.magentocommerce.com/blog/comments/magento-community-edition-one-eight-now-available/', 0, 0),
(75, 4, '2013-12-11 12:35:06', 'Magento Community Edition 1.8.1.0 is here!', 'This new version offers significant tax calculation, product quality, and security enhancements. Be sure to carefully review the upgrade instructions before starting. More information is available at http://www.magentocommerce.com/blog/comments/magento-community-edition-1810-is-here/', 'http://www.magentocommerce.com/blog/comments/magento-community-edition-1810-is-here/', 0, 0),
(76, 4, '2013-12-12 20:24:39', 'Important Magento Community Edition Patch', 'A security patch is available for Magento Community Edition 1.4.0.0 through 1.7.0.2; the issue has been fixed in Magento Community Edition 1.8.0.0 and later. It resolves a vulnerability discovered through our quarterly penetration testing process and has not been reported by merchants. We encourage all merchants to apply the patch in their next regularly scheduled maintenance cycle. The patch is available at http://www.magentocommerce.com/download in the Magento Community Edition Patches section.', 'http://www.magentocommerce.com/download', 0, 0),
(77, 4, '2014-01-21 15:34:48', 'PHP 5.4 Patch Now Available', 'Magento is advancing its platform and making development more efficient by adding support for PHP 5.4. Patches are available for download at www.magentocommerce.com/download and you can learn more about this update in our blog post at http://www.magentocommerce.com/blog/comments/magento-now-supports-php-54 .', 'http://www.magentocommerce.com/blog/comments/magento-now-supports-php-54', 0, 0),
(78, 4, '2014-02-03 13:14:54', 'Imagine 2014 Registration is Open', 'Register today to join us May 12-14 at the Hard Rock Hotel in Las Vegas for Imagine 2014, Magento''s annual conference.\n\nEarly-bird registration pricing ends February 17 so donât delay!\n\nhttp://www.imagineecommerce.com?utm_source=magento&utm_medium=cerss&utm_campaign=registrationopen\n\n', 'http://www.imagineecommerce.com?utm_source=magento&utm_medium=cerss&utm_campaign=registrationopen', 0, 0),
(79, 4, '2014-02-20 14:51:46', 'Discover Card Validation Patch Available', 'A patch that resolves an issue with validating Discover credit cards is now available for download at http://www.magentocommerce.com/download. More information on the patch is available in the Magento Knowledge Base at http://www.magentocommerce.com/knowledge-base/entry/discover-card-validation', 'http://www.magentocommerce.com/knowledge-base/entry/discover-card-validation ', 0, 0),
(80, 4, '2008-11-08 01:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(81, 4, '2008-11-08 01:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(82, 4, '2008-11-08 10:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(83, 4, '2014-03-04 21:12:26', 'Learn How to Quickly Increase Sales on Your Site', 'Adding the PayPal Express Checkout button to your checkout page can help increase sales 18% on average. It’s fast and easy and you can do it right now to boost sales. Express Checkout is already seamlessly integrated into Community Edition.', 'http://magento.com/paypal/CE_Express_Checkout_NA?utm_source=messagemodule&utm_medium=message&utm_campaign=Ceexpresscheckout', 0, 0),
(84, 4, '2014-05-13 21:46:11', 'Magento Community Edition 1.9 is now available!', 'It accelerates your entry into the mobile commerce space by slashing the time and cost of getting a mobile device-friendly responsive site.  And a new Bill Me Later payment option helps boost your sales. Visit http://magento.com/blog/magento-news/magento-enables-responsive-sites-half-time to learn more.', 'http://magento.com/blog/magento-news/magento-enables-responsive-sites-half-time', 0, 0),
(85, 4, '2014-10-08 09:55:06', 'It’s still not too late: Boost your 2014 Holiday sales today.', 'See results in as little as one week with eBay Enterprise Display and 2 business days with eBay Enterprise Affiliate. DID YOU KNOW: Get access to over 128 million highly qualified shoppers on eBay.com with eBay Enterprise Display. And the average retail client using product retargeting sees a $10 to $1 ROI on retargeting spend during Q4. With the eBay Enterprise Affiliate Network, get access to over 200,000 active network publishers across 30+ verticals, and only pay when a customer makes a purchase (Affiliate Network is only available in the U.S. & Canada).  GET STARTED TODAY by visiting www.ebayenterprise.com/turbochargesales', 'http://www.ebayenterprise.com/turbochargesales', 0, 0),
(86, 4, '2014-11-13 01:03:26', 'Important: PayPal Users Must Discontinue Using SSL 3.0 By December 3, 2014', 'To address a vulnerability with the SSL 3.0 security protocol, PayPal and other payment gateways will be disabling SSL 3.0 support. Merchants must upgrade to Transport Layer Service (TLS) by December 3, 2014 to avoid PayPal payment operation failures. Learn more about what you need to do at https://devblog.paypal.com/poodle-ssl-3-0-vulnerability/', 'https://devblog.paypal.com/poodle-ssl-3-0-vulnerability/', 0, 0),
(87, 4, '2014-11-25 05:25:21', 'Magento Community Edition 1.9.1 is available!', 'Magento Community Edition 1.9.1 empowers merchants to deliver compelling shopping experiences by offering enhanced responsive design capabilities, new swatches to display product variations, and improved performance through support for MySQL 5.6 and PHP 5.5. It also includes support for Google Universal Analytics and over 70 product improvements. Find out more at http://magento.com/blog/magento-news/magento-community-edition-191-now-available-download', 'http://magento.com/blog/magento-news/magento-community-edition-191-now-available-download', 0, 0),
(88, 1, '2015-04-16 21:17:07', 'Critical Reminder: Download and install Magento security patches.  Download now.', 'Download and implement 2 important security patches (SUPEE-5344 and SUPEE-1533) from the Magento Community Edition download page (https://www.magentocommerce.com/products/downloads/magento/).  If you have not done so already, download and install 2 previously-released patches that prevent an attacker from remotely executing code on Magento software.  These issues affect all versions of Magento Community Edition.  A press release from Check Point Software Technologies in the coming days will make one of these issues widely known, possibly alerting hackers who may try to exploit it.  Ensure the patches are in place as a preventative measure before the issue is publicized.', 'https://www.magentocommerce.com/products/downloads/magento/ ', 0, 0),
(89, 1, '2015-04-20 03:37:00', 'Second Reminder: Download and install Magento critical security patches now.', 'If you have not done so already, download and install 2 previously-released security patches (SUPEE-5344 and SUPEE-1533) from the Magento Community Edition download page (https://www.magentocommerce.com/products/downloads/magento/).  These security issues affect all versions of Magento Community Edition and enable an attacker to remotely execute code on Magento software. A press release from Check Point Software Technologies tomorrow  will make one of these issues widely known, possibly alerting hackers who may try to exploit it.  Ensure the patches are in place as a preventative measure before the issue is publicized.', 'https://www.magentocommerce.com/products/downloads/magento/', 0, 0),
(90, 1, '2015-04-24 00:43:31', 'Urgent: Immediately install Magento critical security patches', 'It is critical for you to download and install 2 previously-released security patches (SUPEE-5344 and SUPEE-1533) from the Magento Community Edition download page (https://www.magentocommerce.com/products/downloads/magento/).  Please do this immediately, as Check Point Software Technologies has published a technical description of how they discovered the issue, which we feel might serve as a tutorial for implementing an attack against your website. ', 'https://www.magentocommerce.com/products/downloads/magento/', 0, 0),
(91, 1, '2015-05-15 05:34:01', 'Important: New Magento Security Patch - Install it Now', 'It is important for you to download and install a new security patch (SUPEE-5994) from the Magento Community Edition download page (https://www.magentocommerce.com/products/downloads/magento/).  Please apply this critical update immediately to help protect your site from exposure to multiple security vulnerabilities impacting all versions of the Magento Community Edition software. Please note that this patch should be installed in addition to the recent Shoplift patch (SUPEE-5344).', 'https://www.magentocommerce.com/products/downloads/magento/', 0, 0),
(92, 4, '2015-07-07 21:28:25', 'Now available:  Enhanced site quality and security with Community Edition 1.9.2', 'Magento Community Edition 1.9.2 is now available for download and features over 105 product improvements, nearly 170 automated functional tests to help internal development teams improve implementation quality and time to market, and several security enhancements. Read our blog announcement for more information (http://magento.com/blog/magento-news/magento-community-edition-192-now-available), or go to the Community Edition download page to get the software today (https://www.magentocommerce.com/products/downloads/magento/).', 'https://www.magentocommerce.com/products/downloads/magento/', 0, 0),
(93, 1, '2015-07-07 22:08:05', 'July 7, 2015: New Magento Security Patch (SUPEE-6285) – Install Immediately', 'Today we are providing a new security patch (SUPEE-6285) that addresses critical security vulnerabilities. The patch is available for Community Edition 1.4.1 to 1.9.1.1 and is part of the core code of our latest release, Community Edition 1.9.2, available for download today.  PLEASE NOTE:  You must first implement SUPEE-5994 to ensure SUPEE-6285 works properly. Download Community Edition 1.9.2 or the patch from the Community Edition download page: https://www.magentocommerce.com/products/downloads/magento/  ', 'https://www.magentocommerce.com/products/downloads/magento/', 0, 0),
(94, 1, '2015-08-04 22:28:26', 'August 4, 2015: New Magento Security Patch (SUPEE-6482) – Install Immediately', 'Today we are providing a new security patch (SUPEE-6482) that addresses 4 security issues; two issues related to APIs and two cross-site scripting risks. The patch is available for Community Edition 1.4 and later releases and is part of the core code of Community Edition 1.9.2.1, which is available for download today. Before implementing this new security patch, you must first implement all previous security patches. Download Community Edition 1.9.2.1 or the patch from the Community Edition download page at https://www.magentocommerce.com/products/downloads/magento/  ', 'https://www.magentocommerce.com/products/downloads/magento/  ', 0, 0),
(95, 2, '2015-08-06 01:12:55', 'August 5, 2015:  Security Patch (SUPEE-6482) Release Note CORRECTION', 'When we announced a new security patch (SUPEE-6482) for Community Edition yesterday we incorrectly said that it addresses 4 issues. It actually addresses 2 security issues: Autoloaded File Inclusion in Magento SOAP API and a SSRF Vulnerability in WSDL File. The patch and Community Edition 1.9.2.1 are complete, fully-tested, and ready to deploy. We strongly encourage you to deploy the patch or upgrade to the latest version of Community Edition if you haven’t done so already. You can find the patch at https://www.magentocommerce.com/products/downloads/magento/. ', 'https://www.magentocommerce.com/products/downloads/magento/', 0, 0),
(96, 4, '2015-10-01 22:32:53', 'Episode VI: Return of Imagine Commerce | 2016 Registration is Open!', 'The force is strong with this one. Join the Magento rebellion at Imagine Commerce 2016. Enlist Now at http://imagine.magento.com.', 'http://imagine.magento.com', 0, 0),
(97, 1, '2015-10-21 05:28:05', 'New Malware Issue. Make Sure You Have Implemented All Security Patches', 'We have received reports that some Magento sites are being targeted by Guruincsite malware (Neutrino exploit kit). We have NOT identified a new attack vector at this time. Nearly all the impacted sites checked so far were vulnerable to a previously identified and patched issue; sites not vulnerable to that issue show other unpatched issues. Visit the Magento Security Center at http://magento.com/security/news/important-security-update for more information on how to address this issue and make sure that you have implemented all recent security patches.\n', 'http://magento.com/security/news/important-security-update', 0, 0),
(98, 1, '2015-10-28 02:48:23', 'October 27, 2015: New Magento Security Patch (SUPEE-6788) – Install Immediately', 'Today, we are releasing a new patch (SUPEE-6788) and Community Edition 1.9.2.2 to address 10+ security issues, including remote code execution and information leak vulnerabilities. This patch is unrelated to the Guruincsite malware issue. Be sure to test the patch in a development environment first, as it can affect extensions and customizations. Download the patch from the Community Edition Download page and learn more at http://magento.com/security/patches/supee-6788  ', 'http://magento.com/security/patches/supee-6788  ', 0, 0),
(99, 1, '2015-11-18 06:25:00', 'New JavaScript Malware Issue. Make sure your site is secure.', 'Magento Commerce has received reports of a JavaScript malware exploit that forwards credit card information from checkout pages to an external site. No new attack vector has been identified. It appears most impacted sites have not implemented the February 2015 Shoplift patch, or the patch was implemented after the site was already compromised. Information on how to identify and remove the malicious code is available on the Magento Security Center at http://magento.com/security/news/new-javascript-malware-issue', 'http://magento.com/security/news/new-javascript-malware-issue ', 0, 0),
(100, 4, '2015-11-19 03:40:40', 'Magento 2.0 Is Available!', 'Magento 2.0, our next generation open source digital commerce platform is here!  Magento 2.0 offers enhanced performance and scalability, new features to deliver better shopping experiences and conversion rates, and business agility and productivity improvements.  Learn more http://magento.com/blog/magento-news/new-era-commerce-innovation.\n\n', 'http://magento.com/blog/magento-news/new-era-commerce-innovation', 0, 0),
(101, 4, '2016-01-14 04:51:52', 'Have questions? Magento has big answers at Imagine Commerce.', 'Big news, bigger experts, and an even bigger ecosystem. Will you be at Imagine Commerce? Join us. ', 'http://imagine.magento.com', 0, 0),
(102, 1, '2016-01-21 04:17:19', 'Important: New Security Patch (SUPEE-7405) and Release – 1/20/2016', 'Today, we are releasing a new patch (SUPEE-7405) and Community Edition 1.9.2.3 to improve the security of Magento sites. There are no confirmed attacks related to the security issues, but certain vulnerabilities can potentially be exploited to access customer information or take over administrator sessions. You can download the patch and release from the Community Edition Download Page and learn more at https://magento.com/security/patches/supee-7405. ', 'https://magento.com/security/patches/supee-7405', 0, 0),
(103, 1, '2016-02-24 14:06:43', 'Important: Updates to SUPEE-7405 Security Patch and Release – 2/23/2016', 'Updated versions of the recent SUPEE-7405 patch and Community Edition 1.9.2.3 release are now available. The updates add support for PHP 5.3 and address issues with upload file permissions, merging carts, and SOAP APIs experienced with the original release. They DO NOT address any new security issues, but all merchants should upgrade to the new versions to maintain compatibility with future releases. You can learn more about the updates at https://magento.com/security/patches/supee-7405', 'https://magento.com/security/patches/supee-7405', 0, 0),
(104, 1, '2016-03-31 05:25:07', 'Protect Your Business from Brute-Force Password Guessing Attacks', 'We just posted an article on the Magento Security Center that shares best practices for protecting stores from brute-force password guessing attacks. We’ve recently been made aware of a rise in these attacks, so we strongly recommend that you review the approaches outlined in this article with your developer and hosting provider immediately and implement the ones that are best suited to your unique situation. Learn more at https://magento.com/security/best-practices/protect-your-magento-installation-password-guessing ', 'https://magento.com/security/best-practices/protect-your-magento-installation-password-guessing ', 0, 0),
(105, 4, '2016-06-23 21:44:34', 'Increase your sales and productivity, while simplifying PCI compliance with exciting new Magento Community Edition 2.1 features.', 'Shoppers can now check out faster using credit cards stored with PayPal and a redesigned PayPal checkout. PCI compliance is easier thanks to Braintree Hosted Fields. Admin tools are redesigned to help you work more efficiently. Upgrade to Enterprise Edition for new Content Staging and Preview and Enhanced Site Search capabilities.', 'https://magento.com/blog/magento-news/magento-enterprise-edition-21-unleashes-power-marketers-and-merchandisers ', 0, 0),
(106, 1, '2016-10-13 01:30:13', 'Community Edition 1.9.3 and SUPEE-8788 Provide Critical Security & Functional Updates – 10/12/2016', 'Community Edition 1.9.3 and SUPEE-8788 resolve multiple security issues, including critical vulnerabilities with certain payment methods and Zend Framework libraries. Community Edition 1.9.3 also includes over 120 product quality enhancements and support for PHP 5.6. Learn more about the security issues at https://magento.com/security/patches/supee-8788 and functional updates at http://devdocs.magento.com/guides/m1x/ce19-ee114/ce1.9_release-notes.html#ce19-1930 ', 'https://magento.com/security/patches/supee-8788 ', 0, 0),
(107, 1, '2016-10-25 21:51:10', 'Dirty COW Linux OS Vulnerability – 10/25/2016', 'Dirty COW (CVE-2016-5195) is a serious vulnerability affecting most Linux Operating Systems that can be exploited to gain root access to the server. More information on how to immediately update your Linux OS is available in the Magento Security Center at https://magento.com/security/vulnerabilities/new-linux-operating-system-vulnerability. ', 'https://magento.com/security/vulnerabilities/new-linux-operating-system-vulnerability', 0, 0),
(108, 4, '2016-11-15 03:08:04', 'Community Edition 1.9.3.1 is Now Available – 11/14/2016', 'Community Edition 1.9.3.1 addresses issues encountered by some merchants in our October 12 product releases. All merchants should either upgrade to Community Edition 1.9.3.1 or apply our latest patch, SUPEE-8788, to close several serious security vulnerabilities. More information is available in the release notes at: http://devdocs.magento.com/guides/m1x/ce19-ee114/ce1.9_release-notes.html#ce19-1931 ', 'http://devdocs.magento.com/guides/m1x/ce19-ee114/ce1.9_release-notes.html#ce19-1931 ', 0, 0),
(109, 1, '2017-01-14 08:33:20', 'New Zend Framework Security Vulnerability – 1/13/2017', 'We’ve found a new vulnerability in a Zend Framework 1 and 2 email component used by all Magento 1 and Magento 2 software (as well as other PHP solutions). This vulnerability is serious and can lead to a remote code execution attack if your servers use Sendmail as a mail transport agent. Learn how to protect your sites at https://magento.com/security/news/new-zend-framework-1-security-vulnerability\n\n', 'https://magento.com/security/news/new-zend-framework-1-security-vulnerability', 0, 0),
(110, 4, '2017-01-19 22:58:24', 'New Magento DevBox Beta Speeds Magento 2 Setup – 1/19/2017', 'Magento DevBox Beta makes it faster and easier than ever to setup your Magento 2 development environment. Read our blog post to find out more at: https://magento.com/blog/technical/set-your-magento-2-development-environment-faster.', 'https://magento.com/blog/technical/set-your-magento-2-development-environment-faster', 0, 0),
(111, 4, '2008-11-08 10:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(112, 4, '2008-11-08 10:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(113, 4, '2008-11-08 10:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(114, 4, '2008-11-08 10:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(115, 4, '2008-11-08 10:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(116, 1, '2017-02-08 02:03:15', 'Community Edition 1.9.3.2 and SUPEE-9652 Resolve Zend Framework Security Issue – 2/7/2017', 'Community Edition 1.9.3.2 and the SUPEE-9652 patch resolve the recent Zend Framework 1 Security vulnerability. Review the Magento Security Center post for more information:  https://magento.com/security/patches/supee-9652', 'https://magento.com/security/patches/supee-9652', 0, 0);
INSERT INTO `adminnotification_inbox` (`notification_id`, `severity`, `date_added`, `title`, `description`, `url`, `is_read`, `is_remove`) VALUES
(117, 4, '2008-11-08 10:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `admin_assert`
--

CREATE TABLE IF NOT EXISTS `admin_assert` (
  `assert_id` int(10) unsigned NOT NULL COMMENT 'Assert ID',
  `assert_type` varchar(20) DEFAULT NULL COMMENT 'Assert Type',
  `assert_data` text COMMENT 'Assert Data'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin Assert Table';

-- --------------------------------------------------------

--
-- Table structure for table `admin_role`
--

CREATE TABLE IF NOT EXISTS `admin_role` (
  `role_id` int(10) unsigned NOT NULL COMMENT 'Role ID',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent Role ID',
  `tree_level` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Role Tree Level',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Role Sort Order',
  `role_type` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Role Type',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'User ID',
  `role_name` varchar(50) DEFAULT NULL COMMENT 'Role Name'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Admin Role Table';

--
-- Dumping data for table `admin_role`
--

INSERT INTO `admin_role` (`role_id`, `parent_id`, `tree_level`, `sort_order`, `role_type`, `user_id`, `role_name`) VALUES
(1, 0, 1, 1, 'G', 0, 'Administrators'),
(2, 1, 2, 0, 'U', 1, 'reethu');

-- --------------------------------------------------------

--
-- Table structure for table `admin_rule`
--

CREATE TABLE IF NOT EXISTS `admin_rule` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule ID',
  `role_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Role ID',
  `resource_id` varchar(255) DEFAULT NULL COMMENT 'Resource ID',
  `privileges` varchar(20) DEFAULT NULL COMMENT 'Privileges',
  `assert_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Assert ID',
  `role_type` varchar(1) DEFAULT NULL COMMENT 'Role Type',
  `permission` varchar(10) DEFAULT NULL COMMENT 'Permission'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Admin Rule Table';

--
-- Dumping data for table `admin_rule`
--

INSERT INTO `admin_rule` (`rule_id`, `role_id`, `resource_id`, `privileges`, `assert_id`, `role_type`, `permission`) VALUES
(1, 1, 'all', NULL, 0, 'G', 'allow');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user`
--

CREATE TABLE IF NOT EXISTS `admin_user` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'User ID',
  `firstname` varchar(32) DEFAULT NULL COMMENT 'User First Name',
  `lastname` varchar(32) DEFAULT NULL COMMENT 'User Last Name',
  `email` varchar(128) DEFAULT NULL COMMENT 'User Email',
  `username` varchar(40) DEFAULT NULL COMMENT 'User Login',
  `password` varchar(100) DEFAULT NULL COMMENT 'User Password',
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'User Created Time',
  `modified` timestamp NULL DEFAULT NULL COMMENT 'User Modified Time',
  `logdate` timestamp NULL DEFAULT NULL COMMENT 'User Last Login Time',
  `lognum` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'User Login Number',
  `reload_acl_flag` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Reload ACL',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'User Is Active',
  `extra` text COMMENT 'User Extra Data',
  `rp_token` text COMMENT 'Reset Password Link Token',
  `rp_token_created_at` timestamp NULL DEFAULT NULL COMMENT 'Reset Password Link Token Creation Date'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Admin User Table';

--
-- Dumping data for table `admin_user`
--

INSERT INTO `admin_user` (`user_id`, `firstname`, `lastname`, `email`, `username`, `password`, `created`, `modified`, `logdate`, `lognum`, `reload_acl_flag`, `is_active`, `extra`, `rp_token`, `rp_token_created_at`) VALUES
(1, 'reethu', 'das', 'reethudas@gmail.com', 'reethu', '9d8d0ecedbf60a864e9eabf00374d67c:Lz', '2017-02-04 11:02:12', '2017-02-04 11:02:12', '2017-02-12 15:04:09', 8, 0, 1, 'a:1:{s:11:"configState";a:9:{s:22:"customer_account_share";s:1:"0";s:25:"customer_online_customers";s:1:"0";s:23:"customer_create_account";s:1:"0";s:17:"customer_password";s:1:"0";s:16:"customer_address";s:1:"0";s:16:"customer_startup";s:1:"0";s:26:"customer_address_templates";s:1:"0";s:16:"customer_captcha";s:1:"1";s:16:"sendfriend_email";s:1:"1";}}', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `api2_acl_attribute`
--

CREATE TABLE IF NOT EXISTS `api2_acl_attribute` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `user_type` varchar(20) NOT NULL COMMENT 'Type of user',
  `resource_id` varchar(255) NOT NULL COMMENT 'Resource ID',
  `operation` varchar(20) NOT NULL COMMENT 'Operation',
  `allowed_attributes` text COMMENT 'Allowed attributes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api2 Filter ACL Attributes';

-- --------------------------------------------------------

--
-- Table structure for table `api2_acl_role`
--

CREATE TABLE IF NOT EXISTS `api2_acl_role` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `role_name` varchar(255) NOT NULL COMMENT 'Name of role'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Api2 Global ACL Roles';

--
-- Dumping data for table `api2_acl_role`
--

INSERT INTO `api2_acl_role` (`entity_id`, `created_at`, `updated_at`, `role_name`) VALUES
(1, '2017-02-04 11:02:12', NULL, 'Guest'),
(2, '2017-02-04 11:02:12', NULL, 'Customer');

-- --------------------------------------------------------

--
-- Table structure for table `api2_acl_rule`
--

CREATE TABLE IF NOT EXISTS `api2_acl_rule` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `role_id` int(10) unsigned NOT NULL COMMENT 'Role ID',
  `resource_id` varchar(255) NOT NULL COMMENT 'Resource ID',
  `privilege` varchar(20) DEFAULT NULL COMMENT 'ACL Privilege'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api2 Global ACL Rules';

-- --------------------------------------------------------

--
-- Table structure for table `api2_acl_user`
--

CREATE TABLE IF NOT EXISTS `api2_acl_user` (
  `admin_id` int(10) unsigned NOT NULL COMMENT 'Admin ID',
  `role_id` int(10) unsigned NOT NULL COMMENT 'Role ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api2 Global ACL Users';

-- --------------------------------------------------------

--
-- Table structure for table `api_assert`
--

CREATE TABLE IF NOT EXISTS `api_assert` (
  `assert_id` int(10) unsigned NOT NULL COMMENT 'Assert id',
  `assert_type` varchar(20) DEFAULT NULL COMMENT 'Assert type',
  `assert_data` text COMMENT 'Assert additional data'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api ACL Asserts';

-- --------------------------------------------------------

--
-- Table structure for table `api_role`
--

CREATE TABLE IF NOT EXISTS `api_role` (
  `role_id` int(10) unsigned NOT NULL COMMENT 'Role id',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent role id',
  `tree_level` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Role level in tree',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort order to display on admin area',
  `role_type` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Role type',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'User id',
  `role_name` varchar(50) DEFAULT NULL COMMENT 'Role name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api ACL Roles';

-- --------------------------------------------------------

--
-- Table structure for table `api_rule`
--

CREATE TABLE IF NOT EXISTS `api_rule` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Api rule Id',
  `role_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Api role Id',
  `resource_id` varchar(255) DEFAULT NULL COMMENT 'Module code',
  `api_privileges` varchar(20) DEFAULT NULL COMMENT 'Privileges',
  `assert_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Assert id',
  `role_type` varchar(1) DEFAULT NULL COMMENT 'Role type',
  `api_permission` varchar(10) DEFAULT NULL COMMENT 'Permission'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api ACL Rules';

-- --------------------------------------------------------

--
-- Table structure for table `api_session`
--

CREATE TABLE IF NOT EXISTS `api_session` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'User id',
  `logdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Login date',
  `sessid` varchar(40) DEFAULT NULL COMMENT 'Sessioin id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api Sessions';

-- --------------------------------------------------------

--
-- Table structure for table `api_user`
--

CREATE TABLE IF NOT EXISTS `api_user` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'User id',
  `firstname` varchar(32) DEFAULT NULL COMMENT 'First name',
  `lastname` varchar(32) DEFAULT NULL COMMENT 'Last name',
  `email` varchar(128) DEFAULT NULL COMMENT 'Email',
  `username` varchar(40) DEFAULT NULL COMMENT 'Nickname',
  `api_key` varchar(100) DEFAULT NULL COMMENT 'Api key',
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'User record create date',
  `modified` timestamp NULL DEFAULT NULL COMMENT 'User record modify date',
  `lognum` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Quantity of log ins',
  `reload_acl_flag` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Refresh ACL flag',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Account status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api Users';

-- --------------------------------------------------------

--
-- Table structure for table `captcha_log`
--

CREATE TABLE IF NOT EXISTS `captcha_log` (
  `type` varchar(32) NOT NULL COMMENT 'Type',
  `value` varchar(32) NOT NULL COMMENT 'Value',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Count',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Count Login Attempts';

-- --------------------------------------------------------

--
-- Table structure for table `cataloginventory_stock`
--

CREATE TABLE IF NOT EXISTS `cataloginventory_stock` (
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock Id',
  `stock_name` varchar(255) DEFAULT NULL COMMENT 'Stock Name'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock';

--
-- Dumping data for table `cataloginventory_stock`
--

INSERT INTO `cataloginventory_stock` (`stock_id`, `stock_name`) VALUES
(1, 'Default');

-- --------------------------------------------------------

--
-- Table structure for table `cataloginventory_stock_item`
--

CREATE TABLE IF NOT EXISTS `cataloginventory_stock_item` (
  `item_id` int(10) unsigned NOT NULL COMMENT 'Item Id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `stock_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `min_qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Min Qty',
  `use_config_min_qty` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Min Qty',
  `is_qty_decimal` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Qty Decimal',
  `backorders` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Backorders',
  `use_config_backorders` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Backorders',
  `min_sale_qty` decimal(12,4) NOT NULL DEFAULT '1.0000' COMMENT 'Min Sale Qty',
  `use_config_min_sale_qty` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Min Sale Qty',
  `max_sale_qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Max Sale Qty',
  `use_config_max_sale_qty` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Max Sale Qty',
  `is_in_stock` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is In Stock',
  `low_stock_date` timestamp NULL DEFAULT NULL COMMENT 'Low Stock Date',
  `notify_stock_qty` decimal(12,4) DEFAULT NULL COMMENT 'Notify Stock Qty',
  `use_config_notify_stock_qty` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Notify Stock Qty',
  `manage_stock` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Manage Stock',
  `use_config_manage_stock` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Manage Stock',
  `stock_status_changed_auto` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Stock Status Changed Automatically',
  `use_config_qty_increments` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Qty Increments',
  `qty_increments` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Increments',
  `use_config_enable_qty_inc` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Enable Qty Increments',
  `enable_qty_increments` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Enable Qty Increments',
  `is_decimal_divided` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Divided into Multiple Boxes for Shipping'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Item';

--
-- Dumping data for table `cataloginventory_stock_item`
--

INSERT INTO `cataloginventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `use_config_min_qty`, `is_qty_decimal`, `backorders`, `use_config_backorders`, `min_sale_qty`, `use_config_min_sale_qty`, `max_sale_qty`, `use_config_max_sale_qty`, `is_in_stock`, `low_stock_date`, `notify_stock_qty`, `use_config_notify_stock_qty`, `manage_stock`, `use_config_manage_stock`, `stock_status_changed_auto`, `use_config_qty_increments`, `qty_increments`, `use_config_enable_qty_inc`, `enable_qty_increments`, `is_decimal_divided`) VALUES
(1, 1, 1, '40.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '0.0000', 1, 1, NULL, NULL, 1, 0, 1, 0, 1, '0.0000', 1, 0, 0),
(2, 2, 1, '100.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '0.0000', 1, 1, NULL, NULL, 1, 0, 1, 0, 1, '0.0000', 1, 0, 0),
(3, 3, 1, '704.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '0.0000', 1, 1, NULL, NULL, 1, 0, 1, 0, 1, '0.0000', 1, 0, 0),
(4, 4, 1, '785.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '0.0000', 1, 1, NULL, NULL, 1, 0, 1, 0, 1, '0.0000', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cataloginventory_stock_status`
--

CREATE TABLE IF NOT EXISTS `cataloginventory_stock_status` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) unsigned NOT NULL COMMENT 'Stock Status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status';

--
-- Dumping data for table `cataloginventory_stock_status`
--

INSERT INTO `cataloginventory_stock_status` (`product_id`, `website_id`, `stock_id`, `qty`, `stock_status`) VALUES
(1, 1, 1, '40.0000', 1),
(2, 1, 1, '100.0000', 1),
(3, 1, 1, '704.0000', 1),
(4, 1, 1, '785.0000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cataloginventory_stock_status_idx`
--

CREATE TABLE IF NOT EXISTS `cataloginventory_stock_status_idx` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) unsigned NOT NULL COMMENT 'Stock Status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status Indexer Idx';

-- --------------------------------------------------------

--
-- Table structure for table `cataloginventory_stock_status_tmp`
--

CREATE TABLE IF NOT EXISTS `cataloginventory_stock_status_tmp` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) unsigned NOT NULL COMMENT 'Stock Status'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status Indexer Tmp';

-- --------------------------------------------------------

--
-- Table structure for table `catalogrule`
--

CREATE TABLE IF NOT EXISTS `catalogrule` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `from_date` date DEFAULT NULL COMMENT 'From Date',
  `to_date` date DEFAULT NULL COMMENT 'To Date',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `conditions_serialized` mediumtext COMMENT 'Conditions Serialized',
  `actions_serialized` mediumtext COMMENT 'Actions Serialized',
  `stop_rules_processing` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Stop Rules Processing',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `sub_is_enable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Rule Enable For Subitems',
  `sub_simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action For Subitems',
  `sub_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount For Subitems'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule';

-- --------------------------------------------------------

--
-- Table structure for table `catalogrule_affected_product`
--

CREATE TABLE IF NOT EXISTS `catalogrule_affected_product` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Affected Product';

-- --------------------------------------------------------

--
-- Table structure for table `catalogrule_customer_group`
--

CREATE TABLE IF NOT EXISTS `catalogrule_customer_group` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Rules To Customer Groups Relations';

-- --------------------------------------------------------

--
-- Table structure for table `catalogrule_group_website`
--

CREATE TABLE IF NOT EXISTS `catalogrule_group_website` (
  `rule_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Rule Id',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Group Website';

-- --------------------------------------------------------

--
-- Table structure for table `catalogrule_product`
--

CREATE TABLE IF NOT EXISTS `catalogrule_product` (
  `rule_product_id` int(10) unsigned NOT NULL COMMENT 'Rule Product Id',
  `rule_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Rule Id',
  `from_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'From Time',
  `to_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'To time',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group Id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `action_operator` varchar(10) DEFAULT 'to_fixed' COMMENT 'Action Operator',
  `action_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Action Amount',
  `action_stop` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Action Stop',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `sub_simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action For Subitems',
  `sub_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount For Subitems'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Product';

-- --------------------------------------------------------

--
-- Table structure for table `catalogrule_product_price`
--

CREATE TABLE IF NOT EXISTS `catalogrule_product_price` (
  `rule_product_price_id` int(10) unsigned NOT NULL COMMENT 'Rule Product PriceId',
  `rule_date` date NOT NULL COMMENT 'Rule Date',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group Id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `rule_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Rule Price',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `latest_start_date` date DEFAULT NULL COMMENT 'Latest StartDate',
  `earliest_end_date` date DEFAULT NULL COMMENT 'Earliest EndDate'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Product Price';

-- --------------------------------------------------------

--
-- Table structure for table `catalogrule_website`
--

CREATE TABLE IF NOT EXISTS `catalogrule_website` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Rules To Websites Relations';

-- --------------------------------------------------------

--
-- Table structure for table `catalogsearch_fulltext`
--

CREATE TABLE IF NOT EXISTS `catalogsearch_fulltext` (
  `fulltext_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `data_index` longtext COMMENT 'Data index'
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Catalog search result table';

--
-- Dumping data for table `catalogsearch_fulltext`
--

INSERT INTO `catalogsearch_fulltext` (`fulltext_id`, `product_id`, `store_id`, `data_index`) VALUES
(1, 1, 1, 'cake_sku|Taxable Goods|cake|choco,coca|choco,coca|50000|1'),
(5, 2, 1, 'toy_sku1|None|Happy land bus|Happy land bus|Happy land bus|100|1'),
(6, 3, 1, 'watch_sku|None|Tateossian cufflinks|watch|watch|1500|1'),
(4, 4, 1, 'maths_sku|None|Begenio - Race to Infinity|Begenio - Race to Infinity|Begenio - Race to Infinity|500|1');

-- --------------------------------------------------------

--
-- Table structure for table `catalogsearch_query`
--

CREATE TABLE IF NOT EXISTS `catalogsearch_query` (
  `query_id` int(10) unsigned NOT NULL COMMENT 'Query ID',
  `query_text` varchar(255) DEFAULT NULL COMMENT 'Query text',
  `num_results` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Num results',
  `popularity` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Popularity',
  `redirect` varchar(255) DEFAULT NULL COMMENT 'Redirect',
  `synonym_for` varchar(255) DEFAULT NULL COMMENT 'Synonym for',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `display_in_terms` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Display in terms',
  `is_active` smallint(6) DEFAULT '1' COMMENT 'Active status',
  `is_processed` smallint(6) DEFAULT '0' COMMENT 'Processed status',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated at'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog search query table';

-- --------------------------------------------------------

--
-- Table structure for table `catalogsearch_result`
--

CREATE TABLE IF NOT EXISTS `catalogsearch_result` (
  `query_id` int(10) unsigned NOT NULL COMMENT 'Query ID',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product ID',
  `relevance` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Relevance'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog search result table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_anc_categs_index_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_category_anc_categs_index_idx` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `path` varchar(255) DEFAULT NULL COMMENT 'Path'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Anchor Indexer Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_anc_categs_index_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_category_anc_categs_index_tmp` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `path` varchar(255) DEFAULT NULL COMMENT 'Path'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Category Anchor Indexer Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_anc_products_index_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_category_anc_products_index_idx` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(10) unsigned DEFAULT NULL COMMENT 'Position'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Anchor Product Indexer Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_anc_products_index_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_category_anc_products_index_tmp` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(10) unsigned DEFAULT NULL COMMENT 'Position'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Category Anchor Product Indexer Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_entity`
--

CREATE TABLE IF NOT EXISTS `catalog_category_entity` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attriute Set ID',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent Category ID',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Creation Time',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time',
  `path` varchar(255) NOT NULL COMMENT 'Tree Path',
  `position` int(11) NOT NULL COMMENT 'Position',
  `level` int(11) NOT NULL DEFAULT '0' COMMENT 'Tree Level',
  `children_count` int(11) NOT NULL COMMENT 'Child Count'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Catalog Category Table';

--
-- Dumping data for table `catalog_category_entity`
--

INSERT INTO `catalog_category_entity` (`entity_id`, `entity_type_id`, `attribute_set_id`, `parent_id`, `created_at`, `updated_at`, `path`, `position`, `level`, `children_count`) VALUES
(1, 3, 0, 0, '2017-02-04 11:02:12', '2017-02-04 11:02:12', '1', 0, 0, 1),
(2, 3, 3, 1, '2017-02-04 11:02:12', '2017-02-04 11:02:12', '1/2', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_entity_datetime`
--

CREATE TABLE IF NOT EXISTS `catalog_category_entity_datetime` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` datetime DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Datetime Attribute Backend Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_entity_decimal`
--

CREATE TABLE IF NOT EXISTS `catalog_category_entity_decimal` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` decimal(12,4) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Decimal Attribute Backend Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_entity_int`
--

CREATE TABLE IF NOT EXISTS `catalog_category_entity_int` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` int(11) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Catalog Category Integer Attribute Backend Table';

--
-- Dumping data for table `catalog_category_entity_int`
--

INSERT INTO `catalog_category_entity_int` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 3, 67, 0, 1, 1),
(2, 3, 67, 1, 1, 1),
(3, 3, 42, 0, 2, 1),
(4, 3, 67, 0, 2, 1),
(5, 3, 42, 1, 2, 1),
(6, 3, 67, 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_entity_text`
--

CREATE TABLE IF NOT EXISTS `catalog_category_entity_text` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` text COMMENT 'Value'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Catalog Category Text Attribute Backend Table';

--
-- Dumping data for table `catalog_category_entity_text`
--

INSERT INTO `catalog_category_entity_text` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 3, 65, 0, 1, NULL),
(2, 3, 65, 1, 1, NULL),
(3, 3, 65, 0, 2, NULL),
(4, 3, 65, 1, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_entity_varchar`
--

CREATE TABLE IF NOT EXISTS `catalog_category_entity_varchar` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='Catalog Category Varchar Attribute Backend Table';

--
-- Dumping data for table `catalog_category_entity_varchar`
--

INSERT INTO `catalog_category_entity_varchar` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 3, 41, 0, 1, 'Root Catalog'),
(2, 3, 41, 1, 1, 'Root Catalog'),
(3, 3, 43, 1, 1, 'root-catalog'),
(4, 3, 41, 0, 2, 'Default Category'),
(5, 3, 41, 1, 2, 'Default Category'),
(6, 3, 49, 1, 2, 'PRODUCTS'),
(7, 3, 43, 1, 2, 'default-category');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_product`
--

CREATE TABLE IF NOT EXISTS `catalog_category_product` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Category Linkage Table';

--
-- Dumping data for table `catalog_category_product`
--

INSERT INTO `catalog_category_product` (`category_id`, `product_id`, `position`) VALUES
(2, 1, 1),
(2, 2, 1),
(2, 3, 1),
(2, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_product_index`
--

CREATE TABLE IF NOT EXISTS `catalog_category_product_index` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) DEFAULT NULL COMMENT 'Position',
  `is_parent` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) unsigned NOT NULL COMMENT 'Visibility'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Index';

--
-- Dumping data for table `catalog_category_product_index`
--

INSERT INTO `catalog_category_product_index` (`category_id`, `product_id`, `position`, `is_parent`, `store_id`, `visibility`) VALUES
(2, 1, 1, 1, 1, 4),
(2, 2, 1, 1, 1, 4),
(2, 3, 1, 1, 1, 4),
(2, 4, 1, 1, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_product_index_enbl_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_category_product_index_enbl_idx` (
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `visibility` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Visibility'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Enabled Indexer Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_product_index_enbl_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_category_product_index_enbl_tmp` (
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `visibility` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Visibility'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Enabled Indexer Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_product_index_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_category_product_index_idx` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_parent` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) unsigned NOT NULL COMMENT 'Visibility'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Indexer Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_product_index_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_category_product_index_tmp` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_parent` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) unsigned NOT NULL COMMENT 'Visibility'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Indexer Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_compare_item`
--

CREATE TABLE IF NOT EXISTS `catalog_compare_item` (
  `catalog_compare_item_id` int(10) unsigned NOT NULL COMMENT 'Compare Item ID',
  `visitor_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Visitor ID',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Compare Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_eav_attribute`
--

CREATE TABLE IF NOT EXISTS `catalog_eav_attribute` (
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `frontend_input_renderer` varchar(255) DEFAULT NULL COMMENT 'Frontend Input Renderer',
  `is_global` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Global',
  `is_visible` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Visible',
  `is_searchable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Searchable',
  `is_filterable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Filterable',
  `is_comparable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Comparable',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `is_html_allowed_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is HTML Allowed On Front',
  `is_used_for_price_rules` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used For Price Rules',
  `is_filterable_in_search` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Filterable In Search',
  `used_in_product_listing` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used In Product Listing',
  `used_for_sort_by` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used For Sorting',
  `is_configurable` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Configurable',
  `apply_to` varchar(255) DEFAULT NULL COMMENT 'Apply To',
  `is_visible_in_advanced_search` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible In Advanced Search',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_wysiwyg_enabled` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is WYSIWYG Enabled',
  `is_used_for_promo_rules` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used For Promo Rules'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog EAV Attribute Table';

--
-- Dumping data for table `catalog_eav_attribute`
--

INSERT INTO `catalog_eav_attribute` (`attribute_id`, `frontend_input_renderer`, `is_global`, `is_visible`, `is_searchable`, `is_filterable`, `is_comparable`, `is_visible_on_front`, `is_html_allowed_on_front`, `is_used_for_price_rules`, `is_filterable_in_search`, `used_in_product_listing`, `used_for_sort_by`, `is_configurable`, `apply_to`, `is_visible_in_advanced_search`, `position`, `is_wysiwyg_enabled`, `is_used_for_promo_rules`) VALUES
(41, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(42, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(43, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(44, NULL, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, NULL, 0, 0, 1, 0),
(45, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(46, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(47, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(48, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(49, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(50, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(51, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(52, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(53, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(54, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(55, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(56, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(57, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(58, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(59, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(60, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(61, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(62, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(63, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(64, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(65, 'adminhtml/catalog_category_helper_sortby_available', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(66, 'adminhtml/catalog_category_helper_sortby_default', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(67, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(68, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(69, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(70, 'adminhtml/catalog_category_helper_pricestep', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(71, NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, NULL, 1, 0, 0, 0),
(72, NULL, 0, 1, 1, 0, 1, 0, 1, 0, 0, 0, 0, 1, NULL, 1, 0, 1, 0),
(73, NULL, 0, 1, 1, 0, 1, 0, 1, 0, 0, 1, 0, 1, NULL, 1, 0, 1, 0),
(74, NULL, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, NULL, 1, 0, 0, 0),
(75, NULL, 2, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 'simple,configurable,virtual,bundle,downloadable', 1, 0, 0, 0),
(76, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
(77, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
(78, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
(79, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'virtual,downloadable', 0, 0, 0, 0),
(80, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'simple,bundle', 0, 0, 0, 0),
(81, NULL, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 'simple', 1, 0, 0, 0),
(82, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(83, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(84, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(85, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(86, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
(87, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
(88, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(89, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(90, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
(91, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
(92, NULL, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 'simple', 1, 0, 0, 0),
(93, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
(94, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
(95, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(96, NULL, 2, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
(97, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
(98, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(99, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
(100, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'simple,virtual', 0, 0, 0, 0),
(101, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'simple,virtual', 0, 0, 0, 0),
(102, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(103, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(104, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(105, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(106, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(107, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(108, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(109, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(110, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
(111, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(112, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, NULL, 0, 0, 0, 0),
(113, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, NULL, 0, 0, 0, 0),
(114, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, NULL, 0, 0, 0, 0),
(115, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(116, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(117, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'simple,configurable,bundle,grouped', 0, 0, 0, 0),
(118, 'adminhtml/catalog_product_helper_form_msrp_enabled', 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,bundle,configurable,virtual,downloadable', 0, 0, 0, 0),
(119, 'adminhtml/catalog_product_helper_form_msrp_price', 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,bundle,configurable,virtual,downloadable', 0, 0, 0, 0),
(120, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,bundle,configurable,virtual,downloadable', 0, 0, 0, 0),
(121, NULL, 2, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,configurable,virtual,downloadable,bundle', 1, 0, 0, 0),
(122, 'giftmessage/adminhtml_product_helper_form_config', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0),
(123, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'bundle', 0, 0, 0, 0),
(124, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'bundle', 0, 0, 0, 0),
(125, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'bundle', 0, 0, 0, 0),
(126, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'bundle', 0, 0, 0, 0),
(127, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'bundle', 0, 0, 0, 0),
(128, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'downloadable', 0, 0, 0, 0),
(129, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'downloadable', 0, 0, 0, 0),
(130, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'downloadable', 0, 0, 0, 0),
(131, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'downloadable', 0, 0, 0, 0),
(132, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_bundle_option`
--

CREATE TABLE IF NOT EXISTS `catalog_product_bundle_option` (
  `option_id` int(10) unsigned NOT NULL COMMENT 'Option Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `required` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Required',
  `position` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Position',
  `type` varchar(255) DEFAULT NULL COMMENT 'Type'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Option';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_bundle_option_value`
--

CREATE TABLE IF NOT EXISTS `catalog_product_bundle_option_value` (
  `value_id` int(10) unsigned NOT NULL COMMENT 'Value Id',
  `option_id` int(10) unsigned NOT NULL COMMENT 'Option Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Option Value';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_bundle_price_index`
--

CREATE TABLE IF NOT EXISTS `catalog_product_bundle_price_index` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `min_price` decimal(12,4) NOT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) NOT NULL COMMENT 'Max Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Price Index';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_bundle_selection`
--

CREATE TABLE IF NOT EXISTS `catalog_product_bundle_selection` (
  `selection_id` int(10) unsigned NOT NULL COMMENT 'Selection Id',
  `option_id` int(10) unsigned NOT NULL COMMENT 'Option Id',
  `parent_product_id` int(10) unsigned NOT NULL COMMENT 'Parent Product Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `position` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_default` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Default',
  `selection_price_type` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Selection Price Type',
  `selection_price_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Selection Price Value',
  `selection_qty` decimal(12,4) DEFAULT NULL COMMENT 'Selection Qty',
  `selection_can_change_qty` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Selection Can Change Qty'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Selection';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_bundle_selection_price`
--

CREATE TABLE IF NOT EXISTS `catalog_product_bundle_selection_price` (
  `selection_id` int(10) unsigned NOT NULL COMMENT 'Selection Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `selection_price_type` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Selection Price Type',
  `selection_price_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Selection Price Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Selection Price';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_bundle_stock_index`
--

CREATE TABLE IF NOT EXISTS `catalog_product_bundle_stock_index` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `stock_status` smallint(6) DEFAULT '0' COMMENT 'Stock Status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Stock Index';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_enabled_index`
--

CREATE TABLE IF NOT EXISTS `catalog_product_enabled_index` (
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Visibility'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Visibility Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity`
--

CREATE TABLE IF NOT EXISTS `catalog_product_entity` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set ID',
  `type_id` varchar(32) NOT NULL DEFAULT 'simple' COMMENT 'Type ID',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `has_options` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Has Options',
  `required_options` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Required Options',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Creation Time',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Table';

--
-- Dumping data for table `catalog_product_entity`
--

INSERT INTO `catalog_product_entity` (`entity_id`, `entity_type_id`, `attribute_set_id`, `type_id`, `sku`, `has_options`, `required_options`, `created_at`, `updated_at`) VALUES
(1, 4, 4, 'simple', 'cake_sku', 0, 0, '2017-02-04 17:06:48', '2017-02-04 17:06:48'),
(2, 4, 4, 'simple', 'toy_sku1', 0, 0, '2017-02-05 10:45:33', '2017-02-05 17:09:10'),
(3, 4, 4, 'simple', 'watch_sku', 0, 0, '2017-02-05 17:32:46', '2017-02-05 17:09:34'),
(4, 4, 4, 'simple', 'maths_sku', 0, 0, '2017-02-05 17:05:31', '2017-02-05 17:05:31');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_datetime`
--

CREATE TABLE IF NOT EXISTS `catalog_product_entity_datetime` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` datetime DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Datetime Attribute Backend Table';

--
-- Dumping data for table `catalog_product_entity_datetime`
--

INSERT INTO `catalog_product_entity_datetime` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 4, 93, 0, 1, NULL),
(2, 4, 94, 0, 1, NULL),
(3, 4, 77, 0, 1, NULL),
(4, 4, 78, 0, 1, NULL),
(5, 4, 104, 0, 1, NULL),
(6, 4, 105, 0, 1, NULL),
(7, 4, 93, 0, 2, NULL),
(8, 4, 94, 0, 2, NULL),
(9, 4, 77, 0, 2, NULL),
(10, 4, 78, 0, 2, NULL),
(11, 4, 104, 0, 2, NULL),
(12, 4, 105, 0, 2, NULL),
(13, 4, 93, 0, 3, NULL),
(14, 4, 94, 0, 3, NULL),
(15, 4, 77, 0, 3, NULL),
(16, 4, 78, 0, 3, NULL),
(17, 4, 104, 0, 3, NULL),
(18, 4, 105, 0, 3, NULL),
(19, 4, 93, 0, 4, NULL),
(20, 4, 94, 0, 4, NULL),
(21, 4, 77, 0, 4, NULL),
(22, 4, 78, 0, 4, NULL),
(23, 4, 104, 0, 4, NULL),
(24, 4, 105, 0, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_decimal`
--

CREATE TABLE IF NOT EXISTS `catalog_product_entity_decimal` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` decimal(12,4) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Decimal Attribute Backend Table';

--
-- Dumping data for table `catalog_product_entity_decimal`
--

INSERT INTO `catalog_product_entity_decimal` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 4, 80, 0, 1, '500.0000'),
(2, 4, 75, 0, 1, '50000.0000'),
(3, 4, 76, 0, 1, NULL),
(4, 4, 120, 0, 1, NULL),
(5, 4, 80, 0, 2, '1.0000'),
(6, 4, 75, 0, 2, '100.0000'),
(7, 4, 76, 0, 2, NULL),
(8, 4, 120, 0, 2, NULL),
(9, 4, 80, 0, 3, '500.0000'),
(10, 4, 75, 0, 3, '1500.0000'),
(11, 4, 76, 0, 3, NULL),
(12, 4, 120, 0, 3, NULL),
(13, 4, 80, 0, 4, '600.0000'),
(14, 4, 75, 0, 4, '500.0000'),
(15, 4, 76, 0, 4, NULL),
(16, 4, 120, 0, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_gallery`
--

CREATE TABLE IF NOT EXISTS `catalog_product_entity_gallery` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Gallery Attribute Backend Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_group_price`
--

CREATE TABLE IF NOT EXISTS `catalog_product_entity_group_price` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `all_groups` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Applicable To All Customer Groups',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Group Price Attribute Backend Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_int`
--

CREATE TABLE IF NOT EXISTS `catalog_product_entity_int` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `entity_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` int(11) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Integer Attribute Backend Table';

--
-- Dumping data for table `catalog_product_entity_int`
--

INSERT INTO `catalog_product_entity_int` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 4, 96, 0, 1, 1),
(2, 4, 102, 0, 1, 4),
(3, 4, 121, 0, 1, 2),
(4, 4, 100, 0, 1, 0),
(5, 4, 96, 0, 2, 1),
(6, 4, 102, 0, 2, 4),
(7, 4, 121, 0, 2, 0),
(8, 4, 100, 0, 2, 0),
(9, 4, 96, 0, 3, 1),
(10, 4, 102, 0, 3, 4),
(11, 4, 121, 0, 3, 0),
(12, 4, 100, 0, 3, 0),
(13, 4, 96, 0, 4, 1),
(14, 4, 102, 0, 4, 4),
(15, 4, 121, 0, 4, 0),
(16, 4, 100, 0, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_media_gallery`
--

CREATE TABLE IF NOT EXISTS `catalog_product_entity_media_gallery` (
  `value_id` int(10) unsigned NOT NULL COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Media Gallery Attribute Backend Table';

--
-- Dumping data for table `catalog_product_entity_media_gallery`
--

INSERT INTO `catalog_product_entity_media_gallery` (`value_id`, `attribute_id`, `entity_id`, `value`) VALUES
(1, 88, 1, '/i/m/img_7634.jpg'),
(3, 88, 3, '/i/m/img_8020.jpg'),
(4, 88, 4, '/0/0/001.jpg'),
(5, 88, 2, '/0/0/001_1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_media_gallery_value`
--

CREATE TABLE IF NOT EXISTS `catalog_product_entity_media_gallery_value` (
  `value_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Value ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `label` varchar(255) DEFAULT NULL COMMENT 'Label',
  `position` int(10) unsigned DEFAULT NULL COMMENT 'Position',
  `disabled` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Disabled'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Media Gallery Attribute Value Table';

--
-- Dumping data for table `catalog_product_entity_media_gallery_value`
--

INSERT INTO `catalog_product_entity_media_gallery_value` (`value_id`, `store_id`, `label`, `position`, `disabled`) VALUES
(1, 0, NULL, 1, 0),
(3, 0, NULL, 1, 0),
(4, 0, NULL, 1, 0),
(5, 0, NULL, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_text`
--

CREATE TABLE IF NOT EXISTS `catalog_product_entity_text` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `entity_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` text COMMENT 'Value'
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Text Attribute Backend Table';

--
-- Dumping data for table `catalog_product_entity_text`
--

INSERT INTO `catalog_product_entity_text` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 4, 72, 0, 1, 'choco,coca'),
(2, 4, 73, 0, 1, 'choco,coca'),
(3, 4, 83, 0, 1, NULL),
(4, 4, 106, 0, 1, NULL),
(5, 4, 72, 0, 2, ' Happy land bus'),
(6, 4, 73, 0, 2, ' Happy land bus'),
(7, 4, 83, 0, 2, NULL),
(8, 4, 106, 0, 2, NULL),
(9, 4, 72, 0, 3, ' watch'),
(10, 4, 73, 0, 3, ' watch'),
(11, 4, 83, 0, 3, NULL),
(12, 4, 106, 0, 3, NULL),
(13, 4, 72, 0, 4, 'Begenio - Race to Infinity'),
(14, 4, 73, 0, 4, 'Begenio - Race to Infinity'),
(15, 4, 83, 0, 4, NULL),
(16, 4, 106, 0, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_tier_price`
--

CREATE TABLE IF NOT EXISTS `catalog_product_entity_tier_price` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `all_groups` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Applicable To All Customer Groups',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `qty` decimal(12,4) NOT NULL DEFAULT '1.0000' COMMENT 'QTY',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Tier Price Attribute Backend Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_varchar`
--

CREATE TABLE IF NOT EXISTS `catalog_product_entity_varchar` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `entity_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Varchar Attribute Backend Table';

--
-- Dumping data for table `catalog_product_entity_varchar`
--

INSERT INTO `catalog_product_entity_varchar` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 4, 71, 0, 1, 'cake'),
(2, 4, 97, 0, 1, 'cake'),
(3, 4, 117, 0, 1, NULL),
(4, 4, 118, 0, 1, '2'),
(5, 4, 119, 0, 1, '4'),
(6, 4, 82, 0, 1, NULL),
(7, 4, 84, 0, 1, NULL),
(8, 4, 85, 0, 1, '/i/m/img_7634.jpg'),
(9, 4, 86, 0, 1, '/i/m/img_7634.jpg'),
(10, 4, 87, 0, 1, '/i/m/img_7634.jpg'),
(11, 4, 103, 0, 1, NULL),
(12, 4, 107, 0, 1, NULL),
(13, 4, 109, 0, 1, 'container2'),
(14, 4, 122, 0, 1, NULL),
(15, 4, 112, 0, 1, NULL),
(16, 4, 113, 0, 1, NULL),
(17, 4, 114, 0, 1, NULL),
(18, 4, 98, 1, 1, 'cake.html'),
(19, 4, 98, 0, 1, 'cake.html'),
(20, 4, 71, 0, 2, ' Happy land bus'),
(21, 4, 97, 0, 2, 'test-product'),
(22, 4, 117, 0, 2, NULL),
(23, 4, 118, 0, 2, '2'),
(24, 4, 119, 0, 2, '4'),
(25, 4, 82, 0, 2, NULL),
(26, 4, 84, 0, 2, NULL),
(27, 4, 85, 0, 2, '/0/0/001_1.jpg'),
(28, 4, 86, 0, 2, '/0/0/001_1.jpg'),
(29, 4, 87, 0, 2, '/0/0/001_1.jpg'),
(30, 4, 103, 0, 2, NULL),
(31, 4, 107, 0, 2, NULL),
(32, 4, 109, 0, 2, 'container2'),
(33, 4, 122, 0, 2, NULL),
(34, 4, 112, 0, 2, NULL),
(35, 4, 113, 0, 2, NULL),
(36, 4, 114, 0, 2, NULL),
(37, 4, 98, 1, 2, 'test-product.html'),
(38, 4, 98, 0, 2, 'test-product.html'),
(39, 4, 71, 0, 3, 'Tateossian cufflinks'),
(40, 4, 97, 0, 3, 'tateossian'),
(41, 4, 117, 0, 3, NULL),
(42, 4, 118, 0, 3, '2'),
(43, 4, 119, 0, 3, '4'),
(44, 4, 82, 0, 3, NULL),
(45, 4, 84, 0, 3, NULL),
(46, 4, 85, 0, 3, '/i/m/img_8020.jpg'),
(47, 4, 86, 0, 3, '/i/m/img_8020.jpg'),
(48, 4, 87, 0, 3, '/i/m/img_8020.jpg'),
(49, 4, 103, 0, 3, NULL),
(50, 4, 107, 0, 3, NULL),
(51, 4, 109, 0, 3, 'container2'),
(52, 4, 122, 0, 3, NULL),
(53, 4, 112, 0, 3, NULL),
(54, 4, 113, 0, 3, NULL),
(55, 4, 114, 0, 3, NULL),
(56, 4, 98, 1, 3, 'tateossian.html'),
(57, 4, 98, 0, 3, 'tateossian.html'),
(58, 4, 71, 0, 4, 'Begenio - Race to Infinity'),
(59, 4, 97, 0, 4, 'begenio-race-to-infinity'),
(60, 4, 117, 0, 4, NULL),
(61, 4, 118, 0, 4, '2'),
(62, 4, 119, 0, 4, '4'),
(63, 4, 82, 0, 4, NULL),
(64, 4, 84, 0, 4, NULL),
(65, 4, 85, 0, 4, '/0/0/001.jpg'),
(66, 4, 86, 0, 4, '/0/0/001.jpg'),
(67, 4, 87, 0, 4, '/0/0/001.jpg'),
(68, 4, 103, 0, 4, NULL),
(69, 4, 107, 0, 4, NULL),
(70, 4, 109, 0, 4, 'container2'),
(71, 4, 122, 0, 4, NULL),
(72, 4, 112, 0, 4, NULL),
(73, 4, 113, 0, 4, NULL),
(74, 4, 114, 0, 4, NULL),
(75, 4, 98, 1, 4, 'begenio-race-to-infinity.html'),
(76, 4, 98, 0, 4, 'begenio-race-to-infinity.html');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_eav`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_eav` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` int(10) unsigned NOT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Index Table';

--
-- Dumping data for table `catalog_product_index_eav`
--

INSERT INTO `catalog_product_index_eav` (`entity_id`, `attribute_id`, `store_id`, `value`) VALUES
(1, 121, 1, 2),
(2, 121, 1, 0),
(3, 121, 1, 0),
(4, 121, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_eav_decimal`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_eav_decimal` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_eav_decimal_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_eav_decimal_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Indexer Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_eav_decimal_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_eav_decimal_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Indexer Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_eav_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_eav_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` int(10) unsigned NOT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Indexer Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_eav_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_eav_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` int(10) unsigned NOT NULL COMMENT 'Value'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Indexer Temp Table';

--
-- Dumping data for table `catalog_product_index_eav_tmp`
--

INSERT INTO `catalog_product_index_eav_tmp` (`entity_id`, `attribute_id`, `store_id`, `value`) VALUES
(3, 121, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_group_price`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_group_price` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Group Price Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(12,4) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Index Table';

--
-- Dumping data for table `catalog_product_index_price`
--

INSERT INTO `catalog_product_index_price` (`entity_id`, `customer_group_id`, `website_id`, `tax_class_id`, `price`, `final_price`, `min_price`, `max_price`, `tier_price`, `group_price`) VALUES
(1, 0, 1, 2, '50000.0000', '50000.0000', '50000.0000', '50000.0000', NULL, NULL),
(1, 1, 1, 2, '50000.0000', '50000.0000', '50000.0000', '50000.0000', NULL, NULL),
(1, 2, 1, 2, '50000.0000', '50000.0000', '50000.0000', '50000.0000', NULL, NULL),
(1, 3, 1, 2, '50000.0000', '50000.0000', '50000.0000', '50000.0000', NULL, NULL),
(2, 0, 1, 0, '100.0000', '100.0000', '100.0000', '100.0000', NULL, NULL),
(2, 1, 1, 0, '100.0000', '100.0000', '100.0000', '100.0000', NULL, NULL),
(2, 2, 1, 0, '100.0000', '100.0000', '100.0000', '100.0000', NULL, NULL),
(2, 3, 1, 0, '100.0000', '100.0000', '100.0000', '100.0000', NULL, NULL),
(3, 0, 1, 0, '1500.0000', '1500.0000', '1500.0000', '1500.0000', NULL, NULL),
(3, 1, 1, 0, '1500.0000', '1500.0000', '1500.0000', '1500.0000', NULL, NULL),
(3, 2, 1, 0, '1500.0000', '1500.0000', '1500.0000', '1500.0000', NULL, NULL),
(3, 3, 1, 0, '1500.0000', '1500.0000', '1500.0000', '1500.0000', NULL, NULL),
(4, 0, 1, 0, '500.0000', '500.0000', '500.0000', '500.0000', NULL, NULL),
(4, 1, 1, 0, '500.0000', '500.0000', '500.0000', '500.0000', NULL, NULL),
(4, 2, 1, 0, '500.0000', '500.0000', '500.0000', '500.0000', NULL, NULL),
(4, 3, 1, 0, '500.0000', '500.0000', '500.0000', '500.0000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_bundle_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_bundle_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class Id',
  `price_type` smallint(5) unsigned NOT NULL COMMENT 'Price Type',
  `special_price` decimal(12,4) DEFAULT NULL COMMENT 'Special Price',
  `tier_percent` decimal(12,4) DEFAULT NULL COMMENT 'Tier Percent',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Orig Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  `base_group_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Group Price',
  `group_price_percent` decimal(12,4) DEFAULT NULL COMMENT 'Group Price Percent'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Idx';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_bundle_opt_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_bundle_opt_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `alt_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `alt_tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  `alt_group_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Group Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Opt Idx';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_bundle_opt_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_bundle_opt_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `alt_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `alt_tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  `alt_group_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Group Price'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Opt Tmp';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_bundle_sel_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_bundle_sel_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `selection_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Selection Id',
  `group_type` smallint(5) unsigned DEFAULT '0' COMMENT 'Group Type',
  `is_required` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Required',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Sel Idx';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_bundle_sel_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_bundle_sel_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `selection_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Selection Id',
  `group_type` smallint(5) unsigned DEFAULT '0' COMMENT 'Group Type',
  `is_required` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Required',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Sel Tmp';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_bundle_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_bundle_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class Id',
  `price_type` smallint(5) unsigned NOT NULL COMMENT 'Price Type',
  `special_price` decimal(12,4) DEFAULT NULL COMMENT 'Special Price',
  `tier_percent` decimal(12,4) DEFAULT NULL COMMENT 'Tier Percent',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Orig Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  `base_group_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Group Price',
  `group_price_percent` decimal(12,4) DEFAULT NULL COMMENT 'Group Price Percent'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Tmp';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_cfg_opt_agr_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_cfg_opt_agr_idx` (
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) unsigned NOT NULL COMMENT 'Child ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Aggregate Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_cfg_opt_agr_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_cfg_opt_agr_tmp` (
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) unsigned NOT NULL COMMENT 'Child ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Aggregate Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_cfg_opt_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_cfg_opt_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_cfg_opt_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_cfg_opt_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_downlod_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_downlod_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Minimum price',
  `max_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Maximum price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Indexer Table for price of downloadable products';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_downlod_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_downlod_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Minimum price',
  `max_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Maximum price'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Temporary Indexer Table for price of downloadable products';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_final_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_final_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  `base_group_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Group Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Final Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_final_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_final_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  `base_group_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Group Price'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Final Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(12,4) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_opt_agr_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_opt_agr_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Aggregate Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_opt_agr_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_opt_agr_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Aggregate Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_opt_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_opt_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_opt_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_opt_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(12,4) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Temp Table';

--
-- Dumping data for table `catalog_product_index_price_tmp`
--

INSERT INTO `catalog_product_index_price_tmp` (`entity_id`, `customer_group_id`, `website_id`, `tax_class_id`, `price`, `final_price`, `min_price`, `max_price`, `tier_price`, `group_price`) VALUES
(3, 0, 1, 0, '1500.0000', '1500.0000', '1500.0000', '1500.0000', NULL, NULL),
(3, 1, 1, 0, '1500.0000', '1500.0000', '1500.0000', '1500.0000', NULL, NULL),
(3, 2, 1, 0, '1500.0000', '1500.0000', '1500.0000', '1500.0000', NULL, NULL),
(3, 3, 1, 0, '1500.0000', '1500.0000', '1500.0000', '1500.0000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_tier_price`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_tier_price` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Tier Price Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_website`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_website` (
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `website_date` date DEFAULT NULL COMMENT 'Website Date',
  `rate` float DEFAULT '1' COMMENT 'Rate'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Website Index Table';

--
-- Dumping data for table `catalog_product_index_website`
--

INSERT INTO `catalog_product_index_website` (`website_id`, `website_date`, `rate`) VALUES
(1, '2017-02-05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_link`
--

CREATE TABLE IF NOT EXISTS `catalog_product_link` (
  `link_id` int(10) unsigned NOT NULL COMMENT 'Link ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `linked_product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Linked Product ID',
  `link_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Link Type ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Product Linkage Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_link_attribute`
--

CREATE TABLE IF NOT EXISTS `catalog_product_link_attribute` (
  `product_link_attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Product Link Attribute ID',
  `link_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Link Type ID',
  `product_link_attribute_code` varchar(32) DEFAULT NULL COMMENT 'Product Link Attribute Code',
  `data_type` varchar(32) DEFAULT NULL COMMENT 'Data Type'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Attribute Table';

--
-- Dumping data for table `catalog_product_link_attribute`
--

INSERT INTO `catalog_product_link_attribute` (`product_link_attribute_id`, `link_type_id`, `product_link_attribute_code`, `data_type`) VALUES
(1, 1, 'position', 'int'),
(2, 3, 'position', 'int'),
(3, 3, 'qty', 'decimal'),
(4, 4, 'position', 'int'),
(5, 5, 'position', 'int');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_link_attribute_decimal`
--

CREATE TABLE IF NOT EXISTS `catalog_product_link_attribute_decimal` (
  `value_id` int(10) unsigned NOT NULL COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Product Link Attribute ID',
  `link_id` int(10) unsigned NOT NULL COMMENT 'Link ID',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Decimal Attribute Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_link_attribute_int`
--

CREATE TABLE IF NOT EXISTS `catalog_product_link_attribute_int` (
  `value_id` int(10) unsigned NOT NULL COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Product Link Attribute ID',
  `link_id` int(10) unsigned NOT NULL COMMENT 'Link ID',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Integer Attribute Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_link_attribute_varchar`
--

CREATE TABLE IF NOT EXISTS `catalog_product_link_attribute_varchar` (
  `value_id` int(10) unsigned NOT NULL COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Link Attribute ID',
  `link_id` int(10) unsigned NOT NULL COMMENT 'Link ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Varchar Attribute Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_link_type`
--

CREATE TABLE IF NOT EXISTS `catalog_product_link_type` (
  `link_type_id` smallint(5) unsigned NOT NULL COMMENT 'Link Type ID',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Type Table';

--
-- Dumping data for table `catalog_product_link_type`
--

INSERT INTO `catalog_product_link_type` (`link_type_id`, `code`) VALUES
(1, 'relation'),
(3, 'super'),
(4, 'up_sell'),
(5, 'cross_sell');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_option`
--

CREATE TABLE IF NOT EXISTS `catalog_product_option` (
  `option_id` int(10) unsigned NOT NULL COMMENT 'Option ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `type` varchar(50) DEFAULT NULL COMMENT 'Type',
  `is_require` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Required',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `max_characters` int(10) unsigned DEFAULT NULL COMMENT 'Max Characters',
  `file_extension` varchar(50) DEFAULT NULL COMMENT 'File Extension',
  `image_size_x` smallint(5) unsigned DEFAULT NULL COMMENT 'Image Size X',
  `image_size_y` smallint(5) unsigned DEFAULT NULL COMMENT 'Image Size Y',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_option_price`
--

CREATE TABLE IF NOT EXISTS `catalog_product_option_price` (
  `option_price_id` int(10) unsigned NOT NULL COMMENT 'Option Price ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `price_type` varchar(7) NOT NULL DEFAULT 'fixed' COMMENT 'Price Type'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Price Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_option_title`
--

CREATE TABLE IF NOT EXISTS `catalog_product_option_title` (
  `option_title_id` int(10) unsigned NOT NULL COMMENT 'Option Title ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Title Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_option_type_price`
--

CREATE TABLE IF NOT EXISTS `catalog_product_option_type_price` (
  `option_type_price_id` int(10) unsigned NOT NULL COMMENT 'Option Type Price ID',
  `option_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Type ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `price_type` varchar(7) NOT NULL DEFAULT 'fixed' COMMENT 'Price Type'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Price Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_option_type_title`
--

CREATE TABLE IF NOT EXISTS `catalog_product_option_type_title` (
  `option_type_title_id` int(10) unsigned NOT NULL COMMENT 'Option Type Title ID',
  `option_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Type ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Title Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_option_type_value`
--

CREATE TABLE IF NOT EXISTS `catalog_product_option_type_value` (
  `option_type_id` int(10) unsigned NOT NULL COMMENT 'Option Type ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Value Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_relation`
--

CREATE TABLE IF NOT EXISTS `catalog_product_relation` (
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) unsigned NOT NULL COMMENT 'Child ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Relation Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_super_attribute`
--

CREATE TABLE IF NOT EXISTS `catalog_product_super_attribute` (
  `product_super_attribute_id` int(10) unsigned NOT NULL COMMENT 'Product Super Attribute ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `position` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Position'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Attribute Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_super_attribute_label`
--

CREATE TABLE IF NOT EXISTS `catalog_product_super_attribute_label` (
  `value_id` int(10) unsigned NOT NULL COMMENT 'Value ID',
  `product_super_attribute_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Super Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `use_default` smallint(5) unsigned DEFAULT '0' COMMENT 'Use Default Value',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Attribute Label Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_super_attribute_pricing`
--

CREATE TABLE IF NOT EXISTS `catalog_product_super_attribute_pricing` (
  `value_id` int(10) unsigned NOT NULL COMMENT 'Value ID',
  `product_super_attribute_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Super Attribute ID',
  `value_index` varchar(255) DEFAULT NULL COMMENT 'Value Index',
  `is_percent` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Percent',
  `pricing_value` decimal(12,4) DEFAULT NULL COMMENT 'Pricing Value',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Attribute Pricing Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_super_link`
--

CREATE TABLE IF NOT EXISTS `catalog_product_super_link` (
  `link_id` int(10) unsigned NOT NULL COMMENT 'Link ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Link Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_website`
--

CREATE TABLE IF NOT EXISTS `catalog_product_website` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Website Linkage Table';

--
-- Dumping data for table `catalog_product_website`
--

INSERT INTO `catalog_product_website` (`product_id`, `website_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `checkout_agreement`
--

CREATE TABLE IF NOT EXISTS `checkout_agreement` (
  `agreement_id` int(10) unsigned NOT NULL COMMENT 'Agreement Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `content` text COMMENT 'Content',
  `content_height` varchar(25) DEFAULT NULL COMMENT 'Content Height',
  `checkbox_text` text COMMENT 'Checkbox Text',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `is_html` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Html'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Checkout Agreement';

-- --------------------------------------------------------

--
-- Table structure for table `checkout_agreement_store`
--

CREATE TABLE IF NOT EXISTS `checkout_agreement_store` (
  `agreement_id` int(10) unsigned NOT NULL COMMENT 'Agreement Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Checkout Agreement Store';

-- --------------------------------------------------------

--
-- Table structure for table `cms_block`
--

CREATE TABLE IF NOT EXISTS `cms_block` (
  `block_id` smallint(6) NOT NULL COMMENT 'Block ID',
  `title` varchar(255) NOT NULL COMMENT 'Block Title',
  `identifier` varchar(255) NOT NULL COMMENT 'Block String Identifier',
  `content` mediumtext COMMENT 'Block Content',
  `creation_time` timestamp NULL DEFAULT NULL COMMENT 'Block Creation Time',
  `update_time` timestamp NULL DEFAULT NULL COMMENT 'Block Modification Time',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Block Active'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='CMS Block Table';

--
-- Dumping data for table `cms_block`
--

INSERT INTO `cms_block` (`block_id`, `title`, `identifier`, `content`, `creation_time`, `update_time`, `is_active`) VALUES
(1, 'Footer Links', 'footer_links', '<ul>\r\n<li><a href="{{store direct_url="about-magento-demo-store"}}">About Us</a></li>\r\n<li><a href="{{store direct_url="customer-service"}}">Customer Service</a></li>\r\n<li class="last privacy"><a href="{{store direct_url="privacy-policy-cookie-restriction-mode"}}">Privacy Policy</a></li>\r\n</ul>', '2014-02-21 11:51:41', '2014-02-21 11:51:42', 1),
(2, 'Cookie restriction notice', 'cookie_restriction_notice_block', '<p>This website requires cookies to provide all of its features. For more information on what data is contained in the cookies, please see our <a href="{{store direct_url="privacy-policy-cookie-restriction-mode"}}">Privacy Policy page</a>. To accept cookies from this site, please click the Allow button below.</p>', '2014-02-21 11:51:42', '2014-02-21 11:51:42', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_block_store`
--

CREATE TABLE IF NOT EXISTS `cms_block_store` (
  `block_id` smallint(6) NOT NULL COMMENT 'Block ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Block To Store Linkage Table';

--
-- Dumping data for table `cms_block_store`
--

INSERT INTO `cms_block_store` (`block_id`, `store_id`) VALUES
(1, 0),
(2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_page`
--

CREATE TABLE IF NOT EXISTS `cms_page` (
  `page_id` smallint(6) NOT NULL COMMENT 'Page ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Page Title',
  `root_template` varchar(255) DEFAULT NULL COMMENT 'Page Template',
  `meta_keywords` text COMMENT 'Page Meta Keywords',
  `meta_description` text COMMENT 'Page Meta Description',
  `identifier` varchar(100) DEFAULT NULL COMMENT 'Page String Identifier',
  `content_heading` varchar(255) DEFAULT NULL COMMENT 'Page Content Heading',
  `content` mediumtext COMMENT 'Page Content',
  `creation_time` timestamp NULL DEFAULT NULL COMMENT 'Page Creation Time',
  `update_time` timestamp NULL DEFAULT NULL COMMENT 'Page Modification Time',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Page Active',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Page Sort Order',
  `layout_update_xml` text COMMENT 'Page Layout Update Content',
  `custom_theme` varchar(100) DEFAULT NULL COMMENT 'Page Custom Theme',
  `custom_root_template` varchar(255) DEFAULT NULL COMMENT 'Page Custom Template',
  `custom_layout_update_xml` text COMMENT 'Page Custom Layout Update Content',
  `custom_theme_from` date DEFAULT NULL COMMENT 'Page Custom Theme Active From Date',
  `custom_theme_to` date DEFAULT NULL COMMENT 'Page Custom Theme Active To Date'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='CMS Page Table';

--
-- Dumping data for table `cms_page`
--

INSERT INTO `cms_page` (`page_id`, `title`, `root_template`, `meta_keywords`, `meta_description`, `identifier`, `content_heading`, `content`, `creation_time`, `update_time`, `is_active`, `sort_order`, `layout_update_xml`, `custom_theme`, `custom_root_template`, `custom_layout_update_xml`, `custom_theme_from`, `custom_theme_to`) VALUES
(1, '404 Not Found 1', 'two_columns_right', 'Page keywords', 'Page description', 'no-route', NULL, '<div class="page-title"><h1>Whoops, our bad...</h1></div>\r\n<dl>\r\n<dt>The page you requested was not found, and we have a fine guess why.</dt>\r\n<dd>\r\n<ul class="disc">\r\n<li>If you typed the URL directly, please make sure the spelling is correct.</li>\r\n<li>If you clicked on a link to get here, the link is outdated.</li>\r\n</ul></dd>\r\n</dl>\r\n<dl>\r\n<dt>What can you do?</dt>\r\n<dd>Have no fear, help is near! There are many ways you can get back on track with Magento Store.</dd>\r\n<dd>\r\n<ul class="disc">\r\n<li><a href="#" onclick="history.go(-1); return false;">Go back</a> to the previous page.</li>\r\n<li>Use the search bar at the top of the page to search for your products.</li>\r\n<li>Follow these links to get you back on track!<br /><a href="{{store url=""}}">Store Home</a> <span class="separator">|</span> <a href="{{store url="customer/account"}}">My Account</a></li></ul></dd></dl>\r\n', '2014-02-21 11:51:41', '2014-02-21 11:51:41', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Home page', 'two_columns_right', NULL, NULL, 'home', NULL, '<div class="page-title">\r\n<h2>Home Page</h2>\r\n{{block type="catalog/product_list" column_count="0" category_id="0" template="catalog/product/list.phtml"}}\r\n</div>', '2014-02-21 11:51:41', '2017-02-04 17:10:22', 1, 0, '<!--<reference name="content">\r\n        <block type="catalog/product_new" name="home.catalog.product.new" alias="product_new" template="catalog/product/new.phtml" after="cms_page">\r\n            <action method="addPriceBlockType">\r\n                <type>bundle</type>\r\n                <block>bundle/catalog_product_price</block>\r\n                <template>bundle/catalog/product/price.phtml</template>\r\n            </action>\r\n        </block>\r\n        <block type="reports/product_viewed" name="home.reports.product.viewed" alias="product_viewed" template="reports/home_product_viewed.phtml" after="product_new">\r\n            <action method="addPriceBlockType">\r\n                <type>bundle</type>\r\n                <block>bundle/catalog_product_price</block>\r\n                <template>bundle/catalog/product/price.phtml</template>\r\n            </action>\r\n        </block>\r\n        <block type="reports/product_compared" name="home.reports.product.compared" template="reports/home_product_compared.phtml" after="product_viewed">\r\n            <action method="addPriceBlockType">\r\n                <type>bundle</type>\r\n                <block>bundle/catalog_product_price</block>\r\n                <template>bundle/catalog/product/price.phtml</template>\r\n            </action>\r\n        </block>\r\n    </reference>\r\n    <reference name="right">\r\n        <action method="unsetChild"><alias>right.reports.product.viewed</alias></action>\r\n        <action method="unsetChild"><alias>right.reports.product.compared</alias></action>\r\n    </reference>-->', NULL, NULL, NULL, NULL, NULL),
(3, 'About Us', 'two_columns_right', NULL, NULL, 'about-magento-demo-store', NULL, '<div class="page-title">\r\n<h1>About Magento Store</h1>\r\n</div>\r\n<div class="col3-set">\r\n<div class="col-1"><p><a href="http://www.varien.com/"><img src="{{skin url=''images/media/about_us_img.jpg''}}" title="Varien" alt="Varien" /></a></p><p style="line-height:1.2em;"><small>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.</small></p>\r\n<p style="color:#888; font:1.2em/1.4em georgia, serif;">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta.</p></div>\r\n<div class="col-2">\r\n<p><strong style="color:#de036f;">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.</strong></p>\r\n<p>Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo. </p>\r\n<p>Maecenas ullamcorper, odio vel tempus egestas, dui orci faucibus orci, sit amet aliquet lectus dolor et quam. Pellentesque consequat luctus purus. Nunc et risus. Etiam a nibh. Phasellus dignissim metus eget nisi. Vestibulum sapien dolor, aliquet nec, porta ac, malesuada a, libero. Praesent feugiat purus eget est. Nulla facilisi. Vestibulum tincidunt sapien eu velit. Mauris purus. Maecenas eget mauris eu orci accumsan feugiat. Pellentesque eget velit. Nunc tincidunt.</p></div>\r\n<div class="col-3">\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper </p>\r\n<p><strong style="color:#de036f;">Maecenas ullamcorper, odio vel tempus egestas, dui orci faucibus orci, sit amet aliquet lectus dolor et quam. Pellentesque consequat luctus purus.</strong></p>\r\n<p>Nunc et risus. Etiam a nibh. Phasellus dignissim metus eget nisi.</p>\r\n<div class="divider"></div>\r\n<p>To all of you, from all of us at Magento Store - Thank you and Happy eCommerce!</p>\r\n<p style="line-height:1.2em;"><strong style="font:italic 2em Georgia, serif;">John Doe</strong><br /><small>Some important guy</small></p></div>\r\n</div>', '2014-02-21 11:51:41', '2014-02-21 11:51:41', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Customer Service', 'three_columns', NULL, NULL, 'customer-service', NULL, '<div class="page-title">\r\n<h1>Customer Service</h1>\r\n</div>\r\n<ul class="disc">\r\n<li><a href="#answer1">Shipping &amp; Delivery</a></li>\r\n<li><a href="#answer2">Privacy &amp; Security</a></li>\r\n<li><a href="#answer3">Returns &amp; Replacements</a></li>\r\n<li><a href="#answer4">Ordering</a></li>\r\n<li><a href="#answer5">Payment, Pricing &amp; Promotions</a></li>\r\n<li><a href="#answer6">Viewing Orders</a></li>\r\n<li><a href="#answer7">Updating Account Information</a></li>\r\n</ul>\r\n<dl>\r\n<dt id="answer1">Shipping &amp; Delivery</dt>\r\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd>\r\n<dt id="answer2">Privacy &amp; Security</dt>\r\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd>\r\n<dt id="answer3">Returns &amp; Replacements</dt>\r\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd>\r\n<dt id="answer4">Ordering</dt>\r\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd>\r\n<dt id="answer5">Payment, Pricing &amp; Promotions</dt>\r\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd>\r\n<dt id="answer6">Viewing Orders</dt>\r\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd>\r\n<dt id="answer7">Updating Account Information</dt>\r\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd>\r\n</dl>', '2014-02-21 11:51:41', '2014-02-21 11:51:41', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Enable Cookies', 'one_column', NULL, NULL, 'enable-cookies', NULL, '<div class="std">\r\n    <ul class="messages">\r\n        <li class="notice-msg">\r\n            <ul>\r\n                <li>Please enable cookies in your web browser to continue.</li>\r\n            </ul>\r\n        </li>\r\n    </ul>\r\n    <div class="page-title">\r\n        <h1><a name="top"></a>What are Cookies?</h1>\r\n    </div>\r\n    <p>Cookies are short pieces of data that are sent to your computer when you visit a website. On later visits, this data is then returned to that website. Cookies allow us to recognize you automatically whenever you visit our site so that we can personalize your experience and provide you with better service. We also use cookies (and similar browser data, such as Flash cookies) for fraud prevention and other purposes. If your web browser is set to refuse cookies from our website, you will not be able to complete a purchase or take advantage of certain features of our website, such as storing items in your Shopping Cart or receiving personalized recommendations. As a result, we strongly encourage you to configure your web browser to accept cookies from our website.</p>\r\n    <h2 class="subtitle">Enabling Cookies</h2>\r\n    <ul class="disc">\r\n        <li><a href="#ie7">Internet Explorer 7.x</a></li>\r\n        <li><a href="#ie6">Internet Explorer 6.x</a></li>\r\n        <li><a href="#firefox">Mozilla/Firefox</a></li>\r\n        <li><a href="#opera">Opera 7.x</a></li>\r\n    </ul>\r\n    <h3><a name="ie7"></a>Internet Explorer 7.x</h3>\r\n    <ol>\r\n        <li>\r\n            <p>Start Internet Explorer</p>\r\n        </li>\r\n        <li>\r\n            <p>Under the <strong>Tools</strong> menu, click <strong>Internet Options</strong></p>\r\n            <p><img src="{{skin url="images/cookies/ie7-1.gif"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Click the <strong>Privacy</strong> tab</p>\r\n            <p><img src="{{skin url="images/cookies/ie7-2.gif"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Click the <strong>Advanced</strong> button</p>\r\n            <p><img src="{{skin url="images/cookies/ie7-3.gif"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Put a check mark in the box for <strong>Override Automatic Cookie Handling</strong>, put another check mark in the <strong>Always accept session cookies </strong>box</p>\r\n            <p><img src="{{skin url="images/cookies/ie7-4.gif"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Click <strong>OK</strong></p>\r\n            <p><img src="{{skin url="images/cookies/ie7-5.gif"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Click <strong>OK</strong></p>\r\n            <p><img src="{{skin url="images/cookies/ie7-6.gif"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Restart Internet Explore</p>\r\n        </li>\r\n    </ol>\r\n    <p class="a-top"><a href="#top">Back to Top</a></p>\r\n    <h3><a name="ie6"></a>Internet Explorer 6.x</h3>\r\n    <ol>\r\n        <li>\r\n            <p>Select <strong>Internet Options</strong> from the Tools menu</p>\r\n            <p><img src="{{skin url="images/cookies/ie6-1.gif"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Click on the <strong>Privacy</strong> tab</p>\r\n        </li>\r\n        <li>\r\n            <p>Click the <strong>Default</strong> button (or manually slide the bar down to <strong>Medium</strong>) under <strong>Settings</strong>. Click <strong>OK</strong></p>\r\n            <p><img src="{{skin url="images/cookies/ie6-2.gif"}}" alt="" /></p>\r\n        </li>\r\n    </ol>\r\n    <p class="a-top"><a href="#top">Back to Top</a></p>\r\n    <h3><a name="firefox"></a>Mozilla/Firefox</h3>\r\n    <ol>\r\n        <li>\r\n            <p>Click on the <strong>Tools</strong>-menu in Mozilla</p>\r\n        </li>\r\n        <li>\r\n            <p>Click on the <strong>Options...</strong> item in the menu - a new window open</p>\r\n        </li>\r\n        <li>\r\n            <p>Click on the <strong>Privacy</strong> selection in the left part of the window. (See image below)</p>\r\n            <p><img src="{{skin url="images/cookies/firefox.png"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Expand the <strong>Cookies</strong> section</p>\r\n        </li>\r\n        <li>\r\n            <p>Check the <strong>Enable cookies</strong> and <strong>Accept cookies normally</strong> checkboxes</p>\r\n        </li>\r\n        <li>\r\n            <p>Save changes by clicking <strong>Ok</strong>.</p>\r\n        </li>\r\n    </ol>\r\n    <p class="a-top"><a href="#top">Back to Top</a></p>\r\n    <h3><a name="opera"></a>Opera 7.x</h3>\r\n    <ol>\r\n        <li>\r\n            <p>Click on the <strong>Tools</strong> menu in Opera</p>\r\n        </li>\r\n        <li>\r\n            <p>Click on the <strong>Preferences...</strong> item in the menu - a new window open</p>\r\n        </li>\r\n        <li>\r\n            <p>Click on the <strong>Privacy</strong> selection near the bottom left of the window. (See image below)</p>\r\n            <p><img src="{{skin url="images/cookies/opera.png"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>The <strong>Enable cookies</strong> checkbox must be checked, and <strong>Accept all cookies</strong> should be selected in the &quot;<strong>Normal cookies</strong>&quot; drop-down</p>\r\n        </li>\r\n        <li>\r\n            <p>Save changes by clicking <strong>Ok</strong></p>\r\n        </li>\r\n    </ol>\r\n    <p class="a-top"><a href="#top">Back to Top</a></p>\r\n</div>\r\n', '2014-02-21 11:51:41', '2014-02-21 11:51:41', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Privacy Policy', 'one_column', NULL, NULL, 'privacy-policy-cookie-restriction-mode', 'Privacy Policy', '<p style="color: #ff0000; font-weight: bold; font-size: 13px">\n    Please replace this text with you Privacy Policy.\n    Please add any additional cookies your website uses below (e.g., Google Analytics)\n</p>\n<p>\n    This privacy policy sets out how {{config path="general/store_information/name"}} uses and protects any information\n    that you give {{config path="general/store_information/name"}} when you use this website.\n    {{config path="general/store_information/name"}} is committed to ensuring that your privacy is protected.\n    Should we ask you to provide certain information by which you can be identified when using this website,\n    then you can be assured that it will only be used in accordance with this privacy statement.\n    {{config path="general/store_information/name"}} may change this policy from time to time by updating this page.\n    You should check this page from time to time to ensure that you are happy with any changes.\n</p>\n<h2>What we collect</h2>\n<p>We may collect the following information:</p>\n<ul>\n    <li>name</li>\n    <li>contact information including email address</li>\n    <li>demographic information such as postcode, preferences and interests</li>\n    <li>other information relevant to customer surveys and/or offers</li>\n</ul>\n<p>\n    For the exhaustive list of cookies we collect see the <a href="#list">List of cookies we collect</a> section.\n</p>\n<h2>What we do with the information we gather</h2>\n<p>\n    We require this information to understand your needs and provide you with a better service,\n    and in particular for the following reasons:\n</p>\n<ul>\n    <li>Internal record keeping.</li>\n    <li>We may use the information to improve our products and services.</li>\n    <li>\n        We may periodically send promotional emails about new products, special offers or other information which we\n        think you may find interesting using the email address which you have provided.\n    </li>\n    <li>\n        From time to time, we may also use your information to contact you for market research purposes.\n        We may contact you by email, phone, fax or mail. We may use the information to customise the website\n        according to your interests.\n    </li>\n</ul>\n<h2>Security</h2>\n<p>\n    We are committed to ensuring that your information is secure. In order to prevent unauthorised access or disclosure,\n    we have put in place suitable physical, electronic and managerial procedures to safeguard and secure\n    the information we collect online.\n</p>\n<h2>How we use cookies</h2>\n<p>\n    A cookie is a small file which asks permission to be placed on your computer''s hard drive.\n    Once you agree, the file is added and the cookie helps analyse web traffic or lets you know when you visit\n    a particular site. Cookies allow web applications to respond to you as an individual. The web application\n    can tailor its operations to your needs, likes and dislikes by gathering and remembering information about\n    your preferences.\n</p>\n<p>\n    We use traffic log cookies to identify which pages are being used. This helps us analyse data about web page traffic\n    and improve our website in order to tailor it to customer needs. We only use this information for statistical\n    analysis purposes and then the data is removed from the system.\n</p>\n<p>\n    Overall, cookies help us provide you with a better website, by enabling us to monitor which pages you find useful\n    and which you do not. A cookie in no way gives us access to your computer or any information about you,\n    other than the data you choose to share with us. You can choose to accept or decline cookies.\n    Most web browsers automatically accept cookies, but you can usually modify your browser setting\n    to decline cookies if you prefer. This may prevent you from taking full advantage of the website.\n</p>\n<h2>Links to other websites</h2>\n<p>\n    Our website may contain links to other websites of interest. However, once you have used these links\n    to leave our site, you should note that we do not have any control over that other website.\n    Therefore, we cannot be responsible for the protection and privacy of any information which you provide whilst\n    visiting such sites and such sites are not governed by this privacy statement.\n    You should exercise caution and look at the privacy statement applicable to the website in question.\n</p>\n<h2>Controlling your personal information</h2>\n<p>You may choose to restrict the collection or use of your personal information in the following ways:</p>\n<ul>\n    <li>\n        whenever you are asked to fill in a form on the website, look for the box that you can click to indicate\n        that you do not want the information to be used by anybody for direct marketing purposes\n    </li>\n    <li>\n        if you have previously agreed to us using your personal information for direct marketing purposes,\n        you may change your mind at any time by writing to or emailing us at\n        {{config path="trans_email/ident_general/email"}}\n    </li>\n</ul>\n<p>\n    We will not sell, distribute or lease your personal information to third parties unless we have your permission\n    or are required by law to do so. We may use your personal information to send you promotional information\n    about third parties which we think you may find interesting if you tell us that you wish this to happen.\n</p>\n<p>\n    You may request details of personal information which we hold about you under the Data Protection Act 1998.\n    A small fee will be payable. If you would like a copy of the information held on you please write to\n    {{config path="general/store_information/address"}}.\n</p>\n<p>\n    If you believe that any information we are holding on you is incorrect or incomplete,\n    please write to or email us as soon as possible, at the above address.\n    We will promptly correct any information found to be incorrect.\n</p>\n<h2><a name="list"></a>List of cookies we collect</h2>\n<p>The table below lists the cookies we collect and what information they store.</p>\n<table class="data-table">\n    <thead>\n        <tr>\n            <th>COOKIE name</th>\n            <th>COOKIE Description</th>\n        </tr>\n    </thead>\n    <tbody>\n        <tr>\n            <th>CART</th>\n            <td>The association with your shopping cart.</td>\n        </tr>\n        <tr>\n            <th>CATEGORY_INFO</th>\n            <td>Stores the category info on the page, that allows to display pages more quickly.</td>\n        </tr>\n        <tr>\n            <th>COMPARE</th>\n            <td>The items that you have in the Compare Products list.</td>\n        </tr>\n        <tr>\n            <th>CURRENCY</th>\n            <td>Your preferred currency</td>\n        </tr>\n        <tr>\n            <th>CUSTOMER</th>\n            <td>An encrypted version of your customer id with the store.</td>\n        </tr>\n        <tr>\n            <th>CUSTOMER_AUTH</th>\n            <td>An indicator if you are currently logged into the store.</td>\n        </tr>\n        <tr>\n            <th>CUSTOMER_INFO</th>\n            <td>An encrypted version of the customer group you belong to.</td>\n        </tr>\n        <tr>\n            <th>CUSTOMER_SEGMENT_IDS</th>\n            <td>Stores the Customer Segment ID</td>\n        </tr>\n        <tr>\n            <th>EXTERNAL_NO_CACHE</th>\n            <td>A flag, which indicates whether caching is disabled or not.</td>\n        </tr>\n        <tr>\n            <th>FRONTEND</th>\n            <td>You sesssion ID on the server.</td>\n        </tr>\n        <tr>\n            <th>GUEST-VIEW</th>\n            <td>Allows guests to edit their orders.</td>\n        </tr>\n        <tr>\n            <th>LAST_CATEGORY</th>\n            <td>The last category you visited.</td>\n        </tr>\n        <tr>\n            <th>LAST_PRODUCT</th>\n            <td>The most recent product you have viewed.</td>\n        </tr>\n        <tr>\n            <th>NEWMESSAGE</th>\n            <td>Indicates whether a new message has been received.</td>\n        </tr>\n        <tr>\n            <th>NO_CACHE</th>\n            <td>Indicates whether it is allowed to use cache.</td>\n        </tr>\n        <tr>\n            <th>PERSISTENT_SHOPPING_CART</th>\n            <td>A link to information about your cart and viewing history if you have asked the site.</td>\n        </tr>\n        <tr>\n            <th>POLL</th>\n            <td>The ID of any polls you have recently voted in.</td>\n        </tr>\n        <tr>\n            <th>POLLN</th>\n            <td>Information on what polls you have voted on.</td>\n        </tr>\n        <tr>\n            <th>RECENTLYCOMPARED</th>\n            <td>The items that you have recently compared.            </td>\n        </tr>\n        <tr>\n            <th>STF</th>\n            <td>Information on products you have emailed to friends.</td>\n        </tr>\n        <tr>\n            <th>STORE</th>\n            <td>The store view or language you have selected.</td>\n        </tr>\n        <tr>\n            <th>USER_ALLOWED_SAVE_COOKIE</th>\n            <td>Indicates whether a customer allowed to use cookies.</td>\n        </tr>\n        <tr>\n            <th>VIEWED_PRODUCT_IDS</th>\n            <td>The products that you have recently viewed.</td>\n        </tr>\n        <tr>\n            <th>WISHLIST</th>\n            <td>An encrypted list of products added to your Wishlist.</td>\n        </tr>\n        <tr>\n            <th>WISHLIST_CNT</th>\n            <td>The number of items in your Wishlist.</td>\n        </tr>\n    </tbody>\n</table>', '2014-02-21 11:51:41', '2014-02-21 11:51:41', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_page_store`
--

CREATE TABLE IF NOT EXISTS `cms_page_store` (
  `page_id` smallint(6) NOT NULL COMMENT 'Page ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Page To Store Linkage Table';

--
-- Dumping data for table `cms_page_store`
--

INSERT INTO `cms_page_store` (`page_id`, `store_id`) VALUES
(1, 0),
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `core_cache`
--

CREATE TABLE IF NOT EXISTS `core_cache` (
  `id` varchar(200) NOT NULL COMMENT 'Cache Id',
  `data` mediumblob COMMENT 'Cache Data',
  `create_time` int(11) DEFAULT NULL COMMENT 'Cache Creation Time',
  `update_time` int(11) DEFAULT NULL COMMENT 'Time of Cache Updating',
  `expire_time` int(11) DEFAULT NULL COMMENT 'Cache Expiration Time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Caches';

-- --------------------------------------------------------

--
-- Table structure for table `core_cache_option`
--

CREATE TABLE IF NOT EXISTS `core_cache_option` (
  `code` varchar(32) NOT NULL COMMENT 'Code',
  `value` smallint(6) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cache Options';

--
-- Dumping data for table `core_cache_option`
--

INSERT INTO `core_cache_option` (`code`, `value`) VALUES
('block_html', 1),
('collections', 1),
('config', 1),
('config_api', 1),
('config_api2', 1),
('eav', 1),
('layout', 1),
('translate', 1);

-- --------------------------------------------------------

--
-- Table structure for table `core_cache_tag`
--

CREATE TABLE IF NOT EXISTS `core_cache_tag` (
  `tag` varchar(100) NOT NULL COMMENT 'Tag',
  `cache_id` varchar(200) NOT NULL COMMENT 'Cache Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag Caches';

-- --------------------------------------------------------

--
-- Table structure for table `core_config_data`
--

CREATE TABLE IF NOT EXISTS `core_config_data` (
  `config_id` int(10) unsigned NOT NULL COMMENT 'Config Id',
  `scope` varchar(8) NOT NULL DEFAULT 'default' COMMENT 'Config Scope',
  `scope_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Config Scope Id',
  `path` varchar(255) NOT NULL DEFAULT 'general' COMMENT 'Config Path',
  `value` text COMMENT 'Config Value'
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COMMENT='Config Data';

--
-- Dumping data for table `core_config_data`
--

INSERT INTO `core_config_data` (`config_id`, `scope`, `scope_id`, `path`, `value`) VALUES
(1, 'default', 0, 'general/region/display_all', '1'),
(2, 'default', 0, 'general/region/state_required', 'AT,CA,CH,DE,EE,ES,FI,FR,LT,LV,RO,US'),
(3, 'default', 0, 'catalog/category/root_id', '2'),
(4, 'default', 0, 'web/seo/use_rewrites', '1'),
(5, 'default', 0, 'admin/dashboard/enable_charts', '1'),
(6, 'default', 0, 'web/unsecure/base_url', 'http://finwaretech.com/magento_3/'),
(7, 'default', 0, 'web/secure/base_url', 'http://finwaretech.com/magento_3/'),
(8, 'default', 0, 'general/locale/code', 'en_US'),
(9, 'default', 0, 'general/locale/timezone', 'Asia/Calcutta'),
(10, 'default', 0, 'currency/options/base', 'INR'),
(11, 'default', 0, 'currency/options/default', 'INR'),
(12, 'default', 0, 'currency/options/allow', 'INR'),
(13, 'default', 0, 'customer/account_share/scope', '1'),
(14, 'default', 0, 'customer/online_customers/online_minutes_interval', NULL),
(15, 'default', 0, 'customer/create_account/auto_group_assign', '0'),
(16, 'default', 0, 'customer/create_account/default_group', '1'),
(17, 'default', 0, 'customer/create_account/viv_disable_auto_group_assign_default', '0'),
(18, 'default', 0, 'customer/create_account/vat_frontend_visibility', '0'),
(19, 'default', 0, 'customer/create_account/email_domain', 'example.com'),
(20, 'default', 0, 'customer/create_account/email_template', 'customer_create_account_email_template'),
(21, 'default', 0, 'customer/create_account/email_identity', 'general'),
(22, 'default', 0, 'customer/create_account/confirm', '0'),
(23, 'default', 0, 'customer/create_account/email_confirmation_template', 'customer_create_account_email_confirmation_template'),
(24, 'default', 0, 'customer/create_account/email_confirmed_template', 'customer_create_account_email_confirmed_template'),
(25, 'default', 0, 'customer/create_account/generate_human_friendly_id', '0'),
(26, 'default', 0, 'customer/password/forgot_email_template', 'customer_password_forgot_email_template'),
(27, 'default', 0, 'customer/password/remind_email_template', 'customer_password_remind_email_template'),
(28, 'default', 0, 'customer/password/forgot_email_identity', 'support'),
(29, 'default', 0, 'customer/password/reset_link_expiration_period', '1'),
(30, 'default', 0, 'customer/address/street_lines', '2'),
(31, 'default', 0, 'customer/address/prefix_show', NULL),
(32, 'default', 0, 'customer/address/prefix_options', NULL),
(33, 'default', 0, 'customer/address/middlename_show', '0'),
(34, 'default', 0, 'customer/address/suffix_show', NULL),
(35, 'default', 0, 'customer/address/suffix_options', NULL),
(36, 'default', 0, 'customer/address/dob_show', NULL),
(37, 'default', 0, 'customer/address/taxvat_show', NULL),
(38, 'default', 0, 'customer/address/gender_show', NULL),
(39, 'default', 0, 'customer/startup/redirect_dashboard', '1'),
(40, 'default', 0, 'customer/address_templates/text', '{{depend prefix}}{{var prefix}} {{/depend}}{{var firstname}} {{depend middlename}}{{var middlename}} {{/depend}}{{var lastname}}{{depend suffix}} {{var suffix}}{{/depend}}\r\n{{depend company}}{{var company}}{{/depend}}\r\n{{if street1}}{{var street1}}\r\n{{/if}}\r\n{{depend street2}}{{var street2}}{{/depend}}\r\n{{depend street3}}{{var street3}}{{/depend}}\r\n{{depend street4}}{{var street4}}{{/depend}}\r\n{{if city}}{{var city}},  {{/if}}{{if region}}{{var region}}, {{/if}}{{if postcode}}{{var postcode}}{{/if}}\r\n{{var country}}\r\nT: {{var telephone}}\r\n{{depend fax}}F: {{var fax}}{{/depend}}\r\n{{depend vat_id}}VAT: {{var vat_id}}{{/depend}}'),
(41, 'default', 0, 'customer/address_templates/oneline', '{{depend prefix}}{{var prefix}} {{/depend}}{{var firstname}} {{depend middlename}}{{var middlename}} {{/depend}}{{var lastname}}{{depend suffix}} {{var suffix}}{{/depend}}, {{var street}}, {{var city}}, {{var region}} {{var postcode}}, {{var country}}'),
(42, 'default', 0, 'customer/address_templates/html', '{{depend prefix}}{{var prefix}} {{/depend}}{{var firstname}} {{depend middlename}}{{var middlename}} {{/depend}}{{var lastname}}{{depend suffix}} {{var suffix}}{{/depend}}<br/>\r\n{{depend company}}{{var company}}<br />{{/depend}}\r\n{{if street1}}{{var street1}}<br />{{/if}}\r\n{{depend street2}}{{var street2}}<br />{{/depend}}\r\n{{depend street3}}{{var street3}}<br />{{/depend}}\r\n{{depend street4}}{{var street4}}<br />{{/depend}}\r\n{{if city}}{{var city}},  {{/if}}{{if region}}{{var region}}, {{/if}}{{if postcode}}{{var postcode}}{{/if}}<br/>\r\n{{var country}}<br/>\r\n{{depend telephone}}T: {{var telephone}}{{/depend}}\r\n{{depend fax}}<br/>F: {{var fax}}{{/depend}}\r\n{{depend vat_id}}<br/>VAT: {{var vat_id}}{{/depend}}'),
(43, 'default', 0, 'customer/address_templates/pdf', '{{depend prefix}}{{var prefix}} {{/depend}}{{var firstname}} {{depend middlename}}{{var middlename}} {{/depend}}{{var lastname}}{{depend suffix}} {{var suffix}}{{/depend}}|\r\n{{depend company}}{{var company}}|{{/depend}}\r\n{{if street1}}{{var street1}}\r\n{{/if}}\r\n{{depend street2}}{{var street2}}|{{/depend}}\r\n{{depend street3}}{{var street3}}|{{/depend}}\r\n{{depend street4}}{{var street4}}|{{/depend}}\r\n{{if city}}{{var city}},|{{/if}}\r\n{{if region}}{{var region}}, {{/if}}{{if postcode}}{{var postcode}}{{/if}}|\r\n{{var country}}|\r\n{{depend telephone}}T: {{var telephone}}{{/depend}}|\r\n{{depend fax}}<br/>F: {{var fax}}{{/depend}}|\r\n{{depend vat_id}}<br/>VAT: {{var vat_id}}{{/depend}}|'),
(44, 'default', 0, 'customer/address_templates/js_template', '#{prefix} #{firstname} #{middlename} #{lastname} #{suffix}<br/>#{company}<br/>#{street0}<br/>#{street1}<br/>#{street2}<br/>#{street3}<br/>#{city}, #{region}, #{postcode}<br/>#{country_id}<br/>T: #{telephone}<br/>F: #{fax}<br/>VAT: #{vat_id}'),
(45, 'default', 0, 'customer/captcha/enable', '1'),
(46, 'default', 0, 'customer/captcha/font', 'linlibertine'),
(47, 'default', 0, 'customer/captcha/forms', 'user_create,user_forgotpassword'),
(48, 'default', 0, 'customer/captcha/mode', 'after_fail'),
(49, 'default', 0, 'customer/captcha/failed_attempts_login', '3'),
(50, 'default', 0, 'customer/captcha/timeout', '7'),
(51, 'default', 0, 'customer/captcha/length', '4-5'),
(52, 'default', 0, 'customer/captcha/symbols', 'ABCDEFGHJKMnpqrstuvwxyz23456789'),
(53, 'default', 0, 'customer/captcha/case_sensitive', '0'),
(54, 'default', 0, 'sendfriend/email/enabled', '0'),
(55, 'default', 0, 'sendfriend/email/template', 'sendfriend_email_template'),
(56, 'default', 0, 'sendfriend/email/allow_guest', '0'),
(57, 'default', 0, 'sendfriend/email/max_recipients', '5'),
(58, 'default', 0, 'sendfriend/email/max_per_hour', '5'),
(59, 'default', 0, 'sendfriend/email/check_by', '0');

-- --------------------------------------------------------

--
-- Table structure for table `core_email_template`
--

CREATE TABLE IF NOT EXISTS `core_email_template` (
  `template_id` int(10) unsigned NOT NULL COMMENT 'Template Id',
  `template_code` varchar(150) NOT NULL COMMENT 'Template Name',
  `template_text` text NOT NULL COMMENT 'Template Content',
  `template_styles` text COMMENT 'Templste Styles',
  `template_type` int(10) unsigned DEFAULT NULL COMMENT 'Template Type',
  `template_subject` varchar(200) NOT NULL COMMENT 'Template Subject',
  `template_sender_name` varchar(200) DEFAULT NULL COMMENT 'Template Sender Name',
  `template_sender_email` varchar(200) DEFAULT NULL COMMENT 'Template Sender Email',
  `added_at` timestamp NULL DEFAULT NULL COMMENT 'Date of Template Creation',
  `modified_at` timestamp NULL DEFAULT NULL COMMENT 'Date of Template Modification',
  `orig_template_code` varchar(200) DEFAULT NULL COMMENT 'Original Template Code',
  `orig_template_variables` text COMMENT 'Original Template Variables'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Email Templates';

-- --------------------------------------------------------

--
-- Table structure for table `core_flag`
--

CREATE TABLE IF NOT EXISTS `core_flag` (
  `flag_id` int(10) unsigned NOT NULL COMMENT 'Flag Id',
  `flag_code` varchar(255) NOT NULL COMMENT 'Flag Code',
  `state` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Flag State',
  `flag_data` text COMMENT 'Flag Data',
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of Last Flag Update'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Flag';

--
-- Dumping data for table `core_flag`
--

INSERT INTO `core_flag` (`flag_id`, `flag_code`, `state`, `flag_data`, `last_update`) VALUES
(1, 'admin_notification_survey', 0, 'a:1:{s:13:"survey_viewed";b:1;}', '2017-02-04 11:02:13');

-- --------------------------------------------------------

--
-- Table structure for table `core_layout_link`
--

CREATE TABLE IF NOT EXISTS `core_layout_link` (
  `layout_link_id` int(10) unsigned NOT NULL COMMENT 'Link Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `area` varchar(64) DEFAULT NULL COMMENT 'Area',
  `package` varchar(64) DEFAULT NULL COMMENT 'Package',
  `theme` varchar(64) DEFAULT NULL COMMENT 'Theme',
  `layout_update_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Layout Update Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout Link';

-- --------------------------------------------------------

--
-- Table structure for table `core_layout_update`
--

CREATE TABLE IF NOT EXISTS `core_layout_update` (
  `layout_update_id` int(10) unsigned NOT NULL COMMENT 'Layout Update Id',
  `handle` varchar(255) DEFAULT NULL COMMENT 'Handle',
  `xml` text COMMENT 'Xml',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout Updates';

-- --------------------------------------------------------

--
-- Table structure for table `core_resource`
--

CREATE TABLE IF NOT EXISTS `core_resource` (
  `code` varchar(50) NOT NULL COMMENT 'Resource Code',
  `version` varchar(50) DEFAULT NULL COMMENT 'Resource Version',
  `data_version` varchar(50) DEFAULT NULL COMMENT 'Data Version'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Resources';

--
-- Dumping data for table `core_resource`
--

INSERT INTO `core_resource` (`code`, `version`, `data_version`) VALUES
('adminnotification_setup', '1.6.0.0', '1.6.0.0'),
('admin_setup', '1.6.1.1', '1.6.1.1'),
('api2_setup', '1.0.0.0', '1.0.0.0'),
('api_setup', '1.6.0.1', '1.6.0.1'),
('backup_setup', '1.6.0.0', '1.6.0.0'),
('bundle_setup', '1.6.0.0.1', '1.6.0.0.1'),
('captcha_setup', '1.7.0.0.0', '1.7.0.0.0'),
('catalogindex_setup', '1.6.0.0', '1.6.0.0'),
('cataloginventory_setup', '1.6.0.0.2', '1.6.0.0.2'),
('catalogrule_setup', '1.6.0.3', '1.6.0.3'),
('catalogsearch_setup', '1.6.0.0', '1.6.0.0'),
('catalog_setup', '1.6.0.0.18', '1.6.0.0.18'),
('checkout_setup', '1.6.0.0', '1.6.0.0'),
('cms_setup', '1.6.0.0.2', '1.6.0.0.2'),
('compiler_setup', '1.6.0.0', '1.6.0.0'),
('contacts_setup', '1.6.0.0', '1.6.0.0'),
('core_setup', '1.6.0.4', '1.6.0.4'),
('cron_setup', '1.6.0.0', '1.6.0.0'),
('customer_setup', '1.6.2.0.3', '1.6.2.0.3'),
('database_setup', '0.1.0', '0.1.0'),
('dataflow_setup', '1.6.0.0', '1.6.0.0'),
('directory_setup', '1.6.0.2', '1.6.0.2'),
('downloadable_setup', '1.6.0.0.2', '1.6.0.0.2'),
('eav_setup', '1.6.0.1', '1.6.0.1'),
('giftmessage_setup', '1.6.0.0', '1.6.0.0'),
('importexport_setup', '1.6.0.2', '1.6.0.2'),
('index_setup', '1.6.0.0', '1.6.0.0'),
('log_setup', '1.6.0.0', '1.6.0.0'),
('moneybookers_setup', '1.6.0.0', '1.6.0.0'),
('newsletter_setup', '1.6.0.1', '1.6.0.1'),
('oauth_setup', '1.0.0.0', '1.0.0.0'),
('paygate_setup', '1.6.0.0', '1.6.0.0'),
('payment_setup', '1.6.0.0', '1.6.0.0'),
('paypaluk_setup', '1.6.0.0', '1.6.0.0'),
('paypal_setup', '1.6.0.4', '1.6.0.4'),
('persistent_setup', '1.0.0.0', '1.0.0.0'),
('poll_setup', '1.6.0.0', '1.6.0.0'),
('productalert_setup', '1.6.0.0', '1.6.0.0'),
('rating_setup', '1.6.0.0', '1.6.0.0'),
('reports_setup', '1.6.0.0.1', '1.6.0.0.1'),
('review_setup', '1.6.0.0', '1.6.0.0'),
('salesrule_setup', '1.6.0.3', '1.6.0.3'),
('sales_setup', '1.6.0.8', '1.6.0.8'),
('sendfriend_setup', '1.6.0.0', '1.6.0.0'),
('shipping_setup', '1.6.0.0', '1.6.0.0'),
('sitemap_setup', '1.6.0.0', '1.6.0.0'),
('tag_setup', '1.6.0.0', '1.6.0.0'),
('tax_setup', '1.6.0.4', '1.6.0.4'),
('usa_setup', '1.6.0.3', '1.6.0.3'),
('weee_setup', '1.6.0.0', '1.6.0.0'),
('widget_setup', '1.6.0.0', '1.6.0.0'),
('wishlist_setup', '1.6.0.0', '1.6.0.0'),
('xmlconnect_setup', '1.6.0.0.1', '1.6.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `core_session`
--

CREATE TABLE IF NOT EXISTS `core_session` (
  `session_id` varchar(255) NOT NULL COMMENT 'Session Id',
  `session_expires` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Date of Session Expiration',
  `session_data` mediumblob NOT NULL COMMENT 'Session Data'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Database Sessions Storage';

-- --------------------------------------------------------

--
-- Table structure for table `core_store`
--

CREATE TABLE IF NOT EXISTS `core_store` (
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Group Id',
  `name` varchar(255) NOT NULL COMMENT 'Store Name',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Sort Order',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Activity'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Stores';

--
-- Dumping data for table `core_store`
--

INSERT INTO `core_store` (`store_id`, `code`, `website_id`, `group_id`, `name`, `sort_order`, `is_active`) VALUES
(0, 'admin', 0, 0, 'Admin', 0, 1),
(1, 'default', 1, 1, 'Default Store View', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `core_store_group`
--

CREATE TABLE IF NOT EXISTS `core_store_group` (
  `group_id` smallint(5) unsigned NOT NULL COMMENT 'Group Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `name` varchar(255) NOT NULL COMMENT 'Store Group Name',
  `root_category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Root Category Id',
  `default_store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Default Store Id'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Store Groups';

--
-- Dumping data for table `core_store_group`
--

INSERT INTO `core_store_group` (`group_id`, `website_id`, `name`, `root_category_id`, `default_store_id`) VALUES
(0, 0, 'Default', 0, 0),
(1, 1, 'Main Website Store', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `core_translate`
--

CREATE TABLE IF NOT EXISTS `core_translate` (
  `key_id` int(10) unsigned NOT NULL COMMENT 'Key Id of Translation',
  `string` varchar(255) NOT NULL DEFAULT 'Translate String' COMMENT 'Translation String',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `translate` varchar(255) DEFAULT NULL COMMENT 'Translate',
  `locale` varchar(20) NOT NULL DEFAULT 'en_US' COMMENT 'Locale',
  `crc_string` bigint(20) NOT NULL DEFAULT '1591228201' COMMENT 'Translation String CRC32 Hash'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Translations';

-- --------------------------------------------------------

--
-- Table structure for table `core_url_rewrite`
--

CREATE TABLE IF NOT EXISTS `core_url_rewrite` (
  `url_rewrite_id` int(10) unsigned NOT NULL COMMENT 'Rewrite Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `id_path` varchar(255) DEFAULT NULL COMMENT 'Id Path',
  `request_path` varchar(255) DEFAULT NULL COMMENT 'Request Path',
  `target_path` varchar(255) DEFAULT NULL COMMENT 'Target Path',
  `is_system` smallint(5) unsigned DEFAULT '1' COMMENT 'Defines is Rewrite System',
  `options` varchar(255) DEFAULT NULL COMMENT 'Options',
  `description` varchar(255) DEFAULT NULL COMMENT 'Deascription',
  `category_id` int(10) unsigned DEFAULT NULL COMMENT 'Category Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Url Rewrites';

--
-- Dumping data for table `core_url_rewrite`
--

INSERT INTO `core_url_rewrite` (`url_rewrite_id`, `store_id`, `id_path`, `request_path`, `target_path`, `is_system`, `options`, `description`, `category_id`, `product_id`) VALUES
(1, 1, 'product/1', 'cake.html', 'catalog/product/view/id/1', 1, NULL, NULL, NULL, 1),
(2, 1, 'product/2', 'test-product.html', 'catalog/product/view/id/2', 1, NULL, NULL, NULL, 2),
(3, 1, 'product/3', 'tateossian.html', 'catalog/product/view/id/3', 1, NULL, NULL, NULL, 3),
(4, 1, 'product/4', 'begenio-race-to-infinity.html', 'catalog/product/view/id/4', 1, NULL, NULL, NULL, 4);

-- --------------------------------------------------------

--
-- Table structure for table `core_variable`
--

CREATE TABLE IF NOT EXISTS `core_variable` (
  `variable_id` int(10) unsigned NOT NULL COMMENT 'Variable Id',
  `code` varchar(255) DEFAULT NULL COMMENT 'Variable Code',
  `name` varchar(255) DEFAULT NULL COMMENT 'Variable Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Variables';

-- --------------------------------------------------------

--
-- Table structure for table `core_variable_value`
--

CREATE TABLE IF NOT EXISTS `core_variable_value` (
  `value_id` int(10) unsigned NOT NULL COMMENT 'Variable Value Id',
  `variable_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Variable Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `plain_value` text COMMENT 'Plain Text Value',
  `html_value` text COMMENT 'Html Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Variable Value';

-- --------------------------------------------------------

--
-- Table structure for table `core_website`
--

CREATE TABLE IF NOT EXISTS `core_website` (
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code',
  `name` varchar(64) DEFAULT NULL COMMENT 'Website Name',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `default_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Default Group Id',
  `is_default` smallint(5) unsigned DEFAULT '0' COMMENT 'Defines Is Website Default'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Websites';

--
-- Dumping data for table `core_website`
--

INSERT INTO `core_website` (`website_id`, `code`, `name`, `sort_order`, `default_group_id`, `is_default`) VALUES
(0, 'admin', 'Admin', 0, 0, 0),
(1, 'base', 'Main Website', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `coupon_aggregated`
--

CREATE TABLE IF NOT EXISTS `coupon_aggregated` (
  `id` int(10) unsigned NOT NULL COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `subtotal_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount Actual',
  `discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount Actual',
  `total_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount Actual',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Coupon Aggregated';

-- --------------------------------------------------------

--
-- Table structure for table `coupon_aggregated_order`
--

CREATE TABLE IF NOT EXISTS `coupon_aggregated_order` (
  `id` int(10) unsigned NOT NULL COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Coupon Aggregated Order';

-- --------------------------------------------------------

--
-- Table structure for table `coupon_aggregated_updated`
--

CREATE TABLE IF NOT EXISTS `coupon_aggregated_updated` (
  `id` int(10) unsigned NOT NULL COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `subtotal_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount Actual',
  `discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount Actual',
  `total_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount Actual',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Coupon Aggregated Updated';

-- --------------------------------------------------------

--
-- Table structure for table `cron_schedule`
--

CREATE TABLE IF NOT EXISTS `cron_schedule` (
  `schedule_id` int(10) unsigned NOT NULL COMMENT 'Schedule Id',
  `job_code` varchar(255) NOT NULL DEFAULT '0' COMMENT 'Job Code',
  `status` varchar(7) NOT NULL DEFAULT 'pending' COMMENT 'Status',
  `messages` text COMMENT 'Messages',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `scheduled_at` timestamp NULL DEFAULT NULL COMMENT 'Scheduled At',
  `executed_at` timestamp NULL DEFAULT NULL COMMENT 'Executed At',
  `finished_at` timestamp NULL DEFAULT NULL COMMENT 'Finished At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cron Schedule';

-- --------------------------------------------------------

--
-- Table structure for table `customer_address_entity`
--

CREATE TABLE IF NOT EXISTS `customer_address_entity` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `parent_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity';

-- --------------------------------------------------------

--
-- Table structure for table `customer_address_entity_datetime`
--

CREATE TABLE IF NOT EXISTS `customer_address_entity_datetime` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Datetime';

-- --------------------------------------------------------

--
-- Table structure for table `customer_address_entity_decimal`
--

CREATE TABLE IF NOT EXISTS `customer_address_entity_decimal` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Decimal';

-- --------------------------------------------------------

--
-- Table structure for table `customer_address_entity_int`
--

CREATE TABLE IF NOT EXISTS `customer_address_entity_int` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Int';

-- --------------------------------------------------------

--
-- Table structure for table `customer_address_entity_text`
--

CREATE TABLE IF NOT EXISTS `customer_address_entity_text` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` text NOT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Text';

-- --------------------------------------------------------

--
-- Table structure for table `customer_address_entity_varchar`
--

CREATE TABLE IF NOT EXISTS `customer_address_entity_varchar` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Varchar';

-- --------------------------------------------------------

--
-- Table structure for table `customer_eav_attribute`
--

CREATE TABLE IF NOT EXISTS `customer_eav_attribute` (
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  `is_visible` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Visible',
  `input_filter` varchar(255) DEFAULT NULL COMMENT 'Input Filter',
  `multiline_count` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Multiline Count',
  `validate_rules` text COMMENT 'Validate Rules',
  `is_system` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is System',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `data_model` varchar(255) DEFAULT NULL COMMENT 'Data Model'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Eav Attribute';

--
-- Dumping data for table `customer_eav_attribute`
--

INSERT INTO `customer_eav_attribute` (`attribute_id`, `is_visible`, `input_filter`, `multiline_count`, `validate_rules`, `is_system`, `sort_order`, `data_model`) VALUES
(1, 1, NULL, 0, NULL, 1, 10, NULL),
(2, 0, NULL, 0, NULL, 1, 0, NULL),
(3, 1, NULL, 0, NULL, 1, 20, NULL),
(4, 0, NULL, 0, NULL, 0, 30, NULL),
(5, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 40, NULL),
(6, 0, NULL, 0, NULL, 0, 50, NULL),
(7, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 60, NULL),
(8, 0, NULL, 0, NULL, 0, 70, NULL),
(9, 1, NULL, 0, 'a:1:{s:16:"input_validation";s:5:"email";}', 1, 80, NULL),
(10, 1, NULL, 0, NULL, 1, 25, NULL),
(11, 0, 'date', 0, 'a:1:{s:16:"input_validation";s:4:"date";}', 0, 90, NULL),
(12, 0, NULL, 0, NULL, 1, 0, NULL),
(13, 0, NULL, 0, NULL, 1, 0, NULL),
(14, 0, NULL, 0, NULL, 1, 0, NULL),
(15, 0, NULL, 0, 'a:1:{s:15:"max_text_length";i:255;}', 0, 100, NULL),
(16, 0, NULL, 0, NULL, 1, 0, NULL),
(17, 0, 'datetime', 0, NULL, 0, 0, NULL),
(18, 0, NULL, 0, 'a:0:{}', 0, 110, NULL),
(19, 0, NULL, 0, NULL, 0, 10, NULL),
(20, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 20, NULL),
(21, 0, NULL, 0, NULL, 0, 30, NULL),
(22, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 40, NULL),
(23, 0, NULL, 0, NULL, 0, 50, NULL),
(24, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 60, NULL),
(25, 1, NULL, 2, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 70, NULL),
(26, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 80, NULL),
(27, 1, NULL, 0, NULL, 1, 90, NULL),
(28, 1, NULL, 0, NULL, 1, 100, NULL),
(29, 1, NULL, 0, NULL, 1, 100, NULL),
(30, 1, NULL, 0, 'a:0:{}', 1, 110, 'customer/attribute_data_postcode'),
(31, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 120, NULL),
(32, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 130, NULL),
(33, 0, NULL, 0, NULL, 1, 0, NULL),
(34, 0, NULL, 0, 'a:1:{s:16:"input_validation";s:4:"date";}', 1, 0, NULL),
(35, 1, NULL, 0, NULL, 1, 28, NULL),
(36, 1, NULL, 0, NULL, 1, 140, NULL),
(37, 0, NULL, 0, NULL, 1, 0, NULL),
(38, 0, NULL, 0, NULL, 1, 0, NULL),
(39, 0, NULL, 0, NULL, 1, 0, NULL),
(40, 0, NULL, 0, NULL, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_eav_attribute_website`
--

CREATE TABLE IF NOT EXISTS `customer_eav_attribute_website` (
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `is_visible` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Visible',
  `is_required` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Required',
  `default_value` text COMMENT 'Default Value',
  `multiline_count` smallint(5) unsigned DEFAULT NULL COMMENT 'Multiline Count'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Eav Attribute Website';

-- --------------------------------------------------------

--
-- Table structure for table `customer_entity`
--

CREATE TABLE IF NOT EXISTS `customer_entity` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `website_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Website Id',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Group Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `store_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Active',
  `disable_auto_group_change` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Disable automatic group change based on VAT ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity';

-- --------------------------------------------------------

--
-- Table structure for table `customer_entity_datetime`
--

CREATE TABLE IF NOT EXISTS `customer_entity_datetime` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Datetime';

-- --------------------------------------------------------

--
-- Table structure for table `customer_entity_decimal`
--

CREATE TABLE IF NOT EXISTS `customer_entity_decimal` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Decimal';

-- --------------------------------------------------------

--
-- Table structure for table `customer_entity_int`
--

CREATE TABLE IF NOT EXISTS `customer_entity_int` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Int';

-- --------------------------------------------------------

--
-- Table structure for table `customer_entity_text`
--

CREATE TABLE IF NOT EXISTS `customer_entity_text` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` text NOT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Text';

-- --------------------------------------------------------

--
-- Table structure for table `customer_entity_varchar`
--

CREATE TABLE IF NOT EXISTS `customer_entity_varchar` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Varchar';

-- --------------------------------------------------------

--
-- Table structure for table `customer_form_attribute`
--

CREATE TABLE IF NOT EXISTS `customer_form_attribute` (
  `form_code` varchar(32) NOT NULL COMMENT 'Form Code',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Form Attribute';

--
-- Dumping data for table `customer_form_attribute`
--

INSERT INTO `customer_form_attribute` (`form_code`, `attribute_id`) VALUES
('adminhtml_customer', 1),
('adminhtml_customer', 3),
('adminhtml_customer', 4),
('checkout_register', 4),
('customer_account_create', 4),
('customer_account_edit', 4),
('adminhtml_customer', 5),
('checkout_register', 5),
('customer_account_create', 5),
('customer_account_edit', 5),
('adminhtml_customer', 6),
('checkout_register', 6),
('customer_account_create', 6),
('customer_account_edit', 6),
('adminhtml_customer', 7),
('checkout_register', 7),
('customer_account_create', 7),
('customer_account_edit', 7),
('adminhtml_customer', 8),
('checkout_register', 8),
('customer_account_create', 8),
('customer_account_edit', 8),
('adminhtml_checkout', 9),
('adminhtml_customer', 9),
('checkout_register', 9),
('customer_account_create', 9),
('customer_account_edit', 9),
('adminhtml_checkout', 10),
('adminhtml_customer', 10),
('adminhtml_checkout', 11),
('adminhtml_customer', 11),
('checkout_register', 11),
('customer_account_create', 11),
('customer_account_edit', 11),
('adminhtml_checkout', 15),
('adminhtml_customer', 15),
('checkout_register', 15),
('customer_account_create', 15),
('customer_account_edit', 15),
('adminhtml_customer', 17),
('checkout_register', 17),
('customer_account_create', 17),
('customer_account_edit', 17),
('adminhtml_checkout', 18),
('adminhtml_customer', 18),
('checkout_register', 18),
('customer_account_create', 18),
('customer_account_edit', 18),
('adminhtml_customer_address', 19),
('customer_address_edit', 19),
('customer_register_address', 19),
('adminhtml_customer_address', 20),
('customer_address_edit', 20),
('customer_register_address', 20),
('adminhtml_customer_address', 21),
('customer_address_edit', 21),
('customer_register_address', 21),
('adminhtml_customer_address', 22),
('customer_address_edit', 22),
('customer_register_address', 22),
('adminhtml_customer_address', 23),
('customer_address_edit', 23),
('customer_register_address', 23),
('adminhtml_customer_address', 24),
('customer_address_edit', 24),
('customer_register_address', 24),
('adminhtml_customer_address', 25),
('customer_address_edit', 25),
('customer_register_address', 25),
('adminhtml_customer_address', 26),
('customer_address_edit', 26),
('customer_register_address', 26),
('adminhtml_customer_address', 27),
('customer_address_edit', 27),
('customer_register_address', 27),
('adminhtml_customer_address', 28),
('customer_address_edit', 28),
('customer_register_address', 28),
('adminhtml_customer_address', 29),
('customer_address_edit', 29),
('customer_register_address', 29),
('adminhtml_customer_address', 30),
('customer_address_edit', 30),
('customer_register_address', 30),
('adminhtml_customer_address', 31),
('customer_address_edit', 31),
('customer_register_address', 31),
('adminhtml_customer_address', 32),
('customer_address_edit', 32),
('customer_register_address', 32),
('adminhtml_customer', 35),
('adminhtml_customer_address', 36),
('customer_address_edit', 36),
('customer_register_address', 36);

-- --------------------------------------------------------

--
-- Table structure for table `customer_group`
--

CREATE TABLE IF NOT EXISTS `customer_group` (
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `customer_group_code` varchar(32) NOT NULL COMMENT 'Customer Group Code',
  `tax_class_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Tax Class Id'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Customer Group';

--
-- Dumping data for table `customer_group`
--

INSERT INTO `customer_group` (`customer_group_id`, `customer_group_code`, `tax_class_id`) VALUES
(0, 'NOT LOGGED IN', 3),
(1, 'General', 3),
(2, 'Wholesale', 3),
(3, 'Retailer', 3);

-- --------------------------------------------------------

--
-- Table structure for table `dataflow_batch`
--

CREATE TABLE IF NOT EXISTS `dataflow_batch` (
  `batch_id` int(10) unsigned NOT NULL COMMENT 'Batch Id',
  `profile_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `adapter` varchar(128) DEFAULT NULL COMMENT 'Adapter',
  `params` text COMMENT 'Parameters',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Batch';

-- --------------------------------------------------------

--
-- Table structure for table `dataflow_batch_export`
--

CREATE TABLE IF NOT EXISTS `dataflow_batch_export` (
  `batch_export_id` bigint(20) unsigned NOT NULL COMMENT 'Batch Export Id',
  `batch_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Batch Id',
  `batch_data` longtext COMMENT 'Batch Data',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Batch Export';

-- --------------------------------------------------------

--
-- Table structure for table `dataflow_batch_import`
--

CREATE TABLE IF NOT EXISTS `dataflow_batch_import` (
  `batch_import_id` bigint(20) unsigned NOT NULL COMMENT 'Batch Import Id',
  `batch_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Batch Id',
  `batch_data` longtext COMMENT 'Batch Data',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Batch Import';

-- --------------------------------------------------------

--
-- Table structure for table `dataflow_import_data`
--

CREATE TABLE IF NOT EXISTS `dataflow_import_data` (
  `import_id` int(11) NOT NULL COMMENT 'Import Id',
  `session_id` int(11) DEFAULT NULL COMMENT 'Session Id',
  `serial_number` int(11) NOT NULL DEFAULT '0' COMMENT 'Serial Number',
  `value` text COMMENT 'Value',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT 'Status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Import Data';

-- --------------------------------------------------------

--
-- Table structure for table `dataflow_profile`
--

CREATE TABLE IF NOT EXISTS `dataflow_profile` (
  `profile_id` int(10) unsigned NOT NULL COMMENT 'Profile Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `actions_xml` text COMMENT 'Actions Xml',
  `gui_data` text COMMENT 'Gui Data',
  `direction` varchar(6) DEFAULT NULL COMMENT 'Direction',
  `entity_type` varchar(64) DEFAULT NULL COMMENT 'Entity Type',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `data_transfer` varchar(11) DEFAULT NULL COMMENT 'Data Transfer'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Dataflow Profile';

--
-- Dumping data for table `dataflow_profile`
--

INSERT INTO `dataflow_profile` (`profile_id`, `name`, `created_at`, `updated_at`, `actions_xml`, `gui_data`, `direction`, `entity_type`, `store_id`, `data_transfer`) VALUES
(1, 'Export All Products', '2014-02-21 11:51:40', '2014-02-21 11:51:40', '<action type="catalog/convert_adapter_product" method="load">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="catalog/convert_parser_product" method="unparse">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_mapper_column" method="map">\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_parser_csv" method="unparse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_adapter_io" method="save">\\r\\n    <var name="type">file</var>\\r\\n    <var name="path">var/export</var>\\r\\n    <var name="filename"><![CDATA[export_all_products.csv]]></var>\\r\\n</action>\\r\\n\\r\\n', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:23:"export_all_products.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'export', 'product', 0, 'file'),
(2, 'Export Product Stocks', '2014-02-21 11:51:40', '2014-02-21 11:51:40', '<action type="catalog/convert_adapter_product" method="load">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="catalog/convert_parser_product" method="unparse">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_mapper_column" method="map">\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_parser_csv" method="unparse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_adapter_io" method="save">\\r\\n    <var name="type">file</var>\\r\\n    <var name="path">var/export</var>\\r\\n    <var name="filename"><![CDATA[export_all_products.csv]]></var>\\r\\n</action>\\r\\n\\r\\n', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:25:"export_product_stocks.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:4:"true";s:7:"product";a:2:{s:2:"db";a:4:{i:1;s:5:"store";i:2;s:3:"sku";i:3;s:3:"qty";i:4;s:11:"is_in_stock";}s:4:"file";a:4:{i:1;s:5:"store";i:2;s:3:"sku";i:3;s:3:"qty";i:4;s:11:"is_in_stock";}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'export', 'product', 0, 'file'),
(3, 'Import All Products', '2014-02-21 11:51:40', '2014-02-21 11:51:40', '<action type="dataflow/convert_parser_csv" method="parse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n    <var name="adapter">catalog/convert_adapter_product</var>\\r\\n    <var name="method">parse</var>\\r\\n</action>', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:23:"export_all_products.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'import', 'product', 0, 'interactive'),
(4, 'Import Product Stocks', '2014-02-21 11:51:40', '2014-02-21 11:51:40', '<action type="dataflow/convert_parser_csv" method="parse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n    <var name="adapter">catalog/convert_adapter_product</var>\\r\\n    <var name="method">parse</var>\\r\\n</action>', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:18:"export_product.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'import', 'product', 0, 'interactive'),
(5, 'Export Customers', '2014-02-21 11:51:40', '2014-02-21 11:51:40', '<action type="customer/convert_adapter_customer" method="load">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n    <var name="filter/adressType"><![CDATA[default_billing]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="customer/convert_parser_customer" method="unparse">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_mapper_column" method="map">\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_parser_csv" method="unparse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_adapter_io" method="save">\\r\\n    <var name="type">file</var>\\r\\n    <var name="path">var/export</var>\\r\\n    <var name="filename"><![CDATA[export_customers.csv]]></var>\\r\\n</action>\\r\\n\\r\\n', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:20:"export_customers.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'export', 'customer', 0, 'file'),
(6, 'Import Customers', '2014-02-21 11:51:41', '2014-02-21 11:51:41', '<action type="dataflow/convert_parser_csv" method="parse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n    <var name="adapter">customer/convert_adapter_customer</var>\\r\\n    <var name="method">parse</var>\\r\\n</action>', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:19:"export_customer.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'import', 'customer', 0, 'interactive');

-- --------------------------------------------------------

--
-- Table structure for table `dataflow_profile_history`
--

CREATE TABLE IF NOT EXISTS `dataflow_profile_history` (
  `history_id` int(10) unsigned NOT NULL COMMENT 'History Id',
  `profile_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Id',
  `action_code` varchar(64) DEFAULT NULL COMMENT 'Action Code',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'User Id',
  `performed_at` timestamp NULL DEFAULT NULL COMMENT 'Performed At'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Dataflow Profile History';

--
-- Dumping data for table `dataflow_profile_history`
--

INSERT INTO `dataflow_profile_history` (`history_id`, `profile_id`, `action_code`, `user_id`, `performed_at`) VALUES
(1, 1, 'create', 0, '2014-02-21 11:51:40'),
(2, 2, 'create', 0, '2014-02-21 11:51:40'),
(3, 3, 'create', 0, '2014-02-21 11:51:40'),
(4, 4, 'create', 0, '2014-02-21 11:51:40'),
(5, 5, 'create', 0, '2014-02-21 11:51:40'),
(6, 6, 'create', 0, '2014-02-21 11:51:41');

-- --------------------------------------------------------

--
-- Table structure for table `dataflow_session`
--

CREATE TABLE IF NOT EXISTS `dataflow_session` (
  `session_id` int(11) NOT NULL COMMENT 'Session Id',
  `user_id` int(11) NOT NULL COMMENT 'User Id',
  `created_date` timestamp NULL DEFAULT NULL COMMENT 'Created Date',
  `file` varchar(255) DEFAULT NULL COMMENT 'File',
  `type` varchar(32) DEFAULT NULL COMMENT 'Type',
  `direction` varchar(32) DEFAULT NULL COMMENT 'Direction',
  `comment` varchar(255) DEFAULT NULL COMMENT 'Comment'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Session';

-- --------------------------------------------------------

--
-- Table structure for table `design_change`
--

CREATE TABLE IF NOT EXISTS `design_change` (
  `design_change_id` int(11) NOT NULL COMMENT 'Design Change Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `design` varchar(255) DEFAULT NULL COMMENT 'Design',
  `date_from` date DEFAULT NULL COMMENT 'First Date of Design Activity',
  `date_to` date DEFAULT NULL COMMENT 'Last Date of Design Activity'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Design Changes';

-- --------------------------------------------------------

--
-- Table structure for table `directory_country`
--

CREATE TABLE IF NOT EXISTS `directory_country` (
  `country_id` varchar(2) NOT NULL DEFAULT '' COMMENT 'Country Id in ISO-2',
  `iso2_code` varchar(2) DEFAULT NULL COMMENT 'Country ISO-2 format',
  `iso3_code` varchar(3) DEFAULT NULL COMMENT 'Country ISO-3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country';

--
-- Dumping data for table `directory_country`
--

INSERT INTO `directory_country` (`country_id`, `iso2_code`, `iso3_code`) VALUES
('AD', 'AD', 'AND'),
('AE', 'AE', 'ARE'),
('AF', 'AF', 'AFG'),
('AG', 'AG', 'ATG'),
('AI', 'AI', 'AIA'),
('AL', 'AL', 'ALB'),
('AM', 'AM', 'ARM'),
('AN', 'AN', 'ANT'),
('AO', 'AO', 'AGO'),
('AQ', 'AQ', 'ATA'),
('AR', 'AR', 'ARG'),
('AS', 'AS', 'ASM'),
('AT', 'AT', 'AUT'),
('AU', 'AU', 'AUS'),
('AW', 'AW', 'ABW'),
('AX', 'AX', 'ALA'),
('AZ', 'AZ', 'AZE'),
('BA', 'BA', 'BIH'),
('BB', 'BB', 'BRB'),
('BD', 'BD', 'BGD'),
('BE', 'BE', 'BEL'),
('BF', 'BF', 'BFA'),
('BG', 'BG', 'BGR'),
('BH', 'BH', 'BHR'),
('BI', 'BI', 'BDI'),
('BJ', 'BJ', 'BEN'),
('BL', 'BL', 'BLM'),
('BM', 'BM', 'BMU'),
('BN', 'BN', 'BRN'),
('BO', 'BO', 'BOL'),
('BR', 'BR', 'BRA'),
('BS', 'BS', 'BHS'),
('BT', 'BT', 'BTN'),
('BV', 'BV', 'BVT'),
('BW', 'BW', 'BWA'),
('BY', 'BY', 'BLR'),
('BZ', 'BZ', 'BLZ'),
('CA', 'CA', 'CAN'),
('CC', 'CC', 'CCK'),
('CD', 'CD', 'COD'),
('CF', 'CF', 'CAF'),
('CG', 'CG', 'COG'),
('CH', 'CH', 'CHE'),
('CI', 'CI', 'CIV'),
('CK', 'CK', 'COK'),
('CL', 'CL', 'CHL'),
('CM', 'CM', 'CMR'),
('CN', 'CN', 'CHN'),
('CO', 'CO', 'COL'),
('CR', 'CR', 'CRI'),
('CU', 'CU', 'CUB'),
('CV', 'CV', 'CPV'),
('CX', 'CX', 'CXR'),
('CY', 'CY', 'CYP'),
('CZ', 'CZ', 'CZE'),
('DE', 'DE', 'DEU'),
('DJ', 'DJ', 'DJI'),
('DK', 'DK', 'DNK'),
('DM', 'DM', 'DMA'),
('DO', 'DO', 'DOM'),
('DZ', 'DZ', 'DZA'),
('EC', 'EC', 'ECU'),
('EE', 'EE', 'EST'),
('EG', 'EG', 'EGY'),
('EH', 'EH', 'ESH'),
('ER', 'ER', 'ERI'),
('ES', 'ES', 'ESP'),
('ET', 'ET', 'ETH'),
('FI', 'FI', 'FIN'),
('FJ', 'FJ', 'FJI'),
('FK', 'FK', 'FLK'),
('FM', 'FM', 'FSM'),
('FO', 'FO', 'FRO'),
('FR', 'FR', 'FRA'),
('GA', 'GA', 'GAB'),
('GB', 'GB', 'GBR'),
('GD', 'GD', 'GRD'),
('GE', 'GE', 'GEO'),
('GF', 'GF', 'GUF'),
('GG', 'GG', 'GGY'),
('GH', 'GH', 'GHA'),
('GI', 'GI', 'GIB'),
('GL', 'GL', 'GRL'),
('GM', 'GM', 'GMB'),
('GN', 'GN', 'GIN'),
('GP', 'GP', 'GLP'),
('GQ', 'GQ', 'GNQ'),
('GR', 'GR', 'GRC'),
('GS', 'GS', 'SGS'),
('GT', 'GT', 'GTM'),
('GU', 'GU', 'GUM'),
('GW', 'GW', 'GNB'),
('GY', 'GY', 'GUY'),
('HK', 'HK', 'HKG'),
('HM', 'HM', 'HMD'),
('HN', 'HN', 'HND'),
('HR', 'HR', 'HRV'),
('HT', 'HT', 'HTI'),
('HU', 'HU', 'HUN'),
('ID', 'ID', 'IDN'),
('IE', 'IE', 'IRL'),
('IL', 'IL', 'ISR'),
('IM', 'IM', 'IMN'),
('IN', 'IN', 'IND'),
('IO', 'IO', 'IOT'),
('IQ', 'IQ', 'IRQ'),
('IR', 'IR', 'IRN'),
('IS', 'IS', 'ISL'),
('IT', 'IT', 'ITA'),
('JE', 'JE', 'JEY'),
('JM', 'JM', 'JAM'),
('JO', 'JO', 'JOR'),
('JP', 'JP', 'JPN'),
('KE', 'KE', 'KEN'),
('KG', 'KG', 'KGZ'),
('KH', 'KH', 'KHM'),
('KI', 'KI', 'KIR'),
('KM', 'KM', 'COM'),
('KN', 'KN', 'KNA'),
('KP', 'KP', 'PRK'),
('KR', 'KR', 'KOR'),
('KW', 'KW', 'KWT'),
('KY', 'KY', 'CYM'),
('KZ', 'KZ', 'KAZ'),
('LA', 'LA', 'LAO'),
('LB', 'LB', 'LBN'),
('LC', 'LC', 'LCA'),
('LI', 'LI', 'LIE'),
('LK', 'LK', 'LKA'),
('LR', 'LR', 'LBR'),
('LS', 'LS', 'LSO'),
('LT', 'LT', 'LTU'),
('LU', 'LU', 'LUX'),
('LV', 'LV', 'LVA'),
('LY', 'LY', 'LBY'),
('MA', 'MA', 'MAR'),
('MC', 'MC', 'MCO'),
('MD', 'MD', 'MDA'),
('ME', 'ME', 'MNE'),
('MF', 'MF', 'MAF'),
('MG', 'MG', 'MDG'),
('MH', 'MH', 'MHL'),
('MK', 'MK', 'MKD'),
('ML', 'ML', 'MLI'),
('MM', 'MM', 'MMR'),
('MN', 'MN', 'MNG'),
('MO', 'MO', 'MAC'),
('MP', 'MP', 'MNP'),
('MQ', 'MQ', 'MTQ'),
('MR', 'MR', 'MRT'),
('MS', 'MS', 'MSR'),
('MT', 'MT', 'MLT'),
('MU', 'MU', 'MUS'),
('MV', 'MV', 'MDV'),
('MW', 'MW', 'MWI'),
('MX', 'MX', 'MEX'),
('MY', 'MY', 'MYS'),
('MZ', 'MZ', 'MOZ'),
('NA', 'NA', 'NAM'),
('NC', 'NC', 'NCL'),
('NE', 'NE', 'NER'),
('NF', 'NF', 'NFK'),
('NG', 'NG', 'NGA'),
('NI', 'NI', 'NIC'),
('NL', 'NL', 'NLD'),
('NO', 'NO', 'NOR'),
('NP', 'NP', 'NPL'),
('NR', 'NR', 'NRU'),
('NU', 'NU', 'NIU'),
('NZ', 'NZ', 'NZL'),
('OM', 'OM', 'OMN'),
('PA', 'PA', 'PAN'),
('PE', 'PE', 'PER'),
('PF', 'PF', 'PYF'),
('PG', 'PG', 'PNG'),
('PH', 'PH', 'PHL'),
('PK', 'PK', 'PAK'),
('PL', 'PL', 'POL'),
('PM', 'PM', 'SPM'),
('PN', 'PN', 'PCN'),
('PR', 'PR', 'PRI'),
('PS', 'PS', 'PSE'),
('PT', 'PT', 'PRT'),
('PW', 'PW', 'PLW'),
('PY', 'PY', 'PRY'),
('QA', 'QA', 'QAT'),
('RE', 'RE', 'REU'),
('RO', 'RO', 'ROU'),
('RS', 'RS', 'SRB'),
('RU', 'RU', 'RUS'),
('RW', 'RW', 'RWA'),
('SA', 'SA', 'SAU'),
('SB', 'SB', 'SLB'),
('SC', 'SC', 'SYC'),
('SD', 'SD', 'SDN'),
('SE', 'SE', 'SWE'),
('SG', 'SG', 'SGP'),
('SH', 'SH', 'SHN'),
('SI', 'SI', 'SVN'),
('SJ', 'SJ', 'SJM'),
('SK', 'SK', 'SVK'),
('SL', 'SL', 'SLE'),
('SM', 'SM', 'SMR'),
('SN', 'SN', 'SEN'),
('SO', 'SO', 'SOM'),
('SR', 'SR', 'SUR'),
('ST', 'ST', 'STP'),
('SV', 'SV', 'SLV'),
('SY', 'SY', 'SYR'),
('SZ', 'SZ', 'SWZ'),
('TC', 'TC', 'TCA'),
('TD', 'TD', 'TCD'),
('TF', 'TF', 'ATF'),
('TG', 'TG', 'TGO'),
('TH', 'TH', 'THA'),
('TJ', 'TJ', 'TJK'),
('TK', 'TK', 'TKL'),
('TL', 'TL', 'TLS'),
('TM', 'TM', 'TKM'),
('TN', 'TN', 'TUN'),
('TO', 'TO', 'TON'),
('TR', 'TR', 'TUR'),
('TT', 'TT', 'TTO'),
('TV', 'TV', 'TUV'),
('TW', 'TW', 'TWN'),
('TZ', 'TZ', 'TZA'),
('UA', 'UA', 'UKR'),
('UG', 'UG', 'UGA'),
('UM', 'UM', 'UMI'),
('US', 'US', 'USA'),
('UY', 'UY', 'URY'),
('UZ', 'UZ', 'UZB'),
('VA', 'VA', 'VAT'),
('VC', 'VC', 'VCT'),
('VE', 'VE', 'VEN'),
('VG', 'VG', 'VGB'),
('VI', 'VI', 'VIR'),
('VN', 'VN', 'VNM'),
('VU', 'VU', 'VUT'),
('WF', 'WF', 'WLF'),
('WS', 'WS', 'WSM'),
('YE', 'YE', 'YEM'),
('YT', 'YT', 'MYT'),
('ZA', 'ZA', 'ZAF'),
('ZM', 'ZM', 'ZMB'),
('ZW', 'ZW', 'ZWE');

-- --------------------------------------------------------

--
-- Table structure for table `directory_country_format`
--

CREATE TABLE IF NOT EXISTS `directory_country_format` (
  `country_format_id` int(10) unsigned NOT NULL COMMENT 'Country Format Id',
  `country_id` varchar(2) DEFAULT NULL COMMENT 'Country Id in ISO-2',
  `type` varchar(30) DEFAULT NULL COMMENT 'Country Format Type',
  `format` text NOT NULL COMMENT 'Country Format'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country Format';

-- --------------------------------------------------------

--
-- Table structure for table `directory_country_region`
--

CREATE TABLE IF NOT EXISTS `directory_country_region` (
  `region_id` int(10) unsigned NOT NULL COMMENT 'Region Id',
  `country_id` varchar(4) NOT NULL DEFAULT '0' COMMENT 'Country Id in ISO-2',
  `code` varchar(32) DEFAULT NULL COMMENT 'Region code',
  `default_name` varchar(255) DEFAULT NULL COMMENT 'Region Name'
) ENGINE=InnoDB AUTO_INCREMENT=485 DEFAULT CHARSET=utf8 COMMENT='Directory Country Region';

--
-- Dumping data for table `directory_country_region`
--

INSERT INTO `directory_country_region` (`region_id`, `country_id`, `code`, `default_name`) VALUES
(1, 'US', 'AL', 'Alabama'),
(2, 'US', 'AK', 'Alaska'),
(3, 'US', 'AS', 'American Samoa'),
(4, 'US', 'AZ', 'Arizona'),
(5, 'US', 'AR', 'Arkansas'),
(6, 'US', 'AF', 'Armed Forces Africa'),
(7, 'US', 'AA', 'Armed Forces Americas'),
(8, 'US', 'AC', 'Armed Forces Canada'),
(9, 'US', 'AE', 'Armed Forces Europe'),
(10, 'US', 'AM', 'Armed Forces Middle East'),
(11, 'US', 'AP', 'Armed Forces Pacific'),
(12, 'US', 'CA', 'California'),
(13, 'US', 'CO', 'Colorado'),
(14, 'US', 'CT', 'Connecticut'),
(15, 'US', 'DE', 'Delaware'),
(16, 'US', 'DC', 'District of Columbia'),
(17, 'US', 'FM', 'Federated States Of Micronesia'),
(18, 'US', 'FL', 'Florida'),
(19, 'US', 'GA', 'Georgia'),
(20, 'US', 'GU', 'Guam'),
(21, 'US', 'HI', 'Hawaii'),
(22, 'US', 'ID', 'Idaho'),
(23, 'US', 'IL', 'Illinois'),
(24, 'US', 'IN', 'Indiana'),
(25, 'US', 'IA', 'Iowa'),
(26, 'US', 'KS', 'Kansas'),
(27, 'US', 'KY', 'Kentucky'),
(28, 'US', 'LA', 'Louisiana'),
(29, 'US', 'ME', 'Maine'),
(30, 'US', 'MH', 'Marshall Islands'),
(31, 'US', 'MD', 'Maryland'),
(32, 'US', 'MA', 'Massachusetts'),
(33, 'US', 'MI', 'Michigan'),
(34, 'US', 'MN', 'Minnesota'),
(35, 'US', 'MS', 'Mississippi'),
(36, 'US', 'MO', 'Missouri'),
(37, 'US', 'MT', 'Montana'),
(38, 'US', 'NE', 'Nebraska'),
(39, 'US', 'NV', 'Nevada'),
(40, 'US', 'NH', 'New Hampshire'),
(41, 'US', 'NJ', 'New Jersey'),
(42, 'US', 'NM', 'New Mexico'),
(43, 'US', 'NY', 'New York'),
(44, 'US', 'NC', 'North Carolina'),
(45, 'US', 'ND', 'North Dakota'),
(46, 'US', 'MP', 'Northern Mariana Islands'),
(47, 'US', 'OH', 'Ohio'),
(48, 'US', 'OK', 'Oklahoma'),
(49, 'US', 'OR', 'Oregon'),
(50, 'US', 'PW', 'Palau'),
(51, 'US', 'PA', 'Pennsylvania'),
(52, 'US', 'PR', 'Puerto Rico'),
(53, 'US', 'RI', 'Rhode Island'),
(54, 'US', 'SC', 'South Carolina'),
(55, 'US', 'SD', 'South Dakota'),
(56, 'US', 'TN', 'Tennessee'),
(57, 'US', 'TX', 'Texas'),
(58, 'US', 'UT', 'Utah'),
(59, 'US', 'VT', 'Vermont'),
(60, 'US', 'VI', 'Virgin Islands'),
(61, 'US', 'VA', 'Virginia'),
(62, 'US', 'WA', 'Washington'),
(63, 'US', 'WV', 'West Virginia'),
(64, 'US', 'WI', 'Wisconsin'),
(65, 'US', 'WY', 'Wyoming'),
(66, 'CA', 'AB', 'Alberta'),
(67, 'CA', 'BC', 'British Columbia'),
(68, 'CA', 'MB', 'Manitoba'),
(69, 'CA', 'NL', 'Newfoundland and Labrador'),
(70, 'CA', 'NB', 'New Brunswick'),
(71, 'CA', 'NS', 'Nova Scotia'),
(72, 'CA', 'NT', 'Northwest Territories'),
(73, 'CA', 'NU', 'Nunavut'),
(74, 'CA', 'ON', 'Ontario'),
(75, 'CA', 'PE', 'Prince Edward Island'),
(76, 'CA', 'QC', 'Quebec'),
(77, 'CA', 'SK', 'Saskatchewan'),
(78, 'CA', 'YT', 'Yukon Territory'),
(79, 'DE', 'NDS', 'Niedersachsen'),
(80, 'DE', 'BAW', 'Baden-WÃ¼rttemberg'),
(81, 'DE', 'BAY', 'Bayern'),
(82, 'DE', 'BER', 'Berlin'),
(83, 'DE', 'BRG', 'Brandenburg'),
(84, 'DE', 'BRE', 'Bremen'),
(85, 'DE', 'HAM', 'Hamburg'),
(86, 'DE', 'HES', 'Hessen'),
(87, 'DE', 'MEC', 'Mecklenburg-Vorpommern'),
(88, 'DE', 'NRW', 'Nordrhein-Westfalen'),
(89, 'DE', 'RHE', 'Rheinland-Pfalz'),
(90, 'DE', 'SAR', 'Saarland'),
(91, 'DE', 'SAS', 'Sachsen'),
(92, 'DE', 'SAC', 'Sachsen-Anhalt'),
(93, 'DE', 'SCN', 'Schleswig-Holstein'),
(94, 'DE', 'THE', 'ThÃ¼ringen'),
(95, 'AT', 'WI', 'Wien'),
(96, 'AT', 'NO', 'NiederÃ¶sterreich'),
(97, 'AT', 'OO', 'OberÃ¶sterreich'),
(98, 'AT', 'SB', 'Salzburg'),
(99, 'AT', 'KN', 'KÃ¤rnten'),
(100, 'AT', 'ST', 'Steiermark'),
(101, 'AT', 'TI', 'Tirol'),
(102, 'AT', 'BL', 'Burgenland'),
(103, 'AT', 'VB', 'Voralberg'),
(104, 'CH', 'AG', 'Aargau'),
(105, 'CH', 'AI', 'Appenzell Innerrhoden'),
(106, 'CH', 'AR', 'Appenzell Ausserrhoden'),
(107, 'CH', 'BE', 'Bern'),
(108, 'CH', 'BL', 'Basel-Landschaft'),
(109, 'CH', 'BS', 'Basel-Stadt'),
(110, 'CH', 'FR', 'Freiburg'),
(111, 'CH', 'GE', 'Genf'),
(112, 'CH', 'GL', 'Glarus'),
(113, 'CH', 'GR', 'GraubÃ¼nden'),
(114, 'CH', 'JU', 'Jura'),
(115, 'CH', 'LU', 'Luzern'),
(116, 'CH', 'NE', 'Neuenburg'),
(117, 'CH', 'NW', 'Nidwalden'),
(118, 'CH', 'OW', 'Obwalden'),
(119, 'CH', 'SG', 'St. Gallen'),
(120, 'CH', 'SH', 'Schaffhausen'),
(121, 'CH', 'SO', 'Solothurn'),
(122, 'CH', 'SZ', 'Schwyz'),
(123, 'CH', 'TG', 'Thurgau'),
(124, 'CH', 'TI', 'Tessin'),
(125, 'CH', 'UR', 'Uri'),
(126, 'CH', 'VD', 'Waadt'),
(127, 'CH', 'VS', 'Wallis'),
(128, 'CH', 'ZG', 'Zug'),
(129, 'CH', 'ZH', 'ZÃ¼rich'),
(130, 'ES', 'A CoruÑa', 'A CoruÃ±a'),
(131, 'ES', 'Alava', 'Alava'),
(132, 'ES', 'Albacete', 'Albacete'),
(133, 'ES', 'Alicante', 'Alicante'),
(134, 'ES', 'Almeria', 'Almeria'),
(135, 'ES', 'Asturias', 'Asturias'),
(136, 'ES', 'Avila', 'Avila'),
(137, 'ES', 'Badajoz', 'Badajoz'),
(138, 'ES', 'Baleares', 'Baleares'),
(139, 'ES', 'Barcelona', 'Barcelona'),
(140, 'ES', 'Burgos', 'Burgos'),
(141, 'ES', 'Caceres', 'Caceres'),
(142, 'ES', 'Cadiz', 'Cadiz'),
(143, 'ES', 'Cantabria', 'Cantabria'),
(144, 'ES', 'Castellon', 'Castellon'),
(145, 'ES', 'Ceuta', 'Ceuta'),
(146, 'ES', 'Ciudad Real', 'Ciudad Real'),
(147, 'ES', 'Cordoba', 'Cordoba'),
(148, 'ES', 'Cuenca', 'Cuenca'),
(149, 'ES', 'Girona', 'Girona'),
(150, 'ES', 'Granada', 'Granada'),
(151, 'ES', 'Guadalajara', 'Guadalajara'),
(152, 'ES', 'Guipuzcoa', 'Guipuzcoa'),
(153, 'ES', 'Huelva', 'Huelva'),
(154, 'ES', 'Huesca', 'Huesca'),
(155, 'ES', 'Jaen', 'Jaen'),
(156, 'ES', 'La Rioja', 'La Rioja'),
(157, 'ES', 'Las Palmas', 'Las Palmas'),
(158, 'ES', 'Leon', 'Leon'),
(159, 'ES', 'Lleida', 'Lleida'),
(160, 'ES', 'Lugo', 'Lugo'),
(161, 'ES', 'Madrid', 'Madrid'),
(162, 'ES', 'Malaga', 'Malaga'),
(163, 'ES', 'Melilla', 'Melilla'),
(164, 'ES', 'Murcia', 'Murcia'),
(165, 'ES', 'Navarra', 'Navarra'),
(166, 'ES', 'Ourense', 'Ourense'),
(167, 'ES', 'Palencia', 'Palencia'),
(168, 'ES', 'Pontevedra', 'Pontevedra'),
(169, 'ES', 'Salamanca', 'Salamanca'),
(170, 'ES', 'Santa Cruz de Tenerife', 'Santa Cruz de Tenerife'),
(171, 'ES', 'Segovia', 'Segovia'),
(172, 'ES', 'Sevilla', 'Sevilla'),
(173, 'ES', 'Soria', 'Soria'),
(174, 'ES', 'Tarragona', 'Tarragona'),
(175, 'ES', 'Teruel', 'Teruel'),
(176, 'ES', 'Toledo', 'Toledo'),
(177, 'ES', 'Valencia', 'Valencia'),
(178, 'ES', 'Valladolid', 'Valladolid'),
(179, 'ES', 'Vizcaya', 'Vizcaya'),
(180, 'ES', 'Zamora', 'Zamora'),
(181, 'ES', 'Zaragoza', 'Zaragoza'),
(182, 'FR', '1', 'Ain'),
(183, 'FR', '2', 'Aisne'),
(184, 'FR', '3', 'Allier'),
(185, 'FR', '4', 'Alpes-de-Haute-Provence'),
(186, 'FR', '5', 'Hautes-Alpes'),
(187, 'FR', '6', 'Alpes-Maritimes'),
(188, 'FR', '7', 'ArdÃ¨che'),
(189, 'FR', '8', 'Ardennes'),
(190, 'FR', '9', 'AriÃ¨ge'),
(191, 'FR', '10', 'Aube'),
(192, 'FR', '11', 'Aude'),
(193, 'FR', '12', 'Aveyron'),
(194, 'FR', '13', 'Bouches-du-RhÃ´ne'),
(195, 'FR', '14', 'Calvados'),
(196, 'FR', '15', 'Cantal'),
(197, 'FR', '16', 'Charente'),
(198, 'FR', '17', 'Charente-Maritime'),
(199, 'FR', '18', 'Cher'),
(200, 'FR', '19', 'CorrÃ¨ze'),
(201, 'FR', '2A', 'Corse-du-Sud'),
(202, 'FR', '2B', 'Haute-Corse'),
(203, 'FR', '21', 'CÃ´te-d''Or'),
(204, 'FR', '22', 'CÃ´tes-d''Armor'),
(205, 'FR', '23', 'Creuse'),
(206, 'FR', '24', 'Dordogne'),
(207, 'FR', '25', 'Doubs'),
(208, 'FR', '26', 'DrÃ´me'),
(209, 'FR', '27', 'Eure'),
(210, 'FR', '28', 'Eure-et-Loir'),
(211, 'FR', '29', 'FinistÃ¨re'),
(212, 'FR', '30', 'Gard'),
(213, 'FR', '31', 'Haute-Garonne'),
(214, 'FR', '32', 'Gers'),
(215, 'FR', '33', 'Gironde'),
(216, 'FR', '34', 'HÃ©rault'),
(217, 'FR', '35', 'Ille-et-Vilaine'),
(218, 'FR', '36', 'Indre'),
(219, 'FR', '37', 'Indre-et-Loire'),
(220, 'FR', '38', 'IsÃ¨re'),
(221, 'FR', '39', 'Jura'),
(222, 'FR', '40', 'Landes'),
(223, 'FR', '41', 'Loir-et-Cher'),
(224, 'FR', '42', 'Loire'),
(225, 'FR', '43', 'Haute-Loire'),
(226, 'FR', '44', 'Loire-Atlantique'),
(227, 'FR', '45', 'Loiret'),
(228, 'FR', '46', 'Lot'),
(229, 'FR', '47', 'Lot-et-Garonne'),
(230, 'FR', '48', 'LozÃ¨re'),
(231, 'FR', '49', 'Maine-et-Loire'),
(232, 'FR', '50', 'Manche'),
(233, 'FR', '51', 'Marne'),
(234, 'FR', '52', 'Haute-Marne'),
(235, 'FR', '53', 'Mayenne'),
(236, 'FR', '54', 'Meurthe-et-Moselle'),
(237, 'FR', '55', 'Meuse'),
(238, 'FR', '56', 'Morbihan'),
(239, 'FR', '57', 'Moselle'),
(240, 'FR', '58', 'NiÃ¨vre'),
(241, 'FR', '59', 'Nord'),
(242, 'FR', '60', 'Oise'),
(243, 'FR', '61', 'Orne'),
(244, 'FR', '62', 'Pas-de-Calais'),
(245, 'FR', '63', 'Puy-de-DÃ´me'),
(246, 'FR', '64', 'PyrÃ©nÃ©es-Atlantiques'),
(247, 'FR', '65', 'Hautes-PyrÃ©nÃ©es'),
(248, 'FR', '66', 'PyrÃ©nÃ©es-Orientales'),
(249, 'FR', '67', 'Bas-Rhin'),
(250, 'FR', '68', 'Haut-Rhin'),
(251, 'FR', '69', 'RhÃ´ne'),
(252, 'FR', '70', 'Haute-SaÃ´ne'),
(253, 'FR', '71', 'SaÃ´ne-et-Loire'),
(254, 'FR', '72', 'Sarthe'),
(255, 'FR', '73', 'Savoie'),
(256, 'FR', '74', 'Haute-Savoie'),
(257, 'FR', '75', 'Paris'),
(258, 'FR', '76', 'Seine-Maritime'),
(259, 'FR', '77', 'Seine-et-Marne'),
(260, 'FR', '78', 'Yvelines'),
(261, 'FR', '79', 'Deux-SÃ¨vres'),
(262, 'FR', '80', 'Somme'),
(263, 'FR', '81', 'Tarn'),
(264, 'FR', '82', 'Tarn-et-Garonne'),
(265, 'FR', '83', 'Var'),
(266, 'FR', '84', 'Vaucluse'),
(267, 'FR', '85', 'VendÃ©e'),
(268, 'FR', '86', 'Vienne'),
(269, 'FR', '87', 'Haute-Vienne'),
(270, 'FR', '88', 'Vosges'),
(271, 'FR', '89', 'Yonne'),
(272, 'FR', '90', 'Territoire-de-Belfort'),
(273, 'FR', '91', 'Essonne'),
(274, 'FR', '92', 'Hauts-de-Seine'),
(275, 'FR', '93', 'Seine-Saint-Denis'),
(276, 'FR', '94', 'Val-de-Marne'),
(277, 'FR', '95', 'Val-d''Oise'),
(278, 'RO', 'AB', 'Alba'),
(279, 'RO', 'AR', 'Arad'),
(280, 'RO', 'AG', 'ArgeÅ'),
(281, 'RO', 'BC', 'BacÄu'),
(282, 'RO', 'BH', 'Bihor'),
(283, 'RO', 'BN', 'BistriÅ£a-NÄsÄud'),
(284, 'RO', 'BT', 'BotoÅani'),
(285, 'RO', 'BV', 'BraÅov'),
(286, 'RO', 'BR', 'BrÄila'),
(287, 'RO', 'B', 'BucureÅti'),
(288, 'RO', 'BZ', 'BuzÄu'),
(289, 'RO', 'CS', 'CaraÅ-Severin'),
(290, 'RO', 'CL', 'CÄlÄraÅi'),
(291, 'RO', 'CJ', 'Cluj'),
(292, 'RO', 'CT', 'ConstanÅ£a'),
(293, 'RO', 'CV', 'Covasna'),
(294, 'RO', 'DB', 'DÃ¢mboviÅ£a'),
(295, 'RO', 'DJ', 'Dolj'),
(296, 'RO', 'GL', 'GalaÅ£i'),
(297, 'RO', 'GR', 'Giurgiu'),
(298, 'RO', 'GJ', 'Gorj'),
(299, 'RO', 'HR', 'Harghita'),
(300, 'RO', 'HD', 'Hunedoara'),
(301, 'RO', 'IL', 'IalomiÅ£a'),
(302, 'RO', 'IS', 'IaÅi'),
(303, 'RO', 'IF', 'Ilfov'),
(304, 'RO', 'MM', 'MaramureÅ'),
(305, 'RO', 'MH', 'MehedinÅ£i'),
(306, 'RO', 'MS', 'MureÅ'),
(307, 'RO', 'NT', 'NeamÅ£'),
(308, 'RO', 'OT', 'Olt'),
(309, 'RO', 'PH', 'Prahova'),
(310, 'RO', 'SM', 'Satu-Mare'),
(311, 'RO', 'SJ', 'SÄlaj'),
(312, 'RO', 'SB', 'Sibiu'),
(313, 'RO', 'SV', 'Suceava'),
(314, 'RO', 'TR', 'Teleorman'),
(315, 'RO', 'TM', 'TimiÅ'),
(316, 'RO', 'TL', 'Tulcea'),
(317, 'RO', 'VS', 'Vaslui'),
(318, 'RO', 'VL', 'VÃ¢lcea'),
(319, 'RO', 'VN', 'Vrancea'),
(320, 'FI', 'Lappi', 'Lappi'),
(321, 'FI', 'Pohjois-Pohjanmaa', 'Pohjois-Pohjanmaa'),
(322, 'FI', 'Kainuu', 'Kainuu'),
(323, 'FI', 'Pohjois-Karjala', 'Pohjois-Karjala'),
(324, 'FI', 'Pohjois-Savo', 'Pohjois-Savo'),
(325, 'FI', 'EtelÃ¤-Savo', 'EtelÃ¤-Savo'),
(326, 'FI', 'EtelÃ¤-Pohjanmaa', 'EtelÃ¤-Pohjanmaa'),
(327, 'FI', 'Pohjanmaa', 'Pohjanmaa'),
(328, 'FI', 'Pirkanmaa', 'Pirkanmaa'),
(329, 'FI', 'Satakunta', 'Satakunta'),
(330, 'FI', 'Keski-Pohjanmaa', 'Keski-Pohjanmaa'),
(331, 'FI', 'Keski-Suomi', 'Keski-Suomi'),
(332, 'FI', 'Varsinais-Suomi', 'Varsinais-Suomi'),
(333, 'FI', 'EtelÃ¤-Karjala', 'EtelÃ¤-Karjala'),
(334, 'FI', 'PÃ¤ijÃ¤t-HÃ¤me', 'PÃ¤ijÃ¤t-HÃ¤me'),
(335, 'FI', 'Kanta-HÃ¤me', 'Kanta-HÃ¤me'),
(336, 'FI', 'Uusimaa', 'Uusimaa'),
(337, 'FI', 'ItÃ¤-Uusimaa', 'ItÃ¤-Uusimaa'),
(338, 'FI', 'Kymenlaakso', 'Kymenlaakso'),
(339, 'FI', 'Ahvenanmaa', 'Ahvenanmaa'),
(340, 'EE', 'EE-37', 'Harjumaa'),
(341, 'EE', 'EE-39', 'Hiiumaa'),
(342, 'EE', 'EE-44', 'Ida-Virumaa'),
(343, 'EE', 'EE-49', 'JÃµgevamaa'),
(344, 'EE', 'EE-51', 'JÃ¤rvamaa'),
(345, 'EE', 'EE-57', 'LÃ¤Ã¤nemaa'),
(346, 'EE', 'EE-59', 'LÃ¤Ã¤ne-Virumaa'),
(347, 'EE', 'EE-65', 'PÃµlvamaa'),
(348, 'EE', 'EE-67', 'PÃ¤rnumaa'),
(349, 'EE', 'EE-70', 'Raplamaa'),
(350, 'EE', 'EE-74', 'Saaremaa'),
(351, 'EE', 'EE-78', 'Tartumaa'),
(352, 'EE', 'EE-82', 'Valgamaa'),
(353, 'EE', 'EE-84', 'Viljandimaa'),
(354, 'EE', 'EE-86', 'VÃµrumaa'),
(355, 'LV', 'LV-DGV', 'Daugavpils'),
(356, 'LV', 'LV-JEL', 'Jelgava'),
(357, 'LV', 'JÄkabpils', 'JÄkabpils'),
(358, 'LV', 'LV-JUR', 'JÅ«rmala'),
(359, 'LV', 'LV-LPX', 'LiepÄja'),
(360, 'LV', 'LV-LE', 'LiepÄjas novads'),
(361, 'LV', 'LV-REZ', 'RÄzekne'),
(362, 'LV', 'LV-RIX', 'RÄ«ga'),
(363, 'LV', 'LV-RI', 'RÄ«gas novads'),
(364, 'LV', 'Valmiera', 'Valmiera'),
(365, 'LV', 'LV-VEN', 'Ventspils'),
(366, 'LV', 'Aglonas novads', 'Aglonas novads'),
(367, 'LV', 'LV-AI', 'Aizkraukles novads'),
(368, 'LV', 'Aizputes novads', 'Aizputes novads'),
(369, 'LV', 'AknÄ«stes novads', 'AknÄ«stes novads'),
(370, 'LV', 'Alojas novads', 'Alojas novads'),
(371, 'LV', 'Alsungas novads', 'Alsungas novads'),
(372, 'LV', 'LV-AL', 'AlÅ«ksnes novads'),
(373, 'LV', 'Amatas novads', 'Amatas novads'),
(374, 'LV', 'Apes novads', 'Apes novads'),
(375, 'LV', 'Auces novads', 'Auces novads'),
(376, 'LV', 'BabÄ«tes novads', 'BabÄ«tes novads'),
(377, 'LV', 'Baldones novads', 'Baldones novads'),
(378, 'LV', 'Baltinavas novads', 'Baltinavas novads'),
(379, 'LV', 'LV-BL', 'Balvu novads'),
(380, 'LV', 'LV-BU', 'Bauskas novads'),
(381, 'LV', 'BeverÄ«nas novads', 'BeverÄ«nas novads'),
(382, 'LV', 'BrocÄnu novads', 'BrocÄnu novads'),
(383, 'LV', 'Burtnieku novads', 'Burtnieku novads'),
(384, 'LV', 'Carnikavas novads', 'Carnikavas novads'),
(385, 'LV', 'Cesvaines novads', 'Cesvaines novads'),
(386, 'LV', 'Ciblas novads', 'Ciblas novads'),
(387, 'LV', 'LV-CE', 'CÄsu novads'),
(388, 'LV', 'Dagdas novads', 'Dagdas novads'),
(389, 'LV', 'LV-DA', 'Daugavpils novads'),
(390, 'LV', 'LV-DO', 'Dobeles novads'),
(391, 'LV', 'Dundagas novads', 'Dundagas novads'),
(392, 'LV', 'Durbes novads', 'Durbes novads'),
(393, 'LV', 'Engures novads', 'Engures novads'),
(394, 'LV', 'Garkalnes novads', 'Garkalnes novads'),
(395, 'LV', 'GrobiÅas novads', 'GrobiÅas novads'),
(396, 'LV', 'LV-GU', 'Gulbenes novads'),
(397, 'LV', 'Iecavas novads', 'Iecavas novads'),
(398, 'LV', 'IkÅ¡Ä·iles novads', 'IkÅ¡Ä·iles novads'),
(399, 'LV', 'IlÅ«kstes novads', 'IlÅ«kstes novads'),
(400, 'LV', 'InÄukalna novads', 'InÄukalna novads'),
(401, 'LV', 'Jaunjelgavas novads', 'Jaunjelgavas novads'),
(402, 'LV', 'Jaunpiebalgas novads', 'Jaunpiebalgas novads'),
(403, 'LV', 'Jaunpils novads', 'Jaunpils novads'),
(404, 'LV', 'LV-JL', 'Jelgavas novads'),
(405, 'LV', 'LV-JK', 'JÄkabpils novads'),
(406, 'LV', 'Kandavas novads', 'Kandavas novads'),
(407, 'LV', 'Kokneses novads', 'Kokneses novads'),
(408, 'LV', 'Krimuldas novads', 'Krimuldas novads'),
(409, 'LV', 'Krustpils novads', 'Krustpils novads'),
(410, 'LV', 'LV-KR', 'KrÄslavas novads'),
(411, 'LV', 'LV-KU', 'KuldÄ«gas novads'),
(412, 'LV', 'KÄrsavas novads', 'KÄrsavas novads'),
(413, 'LV', 'LielvÄrdes novads', 'LielvÄrdes novads'),
(414, 'LV', 'LV-LM', 'LimbaÅ¾u novads'),
(415, 'LV', 'LubÄnas novads', 'LubÄnas novads'),
(416, 'LV', 'LV-LU', 'Ludzas novads'),
(417, 'LV', 'LÄ«gatnes novads', 'LÄ«gatnes novads'),
(418, 'LV', 'LÄ«vÄnu novads', 'LÄ«vÄnu novads'),
(419, 'LV', 'LV-MA', 'Madonas novads'),
(420, 'LV', 'Mazsalacas novads', 'Mazsalacas novads'),
(421, 'LV', 'MÄlpils novads', 'MÄlpils novads'),
(422, 'LV', 'MÄrupes novads', 'MÄrupes novads'),
(423, 'LV', 'NaukÅ¡Änu novads', 'NaukÅ¡Änu novads'),
(424, 'LV', 'Neretas novads', 'Neretas novads'),
(425, 'LV', 'NÄ«cas novads', 'NÄ«cas novads'),
(426, 'LV', 'LV-OG', 'Ogres novads'),
(427, 'LV', 'Olaines novads', 'Olaines novads'),
(428, 'LV', 'Ozolnieku novads', 'Ozolnieku novads'),
(429, 'LV', 'LV-PR', 'PreiÄ¼u novads'),
(430, 'LV', 'Priekules novads', 'Priekules novads'),
(431, 'LV', 'PriekuÄ¼u novads', 'PriekuÄ¼u novads'),
(432, 'LV', 'PÄrgaujas novads', 'PÄrgaujas novads'),
(433, 'LV', 'PÄvilostas novads', 'PÄvilostas novads'),
(434, 'LV', 'PÄ¼aviÅu novads', 'PÄ¼aviÅu novads'),
(435, 'LV', 'Raunas novads', 'Raunas novads'),
(436, 'LV', 'RiebiÅu novads', 'RiebiÅu novads'),
(437, 'LV', 'Rojas novads', 'Rojas novads'),
(438, 'LV', 'RopaÅ¾u novads', 'RopaÅ¾u novads'),
(439, 'LV', 'Rucavas novads', 'Rucavas novads'),
(440, 'LV', 'RugÄju novads', 'RugÄju novads'),
(441, 'LV', 'RundÄles novads', 'RundÄles novads'),
(442, 'LV', 'LV-RE', 'RÄzeknes novads'),
(443, 'LV', 'RÅ«jienas novads', 'RÅ«jienas novads'),
(444, 'LV', 'SalacgrÄ«vas novads', 'SalacgrÄ«vas novads'),
(445, 'LV', 'Salas novads', 'Salas novads'),
(446, 'LV', 'Salaspils novads', 'Salaspils novads'),
(447, 'LV', 'LV-SA', 'Saldus novads'),
(448, 'LV', 'Saulkrastu novads', 'Saulkrastu novads'),
(449, 'LV', 'Siguldas novads', 'Siguldas novads'),
(450, 'LV', 'Skrundas novads', 'Skrundas novads'),
(451, 'LV', 'SkrÄ«veru novads', 'SkrÄ«veru novads'),
(452, 'LV', 'Smiltenes novads', 'Smiltenes novads'),
(453, 'LV', 'StopiÅu novads', 'StopiÅu novads'),
(454, 'LV', 'StrenÄu novads', 'StrenÄu novads'),
(455, 'LV', 'SÄjas novads', 'SÄjas novads'),
(456, 'LV', 'LV-TA', 'Talsu novads'),
(457, 'LV', 'LV-TU', 'Tukuma novads'),
(458, 'LV', 'TÄrvetes novads', 'TÄrvetes novads'),
(459, 'LV', 'VaiÅodes novads', 'VaiÅodes novads'),
(460, 'LV', 'LV-VK', 'Valkas novads'),
(461, 'LV', 'LV-VM', 'Valmieras novads'),
(462, 'LV', 'VarakÄ¼Änu novads', 'VarakÄ¼Änu novads'),
(463, 'LV', 'Vecpiebalgas novads', 'Vecpiebalgas novads'),
(464, 'LV', 'Vecumnieku novads', 'Vecumnieku novads'),
(465, 'LV', 'LV-VE', 'Ventspils novads'),
(466, 'LV', 'ViesÄ«tes novads', 'ViesÄ«tes novads'),
(467, 'LV', 'ViÄ¼akas novads', 'ViÄ¼akas novads'),
(468, 'LV', 'ViÄ¼Änu novads', 'ViÄ¼Änu novads'),
(469, 'LV', 'VÄrkavas novads', 'VÄrkavas novads'),
(470, 'LV', 'Zilupes novads', 'Zilupes novads'),
(471, 'LV', 'ÄdaÅ¾u novads', 'ÄdaÅ¾u novads'),
(472, 'LV', 'ÄrgÄ¼u novads', 'ÄrgÄ¼u novads'),
(473, 'LV', 'Ä¶eguma novads', 'Ä¶eguma novads'),
(474, 'LV', 'Ä¶ekavas novads', 'Ä¶ekavas novads'),
(475, 'LT', 'LT-AL', 'Alytaus Apskritis'),
(476, 'LT', 'LT-KU', 'Kauno Apskritis'),
(477, 'LT', 'LT-KL', 'KlaipÄdos Apskritis'),
(478, 'LT', 'LT-MR', 'MarijampolÄs Apskritis'),
(479, 'LT', 'LT-PN', 'PanevÄÅ¾io Apskritis'),
(480, 'LT', 'LT-SA', 'Å iauliÅ³ Apskritis'),
(481, 'LT', 'LT-TA', 'TauragÄs Apskritis'),
(482, 'LT', 'LT-TE', 'TelÅ¡iÅ³ Apskritis'),
(483, 'LT', 'LT-UT', 'Utenos Apskritis'),
(484, 'LT', 'LT-VL', 'Vilniaus Apskritis');

-- --------------------------------------------------------

--
-- Table structure for table `directory_country_region_name`
--

CREATE TABLE IF NOT EXISTS `directory_country_region_name` (
  `locale` varchar(8) NOT NULL DEFAULT '' COMMENT 'Locale',
  `region_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Region Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Region Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country Region Name';

--
-- Dumping data for table `directory_country_region_name`
--

INSERT INTO `directory_country_region_name` (`locale`, `region_id`, `name`) VALUES
('en_US', 1, 'Alabama'),
('en_US', 2, 'Alaska'),
('en_US', 3, 'American Samoa'),
('en_US', 4, 'Arizona'),
('en_US', 5, 'Arkansas'),
('en_US', 6, 'Armed Forces Africa'),
('en_US', 7, 'Armed Forces Americas'),
('en_US', 8, 'Armed Forces Canada'),
('en_US', 9, 'Armed Forces Europe'),
('en_US', 10, 'Armed Forces Middle East'),
('en_US', 11, 'Armed Forces Pacific'),
('en_US', 12, 'California'),
('en_US', 13, 'Colorado'),
('en_US', 14, 'Connecticut'),
('en_US', 15, 'Delaware'),
('en_US', 16, 'District of Columbia'),
('en_US', 17, 'Federated States Of Micronesia'),
('en_US', 18, 'Florida'),
('en_US', 19, 'Georgia'),
('en_US', 20, 'Guam'),
('en_US', 21, 'Hawaii'),
('en_US', 22, 'Idaho'),
('en_US', 23, 'Illinois'),
('en_US', 24, 'Indiana'),
('en_US', 25, 'Iowa'),
('en_US', 26, 'Kansas'),
('en_US', 27, 'Kentucky'),
('en_US', 28, 'Louisiana'),
('en_US', 29, 'Maine'),
('en_US', 30, 'Marshall Islands'),
('en_US', 31, 'Maryland'),
('en_US', 32, 'Massachusetts'),
('en_US', 33, 'Michigan'),
('en_US', 34, 'Minnesota'),
('en_US', 35, 'Mississippi'),
('en_US', 36, 'Missouri'),
('en_US', 37, 'Montana'),
('en_US', 38, 'Nebraska'),
('en_US', 39, 'Nevada'),
('en_US', 40, 'New Hampshire'),
('en_US', 41, 'New Jersey'),
('en_US', 42, 'New Mexico'),
('en_US', 43, 'New York'),
('en_US', 44, 'North Carolina'),
('en_US', 45, 'North Dakota'),
('en_US', 46, 'Northern Mariana Islands'),
('en_US', 47, 'Ohio'),
('en_US', 48, 'Oklahoma'),
('en_US', 49, 'Oregon'),
('en_US', 50, 'Palau'),
('en_US', 51, 'Pennsylvania'),
('en_US', 52, 'Puerto Rico'),
('en_US', 53, 'Rhode Island'),
('en_US', 54, 'South Carolina'),
('en_US', 55, 'South Dakota'),
('en_US', 56, 'Tennessee'),
('en_US', 57, 'Texas'),
('en_US', 58, 'Utah'),
('en_US', 59, 'Vermont'),
('en_US', 60, 'Virgin Islands'),
('en_US', 61, 'Virginia'),
('en_US', 62, 'Washington'),
('en_US', 63, 'West Virginia'),
('en_US', 64, 'Wisconsin'),
('en_US', 65, 'Wyoming'),
('en_US', 66, 'Alberta'),
('en_US', 67, 'British Columbia'),
('en_US', 68, 'Manitoba'),
('en_US', 69, 'Newfoundland and Labrador'),
('en_US', 70, 'New Brunswick'),
('en_US', 71, 'Nova Scotia'),
('en_US', 72, 'Northwest Territories'),
('en_US', 73, 'Nunavut'),
('en_US', 74, 'Ontario'),
('en_US', 75, 'Prince Edward Island'),
('en_US', 76, 'Quebec'),
('en_US', 77, 'Saskatchewan'),
('en_US', 78, 'Yukon Territory'),
('en_US', 79, 'Niedersachsen'),
('en_US', 80, 'Baden-WÃ¼rttemberg'),
('en_US', 81, 'Bayern'),
('en_US', 82, 'Berlin'),
('en_US', 83, 'Brandenburg'),
('en_US', 84, 'Bremen'),
('en_US', 85, 'Hamburg'),
('en_US', 86, 'Hessen'),
('en_US', 87, 'Mecklenburg-Vorpommern'),
('en_US', 88, 'Nordrhein-Westfalen'),
('en_US', 89, 'Rheinland-Pfalz'),
('en_US', 90, 'Saarland'),
('en_US', 91, 'Sachsen'),
('en_US', 92, 'Sachsen-Anhalt'),
('en_US', 93, 'Schleswig-Holstein'),
('en_US', 94, 'ThÃ¼ringen'),
('en_US', 95, 'Wien'),
('en_US', 96, 'NiederÃ¶sterreich'),
('en_US', 97, 'OberÃ¶sterreich'),
('en_US', 98, 'Salzburg'),
('en_US', 99, 'KÃ¤rnten'),
('en_US', 100, 'Steiermark'),
('en_US', 101, 'Tirol'),
('en_US', 102, 'Burgenland'),
('en_US', 103, 'Voralberg'),
('en_US', 104, 'Aargau'),
('en_US', 105, 'Appenzell Innerrhoden'),
('en_US', 106, 'Appenzell Ausserrhoden'),
('en_US', 107, 'Bern'),
('en_US', 108, 'Basel-Landschaft'),
('en_US', 109, 'Basel-Stadt'),
('en_US', 110, 'Freiburg'),
('en_US', 111, 'Genf'),
('en_US', 112, 'Glarus'),
('en_US', 113, 'GraubÃ¼nden'),
('en_US', 114, 'Jura'),
('en_US', 115, 'Luzern'),
('en_US', 116, 'Neuenburg'),
('en_US', 117, 'Nidwalden'),
('en_US', 118, 'Obwalden'),
('en_US', 119, 'St. Gallen'),
('en_US', 120, 'Schaffhausen'),
('en_US', 121, 'Solothurn'),
('en_US', 122, 'Schwyz'),
('en_US', 123, 'Thurgau'),
('en_US', 124, 'Tessin'),
('en_US', 125, 'Uri'),
('en_US', 126, 'Waadt'),
('en_US', 127, 'Wallis'),
('en_US', 128, 'Zug'),
('en_US', 129, 'ZÃ¼rich'),
('en_US', 130, 'A CoruÃ±a'),
('en_US', 131, 'Alava'),
('en_US', 132, 'Albacete'),
('en_US', 133, 'Alicante'),
('en_US', 134, 'Almeria'),
('en_US', 135, 'Asturias'),
('en_US', 136, 'Avila'),
('en_US', 137, 'Badajoz'),
('en_US', 138, 'Baleares'),
('en_US', 139, 'Barcelona'),
('en_US', 140, 'Burgos'),
('en_US', 141, 'Caceres'),
('en_US', 142, 'Cadiz'),
('en_US', 143, 'Cantabria'),
('en_US', 144, 'Castellon'),
('en_US', 145, 'Ceuta'),
('en_US', 146, 'Ciudad Real'),
('en_US', 147, 'Cordoba'),
('en_US', 148, 'Cuenca'),
('en_US', 149, 'Girona'),
('en_US', 150, 'Granada'),
('en_US', 151, 'Guadalajara'),
('en_US', 152, 'Guipuzcoa'),
('en_US', 153, 'Huelva'),
('en_US', 154, 'Huesca'),
('en_US', 155, 'Jaen'),
('en_US', 156, 'La Rioja'),
('en_US', 157, 'Las Palmas'),
('en_US', 158, 'Leon'),
('en_US', 159, 'Lleida'),
('en_US', 160, 'Lugo'),
('en_US', 161, 'Madrid'),
('en_US', 162, 'Malaga'),
('en_US', 163, 'Melilla'),
('en_US', 164, 'Murcia'),
('en_US', 165, 'Navarra'),
('en_US', 166, 'Ourense'),
('en_US', 167, 'Palencia'),
('en_US', 168, 'Pontevedra'),
('en_US', 169, 'Salamanca'),
('en_US', 170, 'Santa Cruz de Tenerife'),
('en_US', 171, 'Segovia'),
('en_US', 172, 'Sevilla'),
('en_US', 173, 'Soria'),
('en_US', 174, 'Tarragona'),
('en_US', 175, 'Teruel'),
('en_US', 176, 'Toledo'),
('en_US', 177, 'Valencia'),
('en_US', 178, 'Valladolid'),
('en_US', 179, 'Vizcaya'),
('en_US', 180, 'Zamora'),
('en_US', 181, 'Zaragoza'),
('en_US', 182, 'Ain'),
('en_US', 183, 'Aisne'),
('en_US', 184, 'Allier'),
('en_US', 185, 'Alpes-de-Haute-Provence'),
('en_US', 186, 'Hautes-Alpes'),
('en_US', 187, 'Alpes-Maritimes'),
('en_US', 188, 'ArdÃ¨che'),
('en_US', 189, 'Ardennes'),
('en_US', 190, 'AriÃ¨ge'),
('en_US', 191, 'Aube'),
('en_US', 192, 'Aude'),
('en_US', 193, 'Aveyron'),
('en_US', 194, 'Bouches-du-RhÃ´ne'),
('en_US', 195, 'Calvados'),
('en_US', 196, 'Cantal'),
('en_US', 197, 'Charente'),
('en_US', 198, 'Charente-Maritime'),
('en_US', 199, 'Cher'),
('en_US', 200, 'CorrÃ¨ze'),
('en_US', 201, 'Corse-du-Sud'),
('en_US', 202, 'Haute-Corse'),
('en_US', 203, 'CÃ´te-d''Or'),
('en_US', 204, 'CÃ´tes-d''Armor'),
('en_US', 205, 'Creuse'),
('en_US', 206, 'Dordogne'),
('en_US', 207, 'Doubs'),
('en_US', 208, 'DrÃ´me'),
('en_US', 209, 'Eure'),
('en_US', 210, 'Eure-et-Loir'),
('en_US', 211, 'FinistÃ¨re'),
('en_US', 212, 'Gard'),
('en_US', 213, 'Haute-Garonne'),
('en_US', 214, 'Gers'),
('en_US', 215, 'Gironde'),
('en_US', 216, 'HÃ©rault'),
('en_US', 217, 'Ille-et-Vilaine'),
('en_US', 218, 'Indre'),
('en_US', 219, 'Indre-et-Loire'),
('en_US', 220, 'IsÃ¨re'),
('en_US', 221, 'Jura'),
('en_US', 222, 'Landes'),
('en_US', 223, 'Loir-et-Cher'),
('en_US', 224, 'Loire'),
('en_US', 225, 'Haute-Loire'),
('en_US', 226, 'Loire-Atlantique'),
('en_US', 227, 'Loiret'),
('en_US', 228, 'Lot'),
('en_US', 229, 'Lot-et-Garonne'),
('en_US', 230, 'LozÃ¨re'),
('en_US', 231, 'Maine-et-Loire'),
('en_US', 232, 'Manche'),
('en_US', 233, 'Marne'),
('en_US', 234, 'Haute-Marne'),
('en_US', 235, 'Mayenne'),
('en_US', 236, 'Meurthe-et-Moselle'),
('en_US', 237, 'Meuse'),
('en_US', 238, 'Morbihan'),
('en_US', 239, 'Moselle'),
('en_US', 240, 'NiÃ¨vre'),
('en_US', 241, 'Nord'),
('en_US', 242, 'Oise'),
('en_US', 243, 'Orne'),
('en_US', 244, 'Pas-de-Calais'),
('en_US', 245, 'Puy-de-DÃ´me'),
('en_US', 246, 'PyrÃ©nÃ©es-Atlantiques'),
('en_US', 247, 'Hautes-PyrÃ©nÃ©es'),
('en_US', 248, 'PyrÃ©nÃ©es-Orientales'),
('en_US', 249, 'Bas-Rhin'),
('en_US', 250, 'Haut-Rhin'),
('en_US', 251, 'RhÃ´ne'),
('en_US', 252, 'Haute-SaÃ´ne'),
('en_US', 253, 'SaÃ´ne-et-Loire'),
('en_US', 254, 'Sarthe'),
('en_US', 255, 'Savoie'),
('en_US', 256, 'Haute-Savoie'),
('en_US', 257, 'Paris'),
('en_US', 258, 'Seine-Maritime'),
('en_US', 259, 'Seine-et-Marne'),
('en_US', 260, 'Yvelines'),
('en_US', 261, 'Deux-SÃ¨vres'),
('en_US', 262, 'Somme'),
('en_US', 263, 'Tarn'),
('en_US', 264, 'Tarn-et-Garonne'),
('en_US', 265, 'Var'),
('en_US', 266, 'Vaucluse'),
('en_US', 267, 'VendÃ©e'),
('en_US', 268, 'Vienne'),
('en_US', 269, 'Haute-Vienne'),
('en_US', 270, 'Vosges'),
('en_US', 271, 'Yonne'),
('en_US', 272, 'Territoire-de-Belfort'),
('en_US', 273, 'Essonne'),
('en_US', 274, 'Hauts-de-Seine'),
('en_US', 275, 'Seine-Saint-Denis'),
('en_US', 276, 'Val-de-Marne'),
('en_US', 277, 'Val-d''Oise'),
('en_US', 278, 'Alba'),
('en_US', 279, 'Arad'),
('en_US', 280, 'ArgeÅ'),
('en_US', 281, 'BacÄu'),
('en_US', 282, 'Bihor'),
('en_US', 283, 'BistriÅ£a-NÄsÄud'),
('en_US', 284, 'BotoÅani'),
('en_US', 285, 'BraÅov'),
('en_US', 286, 'BrÄila'),
('en_US', 287, 'BucureÅti'),
('en_US', 288, 'BuzÄu'),
('en_US', 289, 'CaraÅ-Severin'),
('en_US', 290, 'CÄlÄraÅi'),
('en_US', 291, 'Cluj'),
('en_US', 292, 'ConstanÅ£a'),
('en_US', 293, 'Covasna'),
('en_US', 294, 'DÃ¢mboviÅ£a'),
('en_US', 295, 'Dolj'),
('en_US', 296, 'GalaÅ£i'),
('en_US', 297, 'Giurgiu'),
('en_US', 298, 'Gorj'),
('en_US', 299, 'Harghita'),
('en_US', 300, 'Hunedoara'),
('en_US', 301, 'IalomiÅ£a'),
('en_US', 302, 'IaÅi'),
('en_US', 303, 'Ilfov'),
('en_US', 304, 'MaramureÅ'),
('en_US', 305, 'MehedinÅ£i'),
('en_US', 306, 'MureÅ'),
('en_US', 307, 'NeamÅ£'),
('en_US', 308, 'Olt'),
('en_US', 309, 'Prahova'),
('en_US', 310, 'Satu-Mare'),
('en_US', 311, 'SÄlaj'),
('en_US', 312, 'Sibiu'),
('en_US', 313, 'Suceava'),
('en_US', 314, 'Teleorman'),
('en_US', 315, 'TimiÅ'),
('en_US', 316, 'Tulcea'),
('en_US', 317, 'Vaslui'),
('en_US', 318, 'VÃ¢lcea'),
('en_US', 319, 'Vrancea'),
('en_US', 320, 'Lappi'),
('en_US', 321, 'Pohjois-Pohjanmaa'),
('en_US', 322, 'Kainuu'),
('en_US', 323, 'Pohjois-Karjala'),
('en_US', 324, 'Pohjois-Savo'),
('en_US', 325, 'EtelÃ¤-Savo'),
('en_US', 326, 'EtelÃ¤-Pohjanmaa'),
('en_US', 327, 'Pohjanmaa'),
('en_US', 328, 'Pirkanmaa'),
('en_US', 329, 'Satakunta'),
('en_US', 330, 'Keski-Pohjanmaa'),
('en_US', 331, 'Keski-Suomi'),
('en_US', 332, 'Varsinais-Suomi'),
('en_US', 333, 'EtelÃ¤-Karjala'),
('en_US', 334, 'PÃ¤ijÃ¤t-HÃ¤me'),
('en_US', 335, 'Kanta-HÃ¤me'),
('en_US', 336, 'Uusimaa'),
('en_US', 337, 'ItÃ¤-Uusimaa'),
('en_US', 338, 'Kymenlaakso'),
('en_US', 339, 'Ahvenanmaa'),
('en_US', 340, 'Harjumaa'),
('en_US', 341, 'Hiiumaa'),
('en_US', 342, 'Ida-Virumaa'),
('en_US', 343, 'JÃµgevamaa'),
('en_US', 344, 'JÃ¤rvamaa'),
('en_US', 345, 'LÃ¤Ã¤nemaa'),
('en_US', 346, 'LÃ¤Ã¤ne-Virumaa'),
('en_US', 347, 'PÃµlvamaa'),
('en_US', 348, 'PÃ¤rnumaa'),
('en_US', 349, 'Raplamaa'),
('en_US', 350, 'Saaremaa'),
('en_US', 351, 'Tartumaa'),
('en_US', 352, 'Valgamaa'),
('en_US', 353, 'Viljandimaa'),
('en_US', 354, 'VÃµrumaa'),
('en_US', 355, 'Daugavpils'),
('en_US', 356, 'Jelgava'),
('en_US', 357, 'JÄkabpils'),
('en_US', 358, 'JÅ«rmala'),
('en_US', 359, 'LiepÄja'),
('en_US', 360, 'LiepÄjas novads'),
('en_US', 361, 'RÄzekne'),
('en_US', 362, 'RÄ«ga'),
('en_US', 363, 'RÄ«gas novads'),
('en_US', 364, 'Valmiera'),
('en_US', 365, 'Ventspils'),
('en_US', 366, 'Aglonas novads'),
('en_US', 367, 'Aizkraukles novads'),
('en_US', 368, 'Aizputes novads'),
('en_US', 369, 'AknÄ«stes novads'),
('en_US', 370, 'Alojas novads'),
('en_US', 371, 'Alsungas novads'),
('en_US', 372, 'AlÅ«ksnes novads'),
('en_US', 373, 'Amatas novads'),
('en_US', 374, 'Apes novads'),
('en_US', 375, 'Auces novads'),
('en_US', 376, 'BabÄ«tes novads'),
('en_US', 377, 'Baldones novads'),
('en_US', 378, 'Baltinavas novads'),
('en_US', 379, 'Balvu novads'),
('en_US', 380, 'Bauskas novads'),
('en_US', 381, 'BeverÄ«nas novads'),
('en_US', 382, 'BrocÄnu novads'),
('en_US', 383, 'Burtnieku novads'),
('en_US', 384, 'Carnikavas novads'),
('en_US', 385, 'Cesvaines novads'),
('en_US', 386, 'Ciblas novads'),
('en_US', 387, 'CÄsu novads'),
('en_US', 388, 'Dagdas novads'),
('en_US', 389, 'Daugavpils novads'),
('en_US', 390, 'Dobeles novads'),
('en_US', 391, 'Dundagas novads'),
('en_US', 392, 'Durbes novads'),
('en_US', 393, 'Engures novads'),
('en_US', 394, 'Garkalnes novads'),
('en_US', 395, 'GrobiÅas novads'),
('en_US', 396, 'Gulbenes novads'),
('en_US', 397, 'Iecavas novads'),
('en_US', 398, 'IkÅ¡Ä·iles novads'),
('en_US', 399, 'IlÅ«kstes novads'),
('en_US', 400, 'InÄukalna novads'),
('en_US', 401, 'Jaunjelgavas novads'),
('en_US', 402, 'Jaunpiebalgas novads'),
('en_US', 403, 'Jaunpils novads'),
('en_US', 404, 'Jelgavas novads'),
('en_US', 405, 'JÄkabpils novads'),
('en_US', 406, 'Kandavas novads'),
('en_US', 407, 'Kokneses novads'),
('en_US', 408, 'Krimuldas novads'),
('en_US', 409, 'Krustpils novads'),
('en_US', 410, 'KrÄslavas novads'),
('en_US', 411, 'KuldÄ«gas novads'),
('en_US', 412, 'KÄrsavas novads'),
('en_US', 413, 'LielvÄrdes novads'),
('en_US', 414, 'LimbaÅ¾u novads'),
('en_US', 415, 'LubÄnas novads'),
('en_US', 416, 'Ludzas novads'),
('en_US', 417, 'LÄ«gatnes novads'),
('en_US', 418, 'LÄ«vÄnu novads'),
('en_US', 419, 'Madonas novads'),
('en_US', 420, 'Mazsalacas novads'),
('en_US', 421, 'MÄlpils novads'),
('en_US', 422, 'MÄrupes novads'),
('en_US', 423, 'NaukÅ¡Änu novads'),
('en_US', 424, 'Neretas novads'),
('en_US', 425, 'NÄ«cas novads'),
('en_US', 426, 'Ogres novads'),
('en_US', 427, 'Olaines novads'),
('en_US', 428, 'Ozolnieku novads'),
('en_US', 429, 'PreiÄ¼u novads'),
('en_US', 430, 'Priekules novads'),
('en_US', 431, 'PriekuÄ¼u novads'),
('en_US', 432, 'PÄrgaujas novads'),
('en_US', 433, 'PÄvilostas novads'),
('en_US', 434, 'PÄ¼aviÅu novads'),
('en_US', 435, 'Raunas novads'),
('en_US', 436, 'RiebiÅu novads'),
('en_US', 437, 'Rojas novads'),
('en_US', 438, 'RopaÅ¾u novads'),
('en_US', 439, 'Rucavas novads'),
('en_US', 440, 'RugÄju novads'),
('en_US', 441, 'RundÄles novads'),
('en_US', 442, 'RÄzeknes novads'),
('en_US', 443, 'RÅ«jienas novads'),
('en_US', 444, 'SalacgrÄ«vas novads'),
('en_US', 445, 'Salas novads'),
('en_US', 446, 'Salaspils novads'),
('en_US', 447, 'Saldus novads'),
('en_US', 448, 'Saulkrastu novads'),
('en_US', 449, 'Siguldas novads'),
('en_US', 450, 'Skrundas novads'),
('en_US', 451, 'SkrÄ«veru novads'),
('en_US', 452, 'Smiltenes novads'),
('en_US', 453, 'StopiÅu novads'),
('en_US', 454, 'StrenÄu novads'),
('en_US', 455, 'SÄjas novads'),
('en_US', 456, 'Talsu novads'),
('en_US', 457, 'Tukuma novads'),
('en_US', 458, 'TÄrvetes novads'),
('en_US', 459, 'VaiÅodes novads'),
('en_US', 460, 'Valkas novads'),
('en_US', 461, 'Valmieras novads'),
('en_US', 462, 'VarakÄ¼Änu novads'),
('en_US', 463, 'Vecpiebalgas novads'),
('en_US', 464, 'Vecumnieku novads'),
('en_US', 465, 'Ventspils novads'),
('en_US', 466, 'ViesÄ«tes novads'),
('en_US', 467, 'ViÄ¼akas novads'),
('en_US', 468, 'ViÄ¼Änu novads'),
('en_US', 469, 'VÄrkavas novads'),
('en_US', 470, 'Zilupes novads'),
('en_US', 471, 'ÄdaÅ¾u novads'),
('en_US', 472, 'ÄrgÄ¼u novads'),
('en_US', 473, 'Ä¶eguma novads'),
('en_US', 474, 'Ä¶ekavas novads'),
('en_US', 475, 'Alytaus Apskritis'),
('en_US', 476, 'Kauno Apskritis'),
('en_US', 477, 'KlaipÄdos Apskritis'),
('en_US', 478, 'MarijampolÄs Apskritis'),
('en_US', 479, 'PanevÄÅ¾io Apskritis'),
('en_US', 480, 'Å iauliÅ³ Apskritis'),
('en_US', 481, 'TauragÄs Apskritis'),
('en_US', 482, 'TelÅ¡iÅ³ Apskritis'),
('en_US', 483, 'Utenos Apskritis'),
('en_US', 484, 'Vilniaus Apskritis');

-- --------------------------------------------------------

--
-- Table structure for table `directory_currency_rate`
--

CREATE TABLE IF NOT EXISTS `directory_currency_rate` (
  `currency_from` varchar(3) NOT NULL DEFAULT '' COMMENT 'Currency Code Convert From',
  `currency_to` varchar(3) NOT NULL DEFAULT '' COMMENT 'Currency Code Convert To',
  `rate` decimal(24,12) NOT NULL DEFAULT '0.000000000000' COMMENT 'Currency Conversion Rate'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Currency Rate';

--
-- Dumping data for table `directory_currency_rate`
--

INSERT INTO `directory_currency_rate` (`currency_from`, `currency_to`, `rate`) VALUES
('EUR', 'EUR', '1.000000000000'),
('EUR', 'USD', '1.415000000000'),
('USD', 'EUR', '0.706700000000'),
('USD', 'USD', '1.000000000000');

-- --------------------------------------------------------

--
-- Table structure for table `downloadable_link`
--

CREATE TABLE IF NOT EXISTS `downloadable_link` (
  `link_id` int(10) unsigned NOT NULL COMMENT 'Link ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort order',
  `number_of_downloads` int(11) DEFAULT NULL COMMENT 'Number of downloads',
  `is_shareable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Shareable flag',
  `link_url` varchar(255) DEFAULT NULL COMMENT 'Link Url',
  `link_file` varchar(255) DEFAULT NULL COMMENT 'Link File',
  `link_type` varchar(20) DEFAULT NULL COMMENT 'Link Type',
  `sample_url` varchar(255) DEFAULT NULL COMMENT 'Sample Url',
  `sample_file` varchar(255) DEFAULT NULL COMMENT 'Sample File',
  `sample_type` varchar(20) DEFAULT NULL COMMENT 'Sample Type'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Table';

-- --------------------------------------------------------

--
-- Table structure for table `downloadable_link_price`
--

CREATE TABLE IF NOT EXISTS `downloadable_link_price` (
  `price_id` int(10) unsigned NOT NULL COMMENT 'Price ID',
  `link_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Price Table';

-- --------------------------------------------------------

--
-- Table structure for table `downloadable_link_purchased`
--

CREATE TABLE IF NOT EXISTS `downloadable_link_purchased` (
  `purchased_id` int(10) unsigned NOT NULL COMMENT 'Purchased ID',
  `order_id` int(10) unsigned DEFAULT '0' COMMENT 'Order ID',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment ID',
  `order_item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Order Item ID',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of creation',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of modification',
  `customer_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer ID',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product name',
  `product_sku` varchar(255) DEFAULT NULL COMMENT 'Product sku',
  `link_section_title` varchar(255) DEFAULT NULL COMMENT 'Link_section_title'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Purchased Table';

-- --------------------------------------------------------

--
-- Table structure for table `downloadable_link_purchased_item`
--

CREATE TABLE IF NOT EXISTS `downloadable_link_purchased_item` (
  `item_id` int(10) unsigned NOT NULL COMMENT 'Item ID',
  `purchased_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Purchased ID',
  `order_item_id` int(10) unsigned DEFAULT '0' COMMENT 'Order Item ID',
  `product_id` int(10) unsigned DEFAULT '0' COMMENT 'Product ID',
  `link_hash` varchar(255) DEFAULT NULL COMMENT 'Link hash',
  `number_of_downloads_bought` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of downloads bought',
  `number_of_downloads_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of downloads used',
  `link_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `link_title` varchar(255) DEFAULT NULL COMMENT 'Link Title',
  `is_shareable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Shareable Flag',
  `link_url` varchar(255) DEFAULT NULL COMMENT 'Link Url',
  `link_file` varchar(255) DEFAULT NULL COMMENT 'Link File',
  `link_type` varchar(255) DEFAULT NULL COMMENT 'Link Type',
  `status` varchar(50) DEFAULT NULL COMMENT 'Status',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Creation Time',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Update Time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Purchased Item Table';

-- --------------------------------------------------------

--
-- Table structure for table `downloadable_link_title`
--

CREATE TABLE IF NOT EXISTS `downloadable_link_title` (
  `title_id` int(10) unsigned NOT NULL COMMENT 'Title ID',
  `link_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Link Title Table';

-- --------------------------------------------------------

--
-- Table structure for table `downloadable_sample`
--

CREATE TABLE IF NOT EXISTS `downloadable_sample` (
  `sample_id` int(10) unsigned NOT NULL COMMENT 'Sample ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `sample_url` varchar(255) DEFAULT NULL COMMENT 'Sample URL',
  `sample_file` varchar(255) DEFAULT NULL COMMENT 'Sample file',
  `sample_type` varchar(20) DEFAULT NULL COMMENT 'Sample Type',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Sample Table';

-- --------------------------------------------------------

--
-- Table structure for table `downloadable_sample_title`
--

CREATE TABLE IF NOT EXISTS `downloadable_sample_title` (
  `title_id` int(10) unsigned NOT NULL COMMENT 'Title ID',
  `sample_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sample ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Sample Title Table';

-- --------------------------------------------------------

--
-- Table structure for table `eav_attribute`
--

CREATE TABLE IF NOT EXISTS `eav_attribute` (
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_code` varchar(255) DEFAULT NULL COMMENT 'Attribute Code',
  `attribute_model` varchar(255) DEFAULT NULL COMMENT 'Attribute Model',
  `backend_model` varchar(255) DEFAULT NULL COMMENT 'Backend Model',
  `backend_type` varchar(8) NOT NULL DEFAULT 'static' COMMENT 'Backend Type',
  `backend_table` varchar(255) DEFAULT NULL COMMENT 'Backend Table',
  `frontend_model` varchar(255) DEFAULT NULL COMMENT 'Frontend Model',
  `frontend_input` varchar(50) DEFAULT NULL COMMENT 'Frontend Input',
  `frontend_label` varchar(255) DEFAULT NULL COMMENT 'Frontend Label',
  `frontend_class` varchar(255) DEFAULT NULL COMMENT 'Frontend Class',
  `source_model` varchar(255) DEFAULT NULL COMMENT 'Source Model',
  `is_required` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Defines Is Required',
  `is_user_defined` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Defines Is User Defined',
  `default_value` text COMMENT 'Default Value',
  `is_unique` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Defines Is Unique',
  `note` varchar(255) DEFAULT NULL COMMENT 'Note'
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8 COMMENT='Eav Attribute';

--
-- Dumping data for table `eav_attribute`
--

INSERT INTO `eav_attribute` (`attribute_id`, `entity_type_id`, `attribute_code`, `attribute_model`, `backend_model`, `backend_type`, `backend_table`, `frontend_model`, `frontend_input`, `frontend_label`, `frontend_class`, `source_model`, `is_required`, `is_user_defined`, `default_value`, `is_unique`, `note`) VALUES
(1, 1, 'website_id', NULL, 'customer/customer_attribute_backend_website', 'static', NULL, NULL, 'select', 'Associate to Website', NULL, 'customer/customer_attribute_source_website', 1, 0, NULL, 0, NULL),
(2, 1, 'store_id', NULL, 'customer/customer_attribute_backend_store', 'static', NULL, NULL, 'select', 'Create In', NULL, 'customer/customer_attribute_source_store', 1, 0, NULL, 0, NULL),
(3, 1, 'created_in', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Created From', NULL, NULL, 0, 0, NULL, 0, NULL),
(4, 1, 'prefix', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Prefix', NULL, NULL, 0, 0, NULL, 0, NULL),
(5, 1, 'firstname', NULL, NULL, 'varchar', NULL, NULL, 'text', 'First Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(6, 1, 'middlename', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Middle Name/Initial', NULL, NULL, 0, 0, NULL, 0, NULL),
(7, 1, 'lastname', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Last Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(8, 1, 'suffix', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Suffix', NULL, NULL, 0, 0, NULL, 0, NULL),
(9, 1, 'email', NULL, NULL, 'static', NULL, NULL, 'text', 'Email', NULL, NULL, 1, 0, NULL, 0, NULL),
(10, 1, 'group_id', NULL, NULL, 'static', NULL, NULL, 'select', 'Group', NULL, 'customer/customer_attribute_source_group', 1, 0, NULL, 0, NULL),
(11, 1, 'dob', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, 'eav/entity_attribute_frontend_datetime', 'date', 'Date Of Birth', NULL, NULL, 0, 0, NULL, 0, NULL),
(12, 1, 'password_hash', NULL, 'customer/customer_attribute_backend_password', 'varchar', NULL, NULL, 'hidden', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(13, 1, 'default_billing', NULL, 'customer/customer_attribute_backend_billing', 'int', NULL, NULL, 'text', 'Default Billing Address', NULL, NULL, 0, 0, NULL, 0, NULL),
(14, 1, 'default_shipping', NULL, 'customer/customer_attribute_backend_shipping', 'int', NULL, NULL, 'text', 'Default Shipping Address', NULL, NULL, 0, 0, NULL, 0, NULL),
(15, 1, 'taxvat', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Tax/VAT Number', NULL, NULL, 0, 0, NULL, 0, NULL),
(16, 1, 'confirmation', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Is Confirmed', NULL, NULL, 0, 0, NULL, 0, NULL),
(17, 1, 'created_at', NULL, NULL, 'static', NULL, NULL, 'datetime', 'Created At', NULL, NULL, 0, 0, NULL, 0, NULL),
(18, 1, 'gender', NULL, NULL, 'int', NULL, NULL, 'select', 'Gender', NULL, 'eav/entity_attribute_source_table', 0, 0, NULL, 0, NULL),
(19, 2, 'prefix', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Prefix', NULL, NULL, 0, 0, NULL, 0, NULL),
(20, 2, 'firstname', NULL, NULL, 'varchar', NULL, NULL, 'text', 'First Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(21, 2, 'middlename', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Middle Name/Initial', NULL, NULL, 0, 0, NULL, 0, NULL),
(22, 2, 'lastname', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Last Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(23, 2, 'suffix', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Suffix', NULL, NULL, 0, 0, NULL, 0, NULL),
(24, 2, 'company', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Company', NULL, NULL, 0, 0, NULL, 0, NULL),
(25, 2, 'street', NULL, 'customer/entity_address_attribute_backend_street', 'text', NULL, NULL, 'multiline', 'Street Address', NULL, NULL, 1, 0, NULL, 0, NULL),
(26, 2, 'city', NULL, NULL, 'varchar', NULL, NULL, 'text', 'City', NULL, NULL, 1, 0, NULL, 0, NULL),
(27, 2, 'country_id', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Country', NULL, 'customer/entity_address_attribute_source_country', 1, 0, NULL, 0, NULL),
(28, 2, 'region', NULL, 'customer/entity_address_attribute_backend_region', 'varchar', NULL, NULL, 'text', 'State/Province', NULL, NULL, 0, 0, NULL, 0, NULL),
(29, 2, 'region_id', NULL, NULL, 'int', NULL, NULL, 'hidden', 'State/Province', NULL, 'customer/entity_address_attribute_source_region', 0, 0, NULL, 0, NULL),
(30, 2, 'postcode', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Zip/Postal Code', NULL, NULL, 1, 0, NULL, 0, NULL),
(31, 2, 'telephone', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Telephone', NULL, NULL, 1, 0, NULL, 0, NULL),
(32, 2, 'fax', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Fax', NULL, NULL, 0, 0, NULL, 0, NULL),
(33, 1, 'rp_token', NULL, NULL, 'varchar', NULL, NULL, 'hidden', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(34, 1, 'rp_token_created_at', NULL, NULL, 'datetime', NULL, NULL, 'date', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(35, 1, 'disable_auto_group_change', NULL, 'customer/attribute_backend_data_boolean', 'static', NULL, NULL, 'boolean', 'Disable Automatic Group Change Based on VAT ID', NULL, NULL, 0, 0, NULL, 0, NULL),
(36, 2, 'vat_id', NULL, NULL, 'varchar', NULL, NULL, 'text', 'VAT number', NULL, NULL, 0, 0, NULL, 0, NULL),
(37, 2, 'vat_is_valid', NULL, NULL, 'int', NULL, NULL, 'text', 'VAT number validity', NULL, NULL, 0, 0, NULL, 0, NULL),
(38, 2, 'vat_request_id', NULL, NULL, 'varchar', NULL, NULL, 'text', 'VAT number validation request ID', NULL, NULL, 0, 0, NULL, 0, NULL),
(39, 2, 'vat_request_date', NULL, NULL, 'varchar', NULL, NULL, 'text', 'VAT number validation request date', NULL, NULL, 0, 0, NULL, 0, NULL),
(40, 2, 'vat_request_success', NULL, NULL, 'int', NULL, NULL, 'text', 'VAT number validation request success', NULL, NULL, 0, 0, NULL, 0, NULL),
(41, 3, 'name', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(42, 3, 'is_active', NULL, NULL, 'int', NULL, NULL, 'select', 'Is Active', NULL, 'eav/entity_attribute_source_boolean', 1, 0, NULL, 0, NULL),
(43, 3, 'url_key', NULL, 'catalog/category_attribute_backend_urlkey', 'varchar', NULL, NULL, 'text', 'URL Key', NULL, NULL, 0, 0, NULL, 0, NULL),
(44, 3, 'description', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Description', NULL, NULL, 0, 0, NULL, 0, NULL),
(45, 3, 'image', NULL, 'catalog/category_attribute_backend_image', 'varchar', NULL, NULL, 'image', 'Image', NULL, NULL, 0, 0, NULL, 0, NULL),
(46, 3, 'meta_title', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Page Title', NULL, NULL, 0, 0, NULL, 0, NULL),
(47, 3, 'meta_keywords', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Meta Keywords', NULL, NULL, 0, 0, NULL, 0, NULL),
(48, 3, 'meta_description', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Meta Description', NULL, NULL, 0, 0, NULL, 0, NULL),
(49, 3, 'display_mode', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Display Mode', NULL, 'catalog/category_attribute_source_mode', 0, 0, NULL, 0, NULL),
(50, 3, 'landing_page', NULL, NULL, 'int', NULL, NULL, 'select', 'CMS Block', NULL, 'catalog/category_attribute_source_page', 0, 0, NULL, 0, NULL),
(51, 3, 'is_anchor', NULL, NULL, 'int', NULL, NULL, 'select', 'Is Anchor', NULL, 'eav/entity_attribute_source_boolean', 0, 0, NULL, 0, NULL),
(52, 3, 'path', NULL, NULL, 'static', NULL, NULL, 'text', 'Path', NULL, NULL, 0, 0, NULL, 0, NULL),
(53, 3, 'position', NULL, NULL, 'static', NULL, NULL, 'text', 'Position', NULL, NULL, 0, 0, NULL, 0, NULL),
(54, 3, 'all_children', NULL, NULL, 'text', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(55, 3, 'path_in_store', NULL, NULL, 'text', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(56, 3, 'children', NULL, NULL, 'text', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(57, 3, 'url_path', NULL, NULL, 'varchar', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(58, 3, 'custom_design', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Custom Design', NULL, 'core/design_source_design', 0, 0, NULL, 0, NULL),
(59, 3, 'custom_design_from', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, NULL, 'date', 'Active From', NULL, NULL, 0, 0, NULL, 0, NULL),
(60, 3, 'custom_design_to', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, NULL, 'date', 'Active To', NULL, NULL, 0, 0, NULL, 0, NULL),
(61, 3, 'page_layout', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Page Layout', NULL, 'catalog/category_attribute_source_layout', 0, 0, NULL, 0, NULL),
(62, 3, 'custom_layout_update', NULL, 'catalog/attribute_backend_customlayoutupdate', 'text', NULL, NULL, 'textarea', 'Custom Layout Update', NULL, NULL, 0, 0, NULL, 0, NULL),
(63, 3, 'level', NULL, NULL, 'static', NULL, NULL, 'text', 'Level', NULL, NULL, 0, 0, NULL, 0, NULL),
(64, 3, 'children_count', NULL, NULL, 'static', NULL, NULL, 'text', 'Children Count', NULL, NULL, 0, 0, NULL, 0, NULL),
(65, 3, 'available_sort_by', NULL, 'catalog/category_attribute_backend_sortby', 'text', NULL, NULL, 'multiselect', 'Available Product Listing Sort By', NULL, 'catalog/category_attribute_source_sortby', 1, 0, NULL, 0, NULL),
(66, 3, 'default_sort_by', NULL, 'catalog/category_attribute_backend_sortby', 'varchar', NULL, NULL, 'select', 'Default Product Listing Sort By', NULL, 'catalog/category_attribute_source_sortby', 1, 0, NULL, 0, NULL),
(67, 3, 'include_in_menu', NULL, NULL, 'int', NULL, NULL, 'select', 'Include in Navigation Menu', NULL, 'eav/entity_attribute_source_boolean', 1, 0, '1', 0, NULL),
(68, 3, 'custom_use_parent_settings', NULL, NULL, 'int', NULL, NULL, 'select', 'Use Parent Category Settings', NULL, 'eav/entity_attribute_source_boolean', 0, 0, NULL, 0, NULL),
(69, 3, 'custom_apply_to_products', NULL, NULL, 'int', NULL, NULL, 'select', 'Apply To Products', NULL, 'eav/entity_attribute_source_boolean', 0, 0, NULL, 0, NULL),
(70, 3, 'filter_price_range', NULL, NULL, 'decimal', NULL, NULL, 'text', 'Layered Navigation Price Step', NULL, NULL, 0, 0, NULL, 0, NULL),
(71, 4, 'name', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(72, 4, 'description', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Description', NULL, NULL, 1, 0, NULL, 0, NULL),
(73, 4, 'short_description', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Short Description', NULL, NULL, 1, 0, NULL, 0, NULL),
(74, 4, 'sku', NULL, 'catalog/product_attribute_backend_sku', 'static', NULL, NULL, 'text', 'SKU', NULL, NULL, 1, 0, NULL, 1, NULL),
(75, 4, 'price', NULL, 'catalog/product_attribute_backend_price', 'decimal', NULL, NULL, 'price', 'Price', NULL, NULL, 1, 0, NULL, 0, NULL),
(76, 4, 'special_price', NULL, 'catalog/product_attribute_backend_price', 'decimal', NULL, NULL, 'price', 'Special Price', NULL, NULL, 0, 0, NULL, 0, NULL),
(77, 4, 'special_from_date', NULL, 'catalog/product_attribute_backend_startdate', 'datetime', NULL, NULL, 'date', 'Special Price From Date', NULL, NULL, 0, 0, NULL, 0, NULL),
(78, 4, 'special_to_date', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, NULL, 'date', 'Special Price To Date', NULL, NULL, 0, 0, NULL, 0, NULL),
(79, 4, 'cost', NULL, 'catalog/product_attribute_backend_price', 'decimal', NULL, NULL, 'price', 'Cost', NULL, NULL, 0, 1, NULL, 0, NULL),
(80, 4, 'weight', NULL, NULL, 'decimal', NULL, NULL, 'weight', 'Weight', NULL, NULL, 1, 0, NULL, 0, NULL),
(81, 4, 'manufacturer', NULL, NULL, 'int', NULL, NULL, 'select', 'Manufacturer', NULL, NULL, 0, 1, NULL, 0, NULL),
(82, 4, 'meta_title', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Meta Title', NULL, NULL, 0, 0, NULL, 0, NULL),
(83, 4, 'meta_keyword', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Meta Keywords', NULL, NULL, 0, 0, NULL, 0, NULL),
(84, 4, 'meta_description', NULL, NULL, 'varchar', NULL, NULL, 'textarea', 'Meta Description', NULL, NULL, 0, 0, NULL, 0, 'Maximum 255 chars'),
(85, 4, 'image', NULL, NULL, 'varchar', NULL, 'catalog/product_attribute_frontend_image', 'media_image', 'Base Image', NULL, NULL, 0, 0, NULL, 0, NULL),
(86, 4, 'small_image', NULL, NULL, 'varchar', NULL, 'catalog/product_attribute_frontend_image', 'media_image', 'Small Image', NULL, NULL, 0, 0, NULL, 0, NULL),
(87, 4, 'thumbnail', NULL, NULL, 'varchar', NULL, 'catalog/product_attribute_frontend_image', 'media_image', 'Thumbnail', NULL, NULL, 0, 0, NULL, 0, NULL),
(88, 4, 'media_gallery', NULL, 'catalog/product_attribute_backend_media', 'varchar', NULL, NULL, 'gallery', 'Media Gallery', NULL, NULL, 0, 0, NULL, 0, NULL),
(89, 4, 'old_id', NULL, NULL, 'int', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(90, 4, 'group_price', NULL, 'catalog/product_attribute_backend_groupprice', 'decimal', NULL, NULL, 'text', 'Group Price', NULL, NULL, 0, 0, NULL, 0, NULL),
(91, 4, 'tier_price', NULL, 'catalog/product_attribute_backend_tierprice', 'decimal', NULL, NULL, 'text', 'Tier Price', NULL, NULL, 0, 0, NULL, 0, NULL),
(92, 4, 'color', NULL, NULL, 'int', NULL, NULL, 'select', 'Color', NULL, NULL, 0, 1, NULL, 0, NULL),
(93, 4, 'news_from_date', NULL, 'catalog/product_attribute_backend_startdate', 'datetime', NULL, NULL, 'date', 'Set Product as New from Date', NULL, NULL, 0, 0, NULL, 0, NULL),
(94, 4, 'news_to_date', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, NULL, 'date', 'Set Product as New to Date', NULL, NULL, 0, 0, NULL, 0, NULL),
(95, 4, 'gallery', NULL, NULL, 'varchar', NULL, NULL, 'gallery', 'Image Gallery', NULL, NULL, 0, 0, NULL, 0, NULL),
(96, 4, 'status', NULL, NULL, 'int', NULL, NULL, 'select', 'Status', NULL, 'catalog/product_status', 1, 0, NULL, 0, NULL),
(97, 4, 'url_key', NULL, 'catalog/product_attribute_backend_urlkey', 'varchar', NULL, NULL, 'text', 'URL Key', NULL, NULL, 0, 0, NULL, 0, NULL),
(98, 4, 'url_path', NULL, NULL, 'varchar', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(99, 4, 'minimal_price', NULL, NULL, 'decimal', NULL, NULL, 'price', 'Minimal Price', NULL, NULL, 0, 0, NULL, 0, NULL),
(100, 4, 'is_recurring', NULL, NULL, 'int', NULL, NULL, 'select', 'Enable Recurring Profile', NULL, 'eav/entity_attribute_source_boolean', 0, 0, NULL, 0, 'Products with recurring profile participate in catalog as nominal items.'),
(101, 4, 'recurring_profile', NULL, 'catalog/product_attribute_backend_recurring', 'text', NULL, NULL, 'text', 'Recurring Payment Profile', NULL, NULL, 0, 0, NULL, 0, NULL),
(102, 4, 'visibility', NULL, NULL, 'int', NULL, NULL, 'select', 'Visibility', NULL, 'catalog/product_visibility', 1, 0, '4', 0, NULL),
(103, 4, 'custom_design', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Custom Design', NULL, 'core/design_source_design', 0, 0, NULL, 0, NULL),
(104, 4, 'custom_design_from', NULL, 'catalog/product_attribute_backend_startdate', 'datetime', NULL, NULL, 'date', 'Active From', NULL, NULL, 0, 0, NULL, 0, NULL),
(105, 4, 'custom_design_to', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, NULL, 'date', 'Active To', NULL, NULL, 0, 0, NULL, 0, NULL),
(106, 4, 'custom_layout_update', NULL, 'catalog/attribute_backend_customlayoutupdate', 'text', NULL, NULL, 'textarea', 'Custom Layout Update', NULL, NULL, 0, 0, NULL, 0, NULL),
(107, 4, 'page_layout', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Page Layout', NULL, 'catalog/product_attribute_source_layout', 0, 0, NULL, 0, NULL),
(108, 4, 'category_ids', NULL, NULL, 'static', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(109, 4, 'options_container', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Display Product Options In', NULL, 'catalog/entity_product_attribute_design_options_container', 0, 0, 'container2', 0, NULL),
(110, 4, 'required_options', NULL, NULL, 'static', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(111, 4, 'has_options', NULL, NULL, 'static', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(112, 4, 'image_label', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Image Label', NULL, NULL, 0, 0, NULL, 0, NULL),
(113, 4, 'small_image_label', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Small Image Label', NULL, NULL, 0, 0, NULL, 0, NULL),
(114, 4, 'thumbnail_label', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Thumbnail Label', NULL, NULL, 0, 0, NULL, 0, NULL),
(115, 4, 'created_at', NULL, 'eav/entity_attribute_backend_time_created', 'static', NULL, NULL, 'text', NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
(116, 4, 'updated_at', NULL, 'eav/entity_attribute_backend_time_updated', 'static', NULL, NULL, 'text', NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
(117, 4, 'country_of_manufacture', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Country of Manufacture', NULL, 'catalog/product_attribute_source_countryofmanufacture', 0, 0, NULL, 0, NULL),
(118, 4, 'msrp_enabled', NULL, 'catalog/product_attribute_backend_msrp', 'varchar', NULL, NULL, 'select', 'Apply MAP', NULL, 'catalog/product_attribute_source_msrp_type_enabled', 0, 0, '2', 0, NULL),
(119, 4, 'msrp_display_actual_price_type', NULL, 'catalog/product_attribute_backend_boolean', 'varchar', NULL, NULL, 'select', 'Display Actual Price', NULL, 'catalog/product_attribute_source_msrp_type_price', 0, 0, '4', 0, NULL),
(120, 4, 'msrp', NULL, 'catalog/product_attribute_backend_price', 'decimal', NULL, NULL, 'price', 'Manufacturer''s Suggested Retail Price', NULL, NULL, 0, 0, NULL, 0, NULL),
(121, 4, 'tax_class_id', NULL, NULL, 'int', NULL, NULL, 'select', 'Tax Class', NULL, 'tax/class_source_product', 1, 0, NULL, 0, NULL),
(122, 4, 'gift_message_available', NULL, 'catalog/product_attribute_backend_boolean', 'varchar', NULL, NULL, 'select', 'Allow Gift Message', NULL, 'eav/entity_attribute_source_boolean', 0, 0, NULL, 0, NULL),
(123, 4, 'price_type', NULL, NULL, 'int', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
(124, 4, 'sku_type', NULL, NULL, 'int', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
(125, 4, 'weight_type', NULL, NULL, 'int', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
(126, 4, 'price_view', NULL, NULL, 'int', NULL, NULL, 'select', 'Price View', NULL, 'bundle/product_attribute_source_price_view', 1, 0, NULL, 0, NULL),
(127, 4, 'shipment_type', NULL, NULL, 'int', NULL, NULL, NULL, 'Shipment', NULL, NULL, 1, 0, NULL, 0, NULL),
(128, 4, 'links_purchased_separately', NULL, NULL, 'int', NULL, NULL, NULL, 'Links can be purchased separately', NULL, NULL, 1, 0, NULL, 0, NULL),
(129, 4, 'samples_title', NULL, NULL, 'varchar', NULL, NULL, NULL, 'Samples title', NULL, NULL, 1, 0, NULL, 0, NULL),
(130, 4, 'links_title', NULL, NULL, 'varchar', NULL, NULL, NULL, 'Links title', NULL, NULL, 1, 0, NULL, 0, NULL),
(131, 4, 'links_exist', NULL, NULL, 'int', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '0', 0, NULL),
(132, 3, 'thumbnail', NULL, 'catalog/category_attribute_backend_image', 'varchar', NULL, NULL, 'image', 'Thumbnail Image', NULL, NULL, 0, 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `eav_attribute_group`
--

CREATE TABLE IF NOT EXISTS `eav_attribute_group` (
  `attribute_group_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Group Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `attribute_group_name` varchar(255) DEFAULT NULL COMMENT 'Attribute Group Name',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `default_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Default Id'
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Group';

--
-- Dumping data for table `eav_attribute_group`
--

INSERT INTO `eav_attribute_group` (`attribute_group_id`, `attribute_set_id`, `attribute_group_name`, `sort_order`, `default_id`) VALUES
(1, 1, 'General', 1, 1),
(2, 2, 'General', 1, 1),
(3, 3, 'General', 10, 1),
(4, 3, 'General Information', 2, 0),
(5, 3, 'Display Settings', 20, 0),
(6, 3, 'Custom Design', 30, 0),
(7, 4, 'General', 1, 1),
(8, 4, 'Prices', 2, 0),
(9, 4, 'Meta Information', 3, 0),
(10, 4, 'Images', 4, 0),
(11, 4, 'Recurring Profile', 5, 0),
(12, 4, 'Design', 6, 0),
(13, 5, 'General', 1, 1),
(14, 6, 'General', 1, 1),
(15, 7, 'General', 1, 1),
(16, 8, 'General', 1, 1),
(17, 4, 'Gift Options', 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `eav_attribute_label`
--

CREATE TABLE IF NOT EXISTS `eav_attribute_label` (
  `attribute_label_id` int(10) unsigned NOT NULL COMMENT 'Attribute Label Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Label';

-- --------------------------------------------------------

--
-- Table structure for table `eav_attribute_option`
--

CREATE TABLE IF NOT EXISTS `eav_attribute_option` (
  `option_id` int(10) unsigned NOT NULL COMMENT 'Option Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Option';

--
-- Dumping data for table `eav_attribute_option`
--

INSERT INTO `eav_attribute_option` (`option_id`, `attribute_id`, `sort_order`) VALUES
(1, 18, 0),
(2, 18, 1);

-- --------------------------------------------------------

--
-- Table structure for table `eav_attribute_option_value`
--

CREATE TABLE IF NOT EXISTS `eav_attribute_option_value` (
  `value_id` int(10) unsigned NOT NULL COMMENT 'Value Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Option Value';

--
-- Dumping data for table `eav_attribute_option_value`
--

INSERT INTO `eav_attribute_option_value` (`value_id`, `option_id`, `store_id`, `value`) VALUES
(1, 1, 0, 'Male'),
(2, 2, 0, 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `eav_attribute_set`
--

CREATE TABLE IF NOT EXISTS `eav_attribute_set` (
  `attribute_set_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Set Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_name` varchar(255) DEFAULT NULL COMMENT 'Attribute Set Name',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Set';

--
-- Dumping data for table `eav_attribute_set`
--

INSERT INTO `eav_attribute_set` (`attribute_set_id`, `entity_type_id`, `attribute_set_name`, `sort_order`) VALUES
(1, 1, 'Default', 1),
(2, 2, 'Default', 1),
(3, 3, 'Default', 1),
(4, 4, 'Default', 1),
(5, 5, 'Default', 1),
(6, 6, 'Default', 1),
(7, 7, 'Default', 1),
(8, 8, 'Default', 1);

-- --------------------------------------------------------

--
-- Table structure for table `eav_entity`
--

CREATE TABLE IF NOT EXISTS `eav_entity` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Defines Is Entity Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity';

-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_attribute`
--

CREATE TABLE IF NOT EXISTS `eav_entity_attribute` (
  `entity_attribute_id` int(10) unsigned NOT NULL COMMENT 'Entity Attribute Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `attribute_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Group Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order'
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8 COMMENT='Eav Entity Attributes';

--
-- Dumping data for table `eav_entity_attribute`
--

INSERT INTO `eav_entity_attribute` (`entity_attribute_id`, `entity_type_id`, `attribute_set_id`, `attribute_group_id`, `attribute_id`, `sort_order`) VALUES
(1, 1, 1, 1, 1, 10),
(2, 1, 1, 1, 2, 0),
(3, 1, 1, 1, 3, 20),
(4, 1, 1, 1, 4, 30),
(5, 1, 1, 1, 5, 40),
(6, 1, 1, 1, 6, 50),
(7, 1, 1, 1, 7, 60),
(8, 1, 1, 1, 8, 70),
(9, 1, 1, 1, 9, 80),
(10, 1, 1, 1, 10, 25),
(11, 1, 1, 1, 11, 90),
(12, 1, 1, 1, 12, 0),
(13, 1, 1, 1, 13, 0),
(14, 1, 1, 1, 14, 0),
(15, 1, 1, 1, 15, 100),
(16, 1, 1, 1, 16, 0),
(17, 1, 1, 1, 17, 86),
(18, 1, 1, 1, 18, 110),
(19, 2, 2, 2, 19, 10),
(20, 2, 2, 2, 20, 20),
(21, 2, 2, 2, 21, 30),
(22, 2, 2, 2, 22, 40),
(23, 2, 2, 2, 23, 50),
(24, 2, 2, 2, 24, 60),
(25, 2, 2, 2, 25, 70),
(26, 2, 2, 2, 26, 80),
(27, 2, 2, 2, 27, 90),
(28, 2, 2, 2, 28, 100),
(29, 2, 2, 2, 29, 100),
(30, 2, 2, 2, 30, 110),
(31, 2, 2, 2, 31, 120),
(32, 2, 2, 2, 32, 130),
(33, 1, 1, 1, 33, 111),
(34, 1, 1, 1, 34, 112),
(35, 1, 1, 1, 35, 28),
(36, 2, 2, 2, 36, 140),
(37, 2, 2, 2, 37, 132),
(38, 2, 2, 2, 38, 133),
(39, 2, 2, 2, 39, 134),
(40, 2, 2, 2, 40, 135),
(41, 3, 3, 4, 41, 1),
(42, 3, 3, 4, 42, 2),
(43, 3, 3, 4, 43, 3),
(44, 3, 3, 4, 44, 4),
(45, 3, 3, 4, 45, 5),
(46, 3, 3, 4, 46, 6),
(47, 3, 3, 4, 47, 7),
(48, 3, 3, 4, 48, 8),
(49, 3, 3, 5, 49, 10),
(50, 3, 3, 5, 50, 20),
(51, 3, 3, 5, 51, 30),
(52, 3, 3, 4, 52, 12),
(53, 3, 3, 4, 53, 13),
(54, 3, 3, 4, 54, 14),
(55, 3, 3, 4, 55, 15),
(56, 3, 3, 4, 56, 16),
(57, 3, 3, 4, 57, 17),
(58, 3, 3, 6, 58, 10),
(59, 3, 3, 6, 59, 30),
(60, 3, 3, 6, 60, 40),
(61, 3, 3, 6, 61, 50),
(62, 3, 3, 6, 62, 60),
(63, 3, 3, 4, 63, 24),
(64, 3, 3, 4, 64, 25),
(65, 3, 3, 5, 65, 40),
(66, 3, 3, 5, 66, 50),
(67, 3, 3, 4, 67, 10),
(68, 3, 3, 6, 68, 5),
(69, 3, 3, 6, 69, 6),
(70, 3, 3, 5, 70, 51),
(71, 4, 4, 7, 71, 1),
(72, 4, 4, 7, 72, 2),
(73, 4, 4, 7, 73, 3),
(74, 4, 4, 7, 74, 4),
(75, 4, 4, 8, 75, 1),
(76, 4, 4, 8, 76, 3),
(77, 4, 4, 8, 77, 4),
(78, 4, 4, 8, 78, 5),
(79, 4, 4, 8, 79, 6),
(80, 4, 4, 7, 80, 5),
(81, 4, 4, 9, 82, 1),
(82, 4, 4, 9, 83, 2),
(83, 4, 4, 9, 84, 3),
(84, 4, 4, 10, 85, 1),
(85, 4, 4, 10, 86, 2),
(86, 4, 4, 10, 87, 3),
(87, 4, 4, 10, 88, 4),
(88, 4, 4, 7, 89, 6),
(89, 4, 4, 8, 90, 2),
(90, 4, 4, 8, 91, 7),
(91, 4, 4, 7, 93, 7),
(92, 4, 4, 7, 94, 8),
(93, 4, 4, 10, 95, 5),
(94, 4, 4, 7, 96, 9),
(95, 4, 4, 7, 97, 10),
(96, 4, 4, 7, 98, 11),
(97, 4, 4, 8, 99, 8),
(98, 4, 4, 11, 100, 1),
(99, 4, 4, 11, 101, 2),
(100, 4, 4, 7, 102, 12),
(101, 4, 4, 12, 103, 1),
(102, 4, 4, 12, 104, 2),
(103, 4, 4, 12, 105, 3),
(104, 4, 4, 12, 106, 4),
(105, 4, 4, 12, 107, 5),
(106, 4, 4, 7, 108, 13),
(107, 4, 4, 12, 109, 6),
(108, 4, 4, 7, 110, 14),
(109, 4, 4, 7, 111, 15),
(110, 4, 4, 7, 112, 16),
(111, 4, 4, 7, 113, 17),
(112, 4, 4, 7, 114, 18),
(113, 4, 4, 7, 115, 19),
(114, 4, 4, 7, 116, 20),
(115, 4, 4, 7, 117, 21),
(116, 4, 4, 8, 118, 9),
(117, 4, 4, 8, 119, 10),
(118, 4, 4, 8, 120, 11),
(119, 4, 4, 8, 121, 12),
(120, 4, 4, 17, 122, 1),
(121, 4, 4, 7, 123, 22),
(122, 4, 4, 7, 124, 23),
(123, 4, 4, 7, 125, 24),
(124, 4, 4, 8, 126, 13),
(125, 4, 4, 7, 127, 25),
(126, 4, 4, 7, 128, 26),
(127, 4, 4, 7, 129, 27),
(128, 4, 4, 7, 130, 28),
(129, 4, 4, 7, 131, 29),
(130, 3, 3, 4, 132, 4);

-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_datetime`
--

CREATE TABLE IF NOT EXISTS `eav_entity_datetime` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Attribute Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_decimal`
--

CREATE TABLE IF NOT EXISTS `eav_entity_decimal` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Attribute Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_int`
--

CREATE TABLE IF NOT EXISTS `eav_entity_int` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Attribute Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_store`
--

CREATE TABLE IF NOT EXISTS `eav_entity_store` (
  `entity_store_id` int(10) unsigned NOT NULL COMMENT 'Entity Store Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `increment_prefix` varchar(20) DEFAULT NULL COMMENT 'Increment Prefix',
  `increment_last_id` varchar(50) DEFAULT NULL COMMENT 'Last Incremented Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Store';

-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_text`
--

CREATE TABLE IF NOT EXISTS `eav_entity_text` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` text NOT NULL COMMENT 'Attribute Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_type`
--

CREATE TABLE IF NOT EXISTS `eav_entity_type` (
  `entity_type_id` smallint(5) unsigned NOT NULL COMMENT 'Entity Type Id',
  `entity_type_code` varchar(50) NOT NULL COMMENT 'Entity Type Code',
  `entity_model` varchar(255) NOT NULL COMMENT 'Entity Model',
  `attribute_model` varchar(255) DEFAULT NULL COMMENT 'Attribute Model',
  `entity_table` varchar(255) DEFAULT NULL COMMENT 'Entity Table',
  `value_table_prefix` varchar(255) DEFAULT NULL COMMENT 'Value Table Prefix',
  `entity_id_field` varchar(255) DEFAULT NULL COMMENT 'Entity Id Field',
  `is_data_sharing` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Defines Is Data Sharing',
  `data_sharing_key` varchar(100) DEFAULT 'default' COMMENT 'Data Sharing Key',
  `default_attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Default Attribute Set Id',
  `increment_model` varchar(255) DEFAULT '' COMMENT 'Increment Model',
  `increment_per_store` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Increment Per Store',
  `increment_pad_length` smallint(5) unsigned NOT NULL DEFAULT '8' COMMENT 'Increment Pad Length',
  `increment_pad_char` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Increment Pad Char',
  `additional_attribute_table` varchar(255) DEFAULT '' COMMENT 'Additional Attribute Table',
  `entity_attribute_collection` varchar(255) DEFAULT NULL COMMENT 'Entity Attribute Collection'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='Eav Entity Type';

--
-- Dumping data for table `eav_entity_type`
--

INSERT INTO `eav_entity_type` (`entity_type_id`, `entity_type_code`, `entity_model`, `attribute_model`, `entity_table`, `value_table_prefix`, `entity_id_field`, `is_data_sharing`, `data_sharing_key`, `default_attribute_set_id`, `increment_model`, `increment_per_store`, `increment_pad_length`, `increment_pad_char`, `additional_attribute_table`, `entity_attribute_collection`) VALUES
(1, 'customer', 'customer/customer', 'customer/attribute', 'customer/entity', NULL, NULL, 1, 'default', 1, 'eav/entity_increment_numeric', 0, 8, '0', 'customer/eav_attribute', 'customer/attribute_collection'),
(2, 'customer_address', 'customer/address', 'customer/attribute', 'customer/address_entity', NULL, NULL, 1, 'default', 2, NULL, 0, 8, '0', 'customer/eav_attribute', 'customer/address_attribute_collection'),
(3, 'catalog_category', 'catalog/category', 'catalog/resource_eav_attribute', 'catalog/category', NULL, NULL, 1, 'default', 3, NULL, 0, 8, '0', 'catalog/eav_attribute', 'catalog/category_attribute_collection'),
(4, 'catalog_product', 'catalog/product', 'catalog/resource_eav_attribute', 'catalog/product', NULL, NULL, 1, 'default', 4, NULL, 0, 8, '0', 'catalog/eav_attribute', 'catalog/product_attribute_collection'),
(5, 'order', 'sales/order', NULL, 'sales/order', NULL, NULL, 1, 'default', 0, 'eav/entity_increment_numeric', 1, 8, '0', NULL, NULL),
(6, 'invoice', 'sales/order_invoice', NULL, 'sales/invoice', NULL, NULL, 1, 'default', 0, 'eav/entity_increment_numeric', 1, 8, '0', NULL, NULL),
(7, 'creditmemo', 'sales/order_creditmemo', NULL, 'sales/creditmemo', NULL, NULL, 1, 'default', 0, 'eav/entity_increment_numeric', 1, 8, '0', NULL, NULL),
(8, 'shipment', 'sales/order_shipment', NULL, 'sales/shipment', NULL, NULL, 1, 'default', 0, 'eav/entity_increment_numeric', 1, 8, '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_varchar`
--

CREATE TABLE IF NOT EXISTS `eav_entity_varchar` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Attribute Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

-- --------------------------------------------------------

--
-- Table structure for table `eav_form_element`
--

CREATE TABLE IF NOT EXISTS `eav_form_element` (
  `element_id` int(10) unsigned NOT NULL COMMENT 'Element Id',
  `type_id` smallint(5) unsigned NOT NULL COMMENT 'Type Id',
  `fieldset_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Fieldset Id',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  `sort_order` int(11) NOT NULL DEFAULT '0' COMMENT 'Sort Order'
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COMMENT='Eav Form Element';

--
-- Dumping data for table `eav_form_element`
--

INSERT INTO `eav_form_element` (`element_id`, `type_id`, `fieldset_id`, `attribute_id`, `sort_order`) VALUES
(1, 1, NULL, 20, 0),
(2, 1, NULL, 22, 1),
(3, 1, NULL, 24, 2),
(4, 1, NULL, 9, 3),
(5, 1, NULL, 25, 4),
(6, 1, NULL, 26, 5),
(7, 1, NULL, 28, 6),
(8, 1, NULL, 30, 7),
(9, 1, NULL, 27, 8),
(10, 1, NULL, 31, 9),
(11, 1, NULL, 32, 10),
(12, 2, NULL, 20, 0),
(13, 2, NULL, 22, 1),
(14, 2, NULL, 24, 2),
(15, 2, NULL, 9, 3),
(16, 2, NULL, 25, 4),
(17, 2, NULL, 26, 5),
(18, 2, NULL, 28, 6),
(19, 2, NULL, 30, 7),
(20, 2, NULL, 27, 8),
(21, 2, NULL, 31, 9),
(22, 2, NULL, 32, 10),
(23, 3, NULL, 20, 0),
(24, 3, NULL, 22, 1),
(25, 3, NULL, 24, 2),
(26, 3, NULL, 25, 3),
(27, 3, NULL, 26, 4),
(28, 3, NULL, 28, 5),
(29, 3, NULL, 30, 6),
(30, 3, NULL, 27, 7),
(31, 3, NULL, 31, 8),
(32, 3, NULL, 32, 9),
(33, 4, NULL, 20, 0),
(34, 4, NULL, 22, 1),
(35, 4, NULL, 24, 2),
(36, 4, NULL, 25, 3),
(37, 4, NULL, 26, 4),
(38, 4, NULL, 28, 5),
(39, 4, NULL, 30, 6),
(40, 4, NULL, 27, 7),
(41, 4, NULL, 31, 8),
(42, 4, NULL, 32, 9),
(43, 5, 1, 5, 0),
(44, 5, 1, 7, 1),
(45, 5, 1, 9, 2),
(46, 5, 2, 24, 0),
(47, 5, 2, 31, 1),
(48, 5, 2, 25, 2),
(49, 5, 2, 26, 3),
(50, 5, 2, 28, 4),
(51, 5, 2, 30, 5),
(52, 5, 2, 27, 6);

-- --------------------------------------------------------

--
-- Table structure for table `eav_form_fieldset`
--

CREATE TABLE IF NOT EXISTS `eav_form_fieldset` (
  `fieldset_id` smallint(5) unsigned NOT NULL COMMENT 'Fieldset Id',
  `type_id` smallint(5) unsigned NOT NULL COMMENT 'Type Id',
  `code` varchar(64) NOT NULL COMMENT 'Code',
  `sort_order` int(11) NOT NULL DEFAULT '0' COMMENT 'Sort Order'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Eav Form Fieldset';

--
-- Dumping data for table `eav_form_fieldset`
--

INSERT INTO `eav_form_fieldset` (`fieldset_id`, `type_id`, `code`, `sort_order`) VALUES
(1, 5, 'general', 1),
(2, 5, 'address', 2);

-- --------------------------------------------------------

--
-- Table structure for table `eav_form_fieldset_label`
--

CREATE TABLE IF NOT EXISTS `eav_form_fieldset_label` (
  `fieldset_id` smallint(5) unsigned NOT NULL COMMENT 'Fieldset Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `label` varchar(255) NOT NULL COMMENT 'Label'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Fieldset Label';

--
-- Dumping data for table `eav_form_fieldset_label`
--

INSERT INTO `eav_form_fieldset_label` (`fieldset_id`, `store_id`, `label`) VALUES
(1, 0, 'Personal Information'),
(2, 0, 'Address Information');

-- --------------------------------------------------------

--
-- Table structure for table `eav_form_type`
--

CREATE TABLE IF NOT EXISTS `eav_form_type` (
  `type_id` smallint(5) unsigned NOT NULL COMMENT 'Type Id',
  `code` varchar(64) NOT NULL COMMENT 'Code',
  `label` varchar(255) NOT NULL COMMENT 'Label',
  `is_system` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is System',
  `theme` varchar(64) DEFAULT NULL COMMENT 'Theme',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Eav Form Type';

--
-- Dumping data for table `eav_form_type`
--

INSERT INTO `eav_form_type` (`type_id`, `code`, `label`, `is_system`, `theme`, `store_id`) VALUES
(1, 'checkout_onepage_register', 'checkout_onepage_register', 1, '', 0),
(2, 'checkout_onepage_register_guest', 'checkout_onepage_register_guest', 1, '', 0),
(3, 'checkout_onepage_billing_address', 'checkout_onepage_billing_address', 1, '', 0),
(4, 'checkout_onepage_shipping_address', 'checkout_onepage_shipping_address', 1, '', 0),
(5, 'checkout_multishipping_register', 'checkout_multishipping_register', 1, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `eav_form_type_entity`
--

CREATE TABLE IF NOT EXISTS `eav_form_type_entity` (
  `type_id` smallint(5) unsigned NOT NULL COMMENT 'Type Id',
  `entity_type_id` smallint(5) unsigned NOT NULL COMMENT 'Entity Type Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Type Entity';

--
-- Dumping data for table `eav_form_type_entity`
--

INSERT INTO `eav_form_type_entity` (`type_id`, `entity_type_id`) VALUES
(1, 1),
(2, 1),
(5, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `finware_index`
--

CREATE TABLE IF NOT EXISTS `finware_index` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `interactivity_id` int(11) DEFAULT NULL,
  `active` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `finware_index`
--

INSERT INTO `finware_index` (`id`, `product_id`, `interactivity_id`, `active`) VALUES
(8, 2, NULL, 'Yes'),
(7, 1, NULL, 'Yes'),
(9, 3, NULL, 'Yes'),
(10, 4, NULL, 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `gift_message`
--

CREATE TABLE IF NOT EXISTS `gift_message` (
  `gift_message_id` int(10) unsigned NOT NULL COMMENT 'GiftMessage Id',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer id',
  `sender` varchar(255) DEFAULT NULL COMMENT 'Sender',
  `recipient` varchar(255) DEFAULT NULL COMMENT 'Recipient',
  `message` text COMMENT 'Message'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Gift Message';

-- --------------------------------------------------------

--
-- Table structure for table `importexport_importdata`
--

CREATE TABLE IF NOT EXISTS `importexport_importdata` (
  `id` int(10) unsigned NOT NULL COMMENT 'Id',
  `entity` varchar(50) NOT NULL COMMENT 'Entity',
  `behavior` varchar(10) NOT NULL DEFAULT 'append' COMMENT 'Behavior',
  `data` longtext COMMENT 'Data'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Import Data Table';

-- --------------------------------------------------------

--
-- Table structure for table `index_event`
--

CREATE TABLE IF NOT EXISTS `index_event` (
  `event_id` bigint(20) unsigned NOT NULL COMMENT 'Event Id',
  `type` varchar(64) NOT NULL COMMENT 'Type',
  `entity` varchar(64) NOT NULL COMMENT 'Entity',
  `entity_pk` bigint(20) DEFAULT NULL COMMENT 'Entity Primary Key',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Creation Time',
  `old_data` mediumtext COMMENT 'Old Data',
  `new_data` mediumtext COMMENT 'New Data'
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='Index Event';

--
-- Dumping data for table `index_event`
--

INSERT INTO `index_event` (`event_id`, `type`, `entity`, `entity_pk`, `created_at`, `old_data`, `new_data`) VALUES
(1, 'save', 'catalog_category', 1, '2017-02-04 11:02:14', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(2, 'save', 'catalog_category', 2, '2017-02-04 11:02:14', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(3, 'save', 'cataloginventory_stock_item', 1, '2017-02-04 17:06:49', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(4, 'save', 'catalog_product', 1, '2017-02-04 17:06:49', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(5, 'catalog_reindex_price', 'catalog_product', 1, '2017-02-04 17:06:49', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(6, 'save', 'cataloginventory_stock_item', 2, '2017-02-05 10:15:33', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(7, 'save', 'catalog_product', 2, '2017-02-05 10:15:33', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(8, 'catalog_reindex_price', 'catalog_product', 2, '2017-02-05 10:15:34', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(9, 'save', 'cataloginventory_stock_item', 3, '2017-02-05 17:02:46', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(10, 'save', 'catalog_product', 3, '2017-02-05 17:02:46', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(11, 'catalog_reindex_price', 'catalog_product', 3, '2017-02-05 17:02:47', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(12, 'save', 'cataloginventory_stock_item', 4, '2017-02-05 17:05:31', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(13, 'save', 'catalog_product', 4, '2017-02-05 17:05:31', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(14, 'catalog_reindex_price', 'catalog_product', 4, '2017-02-05 17:05:31', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}');

-- --------------------------------------------------------

--
-- Table structure for table `index_process`
--

CREATE TABLE IF NOT EXISTS `index_process` (
  `process_id` int(10) unsigned NOT NULL COMMENT 'Process Id',
  `indexer_code` varchar(32) NOT NULL COMMENT 'Indexer Code',
  `status` varchar(15) NOT NULL DEFAULT 'pending' COMMENT 'Status',
  `started_at` timestamp NULL DEFAULT NULL COMMENT 'Started At',
  `ended_at` timestamp NULL DEFAULT NULL COMMENT 'Ended At',
  `mode` varchar(9) NOT NULL DEFAULT 'real_time' COMMENT 'Mode'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='Index Process';

--
-- Dumping data for table `index_process`
--

INSERT INTO `index_process` (`process_id`, `indexer_code`, `status`, `started_at`, `ended_at`, `mode`) VALUES
(1, 'catalog_product_attribute', 'require_reindex', '2017-02-05 17:09:34', '2017-02-05 17:09:34', 'real_time'),
(2, 'catalog_product_price', 'require_reindex', '2017-02-05 17:09:34', '2017-02-05 17:09:34', 'real_time'),
(3, 'catalog_url', 'require_reindex', '2017-02-05 17:09:34', '2017-02-05 17:09:34', 'real_time'),
(4, 'catalog_product_flat', 'require_reindex', NULL, NULL, 'real_time'),
(5, 'catalog_category_flat', 'require_reindex', NULL, NULL, 'real_time'),
(6, 'catalog_category_product', 'require_reindex', '2017-02-05 17:09:34', '2017-02-05 17:09:34', 'real_time'),
(7, 'catalogsearch_fulltext', 'require_reindex', '2017-02-05 17:09:34', '2017-02-05 17:09:34', 'real_time'),
(8, 'cataloginventory_stock', 'require_reindex', '2017-02-05 17:09:34', '2017-02-05 17:09:34', 'real_time'),
(9, 'tag_summary', 'require_reindex', '2017-02-05 17:09:34', '2017-02-05 17:09:34', 'real_time');

-- --------------------------------------------------------

--
-- Table structure for table `index_process_event`
--

CREATE TABLE IF NOT EXISTS `index_process_event` (
  `process_id` int(10) unsigned NOT NULL COMMENT 'Process Id',
  `event_id` bigint(20) unsigned NOT NULL COMMENT 'Event Id',
  `status` varchar(7) NOT NULL DEFAULT 'new' COMMENT 'Status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Index Process Event';

-- --------------------------------------------------------

--
-- Table structure for table `log_customer`
--

CREATE TABLE IF NOT EXISTS `log_customer` (
  `log_id` int(10) unsigned NOT NULL COMMENT 'Log ID',
  `visitor_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Visitor ID',
  `customer_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Customer ID',
  `login_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Login Time',
  `logout_at` timestamp NULL DEFAULT NULL COMMENT 'Logout Time',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log Customers Table';

-- --------------------------------------------------------

--
-- Table structure for table `log_quote`
--

CREATE TABLE IF NOT EXISTS `log_quote` (
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote ID',
  `visitor_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Visitor ID',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Creation Time',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT 'Deletion Time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log Quotes Table';

-- --------------------------------------------------------

--
-- Table structure for table `log_summary`
--

CREATE TABLE IF NOT EXISTS `log_summary` (
  `summary_id` bigint(20) unsigned NOT NULL COMMENT 'Summary ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `type_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Type ID',
  `visitor_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Visitor Count',
  `customer_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Customer Count',
  `add_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log Summary Table';

-- --------------------------------------------------------

--
-- Table structure for table `log_summary_type`
--

CREATE TABLE IF NOT EXISTS `log_summary_type` (
  `type_id` smallint(5) unsigned NOT NULL COMMENT 'Type ID',
  `type_code` varchar(64) DEFAULT NULL COMMENT 'Type Code',
  `period` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Period',
  `period_type` varchar(6) NOT NULL DEFAULT 'MINUTE' COMMENT 'Period Type'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Log Summary Types Table';

--
-- Dumping data for table `log_summary_type`
--

INSERT INTO `log_summary_type` (`type_id`, `type_code`, `period`, `period_type`) VALUES
(1, 'hour', 1, 'HOUR'),
(2, 'day', 1, 'DAY');

-- --------------------------------------------------------

--
-- Table structure for table `log_url`
--

CREATE TABLE IF NOT EXISTS `log_url` (
  `url_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'URL ID',
  `visitor_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Visitor ID',
  `visit_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Visit Time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log URL Table';

--
-- Dumping data for table `log_url`
--

INSERT INTO `log_url` (`url_id`, `visitor_id`, `visit_time`) VALUES
(1, 1, '2017-02-04 17:02:54'),
(2, 1, '2017-02-04 17:08:34'),
(3, 1, '2017-02-04 17:10:28'),
(4, 1, '2017-02-04 17:11:05'),
(5, 1, '2017-02-04 17:11:13'),
(6, 1, '2017-02-04 17:17:47'),
(7, 1, '2017-02-04 17:17:53'),
(8, 1, '2017-02-04 17:22:36'),
(9, 1, '2017-02-04 17:22:39'),
(10, 2, '2017-02-05 09:37:23'),
(11, 2, '2017-02-05 09:37:29'),
(12, 2, '2017-02-05 09:37:32'),
(13, 2, '2017-02-05 09:48:35'),
(14, 2, '2017-02-05 09:48:38'),
(15, 2, '2017-02-05 09:50:10'),
(16, 2, '2017-02-05 09:52:56'),
(17, 2, '2017-02-05 09:52:57'),
(18, 2, '2017-02-05 09:53:31'),
(19, 2, '2017-02-05 09:53:31'),
(20, 2, '2017-02-05 09:53:36'),
(21, 2, '2017-02-05 09:53:39'),
(22, 2, '2017-02-05 09:53:51'),
(23, 2, '2017-02-05 09:53:52'),
(24, 2, '2017-02-05 09:53:56'),
(25, 2, '2017-02-05 09:53:58'),
(26, 2, '2017-02-05 09:53:59'),
(27, 2, '2017-02-05 09:54:07'),
(28, 2, '2017-02-05 09:54:09'),
(29, 2, '2017-02-05 09:54:09'),
(30, 2, '2017-02-05 09:54:13'),
(31, 2, '2017-02-05 09:54:19'),
(32, 2, '2017-02-05 09:54:20'),
(33, 2, '2017-02-05 09:54:22'),
(34, 2, '2017-02-05 09:54:24'),
(35, 2, '2017-02-05 09:54:25'),
(36, 2, '2017-02-05 09:54:29'),
(37, 2, '2017-02-05 09:54:31'),
(38, 2, '2017-02-05 09:54:32'),
(39, 2, '2017-02-05 09:54:35'),
(40, 2, '2017-02-05 09:54:50'),
(41, 2, '2017-02-05 09:54:51'),
(42, 2, '2017-02-05 09:54:53'),
(43, 2, '2017-02-05 09:54:54'),
(44, 2, '2017-02-05 09:55:34'),
(45, 2, '2017-02-05 09:55:36'),
(46, 2, '2017-02-05 09:55:37'),
(47, 2, '2017-02-05 09:55:44'),
(48, 2, '2017-02-05 09:55:47'),
(49, 2, '2017-02-05 09:55:47'),
(50, 2, '2017-02-05 09:55:49'),
(51, 2, '2017-02-05 09:55:50'),
(52, 2, '2017-02-05 09:55:54'),
(53, 2, '2017-02-05 09:57:26'),
(54, 2, '2017-02-05 09:57:44'),
(55, 2, '2017-02-05 09:57:45'),
(56, 2, '2017-02-05 09:57:56'),
(57, 2, '2017-02-05 09:58:00'),
(58, 2, '2017-02-05 09:58:01'),
(59, 2, '2017-02-05 09:58:06'),
(60, 2, '2017-02-05 09:58:07'),
(61, 2, '2017-02-05 09:58:12'),
(62, 2, '2017-02-05 09:58:15'),
(63, 2, '2017-02-05 09:58:16'),
(64, 2, '2017-02-05 09:58:18'),
(65, 2, '2017-02-05 09:58:19'),
(66, 2, '2017-02-05 09:58:25'),
(67, 2, '2017-02-05 09:58:29'),
(68, 2, '2017-02-05 09:58:31'),
(69, 2, '2017-02-05 09:58:34'),
(70, 2, '2017-02-05 09:58:36'),
(71, 2, '2017-02-05 09:58:38'),
(72, 2, '2017-02-05 09:58:43'),
(73, 2, '2017-02-05 09:58:44'),
(74, 2, '2017-02-05 09:58:49'),
(75, 2, '2017-02-05 09:58:51'),
(76, 2, '2017-02-05 09:58:52'),
(77, 2, '2017-02-05 09:59:01'),
(78, 2, '2017-02-05 09:59:05'),
(79, 2, '2017-02-05 09:59:29'),
(80, 2, '2017-02-05 09:59:40'),
(81, 2, '2017-02-05 10:00:26'),
(82, 2, '2017-02-05 10:00:26'),
(83, 2, '2017-02-05 10:00:35'),
(84, 2, '2017-02-05 10:00:41'),
(85, 2, '2017-02-05 10:00:43'),
(86, 2, '2017-02-05 10:00:44'),
(87, 2, '2017-02-05 10:00:55'),
(88, 2, '2017-02-05 10:00:56'),
(89, 3, '2017-02-05 10:01:17'),
(90, 3, '2017-02-05 10:01:24'),
(91, 3, '2017-02-05 10:01:26'),
(92, 3, '2017-02-05 10:01:30'),
(93, 3, '2017-02-05 10:01:31'),
(94, 3, '2017-02-05 10:01:46'),
(95, 3, '2017-02-05 10:01:55'),
(96, 3, '2017-02-05 10:01:56'),
(97, 3, '2017-02-05 10:01:56'),
(98, 3, '2017-02-05 10:02:08'),
(99, 3, '2017-02-05 10:02:13'),
(100, 3, '2017-02-05 10:02:14'),
(101, 3, '2017-02-05 10:02:14'),
(102, 3, '2017-02-05 10:02:16'),
(103, 3, '2017-02-05 10:02:17'),
(104, 3, '2017-02-05 10:02:19'),
(105, 3, '2017-02-05 10:02:20'),
(106, 3, '2017-02-05 10:02:21'),
(107, 3, '2017-02-05 10:03:16'),
(108, 2, '2017-02-05 10:03:22'),
(109, 2, '2017-02-05 10:03:24'),
(110, 2, '2017-02-05 10:03:25'),
(111, 2, '2017-02-05 10:03:27'),
(112, 2, '2017-02-05 10:03:28'),
(113, 2, '2017-02-05 10:03:32'),
(114, 2, '2017-02-05 10:03:33'),
(115, 2, '2017-02-05 10:03:34'),
(116, 2, '2017-02-05 10:03:45'),
(117, 2, '2017-02-05 10:03:48'),
(118, 2, '2017-02-05 10:04:45'),
(119, 2, '2017-02-05 10:04:46'),
(120, 2, '2017-02-05 10:04:48'),
(121, 2, '2017-02-05 10:04:54'),
(122, 2, '2017-02-05 10:04:58'),
(123, 2, '2017-02-05 10:05:04'),
(124, 2, '2017-02-05 10:05:09'),
(125, 2, '2017-02-05 10:05:10'),
(126, 2, '2017-02-05 10:05:14'),
(127, 2, '2017-02-05 10:05:48'),
(128, 2, '2017-02-05 10:06:25'),
(129, 2, '2017-02-05 10:08:33'),
(130, 2, '2017-02-05 10:08:37'),
(131, 2, '2017-02-05 10:08:43'),
(132, 2, '2017-02-05 10:08:51'),
(133, 2, '2017-02-05 10:09:18'),
(134, 2, '2017-02-05 10:09:27'),
(135, 2, '2017-02-05 10:15:44'),
(136, 2, '2017-02-05 10:16:07'),
(137, 2, '2017-02-05 10:18:07'),
(138, 2, '2017-02-05 10:18:08'),
(139, 2, '2017-02-05 10:18:14'),
(140, 2, '2017-02-05 10:18:23'),
(141, 2, '2017-02-05 10:18:24'),
(142, 2, '2017-02-05 10:18:28'),
(143, 2, '2017-02-05 10:18:29'),
(144, 2, '2017-02-05 10:18:32'),
(145, 2, '2017-02-05 10:18:34'),
(146, 2, '2017-02-05 10:18:35'),
(147, 2, '2017-02-05 10:18:49'),
(148, 2, '2017-02-05 10:18:50'),
(149, 2, '2017-02-05 10:18:54'),
(150, 2, '2017-02-05 10:18:55'),
(151, 4, '2017-02-05 10:19:05'),
(152, 4, '2017-02-05 10:19:14'),
(153, 4, '2017-02-05 10:19:16'),
(154, 4, '2017-02-05 10:19:16'),
(155, 4, '2017-02-05 10:19:20'),
(156, 4, '2017-02-05 10:19:21'),
(157, 4, '2017-02-05 10:21:22'),
(158, 4, '2017-02-05 10:21:23'),
(159, 4, '2017-02-05 10:21:25'),
(160, 4, '2017-02-05 10:21:26'),
(161, 2, '2017-02-05 10:23:51'),
(162, 2, '2017-02-05 10:23:56'),
(163, 2, '2017-02-05 10:27:54'),
(164, 2, '2017-02-05 10:27:56'),
(165, 2, '2017-02-05 10:27:57'),
(166, 2, '2017-02-05 10:28:06'),
(167, 2, '2017-02-05 10:28:07'),
(168, 2, '2017-02-05 10:28:08'),
(169, 2, '2017-02-05 10:28:42'),
(170, 2, '2017-02-05 10:28:43'),
(171, 2, '2017-02-05 10:30:40'),
(172, 2, '2017-02-05 10:30:46'),
(173, 2, '2017-02-05 10:43:56'),
(174, 2, '2017-02-05 10:43:58'),
(175, 2, '2017-02-05 10:43:59'),
(176, 2, '2017-02-05 10:44:03'),
(177, 2, '2017-02-05 10:44:04'),
(178, 2, '2017-02-05 10:44:05'),
(179, 2, '2017-02-05 10:44:49'),
(180, 2, '2017-02-05 10:44:50'),
(181, 2, '2017-02-05 10:44:54'),
(182, 2, '2017-02-05 10:44:57'),
(183, 2, '2017-02-05 10:47:05'),
(184, 2, '2017-02-05 10:47:06'),
(185, 2, '2017-02-05 10:47:07'),
(186, 2, '2017-02-05 10:47:11'),
(187, 2, '2017-02-05 10:47:15'),
(188, 2, '2017-02-05 10:47:15'),
(189, 2, '2017-02-05 10:47:21'),
(190, 2, '2017-02-05 10:47:24'),
(191, 2, '2017-02-05 10:47:26'),
(192, 2, '2017-02-05 10:47:26'),
(193, 2, '2017-02-05 10:47:33'),
(194, 2, '2017-02-05 10:47:36'),
(195, 2, '2017-02-05 10:47:36'),
(196, 2, '2017-02-05 10:48:15'),
(197, 2, '2017-02-05 10:48:16'),
(198, 2, '2017-02-05 10:48:21'),
(199, 2, '2017-02-05 10:48:26'),
(200, 2, '2017-02-05 10:51:07'),
(201, 2, '2017-02-05 10:51:09'),
(202, 2, '2017-02-05 10:51:10'),
(203, 2, '2017-02-05 10:51:39'),
(204, 2, '2017-02-05 10:51:39'),
(205, 2, '2017-02-05 10:51:42'),
(206, 2, '2017-02-05 10:51:44'),
(207, 5, '2017-02-05 14:37:23'),
(208, 5, '2017-02-05 14:37:32'),
(209, 5, '2017-02-05 14:38:04'),
(210, 5, '2017-02-05 14:38:07'),
(211, 5, '2017-02-05 14:38:09'),
(212, 5, '2017-02-05 14:38:11'),
(213, 5, '2017-02-05 14:38:14'),
(214, 6, '2017-02-05 16:36:51'),
(215, 6, '2017-02-05 16:37:41'),
(216, 6, '2017-02-05 16:41:38'),
(217, 6, '2017-02-05 16:41:39'),
(218, 6, '2017-02-05 16:43:08'),
(219, 6, '2017-02-05 16:43:09'),
(220, 6, '2017-02-05 16:43:21'),
(221, 6, '2017-02-05 16:43:27'),
(222, 7, '2017-02-05 16:47:05'),
(223, 7, '2017-02-05 16:47:09'),
(224, 7, '2017-02-05 16:47:14'),
(225, 7, '2017-02-05 16:47:20'),
(226, 6, '2017-02-05 17:08:06'),
(227, 8, '2017-02-05 17:09:26'),
(228, 8, '2017-02-05 17:10:23'),
(229, 8, '2017-02-05 17:11:51'),
(230, 8, '2017-02-05 17:14:52'),
(231, 8, '2017-02-05 17:14:52'),
(232, 9, '2017-02-05 18:19:08'),
(233, 9, '2017-02-05 18:19:39'),
(234, 9, '2017-02-05 18:19:40'),
(235, 9, '2017-02-05 18:19:43'),
(236, 9, '2017-02-05 18:20:16'),
(237, 9, '2017-02-05 18:20:21'),
(238, 9, '2017-02-05 18:20:34'),
(239, 9, '2017-02-05 18:20:39'),
(240, 9, '2017-02-05 18:20:47'),
(241, 9, '2017-02-05 18:21:00'),
(242, 9, '2017-02-05 18:21:30'),
(243, 10, '2017-02-05 18:22:01'),
(244, 10, '2017-02-05 18:22:07'),
(245, 10, '2017-02-05 18:22:08'),
(246, 10, '2017-02-05 18:22:10'),
(247, 9, '2017-02-05 18:22:15'),
(248, 10, '2017-02-05 18:22:16'),
(249, 11, '2017-02-05 18:22:27'),
(250, 11, '2017-02-05 18:22:33'),
(251, 10, '2017-02-05 18:22:58'),
(252, 10, '2017-02-05 18:23:05'),
(253, 10, '2017-02-05 18:23:42'),
(254, 10, '2017-02-05 18:23:56'),
(255, 10, '2017-02-05 18:24:12'),
(256, 10, '2017-02-05 18:24:22'),
(257, 10, '2017-02-05 18:24:25'),
(258, 10, '2017-02-05 18:25:12'),
(259, 10, '2017-02-05 18:25:20'),
(260, 10, '2017-02-05 18:26:23'),
(261, 10, '2017-02-05 18:26:32'),
(262, 10, '2017-02-05 18:26:44'),
(263, 10, '2017-02-05 18:26:59'),
(264, 10, '2017-02-05 18:27:25'),
(265, 11, '2017-02-05 18:29:16'),
(266, 9, '2017-02-05 18:29:40'),
(267, 9, '2017-02-05 18:29:43'),
(268, 10, '2017-02-05 18:31:42'),
(269, 9, '2017-02-05 18:32:01'),
(270, 9, '2017-02-05 18:32:04'),
(271, 9, '2017-02-05 18:33:03'),
(272, 9, '2017-02-05 18:33:07'),
(273, 10, '2017-02-05 18:33:51'),
(274, 10, '2017-02-05 18:34:30'),
(275, 10, '2017-02-05 18:34:35'),
(276, 10, '2017-02-05 18:34:58'),
(277, 10, '2017-02-05 18:35:05'),
(278, 10, '2017-02-05 18:35:16'),
(279, 10, '2017-02-05 18:35:20'),
(280, 10, '2017-02-05 18:39:56'),
(281, 10, '2017-02-05 18:40:10'),
(282, 10, '2017-02-05 18:41:05'),
(283, 10, '2017-02-05 18:41:16'),
(284, 10, '2017-02-05 18:41:34'),
(285, 10, '2017-02-05 18:44:03'),
(286, 10, '2017-02-05 18:44:05'),
(287, 10, '2017-02-05 18:44:09'),
(288, 10, '2017-02-05 18:44:14'),
(289, 10, '2017-02-05 18:47:08'),
(290, 13, '2017-02-05 18:48:36'),
(291, 12, '2017-02-05 18:48:36'),
(292, 13, '2017-02-05 18:49:13'),
(293, 12, '2017-02-05 18:49:13'),
(294, 13, '2017-02-05 18:49:43'),
(295, 12, '2017-02-05 18:49:43'),
(296, 9, '2017-02-05 18:52:07'),
(297, 9, '2017-02-05 18:54:24'),
(298, 9, '2017-02-05 18:55:31'),
(299, 9, '2017-02-05 18:55:51'),
(300, 9, '2017-02-05 18:56:04'),
(301, 9, '2017-02-05 19:01:52'),
(302, 9, '2017-02-05 19:02:02'),
(303, 9, '2017-02-05 19:02:10'),
(304, 9, '2017-02-05 19:05:59'),
(305, 9, '2017-02-05 19:06:26'),
(306, 14, '2017-02-05 19:07:11'),
(307, 14, '2017-02-05 19:07:16'),
(308, 9, '2017-02-05 19:07:33'),
(309, 9, '2017-02-05 19:07:42'),
(310, 9, '2017-02-05 19:16:47'),
(311, 9, '2017-02-05 19:16:48'),
(312, 9, '2017-02-05 19:18:43'),
(313, 9, '2017-02-05 19:18:47'),
(314, 9, '2017-02-05 19:18:48'),
(315, 9, '2017-02-05 19:18:57'),
(316, 9, '2017-02-05 19:18:58'),
(317, 9, '2017-02-05 19:19:06'),
(318, 9, '2017-02-05 19:19:09'),
(319, 9, '2017-02-05 19:19:10'),
(320, 9, '2017-02-05 19:19:14'),
(321, 9, '2017-02-05 19:19:16'),
(322, 9, '2017-02-05 19:19:17'),
(323, 9, '2017-02-05 19:19:19'),
(324, 9, '2017-02-05 19:19:21'),
(325, 9, '2017-02-05 19:19:22'),
(326, 9, '2017-02-05 19:19:24'),
(327, 10, '2017-02-05 19:26:40'),
(328, 10, '2017-02-05 19:26:43'),
(329, 10, '2017-02-05 19:26:44'),
(330, 10, '2017-02-05 19:26:50'),
(331, 10, '2017-02-05 19:26:51'),
(332, 10, '2017-02-05 19:26:55'),
(333, 10, '2017-02-05 19:26:57'),
(334, 10, '2017-02-05 19:26:58'),
(335, 10, '2017-02-05 19:27:01'),
(336, 10, '2017-02-05 19:27:05'),
(337, 10, '2017-02-05 19:27:05'),
(338, 10, '2017-02-05 19:27:11'),
(339, 10, '2017-02-05 19:27:13'),
(340, 10, '2017-02-05 19:27:14'),
(341, 10, '2017-02-05 19:27:17'),
(342, 10, '2017-02-05 19:27:20'),
(343, 10, '2017-02-05 19:27:21'),
(344, 10, '2017-02-05 19:28:21'),
(345, 10, '2017-02-05 19:28:22'),
(346, 10, '2017-02-05 19:28:29'),
(347, 10, '2017-02-05 19:28:30'),
(348, 10, '2017-02-05 19:28:36'),
(349, 10, '2017-02-05 19:28:36'),
(350, 10, '2017-02-05 19:28:37'),
(351, 10, '2017-02-05 19:28:39'),
(352, 10, '2017-02-05 19:28:40'),
(353, 10, '2017-02-05 19:28:46'),
(354, 10, '2017-02-05 19:28:48'),
(355, 10, '2017-02-05 19:28:49'),
(356, 10, '2017-02-05 19:28:50'),
(357, 10, '2017-02-05 19:28:52'),
(358, 10, '2017-02-05 19:28:53'),
(359, 10, '2017-02-05 19:29:04'),
(360, 10, '2017-02-05 19:29:06'),
(361, 10, '2017-02-05 19:29:07'),
(362, 10, '2017-02-05 19:29:07'),
(363, 10, '2017-02-05 19:29:12'),
(364, 10, '2017-02-05 19:29:13'),
(365, 10, '2017-02-05 19:29:14'),
(366, 10, '2017-02-05 19:29:17'),
(367, 10, '2017-02-05 19:29:19'),
(368, 10, '2017-02-05 19:29:21'),
(369, 10, '2017-02-05 19:29:22'),
(370, 10, '2017-02-05 19:29:24'),
(371, 10, '2017-02-05 19:29:25'),
(372, 10, '2017-02-05 19:29:30'),
(373, 10, '2017-02-05 19:29:30'),
(374, 10, '2017-02-05 19:29:33'),
(375, 10, '2017-02-05 19:29:35'),
(376, 10, '2017-02-05 19:29:36'),
(377, 10, '2017-02-05 19:29:36'),
(378, 10, '2017-02-05 19:29:38'),
(379, 10, '2017-02-05 19:29:39'),
(380, 9, '2017-02-05 19:30:43'),
(381, 9, '2017-02-05 19:30:44'),
(382, 9, '2017-02-05 19:51:22'),
(383, 9, '2017-02-05 19:54:23'),
(384, 9, '2017-02-05 19:54:24'),
(385, 9, '2017-02-05 19:54:28'),
(386, 9, '2017-02-05 19:54:29'),
(387, 9, '2017-02-05 19:54:36'),
(388, 9, '2017-02-05 19:54:38'),
(389, 9, '2017-02-05 19:54:38'),
(390, 9, '2017-02-05 19:54:42'),
(391, 9, '2017-02-05 19:54:42'),
(392, 9, '2017-02-05 19:54:45'),
(393, 9, '2017-02-05 19:54:45'),
(394, 9, '2017-02-05 19:54:49'),
(395, 9, '2017-02-05 19:54:50'),
(396, 9, '2017-02-05 19:55:01'),
(397, 9, '2017-02-05 19:55:02'),
(398, 9, '2017-02-05 19:55:04'),
(399, 9, '2017-02-05 19:55:05'),
(400, 10, '2017-02-05 19:55:36'),
(401, 10, '2017-02-05 19:55:41'),
(402, 10, '2017-02-05 19:55:42'),
(403, 10, '2017-02-05 19:55:46'),
(404, 10, '2017-02-05 19:55:47'),
(405, 10, '2017-02-05 19:55:52'),
(406, 10, '2017-02-05 19:55:55'),
(407, 10, '2017-02-05 19:55:56'),
(408, 10, '2017-02-05 19:56:01'),
(409, 10, '2017-02-05 19:56:04'),
(410, 10, '2017-02-05 19:56:05'),
(411, 10, '2017-02-05 19:56:11'),
(412, 10, '2017-02-05 19:56:14'),
(413, 10, '2017-02-05 19:56:15'),
(414, 10, '2017-02-05 19:56:21'),
(415, 10, '2017-02-05 19:56:24'),
(416, 10, '2017-02-05 19:56:25'),
(417, 10, '2017-02-05 19:56:30'),
(418, 10, '2017-02-05 19:56:33'),
(419, 10, '2017-02-05 19:56:34'),
(420, 10, '2017-02-05 19:56:39'),
(421, 9, '2017-02-05 19:59:52'),
(422, 9, '2017-02-05 19:59:53'),
(423, 10, '2017-02-05 20:02:00'),
(424, 10, '2017-02-05 20:02:08'),
(425, 10, '2017-02-05 20:02:09'),
(426, 10, '2017-02-05 20:02:12'),
(427, 10, '2017-02-05 20:02:13'),
(428, 10, '2017-02-05 20:02:18'),
(429, 10, '2017-02-05 20:02:22'),
(430, 10, '2017-02-05 20:02:23'),
(431, 10, '2017-02-05 20:02:28'),
(432, 10, '2017-02-05 20:02:31'),
(433, 10, '2017-02-05 20:02:32'),
(434, 10, '2017-02-05 20:02:37'),
(435, 10, '2017-02-05 20:02:40'),
(436, 10, '2017-02-05 20:02:41'),
(437, 10, '2017-02-05 20:02:46'),
(438, 10, '2017-02-05 20:02:49'),
(439, 10, '2017-02-05 20:02:50'),
(440, 10, '2017-02-05 20:02:55'),
(441, 10, '2017-02-05 20:02:57'),
(442, 10, '2017-02-05 20:02:58'),
(443, 10, '2017-02-05 20:03:04'),
(444, 15, '2017-02-05 20:03:07'),
(445, 15, '2017-02-05 20:03:16'),
(446, 15, '2017-02-05 20:03:18'),
(447, 15, '2017-02-05 20:03:22'),
(448, 15, '2017-02-05 20:03:23'),
(449, 15, '2017-02-05 20:03:24'),
(450, 15, '2017-02-05 20:03:30'),
(451, 15, '2017-02-05 20:03:35'),
(452, 15, '2017-02-05 20:03:36'),
(453, 15, '2017-02-05 20:03:39'),
(454, 15, '2017-02-05 20:03:40'),
(455, 15, '2017-02-05 20:03:46'),
(456, 15, '2017-02-05 20:03:49'),
(457, 15, '2017-02-05 20:03:50'),
(458, 15, '2017-02-05 20:03:55'),
(459, 16, '2017-02-05 20:05:33'),
(460, 16, '2017-02-05 20:05:37'),
(461, 16, '2017-02-05 20:05:39'),
(462, 16, '2017-02-05 20:05:39'),
(463, 16, '2017-02-05 20:05:43'),
(464, 16, '2017-02-05 20:05:44'),
(465, 16, '2017-02-05 20:05:51'),
(466, 16, '2017-02-05 20:05:52'),
(467, 16, '2017-02-05 20:05:53'),
(468, 16, '2017-02-05 20:05:59'),
(469, 16, '2017-02-05 20:06:01'),
(470, 16, '2017-02-05 20:06:02'),
(471, 16, '2017-02-05 20:06:12'),
(472, 16, '2017-02-05 20:06:15'),
(473, 16, '2017-02-05 20:06:16'),
(474, 16, '2017-02-05 20:06:28'),
(475, 16, '2017-02-05 20:07:00'),
(476, 16, '2017-02-05 20:07:01'),
(477, 9, '2017-02-05 20:07:57'),
(478, 9, '2017-02-05 20:07:58'),
(479, 9, '2017-02-05 20:08:02'),
(480, 9, '2017-02-05 20:08:03'),
(481, 9, '2017-02-05 20:08:10'),
(482, 9, '2017-02-05 20:08:12'),
(483, 9, '2017-02-05 20:08:13'),
(484, 17, '2017-02-07 17:43:25'),
(485, 18, '2017-02-12 10:43:54'),
(486, 18, '2017-02-12 10:44:00'),
(487, 18, '2017-02-12 10:44:06'),
(488, 18, '2017-02-12 10:44:07'),
(489, 18, '2017-02-12 10:44:11'),
(490, 18, '2017-02-12 10:44:12'),
(491, 18, '2017-02-12 10:44:18'),
(492, 18, '2017-02-12 10:44:36'),
(493, 18, '2017-02-12 10:44:37'),
(494, 18, '2017-02-12 10:45:10'),
(495, 18, '2017-02-12 10:45:14'),
(496, 18, '2017-02-12 10:45:15'),
(497, 18, '2017-02-12 10:45:20'),
(498, 18, '2017-02-12 10:45:23'),
(499, 18, '2017-02-12 10:45:24'),
(500, 18, '2017-02-12 10:45:27'),
(501, 18, '2017-02-12 10:45:29'),
(502, 18, '2017-02-12 10:45:29'),
(503, 18, '2017-02-12 10:45:36'),
(504, 18, '2017-02-12 10:45:38'),
(505, 18, '2017-02-12 10:45:39'),
(506, 18, '2017-02-12 10:45:42'),
(507, 18, '2017-02-12 11:20:59'),
(508, 18, '2017-02-12 11:21:00'),
(509, 18, '2017-02-12 11:21:04'),
(510, 18, '2017-02-12 11:21:05'),
(511, 18, '2017-02-12 11:21:10'),
(512, 18, '2017-02-12 11:21:13'),
(513, 18, '2017-02-12 11:21:14'),
(514, 18, '2017-02-12 11:21:27'),
(515, 18, '2017-02-12 11:21:32'),
(516, 18, '2017-02-12 11:21:33'),
(517, 18, '2017-02-12 11:23:59'),
(518, 18, '2017-02-12 11:24:03'),
(519, 18, '2017-02-12 11:24:04'),
(520, 18, '2017-02-12 11:24:08'),
(521, 18, '2017-02-12 11:24:09'),
(522, 18, '2017-02-12 11:37:33'),
(523, 18, '2017-02-12 11:37:38'),
(524, 18, '2017-02-12 11:37:39'),
(525, 18, '2017-02-12 11:37:43'),
(526, 18, '2017-02-12 11:37:44'),
(527, 18, '2017-02-12 11:37:50'),
(528, 18, '2017-02-12 11:37:52'),
(529, 18, '2017-02-12 11:37:53'),
(530, 18, '2017-02-12 11:40:52'),
(531, 18, '2017-02-12 11:41:01'),
(532, 18, '2017-02-12 11:41:02'),
(533, 18, '2017-02-12 11:41:10'),
(534, 18, '2017-02-12 11:41:11'),
(535, 18, '2017-02-12 11:41:14'),
(536, 18, '2017-02-12 11:41:17'),
(537, 18, '2017-02-12 11:41:18'),
(538, 18, '2017-02-12 11:41:27'),
(539, 18, '2017-02-12 11:41:29'),
(540, 18, '2017-02-12 11:41:30'),
(541, 18, '2017-02-12 11:41:38'),
(542, 18, '2017-02-12 11:41:40'),
(543, 18, '2017-02-12 11:41:41'),
(544, 18, '2017-02-12 11:41:48'),
(545, 18, '2017-02-12 11:41:51'),
(546, 18, '2017-02-12 11:41:52'),
(547, 18, '2017-02-12 11:42:32'),
(548, 18, '2017-02-12 11:42:35'),
(549, 18, '2017-02-12 11:42:36'),
(550, 18, '2017-02-12 11:42:42'),
(551, 18, '2017-02-12 11:42:55'),
(552, 18, '2017-02-12 11:42:56'),
(553, 18, '2017-02-12 11:43:10'),
(554, 18, '2017-02-12 11:46:21'),
(555, 18, '2017-02-12 11:46:22'),
(556, 18, '2017-02-12 11:46:41'),
(557, 18, '2017-02-12 11:46:42'),
(558, 18, '2017-02-12 11:48:08'),
(559, 18, '2017-02-12 11:48:09'),
(560, 18, '2017-02-12 11:48:23'),
(561, 18, '2017-02-12 11:56:47'),
(562, 18, '2017-02-12 11:58:30'),
(563, 18, '2017-02-12 11:58:31'),
(564, 18, '2017-02-12 11:59:18'),
(565, 18, '2017-02-12 11:59:23'),
(566, 18, '2017-02-12 11:59:24'),
(567, 18, '2017-02-12 11:59:39'),
(568, 18, '2017-02-12 11:59:40'),
(569, 18, '2017-02-12 12:00:30'),
(570, 18, '2017-02-12 12:00:35'),
(571, 18, '2017-02-12 12:00:37'),
(572, 18, '2017-02-12 12:00:41'),
(573, 18, '2017-02-12 12:00:42'),
(574, 18, '2017-02-12 12:03:54'),
(575, 18, '2017-02-12 12:04:00'),
(576, 18, '2017-02-12 12:04:01'),
(577, 18, '2017-02-12 12:04:16'),
(578, 18, '2017-02-12 12:04:17'),
(579, 18, '2017-02-12 12:10:59'),
(580, 18, '2017-02-12 12:11:05'),
(581, 18, '2017-02-12 12:11:06'),
(582, 18, '2017-02-12 12:11:16'),
(583, 18, '2017-02-12 12:11:17'),
(584, 18, '2017-02-12 12:11:34'),
(585, 18, '2017-02-12 12:11:37'),
(586, 18, '2017-02-12 12:11:38'),
(587, 18, '2017-02-12 12:11:50'),
(588, 18, '2017-02-12 12:12:51'),
(589, 18, '2017-02-12 12:12:52'),
(590, 18, '2017-02-12 12:13:20'),
(591, 18, '2017-02-12 12:13:27'),
(592, 18, '2017-02-12 12:13:28'),
(593, 18, '2017-02-12 12:14:40'),
(594, 18, '2017-02-12 12:14:45'),
(595, 18, '2017-02-12 12:14:46'),
(596, 18, '2017-02-12 12:14:53'),
(597, 18, '2017-02-12 12:14:54'),
(598, 18, '2017-02-12 12:17:39'),
(599, 18, '2017-02-12 12:17:45'),
(600, 18, '2017-02-12 12:17:47'),
(601, 18, '2017-02-12 12:17:47'),
(602, 18, '2017-02-12 12:17:59'),
(603, 18, '2017-02-12 12:18:00'),
(604, 18, '2017-02-12 12:18:57'),
(605, 18, '2017-02-12 12:19:02'),
(606, 18, '2017-02-12 12:19:04'),
(607, 18, '2017-02-12 12:19:18'),
(608, 18, '2017-02-12 12:19:19'),
(609, 18, '2017-02-12 12:24:32'),
(610, 18, '2017-02-12 12:24:37'),
(611, 18, '2017-02-12 12:24:39'),
(612, 18, '2017-02-12 12:24:43'),
(613, 18, '2017-02-12 12:24:44'),
(614, 18, '2017-02-12 12:30:21'),
(615, 18, '2017-02-12 12:30:24'),
(616, 18, '2017-02-12 12:30:25'),
(617, 18, '2017-02-12 12:30:28'),
(618, 18, '2017-02-12 12:30:29'),
(619, 18, '2017-02-12 12:33:12'),
(620, 18, '2017-02-12 12:33:18'),
(621, 18, '2017-02-12 12:33:20'),
(622, 18, '2017-02-12 12:33:26'),
(623, 18, '2017-02-12 12:33:27'),
(624, 18, '2017-02-12 12:34:18'),
(625, 18, '2017-02-12 12:34:26'),
(626, 18, '2017-02-12 12:34:27'),
(627, 18, '2017-02-12 12:34:30'),
(628, 18, '2017-02-12 12:34:31'),
(629, 18, '2017-02-12 12:35:52'),
(630, 18, '2017-02-12 12:36:02'),
(631, 18, '2017-02-12 12:36:03'),
(632, 18, '2017-02-12 12:36:08'),
(633, 18, '2017-02-12 12:36:09'),
(634, 18, '2017-02-12 12:36:15'),
(635, 18, '2017-02-12 12:36:32'),
(636, 18, '2017-02-12 12:36:32'),
(637, 18, '2017-02-12 12:37:08'),
(638, 18, '2017-02-12 12:37:10'),
(639, 18, '2017-02-12 12:37:11'),
(640, 18, '2017-02-12 12:37:14'),
(641, 18, '2017-02-12 12:37:15'),
(642, 18, '2017-02-12 12:37:22'),
(643, 18, '2017-02-12 12:37:26'),
(644, 18, '2017-02-12 12:37:27'),
(645, 18, '2017-02-12 12:37:47'),
(646, 18, '2017-02-12 12:52:02'),
(647, 18, '2017-02-12 12:52:08'),
(648, 18, '2017-02-12 12:52:10'),
(649, 18, '2017-02-12 12:52:16'),
(650, 18, '2017-02-12 12:52:17'),
(651, 18, '2017-02-12 12:52:33'),
(652, 18, '2017-02-12 12:52:36'),
(653, 18, '2017-02-12 12:52:37'),
(654, 18, '2017-02-12 12:53:18'),
(655, 18, '2017-02-12 12:53:24'),
(656, 18, '2017-02-12 12:53:30'),
(657, 18, '2017-02-12 12:53:31'),
(658, 18, '2017-02-12 12:53:36'),
(659, 18, '2017-02-12 12:53:37'),
(660, 18, '2017-02-12 12:53:40'),
(661, 18, '2017-02-12 12:53:46'),
(662, 18, '2017-02-12 12:53:47'),
(663, 18, '2017-02-12 12:54:00'),
(664, 18, '2017-02-12 12:54:08'),
(665, 18, '2017-02-12 12:54:09'),
(666, 18, '2017-02-12 12:54:12'),
(667, 18, '2017-02-12 12:55:13'),
(668, 18, '2017-02-12 12:55:22'),
(669, 18, '2017-02-12 12:55:23'),
(670, 18, '2017-02-12 12:55:25'),
(671, 18, '2017-02-12 12:55:26'),
(672, 18, '2017-02-12 12:55:29'),
(673, 18, '2017-02-12 12:55:55'),
(674, 18, '2017-02-12 12:55:56'),
(675, 18, '2017-02-12 12:56:00'),
(676, 18, '2017-02-12 12:56:03'),
(677, 18, '2017-02-12 12:56:04'),
(678, 18, '2017-02-12 12:56:16'),
(679, 18, '2017-02-12 12:56:20'),
(680, 18, '2017-02-12 12:56:27'),
(681, 18, '2017-02-12 12:57:30'),
(682, 18, '2017-02-12 12:57:34'),
(683, 18, '2017-02-12 12:57:38'),
(684, 18, '2017-02-12 13:02:15'),
(685, 18, '2017-02-12 13:02:22'),
(686, 18, '2017-02-12 13:02:47'),
(687, 18, '2017-02-12 13:02:50'),
(688, 18, '2017-02-12 13:02:54'),
(689, 18, '2017-02-12 13:03:13'),
(690, 18, '2017-02-12 13:03:15'),
(691, 18, '2017-02-12 13:03:19'),
(692, 18, '2017-02-12 13:03:46'),
(693, 18, '2017-02-12 13:06:16'),
(694, 18, '2017-02-12 13:06:20'),
(695, 18, '2017-02-12 13:06:23'),
(696, 18, '2017-02-12 13:06:24'),
(697, 18, '2017-02-12 13:06:27'),
(698, 18, '2017-02-12 13:06:28'),
(699, 18, '2017-02-12 13:06:31'),
(700, 18, '2017-02-12 13:06:36'),
(701, 18, '2017-02-12 13:06:37'),
(702, 18, '2017-02-12 13:06:40'),
(703, 18, '2017-02-12 13:06:45'),
(704, 18, '2017-02-12 13:06:47'),
(705, 18, '2017-02-12 13:06:50'),
(706, 18, '2017-02-12 13:07:41'),
(707, 18, '2017-02-12 13:07:45'),
(708, 18, '2017-02-12 13:08:00'),
(709, 18, '2017-02-12 13:09:09'),
(710, 18, '2017-02-12 13:14:37'),
(711, 18, '2017-02-12 13:14:45'),
(712, 18, '2017-02-12 13:14:55'),
(713, 18, '2017-02-12 13:15:09'),
(714, 18, '2017-02-12 13:43:59'),
(715, 18, '2017-02-12 13:44:30'),
(716, 18, '2017-02-12 13:44:43'),
(717, 18, '2017-02-12 13:44:51'),
(718, 18, '2017-02-12 13:45:06'),
(719, 18, '2017-02-12 13:45:24'),
(720, 18, '2017-02-12 13:45:29'),
(721, 18, '2017-02-12 13:45:30'),
(722, 18, '2017-02-12 13:45:31'),
(723, 18, '2017-02-12 13:45:37'),
(724, 18, '2017-02-12 13:47:24'),
(725, 18, '2017-02-12 13:47:25'),
(726, 18, '2017-02-12 13:47:31'),
(727, 18, '2017-02-12 13:47:33'),
(728, 18, '2017-02-12 13:47:37'),
(729, 18, '2017-02-12 13:48:42'),
(730, 19, '2017-02-12 15:01:38');

-- --------------------------------------------------------

--
-- Table structure for table `log_url_info`
--

CREATE TABLE IF NOT EXISTS `log_url_info` (
  `url_id` bigint(20) unsigned NOT NULL COMMENT 'URL ID',
  `url` varchar(255) DEFAULT NULL COMMENT 'URL',
  `referer` varchar(255) DEFAULT NULL COMMENT 'Referrer'
) ENGINE=InnoDB AUTO_INCREMENT=731 DEFAULT CHARSET=utf8 COMMENT='Log URL Info Table';

--
-- Dumping data for table `log_url_info`
--

INSERT INTO `log_url_info` (`url_id`, `url`, `referer`) VALUES
(1, 'http://finwaretech.com/magento_3/', NULL),
(2, 'http://finwaretech.com/magento_3/', NULL),
(3, 'http://finwaretech.com/magento_3/', NULL),
(4, 'http://finwaretech.com/magento_3/index.php/web/admin/page', 'http://finwaretech.com/magento_3/index.php/admin/cms_page/index/key/90cbd87de6eee68a9e5aa8ec752c3348/'),
(5, 'http://finwaretech.com/magento_3/add/admin/page/?id=1', 'http://finwaretech.com/magento_3/index.php/web/admin/page'),
(6, 'http://finwaretech.com/magento_3/add/admin/page/?id=1', 'http://finwaretech.com/magento_3/index.php/web/admin/page'),
(7, 'http://finwaretech.com/magento_3/add/admin/page/?id=1', 'http://finwaretech.com/magento_3/index.php/web/admin/page'),
(8, 'http://finwaretech.com/magento_3/add/admin/page/?id=1', 'http://finwaretech.com/magento_3/index.php/web/admin/page'),
(9, 'http://finwaretech.com/magento_3/add/admin/page/?id=1', 'http://finwaretech.com/magento_3/index.php/web/admin/page'),
(10, 'http://finwaretech.com/magento_3/add/admin/page/?id=1', NULL),
(11, 'http://finwaretech.com/magento_3/web/admin/page/', NULL),
(12, 'http://finwaretech.com/magento_3/add/admin/page/?id=1', 'http://finwaretech.com/magento_3/web/admin/page/'),
(13, 'http://finwaretech.com/magento_3/add/admin/page/?id=1', 'http://finwaretech.com/magento_3/web/admin/page/'),
(14, 'http://finwaretech.com/magento_3/add/admin/page/?id=1', 'http://finwaretech.com/magento_3/web/admin/page/'),
(15, 'http://finwaretech.com/magento_3/add/admin/page/?id=1', 'http://finwaretech.com/magento_3/web/admin/page/'),
(16, 'http://finwaretech.com/magento_3/add/admin/saveUploadFile/', 'http://finwaretech.com/magento_3/add/admin/page/?id=1'),
(17, 'http://finwaretech.com/magento_3/save/admin/page/id/1/', 'http://finwaretech.com/magento_3/add/admin/page/?id=1'),
(18, 'http://finwaretech.com/magento_3/catalog/product/view/id/1?preview=View+Product', 'http://finwaretech.com/magento_3/save/admin/page/id/1/'),
(19, 'http://finwaretech.com/magento_3/web/admin/page/?home=Home', 'http://finwaretech.com/magento_3/save/admin/page/id/1/'),
(20, 'http://finwaretech.com/magento_3/work/admin/page/?id=1&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/cake.html?preview=View+Product'),
(21, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=1&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=1&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(22, 'http://finwaretech.com/magento_3/work/admin/page/?id=1&hotspot=1&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=1&width=681px&height=454px'),
(23, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=1&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=1&hotspot=1&width=681px&height=406.33px'),
(24, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=1&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=1&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(25, 'http://finwaretech.com/magento_3/work/admin/page/?id=1&hotspot=1&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=1&width=681px&height=454px'),
(26, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=1&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=1&hotspot=1&width=681px&height=406.33px'),
(27, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=1&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=1&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(28, 'http://finwaretech.com/magento_3/work/admin/page/?id=1&hotspot=1&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=1&width=681px&height=454px'),
(29, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=1&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=1&hotspot=1&width=681px&height=406.33px'),
(30, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=1&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=1&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(31, 'http://finwaretech.com/magento_3/work/admin/page/?id=1&hotspot=2&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=1&width=681px&height=454px'),
(32, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=1&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=1&hotspot=2&width=681px&height=406.33px'),
(33, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=1&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=1&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(34, 'http://finwaretech.com/magento_3/work/admin/page/?id=1&hotspot=2&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=1&width=681px&height=454px'),
(35, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=1&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=1&hotspot=2&width=681px&height=406.33px'),
(36, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=1&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=1&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(37, 'http://finwaretech.com/magento_3/work/admin/page/?id=1&hotspot=2&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=1&width=681px&height=454px'),
(38, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=1&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=1&hotspot=2&width=681px&height=406.33px'),
(39, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=1&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=1&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(40, 'http://finwaretech.com/magento_3/work/admin/page/?id=1&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/cake.html?preview=View+Product'),
(41, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=1&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=1&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(42, 'http://finwaretech.com/magento_3/work/admin/page/?id=1&hotspot=1&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=1&width=681px&height=454px'),
(43, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=1&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=1&hotspot=1&width=681px&height=406.33px'),
(44, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=1&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=1&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(45, 'http://finwaretech.com/magento_3/work/admin/page/?id=1&hotspot=1&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=1&width=681px&height=454px'),
(46, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=1&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=1&hotspot=1&width=681px&height=406.33px'),
(47, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=1&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=1&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(48, 'http://finwaretech.com/magento_3/work/admin/page/?id=1&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/cake.html?preview=View+Product'),
(49, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=1&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=1&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(50, 'http://finwaretech.com/magento_3/work/admin/page/?id=1&hotspot=1&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=1&width=681px&height=454px'),
(51, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=1&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=1&hotspot=1&width=681px&height=406.33px'),
(52, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=1&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=1&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(53, 'http://finwaretech.com/magento_3/edit/admin/page/?id=1', 'http://finwaretech.com/magento_3/web/admin/page/?home=Home'),
(54, 'http://finwaretech.com/magento_3/edit/admin/updateHotspot/id/1/', 'http://finwaretech.com/magento_3/edit/admin/page/?id=1'),
(55, 'http://finwaretech.com/magento_3/save/admin/page/id/1/', 'http://finwaretech.com/magento_3/edit/admin/page/?id=1'),
(56, 'http://finwaretech.com/magento_3/catalog/product/view/id/1?preview=View+Product', 'http://finwaretech.com/magento_3/save/admin/page/id/1/'),
(57, 'http://finwaretech.com/magento_3/work/admin/page/?id=1&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/cake.html?preview=View+Product'),
(58, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=1&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=1&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(59, 'http://finwaretech.com/magento_3/work/admin/page/?id=1&hotspot=1&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=1&width=681px&height=454px'),
(60, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=1&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=1&hotspot=1&width=681px&height=406.33px'),
(61, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=1&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=1&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(62, 'http://finwaretech.com/magento_3/work/admin/page/?id=1&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/cake.html?preview=View+Product'),
(63, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=1&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=1&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(64, 'http://finwaretech.com/magento_3/work/admin/page/?id=1&hotspot=1&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=1&width=681px&height=454px'),
(65, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=1&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=1&hotspot=1&width=681px&height=406.33px'),
(66, 'http://finwaretech.com/magento_3/catalog/product/view/id/1?preview=View+Product', 'http://finwaretech.com/magento_3/save/admin/page/id/1/'),
(67, 'http://finwaretech.com/magento_3/work/admin/page/?id=1&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/cake.html?preview=View+Product'),
(68, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=1&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=1&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(69, 'http://finwaretech.com/magento_3/work/admin/page/?id=1&hotspot=1&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=1&width=681px&height=454px'),
(70, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=1&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=1&hotspot=1&width=681px&height=406.33px'),
(71, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=1&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=1&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(72, 'http://finwaretech.com/magento_3/work/admin/page/?id=1&hotspot=1&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=1&width=681px&height=454px'),
(73, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=1&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=1&hotspot=1&width=681px&height=406.33px'),
(74, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=1&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=1&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(75, 'http://finwaretech.com/magento_3/work/admin/page/?id=1&hotspot=1&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=1&width=681px&height=454px'),
(76, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=1&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=1&hotspot=1&width=681px&height=406.33px'),
(77, 'http://finwaretech.com/magento_3/web/admin/page/?home=Home', 'http://finwaretech.com/magento_3/save/admin/page/id/1/'),
(78, 'http://finwaretech.com/magento_3/edit/admin/page/?id=1', 'http://finwaretech.com/magento_3/web/admin/page/?home=Home'),
(79, 'http://finwaretech.com/magento_3/edit/admin/page/?id=1', 'http://finwaretech.com/magento_3/web/admin/page/?home=Home'),
(80, 'http://finwaretech.com/magento_3/edit/admin/page/?id=1', 'http://finwaretech.com/magento_3/web/admin/page/?home=Home'),
(81, 'http://finwaretech.com/magento_3/edit/admin/updateHotspot/id/1/', 'http://finwaretech.com/magento_3/edit/admin/page/?id=1'),
(82, 'http://finwaretech.com/magento_3/save/admin/page/id/1/', 'http://finwaretech.com/magento_3/edit/admin/page/?id=1'),
(83, 'http://finwaretech.com/magento_3/catalog/product/view/id/1?preview=View+Product', 'http://finwaretech.com/magento_3/save/admin/page/id/1/'),
(84, 'http://finwaretech.com/magento_3/catalog/product/view/id/1?preview=View+Product', 'http://finwaretech.com/magento_3/save/admin/page/id/1/'),
(85, 'http://finwaretech.com/magento_3/work/admin/page/?id=1&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/cake.html?preview=View+Product'),
(86, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=1&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=1&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(87, 'http://finwaretech.com/magento_3/work/admin/page/?id=1&hotspot=2&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=1&width=681px&height=454px'),
(88, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=1&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=1&hotspot=2&width=681px&height=406.33px'),
(89, 'http://finwaretech.com/magento_3/catalog/product/view/id/1?preview=View+Product', NULL),
(90, 'http://finwaretech.com/magento_3/work/admin/page/?id=1&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/cake.html?preview=View+Product'),
(91, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=1&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=1&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(92, 'http://finwaretech.com/magento_3/work/admin/page/?id=1&hotspot=2&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=1&width=681px&height=454px'),
(93, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=1&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=1&hotspot=2&width=681px&height=406.33px'),
(94, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=1&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=1&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(95, 'http://finwaretech.com/magento_3/work/admin/page/?id=1&hotspot=1&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=1&width=681px&height=454px'),
(96, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=1', 'http://finwaretech.com/magento_3/work/admin/page/?id=1&hotspot=1&width=681px&height=406.33px'),
(97, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=1&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=1&hotspot=1&width=681px&height=406.33px'),
(98, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=1&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=1&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(99, 'http://finwaretech.com/magento_3/work/admin/page/?id=1&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/cake.html?preview=View+Product'),
(100, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=1', 'http://finwaretech.com/magento_3/work/admin/page/?id=1&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(101, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=1&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=1&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(102, 'http://finwaretech.com/magento_3/work/admin/page/?id=1&hotspot=1&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=1&width=681px&height=454px'),
(103, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=1&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=1&hotspot=1&width=681px&height=406.33px'),
(104, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=1&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=1&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(105, 'http://finwaretech.com/magento_3/work/admin/page/?id=1&hotspot=2&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=1&width=681px&height=454px'),
(106, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=1&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=1&hotspot=2&width=681px&height=406.33px'),
(107, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=1&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=1&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(108, 'http://finwaretech.com/magento_3/catalog/product/view/id/1?preview=View+Product', NULL),
(109, 'http://finwaretech.com/magento_3/work/admin/page/?id=1&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/cake.html?preview=View+Product'),
(110, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=1&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=1&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(111, 'http://finwaretech.com/magento_3/work/admin/page/?id=1&hotspot=2&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=1&width=681px&height=454px'),
(112, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=1&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=1&hotspot=2&width=681px&height=406.33px'),
(113, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=1&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=1&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(114, 'http://finwaretech.com/magento_3/work/admin/page/?id=1&hotspot=1&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=1&width=681px&height=454px'),
(115, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=1&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=1&hotspot=1&width=681px&height=406.33px'),
(116, 'http://finwaretech.com/magento_3/web/admin/page/?home=Home', 'http://finwaretech.com/magento_3/save/admin/page/id/1/'),
(117, 'http://finwaretech.com/magento_3/edit/admin/page/?id=1', 'http://finwaretech.com/magento_3/web/admin/page/?home=Home'),
(118, 'http://finwaretech.com/magento_3/edit/admin/updateHotspot/id/1/', 'http://finwaretech.com/magento_3/edit/admin/page/?id=1'),
(119, 'http://finwaretech.com/magento_3/save/admin/page/id/1/', 'http://finwaretech.com/magento_3/edit/admin/page/?id=1'),
(120, 'http://finwaretech.com/magento_3/web/admin/page/?home=Home', 'http://finwaretech.com/magento_3/save/admin/page/id/1/'),
(121, 'http://finwaretech.com/magento_3/web/admin/disable/?id=1', 'http://finwaretech.com/magento_3/web/admin/page/?home=Home'),
(122, 'http://finwaretech.com/magento_3/catalog/product/view/id/1?preview=View+Product', NULL),
(123, 'http://finwaretech.com/magento_3/edit/admin/page/?id=1', 'http://finwaretech.com/magento_3/web/admin/page/?home=Home'),
(124, 'http://finwaretech.com/magento_3/edit/admin/updateHotspot/id/1/', 'http://finwaretech.com/magento_3/edit/admin/page/?id=1'),
(125, 'http://finwaretech.com/magento_3/save/admin/page/id/1/', 'http://finwaretech.com/magento_3/edit/admin/page/?id=1'),
(126, 'http://finwaretech.com/magento_3/catalog/product/view/id/1?preview=View+Product', NULL),
(127, 'http://finwaretech.com/magento_3/web/admin/page/?home=Home', 'http://finwaretech.com/magento_3/save/admin/page/id/1/'),
(128, 'http://finwaretech.com/magento_3/edit/admin/page/?id=1', 'http://finwaretech.com/magento_3/web/admin/page/?home=Home'),
(129, 'http://finwaretech.com/magento_3/catalog/product/view/id/1?preview=View+Product', NULL),
(130, 'http://finwaretech.com/magento_3/work/admin/page/?id=1&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/cake.html?preview=View+Product'),
(131, 'http://finwaretech.com/magento_3/work/admin/page/?id=1&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/cake.html?preview=View+Product'),
(132, 'http://finwaretech.com/magento_3/work/admin/page/?id=1&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/cake.html?preview=View+Product'),
(133, 'http://finwaretech.com/magento_3/work/admin/page/?id=1&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/cake.html?preview=View+Product'),
(134, 'http://finwaretech.com/magento_3/work/admin/page/?id=1&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/cake.html?preview=View+Product'),
(135, 'http://finwaretech.com/magento_3/index.php/web/admin/page', 'http://finwaretech.com/magento_3/index.php/admin/catalog_product/index/key/997e0e769e6dfdff794ca898a746af5c/'),
(136, 'http://finwaretech.com/magento_3/add/admin/page/?id=2', 'http://finwaretech.com/magento_3/index.php/web/admin/page'),
(137, 'http://finwaretech.com/magento_3/add/admin/saveUploadFile/', 'http://finwaretech.com/magento_3/add/admin/page/?id=2'),
(138, 'http://finwaretech.com/magento_3/save/admin/page/id/2/', 'http://finwaretech.com/magento_3/add/admin/page/?id=2'),
(139, 'http://finwaretech.com/magento_3/catalog/product/view/id/2?preview=View+Product', 'http://finwaretech.com/magento_3/save/admin/page/id/2/'),
(140, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html?preview=View+Product'),
(141, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(142, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=1&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(143, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=1&width=681px&height=406.33px'),
(144, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(145, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=1&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(146, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=1&width=681px&height=406.33px'),
(147, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html?preview=View+Product'),
(148, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(149, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=1&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(150, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=1&width=681px&height=406.33px'),
(151, 'http://finwaretech.com/magento_3/catalog/product/view/id/2?preview=View+Product', NULL),
(152, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html?preview=View+Product'),
(153, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(154, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(155, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=1&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(156, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=1&width=681px&height=406.33px'),
(157, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html?preview=View+Product'),
(158, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(159, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=1&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(160, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=1&width=681px&height=406.33px'),
(161, 'http://finwaretech.com/magento_3/web/admin/page/', NULL),
(162, 'http://finwaretech.com/magento_3/edit/admin/page/?id=2', 'http://finwaretech.com/magento_3/web/admin/page/'),
(163, 'http://finwaretech.com/magento_3/edit/admin/page/?id=2', 'http://finwaretech.com/magento_3/web/admin/page/'),
(164, 'http://finwaretech.com/magento_3/edit/admin/page/?id=2', 'http://finwaretech.com/magento_3/edit/admin/page/?id=2'),
(165, 'http://finwaretech.com/magento_3/edit/admin/page/?id=2', 'http://finwaretech.com/magento_3/edit/admin/page/?id=2'),
(166, 'http://finwaretech.com/magento_3/edit/admin/page/?id=2', 'http://finwaretech.com/magento_3/web/admin/page/'),
(167, 'http://finwaretech.com/magento_3/edit/admin/page/?id=2', 'http://finwaretech.com/magento_3/edit/admin/page/?id=2'),
(168, 'http://finwaretech.com/magento_3/edit/admin/page/?id=2', 'http://finwaretech.com/magento_3/edit/admin/page/?id=2'),
(169, 'http://finwaretech.com/magento_3/edit/admin/updateHotspot/id/2/', 'http://finwaretech.com/magento_3/edit/admin/page/?id=2'),
(170, 'http://finwaretech.com/magento_3/save/admin/page/id/2/', 'http://finwaretech.com/magento_3/edit/admin/page/?id=2'),
(171, 'http://finwaretech.com/magento_3/web/admin/page/?home=Home', 'http://finwaretech.com/magento_3/save/admin/page/id/2/'),
(172, 'http://finwaretech.com/magento_3/edit/admin/page/?id=2', 'http://finwaretech.com/magento_3/web/admin/page/?home=Home'),
(173, 'http://finwaretech.com/magento_3/edit/admin/page/?id=2', 'http://finwaretech.com/magento_3/web/admin/page/?home=Home'),
(174, 'http://finwaretech.com/magento_3/edit/admin/page/?id=2', 'http://finwaretech.com/magento_3/edit/admin/page/?id=2'),
(175, 'http://finwaretech.com/magento_3/edit/admin/page/?id=2', 'http://finwaretech.com/magento_3/edit/admin/page/?id=2'),
(176, 'http://finwaretech.com/magento_3/edit/admin/page/?id=2', NULL),
(177, 'http://finwaretech.com/magento_3/edit/admin/page/?id=2', 'http://finwaretech.com/magento_3/edit/admin/page/?id=2'),
(178, 'http://finwaretech.com/magento_3/edit/admin/page/?id=2', 'http://finwaretech.com/magento_3/edit/admin/page/?id=2'),
(179, 'http://finwaretech.com/magento_3/edit/admin/updateHotspot/id/2/', 'http://finwaretech.com/magento_3/edit/admin/page/?id=2'),
(180, 'http://finwaretech.com/magento_3/save/admin/page/id/2/', 'http://finwaretech.com/magento_3/edit/admin/page/?id=2'),
(181, 'http://finwaretech.com/magento_3/web/admin/page/?home=Home', 'http://finwaretech.com/magento_3/save/admin/page/id/2/'),
(182, 'http://finwaretech.com/magento_3/edit/admin/page/?id=2', 'http://finwaretech.com/magento_3/web/admin/page/?home=Home'),
(183, 'http://finwaretech.com/magento_3/edit/admin/page/?id=2', 'http://finwaretech.com/magento_3/web/admin/page/?home=Home'),
(184, 'http://finwaretech.com/magento_3/edit/admin/page/?id=2', 'http://finwaretech.com/magento_3/edit/admin/page/?id=2'),
(185, 'http://finwaretech.com/magento_3/edit/admin/page/?id=2', 'http://finwaretech.com/magento_3/edit/admin/page/?id=2'),
(186, 'http://finwaretech.com/magento_3/edit/admin/page/?id=2', 'http://finwaretech.com/magento_3/web/admin/page/?home=Home'),
(187, 'http://finwaretech.com/magento_3/edit/admin/page/?id=2', 'http://finwaretech.com/magento_3/edit/admin/page/?id=2'),
(188, 'http://finwaretech.com/magento_3/edit/admin/page/?id=2', 'http://finwaretech.com/magento_3/edit/admin/page/?id=2'),
(189, 'http://finwaretech.com/magento_3/edit/admin/updateInteractivity/id/2/', 'http://finwaretech.com/magento_3/edit/admin/page/?id=2'),
(190, 'http://finwaretech.com/magento_3/edit/admin/page/?id=2', 'http://finwaretech.com/magento_3/web/admin/page/?home=Home'),
(191, 'http://finwaretech.com/magento_3/edit/admin/page/?id=2', 'http://finwaretech.com/magento_3/edit/admin/page/?id=2'),
(192, 'http://finwaretech.com/magento_3/edit/admin/page/?id=2', 'http://finwaretech.com/magento_3/edit/admin/page/?id=2'),
(193, 'http://finwaretech.com/magento_3/edit/admin/page/?id=2', 'http://finwaretech.com/magento_3/web/admin/page/?home=Home'),
(194, 'http://finwaretech.com/magento_3/edit/admin/page/?id=2', 'http://finwaretech.com/magento_3/edit/admin/page/?id=2'),
(195, 'http://finwaretech.com/magento_3/edit/admin/page/?id=2', 'http://finwaretech.com/magento_3/edit/admin/page/?id=2'),
(196, 'http://finwaretech.com/magento_3/edit/admin/updateHotspot/id/2/', 'http://finwaretech.com/magento_3/edit/admin/page/?id=2'),
(197, 'http://finwaretech.com/magento_3/save/admin/page/id/2/', 'http://finwaretech.com/magento_3/edit/admin/page/?id=2'),
(198, 'http://finwaretech.com/magento_3/web/admin/page/?home=Home', 'http://finwaretech.com/magento_3/save/admin/page/id/2/'),
(199, 'http://finwaretech.com/magento_3/edit/admin/page/?id=2', 'http://finwaretech.com/magento_3/web/admin/page/?home=Home'),
(200, 'http://finwaretech.com/magento_3/edit/admin/page/?id=2', 'http://finwaretech.com/magento_3/web/admin/page/?home=Home'),
(201, 'http://finwaretech.com/magento_3/edit/admin/page/?id=2', 'http://finwaretech.com/magento_3/edit/admin/page/?id=2'),
(202, 'http://finwaretech.com/magento_3/edit/admin/page/?id=2', 'http://finwaretech.com/magento_3/edit/admin/page/?id=2'),
(203, 'http://finwaretech.com/magento_3/edit/admin/updateHotspot/id/2/', 'http://finwaretech.com/magento_3/edit/admin/page/?id=2'),
(204, 'http://finwaretech.com/magento_3/save/admin/page/id/2/', 'http://finwaretech.com/magento_3/edit/admin/page/?id=2'),
(205, 'http://finwaretech.com/magento_3/web/admin/page/?home=Home', 'http://finwaretech.com/magento_3/save/admin/page/id/2/'),
(206, 'http://finwaretech.com/magento_3/edit/admin/page/?id=2', 'http://finwaretech.com/magento_3/web/admin/page/?home=Home'),
(207, 'http://finwaretech.com/magento_3/catalog/product/view/id/1?preview=View+Product', NULL),
(208, 'http://finwaretech.com/magento_3/work/admin/page/?id=1&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/cake.html?preview=View+Product'),
(209, 'http://finwaretech.com/magento_3/', NULL),
(210, 'http://finwaretech.com/magento_3/catalog/product/view/id/1', 'http://finwaretech.com/magento_3/'),
(211, 'http://finwaretech.com/magento_3/', NULL),
(212, 'http://finwaretech.com/magento_3/catalog/product/view/id/2', 'http://finwaretech.com/magento_3/'),
(213, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(214, 'http://finwaretech.com/magento_3/add/admin/page/?id=1', NULL),
(215, 'http://finwaretech.com/magento_3/add/admin/page/?id=1', NULL),
(216, 'http://finwaretech.com/magento_3/add/admin/save/id/1/', 'http://finwaretech.com/magento_3/add/admin/page/?id=1'),
(217, 'http://finwaretech.com/magento_3/save/admin/page/id/1/', 'http://finwaretech.com/magento_3/add/admin/page/?id=1'),
(218, 'http://finwaretech.com/magento_3/catalog/product/view/id/1?preview=View+Product', 'http://finwaretech.com/magento_3/save/admin/page/id/1/'),
(219, 'http://finwaretech.com/magento_3/web/admin/page/?home=Home', 'http://finwaretech.com/magento_3/save/admin/page/id/1/'),
(220, 'http://finwaretech.com/magento_3/work/admin/page/?id=1&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/cake.html?preview=View+Product'),
(221, 'http://finwaretech.com/magento_3/work/admin/page/?id=1&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/cake.html?preview=View+Product'),
(222, 'http://finwaretech.com/magento_3/', NULL),
(223, 'http://finwaretech.com/magento_3/catalog/product/view/id/1', 'http://finwaretech.com/magento_3/'),
(224, 'http://finwaretech.com/magento_3/work/admin/page/?id=1&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/cake.html'),
(225, 'http://finwaretech.com/magento_3/work/admin/page/?id=1&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/cake.html'),
(226, 'http://finwaretech.com/magento_3/web/admin/page/?home=Home', 'http://finwaretech.com/magento_3/save/admin/page/id/1/'),
(227, 'http://finwaretech.com/magento_3/catalog/product/view/id/1?preview=View+Product', 'http://finwaretech.com/magento_3/save/admin/page/id/1/'),
(228, 'http://finwaretech.com/magento_3/web/admin/page/?home=Home', 'http://finwaretech.com/magento_3/save/admin/page/id/1/'),
(229, 'http://finwaretech.com/magento_3/add/admin/page/?id=2', 'http://finwaretech.com/magento_3/web/admin/page/?home=Home'),
(230, 'http://finwaretech.com/magento_3/add/admin/save/id/2/', 'http://finwaretech.com/magento_3/add/admin/page/?id=2'),
(231, 'http://finwaretech.com/magento_3/save/admin/page/id/2/', 'http://finwaretech.com/magento_3/add/admin/page/?id=2'),
(232, 'http://finwaretech.com/magento_3/web/admin/page/?home=Home', 'http://finwaretech.com/magento_3/save/admin/page/id/2/'),
(233, 'http://finwaretech.com/magento_3/catalog/product/view/id/2', 'http://finwaretech.com/magento_3/web/admin/page/?home=Home'),
(234, 'http://finwaretech.com/magento_3/catalog/product/view/id/4', 'http://finwaretech.com/magento_3/web/admin/page/?home=Home'),
(235, 'http://finwaretech.com/magento_3/catalog/product/view/id/3', 'http://finwaretech.com/magento_3/web/admin/page/?home=Home'),
(236, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(237, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(238, 'http://finwaretech.com/magento_3/catalog/product/view/id/2', 'http://finwaretech.com/magento_3/web/admin/page/?home=Home'),
(239, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(240, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(241, 'http://finwaretech.com/magento_3/work/admin/page/?id=4&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/begenio-race-to-infinity.html'),
(242, 'http://finwaretech.com/magento_3/work/admin/page/?id=4&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/work/admin/page/?id=4&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(243, 'http://finwaretech.com/magento_3/', NULL),
(244, 'http://finwaretech.com/magento_3/catalog/product/view/id/4', 'http://finwaretech.com/magento_3/'),
(245, 'http://finwaretech.com/magento_3/catalog/product/view/id/2', 'http://finwaretech.com/magento_3/'),
(246, 'http://finwaretech.com/magento_3/catalog/product/view/id/3', 'http://finwaretech.com/magento_3/'),
(247, 'http://finwaretech.com/magento_3/work/admin/page/?id=3&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/tateossian.html'),
(248, 'http://finwaretech.com/magento_3/work/admin/page/?id=4&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/begenio-race-to-infinity.html'),
(249, 'http://finwaretech.com/magento_3/catalog/product/view/id/3', NULL),
(250, 'http://finwaretech.com/magento_3/work/admin/page/?id=3&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/tateossian.html'),
(251, 'http://finwaretech.com/magento_3/work/admin/page/?id=4&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/work/admin/page/?id=4&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(252, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(253, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(254, 'http://finwaretech.com/magento_3/work/admin/page/?id=3&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/tateossian.html'),
(255, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(256, 'http://finwaretech.com/magento_3/catalog/product/view/id/2', 'http://finwaretech.com/magento_3/'),
(257, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(258, 'http://finwaretech.com/magento_3/catalog/product/view/id/2', 'http://finwaretech.com/magento_3/'),
(259, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=247.95000000000002px&height=165.3px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(260, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(261, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=424.79999999999995px&height=283.2px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(262, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=424.79999999999995px&height=283.2px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(263, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=607.0500000000001px&height=404.70000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(264, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(265, 'http://finwaretech.com/magento_3/catalog/product/view/id/3', NULL),
(266, 'http://finwaretech.com/magento_3/catalog/product/view/id/2', NULL),
(267, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(268, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(269, 'http://finwaretech.com/magento_3/catalog/product/view/id/2', NULL),
(270, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(271, 'http://finwaretech.com/magento_3/catalog/product/view/id/4', 'http://finwaretech.com/magento_3/web/admin/page/?home=Home'),
(272, 'http://finwaretech.com/magento_3/work/admin/page/?id=4&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/begenio-race-to-infinity.html'),
(273, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(274, 'http://finwaretech.com/magento_3/catalog/product/view/id/4', 'http://finwaretech.com/magento_3/'),
(275, 'http://finwaretech.com/magento_3/work/admin/page/?id=4&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/begenio-race-to-infinity.html'),
(276, 'http://finwaretech.com/magento_3/work/admin/page/?id=4&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/work/admin/page/?id=4&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(277, 'http://finwaretech.com/magento_3/work/admin/page/?id=4&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/work/admin/page/?id=4&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(278, 'http://finwaretech.com/magento_3/catalog/product/view/id/4', 'http://finwaretech.com/magento_3/'),
(279, 'http://finwaretech.com/magento_3/work/admin/page/?id=4&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/begenio-race-to-infinity.html'),
(280, 'http://finwaretech.com/magento_3/work/admin/page/?id=4&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/begenio-race-to-infinity.html'),
(281, 'http://finwaretech.com/magento_3/work/admin/page/?id=4&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/work/admin/page/?id=4&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(282, 'http://finwaretech.com/magento_3/catalog/product/view/id/4', 'http://finwaretech.com/magento_3/'),
(283, 'http://finwaretech.com/magento_3/work/admin/page/?id=3&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/tateossian.html'),
(284, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(285, 'http://finwaretech.com/magento_3/', NULL),
(286, 'http://finwaretech.com/magento_3/catalog/product/view/id/1', 'http://finwaretech.com/magento_3/'),
(287, 'http://finwaretech.com/magento_3/work/admin/page/?id=1&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/cake.html'),
(288, 'http://finwaretech.com/magento_3/', NULL),
(289, 'http://finwaretech.com/magento_3/catalog/product/view/id/2', 'http://finwaretech.com/magento_3/'),
(290, 'http://finwaretech.com/magento_3/catalog/product/view/id/3', 'http://finwaretech.com/magento_3/'),
(291, 'http://finwaretech.com/magento_3/catalog/product/view/id/4', 'http://finwaretech.com/magento_3/'),
(292, 'http://finwaretech.com/magento_3/catalog/product/view/id/3', 'http://finwaretech.com/magento_3/'),
(293, 'http://finwaretech.com/magento_3/catalog/product/view/id/4', 'http://finwaretech.com/magento_3/'),
(294, 'http://finwaretech.com/magento_3/catalog/product/view/id/3', 'http://finwaretech.com/magento_3/'),
(295, 'http://finwaretech.com/magento_3/catalog/product/view/id/4', 'http://finwaretech.com/magento_3/'),
(296, 'http://finwaretech.com/magento_3/catalog/product/view/id/3', 'http://finwaretech.com/magento_3/web/admin/page/?home=Home'),
(297, 'http://finwaretech.com/magento_3/', NULL),
(298, 'http://finwaretech.com/magento_3/catalog/product/view/id/2', 'http://finwaretech.com/magento_3/'),
(299, 'http://finwaretech.com/magento_3/index.php/web/admin/page', 'http://finwaretech.com/magento_3/index.php/admin/dashboard/index/key/769b1c24b6c151abfce7d8acc0657cbc/'),
(300, 'http://finwaretech.com/magento_3/edit/admin/page/?id=2', 'http://finwaretech.com/magento_3/index.php/web/admin/page'),
(301, 'http://finwaretech.com/magento_3/index.php/web/admin/page', 'http://finwaretech.com/magento_3/index.php/admin/dashboard/index/key/769b1c24b6c151abfce7d8acc0657cbc/'),
(302, 'http://finwaretech.com/magento_3/edit/admin/page/?id=2', 'http://finwaretech.com/magento_3/index.php/web/admin/page'),
(303, 'http://finwaretech.com/magento_3/edit/admin/page/?id=2', 'http://finwaretech.com/magento_3/index.php/web/admin/page'),
(304, 'http://finwaretech.com/magento_3/index.php/web/admin/page', 'http://finwaretech.com/magento_3/index.php/admin/dashboard/index/key/769b1c24b6c151abfce7d8acc0657cbc/'),
(305, 'http://finwaretech.com/magento_3/edit/admin/page/?id=2', 'http://finwaretech.com/magento_3/index.php/web/admin/page'),
(306, 'http://finwaretech.com/magento_3/catalog/product/view/id/4', NULL),
(307, 'http://finwaretech.com/magento_3/work/admin/page/?id=4&ro=1&responsive=1&width=686px&height=457.3333333333333px&zoom_button=0', 'http://finwaretech.com/magento_3/begenio-race-to-infinity.html'),
(308, 'http://finwaretech.com/magento_3/index.php/web/admin/page', 'http://finwaretech.com/magento_3/index.php/admin/dashboard/index/key/769b1c24b6c151abfce7d8acc0657cbc/'),
(309, 'http://finwaretech.com/magento_3/edit/admin/page/?id=2', 'http://finwaretech.com/magento_3/index.php/web/admin/page'),
(310, 'http://finwaretech.com/magento_3/edit/admin/updateHotspot/id/2/', 'http://finwaretech.com/magento_3/edit/admin/page/?id=2');
INSERT INTO `log_url_info` (`url_id`, `url`, `referer`) VALUES
(311, 'http://finwaretech.com/magento_3/save/admin/page/id/2/', 'http://finwaretech.com/magento_3/edit/admin/page/?id=2'),
(312, 'http://finwaretech.com/magento_3/catalog/product/view/id/2?preview=View+Product', 'http://finwaretech.com/magento_3/save/admin/page/id/2/'),
(313, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html?preview=View+Product'),
(314, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(315, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=1&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(316, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=1&width=681px&height=406.33px'),
(317, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(318, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=5&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(319, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=5&width=681px&height=406.33px'),
(320, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(321, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=6&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(322, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=6&width=681px&height=406.33px'),
(323, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(324, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=3&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(325, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=3&width=681px&height=406.33px'),
(326, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(327, 'http://finwaretech.com/magento_3/catalog/product/view/id/2', 'http://finwaretech.com/magento_3/'),
(328, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(329, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(330, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=1&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(331, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=1&width=681px&height=406.33px'),
(332, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(333, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=1&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(334, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=1&width=681px&height=406.33px'),
(335, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(336, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(337, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px'),
(338, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(339, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(340, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px'),
(341, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(342, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=6&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(343, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=6&width=681px&height=406.33px'),
(344, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(345, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(346, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=6&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(347, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=6&width=681px&height=406.33px'),
(348, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(349, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(350, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(351, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=6&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(352, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=6&width=681px&height=406.33px'),
(353, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(354, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(355, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px'),
(356, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(357, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=3&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(358, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=3&width=681px&height=406.33px'),
(359, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(360, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(361, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px'),
(362, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px'),
(363, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(364, 'http://finwaretech.com/magento_3/', NULL),
(365, 'http://finwaretech.com/magento_3/catalog/product/view/id/4', 'http://finwaretech.com/magento_3/'),
(366, 'http://finwaretech.com/magento_3/', NULL),
(367, 'http://finwaretech.com/magento_3/catalog/product/view/id/2', 'http://finwaretech.com/magento_3/'),
(368, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(369, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(370, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(371, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px'),
(372, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(373, 'http://finwaretech.com/magento_3/', NULL),
(374, 'http://finwaretech.com/magento_3/catalog/product/view/id/2', 'http://finwaretech.com/magento_3/'),
(375, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(376, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(377, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(378, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(379, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px'),
(380, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html?preview=View+Product'),
(381, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(382, 'http://finwaretech.com/magento_3/catalog/product/view/id/2', NULL),
(383, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(384, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(385, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=1&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(386, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=1&width=681px&height=406.33px'),
(387, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(388, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=1&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(389, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=1&width=681px&height=406.33px'),
(390, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(391, 'http://finwaretech.com/magento_3/catalog/product/view/id/2?preview=View+Product', 'http://finwaretech.com/magento_3/save/admin/page/id/2/'),
(392, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html?preview=View+Product'),
(393, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(394, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=3&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(395, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=3&width=681px&height=406.33px'),
(396, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html?preview=View+Product'),
(397, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(398, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=3&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(399, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=3&width=681px&height=406.33px'),
(400, 'http://finwaretech.com/magento_3/catalog/product/view/id/2', NULL),
(401, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(402, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(403, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=6&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(404, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=6&width=681px&height=406.33px'),
(405, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(406, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=6&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(407, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=6&width=681px&height=406.33px'),
(408, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(409, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=6&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(410, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=6&width=681px&height=406.33px'),
(411, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(412, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(413, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px'),
(414, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(415, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(416, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px'),
(417, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(418, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(419, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px'),
(420, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(421, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(422, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(423, 'http://finwaretech.com/magento_3/catalog/product/view/id/2', NULL),
(424, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(425, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(426, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(427, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px'),
(428, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(429, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(430, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px'),
(431, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(432, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=6&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(433, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=6&width=681px&height=406.33px'),
(434, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(435, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=6&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(436, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=6&width=681px&height=406.33px'),
(437, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(438, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=6&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(439, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=6&width=681px&height=406.33px'),
(440, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(441, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=6&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(442, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=6&width=681px&height=406.33px'),
(443, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(444, 'http://finwaretech.com/magento_3/catalog/product/view/id/2', NULL),
(445, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(446, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(447, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=6&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(448, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=6&width=681px&height=406.33px'),
(449, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=6&width=681px&height=406.33px'),
(450, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(451, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(452, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(453, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=6&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(454, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=6&width=681px&height=406.33px'),
(455, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(456, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=6&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(457, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=6&width=681px&height=406.33px'),
(458, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(459, 'http://finwaretech.com/magento_3/catalog/product/view/id/2', NULL),
(460, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(461, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(462, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(463, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(464, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px'),
(465, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(466, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(467, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px'),
(468, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(469, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(470, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px'),
(471, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(472, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=6&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(473, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=6&width=681px&height=406.33px'),
(474, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(475, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(476, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(477, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(478, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(479, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=3&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(480, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=3&width=681px&height=406.33px'),
(481, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(482, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=3&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(483, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=3&width=681px&height=406.33px'),
(484, 'http://finwaretech.com/magento_3/database', NULL),
(485, 'http://finwaretech.com/magento_3/', NULL),
(486, 'http://finwaretech.com/magento_3/catalog/product/view/id/2', 'http://finwaretech.com/magento_3/'),
(487, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(488, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(489, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(490, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px'),
(491, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(492, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=6&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(493, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=6&width=681px&height=406.33px'),
(494, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(495, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=6&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(496, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=6&width=681px&height=406.33px'),
(497, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(498, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(499, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px'),
(500, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(501, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=1&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(502, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=1&width=681px&height=406.33px'),
(503, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(504, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=1&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(505, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=1&width=681px&height=406.33px'),
(506, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(507, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(508, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(509, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=3&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(510, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=3&width=681px&height=406.33px'),
(511, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(512, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=3&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(513, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=3&width=681px&height=406.33px'),
(514, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(515, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=5&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(516, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=5&width=681px&height=406.33px'),
(517, 'http://finwaretech.com/magento_3/catalog/product/view/id/2', 'http://finwaretech.com/magento_3/'),
(518, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(519, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(520, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=3&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(521, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=3&width=681px&height=406.33px'),
(522, 'http://finwaretech.com/magento_3/catalog/product/view/id/2', 'http://finwaretech.com/magento_3/'),
(523, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(524, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(525, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=3&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(526, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=3&width=681px&height=406.33px'),
(527, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(528, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(529, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px'),
(530, 'http://finwaretech.com/magento_3/catalog/product/view/id/2', 'http://finwaretech.com/magento_3/'),
(531, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(532, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(533, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=1&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(534, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=1&width=681px&height=406.33px'),
(535, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(536, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(537, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px'),
(538, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(539, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=6&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(540, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=6&width=681px&height=406.33px'),
(541, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(542, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=2&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(543, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=2&width=681px&height=406.33px'),
(544, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(545, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=2&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(546, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=2&width=681px&height=406.33px'),
(547, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(548, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=5&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(549, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=5&width=681px&height=406.33px'),
(550, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(551, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=7&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(552, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=7&width=681px&height=406.33px'),
(553, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(554, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(555, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(556, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(557, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(558, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=3&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(559, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=3&width=681px&height=406.33px');
INSERT INTO `log_url_info` (`url_id`, `url`, `referer`) VALUES
(560, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(561, 'http://finwaretech.com/magento_3/catalog/product/view/id/2', 'http://finwaretech.com/magento_3/'),
(562, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(563, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(564, 'http://finwaretech.com/magento_3/catalog/product/view/id/2', 'http://finwaretech.com/magento_3/'),
(565, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(566, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(567, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=3&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(568, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=3&width=681px&height=406.33px'),
(569, 'http://finwaretech.com/magento_3/catalog/product/view/id/2', 'http://finwaretech.com/magento_3/'),
(570, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(571, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(572, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(573, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px'),
(574, 'http://finwaretech.com/magento_3/catalog/product/view/id/2', 'http://finwaretech.com/magento_3/'),
(575, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(576, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(577, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=3&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(578, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=3&width=681px&height=406.33px'),
(579, 'http://finwaretech.com/magento_3/catalog/product/view/id/2', 'http://finwaretech.com/magento_3/'),
(580, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(581, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(582, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=3&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(583, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=3&width=681px&height=406.33px'),
(584, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(585, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=5&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(586, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=5&width=681px&height=406.33px'),
(587, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(588, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(589, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px'),
(590, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(591, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(592, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px'),
(593, 'http://finwaretech.com/magento_3/catalog/product/view/id/2', 'http://finwaretech.com/magento_3/'),
(594, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(595, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(596, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(597, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px'),
(598, 'http://finwaretech.com/magento_3/catalog/product/view/id/2', 'http://finwaretech.com/magento_3/'),
(599, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(600, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(601, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(602, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(603, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px'),
(604, 'http://finwaretech.com/magento_3/catalog/product/view/id/2', 'http://finwaretech.com/magento_3/'),
(605, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(606, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(607, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(608, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px'),
(609, 'http://finwaretech.com/magento_3/catalog/product/view/id/2', 'http://finwaretech.com/magento_3/'),
(610, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(611, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(612, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(613, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px'),
(614, 'http://finwaretech.com/magento_3/catalog/product/view/id/2', 'http://finwaretech.com/magento_3/'),
(615, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(616, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(617, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(618, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px'),
(619, 'http://finwaretech.com/magento_3/catalog/product/view/id/2', 'http://finwaretech.com/magento_3/'),
(620, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(621, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(622, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(623, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px'),
(624, 'http://finwaretech.com/magento_3/catalog/product/view/id/2', 'http://finwaretech.com/magento_3/'),
(625, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(626, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(627, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(628, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px'),
(629, 'http://finwaretech.com/magento_3/catalog/product/view/id/2', 'http://finwaretech.com/magento_3/'),
(630, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(631, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(632, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(633, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px'),
(634, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(635, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=1&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(636, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=1&width=681px&height=406.33px'),
(637, 'http://finwaretech.com/magento_3/catalog/product/view/id/2', 'http://finwaretech.com/magento_3/'),
(638, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(639, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(640, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(641, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px'),
(642, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(643, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=1&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(644, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=1&width=681px&height=406.33px'),
(645, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(646, 'http://finwaretech.com/magento_3/catalog/product/view/id/2', 'http://finwaretech.com/magento_3/'),
(647, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(648, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(649, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(650, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4&width=681px&height=406.33px'),
(651, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(652, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=1&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(653, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=1&width=681px&height=406.33px'),
(654, 'http://finwaretech.com/magento_3/catalog/product/view/id/2', 'http://finwaretech.com/magento_3/'),
(655, 'http://finwaretech.com/magento_3/catalog/product/view/id/2', 'http://finwaretech.com/magento_3/'),
(656, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(657, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(658, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=1&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(659, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=1&width=681px&height=406.33px'),
(660, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(661, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=3&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(662, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=3&width=681px&height=406.33px'),
(663, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(664, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=2&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(665, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=2&width=681px&height=406.33px'),
(666, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(667, 'http://finwaretech.com/magento_3/catalog/product/view/id/2', 'http://finwaretech.com/magento_3/'),
(668, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(669, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(670, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=1&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(671, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=1&width=681px&height=406.33px'),
(672, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(673, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=2&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(674, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=2&width=681px&height=406.33px'),
(675, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(676, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=7&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(677, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=7&width=681px&height=406.33px'),
(678, 'http://finwaretech.com/magento_3/', 'http://finwaretech.com/magento_3/test-product.html'),
(679, 'http://finwaretech.com/magento_3/catalog/product/view/id/1', 'http://finwaretech.com/magento_3/'),
(680, 'http://finwaretech.com/magento_3/work/admin/page/?id=1&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/cake.html'),
(681, 'http://finwaretech.com/magento_3/', 'http://finwaretech.com/magento_3/test-product.html'),
(682, 'http://finwaretech.com/magento_3/catalog/product/view/id/3', 'http://finwaretech.com/magento_3/'),
(683, 'http://finwaretech.com/magento_3/work/admin/page/?id=3&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/tateossian.html'),
(684, 'http://finwaretech.com/magento_3/catalog/product/view/id/3', 'http://finwaretech.com/magento_3/'),
(685, 'http://finwaretech.com/magento_3/work/admin/page/?id=3&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/tateossian.html'),
(686, 'http://finwaretech.com/magento_3/', 'http://finwaretech.com/magento_3/tateossian.html'),
(687, 'http://finwaretech.com/magento_3/catalog/product/view/id/1', 'http://finwaretech.com/magento_3/'),
(688, 'http://finwaretech.com/magento_3/work/admin/page/?id=1&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/cake.html'),
(689, 'http://finwaretech.com/magento_3/', 'http://finwaretech.com/magento_3/cake.html'),
(690, 'http://finwaretech.com/magento_3/catalog/product/view/id/4', 'http://finwaretech.com/magento_3/'),
(691, 'http://finwaretech.com/magento_3/work/admin/page/?id=4&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/begenio-race-to-infinity.html'),
(692, 'http://finwaretech.com/magento_3/work/admin/page/?id=4&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/work/admin/page/?id=4&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(693, 'http://finwaretech.com/magento_3/', 'http://finwaretech.com/magento_3/begenio-race-to-infinity.html'),
(694, 'http://finwaretech.com/magento_3/catalog/product/view/id/2', 'http://finwaretech.com/magento_3/'),
(695, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/test-product.html'),
(696, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(697, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=1&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(698, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=1&width=681px&height=406.33px'),
(699, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(700, 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=2&width=681px&height=406.33px', 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px'),
(701, 'http://finwaretech.com/magento_3/hotspot/admin/page/?status_for_audio=1&id=2&width=681px&height=406px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=2&width=681px&height=406.33px'),
(702, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', 'http://finwaretech.com/magento_3/work/admin/page/?id=2&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0'),
(703, 'http://finwaretech.com/magento_3/', 'http://finwaretech.com/magento_3/test-product.html'),
(704, 'http://finwaretech.com/magento_3/catalog/product/view/id/3', 'http://finwaretech.com/magento_3/'),
(705, 'http://finwaretech.com/magento_3/work/admin/page/?id=3&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/tateossian.html'),
(706, 'http://finwaretech.com/magento_3/', 'http://finwaretech.com/magento_3/tateossian.html'),
(707, 'http://finwaretech.com/magento_3/catalog/product/view/id/4', 'http://finwaretech.com/magento_3/'),
(708, 'http://finwaretech.com/magento_3/work/admin/page/?id=4&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/begenio-race-to-infinity.html'),
(709, 'http://finwaretech.com/magento_3/work/admin/page/?id=4&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/begenio-race-to-infinity.html'),
(710, 'http://finwaretech.com/magento_3/catalog/product/view/id/4', 'http://finwaretech.com/magento_3/'),
(711, 'http://finwaretech.com/magento_3/catalog/product/view/id/4', 'http://finwaretech.com/magento_3/'),
(712, 'http://finwaretech.com/magento_3/work/admin/page/?id=4&ro=1&responsive=1&width=681.3000000000001px&height=454.20000000000005px&zoom_button=0', 'http://finwaretech.com/magento_3/begenio-race-to-infinity.html'),
(713, 'http://finwaretech.com/magento_3/catalog/product/view/id/4', 'http://finwaretech.com/magento_3/'),
(714, 'http://finwaretech.com/magento_3/hotspot/admin/page/?id=2&width=681px&height=454px', NULL),
(715, 'http://finwaretech.com/magento_3/index.php/web/admin/page', 'http://finwaretech.com/magento_3/index.php/admin/dashboard/index/key/98ba610d7d852d37eb4818d079aad6a3/'),
(716, 'http://finwaretech.com/magento_3/edit/admin/page/?id=1', 'http://finwaretech.com/magento_3/index.php/web/admin/page'),
(717, 'http://finwaretech.com/magento_3/edit/admin/page/?id=9', NULL),
(718, 'http://finwaretech.com/magento_3/', 'http://finwaretech.com/magento_3/begenio-race-to-infinity.html'),
(719, 'http://finwaretech.com/magento_3/edit/admin/page/?id=1', NULL),
(720, 'http://finwaretech.com/magento_3/edit/admin/page/?id=9', NULL),
(721, 'http://finwaretech.com/magento_3/edit/admin/page/?id=1', 'http://finwaretech.com/magento_3/index.php/web/admin/page'),
(722, 'http://finwaretech.com/magento_3/index.php/web/admin/page', 'http://finwaretech.com/magento_3/index.php/admin/dashboard/index/key/98ba610d7d852d37eb4818d079aad6a3/'),
(723, 'http://finwaretech.com/magento_3/edit/admin/page/?id=1', 'http://finwaretech.com/magento_3/index.php/web/admin/page'),
(724, 'http://finwaretech.com/magento_3/edit/admin/updateHotspot/id/1/', 'http://finwaretech.com/magento_3/edit/admin/page/?id=1'),
(725, 'http://finwaretech.com/magento_3/save/admin/page/id/1/', 'http://finwaretech.com/magento_3/edit/admin/page/?id=1'),
(726, 'http://finwaretech.com/magento_3/catalog/product/view/id/1?preview=View+Product', 'http://finwaretech.com/magento_3/save/admin/page/id/1/'),
(727, 'http://finwaretech.com/magento_3/web/admin/page/?home=Home', 'http://finwaretech.com/magento_3/save/admin/page/id/1/'),
(728, 'http://finwaretech.com/magento_3/edit/admin/page/?id=1', 'http://finwaretech.com/magento_3/web/admin/page/?home=Home'),
(729, 'http://finwaretech.com/magento_3/edit/admin/page/?id=1', NULL),
(730, 'http://finwaretech.com/magento_3/', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `log_visitor`
--

CREATE TABLE IF NOT EXISTS `log_visitor` (
  `visitor_id` bigint(20) unsigned NOT NULL COMMENT 'Visitor ID',
  `session_id` varchar(64) DEFAULT NULL COMMENT 'Session ID',
  `first_visit_at` timestamp NULL DEFAULT NULL COMMENT 'First Visit Time',
  `last_visit_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Last Visit Time',
  `last_url_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Last URL ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID'
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='Log Visitors Table';

--
-- Dumping data for table `log_visitor`
--

INSERT INTO `log_visitor` (`visitor_id`, `session_id`, `first_visit_at`, `last_visit_at`, `last_url_id`, `store_id`) VALUES
(1, '83aeb5e65e7b1bb5e626c83a7ede87ce', '2017-02-04 17:02:54', '2017-02-04 17:22:39', 9, 1),
(2, '806bfcf72bda0d2f32bf99eb8ad55f5c', '2017-02-05 09:37:21', '2017-02-05 10:51:44', 206, 1),
(3, '895af9efc09f936528ce999e6b987044', '2017-02-05 10:01:16', '2017-02-05 10:03:16', 107, 1),
(4, '92b902919f69b7584bba459254ce9448', '2017-02-05 10:19:04', '2017-02-05 10:21:26', 160, 1),
(5, 'fb0dafb3099d45210fc9bd98ac0f8f73', '2017-02-05 14:37:19', '2017-02-05 14:38:14', 213, 1),
(6, '7aecfccdd6d0b054fd989b6f293deeca', '2017-02-05 16:36:50', '2017-02-05 17:08:06', 226, 1),
(7, 'ba9a8c99217e86c00ceb82fcb58fd119', '2017-02-05 16:47:04', '2017-02-05 16:47:20', 225, 1),
(8, '7aecfccdd6d0b054fd989b6f293deeca', '2017-02-05 17:09:26', '2017-02-05 17:14:52', 231, 1),
(9, '09db8520a94c4a1492a696a28a427316', '2017-02-05 18:19:07', '2017-02-05 20:08:13', 483, 1),
(10, '69fbca8eeaff7aec91744f092c77669e', '2017-02-05 18:22:00', '2017-02-05 20:03:04', 443, 1),
(11, '931b279bfb35e023e7fb150c338c4ae7', '2017-02-05 18:22:27', '2017-02-05 18:29:16', 265, 1),
(12, '1f3b7d78433664332c2d8b9ece205cd3', '2017-02-05 18:48:36', '2017-02-05 18:49:43', 295, 1),
(13, 'b29d8d06afc07dca49a1e840dc66429a', '2017-02-05 18:48:36', '2017-02-05 18:49:43', 294, 1),
(14, 'db47da27a01cfeef56f089a68939d513', '2017-02-05 19:07:11', '2017-02-05 19:07:16', 307, 1),
(15, 'a71ea793f6c8ee9d161afb0e8a3e1175', '2017-02-05 20:03:06', '2017-02-05 20:03:55', 458, 1),
(16, '2bc2a938bdfe14a240398c16d3d22927', '2017-02-05 20:05:32', '2017-02-05 20:07:01', 476, 1),
(17, '8c0c1cea0ee472da51be252ba05777e4', '2017-02-07 17:43:23', '2017-02-07 17:43:25', 484, 1),
(18, '7f591e4543060725b808f3bd3e00d1cf', '2017-02-12 10:43:50', '2017-02-12 13:48:42', 729, 1),
(19, '138481dbee0e20562b327f901c4ff957', '2017-02-12 15:01:36', '2017-02-12 15:01:38', 730, 1);

-- --------------------------------------------------------

--
-- Table structure for table `log_visitor_info`
--

CREATE TABLE IF NOT EXISTS `log_visitor_info` (
  `visitor_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Visitor ID',
  `http_referer` varchar(255) DEFAULT NULL COMMENT 'HTTP Referrer',
  `http_user_agent` varchar(255) DEFAULT NULL COMMENT 'HTTP User-Agent',
  `http_accept_charset` varchar(255) DEFAULT NULL COMMENT 'HTTP Accept-Charset',
  `http_accept_language` varchar(255) DEFAULT NULL COMMENT 'HTTP Accept-Language',
  `server_addr` bigint(20) DEFAULT NULL COMMENT 'Server Address',
  `remote_addr` bigint(20) DEFAULT NULL COMMENT 'Remote Address'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log Visitor Info Table';

--
-- Dumping data for table `log_visitor_info`
--

INSERT INTO `log_visitor_info` (`visitor_id`, `http_referer`, `http_user_agent`, `http_accept_charset`, `http_accept_language`, `server_addr`, `remote_addr`) VALUES
(1, NULL, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', NULL, 'en-US,en;q=0.8', 2727349888, 3394827436),
(2, NULL, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', NULL, 'en-US,en;q=0.8', 2727349888, 3394827436),
(3, NULL, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', NULL, 'en-US,en;q=0.8', 2727349888, 3394827436),
(4, NULL, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', NULL, 'en-US,en;q=0.8', 2727349888, 3394827436),
(5, NULL, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', NULL, 'en-US,en;q=0.8', 2727349888, 3394827436),
(6, NULL, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', NULL, 'en-US,en;q=0.8', 2727349888, 3394827436),
(7, NULL, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', NULL, 'en-GB,en-US;q=0.8,en;q=0.6', 2727349888, 3394827436),
(8, 'http://finwaretech.com/magento_3/save/admin/page/id/1/', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', NULL, 'en-US,en;q=0.8', 2727349888, 3394827436),
(9, 'http://finwaretech.com/magento_3/save/admin/page/id/2/', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', NULL, 'en-US,en;q=0.8', 2727349888, 3394827436),
(10, NULL, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', NULL, 'en-GB,en-US;q=0.8,en;q=0.6', 2727349888, 3394827436),
(11, NULL, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', NULL, 'en-US,en;q=0.8', 2727349888, 3394827436),
(12, 'http://finwaretech.com/magento_3/', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0))', NULL, NULL, 2727349888, 3394827436),
(13, 'http://finwaretech.com/magento_3/', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0))', NULL, NULL, 2727349888, 3394827436),
(14, NULL, 'Mozilla/5.0 (Linux; Android 6.0; VIE-L09 Build/HUAWEIVIE-L09) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.91 Mobile Safari/537.36', NULL, 'en-GB,en-US;q=0.8,en;q=0.6', 2727349888, 2499575817),
(15, NULL, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', NULL, 'en-GB,en-US;q=0.8,en;q=0.6', 2727349888, 3394827436),
(16, NULL, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', NULL, 'en-GB,en-US;q=0.8,en;q=0.6', 2727349888, 3394827436),
(17, NULL, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', NULL, 'en-US,en;q=0.8', 2727349888, 3394827436),
(18, NULL, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', NULL, 'en-US,en;q=0.8', 2727349888, 3394827436),
(19, NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', NULL, 'en-US,en;q=0.8', 2727349888, 3394827436);

-- --------------------------------------------------------

--
-- Table structure for table `log_visitor_online`
--

CREATE TABLE IF NOT EXISTS `log_visitor_online` (
  `visitor_id` bigint(20) unsigned NOT NULL COMMENT 'Visitor ID',
  `visitor_type` varchar(1) NOT NULL COMMENT 'Visitor Type',
  `remote_addr` bigint(20) NOT NULL COMMENT 'Remote Address',
  `first_visit_at` timestamp NULL DEFAULT NULL COMMENT 'First Visit Time',
  `last_visit_at` timestamp NULL DEFAULT NULL COMMENT 'Last Visit Time',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer ID',
  `last_url` varchar(255) DEFAULT NULL COMMENT 'Last URL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log Visitor Online Table';

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_problem`
--

CREATE TABLE IF NOT EXISTS `newsletter_problem` (
  `problem_id` int(10) unsigned NOT NULL COMMENT 'Problem Id',
  `subscriber_id` int(10) unsigned DEFAULT NULL COMMENT 'Subscriber Id',
  `queue_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Queue Id',
  `problem_error_code` int(10) unsigned DEFAULT '0' COMMENT 'Problem Error Code',
  `problem_error_text` varchar(200) DEFAULT NULL COMMENT 'Problem Error Text'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Problems';

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_queue`
--

CREATE TABLE IF NOT EXISTS `newsletter_queue` (
  `queue_id` int(10) unsigned NOT NULL COMMENT 'Queue Id',
  `template_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Template Id',
  `newsletter_type` int(11) DEFAULT NULL COMMENT 'Newsletter Type',
  `newsletter_text` text COMMENT 'Newsletter Text',
  `newsletter_styles` text COMMENT 'Newsletter Styles',
  `newsletter_subject` varchar(200) DEFAULT NULL COMMENT 'Newsletter Subject',
  `newsletter_sender_name` varchar(200) DEFAULT NULL COMMENT 'Newsletter Sender Name',
  `newsletter_sender_email` varchar(200) DEFAULT NULL COMMENT 'Newsletter Sender Email',
  `queue_status` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Queue Status',
  `queue_start_at` timestamp NULL DEFAULT NULL COMMENT 'Queue Start At',
  `queue_finish_at` timestamp NULL DEFAULT NULL COMMENT 'Queue Finish At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue';

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_queue_link`
--

CREATE TABLE IF NOT EXISTS `newsletter_queue_link` (
  `queue_link_id` int(10) unsigned NOT NULL COMMENT 'Queue Link Id',
  `queue_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Queue Id',
  `subscriber_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Subscriber Id',
  `letter_sent_at` timestamp NULL DEFAULT NULL COMMENT 'Letter Sent At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue Link';

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_queue_store_link`
--

CREATE TABLE IF NOT EXISTS `newsletter_queue_store_link` (
  `queue_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Queue Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue Store Link';

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_subscriber`
--

CREATE TABLE IF NOT EXISTS `newsletter_subscriber` (
  `subscriber_id` int(10) unsigned NOT NULL COMMENT 'Subscriber Id',
  `store_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Store Id',
  `change_status_at` timestamp NULL DEFAULT NULL COMMENT 'Change Status At',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Id',
  `subscriber_email` varchar(150) DEFAULT NULL COMMENT 'Subscriber Email',
  `subscriber_status` int(11) NOT NULL DEFAULT '0' COMMENT 'Subscriber Status',
  `subscriber_confirm_code` varchar(32) DEFAULT 'NULL' COMMENT 'Subscriber Confirm Code'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Subscriber';

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_template`
--

CREATE TABLE IF NOT EXISTS `newsletter_template` (
  `template_id` int(10) unsigned NOT NULL COMMENT 'Template Id',
  `template_code` varchar(150) DEFAULT NULL COMMENT 'Template Code',
  `template_text` text COMMENT 'Template Text',
  `template_text_preprocessed` text COMMENT 'Template Text Preprocessed',
  `template_styles` text COMMENT 'Template Styles',
  `template_type` int(10) unsigned DEFAULT NULL COMMENT 'Template Type',
  `template_subject` varchar(200) DEFAULT NULL COMMENT 'Template Subject',
  `template_sender_name` varchar(200) DEFAULT NULL COMMENT 'Template Sender Name',
  `template_sender_email` varchar(200) DEFAULT NULL COMMENT 'Template Sender Email',
  `template_actual` smallint(5) unsigned DEFAULT '1' COMMENT 'Template Actual',
  `added_at` timestamp NULL DEFAULT NULL COMMENT 'Added At',
  `modified_at` timestamp NULL DEFAULT NULL COMMENT 'Modified At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Template';

-- --------------------------------------------------------

--
-- Table structure for table `oauth_consumer`
--

CREATE TABLE IF NOT EXISTS `oauth_consumer` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `name` varchar(255) NOT NULL COMMENT 'Name of consumer',
  `key` varchar(32) NOT NULL COMMENT 'Key code',
  `secret` varchar(32) NOT NULL COMMENT 'Secret code',
  `callback_url` varchar(255) DEFAULT NULL COMMENT 'Callback URL',
  `rejected_callback_url` varchar(255) NOT NULL COMMENT 'Rejected callback URL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='OAuth Consumers';

-- --------------------------------------------------------

--
-- Table structure for table `oauth_nonce`
--

CREATE TABLE IF NOT EXISTS `oauth_nonce` (
  `nonce` varchar(32) NOT NULL COMMENT 'Nonce String',
  `timestamp` int(10) unsigned NOT NULL COMMENT 'Nonce Timestamp'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='oauth_nonce';

-- --------------------------------------------------------

--
-- Table structure for table `oauth_token`
--

CREATE TABLE IF NOT EXISTS `oauth_token` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `consumer_id` int(10) unsigned NOT NULL COMMENT 'Consumer ID',
  `admin_id` int(10) unsigned DEFAULT NULL COMMENT 'Admin user ID',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer user ID',
  `type` varchar(16) NOT NULL COMMENT 'Token Type',
  `token` varchar(32) NOT NULL COMMENT 'Token',
  `secret` varchar(32) NOT NULL COMMENT 'Token Secret',
  `verifier` varchar(32) DEFAULT NULL COMMENT 'Token Verifier',
  `callback_url` varchar(255) NOT NULL COMMENT 'Token Callback URL',
  `revoked` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Token revoked',
  `authorized` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Token authorized',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Token creation timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='OAuth Tokens';

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_categories`
--

CREATE TABLE IF NOT EXISTS `oc_product_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('1','2','3','4') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_color`
--

CREATE TABLE IF NOT EXISTS `oc_product_color` (
  `color_id` int(11) NOT NULL,
  `product_id_fromcolor` int(11) NOT NULL,
  `product_id_tocolor` int(11) NOT NULL,
  `product_color` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_customize`
--

CREATE TABLE IF NOT EXISTS `oc_product_customize` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `scale` enum('Yes','No') NOT NULL,
  `button_color` varchar(100) NOT NULL,
  `text_color` varchar(100) NOT NULL,
  `band_color` varchar(100) NOT NULL,
  `hotspot_function` enum('1','0','NULL','') DEFAULT NULL,
  `hd_status` int(2) DEFAULT NULL,
  `heading` varchar(200) NOT NULL,
  `width` varchar(10) NOT NULL DEFAULT '749px',
  `height` varchar(10) NOT NULL DEFAULT '499px',
  `zoom_button` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oc_product_customize`
--

INSERT INTO `oc_product_customize` (`id`, `product_id`, `scale`, `button_color`, `text_color`, `band_color`, `hotspot_function`, `hd_status`, `heading`, `width`, `height`, `zoom_button`) VALUES
(153, 1, 'No', 'Black', 'White', 'Black', '1', 1, 'cake', '749px', '499px', '0'),
(154, 2, 'No', 'Black', 'White', 'Black', '1', 1, ' Happy land bus', '749px', '499px', '0'),
(155, 4, 'No', '#a46497', 'White', '#fdb233', '0', 1, 'Begenio - Race to Infinity', '749px', '499px', '0'),
(156, 3, 'No', 'black', 'white', 'black', '0', 1, 'Tateossian cufflinks', '749px', '499px', '0');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_hotspot`
--

CREATE TABLE IF NOT EXISTS `oc_product_hotspot` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `map_code` varchar(5120) COLLATE utf8_unicode_ci NOT NULL,
  `number_of_hotspot` int(5) NOT NULL,
  `home_image_link` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `width` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `height` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `audio_for_home_image` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oc_product_hotspot`
--

INSERT INTO `oc_product_hotspot` (`id`, `product_id`, `map_code`, `number_of_hotspot`, `home_image_link`, `width`, `height`, `name`, `audio_for_home_image`) VALUES
(18, 2, '<a href="http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=1" class="image_map" title="Feature 1" style="position: absolute; left:20.02840909090909%; top:77.22222222222223%; width:12.642045454545455%; height:18.14814814814815%; z-index: 2;"></a><a href="http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=2" class="image_map" title="Feature 2" style="position: absolute; left:46.02272727272727%; top:14.25925925925926%; width:7.386363636363637%; height:8.518518518518519%; z-index: 2;"></a><a href="http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=3" class="image_map" title="Feature 3" style="position: absolute; left:10.227272727272728%; top:22.22222222222222%; width:12.215909090909092%; height:17.037037037037038%; z-index: 2;"></a><a href="http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=4" class="image_map" title="Feature 4" style="position: absolute; left:14.772727272727273%; top:44.44444444444444%; width:7.670454545454546%; height:11.666666666666666%; z-index: 2;"></a><a href="http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=5" class="image_map" title="Feature 5" style="position: absolute; left:72.72727272727273%; top:40%; width:13.352272727272727%; height:10.185185185185185%; z-index: 2;"></a><a href="http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=6" class="image_map" title="Feature 6" style="position: absolute; left:73.01136363636364%; top:51.11111111111111%; width:9.375%; height:8.88888888888889%; z-index: 2;"></a><a href="http://finwaretech.com/magento_3/work/admin/page/?id=2&hotspot=7" class="image_map" title="Feature 7" style="position: absolute; left:35.08522727272727%; top:70%; width:6.8181818181818175%; height:6.111111111111111%; z-index: 2;"></a>', 7, 'media/add/interactivity/converted/2/converted/001.jpg', '704', '540', ' Happy land bus', NULL),
(19, 1, '<a href="http://finwaretech.com/magento_3/work/admin/page/?id=1&hotspot=1" class="image_map" title="Feature 1" style="position: absolute; left:19.03409090909091%; top:17.270788912579956%; width:22.727272727272727%; height:39.23240938166311%; z-index: 2;"></a>', 1, 'media/add/interactivity/converted/1/converted/001.jpg', '704', '469', 'cake', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_interactivity`
--

CREATE TABLE IF NOT EXISTS `oc_product_interactivity` (
  `interactivity_id` int(200) NOT NULL,
  `product_id` int(200) NOT NULL,
  `interactivity_name` varchar(400) CHARACTER SET latin1 NOT NULL,
  `interactivity_order` int(200) NOT NULL DEFAULT '1',
  `Pinteractivity` enum('360','360+360','360*360','Video') COLLATE utf8_unicode_ci NOT NULL DEFAULT '360+360',
  `frames` int(100) NOT NULL DEFAULT '1',
  `frame` int(100) NOT NULL DEFAULT '1',
  `rows` int(100) NOT NULL DEFAULT '0',
  `row` int(100) NOT NULL DEFAULT '1',
  `frame_change` varchar(500) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.15',
  `hor_rotation` int(100) NOT NULL DEFAULT '1',
  `ver_rotation` int(100) NOT NULL DEFAULT '1',
  `audio_condition` enum('no','single','loop') CHARACTER SET latin1 NOT NULL DEFAULT 'no',
  `audio_name` varchar(500) CHARACTER SET latin1 DEFAULT NULL,
  `audio_time` int(11) DEFAULT NULL,
  `video_url` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=1659 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oc_product_interactivity`
--

INSERT INTO `oc_product_interactivity` (`interactivity_id`, `product_id`, `interactivity_name`, `interactivity_order`, `Pinteractivity`, `frames`, `frame`, `rows`, `row`, `frame_change`, `hor_rotation`, `ver_rotation`, `audio_condition`, `audio_name`, `audio_time`, `video_url`) VALUES
(1657, 2, 'Feature 7', 7, '360', 19, 1, 0, 1, '0.6', 1, 1, 'no', NULL, NULL, ''),
(1658, 1, 'Feature 1', 1, '360', 4, 1, 0, 1, '0.15', 1, 1, 'no', NULL, NULL, ''),
(1656, 2, 'Feature 6', 6, '360', 19, 1, 0, 1, '0.15', 1, 1, 'loop', 'horn.mp3', NULL, ''),
(1655, 2, 'Feature 5', 5, '360', 19, 1, 0, 1, '0.15', 1, 1, 'loop', 'start engine.mp3', NULL, ''),
(1654, 2, 'Feature 4', 4, '360', 19, 1, 0, 1, '0.15', 1, 1, 'loop', 'bell.mp3', NULL, ''),
(1653, 2, 'Feature 3', 3, '360', 19, 1, 0, 1, '0.6', 1, 1, 'no', NULL, NULL, ''),
(1652, 2, 'Feature 2', 2, '360', 19, 1, 0, 1, '0.1', 1, 1, 'no', NULL, NULL, ''),
(1651, 2, 'Feature 1', 1, '360', 19, 1, 0, 1, '0.1', 1, 1, 'no', NULL, NULL, ''),
(1646, 4, 'Setup', 1, '360', 16, 1, 0, 1, '0.8', 1, 1, 'no', NULL, NULL, ''),
(1647, 4, 'Play', 2, '360', 16, 1, 0, 1, '8.15', 1, 1, 'loop', 'play.mp3', NULL, ''),
(1648, 4, 'View Scale', 3, '360', 1, 1, 0, 1, '0.15', 1, 1, 'no', NULL, NULL, ''),
(1649, 3, 'Move Mechanics', 1, '360', 13, 1, 0, 1, '0.15', 1, 1, 'no', NULL, NULL, ''),
(1650, 3, 'View 360', 2, '360', 15, 1, 0, 1, '0.15', 1, 1, 'no', NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_pattern`
--

CREATE TABLE IF NOT EXISTS `oc_product_pattern` (
  `pattern_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_id_frompattern` int(11) NOT NULL,
  `product_id_topattern` int(11) NOT NULL,
  `product_pattern` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_pattern1`
--

CREATE TABLE IF NOT EXISTS `oc_product_pattern1` (
  `pattern_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_pattern_url` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `button_visibility` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL,
  `to_product_id` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_troubleshoot_type`
--

CREATE TABLE IF NOT EXISTS `oc_product_troubleshoot_type` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `troubleshoot_type` varchar(4000) COLLATE utf8_unicode_ci NOT NULL,
  `troubleshoot_type_description` varchar(4000) COLLATE utf8_unicode_ci NOT NULL,
  `troubleshoot_type_url` varchar(400) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paypal_cert`
--

CREATE TABLE IF NOT EXISTS `paypal_cert` (
  `cert_id` smallint(5) unsigned NOT NULL COMMENT 'Cert Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `content` text COMMENT 'Content',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Certificate Table';

-- --------------------------------------------------------

--
-- Table structure for table `paypal_payment_transaction`
--

CREATE TABLE IF NOT EXISTS `paypal_payment_transaction` (
  `transaction_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `txn_id` varchar(100) DEFAULT NULL COMMENT 'Txn Id',
  `additional_information` blob COMMENT 'Additional Information',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='PayPal Payflow Link Payment Transaction';

-- --------------------------------------------------------

--
-- Table structure for table `paypal_settlement_report`
--

CREATE TABLE IF NOT EXISTS `paypal_settlement_report` (
  `report_id` int(10) unsigned NOT NULL COMMENT 'Report Id',
  `report_date` timestamp NULL DEFAULT NULL COMMENT 'Report Date',
  `account_id` varchar(64) DEFAULT NULL COMMENT 'Account Id',
  `filename` varchar(24) DEFAULT NULL COMMENT 'Filename',
  `last_modified` timestamp NULL DEFAULT NULL COMMENT 'Last Modified'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Settlement Report Table';

-- --------------------------------------------------------

--
-- Table structure for table `paypal_settlement_report_row`
--

CREATE TABLE IF NOT EXISTS `paypal_settlement_report_row` (
  `row_id` int(10) unsigned NOT NULL COMMENT 'Row Id',
  `report_id` int(10) unsigned NOT NULL COMMENT 'Report Id',
  `transaction_id` varchar(19) DEFAULT NULL COMMENT 'Transaction Id',
  `invoice_id` varchar(127) DEFAULT NULL COMMENT 'Invoice Id',
  `paypal_reference_id` varchar(19) DEFAULT NULL COMMENT 'Paypal Reference Id',
  `paypal_reference_id_type` varchar(3) DEFAULT NULL COMMENT 'Paypal Reference Id Type',
  `transaction_event_code` varchar(5) DEFAULT NULL COMMENT 'Transaction Event Code',
  `transaction_initiation_date` timestamp NULL DEFAULT NULL COMMENT 'Transaction Initiation Date',
  `transaction_completion_date` timestamp NULL DEFAULT NULL COMMENT 'Transaction Completion Date',
  `transaction_debit_or_credit` varchar(2) NOT NULL DEFAULT 'CR' COMMENT 'Transaction Debit Or Credit',
  `gross_transaction_amount` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Gross Transaction Amount',
  `gross_transaction_currency` varchar(3) DEFAULT '' COMMENT 'Gross Transaction Currency',
  `fee_debit_or_credit` varchar(2) DEFAULT NULL COMMENT 'Fee Debit Or Credit',
  `fee_amount` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Fee Amount',
  `fee_currency` varchar(3) DEFAULT NULL COMMENT 'Fee Currency',
  `custom_field` varchar(255) DEFAULT NULL COMMENT 'Custom Field',
  `consumer_id` varchar(127) DEFAULT NULL COMMENT 'Consumer Id',
  `payment_tracking_id` varchar(255) DEFAULT NULL COMMENT 'Payment Tracking ID',
  `store_id` varchar(50) DEFAULT NULL COMMENT 'Store ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Settlement Report Row Table';

-- --------------------------------------------------------

--
-- Table structure for table `persistent_session`
--

CREATE TABLE IF NOT EXISTS `persistent_session` (
  `persistent_id` int(10) unsigned NOT NULL COMMENT 'Session id',
  `key` varchar(50) NOT NULL COMMENT 'Unique cookie key',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `info` text COMMENT 'Session Data',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Persistent Session';

-- --------------------------------------------------------

--
-- Table structure for table `poll`
--

CREATE TABLE IF NOT EXISTS `poll` (
  `poll_id` int(10) unsigned NOT NULL COMMENT 'Poll Id',
  `poll_title` varchar(255) DEFAULT NULL COMMENT 'Poll title',
  `votes_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Votes Count',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id',
  `date_posted` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date posted',
  `date_closed` timestamp NULL DEFAULT NULL COMMENT 'Date closed',
  `active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is active',
  `closed` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is closed',
  `answers_display` smallint(6) DEFAULT NULL COMMENT 'Answers display'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Poll';

--
-- Dumping data for table `poll`
--

INSERT INTO `poll` (`poll_id`, `poll_title`, `votes_count`, `store_id`, `date_posted`, `date_closed`, `active`, `closed`, `answers_display`) VALUES
(1, 'What is your favorite color', 7, 0, '2014-02-21 11:51:51', NULL, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `poll_answer`
--

CREATE TABLE IF NOT EXISTS `poll_answer` (
  `answer_id` int(10) unsigned NOT NULL COMMENT 'Answer Id',
  `poll_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Poll Id',
  `answer_title` varchar(255) DEFAULT NULL COMMENT 'Answer title',
  `votes_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Votes Count',
  `answer_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Answers display'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Poll Answers';

--
-- Dumping data for table `poll_answer`
--

INSERT INTO `poll_answer` (`answer_id`, `poll_id`, `answer_title`, `votes_count`, `answer_order`) VALUES
(1, 1, 'Green', 4, 0),
(2, 1, 'Red', 1, 0),
(3, 1, 'Black', 0, 0),
(4, 1, 'Magenta', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `poll_store`
--

CREATE TABLE IF NOT EXISTS `poll_store` (
  `poll_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Poll Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Poll Store';

--
-- Dumping data for table `poll_store`
--

INSERT INTO `poll_store` (`poll_id`, `store_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `poll_vote`
--

CREATE TABLE IF NOT EXISTS `poll_vote` (
  `vote_id` int(10) unsigned NOT NULL COMMENT 'Vote Id',
  `poll_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Poll Id',
  `poll_answer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Poll answer id',
  `ip_address` bigint(20) DEFAULT NULL COMMENT 'Poll answer id',
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer id',
  `vote_time` timestamp NULL DEFAULT NULL COMMENT 'Date closed'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Poll Vote';

-- --------------------------------------------------------

--
-- Table structure for table `product_alert_price`
--

CREATE TABLE IF NOT EXISTS `product_alert_price` (
  `alert_price_id` int(10) unsigned NOT NULL COMMENT 'Product alert price id',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price amount',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website id',
  `add_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Product alert add date',
  `last_send_date` timestamp NULL DEFAULT NULL COMMENT 'Product alert last send date',
  `send_count` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Product alert send count',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Product alert status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Product Alert Price';

-- --------------------------------------------------------

--
-- Table structure for table `product_alert_stock`
--

CREATE TABLE IF NOT EXISTS `product_alert_stock` (
  `alert_stock_id` int(10) unsigned NOT NULL COMMENT 'Product alert stock id',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website id',
  `add_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Product alert add date',
  `send_date` timestamp NULL DEFAULT NULL COMMENT 'Product alert send date',
  `send_count` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Send Count',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Product alert status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Product Alert Stock';

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE IF NOT EXISTS `rating` (
  `rating_id` smallint(5) unsigned NOT NULL COMMENT 'Rating Id',
  `entity_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `rating_code` varchar(64) NOT NULL COMMENT 'Rating Code',
  `position` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Position On Frontend'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Ratings';

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`rating_id`, `entity_id`, `rating_code`, `position`) VALUES
(1, 1, 'Quality', 0),
(2, 1, 'Value', 0),
(3, 1, 'Price', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rating_entity`
--

CREATE TABLE IF NOT EXISTS `rating_entity` (
  `entity_id` smallint(5) unsigned NOT NULL COMMENT 'Entity Id',
  `entity_code` varchar(64) NOT NULL COMMENT 'Entity Code'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Rating entities';

--
-- Dumping data for table `rating_entity`
--

INSERT INTO `rating_entity` (`entity_id`, `entity_code`) VALUES
(1, 'product'),
(2, 'product_review'),
(3, 'review');

-- --------------------------------------------------------

--
-- Table structure for table `rating_option`
--

CREATE TABLE IF NOT EXISTS `rating_option` (
  `option_id` int(10) unsigned NOT NULL COMMENT 'Rating Option Id',
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Id',
  `code` varchar(32) NOT NULL COMMENT 'Rating Option Code',
  `value` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Option Value',
  `position` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Ration option position on frontend'
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='Rating options';

--
-- Dumping data for table `rating_option`
--

INSERT INTO `rating_option` (`option_id`, `rating_id`, `code`, `value`, `position`) VALUES
(1, 1, '1', 1, 1),
(2, 1, '2', 2, 2),
(3, 1, '3', 3, 3),
(4, 1, '4', 4, 4),
(5, 1, '5', 5, 5),
(6, 2, '1', 1, 1),
(7, 2, '2', 2, 2),
(8, 2, '3', 3, 3),
(9, 2, '4', 4, 4),
(10, 2, '5', 5, 5),
(11, 3, '1', 1, 1),
(12, 3, '2', 2, 2),
(13, 3, '3', 3, 3),
(14, 3, '4', 4, 4),
(15, 3, '5', 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `rating_option_vote`
--

CREATE TABLE IF NOT EXISTS `rating_option_vote` (
  `vote_id` bigint(20) unsigned NOT NULL COMMENT 'Vote id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Vote option id',
  `remote_ip` varchar(16) NOT NULL COMMENT 'Customer IP',
  `remote_ip_long` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Customer IP converted to long integer format',
  `customer_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer Id',
  `entity_pk_value` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating id',
  `review_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Review id',
  `percent` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Percent amount',
  `value` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Vote option value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating option values';

-- --------------------------------------------------------

--
-- Table structure for table `rating_option_vote_aggregated`
--

CREATE TABLE IF NOT EXISTS `rating_option_vote_aggregated` (
  `primary_id` int(11) NOT NULL COMMENT 'Vote aggregation id',
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating id',
  `entity_pk_value` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `vote_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Vote dty',
  `vote_value_sum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'General vote sum',
  `percent` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Vote percent',
  `percent_approved` smallint(6) DEFAULT '0' COMMENT 'Vote percent approved by admin',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating vote aggregated';

-- --------------------------------------------------------

--
-- Table structure for table `rating_store`
--

CREATE TABLE IF NOT EXISTS `rating_store` (
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating Store';

-- --------------------------------------------------------

--
-- Table structure for table `rating_title`
--

CREATE TABLE IF NOT EXISTS `rating_title` (
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) NOT NULL COMMENT 'Rating Label'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating Title';

-- --------------------------------------------------------

--
-- Table structure for table `report_compared_product_index`
--

CREATE TABLE IF NOT EXISTS `report_compared_product_index` (
  `index_id` bigint(20) unsigned NOT NULL COMMENT 'Index Id',
  `visitor_id` int(10) unsigned DEFAULT NULL COMMENT 'Visitor Id',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `added_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Added At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reports Compared Product Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `report_event`
--

CREATE TABLE IF NOT EXISTS `report_event` (
  `event_id` bigint(20) unsigned NOT NULL COMMENT 'Event Id',
  `logged_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Logged At',
  `event_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Event Type Id',
  `object_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Object Id',
  `subject_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Subject Id',
  `subtype` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Subtype',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id'
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8 COMMENT='Reports Event Table';

--
-- Dumping data for table `report_event`
--

INSERT INTO `report_event` (`event_id`, `logged_at`, `event_type_id`, `object_id`, `subject_id`, `subtype`, `store_id`) VALUES
(1, '2017-02-05 09:53:28', 1, 1, 2, 1, 1),
(2, '2017-02-05 09:57:56', 1, 1, 2, 1, 1),
(3, '2017-02-05 09:58:25', 1, 1, 2, 1, 1),
(4, '2017-02-05 10:00:34', 1, 1, 2, 1, 1),
(5, '2017-02-05 10:00:40', 1, 1, 2, 1, 1),
(6, '2017-02-05 10:01:16', 1, 1, 3, 1, 1),
(7, '2017-02-05 10:03:21', 1, 1, 2, 1, 1),
(8, '2017-02-05 10:04:57', 1, 1, 2, 1, 1),
(9, '2017-02-05 10:05:13', 1, 1, 2, 1, 1),
(10, '2017-02-05 10:08:33', 1, 1, 2, 1, 1),
(11, '2017-02-05 10:18:12', 1, 2, 2, 1, 1),
(12, '2017-02-05 10:19:05', 1, 2, 4, 1, 1),
(13, '2017-02-05 14:37:20', 1, 1, 5, 1, 1),
(14, '2017-02-05 14:38:07', 1, 1, 5, 1, 1),
(15, '2017-02-05 14:38:11', 1, 2, 5, 1, 1),
(16, '2017-02-05 16:43:07', 1, 1, 6, 1, 1),
(17, '2017-02-05 16:47:09', 1, 1, 7, 1, 1),
(18, '2017-02-05 17:09:26', 1, 1, 8, 1, 1),
(19, '2017-02-05 18:19:38', 1, 2, 9, 1, 1),
(20, '2017-02-05 18:19:39', 1, 4, 9, 1, 1),
(21, '2017-02-05 18:19:42', 1, 3, 9, 1, 1),
(22, '2017-02-05 18:20:34', 1, 2, 9, 1, 1),
(23, '2017-02-05 18:22:07', 1, 4, 10, 1, 1),
(24, '2017-02-05 18:22:08', 1, 2, 10, 1, 1),
(25, '2017-02-05 18:22:09', 1, 3, 10, 1, 1),
(26, '2017-02-05 18:22:27', 1, 3, 11, 1, 1),
(27, '2017-02-05 18:24:22', 1, 2, 10, 1, 1),
(28, '2017-02-05 18:25:12', 1, 2, 10, 1, 1),
(29, '2017-02-05 18:29:16', 1, 3, 11, 1, 1),
(30, '2017-02-05 18:29:40', 1, 2, 9, 1, 1),
(31, '2017-02-05 18:32:01', 1, 2, 9, 1, 1),
(32, '2017-02-05 18:33:02', 1, 4, 9, 1, 1),
(33, '2017-02-05 18:34:30', 1, 4, 10, 1, 1),
(34, '2017-02-05 18:35:15', 1, 4, 10, 1, 1),
(35, '2017-02-05 18:41:04', 1, 4, 10, 1, 1),
(36, '2017-02-05 18:44:05', 1, 1, 10, 1, 1),
(37, '2017-02-05 18:47:08', 1, 2, 10, 1, 1),
(38, '2017-02-05 18:48:36', 1, 3, 13, 1, 1),
(39, '2017-02-05 18:48:36', 1, 4, 12, 1, 1),
(40, '2017-02-05 18:49:12', 1, 3, 13, 1, 1),
(41, '2017-02-05 18:49:13', 1, 4, 12, 1, 1),
(42, '2017-02-05 18:49:43', 1, 4, 12, 1, 1),
(43, '2017-02-05 18:49:43', 1, 3, 13, 1, 1),
(44, '2017-02-05 18:52:06', 1, 3, 9, 1, 1),
(45, '2017-02-05 18:55:31', 1, 2, 9, 1, 1),
(46, '2017-02-05 19:07:11', 1, 4, 14, 1, 1),
(47, '2017-02-05 19:18:43', 1, 2, 9, 1, 1),
(48, '2017-02-05 19:26:40', 1, 2, 10, 1, 1),
(49, '2017-02-05 19:29:14', 1, 4, 10, 1, 1),
(50, '2017-02-05 19:29:19', 1, 2, 10, 1, 1),
(51, '2017-02-05 19:29:32', 1, 2, 10, 1, 1),
(52, '2017-02-05 19:51:19', 1, 2, 9, 1, 1),
(53, '2017-02-05 19:54:42', 1, 2, 9, 1, 1),
(54, '2017-02-05 19:55:36', 1, 2, 10, 1, 1),
(55, '2017-02-05 20:02:00', 1, 2, 10, 1, 1),
(56, '2017-02-05 20:03:07', 1, 2, 15, 1, 1),
(57, '2017-02-05 20:05:32', 1, 2, 16, 1, 1),
(58, '2017-02-12 10:43:59', 1, 2, 18, 1, 1),
(59, '2017-02-12 11:23:58', 1, 2, 18, 1, 1),
(60, '2017-02-12 11:37:32', 1, 2, 18, 1, 1),
(61, '2017-02-12 11:40:52', 1, 2, 18, 1, 1),
(62, '2017-02-12 11:56:47', 1, 2, 18, 1, 1),
(63, '2017-02-12 11:59:17', 1, 2, 18, 1, 1),
(64, '2017-02-12 12:00:30', 1, 2, 18, 1, 1),
(65, '2017-02-12 12:03:54', 1, 2, 18, 1, 1),
(66, '2017-02-12 12:10:59', 1, 2, 18, 1, 1),
(67, '2017-02-12 12:14:39', 1, 2, 18, 1, 1),
(68, '2017-02-12 12:17:39', 1, 2, 18, 1, 1),
(69, '2017-02-12 12:18:57', 1, 2, 18, 1, 1),
(70, '2017-02-12 12:24:31', 1, 2, 18, 1, 1),
(71, '2017-02-12 12:30:21', 1, 2, 18, 1, 1),
(72, '2017-02-12 12:33:12', 1, 2, 18, 1, 1),
(73, '2017-02-12 12:34:18', 1, 2, 18, 1, 1),
(74, '2017-02-12 12:35:52', 1, 2, 18, 1, 1),
(75, '2017-02-12 12:37:07', 1, 2, 18, 1, 1),
(76, '2017-02-12 12:52:00', 1, 2, 18, 1, 1),
(77, '2017-02-12 12:53:18', 1, 2, 18, 1, 1),
(78, '2017-02-12 12:53:24', 1, 2, 18, 1, 1),
(79, '2017-02-12 12:55:12', 1, 2, 18, 1, 1),
(80, '2017-02-12 12:56:20', 1, 1, 18, 1, 1),
(81, '2017-02-12 12:57:34', 1, 3, 18, 1, 1),
(82, '2017-02-12 13:02:15', 1, 3, 18, 1, 1),
(83, '2017-02-12 13:02:50', 1, 1, 18, 1, 1),
(84, '2017-02-12 13:03:15', 1, 4, 18, 1, 1),
(85, '2017-02-12 13:06:20', 1, 2, 18, 1, 1),
(86, '2017-02-12 13:06:47', 1, 3, 18, 1, 1),
(87, '2017-02-12 13:07:45', 1, 4, 18, 1, 1),
(88, '2017-02-12 13:14:37', 1, 4, 18, 1, 1),
(89, '2017-02-12 13:14:45', 1, 4, 18, 1, 1),
(90, '2017-02-12 13:15:08', 1, 4, 18, 1, 1),
(91, '2017-02-12 13:47:31', 1, 1, 18, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `report_event_types`
--

CREATE TABLE IF NOT EXISTS `report_event_types` (
  `event_type_id` smallint(5) unsigned NOT NULL COMMENT 'Event Type Id',
  `event_name` varchar(64) NOT NULL COMMENT 'Event Name',
  `customer_login` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Login'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Reports Event Type Table';

--
-- Dumping data for table `report_event_types`
--

INSERT INTO `report_event_types` (`event_type_id`, `event_name`, `customer_login`) VALUES
(1, 'catalog_product_view', 0),
(2, 'sendfriend_product', 0),
(3, 'catalog_product_compare_add_product', 0),
(4, 'checkout_cart_add_product', 0),
(5, 'wishlist_add_product', 0),
(6, 'wishlist_share', 0);

-- --------------------------------------------------------

--
-- Table structure for table `report_viewed_product_aggregated_daily`
--

CREATE TABLE IF NOT EXISTS `report_viewed_product_aggregated_daily` (
  `id` int(10) unsigned NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int(11) NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Most Viewed Products Aggregated Daily';

-- --------------------------------------------------------

--
-- Table structure for table `report_viewed_product_aggregated_monthly`
--

CREATE TABLE IF NOT EXISTS `report_viewed_product_aggregated_monthly` (
  `id` int(10) unsigned NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int(11) NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Most Viewed Products Aggregated Monthly';

-- --------------------------------------------------------

--
-- Table structure for table `report_viewed_product_aggregated_yearly`
--

CREATE TABLE IF NOT EXISTS `report_viewed_product_aggregated_yearly` (
  `id` int(10) unsigned NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int(11) NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Most Viewed Products Aggregated Yearly';

-- --------------------------------------------------------

--
-- Table structure for table `report_viewed_product_index`
--

CREATE TABLE IF NOT EXISTS `report_viewed_product_index` (
  `index_id` bigint(20) unsigned NOT NULL COMMENT 'Index Id',
  `visitor_id` int(10) unsigned DEFAULT NULL COMMENT 'Visitor Id',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `added_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Added At'
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8 COMMENT='Reports Viewed Product Index Table';

--
-- Dumping data for table `report_viewed_product_index`
--

INSERT INTO `report_viewed_product_index` (`index_id`, `visitor_id`, `customer_id`, `product_id`, `store_id`, `added_at`) VALUES
(1, 2, NULL, 1, 1, '2017-02-05 10:08:33'),
(6, 3, NULL, 1, 1, '2017-02-05 10:01:16'),
(11, 2, NULL, 2, 1, '2017-02-05 10:18:12'),
(12, 4, NULL, 2, 1, '2017-02-05 10:19:05'),
(13, 5, NULL, 1, 1, '2017-02-05 14:38:07'),
(15, 5, NULL, 2, 1, '2017-02-05 14:38:11'),
(16, 6, NULL, 1, 1, '2017-02-05 16:43:07'),
(17, 7, NULL, 1, 1, '2017-02-05 16:47:09'),
(18, 8, NULL, 1, 1, '2017-02-05 17:09:26'),
(19, 9, NULL, 2, 1, '2017-02-05 19:54:42'),
(20, 9, NULL, 4, 1, '2017-02-05 18:33:02'),
(21, 9, NULL, 3, 1, '2017-02-05 18:52:06'),
(23, 10, NULL, 4, 1, '2017-02-05 19:29:14'),
(24, 10, NULL, 2, 1, '2017-02-05 20:02:00'),
(25, 10, NULL, 3, 1, '2017-02-05 18:22:09'),
(26, 11, NULL, 3, 1, '2017-02-05 18:29:16'),
(36, 10, NULL, 1, 1, '2017-02-05 18:44:05'),
(38, 13, NULL, 3, 1, '2017-02-05 18:49:43'),
(39, 12, NULL, 4, 1, '2017-02-05 18:49:43'),
(46, 14, NULL, 4, 1, '2017-02-05 19:07:11'),
(56, 15, NULL, 2, 1, '2017-02-05 20:03:07'),
(57, 16, NULL, 2, 1, '2017-02-05 20:05:32'),
(58, 18, NULL, 2, 1, '2017-02-12 13:06:20'),
(80, 18, NULL, 1, 1, '2017-02-12 13:47:31'),
(81, 18, NULL, 3, 1, '2017-02-12 13:06:47'),
(84, 18, NULL, 4, 1, '2017-02-12 13:15:08');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE IF NOT EXISTS `review` (
  `review_id` bigint(20) unsigned NOT NULL COMMENT 'Review id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Review create date',
  `entity_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity id',
  `entity_pk_value` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `status_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Status code'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review base information';

-- --------------------------------------------------------

--
-- Table structure for table `review_detail`
--

CREATE TABLE IF NOT EXISTS `review_detail` (
  `detail_id` bigint(20) unsigned NOT NULL COMMENT 'Review detail id',
  `review_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Review id',
  `store_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Store id',
  `title` varchar(255) NOT NULL COMMENT 'Title',
  `detail` text NOT NULL COMMENT 'Detail description',
  `nickname` varchar(128) NOT NULL COMMENT 'User nickname',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review detail information';

-- --------------------------------------------------------

--
-- Table structure for table `review_entity`
--

CREATE TABLE IF NOT EXISTS `review_entity` (
  `entity_id` smallint(5) unsigned NOT NULL COMMENT 'Review entity id',
  `entity_code` varchar(32) NOT NULL COMMENT 'Review entity code'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Review entities';

--
-- Dumping data for table `review_entity`
--

INSERT INTO `review_entity` (`entity_id`, `entity_code`) VALUES
(1, 'product'),
(2, 'customer'),
(3, 'category');

-- --------------------------------------------------------

--
-- Table structure for table `review_entity_summary`
--

CREATE TABLE IF NOT EXISTS `review_entity_summary` (
  `primary_id` bigint(20) NOT NULL COMMENT 'Summary review entity id',
  `entity_pk_value` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Product id',
  `entity_type` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Entity type id',
  `reviews_count` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Qty of reviews',
  `rating_summary` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Summarized rating',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review aggregates';

-- --------------------------------------------------------

--
-- Table structure for table `review_status`
--

CREATE TABLE IF NOT EXISTS `review_status` (
  `status_id` smallint(5) unsigned NOT NULL COMMENT 'Status id',
  `status_code` varchar(32) NOT NULL COMMENT 'Status code'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Review statuses';

--
-- Dumping data for table `review_status`
--

INSERT INTO `review_status` (`status_id`, `status_code`) VALUES
(1, 'Approved'),
(2, 'Pending'),
(3, 'Not Approved');

-- --------------------------------------------------------

--
-- Table structure for table `review_store`
--

CREATE TABLE IF NOT EXISTS `review_store` (
  `review_id` bigint(20) unsigned NOT NULL COMMENT 'Review Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review Store';

-- --------------------------------------------------------

--
-- Table structure for table `salesrule`
--

CREATE TABLE IF NOT EXISTS `salesrule` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `uses_per_customer` int(11) NOT NULL DEFAULT '0' COMMENT 'Uses Per Customer',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `conditions_serialized` mediumtext COMMENT 'Conditions Serialized',
  `actions_serialized` mediumtext COMMENT 'Actions Serialized',
  `stop_rules_processing` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Stop Rules Processing',
  `is_advanced` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Advanced',
  `product_ids` text COMMENT 'Product Ids',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `discount_qty` decimal(12,4) DEFAULT NULL COMMENT 'Discount Qty',
  `discount_step` int(10) unsigned NOT NULL COMMENT 'Discount Step',
  `simple_free_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Simple Free Shipping',
  `apply_to_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Apply To Shipping',
  `times_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  `is_rss` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Rss',
  `coupon_type` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Coupon Type',
  `use_auto_generation` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Use Auto Generation',
  `uses_per_coupon` int(11) NOT NULL DEFAULT '0' COMMENT 'Uses Per Coupon'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule';

-- --------------------------------------------------------

--
-- Table structure for table `salesrule_coupon`
--

CREATE TABLE IF NOT EXISTS `salesrule_coupon` (
  `coupon_id` int(10) unsigned NOT NULL COMMENT 'Coupon Id',
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `usage_limit` int(10) unsigned DEFAULT NULL COMMENT 'Usage Limit',
  `usage_per_customer` int(10) unsigned DEFAULT NULL COMMENT 'Usage Per Customer',
  `times_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  `expiration_date` timestamp NULL DEFAULT NULL COMMENT 'Expiration Date',
  `is_primary` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Primary',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Coupon Code Creation Date',
  `type` smallint(6) DEFAULT '0' COMMENT 'Coupon Code Type'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Coupon';

-- --------------------------------------------------------

--
-- Table structure for table `salesrule_coupon_usage`
--

CREATE TABLE IF NOT EXISTS `salesrule_coupon_usage` (
  `coupon_id` int(10) unsigned NOT NULL COMMENT 'Coupon Id',
  `customer_id` int(10) unsigned NOT NULL COMMENT 'Customer Id',
  `times_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Coupon Usage';

-- --------------------------------------------------------

--
-- Table structure for table `salesrule_customer`
--

CREATE TABLE IF NOT EXISTS `salesrule_customer` (
  `rule_customer_id` int(10) unsigned NOT NULL COMMENT 'Rule Customer Id',
  `rule_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Rule Id',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Id',
  `times_used` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Customer';

-- --------------------------------------------------------

--
-- Table structure for table `salesrule_customer_group`
--

CREATE TABLE IF NOT EXISTS `salesrule_customer_group` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Rules To Customer Groups Relations';

-- --------------------------------------------------------

--
-- Table structure for table `salesrule_label`
--

CREATE TABLE IF NOT EXISTS `salesrule_label` (
  `label_id` int(10) unsigned NOT NULL COMMENT 'Label Id',
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `label` varchar(255) DEFAULT NULL COMMENT 'Label'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Label';

-- --------------------------------------------------------

--
-- Table structure for table `salesrule_product_attribute`
--

CREATE TABLE IF NOT EXISTS `salesrule_product_attribute` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Product Attribute';

-- --------------------------------------------------------

--
-- Table structure for table `salesrule_website`
--

CREATE TABLE IF NOT EXISTS `salesrule_website` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Rules To Websites Relations';

-- --------------------------------------------------------

--
-- Table structure for table `sales_bestsellers_aggregated_daily`
--

CREATE TABLE IF NOT EXISTS `sales_bestsellers_aggregated_daily` (
  `id` int(10) unsigned NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Daily';

-- --------------------------------------------------------

--
-- Table structure for table `sales_bestsellers_aggregated_monthly`
--

CREATE TABLE IF NOT EXISTS `sales_bestsellers_aggregated_monthly` (
  `id` int(10) unsigned NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Monthly';

-- --------------------------------------------------------

--
-- Table structure for table `sales_bestsellers_aggregated_yearly`
--

CREATE TABLE IF NOT EXISTS `sales_bestsellers_aggregated_yearly` (
  `id` int(10) unsigned NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Yearly';

-- --------------------------------------------------------

--
-- Table structure for table `sales_billing_agreement`
--

CREATE TABLE IF NOT EXISTS `sales_billing_agreement` (
  `agreement_id` int(10) unsigned NOT NULL COMMENT 'Agreement Id',
  `customer_id` int(10) unsigned NOT NULL COMMENT 'Customer Id',
  `method_code` varchar(32) NOT NULL COMMENT 'Method Code',
  `reference_id` varchar(32) NOT NULL COMMENT 'Reference Id',
  `status` varchar(20) NOT NULL COMMENT 'Status',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `agreement_label` varchar(255) DEFAULT NULL COMMENT 'Agreement Label'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Billing Agreement';

-- --------------------------------------------------------

--
-- Table structure for table `sales_billing_agreement_order`
--

CREATE TABLE IF NOT EXISTS `sales_billing_agreement_order` (
  `agreement_id` int(10) unsigned NOT NULL COMMENT 'Agreement Id',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Billing Agreement Order';

-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_creditmemo`
--

CREATE TABLE IF NOT EXISTS `sales_flat_creditmemo` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Positive',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `base_adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Negative',
  `base_subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Negative',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_adjustment` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `adjustment` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Positive',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `email_sent` smallint(5) unsigned DEFAULT NULL COMMENT 'Email Sent',
  `creditmemo_status` int(11) DEFAULT NULL COMMENT 'Creditmemo Status',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `invoice_id` int(11) DEFAULT NULL COMMENT 'Invoice Id',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `transaction_id` varchar(255) DEFAULT NULL COMMENT 'Transaction Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `shipping_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Hidden Tax Amount',
  `base_shipping_hidden_tax_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Hidden Tax Amount',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo';

-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_creditmemo_comment`
--

CREATE TABLE IF NOT EXISTS `sales_flat_creditmemo_comment` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` int(11) DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo Comment';

-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_creditmemo_grid`
--

CREATE TABLE IF NOT EXISTS `sales_flat_creditmemo_grid` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `creditmemo_status` int(11) DEFAULT NULL COMMENT 'Creditmemo Status',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `invoice_id` int(11) DEFAULT NULL COMMENT 'Invoice Id',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `order_created_at` timestamp NULL DEFAULT NULL COMMENT 'Order Created At',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo Grid';

-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_creditmemo_item`
--

CREATE TABLE IF NOT EXISTS `sales_flat_creditmemo_item` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_row_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `row_total` decimal(12,4) DEFAULT NULL COMMENT 'Row Total',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `product_id` int(11) DEFAULT NULL COMMENT 'Product Id',
  `order_item_id` int(11) DEFAULT NULL COMMENT 'Order Item Id',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo Item';

-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_invoice`
--

CREATE TABLE IF NOT EXISTS `sales_flat_invoice` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `base_subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `is_used_for_refund` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Used For Refund',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `email_sent` smallint(5) unsigned DEFAULT NULL COMMENT 'Email Sent',
  `can_void_flag` smallint(5) unsigned DEFAULT NULL COMMENT 'Can Void Flag',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `transaction_id` varchar(255) DEFAULT NULL COMMENT 'Transaction Id',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `shipping_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Hidden Tax Amount',
  `base_shipping_hidden_tax_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Hidden Tax Amount',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `base_total_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Refunded',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice';

-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_invoice_comment`
--

CREATE TABLE IF NOT EXISTS `sales_flat_invoice_comment` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice Comment';

-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_invoice_grid`
--

CREATE TABLE IF NOT EXISTS `sales_flat_invoice_grid` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `order_created_at` timestamp NULL DEFAULT NULL COMMENT 'Order Created At',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice Grid';

-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_invoice_item`
--

CREATE TABLE IF NOT EXISTS `sales_flat_invoice_item` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_row_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `row_total` decimal(12,4) DEFAULT NULL COMMENT 'Row Total',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `product_id` int(11) DEFAULT NULL COMMENT 'Product Id',
  `order_item_id` int(11) DEFAULT NULL COMMENT 'Order Item Id',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice Item';

-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_order`
--

CREATE TABLE IF NOT EXISTS `sales_flat_order` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `state` varchar(32) DEFAULT NULL COMMENT 'State',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `coupon_code` varchar(255) DEFAULT NULL COMMENT 'Coupon Code',
  `protect_code` varchar(255) DEFAULT NULL COMMENT 'Protect Code',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `is_virtual` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Virtual',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_discount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Canceled',
  `base_discount_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Invoiced',
  `base_discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Refunded',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `base_shipping_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Canceled',
  `base_shipping_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Invoiced',
  `base_shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Refunded',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `base_shipping_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Refunded',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `base_subtotal_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Canceled',
  `base_subtotal_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Invoiced',
  `base_subtotal_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Refunded',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Canceled',
  `base_tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Invoiced',
  `base_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Refunded',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `base_total_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Canceled',
  `base_total_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Invoiced',
  `base_total_invoiced_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Invoiced Cost',
  `base_total_offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Offline Refunded',
  `base_total_online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Online Refunded',
  `base_total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Paid',
  `base_total_qty_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Qty Ordered',
  `base_total_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Refunded',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `discount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Discount Canceled',
  `discount_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Discount Invoiced',
  `discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Discount Refunded',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `shipping_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Canceled',
  `shipping_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Invoiced',
  `shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Refunded',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `shipping_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Refunded',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `subtotal_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Canceled',
  `subtotal_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Invoiced',
  `subtotal_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Refunded',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Tax Canceled',
  `tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Tax Invoiced',
  `tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Tax Refunded',
  `total_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Total Canceled',
  `total_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Total Invoiced',
  `total_offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Total Offline Refunded',
  `total_online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Total Online Refunded',
  `total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Total Paid',
  `total_qty_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty Ordered',
  `total_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Total Refunded',
  `can_ship_partially` smallint(5) unsigned DEFAULT NULL COMMENT 'Can Ship Partially',
  `can_ship_partially_item` smallint(5) unsigned DEFAULT NULL COMMENT 'Can Ship Partially Item',
  `customer_is_guest` smallint(5) unsigned DEFAULT NULL COMMENT 'Customer Is Guest',
  `customer_note_notify` smallint(5) unsigned DEFAULT NULL COMMENT 'Customer Note Notify',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `customer_group_id` smallint(6) DEFAULT NULL COMMENT 'Customer Group Id',
  `edit_increment` int(11) DEFAULT NULL COMMENT 'Edit Increment',
  `email_sent` smallint(5) unsigned DEFAULT NULL COMMENT 'Email Sent',
  `forced_shipment_with_invoice` smallint(5) unsigned DEFAULT NULL COMMENT 'Forced Do Shipment With Invoice',
  `payment_auth_expiration` int(11) DEFAULT NULL COMMENT 'Payment Authorization Expiration',
  `quote_address_id` int(11) DEFAULT NULL COMMENT 'Quote Address Id',
  `quote_id` int(11) DEFAULT NULL COMMENT 'Quote Id',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Negative',
  `adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Positive',
  `base_adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Negative',
  `base_adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Positive',
  `base_shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Amount',
  `base_subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `base_total_due` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Due',
  `payment_authorization_amount` decimal(12,4) DEFAULT NULL COMMENT 'Payment Authorization Amount',
  `shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `total_due` decimal(12,4) DEFAULT NULL COMMENT 'Total Due',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `customer_dob` datetime DEFAULT NULL COMMENT 'Customer Dob',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `applied_rule_ids` varchar(255) DEFAULT NULL COMMENT 'Applied Rule Ids',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `customer_email` varchar(255) DEFAULT NULL COMMENT 'Customer Email',
  `customer_firstname` varchar(255) DEFAULT NULL COMMENT 'Customer Firstname',
  `customer_lastname` varchar(255) DEFAULT NULL COMMENT 'Customer Lastname',
  `customer_middlename` varchar(255) DEFAULT NULL COMMENT 'Customer Middlename',
  `customer_prefix` varchar(255) DEFAULT NULL COMMENT 'Customer Prefix',
  `customer_suffix` varchar(255) DEFAULT NULL COMMENT 'Customer Suffix',
  `customer_taxvat` varchar(255) DEFAULT NULL COMMENT 'Customer Taxvat',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `ext_customer_id` varchar(255) DEFAULT NULL COMMENT 'Ext Customer Id',
  `ext_order_id` varchar(255) DEFAULT NULL COMMENT 'Ext Order Id',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `hold_before_state` varchar(255) DEFAULT NULL COMMENT 'Hold Before State',
  `hold_before_status` varchar(255) DEFAULT NULL COMMENT 'Hold Before Status',
  `order_currency_code` varchar(255) DEFAULT NULL COMMENT 'Order Currency Code',
  `original_increment_id` varchar(50) DEFAULT NULL COMMENT 'Original Increment Id',
  `relation_child_id` varchar(32) DEFAULT NULL COMMENT 'Relation Child Id',
  `relation_child_real_id` varchar(32) DEFAULT NULL COMMENT 'Relation Child Real Id',
  `relation_parent_id` varchar(32) DEFAULT NULL COMMENT 'Relation Parent Id',
  `relation_parent_real_id` varchar(32) DEFAULT NULL COMMENT 'Relation Parent Real Id',
  `remote_ip` varchar(255) DEFAULT NULL COMMENT 'Remote Ip',
  `shipping_method` varchar(255) DEFAULT NULL COMMENT 'Shipping Method',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `store_name` varchar(255) DEFAULT NULL COMMENT 'Store Name',
  `x_forwarded_for` varchar(255) DEFAULT NULL COMMENT 'X Forwarded For',
  `customer_note` text COMMENT 'Customer Note',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `total_item_count` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Total Item Count',
  `customer_gender` int(11) DEFAULT NULL COMMENT 'Customer Gender',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `shipping_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Hidden Tax Amount',
  `base_shipping_hidden_tax_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Hidden Tax Amount',
  `hidden_tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Invoiced',
  `base_hidden_tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Invoiced',
  `hidden_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Refunded',
  `base_hidden_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Refunded',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `coupon_rule_name` varchar(255) DEFAULT NULL COMMENT 'Coupon Sales Rule Name',
  `paypal_ipn_customer_notified` int(11) DEFAULT '0' COMMENT 'Paypal Ipn Customer Notified',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order';

-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_order_address`
--

CREATE TABLE IF NOT EXISTS `sales_flat_order_address` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `parent_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Id',
  `customer_address_id` int(11) DEFAULT NULL COMMENT 'Customer Address Id',
  `quote_address_id` int(11) DEFAULT NULL COMMENT 'Quote Address Id',
  `region_id` int(11) DEFAULT NULL COMMENT 'Region Id',
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer Id',
  `fax` varchar(255) DEFAULT NULL COMMENT 'Fax',
  `region` varchar(255) DEFAULT NULL COMMENT 'Region',
  `postcode` varchar(255) DEFAULT NULL COMMENT 'Postcode',
  `lastname` varchar(255) DEFAULT NULL COMMENT 'Lastname',
  `street` varchar(255) DEFAULT NULL COMMENT 'Street',
  `city` varchar(255) DEFAULT NULL COMMENT 'City',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `telephone` varchar(255) DEFAULT NULL COMMENT 'Telephone',
  `country_id` varchar(2) DEFAULT NULL COMMENT 'Country Id',
  `firstname` varchar(255) DEFAULT NULL COMMENT 'Firstname',
  `address_type` varchar(255) DEFAULT NULL COMMENT 'Address Type',
  `prefix` varchar(255) DEFAULT NULL COMMENT 'Prefix',
  `middlename` varchar(255) DEFAULT NULL COMMENT 'Middlename',
  `suffix` varchar(255) DEFAULT NULL COMMENT 'Suffix',
  `company` varchar(255) DEFAULT NULL COMMENT 'Company',
  `vat_id` text COMMENT 'Vat Id',
  `vat_is_valid` smallint(6) DEFAULT NULL COMMENT 'Vat Is Valid',
  `vat_request_id` text COMMENT 'Vat Request Id',
  `vat_request_date` text COMMENT 'Vat Request Date',
  `vat_request_success` smallint(6) DEFAULT NULL COMMENT 'Vat Request Success'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Address';

-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_order_grid`
--

CREATE TABLE IF NOT EXISTS `sales_flat_order_grid` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `store_name` varchar(255) DEFAULT NULL COMMENT 'Store Name',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Paid',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Total Paid',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `order_currency_code` varchar(255) DEFAULT NULL COMMENT 'Order Currency Code',
  `shipping_name` varchar(255) DEFAULT NULL COMMENT 'Shipping Name',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Grid';

-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_order_item`
--

CREATE TABLE IF NOT EXISTS `sales_flat_order_item` (
  `item_id` int(10) unsigned NOT NULL COMMENT 'Item Id',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Order Id',
  `parent_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Item Id',
  `quote_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Quote Item Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_type` varchar(255) DEFAULT NULL COMMENT 'Product Type',
  `product_options` text COMMENT 'Product Options',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `is_virtual` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Virtual',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `free_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Free Shipping',
  `is_qty_decimal` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Qty Decimal',
  `no_discount` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'No Discount',
  `qty_backordered` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Backordered',
  `qty_canceled` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Canceled',
  `qty_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Invoiced',
  `qty_ordered` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `qty_refunded` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Refunded',
  `qty_shipped` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Shipped',
  `base_cost` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Cost',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `base_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Price',
  `original_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Price',
  `base_original_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Original Price',
  `tax_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Percent',
  `tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `tax_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Invoiced',
  `base_tax_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Invoiced',
  `discount_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Percent',
  `discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `discount_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Invoiced',
  `base_discount_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Invoiced',
  `amount_refunded` decimal(12,4) DEFAULT '0.0000' COMMENT 'Amount Refunded',
  `base_amount_refunded` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Amount Refunded',
  `row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Invoiced',
  `base_row_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Invoiced',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `base_tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Before Discount',
  `tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Before Discount',
  `ext_order_item_id` varchar(255) DEFAULT NULL COMMENT 'Ext Order Item Id',
  `locked_do_invoice` smallint(5) unsigned DEFAULT NULL COMMENT 'Locked Do Invoice',
  `locked_do_ship` smallint(5) unsigned DEFAULT NULL COMMENT 'Locked Do Ship',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `hidden_tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Invoiced',
  `base_hidden_tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Invoiced',
  `hidden_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Refunded',
  `base_hidden_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Refunded',
  `is_nominal` int(11) NOT NULL DEFAULT '0' COMMENT 'Is Nominal',
  `tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Tax Canceled',
  `hidden_tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Canceled',
  `tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Tax Refunded',
  `base_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Refunded',
  `discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Discount Refunded',
  `base_discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Refunded',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  `gift_message_available` int(11) DEFAULT NULL COMMENT 'Gift Message Available',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Item';

-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_order_payment`
--

CREATE TABLE IF NOT EXISTS `sales_flat_order_payment` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `base_shipping_captured` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Captured',
  `shipping_captured` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Captured',
  `amount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Amount Refunded',
  `base_amount_paid` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Paid',
  `amount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Amount Canceled',
  `base_amount_authorized` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Authorized',
  `base_amount_paid_online` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Paid Online',
  `base_amount_refunded_online` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Refunded Online',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `amount_paid` decimal(12,4) DEFAULT NULL COMMENT 'Amount Paid',
  `amount_authorized` decimal(12,4) DEFAULT NULL COMMENT 'Amount Authorized',
  `base_amount_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Ordered',
  `base_shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Refunded',
  `shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Refunded',
  `base_amount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Refunded',
  `amount_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Amount Ordered',
  `base_amount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Canceled',
  `quote_payment_id` int(11) DEFAULT NULL COMMENT 'Quote Payment Id',
  `additional_data` text COMMENT 'Additional Data',
  `cc_exp_month` varchar(255) DEFAULT NULL COMMENT 'Cc Exp Month',
  `cc_ss_start_year` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Start Year',
  `echeck_bank_name` varchar(255) DEFAULT NULL COMMENT 'Echeck Bank Name',
  `method` varchar(255) DEFAULT NULL COMMENT 'Method',
  `cc_debug_request_body` varchar(255) DEFAULT NULL COMMENT 'Cc Debug Request Body',
  `cc_secure_verify` varchar(255) DEFAULT NULL COMMENT 'Cc Secure Verify',
  `protection_eligibility` varchar(255) DEFAULT NULL COMMENT 'Protection Eligibility',
  `cc_approval` varchar(255) DEFAULT NULL COMMENT 'Cc Approval',
  `cc_last4` varchar(255) DEFAULT NULL COMMENT 'Cc Last4',
  `cc_status_description` varchar(255) DEFAULT NULL COMMENT 'Cc Status Description',
  `echeck_type` varchar(255) DEFAULT NULL COMMENT 'Echeck Type',
  `cc_debug_response_serialized` varchar(255) DEFAULT NULL COMMENT 'Cc Debug Response Serialized',
  `cc_ss_start_month` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Start Month',
  `echeck_account_type` varchar(255) DEFAULT NULL COMMENT 'Echeck Account Type',
  `last_trans_id` varchar(255) DEFAULT NULL COMMENT 'Last Trans Id',
  `cc_cid_status` varchar(255) DEFAULT NULL COMMENT 'Cc Cid Status',
  `cc_owner` varchar(255) DEFAULT NULL COMMENT 'Cc Owner',
  `cc_type` varchar(255) DEFAULT NULL COMMENT 'Cc Type',
  `po_number` varchar(255) DEFAULT NULL COMMENT 'Po Number',
  `cc_exp_year` varchar(255) DEFAULT NULL COMMENT 'Cc Exp Year',
  `cc_status` varchar(255) DEFAULT NULL COMMENT 'Cc Status',
  `echeck_routing_number` varchar(255) DEFAULT NULL COMMENT 'Echeck Routing Number',
  `account_status` varchar(255) DEFAULT NULL COMMENT 'Account Status',
  `anet_trans_method` varchar(255) DEFAULT NULL COMMENT 'Anet Trans Method',
  `cc_debug_response_body` varchar(255) DEFAULT NULL COMMENT 'Cc Debug Response Body',
  `cc_ss_issue` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Issue',
  `echeck_account_name` varchar(255) DEFAULT NULL COMMENT 'Echeck Account Name',
  `cc_avs_status` varchar(255) DEFAULT NULL COMMENT 'Cc Avs Status',
  `cc_number_enc` varchar(255) DEFAULT NULL COMMENT 'Cc Number Enc',
  `cc_trans_id` varchar(255) DEFAULT NULL COMMENT 'Cc Trans Id',
  `paybox_request_number` varchar(255) DEFAULT NULL COMMENT 'Paybox Request Number',
  `address_status` varchar(255) DEFAULT NULL COMMENT 'Address Status',
  `additional_information` text COMMENT 'Additional Information'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Payment';

-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_order_status_history`
--

CREATE TABLE IF NOT EXISTS `sales_flat_order_status_history` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` int(11) DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `entity_name` varchar(32) DEFAULT NULL COMMENT 'Shows what entity history is bind to.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Status History';

-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_quote`
--

CREATE TABLE IF NOT EXISTS `sales_flat_quote` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `converted_at` timestamp NULL DEFAULT NULL COMMENT 'Converted At',
  `is_active` smallint(5) unsigned DEFAULT '1' COMMENT 'Is Active',
  `is_virtual` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Virtual',
  `is_multi_shipping` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Multi Shipping',
  `items_count` int(10) unsigned DEFAULT '0' COMMENT 'Items Count',
  `items_qty` decimal(12,4) DEFAULT '0.0000' COMMENT 'Items Qty',
  `orig_order_id` int(10) unsigned DEFAULT '0' COMMENT 'Orig Order Id',
  `store_to_base_rate` decimal(12,4) DEFAULT '0.0000' COMMENT 'Store To Base Rate',
  `store_to_quote_rate` decimal(12,4) DEFAULT '0.0000' COMMENT 'Store To Quote Rate',
  `base_currency_code` varchar(255) DEFAULT NULL COMMENT 'Base Currency Code',
  `store_currency_code` varchar(255) DEFAULT NULL COMMENT 'Store Currency Code',
  `quote_currency_code` varchar(255) DEFAULT NULL COMMENT 'Quote Currency Code',
  `grand_total` decimal(12,4) DEFAULT '0.0000' COMMENT 'Grand Total',
  `base_grand_total` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Grand Total',
  `checkout_method` varchar(255) DEFAULT NULL COMMENT 'Checkout Method',
  `customer_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer Id',
  `customer_tax_class_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer Tax Class Id',
  `customer_group_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer Group Id',
  `customer_email` varchar(255) DEFAULT NULL COMMENT 'Customer Email',
  `customer_prefix` varchar(40) DEFAULT NULL COMMENT 'Customer Prefix',
  `customer_firstname` varchar(255) DEFAULT NULL COMMENT 'Customer Firstname',
  `customer_middlename` varchar(40) DEFAULT NULL COMMENT 'Customer Middlename',
  `customer_lastname` varchar(255) DEFAULT NULL COMMENT 'Customer Lastname',
  `customer_suffix` varchar(40) DEFAULT NULL COMMENT 'Customer Suffix',
  `customer_dob` datetime DEFAULT NULL COMMENT 'Customer Dob',
  `customer_note` varchar(255) DEFAULT NULL COMMENT 'Customer Note',
  `customer_note_notify` smallint(5) unsigned DEFAULT '1' COMMENT 'Customer Note Notify',
  `customer_is_guest` smallint(5) unsigned DEFAULT '0' COMMENT 'Customer Is Guest',
  `remote_ip` varchar(32) DEFAULT NULL COMMENT 'Remote Ip',
  `applied_rule_ids` varchar(255) DEFAULT NULL COMMENT 'Applied Rule Ids',
  `reserved_order_id` varchar(64) DEFAULT NULL COMMENT 'Reserved Order Id',
  `password_hash` varchar(255) DEFAULT NULL COMMENT 'Password Hash',
  `coupon_code` varchar(255) DEFAULT NULL COMMENT 'Coupon Code',
  `global_currency_code` varchar(255) DEFAULT NULL COMMENT 'Global Currency Code',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_to_quote_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Quote Rate',
  `customer_taxvat` varchar(255) DEFAULT NULL COMMENT 'Customer Taxvat',
  `customer_gender` varchar(255) DEFAULT NULL COMMENT 'Customer Gender',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `subtotal_with_discount` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal With Discount',
  `base_subtotal_with_discount` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal With Discount',
  `is_changed` int(10) unsigned DEFAULT NULL COMMENT 'Is Changed',
  `trigger_recollect` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Trigger Recollect',
  `ext_shipping_info` text COMMENT 'Ext Shipping Info',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  `is_persistent` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Quote Persistent'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote';

-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_quote_address`
--

CREATE TABLE IF NOT EXISTS `sales_flat_quote_address` (
  `address_id` int(10) unsigned NOT NULL COMMENT 'Address Id',
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `save_in_address_book` smallint(6) DEFAULT '0' COMMENT 'Save In Address Book',
  `customer_address_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Address Id',
  `address_type` varchar(255) DEFAULT NULL COMMENT 'Address Type',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `prefix` varchar(40) DEFAULT NULL COMMENT 'Prefix',
  `firstname` varchar(255) DEFAULT NULL COMMENT 'Firstname',
  `middlename` varchar(40) DEFAULT NULL COMMENT 'Middlename',
  `lastname` varchar(255) DEFAULT NULL COMMENT 'Lastname',
  `suffix` varchar(40) DEFAULT NULL COMMENT 'Suffix',
  `company` varchar(255) DEFAULT NULL COMMENT 'Company',
  `street` varchar(255) DEFAULT NULL COMMENT 'Street',
  `city` varchar(255) DEFAULT NULL COMMENT 'City',
  `region` varchar(255) DEFAULT NULL COMMENT 'Region',
  `region_id` int(10) unsigned DEFAULT NULL COMMENT 'Region Id',
  `postcode` varchar(255) DEFAULT NULL COMMENT 'Postcode',
  `country_id` varchar(255) DEFAULT NULL COMMENT 'Country Id',
  `telephone` varchar(255) DEFAULT NULL COMMENT 'Telephone',
  `fax` varchar(255) DEFAULT NULL COMMENT 'Fax',
  `same_as_billing` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Same As Billing',
  `free_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Free Shipping',
  `collect_shipping_rates` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Collect Shipping Rates',
  `shipping_method` varchar(255) DEFAULT NULL COMMENT 'Shipping Method',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `weight` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Weight',
  `subtotal` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal',
  `base_subtotal` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Subtotal',
  `subtotal_with_discount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal With Discount',
  `base_subtotal_with_discount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Subtotal With Discount',
  `tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Shipping Amount',
  `base_shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Shipping Amount',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `grand_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Grand Total',
  `base_grand_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Grand Total',
  `customer_notes` text COMMENT 'Customer Notes',
  `applied_taxes` text COMMENT 'Applied Taxes',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Amount',
  `base_shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `base_subtotal_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Total Incl Tax',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `shipping_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Hidden Tax Amount',
  `base_shipping_hidden_tax_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Hidden Tax Amount',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `vat_id` text COMMENT 'Vat Id',
  `vat_is_valid` smallint(6) DEFAULT NULL COMMENT 'Vat Is Valid',
  `vat_request_id` text COMMENT 'Vat Request Id',
  `vat_request_date` text COMMENT 'Vat Request Date',
  `vat_request_success` smallint(6) DEFAULT NULL COMMENT 'Vat Request Success',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Address';

-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_quote_address_item`
--

CREATE TABLE IF NOT EXISTS `sales_flat_quote_address_item` (
  `address_item_id` int(10) unsigned NOT NULL COMMENT 'Address Item Id',
  `parent_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Item Id',
  `quote_address_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Address Id',
  `quote_item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Item Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_total_with_discount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Total With Discount',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `super_product_id` int(10) unsigned DEFAULT NULL COMMENT 'Super Product Id',
  `parent_product_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Product Id',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `image` varchar(255) DEFAULT NULL COMMENT 'Image',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `free_shipping` int(10) unsigned DEFAULT NULL COMMENT 'Free Shipping',
  `is_qty_decimal` int(10) unsigned DEFAULT NULL COMMENT 'Is Qty Decimal',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `discount_percent` decimal(12,4) DEFAULT NULL COMMENT 'Discount Percent',
  `no_discount` int(10) unsigned DEFAULT NULL COMMENT 'No Discount',
  `tax_percent` decimal(12,4) DEFAULT NULL COMMENT 'Tax Percent',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Address Item';

-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_quote_item`
--

CREATE TABLE IF NOT EXISTS `sales_flat_quote_item` (
  `item_id` int(10) unsigned NOT NULL COMMENT 'Item Id',
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `parent_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Item Id',
  `is_virtual` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Virtual',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `free_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Free Shipping',
  `is_qty_decimal` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Qty Decimal',
  `no_discount` smallint(5) unsigned DEFAULT '0' COMMENT 'No Discount',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `base_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Price',
  `custom_price` decimal(12,4) DEFAULT NULL COMMENT 'Custom Price',
  `discount_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Percent',
  `discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `tax_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Percent',
  `tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_total_with_discount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Total With Discount',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `product_type` varchar(255) DEFAULT NULL COMMENT 'Product Type',
  `base_tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Before Discount',
  `tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Before Discount',
  `original_custom_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Custom Price',
  `redirect_url` varchar(255) DEFAULT NULL COMMENT 'Redirect Url',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Item';

-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_quote_item_option`
--

CREATE TABLE IF NOT EXISTS `sales_flat_quote_item_option` (
  `option_id` int(10) unsigned NOT NULL COMMENT 'Option Id',
  `item_id` int(10) unsigned NOT NULL COMMENT 'Item Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `value` text COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Item Option';

-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_quote_payment`
--

CREATE TABLE IF NOT EXISTS `sales_flat_quote_payment` (
  `payment_id` int(10) unsigned NOT NULL COMMENT 'Payment Id',
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `method` varchar(255) DEFAULT NULL COMMENT 'Method',
  `cc_type` varchar(255) DEFAULT NULL COMMENT 'Cc Type',
  `cc_number_enc` varchar(255) DEFAULT NULL COMMENT 'Cc Number Enc',
  `cc_last4` varchar(255) DEFAULT NULL COMMENT 'Cc Last4',
  `cc_cid_enc` varchar(255) DEFAULT NULL COMMENT 'Cc Cid Enc',
  `cc_owner` varchar(255) DEFAULT NULL COMMENT 'Cc Owner',
  `cc_exp_month` smallint(5) unsigned DEFAULT '0' COMMENT 'Cc Exp Month',
  `cc_exp_year` smallint(5) unsigned DEFAULT '0' COMMENT 'Cc Exp Year',
  `cc_ss_owner` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Owner',
  `cc_ss_start_month` smallint(5) unsigned DEFAULT '0' COMMENT 'Cc Ss Start Month',
  `cc_ss_start_year` smallint(5) unsigned DEFAULT '0' COMMENT 'Cc Ss Start Year',
  `po_number` varchar(255) DEFAULT NULL COMMENT 'Po Number',
  `additional_data` text COMMENT 'Additional Data',
  `cc_ss_issue` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Issue',
  `additional_information` text COMMENT 'Additional Information',
  `paypal_payer_id` varchar(255) DEFAULT NULL COMMENT 'Paypal Payer Id',
  `paypal_payer_status` varchar(255) DEFAULT NULL COMMENT 'Paypal Payer Status',
  `paypal_correlation_id` varchar(255) DEFAULT NULL COMMENT 'Paypal Correlation Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Payment';

-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_quote_shipping_rate`
--

CREATE TABLE IF NOT EXISTS `sales_flat_quote_shipping_rate` (
  `rate_id` int(10) unsigned NOT NULL COMMENT 'Rate Id',
  `address_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Address Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `carrier` varchar(255) DEFAULT NULL COMMENT 'Carrier',
  `carrier_title` varchar(255) DEFAULT NULL COMMENT 'Carrier Title',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `method` varchar(255) DEFAULT NULL COMMENT 'Method',
  `method_description` text COMMENT 'Method Description',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `error_message` text COMMENT 'Error Message',
  `method_title` text COMMENT 'Method Title'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Shipping Rate';

-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_shipment`
--

CREATE TABLE IF NOT EXISTS `sales_flat_shipment` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `total_weight` decimal(12,4) DEFAULT NULL COMMENT 'Total Weight',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `email_sent` smallint(5) unsigned DEFAULT NULL COMMENT 'Email Sent',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer Id',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `shipment_status` int(11) DEFAULT NULL COMMENT 'Shipment Status',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `packages` text COMMENT 'Packed Products in Packages',
  `shipping_label` mediumblob COMMENT 'Shipping Label Content'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment';

-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_shipment_comment`
--

CREATE TABLE IF NOT EXISTS `sales_flat_shipment_comment` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` int(11) DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Comment';

-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_shipment_grid`
--

CREATE TABLE IF NOT EXISTS `sales_flat_shipment_grid` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `shipment_status` int(11) DEFAULT NULL COMMENT 'Shipment Status',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `order_created_at` timestamp NULL DEFAULT NULL COMMENT 'Order Created At',
  `shipping_name` varchar(255) DEFAULT NULL COMMENT 'Shipping Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Grid';

-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_shipment_item`
--

CREATE TABLE IF NOT EXISTS `sales_flat_shipment_item` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `row_total` decimal(12,4) DEFAULT NULL COMMENT 'Row Total',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `product_id` int(11) DEFAULT NULL COMMENT 'Product Id',
  `order_item_id` int(11) DEFAULT NULL COMMENT 'Order Item Id',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Item';

-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_shipment_track`
--

CREATE TABLE IF NOT EXISTS `sales_flat_shipment_track` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `track_number` text COMMENT 'Number',
  `description` text COMMENT 'Description',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  `carrier_code` varchar(32) DEFAULT NULL COMMENT 'Carrier Code',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Track';

-- --------------------------------------------------------

--
-- Table structure for table `sales_invoiced_aggregated`
--

CREATE TABLE IF NOT EXISTS `sales_invoiced_aggregated` (
  `id` int(10) unsigned NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `orders_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Orders Invoiced',
  `invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced',
  `invoiced_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Captured',
  `invoiced_not_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Not Captured'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Invoiced Aggregated';

-- --------------------------------------------------------

--
-- Table structure for table `sales_invoiced_aggregated_order`
--

CREATE TABLE IF NOT EXISTS `sales_invoiced_aggregated_order` (
  `id` int(10) unsigned NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL DEFAULT '' COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `orders_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Orders Invoiced',
  `invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced',
  `invoiced_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Captured',
  `invoiced_not_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Not Captured'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Invoiced Aggregated Order';

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_aggregated_created`
--

CREATE TABLE IF NOT EXISTS `sales_order_aggregated_created` (
  `id` int(10) unsigned NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL DEFAULT '' COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Ordered',
  `total_qty_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Invoiced',
  `total_income_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Income Amount',
  `total_revenue_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Revenue Amount',
  `total_profit_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Profit Amount',
  `total_invoiced_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Invoiced Amount',
  `total_canceled_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Canceled Amount',
  `total_paid_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Paid Amount',
  `total_refunded_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Refunded Amount',
  `total_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount',
  `total_tax_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount Actual',
  `total_shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount',
  `total_shipping_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount Actual',
  `total_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount',
  `total_discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount Actual'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Aggregated Created';

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_aggregated_updated`
--

CREATE TABLE IF NOT EXISTS `sales_order_aggregated_updated` (
  `id` int(10) unsigned NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Ordered',
  `total_qty_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Invoiced',
  `total_income_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Income Amount',
  `total_revenue_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Revenue Amount',
  `total_profit_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Profit Amount',
  `total_invoiced_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Invoiced Amount',
  `total_canceled_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Canceled Amount',
  `total_paid_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Paid Amount',
  `total_refunded_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Refunded Amount',
  `total_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount',
  `total_tax_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount Actual',
  `total_shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount',
  `total_shipping_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount Actual',
  `total_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount',
  `total_discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount Actual'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Aggregated Updated';

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_status`
--

CREATE TABLE IF NOT EXISTS `sales_order_status` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `label` varchar(128) NOT NULL COMMENT 'Label'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Status Table';

--
-- Dumping data for table `sales_order_status`
--

INSERT INTO `sales_order_status` (`status`, `label`) VALUES
('canceled', 'Canceled'),
('closed', 'Closed'),
('complete', 'Complete'),
('fraud', 'Suspected Fraud'),
('holded', 'On Hold'),
('payment_review', 'Payment Review'),
('paypal_canceled_reversal', 'PayPal Canceled Reversal'),
('paypal_reversed', 'PayPal Reversed'),
('pending', 'Pending'),
('pending_payment', 'Pending Payment'),
('pending_paypal', 'Pending PayPal'),
('processing', 'Processing');

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_status_label`
--

CREATE TABLE IF NOT EXISTS `sales_order_status_label` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `label` varchar(128) NOT NULL COMMENT 'Label'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Status Label Table';

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_status_state`
--

CREATE TABLE IF NOT EXISTS `sales_order_status_state` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `state` varchar(32) NOT NULL COMMENT 'Label',
  `is_default` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Default'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Status Table';

--
-- Dumping data for table `sales_order_status_state`
--

INSERT INTO `sales_order_status_state` (`status`, `state`, `is_default`) VALUES
('canceled', 'canceled', 1),
('closed', 'closed', 1),
('complete', 'complete', 1),
('fraud', 'payment_review', 0),
('holded', 'holded', 1),
('payment_review', 'payment_review', 1),
('pending', 'new', 1),
('pending_payment', 'pending_payment', 1),
('processing', 'processing', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_tax`
--

CREATE TABLE IF NOT EXISTS `sales_order_tax` (
  `tax_id` int(10) unsigned NOT NULL COMMENT 'Tax Id',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  `percent` decimal(12,4) DEFAULT NULL COMMENT 'Percent',
  `amount` decimal(12,4) DEFAULT NULL COMMENT 'Amount',
  `priority` int(11) NOT NULL COMMENT 'Priority',
  `position` int(11) NOT NULL COMMENT 'Position',
  `base_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount',
  `process` smallint(6) NOT NULL COMMENT 'Process',
  `base_real_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Real Amount',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Hidden'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Tax Table';

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_tax_item`
--

CREATE TABLE IF NOT EXISTS `sales_order_tax_item` (
  `tax_item_id` int(10) unsigned NOT NULL COMMENT 'Tax Item Id',
  `tax_id` int(10) unsigned NOT NULL COMMENT 'Tax Id',
  `item_id` int(10) unsigned NOT NULL COMMENT 'Item Id',
  `tax_percent` decimal(12,4) NOT NULL COMMENT 'Real Tax Percent For Item'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Tax Item';

-- --------------------------------------------------------

--
-- Table structure for table `sales_payment_transaction`
--

CREATE TABLE IF NOT EXISTS `sales_payment_transaction` (
  `transaction_id` int(10) unsigned NOT NULL COMMENT 'Transaction Id',
  `parent_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Id',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Order Id',
  `payment_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Payment Id',
  `txn_id` varchar(100) DEFAULT NULL COMMENT 'Txn Id',
  `parent_txn_id` varchar(100) DEFAULT NULL COMMENT 'Parent Txn Id',
  `txn_type` varchar(15) DEFAULT NULL COMMENT 'Txn Type',
  `is_closed` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Closed',
  `additional_information` blob COMMENT 'Additional Information',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Payment Transaction';

-- --------------------------------------------------------

--
-- Table structure for table `sales_recurring_profile`
--

CREATE TABLE IF NOT EXISTS `sales_recurring_profile` (
  `profile_id` int(10) unsigned NOT NULL COMMENT 'Profile Id',
  `state` varchar(20) NOT NULL COMMENT 'State',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `method_code` varchar(32) NOT NULL COMMENT 'Method Code',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `reference_id` varchar(32) DEFAULT NULL COMMENT 'Reference Id',
  `subscriber_name` varchar(150) DEFAULT NULL COMMENT 'Subscriber Name',
  `start_datetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Start Datetime',
  `internal_reference_id` varchar(42) NOT NULL COMMENT 'Internal Reference Id',
  `schedule_description` varchar(255) NOT NULL COMMENT 'Schedule Description',
  `suspension_threshold` smallint(5) unsigned DEFAULT NULL COMMENT 'Suspension Threshold',
  `bill_failed_later` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Bill Failed Later',
  `period_unit` varchar(20) NOT NULL COMMENT 'Period Unit',
  `period_frequency` smallint(5) unsigned DEFAULT NULL COMMENT 'Period Frequency',
  `period_max_cycles` smallint(5) unsigned DEFAULT NULL COMMENT 'Period Max Cycles',
  `billing_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Billing Amount',
  `trial_period_unit` varchar(20) DEFAULT NULL COMMENT 'Trial Period Unit',
  `trial_period_frequency` smallint(5) unsigned DEFAULT NULL COMMENT 'Trial Period Frequency',
  `trial_period_max_cycles` smallint(5) unsigned DEFAULT NULL COMMENT 'Trial Period Max Cycles',
  `trial_billing_amount` text COMMENT 'Trial Billing Amount',
  `currency_code` varchar(3) NOT NULL COMMENT 'Currency Code',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `init_amount` decimal(12,4) DEFAULT NULL COMMENT 'Init Amount',
  `init_may_fail` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Init May Fail',
  `order_info` text NOT NULL COMMENT 'Order Info',
  `order_item_info` text NOT NULL COMMENT 'Order Item Info',
  `billing_address_info` text NOT NULL COMMENT 'Billing Address Info',
  `shipping_address_info` text COMMENT 'Shipping Address Info',
  `profile_vendor_info` text COMMENT 'Profile Vendor Info',
  `additional_info` text COMMENT 'Additional Info'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Recurring Profile';

-- --------------------------------------------------------

--
-- Table structure for table `sales_recurring_profile_order`
--

CREATE TABLE IF NOT EXISTS `sales_recurring_profile_order` (
  `link_id` int(10) unsigned NOT NULL COMMENT 'Link Id',
  `profile_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Id',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Order Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Recurring Profile Order';

-- --------------------------------------------------------

--
-- Table structure for table `sales_refunded_aggregated`
--

CREATE TABLE IF NOT EXISTS `sales_refunded_aggregated` (
  `id` int(10) unsigned NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL DEFAULT '' COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `refunded` decimal(12,4) DEFAULT NULL COMMENT 'Refunded',
  `online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Online Refunded',
  `offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Offline Refunded'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Refunded Aggregated';

-- --------------------------------------------------------

--
-- Table structure for table `sales_refunded_aggregated_order`
--

CREATE TABLE IF NOT EXISTS `sales_refunded_aggregated_order` (
  `id` int(10) unsigned NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `refunded` decimal(12,4) DEFAULT NULL COMMENT 'Refunded',
  `online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Online Refunded',
  `offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Offline Refunded'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Refunded Aggregated Order';

-- --------------------------------------------------------

--
-- Table structure for table `sales_shipping_aggregated`
--

CREATE TABLE IF NOT EXISTS `sales_shipping_aggregated` (
  `id` int(10) unsigned NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_shipping` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping',
  `total_shipping_actual` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping Actual'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Shipping Aggregated';

-- --------------------------------------------------------

--
-- Table structure for table `sales_shipping_aggregated_order`
--

CREATE TABLE IF NOT EXISTS `sales_shipping_aggregated_order` (
  `id` int(10) unsigned NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_shipping` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping',
  `total_shipping_actual` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping Actual'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Shipping Aggregated Order';

-- --------------------------------------------------------

--
-- Table structure for table `sendfriend_log`
--

CREATE TABLE IF NOT EXISTS `sendfriend_log` (
  `log_id` int(10) unsigned NOT NULL COMMENT 'Log ID',
  `ip` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer IP address',
  `time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Log time',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Send to friend function log storage table';

-- --------------------------------------------------------

--
-- Table structure for table `shipping_tablerate`
--

CREATE TABLE IF NOT EXISTS `shipping_tablerate` (
  `pk` int(10) unsigned NOT NULL COMMENT 'Primary key',
  `website_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `dest_country_id` varchar(4) NOT NULL DEFAULT '0' COMMENT 'Destination coutry ISO/2 or ISO/3 code',
  `dest_region_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Destination Region Id',
  `dest_zip` varchar(10) NOT NULL DEFAULT '*' COMMENT 'Destination Post Code (Zip)',
  `condition_name` varchar(20) NOT NULL COMMENT 'Rate Condition name',
  `condition_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Rate condition value',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `cost` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Cost'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Shipping Tablerate';

-- --------------------------------------------------------

--
-- Table structure for table `sitemap`
--

CREATE TABLE IF NOT EXISTS `sitemap` (
  `sitemap_id` int(10) unsigned NOT NULL COMMENT 'Sitemap Id',
  `sitemap_type` varchar(32) DEFAULT NULL COMMENT 'Sitemap Type',
  `sitemap_filename` varchar(32) DEFAULT NULL COMMENT 'Sitemap Filename',
  `sitemap_path` varchar(255) DEFAULT NULL COMMENT 'Sitemap Path',
  `sitemap_time` timestamp NULL DEFAULT NULL COMMENT 'Sitemap Time',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Google Sitemap';

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE IF NOT EXISTS `tag` (
  `tag_id` int(10) unsigned NOT NULL COMMENT 'Tag Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `status` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Status',
  `first_customer_id` int(10) unsigned DEFAULT NULL COMMENT 'First Customer Id',
  `first_store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'First Store Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag';

-- --------------------------------------------------------

--
-- Table structure for table `tag_properties`
--

CREATE TABLE IF NOT EXISTS `tag_properties` (
  `tag_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Tag Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `base_popularity` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Base Popularity'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag Properties';

-- --------------------------------------------------------

--
-- Table structure for table `tag_relation`
--

CREATE TABLE IF NOT EXISTS `tag_relation` (
  `tag_relation_id` int(10) unsigned NOT NULL COMMENT 'Tag Relation Id',
  `tag_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Tag Id',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Store Id',
  `active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Active',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag Relation';

-- --------------------------------------------------------

--
-- Table structure for table `tag_summary`
--

CREATE TABLE IF NOT EXISTS `tag_summary` (
  `tag_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Tag Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `customers` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customers',
  `products` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Products',
  `uses` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Uses',
  `historical_uses` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Historical Uses',
  `popularity` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Popularity',
  `base_popularity` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Base Popularity'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag Summary';

-- --------------------------------------------------------

--
-- Table structure for table `tax_calculation`
--

CREATE TABLE IF NOT EXISTS `tax_calculation` (
  `tax_calculation_id` int(11) NOT NULL COMMENT 'Tax Calculation Id',
  `tax_calculation_rate_id` int(11) NOT NULL COMMENT 'Tax Calculation Rate Id',
  `tax_calculation_rule_id` int(11) NOT NULL COMMENT 'Tax Calculation Rule Id',
  `customer_tax_class_id` smallint(6) NOT NULL COMMENT 'Customer Tax Class Id',
  `product_tax_class_id` smallint(6) NOT NULL COMMENT 'Product Tax Class Id'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Tax Calculation';

--
-- Dumping data for table `tax_calculation`
--

INSERT INTO `tax_calculation` (`tax_calculation_id`, `tax_calculation_rate_id`, `tax_calculation_rule_id`, `customer_tax_class_id`, `product_tax_class_id`) VALUES
(1, 1, 1, 3, 2),
(2, 2, 1, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tax_calculation_rate`
--

CREATE TABLE IF NOT EXISTS `tax_calculation_rate` (
  `tax_calculation_rate_id` int(11) NOT NULL COMMENT 'Tax Calculation Rate Id',
  `tax_country_id` varchar(2) NOT NULL COMMENT 'Tax Country Id',
  `tax_region_id` int(11) NOT NULL COMMENT 'Tax Region Id',
  `tax_postcode` varchar(21) DEFAULT NULL COMMENT 'Tax Postcode',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `rate` decimal(12,4) NOT NULL COMMENT 'Rate',
  `zip_is_range` smallint(6) DEFAULT NULL COMMENT 'Zip Is Range',
  `zip_from` int(10) unsigned DEFAULT NULL COMMENT 'Zip From',
  `zip_to` int(10) unsigned DEFAULT NULL COMMENT 'Zip To'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rate';

--
-- Dumping data for table `tax_calculation_rate`
--

INSERT INTO `tax_calculation_rate` (`tax_calculation_rate_id`, `tax_country_id`, `tax_region_id`, `tax_postcode`, `code`, `rate`, `zip_is_range`, `zip_from`, `zip_to`) VALUES
(1, 'US', 12, '*', 'US-CA-*-Rate 1', '8.2500', NULL, NULL, NULL),
(2, 'US', 43, '*', 'US-NY-*-Rate 1', '8.3750', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tax_calculation_rate_title`
--

CREATE TABLE IF NOT EXISTS `tax_calculation_rate_title` (
  `tax_calculation_rate_title_id` int(11) NOT NULL COMMENT 'Tax Calculation Rate Title Id',
  `tax_calculation_rate_id` int(11) NOT NULL COMMENT 'Tax Calculation Rate Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `value` varchar(255) NOT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rate Title';

-- --------------------------------------------------------

--
-- Table structure for table `tax_calculation_rule`
--

CREATE TABLE IF NOT EXISTS `tax_calculation_rule` (
  `tax_calculation_rule_id` int(11) NOT NULL COMMENT 'Tax Calculation Rule Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `priority` int(11) NOT NULL COMMENT 'Priority',
  `position` int(11) NOT NULL COMMENT 'Position',
  `calculate_subtotal` int(11) NOT NULL COMMENT 'Calculate off subtotal option'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rule';

--
-- Dumping data for table `tax_calculation_rule`
--

INSERT INTO `tax_calculation_rule` (`tax_calculation_rule_id`, `code`, `priority`, `position`, `calculate_subtotal`) VALUES
(1, 'Retail Customer-Taxable Goods-Rate 1', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tax_class`
--

CREATE TABLE IF NOT EXISTS `tax_class` (
  `class_id` smallint(6) NOT NULL COMMENT 'Class Id',
  `class_name` varchar(255) NOT NULL COMMENT 'Class Name',
  `class_type` varchar(8) NOT NULL DEFAULT 'CUSTOMER' COMMENT 'Class Type'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Tax Class';

--
-- Dumping data for table `tax_class`
--

INSERT INTO `tax_class` (`class_id`, `class_name`, `class_type`) VALUES
(2, 'Taxable Goods', 'PRODUCT'),
(3, 'Retail Customer', 'CUSTOMER'),
(4, 'Shipping', 'PRODUCT');

-- --------------------------------------------------------

--
-- Table structure for table `tax_order_aggregated_created`
--

CREATE TABLE IF NOT EXISTS `tax_order_aggregated_created` (
  `id` int(10) unsigned NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `percent` float DEFAULT NULL COMMENT 'Percent',
  `orders_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `tax_base_amount_sum` float DEFAULT NULL COMMENT 'Tax Base Amount Sum'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Order Aggregation';

-- --------------------------------------------------------

--
-- Table structure for table `tax_order_aggregated_updated`
--

CREATE TABLE IF NOT EXISTS `tax_order_aggregated_updated` (
  `id` int(10) unsigned NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `percent` float DEFAULT NULL COMMENT 'Percent',
  `orders_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `tax_base_amount_sum` float DEFAULT NULL COMMENT 'Tax Base Amount Sum'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Order Aggregated Updated';

-- --------------------------------------------------------

--
-- Table structure for table `weee_discount`
--

CREATE TABLE IF NOT EXISTS `weee_discount` (
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Weee Discount';

-- --------------------------------------------------------

--
-- Table structure for table `weee_tax`
--

CREATE TABLE IF NOT EXISTS `weee_tax` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `country` varchar(2) DEFAULT NULL COMMENT 'Country',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  `state` varchar(255) NOT NULL DEFAULT '*' COMMENT 'State',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  `entity_type_id` smallint(5) unsigned NOT NULL COMMENT 'Entity Type Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Weee Tax';

-- --------------------------------------------------------

--
-- Table structure for table `widget`
--

CREATE TABLE IF NOT EXISTS `widget` (
  `widget_id` int(10) unsigned NOT NULL COMMENT 'Widget Id',
  `widget_code` varchar(255) DEFAULT NULL COMMENT 'Widget code for template directive',
  `widget_type` varchar(255) DEFAULT NULL COMMENT 'Widget Type',
  `parameters` text COMMENT 'Parameters'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Preconfigured Widgets';

-- --------------------------------------------------------

--
-- Table structure for table `widget_instance`
--

CREATE TABLE IF NOT EXISTS `widget_instance` (
  `instance_id` int(10) unsigned NOT NULL COMMENT 'Instance Id',
  `instance_type` varchar(255) DEFAULT NULL COMMENT 'Instance Type',
  `package_theme` varchar(255) DEFAULT NULL COMMENT 'Package Theme',
  `title` varchar(255) DEFAULT NULL COMMENT 'Widget Title',
  `store_ids` varchar(255) NOT NULL DEFAULT '0' COMMENT 'Store ids',
  `widget_parameters` text COMMENT 'Widget parameters',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Instances of Widget for Package Theme';

-- --------------------------------------------------------

--
-- Table structure for table `widget_instance_page`
--

CREATE TABLE IF NOT EXISTS `widget_instance_page` (
  `page_id` int(10) unsigned NOT NULL COMMENT 'Page Id',
  `instance_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Id',
  `page_group` varchar(25) DEFAULT NULL COMMENT 'Block Group Type',
  `layout_handle` varchar(255) DEFAULT NULL COMMENT 'Layout Handle',
  `block_reference` varchar(255) DEFAULT NULL COMMENT 'Block Reference',
  `page_for` varchar(25) DEFAULT NULL COMMENT 'For instance entities',
  `entities` text COMMENT 'Catalog entities (comma separated)',
  `page_template` varchar(255) DEFAULT NULL COMMENT 'Path to widget template'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Instance of Widget on Page';

-- --------------------------------------------------------

--
-- Table structure for table `widget_instance_page_layout`
--

CREATE TABLE IF NOT EXISTS `widget_instance_page_layout` (
  `page_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Page Id',
  `layout_update_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Layout Update Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout updates';

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE IF NOT EXISTS `wishlist` (
  `wishlist_id` int(10) unsigned NOT NULL COMMENT 'Wishlist ID',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer ID',
  `shared` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sharing flag (0 or 1)',
  `sharing_code` varchar(32) DEFAULT NULL COMMENT 'Sharing encrypted code',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Last updated date'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Wishlist main Table';

-- --------------------------------------------------------

--
-- Table structure for table `wishlist_item`
--

CREATE TABLE IF NOT EXISTS `wishlist_item` (
  `wishlist_item_id` int(10) unsigned NOT NULL COMMENT 'Wishlist item ID',
  `wishlist_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Wishlist ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  `added_at` timestamp NULL DEFAULT NULL COMMENT 'Add date and time',
  `description` text COMMENT 'Short description of wish list item',
  `qty` decimal(12,4) NOT NULL COMMENT 'Qty'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Wishlist items';

-- --------------------------------------------------------

--
-- Table structure for table `wishlist_item_option`
--

CREATE TABLE IF NOT EXISTS `wishlist_item_option` (
  `option_id` int(10) unsigned NOT NULL COMMENT 'Option Id',
  `wishlist_item_id` int(10) unsigned NOT NULL COMMENT 'Wishlist Item Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `value` text COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Wishlist Item Option Table';

-- --------------------------------------------------------

--
-- Table structure for table `xmlconnect_application`
--

CREATE TABLE IF NOT EXISTS `xmlconnect_application` (
  `application_id` smallint(5) unsigned NOT NULL COMMENT 'Application Id',
  `name` varchar(255) NOT NULL COMMENT 'Application Name',
  `code` varchar(32) NOT NULL COMMENT 'Application Code',
  `type` varchar(32) NOT NULL COMMENT 'Device Type',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `active_from` date DEFAULT NULL COMMENT 'Active From',
  `active_to` date DEFAULT NULL COMMENT 'Active To',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Status',
  `browsing_mode` smallint(5) unsigned DEFAULT '0' COMMENT 'Browsing Mode'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Xmlconnect Application';

-- --------------------------------------------------------

--
-- Table structure for table `xmlconnect_config_data`
--

CREATE TABLE IF NOT EXISTS `xmlconnect_config_data` (
  `application_id` smallint(5) unsigned NOT NULL COMMENT 'Application Id',
  `category` varchar(60) NOT NULL DEFAULT 'default' COMMENT 'Category',
  `path` varchar(250) NOT NULL COMMENT 'Path',
  `value` text NOT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Xmlconnect Configuration Data';

-- --------------------------------------------------------

--
-- Table structure for table `xmlconnect_history`
--

CREATE TABLE IF NOT EXISTS `xmlconnect_history` (
  `history_id` int(10) unsigned NOT NULL COMMENT 'History Id',
  `application_id` smallint(5) unsigned NOT NULL COMMENT 'Application Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `params` blob COMMENT 'Params',
  `title` varchar(200) NOT NULL COMMENT 'Title',
  `activation_key` varchar(255) NOT NULL COMMENT 'Activation Key',
  `name` varchar(255) NOT NULL COMMENT 'Application Name',
  `code` varchar(32) NOT NULL COMMENT 'Application Code'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Xmlconnect History';

-- --------------------------------------------------------

--
-- Table structure for table `xmlconnect_images`
--

CREATE TABLE IF NOT EXISTS `xmlconnect_images` (
  `image_id` int(10) unsigned NOT NULL COMMENT 'Image Id',
  `application_id` smallint(5) unsigned NOT NULL COMMENT 'Application Id',
  `image_file` varchar(255) NOT NULL COMMENT 'Image File',
  `image_type` varchar(255) NOT NULL COMMENT 'Image Type',
  `order` int(10) unsigned NOT NULL COMMENT 'Order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Xmlconnect Images';

-- --------------------------------------------------------

--
-- Table structure for table `xmlconnect_notification_template`
--

CREATE TABLE IF NOT EXISTS `xmlconnect_notification_template` (
  `template_id` int(10) unsigned NOT NULL COMMENT 'Template Id',
  `name` varchar(255) NOT NULL COMMENT 'Template Name',
  `push_title` varchar(140) NOT NULL COMMENT 'Push Notification Title',
  `message_title` varchar(255) NOT NULL COMMENT 'Message Title',
  `content` text NOT NULL COMMENT 'Message Content',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `modified_at` timestamp NULL DEFAULT NULL COMMENT 'Modified At',
  `application_id` smallint(5) unsigned NOT NULL COMMENT 'Application Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Xmlconnect Notification Template';

-- --------------------------------------------------------

--
-- Table structure for table `xmlconnect_queue`
--

CREATE TABLE IF NOT EXISTS `xmlconnect_queue` (
  `queue_id` int(10) unsigned NOT NULL COMMENT 'Queue Id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `exec_time` timestamp NULL DEFAULT NULL COMMENT 'Scheduled Execution Time',
  `template_id` int(10) unsigned NOT NULL COMMENT 'Template Id',
  `push_title` varchar(140) NOT NULL COMMENT 'Push Notification Title',
  `message_title` varchar(255) DEFAULT '' COMMENT 'Message Title',
  `content` text COMMENT 'Message Content',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Status',
  `type` varchar(12) NOT NULL COMMENT 'Type of Notification'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Xmlconnect Notification Queue';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminnotification_inbox`
--
ALTER TABLE `adminnotification_inbox`
  ADD PRIMARY KEY (`notification_id`), ADD KEY `IDX_ADMINNOTIFICATION_INBOX_SEVERITY` (`severity`), ADD KEY `IDX_ADMINNOTIFICATION_INBOX_IS_READ` (`is_read`), ADD KEY `IDX_ADMINNOTIFICATION_INBOX_IS_REMOVE` (`is_remove`);

--
-- Indexes for table `admin_assert`
--
ALTER TABLE `admin_assert`
  ADD PRIMARY KEY (`assert_id`);

--
-- Indexes for table `admin_role`
--
ALTER TABLE `admin_role`
  ADD PRIMARY KEY (`role_id`), ADD KEY `IDX_ADMIN_ROLE_PARENT_ID_SORT_ORDER` (`parent_id`,`sort_order`), ADD KEY `IDX_ADMIN_ROLE_TREE_LEVEL` (`tree_level`);

--
-- Indexes for table `admin_rule`
--
ALTER TABLE `admin_rule`
  ADD PRIMARY KEY (`rule_id`), ADD KEY `IDX_ADMIN_RULE_RESOURCE_ID_ROLE_ID` (`resource_id`,`role_id`), ADD KEY `IDX_ADMIN_RULE_ROLE_ID_RESOURCE_ID` (`role_id`,`resource_id`);

--
-- Indexes for table `admin_user`
--
ALTER TABLE `admin_user`
  ADD PRIMARY KEY (`user_id`), ADD UNIQUE KEY `UNQ_ADMIN_USER_USERNAME` (`username`);

--
-- Indexes for table `api2_acl_attribute`
--
ALTER TABLE `api2_acl_attribute`
  ADD PRIMARY KEY (`entity_id`), ADD UNIQUE KEY `UNQ_API2_ACL_ATTRIBUTE_USER_TYPE_RESOURCE_ID_OPERATION` (`user_type`,`resource_id`,`operation`), ADD KEY `IDX_API2_ACL_ATTRIBUTE_USER_TYPE` (`user_type`);

--
-- Indexes for table `api2_acl_role`
--
ALTER TABLE `api2_acl_role`
  ADD PRIMARY KEY (`entity_id`), ADD KEY `IDX_API2_ACL_ROLE_CREATED_AT` (`created_at`), ADD KEY `IDX_API2_ACL_ROLE_UPDATED_AT` (`updated_at`);

--
-- Indexes for table `api2_acl_rule`
--
ALTER TABLE `api2_acl_rule`
  ADD PRIMARY KEY (`entity_id`), ADD UNIQUE KEY `UNQ_API2_ACL_RULE_ROLE_ID_RESOURCE_ID_PRIVILEGE` (`role_id`,`resource_id`,`privilege`);

--
-- Indexes for table `api2_acl_user`
--
ALTER TABLE `api2_acl_user`
  ADD UNIQUE KEY `UNQ_API2_ACL_USER_ADMIN_ID` (`admin_id`), ADD KEY `FK_API2_ACL_USER_ROLE_ID_API2_ACL_ROLE_ENTITY_ID` (`role_id`);

--
-- Indexes for table `api_assert`
--
ALTER TABLE `api_assert`
  ADD PRIMARY KEY (`assert_id`);

--
-- Indexes for table `api_role`
--
ALTER TABLE `api_role`
  ADD PRIMARY KEY (`role_id`), ADD KEY `IDX_API_ROLE_PARENT_ID_SORT_ORDER` (`parent_id`,`sort_order`), ADD KEY `IDX_API_ROLE_TREE_LEVEL` (`tree_level`);

--
-- Indexes for table `api_rule`
--
ALTER TABLE `api_rule`
  ADD PRIMARY KEY (`rule_id`), ADD KEY `IDX_API_RULE_RESOURCE_ID_ROLE_ID` (`resource_id`,`role_id`), ADD KEY `IDX_API_RULE_ROLE_ID_RESOURCE_ID` (`role_id`,`resource_id`);

--
-- Indexes for table `api_session`
--
ALTER TABLE `api_session`
  ADD KEY `IDX_API_SESSION_USER_ID` (`user_id`), ADD KEY `IDX_API_SESSION_SESSID` (`sessid`);

--
-- Indexes for table `api_user`
--
ALTER TABLE `api_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `captcha_log`
--
ALTER TABLE `captcha_log`
  ADD PRIMARY KEY (`type`,`value`);

--
-- Indexes for table `cataloginventory_stock`
--
ALTER TABLE `cataloginventory_stock`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `cataloginventory_stock_item`
--
ALTER TABLE `cataloginventory_stock_item`
  ADD PRIMARY KEY (`item_id`), ADD UNIQUE KEY `UNQ_CATALOGINVENTORY_STOCK_ITEM_PRODUCT_ID_STOCK_ID` (`product_id`,`stock_id`), ADD KEY `IDX_CATALOGINVENTORY_STOCK_ITEM_PRODUCT_ID` (`product_id`), ADD KEY `IDX_CATALOGINVENTORY_STOCK_ITEM_STOCK_ID` (`stock_id`);

--
-- Indexes for table `cataloginventory_stock_status`
--
ALTER TABLE `cataloginventory_stock_status`
  ADD PRIMARY KEY (`product_id`,`website_id`,`stock_id`), ADD KEY `IDX_CATALOGINVENTORY_STOCK_STATUS_STOCK_ID` (`stock_id`), ADD KEY `IDX_CATALOGINVENTORY_STOCK_STATUS_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `cataloginventory_stock_status_idx`
--
ALTER TABLE `cataloginventory_stock_status_idx`
  ADD PRIMARY KEY (`product_id`,`website_id`,`stock_id`), ADD KEY `IDX_CATALOGINVENTORY_STOCK_STATUS_IDX_STOCK_ID` (`stock_id`), ADD KEY `IDX_CATALOGINVENTORY_STOCK_STATUS_IDX_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `cataloginventory_stock_status_tmp`
--
ALTER TABLE `cataloginventory_stock_status_tmp`
  ADD PRIMARY KEY (`product_id`,`website_id`,`stock_id`), ADD KEY `IDX_CATALOGINVENTORY_STOCK_STATUS_TMP_STOCK_ID` (`stock_id`), ADD KEY `IDX_CATALOGINVENTORY_STOCK_STATUS_TMP_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `catalogrule`
--
ALTER TABLE `catalogrule`
  ADD PRIMARY KEY (`rule_id`), ADD KEY `IDX_CATALOGRULE_IS_ACTIVE_SORT_ORDER_TO_DATE_FROM_DATE` (`is_active`,`sort_order`,`to_date`,`from_date`);

--
-- Indexes for table `catalogrule_affected_product`
--
ALTER TABLE `catalogrule_affected_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `catalogrule_customer_group`
--
ALTER TABLE `catalogrule_customer_group`
  ADD PRIMARY KEY (`rule_id`,`customer_group_id`), ADD KEY `IDX_CATALOGRULE_CUSTOMER_GROUP_RULE_ID` (`rule_id`), ADD KEY `IDX_CATALOGRULE_CUSTOMER_GROUP_CUSTOMER_GROUP_ID` (`customer_group_id`);

--
-- Indexes for table `catalogrule_group_website`
--
ALTER TABLE `catalogrule_group_website`
  ADD PRIMARY KEY (`rule_id`,`customer_group_id`,`website_id`), ADD KEY `IDX_CATALOGRULE_GROUP_WEBSITE_RULE_ID` (`rule_id`), ADD KEY `IDX_CATALOGRULE_GROUP_WEBSITE_CUSTOMER_GROUP_ID` (`customer_group_id`), ADD KEY `IDX_CATALOGRULE_GROUP_WEBSITE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `catalogrule_product`
--
ALTER TABLE `catalogrule_product`
  ADD PRIMARY KEY (`rule_product_id`), ADD UNIQUE KEY `EAA51B56FF092A0DCB795D1CEF812B7B` (`rule_id`,`from_time`,`to_time`,`website_id`,`customer_group_id`,`product_id`,`sort_order`), ADD KEY `IDX_CATALOGRULE_PRODUCT_RULE_ID` (`rule_id`), ADD KEY `IDX_CATALOGRULE_PRODUCT_CUSTOMER_GROUP_ID` (`customer_group_id`), ADD KEY `IDX_CATALOGRULE_PRODUCT_WEBSITE_ID` (`website_id`), ADD KEY `IDX_CATALOGRULE_PRODUCT_FROM_TIME` (`from_time`), ADD KEY `IDX_CATALOGRULE_PRODUCT_TO_TIME` (`to_time`), ADD KEY `IDX_CATALOGRULE_PRODUCT_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `catalogrule_product_price`
--
ALTER TABLE `catalogrule_product_price`
  ADD PRIMARY KEY (`rule_product_price_id`), ADD UNIQUE KEY `UNQ_CATRULE_PRD_PRICE_RULE_DATE_WS_ID_CSTR_GROUP_ID_PRD_ID` (`rule_date`,`website_id`,`customer_group_id`,`product_id`), ADD KEY `IDX_CATALOGRULE_PRODUCT_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`), ADD KEY `IDX_CATALOGRULE_PRODUCT_PRICE_WEBSITE_ID` (`website_id`), ADD KEY `IDX_CATALOGRULE_PRODUCT_PRICE_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `catalogrule_website`
--
ALTER TABLE `catalogrule_website`
  ADD PRIMARY KEY (`rule_id`,`website_id`), ADD KEY `IDX_CATALOGRULE_WEBSITE_RULE_ID` (`rule_id`), ADD KEY `IDX_CATALOGRULE_WEBSITE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `catalogsearch_fulltext`
--
ALTER TABLE `catalogsearch_fulltext`
  ADD PRIMARY KEY (`fulltext_id`), ADD UNIQUE KEY `UNQ_CATALOGSEARCH_FULLTEXT_PRODUCT_ID_STORE_ID` (`product_id`,`store_id`), ADD FULLTEXT KEY `FTI_CATALOGSEARCH_FULLTEXT_DATA_INDEX` (`data_index`);

--
-- Indexes for table `catalogsearch_query`
--
ALTER TABLE `catalogsearch_query`
  ADD PRIMARY KEY (`query_id`), ADD KEY `IDX_CATALOGSEARCH_QUERY_QUERY_TEXT_STORE_ID_POPULARITY` (`query_text`,`store_id`,`popularity`), ADD KEY `IDX_CATALOGSEARCH_QUERY_STORE_ID` (`store_id`);

--
-- Indexes for table `catalogsearch_result`
--
ALTER TABLE `catalogsearch_result`
  ADD PRIMARY KEY (`query_id`,`product_id`), ADD KEY `IDX_CATALOGSEARCH_RESULT_QUERY_ID` (`query_id`), ADD KEY `IDX_CATALOGSEARCH_RESULT_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `catalog_category_anc_categs_index_idx`
--
ALTER TABLE `catalog_category_anc_categs_index_idx`
  ADD KEY `IDX_CATALOG_CATEGORY_ANC_CATEGS_INDEX_IDX_CATEGORY_ID` (`category_id`), ADD KEY `IDX_CATALOG_CATEGORY_ANC_CATEGS_INDEX_IDX_PATH_CATEGORY_ID` (`path`,`category_id`);

--
-- Indexes for table `catalog_category_anc_categs_index_tmp`
--
ALTER TABLE `catalog_category_anc_categs_index_tmp`
  ADD KEY `IDX_CATALOG_CATEGORY_ANC_CATEGS_INDEX_TMP_CATEGORY_ID` (`category_id`), ADD KEY `IDX_CATALOG_CATEGORY_ANC_CATEGS_INDEX_TMP_PATH_CATEGORY_ID` (`path`,`category_id`);

--
-- Indexes for table `catalog_category_anc_products_index_idx`
--
ALTER TABLE `catalog_category_anc_products_index_idx`
  ADD KEY `IDX_CAT_CTGR_ANC_PRDS_IDX_IDX_CTGR_ID_PRD_ID_POSITION` (`category_id`,`product_id`,`position`);

--
-- Indexes for table `catalog_category_anc_products_index_tmp`
--
ALTER TABLE `catalog_category_anc_products_index_tmp`
  ADD KEY `IDX_CAT_CTGR_ANC_PRDS_IDX_TMP_CTGR_ID_PRD_ID_POSITION` (`category_id`,`product_id`,`position`);

--
-- Indexes for table `catalog_category_entity`
--
ALTER TABLE `catalog_category_entity`
  ADD PRIMARY KEY (`entity_id`), ADD KEY `IDX_CATALOG_CATEGORY_ENTITY_LEVEL` (`level`), ADD KEY `IDX_CATALOG_CATEGORY_ENTITY_PATH_ENTITY_ID` (`path`,`entity_id`);

--
-- Indexes for table `catalog_category_entity_datetime`
--
ALTER TABLE `catalog_category_entity_datetime`
  ADD PRIMARY KEY (`value_id`), ADD UNIQUE KEY `UNQ_CAT_CTGR_ENTT_DTIME_ENTT_TYPE_ID_ENTT_ID_ATTR_ID_STORE_ID` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`), ADD KEY `IDX_CATALOG_CATEGORY_ENTITY_DATETIME_ENTITY_ID` (`entity_id`), ADD KEY `IDX_CATALOG_CATEGORY_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`), ADD KEY `IDX_CATALOG_CATEGORY_ENTITY_DATETIME_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_category_entity_decimal`
--
ALTER TABLE `catalog_category_entity_decimal`
  ADD PRIMARY KEY (`value_id`), ADD UNIQUE KEY `UNQ_CAT_CTGR_ENTT_DEC_ENTT_TYPE_ID_ENTT_ID_ATTR_ID_STORE_ID` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`), ADD KEY `IDX_CATALOG_CATEGORY_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`), ADD KEY `IDX_CATALOG_CATEGORY_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`), ADD KEY `IDX_CATALOG_CATEGORY_ENTITY_DECIMAL_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_category_entity_int`
--
ALTER TABLE `catalog_category_entity_int`
  ADD PRIMARY KEY (`value_id`), ADD UNIQUE KEY `UNQ_CAT_CTGR_ENTT_INT_ENTT_TYPE_ID_ENTT_ID_ATTR_ID_STORE_ID` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`), ADD KEY `IDX_CATALOG_CATEGORY_ENTITY_INT_ENTITY_ID` (`entity_id`), ADD KEY `IDX_CATALOG_CATEGORY_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`), ADD KEY `IDX_CATALOG_CATEGORY_ENTITY_INT_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_category_entity_text`
--
ALTER TABLE `catalog_category_entity_text`
  ADD PRIMARY KEY (`value_id`), ADD UNIQUE KEY `UNQ_CAT_CTGR_ENTT_TEXT_ENTT_TYPE_ID_ENTT_ID_ATTR_ID_STORE_ID` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`), ADD KEY `IDX_CATALOG_CATEGORY_ENTITY_TEXT_ENTITY_ID` (`entity_id`), ADD KEY `IDX_CATALOG_CATEGORY_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`), ADD KEY `IDX_CATALOG_CATEGORY_ENTITY_TEXT_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_category_entity_varchar`
--
ALTER TABLE `catalog_category_entity_varchar`
  ADD PRIMARY KEY (`value_id`), ADD UNIQUE KEY `UNQ_CAT_CTGR_ENTT_VCHR_ENTT_TYPE_ID_ENTT_ID_ATTR_ID_STORE_ID` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`), ADD KEY `IDX_CATALOG_CATEGORY_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`), ADD KEY `IDX_CATALOG_CATEGORY_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`), ADD KEY `IDX_CATALOG_CATEGORY_ENTITY_VARCHAR_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_category_product`
--
ALTER TABLE `catalog_category_product`
  ADD PRIMARY KEY (`category_id`,`product_id`), ADD KEY `IDX_CATALOG_CATEGORY_PRODUCT_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `catalog_category_product_index`
--
ALTER TABLE `catalog_category_product_index`
  ADD PRIMARY KEY (`category_id`,`product_id`,`store_id`), ADD KEY `IDX_CAT_CTGR_PRD_IDX_PRD_ID_STORE_ID_CTGR_ID_VISIBILITY` (`product_id`,`store_id`,`category_id`,`visibility`), ADD KEY `15D3C269665C74C2219037D534F4B0DC` (`store_id`,`category_id`,`visibility`,`is_parent`,`position`);

--
-- Indexes for table `catalog_category_product_index_enbl_idx`
--
ALTER TABLE `catalog_category_product_index_enbl_idx`
  ADD KEY `IDX_CAT_CTGR_PRD_IDX_ENBL_IDX_PRD_ID_VISIBILITY` (`product_id`,`visibility`);

--
-- Indexes for table `catalog_category_product_index_enbl_tmp`
--
ALTER TABLE `catalog_category_product_index_enbl_tmp`
  ADD KEY `IDX_CAT_CTGR_PRD_IDX_ENBL_TMP_PRD_ID_VISIBILITY` (`product_id`,`visibility`);

--
-- Indexes for table `catalog_category_product_index_idx`
--
ALTER TABLE `catalog_category_product_index_idx`
  ADD KEY `IDX_CAT_CTGR_PRD_IDX_IDX_PRD_ID_CTGR_ID_STORE_ID` (`product_id`,`category_id`,`store_id`);

--
-- Indexes for table `catalog_category_product_index_tmp`
--
ALTER TABLE `catalog_category_product_index_tmp`
  ADD KEY `IDX_CAT_CTGR_PRD_IDX_TMP_PRD_ID_CTGR_ID_STORE_ID` (`product_id`,`category_id`,`store_id`);

--
-- Indexes for table `catalog_compare_item`
--
ALTER TABLE `catalog_compare_item`
  ADD PRIMARY KEY (`catalog_compare_item_id`), ADD KEY `IDX_CATALOG_COMPARE_ITEM_CUSTOMER_ID` (`customer_id`), ADD KEY `IDX_CATALOG_COMPARE_ITEM_PRODUCT_ID` (`product_id`), ADD KEY `IDX_CATALOG_COMPARE_ITEM_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`), ADD KEY `IDX_CATALOG_COMPARE_ITEM_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`), ADD KEY `IDX_CATALOG_COMPARE_ITEM_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_eav_attribute`
--
ALTER TABLE `catalog_eav_attribute`
  ADD PRIMARY KEY (`attribute_id`), ADD KEY `IDX_CATALOG_EAV_ATTRIBUTE_USED_FOR_SORT_BY` (`used_for_sort_by`), ADD KEY `IDX_CATALOG_EAV_ATTRIBUTE_USED_IN_PRODUCT_LISTING` (`used_in_product_listing`);

--
-- Indexes for table `catalog_product_bundle_option`
--
ALTER TABLE `catalog_product_bundle_option`
  ADD PRIMARY KEY (`option_id`), ADD KEY `IDX_CATALOG_PRODUCT_BUNDLE_OPTION_PARENT_ID` (`parent_id`);

--
-- Indexes for table `catalog_product_bundle_option_value`
--
ALTER TABLE `catalog_product_bundle_option_value`
  ADD PRIMARY KEY (`value_id`), ADD UNIQUE KEY `UNQ_CATALOG_PRODUCT_BUNDLE_OPTION_VALUE_OPTION_ID_STORE_ID` (`option_id`,`store_id`);

--
-- Indexes for table `catalog_product_bundle_price_index`
--
ALTER TABLE `catalog_product_bundle_price_index`
  ADD PRIMARY KEY (`entity_id`,`website_id`,`customer_group_id`), ADD KEY `IDX_CATALOG_PRODUCT_BUNDLE_PRICE_INDEX_WEBSITE_ID` (`website_id`), ADD KEY `IDX_CATALOG_PRODUCT_BUNDLE_PRICE_INDEX_CUSTOMER_GROUP_ID` (`customer_group_id`);

--
-- Indexes for table `catalog_product_bundle_selection`
--
ALTER TABLE `catalog_product_bundle_selection`
  ADD PRIMARY KEY (`selection_id`), ADD KEY `IDX_CATALOG_PRODUCT_BUNDLE_SELECTION_OPTION_ID` (`option_id`), ADD KEY `IDX_CATALOG_PRODUCT_BUNDLE_SELECTION_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `catalog_product_bundle_selection_price`
--
ALTER TABLE `catalog_product_bundle_selection_price`
  ADD PRIMARY KEY (`selection_id`,`website_id`), ADD KEY `IDX_CATALOG_PRODUCT_BUNDLE_SELECTION_PRICE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `catalog_product_bundle_stock_index`
--
ALTER TABLE `catalog_product_bundle_stock_index`
  ADD PRIMARY KEY (`entity_id`,`website_id`,`stock_id`,`option_id`);

--
-- Indexes for table `catalog_product_enabled_index`
--
ALTER TABLE `catalog_product_enabled_index`
  ADD PRIMARY KEY (`product_id`,`store_id`), ADD KEY `IDX_CATALOG_PRODUCT_ENABLED_INDEX_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_product_entity`
--
ALTER TABLE `catalog_product_entity`
  ADD PRIMARY KEY (`entity_id`), ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`), ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_ATTRIBUTE_SET_ID` (`attribute_set_id`), ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_SKU` (`sku`);

--
-- Indexes for table `catalog_product_entity_datetime`
--
ALTER TABLE `catalog_product_entity_datetime`
  ADD PRIMARY KEY (`value_id`), ADD UNIQUE KEY `UNQ_CAT_PRD_ENTT_DTIME_ENTT_ID_ATTR_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`), ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`), ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_DATETIME_STORE_ID` (`store_id`), ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_DATETIME_ENTITY_ID` (`entity_id`);

--
-- Indexes for table `catalog_product_entity_decimal`
--
ALTER TABLE `catalog_product_entity_decimal`
  ADD PRIMARY KEY (`value_id`), ADD UNIQUE KEY `UNQ_CAT_PRD_ENTT_DEC_ENTT_ID_ATTR_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`), ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_DECIMAL_STORE_ID` (`store_id`), ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`), ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`);

--
-- Indexes for table `catalog_product_entity_gallery`
--
ALTER TABLE `catalog_product_entity_gallery`
  ADD PRIMARY KEY (`value_id`), ADD UNIQUE KEY `UNQ_CAT_PRD_ENTT_GLR_ENTT_TYPE_ID_ENTT_ID_ATTR_ID_STORE_ID` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`), ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_GALLERY_ENTITY_ID` (`entity_id`), ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_GALLERY_ATTRIBUTE_ID` (`attribute_id`), ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_GALLERY_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_product_entity_group_price`
--
ALTER TABLE `catalog_product_entity_group_price`
  ADD PRIMARY KEY (`value_id`), ADD UNIQUE KEY `CC12C83765B562314470A24F2BDD0F36` (`entity_id`,`all_groups`,`customer_group_id`,`website_id`), ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_GROUP_PRICE_ENTITY_ID` (`entity_id`), ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_GROUP_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`), ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_GROUP_PRICE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `catalog_product_entity_int`
--
ALTER TABLE `catalog_product_entity_int`
  ADD PRIMARY KEY (`value_id`), ADD UNIQUE KEY `UNQ_CATALOG_PRODUCT_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`), ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`), ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_INT_STORE_ID` (`store_id`), ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_INT_ENTITY_ID` (`entity_id`);

--
-- Indexes for table `catalog_product_entity_media_gallery`
--
ALTER TABLE `catalog_product_entity_media_gallery`
  ADD PRIMARY KEY (`value_id`), ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_ATTRIBUTE_ID` (`attribute_id`), ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_ENTITY_ID` (`entity_id`);

--
-- Indexes for table `catalog_product_entity_media_gallery_value`
--
ALTER TABLE `catalog_product_entity_media_gallery_value`
  ADD PRIMARY KEY (`value_id`,`store_id`), ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_VALUE_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_product_entity_text`
--
ALTER TABLE `catalog_product_entity_text`
  ADD PRIMARY KEY (`value_id`), ADD UNIQUE KEY `UNQ_CATALOG_PRODUCT_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`), ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`), ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_TEXT_STORE_ID` (`store_id`), ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_TEXT_ENTITY_ID` (`entity_id`);

--
-- Indexes for table `catalog_product_entity_tier_price`
--
ALTER TABLE `catalog_product_entity_tier_price`
  ADD PRIMARY KEY (`value_id`), ADD UNIQUE KEY `E8AB433B9ACB00343ABB312AD2FAB087` (`entity_id`,`all_groups`,`customer_group_id`,`qty`,`website_id`), ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_TIER_PRICE_ENTITY_ID` (`entity_id`), ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_TIER_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`), ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_TIER_PRICE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `catalog_product_entity_varchar`
--
ALTER TABLE `catalog_product_entity_varchar`
  ADD PRIMARY KEY (`value_id`), ADD UNIQUE KEY `UNQ_CAT_PRD_ENTT_VCHR_ENTT_ID_ATTR_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`), ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`), ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_VARCHAR_STORE_ID` (`store_id`), ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`);

--
-- Indexes for table `catalog_product_index_eav`
--
ALTER TABLE `catalog_product_index_eav`
  ADD PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`), ADD KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_ENTITY_ID` (`entity_id`), ADD KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_ATTRIBUTE_ID` (`attribute_id`), ADD KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_STORE_ID` (`store_id`), ADD KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_VALUE` (`value`);

--
-- Indexes for table `catalog_product_index_eav_decimal`
--
ALTER TABLE `catalog_product_index_eav_decimal`
  ADD PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`), ADD KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_ENTITY_ID` (`entity_id`), ADD KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_ATTRIBUTE_ID` (`attribute_id`), ADD KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_STORE_ID` (`store_id`), ADD KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_VALUE` (`value`);

--
-- Indexes for table `catalog_product_index_eav_decimal_idx`
--
ALTER TABLE `catalog_product_index_eav_decimal_idx`
  ADD PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`), ADD KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_ENTITY_ID` (`entity_id`), ADD KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_ATTRIBUTE_ID` (`attribute_id`), ADD KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_STORE_ID` (`store_id`), ADD KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_VALUE` (`value`);

--
-- Indexes for table `catalog_product_index_eav_decimal_tmp`
--
ALTER TABLE `catalog_product_index_eav_decimal_tmp`
  ADD PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`), ADD KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_ENTITY_ID` (`entity_id`), ADD KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_ATTRIBUTE_ID` (`attribute_id`), ADD KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_STORE_ID` (`store_id`), ADD KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_VALUE` (`value`);

--
-- Indexes for table `catalog_product_index_eav_idx`
--
ALTER TABLE `catalog_product_index_eav_idx`
  ADD PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`), ADD KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_IDX_ENTITY_ID` (`entity_id`), ADD KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_IDX_ATTRIBUTE_ID` (`attribute_id`), ADD KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_IDX_STORE_ID` (`store_id`), ADD KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_IDX_VALUE` (`value`);

--
-- Indexes for table `catalog_product_index_eav_tmp`
--
ALTER TABLE `catalog_product_index_eav_tmp`
  ADD PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`), ADD KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_TMP_ENTITY_ID` (`entity_id`), ADD KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_TMP_ATTRIBUTE_ID` (`attribute_id`), ADD KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_TMP_STORE_ID` (`store_id`), ADD KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_TMP_VALUE` (`value`);

--
-- Indexes for table `catalog_product_index_group_price`
--
ALTER TABLE `catalog_product_index_group_price`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`), ADD KEY `IDX_CATALOG_PRODUCT_INDEX_GROUP_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`), ADD KEY `IDX_CATALOG_PRODUCT_INDEX_GROUP_PRICE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `catalog_product_index_price`
--
ALTER TABLE `catalog_product_index_price`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`), ADD KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`), ADD KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_WEBSITE_ID` (`website_id`), ADD KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_MIN_PRICE` (`min_price`), ADD KEY `IDX_CAT_PRD_IDX_PRICE_WS_ID_CSTR_GROUP_ID_MIN_PRICE` (`website_id`,`customer_group_id`,`min_price`);

--
-- Indexes for table `catalog_product_index_price_bundle_idx`
--
ALTER TABLE `catalog_product_index_price_bundle_idx`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_bundle_opt_idx`
--
ALTER TABLE `catalog_product_index_price_bundle_opt_idx`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`);

--
-- Indexes for table `catalog_product_index_price_bundle_opt_tmp`
--
ALTER TABLE `catalog_product_index_price_bundle_opt_tmp`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`);

--
-- Indexes for table `catalog_product_index_price_bundle_sel_idx`
--
ALTER TABLE `catalog_product_index_price_bundle_sel_idx`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`,`selection_id`);

--
-- Indexes for table `catalog_product_index_price_bundle_sel_tmp`
--
ALTER TABLE `catalog_product_index_price_bundle_sel_tmp`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`,`selection_id`);

--
-- Indexes for table `catalog_product_index_price_bundle_tmp`
--
ALTER TABLE `catalog_product_index_price_bundle_tmp`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_cfg_opt_agr_idx`
--
ALTER TABLE `catalog_product_index_price_cfg_opt_agr_idx`
  ADD PRIMARY KEY (`parent_id`,`child_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_cfg_opt_agr_tmp`
--
ALTER TABLE `catalog_product_index_price_cfg_opt_agr_tmp`
  ADD PRIMARY KEY (`parent_id`,`child_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_cfg_opt_idx`
--
ALTER TABLE `catalog_product_index_price_cfg_opt_idx`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_cfg_opt_tmp`
--
ALTER TABLE `catalog_product_index_price_cfg_opt_tmp`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_downlod_idx`
--
ALTER TABLE `catalog_product_index_price_downlod_idx`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_downlod_tmp`
--
ALTER TABLE `catalog_product_index_price_downlod_tmp`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_final_idx`
--
ALTER TABLE `catalog_product_index_price_final_idx`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_final_tmp`
--
ALTER TABLE `catalog_product_index_price_final_tmp`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_idx`
--
ALTER TABLE `catalog_product_index_price_idx`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`), ADD KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_IDX_CUSTOMER_GROUP_ID` (`customer_group_id`), ADD KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_IDX_WEBSITE_ID` (`website_id`), ADD KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_IDX_MIN_PRICE` (`min_price`);

--
-- Indexes for table `catalog_product_index_price_opt_agr_idx`
--
ALTER TABLE `catalog_product_index_price_opt_agr_idx`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`);

--
-- Indexes for table `catalog_product_index_price_opt_agr_tmp`
--
ALTER TABLE `catalog_product_index_price_opt_agr_tmp`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`);

--
-- Indexes for table `catalog_product_index_price_opt_idx`
--
ALTER TABLE `catalog_product_index_price_opt_idx`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_opt_tmp`
--
ALTER TABLE `catalog_product_index_price_opt_tmp`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_tmp`
--
ALTER TABLE `catalog_product_index_price_tmp`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`), ADD KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_TMP_CUSTOMER_GROUP_ID` (`customer_group_id`), ADD KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_TMP_WEBSITE_ID` (`website_id`), ADD KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_TMP_MIN_PRICE` (`min_price`);

--
-- Indexes for table `catalog_product_index_tier_price`
--
ALTER TABLE `catalog_product_index_tier_price`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`), ADD KEY `IDX_CATALOG_PRODUCT_INDEX_TIER_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`), ADD KEY `IDX_CATALOG_PRODUCT_INDEX_TIER_PRICE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `catalog_product_index_website`
--
ALTER TABLE `catalog_product_index_website`
  ADD PRIMARY KEY (`website_id`), ADD KEY `IDX_CATALOG_PRODUCT_INDEX_WEBSITE_WEBSITE_DATE` (`website_date`);

--
-- Indexes for table `catalog_product_link`
--
ALTER TABLE `catalog_product_link`
  ADD PRIMARY KEY (`link_id`), ADD UNIQUE KEY `UNQ_CAT_PRD_LNK_LNK_TYPE_ID_PRD_ID_LNKED_PRD_ID` (`link_type_id`,`product_id`,`linked_product_id`), ADD KEY `IDX_CATALOG_PRODUCT_LINK_PRODUCT_ID` (`product_id`), ADD KEY `IDX_CATALOG_PRODUCT_LINK_LINKED_PRODUCT_ID` (`linked_product_id`), ADD KEY `IDX_CATALOG_PRODUCT_LINK_LINK_TYPE_ID` (`link_type_id`);

--
-- Indexes for table `catalog_product_link_attribute`
--
ALTER TABLE `catalog_product_link_attribute`
  ADD PRIMARY KEY (`product_link_attribute_id`), ADD KEY `IDX_CATALOG_PRODUCT_LINK_ATTRIBUTE_LINK_TYPE_ID` (`link_type_id`);

--
-- Indexes for table `catalog_product_link_attribute_decimal`
--
ALTER TABLE `catalog_product_link_attribute_decimal`
  ADD PRIMARY KEY (`value_id`), ADD UNIQUE KEY `UNQ_CAT_PRD_LNK_ATTR_DEC_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`), ADD KEY `IDX_CAT_PRD_LNK_ATTR_DEC_PRD_LNK_ATTR_ID` (`product_link_attribute_id`), ADD KEY `IDX_CATALOG_PRODUCT_LINK_ATTRIBUTE_DECIMAL_LINK_ID` (`link_id`);

--
-- Indexes for table `catalog_product_link_attribute_int`
--
ALTER TABLE `catalog_product_link_attribute_int`
  ADD PRIMARY KEY (`value_id`), ADD UNIQUE KEY `UNQ_CAT_PRD_LNK_ATTR_INT_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`), ADD KEY `IDX_CATALOG_PRODUCT_LINK_ATTRIBUTE_INT_PRODUCT_LINK_ATTRIBUTE_ID` (`product_link_attribute_id`), ADD KEY `IDX_CATALOG_PRODUCT_LINK_ATTRIBUTE_INT_LINK_ID` (`link_id`);

--
-- Indexes for table `catalog_product_link_attribute_varchar`
--
ALTER TABLE `catalog_product_link_attribute_varchar`
  ADD PRIMARY KEY (`value_id`), ADD UNIQUE KEY `UNQ_CAT_PRD_LNK_ATTR_VCHR_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`), ADD KEY `IDX_CAT_PRD_LNK_ATTR_VCHR_PRD_LNK_ATTR_ID` (`product_link_attribute_id`), ADD KEY `IDX_CATALOG_PRODUCT_LINK_ATTRIBUTE_VARCHAR_LINK_ID` (`link_id`);

--
-- Indexes for table `catalog_product_link_type`
--
ALTER TABLE `catalog_product_link_type`
  ADD PRIMARY KEY (`link_type_id`);

--
-- Indexes for table `catalog_product_option`
--
ALTER TABLE `catalog_product_option`
  ADD PRIMARY KEY (`option_id`), ADD KEY `IDX_CATALOG_PRODUCT_OPTION_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `catalog_product_option_price`
--
ALTER TABLE `catalog_product_option_price`
  ADD PRIMARY KEY (`option_price_id`), ADD UNIQUE KEY `UNQ_CATALOG_PRODUCT_OPTION_PRICE_OPTION_ID_STORE_ID` (`option_id`,`store_id`), ADD KEY `IDX_CATALOG_PRODUCT_OPTION_PRICE_OPTION_ID` (`option_id`), ADD KEY `IDX_CATALOG_PRODUCT_OPTION_PRICE_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_product_option_title`
--
ALTER TABLE `catalog_product_option_title`
  ADD PRIMARY KEY (`option_title_id`), ADD UNIQUE KEY `UNQ_CATALOG_PRODUCT_OPTION_TITLE_OPTION_ID_STORE_ID` (`option_id`,`store_id`), ADD KEY `IDX_CATALOG_PRODUCT_OPTION_TITLE_OPTION_ID` (`option_id`), ADD KEY `IDX_CATALOG_PRODUCT_OPTION_TITLE_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_product_option_type_price`
--
ALTER TABLE `catalog_product_option_type_price`
  ADD PRIMARY KEY (`option_type_price_id`), ADD UNIQUE KEY `UNQ_CATALOG_PRODUCT_OPTION_TYPE_PRICE_OPTION_TYPE_ID_STORE_ID` (`option_type_id`,`store_id`), ADD KEY `IDX_CATALOG_PRODUCT_OPTION_TYPE_PRICE_OPTION_TYPE_ID` (`option_type_id`), ADD KEY `IDX_CATALOG_PRODUCT_OPTION_TYPE_PRICE_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_product_option_type_title`
--
ALTER TABLE `catalog_product_option_type_title`
  ADD PRIMARY KEY (`option_type_title_id`), ADD UNIQUE KEY `UNQ_CATALOG_PRODUCT_OPTION_TYPE_TITLE_OPTION_TYPE_ID_STORE_ID` (`option_type_id`,`store_id`), ADD KEY `IDX_CATALOG_PRODUCT_OPTION_TYPE_TITLE_OPTION_TYPE_ID` (`option_type_id`), ADD KEY `IDX_CATALOG_PRODUCT_OPTION_TYPE_TITLE_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_product_option_type_value`
--
ALTER TABLE `catalog_product_option_type_value`
  ADD PRIMARY KEY (`option_type_id`), ADD KEY `IDX_CATALOG_PRODUCT_OPTION_TYPE_VALUE_OPTION_ID` (`option_id`);

--
-- Indexes for table `catalog_product_relation`
--
ALTER TABLE `catalog_product_relation`
  ADD PRIMARY KEY (`parent_id`,`child_id`), ADD KEY `IDX_CATALOG_PRODUCT_RELATION_CHILD_ID` (`child_id`);

--
-- Indexes for table `catalog_product_super_attribute`
--
ALTER TABLE `catalog_product_super_attribute`
  ADD PRIMARY KEY (`product_super_attribute_id`), ADD UNIQUE KEY `UNQ_CATALOG_PRODUCT_SUPER_ATTRIBUTE_PRODUCT_ID_ATTRIBUTE_ID` (`product_id`,`attribute_id`), ADD KEY `IDX_CATALOG_PRODUCT_SUPER_ATTRIBUTE_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `catalog_product_super_attribute_label`
--
ALTER TABLE `catalog_product_super_attribute_label`
  ADD PRIMARY KEY (`value_id`), ADD UNIQUE KEY `UNQ_CAT_PRD_SPR_ATTR_LBL_PRD_SPR_ATTR_ID_STORE_ID` (`product_super_attribute_id`,`store_id`), ADD KEY `IDX_CAT_PRD_SPR_ATTR_LBL_PRD_SPR_ATTR_ID` (`product_super_attribute_id`), ADD KEY `IDX_CATALOG_PRODUCT_SUPER_ATTRIBUTE_LABEL_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_product_super_attribute_pricing`
--
ALTER TABLE `catalog_product_super_attribute_pricing`
  ADD PRIMARY KEY (`value_id`), ADD UNIQUE KEY `UNQ_CAT_PRD_SPR_ATTR_PRICING_PRD_SPR_ATTR_ID_VAL_IDX_WS_ID` (`product_super_attribute_id`,`value_index`,`website_id`), ADD KEY `IDX_CAT_PRD_SPR_ATTR_PRICING_PRD_SPR_ATTR_ID` (`product_super_attribute_id`), ADD KEY `IDX_CATALOG_PRODUCT_SUPER_ATTRIBUTE_PRICING_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `catalog_product_super_link`
--
ALTER TABLE `catalog_product_super_link`
  ADD PRIMARY KEY (`link_id`), ADD UNIQUE KEY `UNQ_CATALOG_PRODUCT_SUPER_LINK_PRODUCT_ID_PARENT_ID` (`product_id`,`parent_id`), ADD KEY `IDX_CATALOG_PRODUCT_SUPER_LINK_PARENT_ID` (`parent_id`), ADD KEY `IDX_CATALOG_PRODUCT_SUPER_LINK_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `catalog_product_website`
--
ALTER TABLE `catalog_product_website`
  ADD PRIMARY KEY (`product_id`,`website_id`), ADD KEY `IDX_CATALOG_PRODUCT_WEBSITE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `checkout_agreement`
--
ALTER TABLE `checkout_agreement`
  ADD PRIMARY KEY (`agreement_id`);

--
-- Indexes for table `checkout_agreement_store`
--
ALTER TABLE `checkout_agreement_store`
  ADD PRIMARY KEY (`agreement_id`,`store_id`), ADD KEY `FK_CHECKOUT_AGREEMENT_STORE_STORE_ID_CORE_STORE_STORE_ID` (`store_id`);

--
-- Indexes for table `cms_block`
--
ALTER TABLE `cms_block`
  ADD PRIMARY KEY (`block_id`);

--
-- Indexes for table `cms_block_store`
--
ALTER TABLE `cms_block_store`
  ADD PRIMARY KEY (`block_id`,`store_id`), ADD KEY `IDX_CMS_BLOCK_STORE_STORE_ID` (`store_id`);

--
-- Indexes for table `cms_page`
--
ALTER TABLE `cms_page`
  ADD PRIMARY KEY (`page_id`), ADD KEY `IDX_CMS_PAGE_IDENTIFIER` (`identifier`);

--
-- Indexes for table `cms_page_store`
--
ALTER TABLE `cms_page_store`
  ADD PRIMARY KEY (`page_id`,`store_id`), ADD KEY `IDX_CMS_PAGE_STORE_STORE_ID` (`store_id`);

--
-- Indexes for table `core_cache`
--
ALTER TABLE `core_cache`
  ADD PRIMARY KEY (`id`), ADD KEY `IDX_CORE_CACHE_EXPIRE_TIME` (`expire_time`);

--
-- Indexes for table `core_cache_option`
--
ALTER TABLE `core_cache_option`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `core_cache_tag`
--
ALTER TABLE `core_cache_tag`
  ADD PRIMARY KEY (`tag`,`cache_id`), ADD KEY `IDX_CORE_CACHE_TAG_CACHE_ID` (`cache_id`);

--
-- Indexes for table `core_config_data`
--
ALTER TABLE `core_config_data`
  ADD PRIMARY KEY (`config_id`), ADD UNIQUE KEY `UNQ_CORE_CONFIG_DATA_SCOPE_SCOPE_ID_PATH` (`scope`,`scope_id`,`path`);

--
-- Indexes for table `core_email_template`
--
ALTER TABLE `core_email_template`
  ADD PRIMARY KEY (`template_id`), ADD UNIQUE KEY `UNQ_CORE_EMAIL_TEMPLATE_TEMPLATE_CODE` (`template_code`), ADD KEY `IDX_CORE_EMAIL_TEMPLATE_ADDED_AT` (`added_at`), ADD KEY `IDX_CORE_EMAIL_TEMPLATE_MODIFIED_AT` (`modified_at`);

--
-- Indexes for table `core_flag`
--
ALTER TABLE `core_flag`
  ADD PRIMARY KEY (`flag_id`), ADD KEY `IDX_CORE_FLAG_LAST_UPDATE` (`last_update`);

--
-- Indexes for table `core_layout_link`
--
ALTER TABLE `core_layout_link`
  ADD PRIMARY KEY (`layout_link_id`), ADD UNIQUE KEY `UNQ_CORE_LAYOUT_LINK_STORE_ID_PACKAGE_THEME_LAYOUT_UPDATE_ID` (`store_id`,`package`,`theme`,`layout_update_id`), ADD KEY `IDX_CORE_LAYOUT_LINK_LAYOUT_UPDATE_ID` (`layout_update_id`);

--
-- Indexes for table `core_layout_update`
--
ALTER TABLE `core_layout_update`
  ADD PRIMARY KEY (`layout_update_id`), ADD KEY `IDX_CORE_LAYOUT_UPDATE_HANDLE` (`handle`);

--
-- Indexes for table `core_resource`
--
ALTER TABLE `core_resource`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `core_session`
--
ALTER TABLE `core_session`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `core_store`
--
ALTER TABLE `core_store`
  ADD PRIMARY KEY (`store_id`), ADD UNIQUE KEY `UNQ_CORE_STORE_CODE` (`code`), ADD KEY `IDX_CORE_STORE_WEBSITE_ID` (`website_id`), ADD KEY `IDX_CORE_STORE_IS_ACTIVE_SORT_ORDER` (`is_active`,`sort_order`), ADD KEY `IDX_CORE_STORE_GROUP_ID` (`group_id`);

--
-- Indexes for table `core_store_group`
--
ALTER TABLE `core_store_group`
  ADD PRIMARY KEY (`group_id`), ADD KEY `IDX_CORE_STORE_GROUP_WEBSITE_ID` (`website_id`), ADD KEY `IDX_CORE_STORE_GROUP_DEFAULT_STORE_ID` (`default_store_id`);

--
-- Indexes for table `core_translate`
--
ALTER TABLE `core_translate`
  ADD PRIMARY KEY (`key_id`), ADD UNIQUE KEY `UNQ_CORE_TRANSLATE_STORE_ID_LOCALE_CRC_STRING_STRING` (`store_id`,`locale`,`crc_string`,`string`), ADD KEY `IDX_CORE_TRANSLATE_STORE_ID` (`store_id`);

--
-- Indexes for table `core_url_rewrite`
--
ALTER TABLE `core_url_rewrite`
  ADD PRIMARY KEY (`url_rewrite_id`), ADD UNIQUE KEY `UNQ_CORE_URL_REWRITE_REQUEST_PATH_STORE_ID` (`request_path`,`store_id`), ADD UNIQUE KEY `UNQ_CORE_URL_REWRITE_ID_PATH_IS_SYSTEM_STORE_ID` (`id_path`,`is_system`,`store_id`), ADD KEY `IDX_CORE_URL_REWRITE_TARGET_PATH_STORE_ID` (`target_path`,`store_id`), ADD KEY `IDX_CORE_URL_REWRITE_ID_PATH` (`id_path`), ADD KEY `IDX_CORE_URL_REWRITE_STORE_ID` (`store_id`), ADD KEY `FK_CORE_URL_REWRITE_CTGR_ID_CAT_CTGR_ENTT_ENTT_ID` (`category_id`), ADD KEY `FK_CORE_URL_REWRITE_PRODUCT_ID_CATALOG_CATEGORY_ENTITY_ENTITY_ID` (`product_id`);

--
-- Indexes for table `core_variable`
--
ALTER TABLE `core_variable`
  ADD PRIMARY KEY (`variable_id`), ADD UNIQUE KEY `UNQ_CORE_VARIABLE_CODE` (`code`);

--
-- Indexes for table `core_variable_value`
--
ALTER TABLE `core_variable_value`
  ADD PRIMARY KEY (`value_id`), ADD UNIQUE KEY `UNQ_CORE_VARIABLE_VALUE_VARIABLE_ID_STORE_ID` (`variable_id`,`store_id`), ADD KEY `IDX_CORE_VARIABLE_VALUE_VARIABLE_ID` (`variable_id`), ADD KEY `IDX_CORE_VARIABLE_VALUE_STORE_ID` (`store_id`);

--
-- Indexes for table `core_website`
--
ALTER TABLE `core_website`
  ADD PRIMARY KEY (`website_id`), ADD UNIQUE KEY `UNQ_CORE_WEBSITE_CODE` (`code`), ADD KEY `IDX_CORE_WEBSITE_SORT_ORDER` (`sort_order`), ADD KEY `IDX_CORE_WEBSITE_DEFAULT_GROUP_ID` (`default_group_id`);

--
-- Indexes for table `coupon_aggregated`
--
ALTER TABLE `coupon_aggregated`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `UNQ_COUPON_AGGREGATED_PERIOD_STORE_ID_ORDER_STATUS_COUPON_CODE` (`period`,`store_id`,`order_status`,`coupon_code`), ADD KEY `IDX_COUPON_AGGREGATED_STORE_ID` (`store_id`), ADD KEY `IDX_COUPON_AGGREGATED_RULE_NAME` (`rule_name`);

--
-- Indexes for table `coupon_aggregated_order`
--
ALTER TABLE `coupon_aggregated_order`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `UNQ_COUPON_AGGRED_ORDER_PERIOD_STORE_ID_ORDER_STS_COUPON_CODE` (`period`,`store_id`,`order_status`,`coupon_code`), ADD KEY `IDX_COUPON_AGGREGATED_ORDER_STORE_ID` (`store_id`), ADD KEY `IDX_COUPON_AGGREGATED_ORDER_RULE_NAME` (`rule_name`);

--
-- Indexes for table `coupon_aggregated_updated`
--
ALTER TABLE `coupon_aggregated_updated`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `UNQ_COUPON_AGGRED_UPDATED_PERIOD_STORE_ID_ORDER_STS_COUPON_CODE` (`period`,`store_id`,`order_status`,`coupon_code`), ADD KEY `IDX_COUPON_AGGREGATED_UPDATED_STORE_ID` (`store_id`), ADD KEY `IDX_COUPON_AGGREGATED_UPDATED_RULE_NAME` (`rule_name`);

--
-- Indexes for table `cron_schedule`
--
ALTER TABLE `cron_schedule`
  ADD PRIMARY KEY (`schedule_id`), ADD KEY `IDX_CRON_SCHEDULE_JOB_CODE` (`job_code`), ADD KEY `IDX_CRON_SCHEDULE_SCHEDULED_AT_STATUS` (`scheduled_at`,`status`);

--
-- Indexes for table `customer_address_entity`
--
ALTER TABLE `customer_address_entity`
  ADD PRIMARY KEY (`entity_id`), ADD KEY `IDX_CUSTOMER_ADDRESS_ENTITY_PARENT_ID` (`parent_id`);

--
-- Indexes for table `customer_address_entity_datetime`
--
ALTER TABLE `customer_address_entity_datetime`
  ADD PRIMARY KEY (`value_id`), ADD UNIQUE KEY `UNQ_CUSTOMER_ADDRESS_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`), ADD KEY `IDX_CUSTOMER_ADDRESS_ENTITY_DATETIME_ENTITY_TYPE_ID` (`entity_type_id`), ADD KEY `IDX_CUSTOMER_ADDRESS_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`), ADD KEY `IDX_CUSTOMER_ADDRESS_ENTITY_DATETIME_ENTITY_ID` (`entity_id`), ADD KEY `IDX_CSTR_ADDR_ENTT_DTIME_ENTT_ID_ATTR_ID_VAL` (`entity_id`,`attribute_id`,`value`);

--
-- Indexes for table `customer_address_entity_decimal`
--
ALTER TABLE `customer_address_entity_decimal`
  ADD PRIMARY KEY (`value_id`), ADD UNIQUE KEY `UNQ_CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`), ADD KEY `IDX_CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_TYPE_ID` (`entity_type_id`), ADD KEY `IDX_CUSTOMER_ADDRESS_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`), ADD KEY `IDX_CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`), ADD KEY `IDX_CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`);

--
-- Indexes for table `customer_address_entity_int`
--
ALTER TABLE `customer_address_entity_int`
  ADD PRIMARY KEY (`value_id`), ADD UNIQUE KEY `UNQ_CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`), ADD KEY `IDX_CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_TYPE_ID` (`entity_type_id`), ADD KEY `IDX_CUSTOMER_ADDRESS_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`), ADD KEY `IDX_CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_ID` (`entity_id`), ADD KEY `IDX_CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`);

--
-- Indexes for table `customer_address_entity_text`
--
ALTER TABLE `customer_address_entity_text`
  ADD PRIMARY KEY (`value_id`), ADD UNIQUE KEY `UNQ_CUSTOMER_ADDRESS_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`), ADD KEY `IDX_CUSTOMER_ADDRESS_ENTITY_TEXT_ENTITY_TYPE_ID` (`entity_type_id`), ADD KEY `IDX_CUSTOMER_ADDRESS_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`), ADD KEY `IDX_CUSTOMER_ADDRESS_ENTITY_TEXT_ENTITY_ID` (`entity_id`);

--
-- Indexes for table `customer_address_entity_varchar`
--
ALTER TABLE `customer_address_entity_varchar`
  ADD PRIMARY KEY (`value_id`), ADD UNIQUE KEY `UNQ_CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`), ADD KEY `IDX_CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_TYPE_ID` (`entity_type_id`), ADD KEY `IDX_CUSTOMER_ADDRESS_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`), ADD KEY `IDX_CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`), ADD KEY `IDX_CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`);

--
-- Indexes for table `customer_eav_attribute`
--
ALTER TABLE `customer_eav_attribute`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Indexes for table `customer_eav_attribute_website`
--
ALTER TABLE `customer_eav_attribute_website`
  ADD PRIMARY KEY (`attribute_id`,`website_id`), ADD KEY `IDX_CUSTOMER_EAV_ATTRIBUTE_WEBSITE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `customer_entity`
--
ALTER TABLE `customer_entity`
  ADD PRIMARY KEY (`entity_id`), ADD UNIQUE KEY `UNQ_CUSTOMER_ENTITY_EMAIL_WEBSITE_ID` (`email`,`website_id`), ADD KEY `IDX_CUSTOMER_ENTITY_STORE_ID` (`store_id`), ADD KEY `IDX_CUSTOMER_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`), ADD KEY `IDX_CUSTOMER_ENTITY_EMAIL_WEBSITE_ID` (`email`,`website_id`), ADD KEY `IDX_CUSTOMER_ENTITY_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `customer_entity_datetime`
--
ALTER TABLE `customer_entity_datetime`
  ADD PRIMARY KEY (`value_id`), ADD UNIQUE KEY `UNQ_CUSTOMER_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`), ADD KEY `IDX_CUSTOMER_ENTITY_DATETIME_ENTITY_TYPE_ID` (`entity_type_id`), ADD KEY `IDX_CUSTOMER_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`), ADD KEY `IDX_CUSTOMER_ENTITY_DATETIME_ENTITY_ID` (`entity_id`), ADD KEY `IDX_CUSTOMER_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`);

--
-- Indexes for table `customer_entity_decimal`
--
ALTER TABLE `customer_entity_decimal`
  ADD PRIMARY KEY (`value_id`), ADD UNIQUE KEY `UNQ_CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`), ADD KEY `IDX_CUSTOMER_ENTITY_DECIMAL_ENTITY_TYPE_ID` (`entity_type_id`), ADD KEY `IDX_CUSTOMER_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`), ADD KEY `IDX_CUSTOMER_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`), ADD KEY `IDX_CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`);

--
-- Indexes for table `customer_entity_int`
--
ALTER TABLE `customer_entity_int`
  ADD PRIMARY KEY (`value_id`), ADD UNIQUE KEY `UNQ_CUSTOMER_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`), ADD KEY `IDX_CUSTOMER_ENTITY_INT_ENTITY_TYPE_ID` (`entity_type_id`), ADD KEY `IDX_CUSTOMER_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`), ADD KEY `IDX_CUSTOMER_ENTITY_INT_ENTITY_ID` (`entity_id`), ADD KEY `IDX_CUSTOMER_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`);

--
-- Indexes for table `customer_entity_text`
--
ALTER TABLE `customer_entity_text`
  ADD PRIMARY KEY (`value_id`), ADD UNIQUE KEY `UNQ_CUSTOMER_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`), ADD KEY `IDX_CUSTOMER_ENTITY_TEXT_ENTITY_TYPE_ID` (`entity_type_id`), ADD KEY `IDX_CUSTOMER_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`), ADD KEY `IDX_CUSTOMER_ENTITY_TEXT_ENTITY_ID` (`entity_id`);

--
-- Indexes for table `customer_entity_varchar`
--
ALTER TABLE `customer_entity_varchar`
  ADD PRIMARY KEY (`value_id`), ADD UNIQUE KEY `UNQ_CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`), ADD KEY `IDX_CUSTOMER_ENTITY_VARCHAR_ENTITY_TYPE_ID` (`entity_type_id`), ADD KEY `IDX_CUSTOMER_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`), ADD KEY `IDX_CUSTOMER_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`), ADD KEY `IDX_CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`);

--
-- Indexes for table `customer_form_attribute`
--
ALTER TABLE `customer_form_attribute`
  ADD PRIMARY KEY (`form_code`,`attribute_id`), ADD KEY `IDX_CUSTOMER_FORM_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`);

--
-- Indexes for table `customer_group`
--
ALTER TABLE `customer_group`
  ADD PRIMARY KEY (`customer_group_id`);

--
-- Indexes for table `dataflow_batch`
--
ALTER TABLE `dataflow_batch`
  ADD PRIMARY KEY (`batch_id`), ADD KEY `IDX_DATAFLOW_BATCH_PROFILE_ID` (`profile_id`), ADD KEY `IDX_DATAFLOW_BATCH_STORE_ID` (`store_id`), ADD KEY `IDX_DATAFLOW_BATCH_CREATED_AT` (`created_at`);

--
-- Indexes for table `dataflow_batch_export`
--
ALTER TABLE `dataflow_batch_export`
  ADD PRIMARY KEY (`batch_export_id`), ADD KEY `IDX_DATAFLOW_BATCH_EXPORT_BATCH_ID` (`batch_id`);

--
-- Indexes for table `dataflow_batch_import`
--
ALTER TABLE `dataflow_batch_import`
  ADD PRIMARY KEY (`batch_import_id`), ADD KEY `IDX_DATAFLOW_BATCH_IMPORT_BATCH_ID` (`batch_id`);

--
-- Indexes for table `dataflow_import_data`
--
ALTER TABLE `dataflow_import_data`
  ADD PRIMARY KEY (`import_id`), ADD KEY `IDX_DATAFLOW_IMPORT_DATA_SESSION_ID` (`session_id`);

--
-- Indexes for table `dataflow_profile`
--
ALTER TABLE `dataflow_profile`
  ADD PRIMARY KEY (`profile_id`);

--
-- Indexes for table `dataflow_profile_history`
--
ALTER TABLE `dataflow_profile_history`
  ADD PRIMARY KEY (`history_id`), ADD KEY `IDX_DATAFLOW_PROFILE_HISTORY_PROFILE_ID` (`profile_id`);

--
-- Indexes for table `dataflow_session`
--
ALTER TABLE `dataflow_session`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `design_change`
--
ALTER TABLE `design_change`
  ADD PRIMARY KEY (`design_change_id`), ADD KEY `IDX_DESIGN_CHANGE_STORE_ID` (`store_id`);

--
-- Indexes for table `directory_country`
--
ALTER TABLE `directory_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `directory_country_format`
--
ALTER TABLE `directory_country_format`
  ADD PRIMARY KEY (`country_format_id`), ADD UNIQUE KEY `UNQ_DIRECTORY_COUNTRY_FORMAT_COUNTRY_ID_TYPE` (`country_id`,`type`);

--
-- Indexes for table `directory_country_region`
--
ALTER TABLE `directory_country_region`
  ADD PRIMARY KEY (`region_id`), ADD KEY `IDX_DIRECTORY_COUNTRY_REGION_COUNTRY_ID` (`country_id`);

--
-- Indexes for table `directory_country_region_name`
--
ALTER TABLE `directory_country_region_name`
  ADD PRIMARY KEY (`locale`,`region_id`), ADD KEY `IDX_DIRECTORY_COUNTRY_REGION_NAME_REGION_ID` (`region_id`);

--
-- Indexes for table `directory_currency_rate`
--
ALTER TABLE `directory_currency_rate`
  ADD PRIMARY KEY (`currency_from`,`currency_to`), ADD KEY `IDX_DIRECTORY_CURRENCY_RATE_CURRENCY_TO` (`currency_to`);

--
-- Indexes for table `downloadable_link`
--
ALTER TABLE `downloadable_link`
  ADD PRIMARY KEY (`link_id`), ADD KEY `IDX_DOWNLOADABLE_LINK_PRODUCT_ID` (`product_id`), ADD KEY `IDX_DOWNLOADABLE_LINK_PRODUCT_ID_SORT_ORDER` (`product_id`,`sort_order`);

--
-- Indexes for table `downloadable_link_price`
--
ALTER TABLE `downloadable_link_price`
  ADD PRIMARY KEY (`price_id`), ADD KEY `IDX_DOWNLOADABLE_LINK_PRICE_LINK_ID` (`link_id`), ADD KEY `IDX_DOWNLOADABLE_LINK_PRICE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `downloadable_link_purchased`
--
ALTER TABLE `downloadable_link_purchased`
  ADD PRIMARY KEY (`purchased_id`), ADD KEY `IDX_DOWNLOADABLE_LINK_PURCHASED_ORDER_ID` (`order_id`), ADD KEY `IDX_DOWNLOADABLE_LINK_PURCHASED_ORDER_ITEM_ID` (`order_item_id`), ADD KEY `IDX_DOWNLOADABLE_LINK_PURCHASED_CUSTOMER_ID` (`customer_id`);

--
-- Indexes for table `downloadable_link_purchased_item`
--
ALTER TABLE `downloadable_link_purchased_item`
  ADD PRIMARY KEY (`item_id`), ADD KEY `IDX_DOWNLOADABLE_LINK_PURCHASED_ITEM_LINK_HASH` (`link_hash`), ADD KEY `IDX_DOWNLOADABLE_LINK_PURCHASED_ITEM_ORDER_ITEM_ID` (`order_item_id`), ADD KEY `IDX_DOWNLOADABLE_LINK_PURCHASED_ITEM_PURCHASED_ID` (`purchased_id`);

--
-- Indexes for table `downloadable_link_title`
--
ALTER TABLE `downloadable_link_title`
  ADD PRIMARY KEY (`title_id`), ADD UNIQUE KEY `UNQ_DOWNLOADABLE_LINK_TITLE_LINK_ID_STORE_ID` (`link_id`,`store_id`), ADD KEY `IDX_DOWNLOADABLE_LINK_TITLE_LINK_ID` (`link_id`), ADD KEY `IDX_DOWNLOADABLE_LINK_TITLE_STORE_ID` (`store_id`);

--
-- Indexes for table `downloadable_sample`
--
ALTER TABLE `downloadable_sample`
  ADD PRIMARY KEY (`sample_id`), ADD KEY `IDX_DOWNLOADABLE_SAMPLE_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `downloadable_sample_title`
--
ALTER TABLE `downloadable_sample_title`
  ADD PRIMARY KEY (`title_id`), ADD UNIQUE KEY `UNQ_DOWNLOADABLE_SAMPLE_TITLE_SAMPLE_ID_STORE_ID` (`sample_id`,`store_id`), ADD KEY `IDX_DOWNLOADABLE_SAMPLE_TITLE_SAMPLE_ID` (`sample_id`), ADD KEY `IDX_DOWNLOADABLE_SAMPLE_TITLE_STORE_ID` (`store_id`);

--
-- Indexes for table `eav_attribute`
--
ALTER TABLE `eav_attribute`
  ADD PRIMARY KEY (`attribute_id`), ADD UNIQUE KEY `UNQ_EAV_ATTRIBUTE_ENTITY_TYPE_ID_ATTRIBUTE_CODE` (`entity_type_id`,`attribute_code`), ADD KEY `IDX_EAV_ATTRIBUTE_ENTITY_TYPE_ID` (`entity_type_id`);

--
-- Indexes for table `eav_attribute_group`
--
ALTER TABLE `eav_attribute_group`
  ADD PRIMARY KEY (`attribute_group_id`), ADD UNIQUE KEY `UNQ_EAV_ATTRIBUTE_GROUP_ATTRIBUTE_SET_ID_ATTRIBUTE_GROUP_NAME` (`attribute_set_id`,`attribute_group_name`), ADD KEY `IDX_EAV_ATTRIBUTE_GROUP_ATTRIBUTE_SET_ID_SORT_ORDER` (`attribute_set_id`,`sort_order`);

--
-- Indexes for table `eav_attribute_label`
--
ALTER TABLE `eav_attribute_label`
  ADD PRIMARY KEY (`attribute_label_id`), ADD KEY `IDX_EAV_ATTRIBUTE_LABEL_ATTRIBUTE_ID` (`attribute_id`), ADD KEY `IDX_EAV_ATTRIBUTE_LABEL_STORE_ID` (`store_id`), ADD KEY `IDX_EAV_ATTRIBUTE_LABEL_ATTRIBUTE_ID_STORE_ID` (`attribute_id`,`store_id`);

--
-- Indexes for table `eav_attribute_option`
--
ALTER TABLE `eav_attribute_option`
  ADD PRIMARY KEY (`option_id`), ADD KEY `IDX_EAV_ATTRIBUTE_OPTION_ATTRIBUTE_ID` (`attribute_id`);

--
-- Indexes for table `eav_attribute_option_value`
--
ALTER TABLE `eav_attribute_option_value`
  ADD PRIMARY KEY (`value_id`), ADD KEY `IDX_EAV_ATTRIBUTE_OPTION_VALUE_OPTION_ID` (`option_id`), ADD KEY `IDX_EAV_ATTRIBUTE_OPTION_VALUE_STORE_ID` (`store_id`);

--
-- Indexes for table `eav_attribute_set`
--
ALTER TABLE `eav_attribute_set`
  ADD PRIMARY KEY (`attribute_set_id`), ADD UNIQUE KEY `UNQ_EAV_ATTRIBUTE_SET_ENTITY_TYPE_ID_ATTRIBUTE_SET_NAME` (`entity_type_id`,`attribute_set_name`), ADD KEY `IDX_EAV_ATTRIBUTE_SET_ENTITY_TYPE_ID_SORT_ORDER` (`entity_type_id`,`sort_order`);

--
-- Indexes for table `eav_entity`
--
ALTER TABLE `eav_entity`
  ADD PRIMARY KEY (`entity_id`), ADD KEY `IDX_EAV_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`), ADD KEY `IDX_EAV_ENTITY_STORE_ID` (`store_id`);

--
-- Indexes for table `eav_entity_attribute`
--
ALTER TABLE `eav_entity_attribute`
  ADD PRIMARY KEY (`entity_attribute_id`), ADD UNIQUE KEY `UNQ_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_SET_ID_ATTRIBUTE_ID` (`attribute_set_id`,`attribute_id`), ADD UNIQUE KEY `UNQ_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_GROUP_ID_ATTRIBUTE_ID` (`attribute_group_id`,`attribute_id`), ADD KEY `IDX_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_SET_ID_SORT_ORDER` (`attribute_set_id`,`sort_order`), ADD KEY `IDX_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`);

--
-- Indexes for table `eav_entity_datetime`
--
ALTER TABLE `eav_entity_datetime`
  ADD PRIMARY KEY (`value_id`), ADD UNIQUE KEY `UNQ_EAV_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`), ADD KEY `IDX_EAV_ENTITY_DATETIME_ENTITY_TYPE_ID` (`entity_type_id`), ADD KEY `IDX_EAV_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`), ADD KEY `IDX_EAV_ENTITY_DATETIME_STORE_ID` (`store_id`), ADD KEY `IDX_EAV_ENTITY_DATETIME_ENTITY_ID` (`entity_id`), ADD KEY `IDX_EAV_ENTITY_DATETIME_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`), ADD KEY `IDX_EAV_ENTITY_DATETIME_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`);

--
-- Indexes for table `eav_entity_decimal`
--
ALTER TABLE `eav_entity_decimal`
  ADD PRIMARY KEY (`value_id`), ADD UNIQUE KEY `UNQ_EAV_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`), ADD KEY `IDX_EAV_ENTITY_DECIMAL_ENTITY_TYPE_ID` (`entity_type_id`), ADD KEY `IDX_EAV_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`), ADD KEY `IDX_EAV_ENTITY_DECIMAL_STORE_ID` (`store_id`), ADD KEY `IDX_EAV_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`), ADD KEY `IDX_EAV_ENTITY_DECIMAL_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`), ADD KEY `IDX_EAV_ENTITY_DECIMAL_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`);

--
-- Indexes for table `eav_entity_int`
--
ALTER TABLE `eav_entity_int`
  ADD PRIMARY KEY (`value_id`), ADD UNIQUE KEY `UNQ_EAV_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`), ADD KEY `IDX_EAV_ENTITY_INT_ENTITY_TYPE_ID` (`entity_type_id`), ADD KEY `IDX_EAV_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`), ADD KEY `IDX_EAV_ENTITY_INT_STORE_ID` (`store_id`), ADD KEY `IDX_EAV_ENTITY_INT_ENTITY_ID` (`entity_id`), ADD KEY `IDX_EAV_ENTITY_INT_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`), ADD KEY `IDX_EAV_ENTITY_INT_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`);

--
-- Indexes for table `eav_entity_store`
--
ALTER TABLE `eav_entity_store`
  ADD PRIMARY KEY (`entity_store_id`), ADD KEY `IDX_EAV_ENTITY_STORE_ENTITY_TYPE_ID` (`entity_type_id`), ADD KEY `IDX_EAV_ENTITY_STORE_STORE_ID` (`store_id`);

--
-- Indexes for table `eav_entity_text`
--
ALTER TABLE `eav_entity_text`
  ADD PRIMARY KEY (`value_id`), ADD UNIQUE KEY `UNQ_EAV_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`), ADD KEY `IDX_EAV_ENTITY_TEXT_ENTITY_TYPE_ID` (`entity_type_id`), ADD KEY `IDX_EAV_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`), ADD KEY `IDX_EAV_ENTITY_TEXT_STORE_ID` (`store_id`), ADD KEY `IDX_EAV_ENTITY_TEXT_ENTITY_ID` (`entity_id`);

--
-- Indexes for table `eav_entity_type`
--
ALTER TABLE `eav_entity_type`
  ADD PRIMARY KEY (`entity_type_id`), ADD KEY `IDX_EAV_ENTITY_TYPE_ENTITY_TYPE_CODE` (`entity_type_code`);

--
-- Indexes for table `eav_entity_varchar`
--
ALTER TABLE `eav_entity_varchar`
  ADD PRIMARY KEY (`value_id`), ADD UNIQUE KEY `UNQ_EAV_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`), ADD KEY `IDX_EAV_ENTITY_VARCHAR_ENTITY_TYPE_ID` (`entity_type_id`), ADD KEY `IDX_EAV_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`), ADD KEY `IDX_EAV_ENTITY_VARCHAR_STORE_ID` (`store_id`), ADD KEY `IDX_EAV_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`), ADD KEY `IDX_EAV_ENTITY_VARCHAR_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`), ADD KEY `IDX_EAV_ENTITY_VARCHAR_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`);

--
-- Indexes for table `eav_form_element`
--
ALTER TABLE `eav_form_element`
  ADD PRIMARY KEY (`element_id`), ADD UNIQUE KEY `UNQ_EAV_FORM_ELEMENT_TYPE_ID_ATTRIBUTE_ID` (`type_id`,`attribute_id`), ADD KEY `IDX_EAV_FORM_ELEMENT_TYPE_ID` (`type_id`), ADD KEY `IDX_EAV_FORM_ELEMENT_FIELDSET_ID` (`fieldset_id`), ADD KEY `IDX_EAV_FORM_ELEMENT_ATTRIBUTE_ID` (`attribute_id`);

--
-- Indexes for table `eav_form_fieldset`
--
ALTER TABLE `eav_form_fieldset`
  ADD PRIMARY KEY (`fieldset_id`), ADD UNIQUE KEY `UNQ_EAV_FORM_FIELDSET_TYPE_ID_CODE` (`type_id`,`code`), ADD KEY `IDX_EAV_FORM_FIELDSET_TYPE_ID` (`type_id`);

--
-- Indexes for table `eav_form_fieldset_label`
--
ALTER TABLE `eav_form_fieldset_label`
  ADD PRIMARY KEY (`fieldset_id`,`store_id`), ADD KEY `IDX_EAV_FORM_FIELDSET_LABEL_FIELDSET_ID` (`fieldset_id`), ADD KEY `IDX_EAV_FORM_FIELDSET_LABEL_STORE_ID` (`store_id`);

--
-- Indexes for table `eav_form_type`
--
ALTER TABLE `eav_form_type`
  ADD PRIMARY KEY (`type_id`), ADD UNIQUE KEY `UNQ_EAV_FORM_TYPE_CODE_THEME_STORE_ID` (`code`,`theme`,`store_id`), ADD KEY `IDX_EAV_FORM_TYPE_STORE_ID` (`store_id`);

--
-- Indexes for table `eav_form_type_entity`
--
ALTER TABLE `eav_form_type_entity`
  ADD PRIMARY KEY (`type_id`,`entity_type_id`), ADD KEY `IDX_EAV_FORM_TYPE_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`);

--
-- Indexes for table `finware_index`
--
ALTER TABLE `finware_index`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gift_message`
--
ALTER TABLE `gift_message`
  ADD PRIMARY KEY (`gift_message_id`);

--
-- Indexes for table `importexport_importdata`
--
ALTER TABLE `importexport_importdata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `index_event`
--
ALTER TABLE `index_event`
  ADD PRIMARY KEY (`event_id`), ADD UNIQUE KEY `UNQ_INDEX_EVENT_TYPE_ENTITY_ENTITY_PK` (`type`,`entity`,`entity_pk`);

--
-- Indexes for table `index_process`
--
ALTER TABLE `index_process`
  ADD PRIMARY KEY (`process_id`), ADD UNIQUE KEY `UNQ_INDEX_PROCESS_INDEXER_CODE` (`indexer_code`);

--
-- Indexes for table `index_process_event`
--
ALTER TABLE `index_process_event`
  ADD PRIMARY KEY (`process_id`,`event_id`), ADD KEY `IDX_INDEX_PROCESS_EVENT_EVENT_ID` (`event_id`);

--
-- Indexes for table `log_customer`
--
ALTER TABLE `log_customer`
  ADD PRIMARY KEY (`log_id`), ADD KEY `IDX_LOG_CUSTOMER_VISITOR_ID` (`visitor_id`);

--
-- Indexes for table `log_quote`
--
ALTER TABLE `log_quote`
  ADD PRIMARY KEY (`quote_id`);

--
-- Indexes for table `log_summary`
--
ALTER TABLE `log_summary`
  ADD PRIMARY KEY (`summary_id`);

--
-- Indexes for table `log_summary_type`
--
ALTER TABLE `log_summary_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `log_url`
--
ALTER TABLE `log_url`
  ADD PRIMARY KEY (`url_id`), ADD KEY `IDX_LOG_URL_VISITOR_ID` (`visitor_id`);

--
-- Indexes for table `log_url_info`
--
ALTER TABLE `log_url_info`
  ADD PRIMARY KEY (`url_id`);

--
-- Indexes for table `log_visitor`
--
ALTER TABLE `log_visitor`
  ADD PRIMARY KEY (`visitor_id`);

--
-- Indexes for table `log_visitor_info`
--
ALTER TABLE `log_visitor_info`
  ADD PRIMARY KEY (`visitor_id`);

--
-- Indexes for table `log_visitor_online`
--
ALTER TABLE `log_visitor_online`
  ADD PRIMARY KEY (`visitor_id`), ADD KEY `IDX_LOG_VISITOR_ONLINE_VISITOR_TYPE` (`visitor_type`), ADD KEY `IDX_LOG_VISITOR_ONLINE_FIRST_VISIT_AT_LAST_VISIT_AT` (`first_visit_at`,`last_visit_at`), ADD KEY `IDX_LOG_VISITOR_ONLINE_CUSTOMER_ID` (`customer_id`);

--
-- Indexes for table `newsletter_problem`
--
ALTER TABLE `newsletter_problem`
  ADD PRIMARY KEY (`problem_id`), ADD KEY `IDX_NEWSLETTER_PROBLEM_SUBSCRIBER_ID` (`subscriber_id`), ADD KEY `IDX_NEWSLETTER_PROBLEM_QUEUE_ID` (`queue_id`);

--
-- Indexes for table `newsletter_queue`
--
ALTER TABLE `newsletter_queue`
  ADD PRIMARY KEY (`queue_id`), ADD KEY `IDX_NEWSLETTER_QUEUE_TEMPLATE_ID` (`template_id`);

--
-- Indexes for table `newsletter_queue_link`
--
ALTER TABLE `newsletter_queue_link`
  ADD PRIMARY KEY (`queue_link_id`), ADD KEY `IDX_NEWSLETTER_QUEUE_LINK_SUBSCRIBER_ID` (`subscriber_id`), ADD KEY `IDX_NEWSLETTER_QUEUE_LINK_QUEUE_ID` (`queue_id`), ADD KEY `IDX_NEWSLETTER_QUEUE_LINK_QUEUE_ID_LETTER_SENT_AT` (`queue_id`,`letter_sent_at`);

--
-- Indexes for table `newsletter_queue_store_link`
--
ALTER TABLE `newsletter_queue_store_link`
  ADD PRIMARY KEY (`queue_id`,`store_id`), ADD KEY `IDX_NEWSLETTER_QUEUE_STORE_LINK_STORE_ID` (`store_id`);

--
-- Indexes for table `newsletter_subscriber`
--
ALTER TABLE `newsletter_subscriber`
  ADD PRIMARY KEY (`subscriber_id`), ADD KEY `IDX_NEWSLETTER_SUBSCRIBER_CUSTOMER_ID` (`customer_id`), ADD KEY `IDX_NEWSLETTER_SUBSCRIBER_STORE_ID` (`store_id`);

--
-- Indexes for table `newsletter_template`
--
ALTER TABLE `newsletter_template`
  ADD PRIMARY KEY (`template_id`), ADD KEY `IDX_NEWSLETTER_TEMPLATE_TEMPLATE_ACTUAL` (`template_actual`), ADD KEY `IDX_NEWSLETTER_TEMPLATE_ADDED_AT` (`added_at`), ADD KEY `IDX_NEWSLETTER_TEMPLATE_MODIFIED_AT` (`modified_at`);

--
-- Indexes for table `oauth_consumer`
--
ALTER TABLE `oauth_consumer`
  ADD PRIMARY KEY (`entity_id`), ADD UNIQUE KEY `UNQ_OAUTH_CONSUMER_KEY` (`key`), ADD UNIQUE KEY `UNQ_OAUTH_CONSUMER_SECRET` (`secret`), ADD KEY `IDX_OAUTH_CONSUMER_CREATED_AT` (`created_at`), ADD KEY `IDX_OAUTH_CONSUMER_UPDATED_AT` (`updated_at`);

--
-- Indexes for table `oauth_nonce`
--
ALTER TABLE `oauth_nonce`
  ADD UNIQUE KEY `UNQ_OAUTH_NONCE_NONCE` (`nonce`);

--
-- Indexes for table `oauth_token`
--
ALTER TABLE `oauth_token`
  ADD PRIMARY KEY (`entity_id`), ADD UNIQUE KEY `UNQ_OAUTH_TOKEN_TOKEN` (`token`), ADD KEY `IDX_OAUTH_TOKEN_CONSUMER_ID` (`consumer_id`), ADD KEY `FK_OAUTH_TOKEN_ADMIN_ID_ADMIN_USER_USER_ID` (`admin_id`), ADD KEY `FK_OAUTH_TOKEN_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` (`customer_id`);

--
-- Indexes for table `oc_product_categories`
--
ALTER TABLE `oc_product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oc_product_color`
--
ALTER TABLE `oc_product_color`
  ADD PRIMARY KEY (`color_id`);

--
-- Indexes for table `oc_product_customize`
--
ALTER TABLE `oc_product_customize`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oc_product_hotspot`
--
ALTER TABLE `oc_product_hotspot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oc_product_interactivity`
--
ALTER TABLE `oc_product_interactivity`
  ADD PRIMARY KEY (`interactivity_id`);

--
-- Indexes for table `oc_product_pattern`
--
ALTER TABLE `oc_product_pattern`
  ADD PRIMARY KEY (`pattern_id`);

--
-- Indexes for table `oc_product_pattern1`
--
ALTER TABLE `oc_product_pattern1`
  ADD PRIMARY KEY (`pattern_id`);

--
-- Indexes for table `oc_product_troubleshoot_type`
--
ALTER TABLE `oc_product_troubleshoot_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paypal_cert`
--
ALTER TABLE `paypal_cert`
  ADD PRIMARY KEY (`cert_id`), ADD KEY `IDX_PAYPAL_CERT_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `paypal_payment_transaction`
--
ALTER TABLE `paypal_payment_transaction`
  ADD PRIMARY KEY (`transaction_id`), ADD UNIQUE KEY `UNQ_PAYPAL_PAYMENT_TRANSACTION_TXN_ID` (`txn_id`);

--
-- Indexes for table `paypal_settlement_report`
--
ALTER TABLE `paypal_settlement_report`
  ADD PRIMARY KEY (`report_id`), ADD UNIQUE KEY `UNQ_PAYPAL_SETTLEMENT_REPORT_REPORT_DATE_ACCOUNT_ID` (`report_date`,`account_id`);

--
-- Indexes for table `paypal_settlement_report_row`
--
ALTER TABLE `paypal_settlement_report_row`
  ADD PRIMARY KEY (`row_id`), ADD KEY `IDX_PAYPAL_SETTLEMENT_REPORT_ROW_REPORT_ID` (`report_id`);

--
-- Indexes for table `persistent_session`
--
ALTER TABLE `persistent_session`
  ADD PRIMARY KEY (`persistent_id`), ADD UNIQUE KEY `IDX_PERSISTENT_SESSION_KEY` (`key`), ADD UNIQUE KEY `IDX_PERSISTENT_SESSION_CUSTOMER_ID` (`customer_id`), ADD KEY `IDX_PERSISTENT_SESSION_UPDATED_AT` (`updated_at`), ADD KEY `FK_PERSISTENT_SESSION_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `poll`
--
ALTER TABLE `poll`
  ADD PRIMARY KEY (`poll_id`), ADD KEY `IDX_POLL_STORE_ID` (`store_id`);

--
-- Indexes for table `poll_answer`
--
ALTER TABLE `poll_answer`
  ADD PRIMARY KEY (`answer_id`), ADD KEY `IDX_POLL_ANSWER_POLL_ID` (`poll_id`);

--
-- Indexes for table `poll_store`
--
ALTER TABLE `poll_store`
  ADD PRIMARY KEY (`poll_id`,`store_id`), ADD KEY `IDX_POLL_STORE_STORE_ID` (`store_id`);

--
-- Indexes for table `poll_vote`
--
ALTER TABLE `poll_vote`
  ADD PRIMARY KEY (`vote_id`), ADD KEY `IDX_POLL_VOTE_POLL_ANSWER_ID` (`poll_answer_id`);

--
-- Indexes for table `product_alert_price`
--
ALTER TABLE `product_alert_price`
  ADD PRIMARY KEY (`alert_price_id`), ADD KEY `IDX_PRODUCT_ALERT_PRICE_CUSTOMER_ID` (`customer_id`), ADD KEY `IDX_PRODUCT_ALERT_PRICE_PRODUCT_ID` (`product_id`), ADD KEY `IDX_PRODUCT_ALERT_PRICE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `product_alert_stock`
--
ALTER TABLE `product_alert_stock`
  ADD PRIMARY KEY (`alert_stock_id`), ADD KEY `IDX_PRODUCT_ALERT_STOCK_CUSTOMER_ID` (`customer_id`), ADD KEY `IDX_PRODUCT_ALERT_STOCK_PRODUCT_ID` (`product_id`), ADD KEY `IDX_PRODUCT_ALERT_STOCK_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`rating_id`), ADD UNIQUE KEY `UNQ_RATING_RATING_CODE` (`rating_code`), ADD KEY `IDX_RATING_ENTITY_ID` (`entity_id`);

--
-- Indexes for table `rating_entity`
--
ALTER TABLE `rating_entity`
  ADD PRIMARY KEY (`entity_id`), ADD UNIQUE KEY `UNQ_RATING_ENTITY_ENTITY_CODE` (`entity_code`);

--
-- Indexes for table `rating_option`
--
ALTER TABLE `rating_option`
  ADD PRIMARY KEY (`option_id`), ADD KEY `IDX_RATING_OPTION_RATING_ID` (`rating_id`);

--
-- Indexes for table `rating_option_vote`
--
ALTER TABLE `rating_option_vote`
  ADD PRIMARY KEY (`vote_id`), ADD KEY `IDX_RATING_OPTION_VOTE_OPTION_ID` (`option_id`), ADD KEY `FK_RATING_OPTION_VOTE_REVIEW_ID_REVIEW_REVIEW_ID` (`review_id`);

--
-- Indexes for table `rating_option_vote_aggregated`
--
ALTER TABLE `rating_option_vote_aggregated`
  ADD PRIMARY KEY (`primary_id`), ADD KEY `IDX_RATING_OPTION_VOTE_AGGREGATED_RATING_ID` (`rating_id`), ADD KEY `IDX_RATING_OPTION_VOTE_AGGREGATED_STORE_ID` (`store_id`);

--
-- Indexes for table `rating_store`
--
ALTER TABLE `rating_store`
  ADD PRIMARY KEY (`rating_id`,`store_id`), ADD KEY `IDX_RATING_STORE_STORE_ID` (`store_id`);

--
-- Indexes for table `rating_title`
--
ALTER TABLE `rating_title`
  ADD PRIMARY KEY (`rating_id`,`store_id`), ADD KEY `IDX_RATING_TITLE_STORE_ID` (`store_id`);

--
-- Indexes for table `report_compared_product_index`
--
ALTER TABLE `report_compared_product_index`
  ADD PRIMARY KEY (`index_id`), ADD UNIQUE KEY `UNQ_REPORT_COMPARED_PRODUCT_INDEX_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`), ADD UNIQUE KEY `UNQ_REPORT_COMPARED_PRODUCT_INDEX_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`), ADD KEY `IDX_REPORT_COMPARED_PRODUCT_INDEX_STORE_ID` (`store_id`), ADD KEY `IDX_REPORT_COMPARED_PRODUCT_INDEX_ADDED_AT` (`added_at`), ADD KEY `IDX_REPORT_COMPARED_PRODUCT_INDEX_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `report_event`
--
ALTER TABLE `report_event`
  ADD PRIMARY KEY (`event_id`), ADD KEY `IDX_REPORT_EVENT_EVENT_TYPE_ID` (`event_type_id`), ADD KEY `IDX_REPORT_EVENT_SUBJECT_ID` (`subject_id`), ADD KEY `IDX_REPORT_EVENT_OBJECT_ID` (`object_id`), ADD KEY `IDX_REPORT_EVENT_SUBTYPE` (`subtype`), ADD KEY `IDX_REPORT_EVENT_STORE_ID` (`store_id`);

--
-- Indexes for table `report_event_types`
--
ALTER TABLE `report_event_types`
  ADD PRIMARY KEY (`event_type_id`);

--
-- Indexes for table `report_viewed_product_aggregated_daily`
--
ALTER TABLE `report_viewed_product_aggregated_daily`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `UNQ_REPORT_VIEWED_PRD_AGGRED_DAILY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`), ADD KEY `IDX_REPORT_VIEWED_PRODUCT_AGGREGATED_DAILY_STORE_ID` (`store_id`), ADD KEY `IDX_REPORT_VIEWED_PRODUCT_AGGREGATED_DAILY_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `report_viewed_product_aggregated_monthly`
--
ALTER TABLE `report_viewed_product_aggregated_monthly`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `UNQ_REPORT_VIEWED_PRD_AGGRED_MONTHLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`), ADD KEY `IDX_REPORT_VIEWED_PRODUCT_AGGREGATED_MONTHLY_STORE_ID` (`store_id`), ADD KEY `IDX_REPORT_VIEWED_PRODUCT_AGGREGATED_MONTHLY_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `report_viewed_product_aggregated_yearly`
--
ALTER TABLE `report_viewed_product_aggregated_yearly`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `UNQ_REPORT_VIEWED_PRD_AGGRED_YEARLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`), ADD KEY `IDX_REPORT_VIEWED_PRODUCT_AGGREGATED_YEARLY_STORE_ID` (`store_id`), ADD KEY `IDX_REPORT_VIEWED_PRODUCT_AGGREGATED_YEARLY_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `report_viewed_product_index`
--
ALTER TABLE `report_viewed_product_index`
  ADD PRIMARY KEY (`index_id`), ADD UNIQUE KEY `UNQ_REPORT_VIEWED_PRODUCT_INDEX_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`), ADD UNIQUE KEY `UNQ_REPORT_VIEWED_PRODUCT_INDEX_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`), ADD KEY `IDX_REPORT_VIEWED_PRODUCT_INDEX_STORE_ID` (`store_id`), ADD KEY `IDX_REPORT_VIEWED_PRODUCT_INDEX_ADDED_AT` (`added_at`), ADD KEY `IDX_REPORT_VIEWED_PRODUCT_INDEX_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`), ADD KEY `IDX_REVIEW_ENTITY_ID` (`entity_id`), ADD KEY `IDX_REVIEW_STATUS_ID` (`status_id`), ADD KEY `IDX_REVIEW_ENTITY_PK_VALUE` (`entity_pk_value`);

--
-- Indexes for table `review_detail`
--
ALTER TABLE `review_detail`
  ADD PRIMARY KEY (`detail_id`), ADD KEY `IDX_REVIEW_DETAIL_REVIEW_ID` (`review_id`), ADD KEY `IDX_REVIEW_DETAIL_STORE_ID` (`store_id`), ADD KEY `IDX_REVIEW_DETAIL_CUSTOMER_ID` (`customer_id`);

--
-- Indexes for table `review_entity`
--
ALTER TABLE `review_entity`
  ADD PRIMARY KEY (`entity_id`);

--
-- Indexes for table `review_entity_summary`
--
ALTER TABLE `review_entity_summary`
  ADD PRIMARY KEY (`primary_id`), ADD KEY `IDX_REVIEW_ENTITY_SUMMARY_STORE_ID` (`store_id`);

--
-- Indexes for table `review_status`
--
ALTER TABLE `review_status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `review_store`
--
ALTER TABLE `review_store`
  ADD PRIMARY KEY (`review_id`,`store_id`), ADD KEY `IDX_REVIEW_STORE_STORE_ID` (`store_id`);

--
-- Indexes for table `salesrule`
--
ALTER TABLE `salesrule`
  ADD PRIMARY KEY (`rule_id`), ADD KEY `IDX_SALESRULE_IS_ACTIVE_SORT_ORDER_TO_DATE_FROM_DATE` (`is_active`,`sort_order`,`to_date`,`from_date`);

--
-- Indexes for table `salesrule_coupon`
--
ALTER TABLE `salesrule_coupon`
  ADD PRIMARY KEY (`coupon_id`), ADD UNIQUE KEY `UNQ_SALESRULE_COUPON_CODE` (`code`), ADD UNIQUE KEY `UNQ_SALESRULE_COUPON_RULE_ID_IS_PRIMARY` (`rule_id`,`is_primary`), ADD KEY `IDX_SALESRULE_COUPON_RULE_ID` (`rule_id`);

--
-- Indexes for table `salesrule_coupon_usage`
--
ALTER TABLE `salesrule_coupon_usage`
  ADD PRIMARY KEY (`coupon_id`,`customer_id`), ADD KEY `IDX_SALESRULE_COUPON_USAGE_COUPON_ID` (`coupon_id`), ADD KEY `IDX_SALESRULE_COUPON_USAGE_CUSTOMER_ID` (`customer_id`);

--
-- Indexes for table `salesrule_customer`
--
ALTER TABLE `salesrule_customer`
  ADD PRIMARY KEY (`rule_customer_id`), ADD KEY `IDX_SALESRULE_CUSTOMER_RULE_ID_CUSTOMER_ID` (`rule_id`,`customer_id`), ADD KEY `IDX_SALESRULE_CUSTOMER_CUSTOMER_ID_RULE_ID` (`customer_id`,`rule_id`);

--
-- Indexes for table `salesrule_customer_group`
--
ALTER TABLE `salesrule_customer_group`
  ADD PRIMARY KEY (`rule_id`,`customer_group_id`), ADD KEY `IDX_SALESRULE_CUSTOMER_GROUP_RULE_ID` (`rule_id`), ADD KEY `IDX_SALESRULE_CUSTOMER_GROUP_CUSTOMER_GROUP_ID` (`customer_group_id`);

--
-- Indexes for table `salesrule_label`
--
ALTER TABLE `salesrule_label`
  ADD PRIMARY KEY (`label_id`), ADD UNIQUE KEY `UNQ_SALESRULE_LABEL_RULE_ID_STORE_ID` (`rule_id`,`store_id`), ADD KEY `IDX_SALESRULE_LABEL_STORE_ID` (`store_id`), ADD KEY `IDX_SALESRULE_LABEL_RULE_ID` (`rule_id`);

--
-- Indexes for table `salesrule_product_attribute`
--
ALTER TABLE `salesrule_product_attribute`
  ADD PRIMARY KEY (`rule_id`,`website_id`,`customer_group_id`,`attribute_id`), ADD KEY `IDX_SALESRULE_PRODUCT_ATTRIBUTE_WEBSITE_ID` (`website_id`), ADD KEY `IDX_SALESRULE_PRODUCT_ATTRIBUTE_CUSTOMER_GROUP_ID` (`customer_group_id`), ADD KEY `IDX_SALESRULE_PRODUCT_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`);

--
-- Indexes for table `salesrule_website`
--
ALTER TABLE `salesrule_website`
  ADD PRIMARY KEY (`rule_id`,`website_id`), ADD KEY `IDX_SALESRULE_WEBSITE_RULE_ID` (`rule_id`), ADD KEY `IDX_SALESRULE_WEBSITE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `sales_bestsellers_aggregated_daily`
--
ALTER TABLE `sales_bestsellers_aggregated_daily`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `UNQ_SALES_BESTSELLERS_AGGRED_DAILY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`), ADD KEY `IDX_SALES_BESTSELLERS_AGGREGATED_DAILY_STORE_ID` (`store_id`), ADD KEY `IDX_SALES_BESTSELLERS_AGGREGATED_DAILY_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `sales_bestsellers_aggregated_monthly`
--
ALTER TABLE `sales_bestsellers_aggregated_monthly`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `UNQ_SALES_BESTSELLERS_AGGRED_MONTHLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`), ADD KEY `IDX_SALES_BESTSELLERS_AGGREGATED_MONTHLY_STORE_ID` (`store_id`), ADD KEY `IDX_SALES_BESTSELLERS_AGGREGATED_MONTHLY_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `sales_bestsellers_aggregated_yearly`
--
ALTER TABLE `sales_bestsellers_aggregated_yearly`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `UNQ_SALES_BESTSELLERS_AGGRED_YEARLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`), ADD KEY `IDX_SALES_BESTSELLERS_AGGREGATED_YEARLY_STORE_ID` (`store_id`), ADD KEY `IDX_SALES_BESTSELLERS_AGGREGATED_YEARLY_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `sales_billing_agreement`
--
ALTER TABLE `sales_billing_agreement`
  ADD PRIMARY KEY (`agreement_id`), ADD KEY `IDX_SALES_BILLING_AGREEMENT_CUSTOMER_ID` (`customer_id`), ADD KEY `IDX_SALES_BILLING_AGREEMENT_STORE_ID` (`store_id`);

--
-- Indexes for table `sales_billing_agreement_order`
--
ALTER TABLE `sales_billing_agreement_order`
  ADD PRIMARY KEY (`agreement_id`,`order_id`), ADD KEY `IDX_SALES_BILLING_AGREEMENT_ORDER_ORDER_ID` (`order_id`);

--
-- Indexes for table `sales_flat_creditmemo`
--
ALTER TABLE `sales_flat_creditmemo`
  ADD PRIMARY KEY (`entity_id`), ADD UNIQUE KEY `UNQ_SALES_FLAT_CREDITMEMO_INCREMENT_ID` (`increment_id`), ADD KEY `IDX_SALES_FLAT_CREDITMEMO_STORE_ID` (`store_id`), ADD KEY `IDX_SALES_FLAT_CREDITMEMO_ORDER_ID` (`order_id`), ADD KEY `IDX_SALES_FLAT_CREDITMEMO_CREDITMEMO_STATUS` (`creditmemo_status`), ADD KEY `IDX_SALES_FLAT_CREDITMEMO_STATE` (`state`), ADD KEY `IDX_SALES_FLAT_CREDITMEMO_CREATED_AT` (`created_at`);

--
-- Indexes for table `sales_flat_creditmemo_comment`
--
ALTER TABLE `sales_flat_creditmemo_comment`
  ADD PRIMARY KEY (`entity_id`), ADD KEY `IDX_SALES_FLAT_CREDITMEMO_COMMENT_CREATED_AT` (`created_at`), ADD KEY `IDX_SALES_FLAT_CREDITMEMO_COMMENT_PARENT_ID` (`parent_id`);

--
-- Indexes for table `sales_flat_creditmemo_grid`
--
ALTER TABLE `sales_flat_creditmemo_grid`
  ADD PRIMARY KEY (`entity_id`), ADD UNIQUE KEY `UNQ_SALES_FLAT_CREDITMEMO_GRID_INCREMENT_ID` (`increment_id`), ADD KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_STORE_ID` (`store_id`), ADD KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_GRAND_TOTAL` (`grand_total`), ADD KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_BASE_GRAND_TOTAL` (`base_grand_total`), ADD KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_ORDER_ID` (`order_id`), ADD KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_CREDITMEMO_STATUS` (`creditmemo_status`), ADD KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_STATE` (`state`), ADD KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_ORDER_INCREMENT_ID` (`order_increment_id`), ADD KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_CREATED_AT` (`created_at`), ADD KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_ORDER_CREATED_AT` (`order_created_at`), ADD KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_BILLING_NAME` (`billing_name`);

--
-- Indexes for table `sales_flat_creditmemo_item`
--
ALTER TABLE `sales_flat_creditmemo_item`
  ADD PRIMARY KEY (`entity_id`), ADD KEY `IDX_SALES_FLAT_CREDITMEMO_ITEM_PARENT_ID` (`parent_id`);

--
-- Indexes for table `sales_flat_invoice`
--
ALTER TABLE `sales_flat_invoice`
  ADD PRIMARY KEY (`entity_id`), ADD UNIQUE KEY `UNQ_SALES_FLAT_INVOICE_INCREMENT_ID` (`increment_id`), ADD KEY `IDX_SALES_FLAT_INVOICE_STORE_ID` (`store_id`), ADD KEY `IDX_SALES_FLAT_INVOICE_GRAND_TOTAL` (`grand_total`), ADD KEY `IDX_SALES_FLAT_INVOICE_ORDER_ID` (`order_id`), ADD KEY `IDX_SALES_FLAT_INVOICE_STATE` (`state`), ADD KEY `IDX_SALES_FLAT_INVOICE_CREATED_AT` (`created_at`);

--
-- Indexes for table `sales_flat_invoice_comment`
--
ALTER TABLE `sales_flat_invoice_comment`
  ADD PRIMARY KEY (`entity_id`), ADD KEY `IDX_SALES_FLAT_INVOICE_COMMENT_CREATED_AT` (`created_at`), ADD KEY `IDX_SALES_FLAT_INVOICE_COMMENT_PARENT_ID` (`parent_id`);

--
-- Indexes for table `sales_flat_invoice_grid`
--
ALTER TABLE `sales_flat_invoice_grid`
  ADD PRIMARY KEY (`entity_id`), ADD UNIQUE KEY `UNQ_SALES_FLAT_INVOICE_GRID_INCREMENT_ID` (`increment_id`), ADD KEY `IDX_SALES_FLAT_INVOICE_GRID_STORE_ID` (`store_id`), ADD KEY `IDX_SALES_FLAT_INVOICE_GRID_GRAND_TOTAL` (`grand_total`), ADD KEY `IDX_SALES_FLAT_INVOICE_GRID_ORDER_ID` (`order_id`), ADD KEY `IDX_SALES_FLAT_INVOICE_GRID_STATE` (`state`), ADD KEY `IDX_SALES_FLAT_INVOICE_GRID_ORDER_INCREMENT_ID` (`order_increment_id`), ADD KEY `IDX_SALES_FLAT_INVOICE_GRID_CREATED_AT` (`created_at`), ADD KEY `IDX_SALES_FLAT_INVOICE_GRID_ORDER_CREATED_AT` (`order_created_at`), ADD KEY `IDX_SALES_FLAT_INVOICE_GRID_BILLING_NAME` (`billing_name`);

--
-- Indexes for table `sales_flat_invoice_item`
--
ALTER TABLE `sales_flat_invoice_item`
  ADD PRIMARY KEY (`entity_id`), ADD KEY `IDX_SALES_FLAT_INVOICE_ITEM_PARENT_ID` (`parent_id`);

--
-- Indexes for table `sales_flat_order`
--
ALTER TABLE `sales_flat_order`
  ADD PRIMARY KEY (`entity_id`), ADD UNIQUE KEY `UNQ_SALES_FLAT_ORDER_INCREMENT_ID` (`increment_id`), ADD KEY `IDX_SALES_FLAT_ORDER_STATUS` (`status`), ADD KEY `IDX_SALES_FLAT_ORDER_STATE` (`state`), ADD KEY `IDX_SALES_FLAT_ORDER_STORE_ID` (`store_id`), ADD KEY `IDX_SALES_FLAT_ORDER_CREATED_AT` (`created_at`), ADD KEY `IDX_SALES_FLAT_ORDER_CUSTOMER_ID` (`customer_id`), ADD KEY `IDX_SALES_FLAT_ORDER_EXT_ORDER_ID` (`ext_order_id`), ADD KEY `IDX_SALES_FLAT_ORDER_QUOTE_ID` (`quote_id`), ADD KEY `IDX_SALES_FLAT_ORDER_UPDATED_AT` (`updated_at`);

--
-- Indexes for table `sales_flat_order_address`
--
ALTER TABLE `sales_flat_order_address`
  ADD PRIMARY KEY (`entity_id`), ADD KEY `IDX_SALES_FLAT_ORDER_ADDRESS_PARENT_ID` (`parent_id`);

--
-- Indexes for table `sales_flat_order_grid`
--
ALTER TABLE `sales_flat_order_grid`
  ADD PRIMARY KEY (`entity_id`), ADD UNIQUE KEY `UNQ_SALES_FLAT_ORDER_GRID_INCREMENT_ID` (`increment_id`), ADD KEY `IDX_SALES_FLAT_ORDER_GRID_STATUS` (`status`), ADD KEY `IDX_SALES_FLAT_ORDER_GRID_STORE_ID` (`store_id`), ADD KEY `IDX_SALES_FLAT_ORDER_GRID_BASE_GRAND_TOTAL` (`base_grand_total`), ADD KEY `IDX_SALES_FLAT_ORDER_GRID_BASE_TOTAL_PAID` (`base_total_paid`), ADD KEY `IDX_SALES_FLAT_ORDER_GRID_GRAND_TOTAL` (`grand_total`), ADD KEY `IDX_SALES_FLAT_ORDER_GRID_TOTAL_PAID` (`total_paid`), ADD KEY `IDX_SALES_FLAT_ORDER_GRID_SHIPPING_NAME` (`shipping_name`), ADD KEY `IDX_SALES_FLAT_ORDER_GRID_BILLING_NAME` (`billing_name`), ADD KEY `IDX_SALES_FLAT_ORDER_GRID_CREATED_AT` (`created_at`), ADD KEY `IDX_SALES_FLAT_ORDER_GRID_CUSTOMER_ID` (`customer_id`), ADD KEY `IDX_SALES_FLAT_ORDER_GRID_UPDATED_AT` (`updated_at`);

--
-- Indexes for table `sales_flat_order_item`
--
ALTER TABLE `sales_flat_order_item`
  ADD PRIMARY KEY (`item_id`), ADD KEY `IDX_SALES_FLAT_ORDER_ITEM_ORDER_ID` (`order_id`), ADD KEY `IDX_SALES_FLAT_ORDER_ITEM_STORE_ID` (`store_id`);

--
-- Indexes for table `sales_flat_order_payment`
--
ALTER TABLE `sales_flat_order_payment`
  ADD PRIMARY KEY (`entity_id`), ADD KEY `IDX_SALES_FLAT_ORDER_PAYMENT_PARENT_ID` (`parent_id`);

--
-- Indexes for table `sales_flat_order_status_history`
--
ALTER TABLE `sales_flat_order_status_history`
  ADD PRIMARY KEY (`entity_id`), ADD KEY `IDX_SALES_FLAT_ORDER_STATUS_HISTORY_PARENT_ID` (`parent_id`), ADD KEY `IDX_SALES_FLAT_ORDER_STATUS_HISTORY_CREATED_AT` (`created_at`);

--
-- Indexes for table `sales_flat_quote`
--
ALTER TABLE `sales_flat_quote`
  ADD PRIMARY KEY (`entity_id`), ADD KEY `IDX_SALES_FLAT_QUOTE_CUSTOMER_ID_STORE_ID_IS_ACTIVE` (`customer_id`,`store_id`,`is_active`), ADD KEY `IDX_SALES_FLAT_QUOTE_STORE_ID` (`store_id`);

--
-- Indexes for table `sales_flat_quote_address`
--
ALTER TABLE `sales_flat_quote_address`
  ADD PRIMARY KEY (`address_id`), ADD KEY `IDX_SALES_FLAT_QUOTE_ADDRESS_QUOTE_ID` (`quote_id`);

--
-- Indexes for table `sales_flat_quote_address_item`
--
ALTER TABLE `sales_flat_quote_address_item`
  ADD PRIMARY KEY (`address_item_id`), ADD KEY `IDX_SALES_FLAT_QUOTE_ADDRESS_ITEM_QUOTE_ADDRESS_ID` (`quote_address_id`), ADD KEY `IDX_SALES_FLAT_QUOTE_ADDRESS_ITEM_PARENT_ITEM_ID` (`parent_item_id`), ADD KEY `IDX_SALES_FLAT_QUOTE_ADDRESS_ITEM_QUOTE_ITEM_ID` (`quote_item_id`);

--
-- Indexes for table `sales_flat_quote_item`
--
ALTER TABLE `sales_flat_quote_item`
  ADD PRIMARY KEY (`item_id`), ADD KEY `IDX_SALES_FLAT_QUOTE_ITEM_PARENT_ITEM_ID` (`parent_item_id`), ADD KEY `IDX_SALES_FLAT_QUOTE_ITEM_PRODUCT_ID` (`product_id`), ADD KEY `IDX_SALES_FLAT_QUOTE_ITEM_QUOTE_ID` (`quote_id`), ADD KEY `IDX_SALES_FLAT_QUOTE_ITEM_STORE_ID` (`store_id`);

--
-- Indexes for table `sales_flat_quote_item_option`
--
ALTER TABLE `sales_flat_quote_item_option`
  ADD PRIMARY KEY (`option_id`), ADD KEY `IDX_SALES_FLAT_QUOTE_ITEM_OPTION_ITEM_ID` (`item_id`);

--
-- Indexes for table `sales_flat_quote_payment`
--
ALTER TABLE `sales_flat_quote_payment`
  ADD PRIMARY KEY (`payment_id`), ADD KEY `IDX_SALES_FLAT_QUOTE_PAYMENT_QUOTE_ID` (`quote_id`);

--
-- Indexes for table `sales_flat_quote_shipping_rate`
--
ALTER TABLE `sales_flat_quote_shipping_rate`
  ADD PRIMARY KEY (`rate_id`), ADD KEY `IDX_SALES_FLAT_QUOTE_SHIPPING_RATE_ADDRESS_ID` (`address_id`);

--
-- Indexes for table `sales_flat_shipment`
--
ALTER TABLE `sales_flat_shipment`
  ADD PRIMARY KEY (`entity_id`), ADD UNIQUE KEY `UNQ_SALES_FLAT_SHIPMENT_INCREMENT_ID` (`increment_id`), ADD KEY `IDX_SALES_FLAT_SHIPMENT_STORE_ID` (`store_id`), ADD KEY `IDX_SALES_FLAT_SHIPMENT_TOTAL_QTY` (`total_qty`), ADD KEY `IDX_SALES_FLAT_SHIPMENT_ORDER_ID` (`order_id`), ADD KEY `IDX_SALES_FLAT_SHIPMENT_CREATED_AT` (`created_at`), ADD KEY `IDX_SALES_FLAT_SHIPMENT_UPDATED_AT` (`updated_at`);

--
-- Indexes for table `sales_flat_shipment_comment`
--
ALTER TABLE `sales_flat_shipment_comment`
  ADD PRIMARY KEY (`entity_id`), ADD KEY `IDX_SALES_FLAT_SHIPMENT_COMMENT_CREATED_AT` (`created_at`), ADD KEY `IDX_SALES_FLAT_SHIPMENT_COMMENT_PARENT_ID` (`parent_id`);

--
-- Indexes for table `sales_flat_shipment_grid`
--
ALTER TABLE `sales_flat_shipment_grid`
  ADD PRIMARY KEY (`entity_id`), ADD UNIQUE KEY `UNQ_SALES_FLAT_SHIPMENT_GRID_INCREMENT_ID` (`increment_id`), ADD KEY `IDX_SALES_FLAT_SHIPMENT_GRID_STORE_ID` (`store_id`), ADD KEY `IDX_SALES_FLAT_SHIPMENT_GRID_TOTAL_QTY` (`total_qty`), ADD KEY `IDX_SALES_FLAT_SHIPMENT_GRID_ORDER_ID` (`order_id`), ADD KEY `IDX_SALES_FLAT_SHIPMENT_GRID_SHIPMENT_STATUS` (`shipment_status`), ADD KEY `IDX_SALES_FLAT_SHIPMENT_GRID_ORDER_INCREMENT_ID` (`order_increment_id`), ADD KEY `IDX_SALES_FLAT_SHIPMENT_GRID_CREATED_AT` (`created_at`), ADD KEY `IDX_SALES_FLAT_SHIPMENT_GRID_ORDER_CREATED_AT` (`order_created_at`), ADD KEY `IDX_SALES_FLAT_SHIPMENT_GRID_SHIPPING_NAME` (`shipping_name`);

--
-- Indexes for table `sales_flat_shipment_item`
--
ALTER TABLE `sales_flat_shipment_item`
  ADD PRIMARY KEY (`entity_id`), ADD KEY `IDX_SALES_FLAT_SHIPMENT_ITEM_PARENT_ID` (`parent_id`);

--
-- Indexes for table `sales_flat_shipment_track`
--
ALTER TABLE `sales_flat_shipment_track`
  ADD PRIMARY KEY (`entity_id`), ADD KEY `IDX_SALES_FLAT_SHIPMENT_TRACK_PARENT_ID` (`parent_id`), ADD KEY `IDX_SALES_FLAT_SHIPMENT_TRACK_ORDER_ID` (`order_id`), ADD KEY `IDX_SALES_FLAT_SHIPMENT_TRACK_CREATED_AT` (`created_at`);

--
-- Indexes for table `sales_invoiced_aggregated`
--
ALTER TABLE `sales_invoiced_aggregated`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `UNQ_SALES_INVOICED_AGGREGATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`), ADD KEY `IDX_SALES_INVOICED_AGGREGATED_STORE_ID` (`store_id`);

--
-- Indexes for table `sales_invoiced_aggregated_order`
--
ALTER TABLE `sales_invoiced_aggregated_order`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `UNQ_SALES_INVOICED_AGGREGATED_ORDER_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`), ADD KEY `IDX_SALES_INVOICED_AGGREGATED_ORDER_STORE_ID` (`store_id`);

--
-- Indexes for table `sales_order_aggregated_created`
--
ALTER TABLE `sales_order_aggregated_created`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `UNQ_SALES_ORDER_AGGREGATED_CREATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`), ADD KEY `IDX_SALES_ORDER_AGGREGATED_CREATED_STORE_ID` (`store_id`);

--
-- Indexes for table `sales_order_aggregated_updated`
--
ALTER TABLE `sales_order_aggregated_updated`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `UNQ_SALES_ORDER_AGGREGATED_UPDATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`), ADD KEY `IDX_SALES_ORDER_AGGREGATED_UPDATED_STORE_ID` (`store_id`);

--
-- Indexes for table `sales_order_status`
--
ALTER TABLE `sales_order_status`
  ADD PRIMARY KEY (`status`);

--
-- Indexes for table `sales_order_status_label`
--
ALTER TABLE `sales_order_status_label`
  ADD PRIMARY KEY (`status`,`store_id`), ADD KEY `IDX_SALES_ORDER_STATUS_LABEL_STORE_ID` (`store_id`);

--
-- Indexes for table `sales_order_status_state`
--
ALTER TABLE `sales_order_status_state`
  ADD PRIMARY KEY (`status`,`state`);

--
-- Indexes for table `sales_order_tax`
--
ALTER TABLE `sales_order_tax`
  ADD PRIMARY KEY (`tax_id`), ADD KEY `IDX_SALES_ORDER_TAX_ORDER_ID_PRIORITY_POSITION` (`order_id`,`priority`,`position`);

--
-- Indexes for table `sales_order_tax_item`
--
ALTER TABLE `sales_order_tax_item`
  ADD PRIMARY KEY (`tax_item_id`), ADD UNIQUE KEY `UNQ_SALES_ORDER_TAX_ITEM_TAX_ID_ITEM_ID` (`tax_id`,`item_id`), ADD KEY `IDX_SALES_ORDER_TAX_ITEM_TAX_ID` (`tax_id`), ADD KEY `IDX_SALES_ORDER_TAX_ITEM_ITEM_ID` (`item_id`);

--
-- Indexes for table `sales_payment_transaction`
--
ALTER TABLE `sales_payment_transaction`
  ADD PRIMARY KEY (`transaction_id`), ADD UNIQUE KEY `UNQ_SALES_PAYMENT_TRANSACTION_ORDER_ID_PAYMENT_ID_TXN_ID` (`order_id`,`payment_id`,`txn_id`), ADD KEY `IDX_SALES_PAYMENT_TRANSACTION_ORDER_ID` (`order_id`), ADD KEY `IDX_SALES_PAYMENT_TRANSACTION_PARENT_ID` (`parent_id`), ADD KEY `IDX_SALES_PAYMENT_TRANSACTION_PAYMENT_ID` (`payment_id`);

--
-- Indexes for table `sales_recurring_profile`
--
ALTER TABLE `sales_recurring_profile`
  ADD PRIMARY KEY (`profile_id`), ADD UNIQUE KEY `UNQ_SALES_RECURRING_PROFILE_INTERNAL_REFERENCE_ID` (`internal_reference_id`), ADD KEY `IDX_SALES_RECURRING_PROFILE_CUSTOMER_ID` (`customer_id`), ADD KEY `IDX_SALES_RECURRING_PROFILE_STORE_ID` (`store_id`);

--
-- Indexes for table `sales_recurring_profile_order`
--
ALTER TABLE `sales_recurring_profile_order`
  ADD PRIMARY KEY (`link_id`), ADD UNIQUE KEY `UNQ_SALES_RECURRING_PROFILE_ORDER_PROFILE_ID_ORDER_ID` (`profile_id`,`order_id`), ADD KEY `IDX_SALES_RECURRING_PROFILE_ORDER_ORDER_ID` (`order_id`);

--
-- Indexes for table `sales_refunded_aggregated`
--
ALTER TABLE `sales_refunded_aggregated`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `UNQ_SALES_REFUNDED_AGGREGATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`), ADD KEY `IDX_SALES_REFUNDED_AGGREGATED_STORE_ID` (`store_id`);

--
-- Indexes for table `sales_refunded_aggregated_order`
--
ALTER TABLE `sales_refunded_aggregated_order`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `UNQ_SALES_REFUNDED_AGGREGATED_ORDER_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`), ADD KEY `IDX_SALES_REFUNDED_AGGREGATED_ORDER_STORE_ID` (`store_id`);

--
-- Indexes for table `sales_shipping_aggregated`
--
ALTER TABLE `sales_shipping_aggregated`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `UNQ_SALES_SHPP_AGGRED_PERIOD_STORE_ID_ORDER_STS_SHPP_DESCRIPTION` (`period`,`store_id`,`order_status`,`shipping_description`), ADD KEY `IDX_SALES_SHIPPING_AGGREGATED_STORE_ID` (`store_id`);

--
-- Indexes for table `sales_shipping_aggregated_order`
--
ALTER TABLE `sales_shipping_aggregated_order`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `C05FAE47282EEA68654D0924E946761F` (`period`,`store_id`,`order_status`,`shipping_description`), ADD KEY `IDX_SALES_SHIPPING_AGGREGATED_ORDER_STORE_ID` (`store_id`);

--
-- Indexes for table `sendfriend_log`
--
ALTER TABLE `sendfriend_log`
  ADD PRIMARY KEY (`log_id`), ADD KEY `IDX_SENDFRIEND_LOG_IP` (`ip`), ADD KEY `IDX_SENDFRIEND_LOG_TIME` (`time`);

--
-- Indexes for table `shipping_tablerate`
--
ALTER TABLE `shipping_tablerate`
  ADD PRIMARY KEY (`pk`), ADD UNIQUE KEY `D60821CDB2AFACEE1566CFC02D0D4CAA` (`website_id`,`dest_country_id`,`dest_region_id`,`dest_zip`,`condition_name`,`condition_value`);

--
-- Indexes for table `sitemap`
--
ALTER TABLE `sitemap`
  ADD PRIMARY KEY (`sitemap_id`), ADD KEY `IDX_SITEMAP_STORE_ID` (`store_id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`tag_id`), ADD KEY `FK_TAG_FIRST_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` (`first_customer_id`), ADD KEY `FK_TAG_FIRST_STORE_ID_CORE_STORE_STORE_ID` (`first_store_id`);

--
-- Indexes for table `tag_properties`
--
ALTER TABLE `tag_properties`
  ADD PRIMARY KEY (`tag_id`,`store_id`), ADD KEY `IDX_TAG_PROPERTIES_STORE_ID` (`store_id`);

--
-- Indexes for table `tag_relation`
--
ALTER TABLE `tag_relation`
  ADD PRIMARY KEY (`tag_relation_id`), ADD UNIQUE KEY `UNQ_TAG_RELATION_TAG_ID_CUSTOMER_ID_PRODUCT_ID_STORE_ID` (`tag_id`,`customer_id`,`product_id`,`store_id`), ADD KEY `IDX_TAG_RELATION_PRODUCT_ID` (`product_id`), ADD KEY `IDX_TAG_RELATION_TAG_ID` (`tag_id`), ADD KEY `IDX_TAG_RELATION_CUSTOMER_ID` (`customer_id`), ADD KEY `IDX_TAG_RELATION_STORE_ID` (`store_id`);

--
-- Indexes for table `tag_summary`
--
ALTER TABLE `tag_summary`
  ADD PRIMARY KEY (`tag_id`,`store_id`), ADD KEY `IDX_TAG_SUMMARY_STORE_ID` (`store_id`), ADD KEY `IDX_TAG_SUMMARY_TAG_ID` (`tag_id`);

--
-- Indexes for table `tax_calculation`
--
ALTER TABLE `tax_calculation`
  ADD PRIMARY KEY (`tax_calculation_id`), ADD KEY `IDX_TAX_CALCULATION_TAX_CALCULATION_RULE_ID` (`tax_calculation_rule_id`), ADD KEY `IDX_TAX_CALCULATION_TAX_CALCULATION_RATE_ID` (`tax_calculation_rate_id`), ADD KEY `IDX_TAX_CALCULATION_CUSTOMER_TAX_CLASS_ID` (`customer_tax_class_id`), ADD KEY `IDX_TAX_CALCULATION_PRODUCT_TAX_CLASS_ID` (`product_tax_class_id`), ADD KEY `IDX_TAX_CALC_TAX_CALC_RATE_ID_CSTR_TAX_CLASS_ID_PRD_TAX_CLASS_ID` (`tax_calculation_rate_id`,`customer_tax_class_id`,`product_tax_class_id`);

--
-- Indexes for table `tax_calculation_rate`
--
ALTER TABLE `tax_calculation_rate`
  ADD PRIMARY KEY (`tax_calculation_rate_id`), ADD KEY `IDX_TAX_CALC_RATE_TAX_COUNTRY_ID_TAX_REGION_ID_TAX_POSTCODE` (`tax_country_id`,`tax_region_id`,`tax_postcode`), ADD KEY `IDX_TAX_CALCULATION_RATE_CODE` (`code`), ADD KEY `CA799F1E2CB843495F601E56C84A626D` (`tax_calculation_rate_id`,`tax_country_id`,`tax_region_id`,`zip_is_range`,`tax_postcode`);

--
-- Indexes for table `tax_calculation_rate_title`
--
ALTER TABLE `tax_calculation_rate_title`
  ADD PRIMARY KEY (`tax_calculation_rate_title_id`), ADD KEY `IDX_TAX_CALCULATION_RATE_TITLE_TAX_CALCULATION_RATE_ID_STORE_ID` (`tax_calculation_rate_id`,`store_id`), ADD KEY `IDX_TAX_CALCULATION_RATE_TITLE_TAX_CALCULATION_RATE_ID` (`tax_calculation_rate_id`), ADD KEY `IDX_TAX_CALCULATION_RATE_TITLE_STORE_ID` (`store_id`);

--
-- Indexes for table `tax_calculation_rule`
--
ALTER TABLE `tax_calculation_rule`
  ADD PRIMARY KEY (`tax_calculation_rule_id`), ADD KEY `IDX_TAX_CALC_RULE_PRIORITY_POSITION_TAX_CALC_RULE_ID` (`priority`,`position`,`tax_calculation_rule_id`), ADD KEY `IDX_TAX_CALCULATION_RULE_CODE` (`code`);

--
-- Indexes for table `tax_class`
--
ALTER TABLE `tax_class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `tax_order_aggregated_created`
--
ALTER TABLE `tax_order_aggregated_created`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `FCA5E2C02689EB2641B30580D7AACF12` (`period`,`store_id`,`code`,`percent`,`order_status`), ADD KEY `IDX_TAX_ORDER_AGGREGATED_CREATED_STORE_ID` (`store_id`);

--
-- Indexes for table `tax_order_aggregated_updated`
--
ALTER TABLE `tax_order_aggregated_updated`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `DB0AF14011199AA6CD31D5078B90AA8D` (`period`,`store_id`,`code`,`percent`,`order_status`), ADD KEY `IDX_TAX_ORDER_AGGREGATED_UPDATED_STORE_ID` (`store_id`);

--
-- Indexes for table `weee_discount`
--
ALTER TABLE `weee_discount`
  ADD KEY `IDX_WEEE_DISCOUNT_WEBSITE_ID` (`website_id`), ADD KEY `IDX_WEEE_DISCOUNT_ENTITY_ID` (`entity_id`), ADD KEY `IDX_WEEE_DISCOUNT_CUSTOMER_GROUP_ID` (`customer_group_id`);

--
-- Indexes for table `weee_tax`
--
ALTER TABLE `weee_tax`
  ADD PRIMARY KEY (`value_id`), ADD KEY `IDX_WEEE_TAX_WEBSITE_ID` (`website_id`), ADD KEY `IDX_WEEE_TAX_ENTITY_ID` (`entity_id`), ADD KEY `IDX_WEEE_TAX_COUNTRY` (`country`), ADD KEY `IDX_WEEE_TAX_ATTRIBUTE_ID` (`attribute_id`);

--
-- Indexes for table `widget`
--
ALTER TABLE `widget`
  ADD PRIMARY KEY (`widget_id`), ADD KEY `IDX_WIDGET_WIDGET_CODE` (`widget_code`);

--
-- Indexes for table `widget_instance`
--
ALTER TABLE `widget_instance`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `widget_instance_page`
--
ALTER TABLE `widget_instance_page`
  ADD PRIMARY KEY (`page_id`), ADD KEY `IDX_WIDGET_INSTANCE_PAGE_INSTANCE_ID` (`instance_id`);

--
-- Indexes for table `widget_instance_page_layout`
--
ALTER TABLE `widget_instance_page_layout`
  ADD UNIQUE KEY `UNQ_WIDGET_INSTANCE_PAGE_LAYOUT_LAYOUT_UPDATE_ID_PAGE_ID` (`layout_update_id`,`page_id`), ADD KEY `IDX_WIDGET_INSTANCE_PAGE_LAYOUT_PAGE_ID` (`page_id`), ADD KEY `IDX_WIDGET_INSTANCE_PAGE_LAYOUT_LAYOUT_UPDATE_ID` (`layout_update_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`), ADD UNIQUE KEY `UNQ_WISHLIST_CUSTOMER_ID` (`customer_id`), ADD KEY `IDX_WISHLIST_SHARED` (`shared`);

--
-- Indexes for table `wishlist_item`
--
ALTER TABLE `wishlist_item`
  ADD PRIMARY KEY (`wishlist_item_id`), ADD KEY `IDX_WISHLIST_ITEM_WISHLIST_ID` (`wishlist_id`), ADD KEY `IDX_WISHLIST_ITEM_PRODUCT_ID` (`product_id`), ADD KEY `IDX_WISHLIST_ITEM_STORE_ID` (`store_id`);

--
-- Indexes for table `wishlist_item_option`
--
ALTER TABLE `wishlist_item_option`
  ADD PRIMARY KEY (`option_id`), ADD KEY `FK_A014B30B04B72DD0EAB3EECD779728D6` (`wishlist_item_id`);

--
-- Indexes for table `xmlconnect_application`
--
ALTER TABLE `xmlconnect_application`
  ADD PRIMARY KEY (`application_id`), ADD UNIQUE KEY `UNQ_XMLCONNECT_APPLICATION_CODE` (`code`), ADD KEY `FK_XMLCONNECT_APPLICATION_STORE_ID_CORE_STORE_STORE_ID` (`store_id`);

--
-- Indexes for table `xmlconnect_config_data`
--
ALTER TABLE `xmlconnect_config_data`
  ADD UNIQUE KEY `UNQ_XMLCONNECT_CONFIG_DATA_APPLICATION_ID_CATEGORY_PATH` (`application_id`,`category`,`path`);

--
-- Indexes for table `xmlconnect_history`
--
ALTER TABLE `xmlconnect_history`
  ADD PRIMARY KEY (`history_id`), ADD KEY `FK_8F08B9513373BC19F49EE3EF8340E270` (`application_id`);

--
-- Indexes for table `xmlconnect_images`
--
ALTER TABLE `xmlconnect_images`
  ADD PRIMARY KEY (`image_id`), ADD KEY `FK_6C55A623A089E4FEA9201FFE01693167` (`application_id`);

--
-- Indexes for table `xmlconnect_notification_template`
--
ALTER TABLE `xmlconnect_notification_template`
  ADD PRIMARY KEY (`template_id`), ADD KEY `FK_F9927C7518A907CF5C350942FD296DC3` (`application_id`);

--
-- Indexes for table `xmlconnect_queue`
--
ALTER TABLE `xmlconnect_queue`
  ADD PRIMARY KEY (`queue_id`), ADD KEY `FK_2019AEC5FC55A516965583447CA26B14` (`template_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminnotification_inbox`
--
ALTER TABLE `adminnotification_inbox`
  MODIFY `notification_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Notification id',AUTO_INCREMENT=118;
--
-- AUTO_INCREMENT for table `admin_assert`
--
ALTER TABLE `admin_assert`
  MODIFY `assert_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Assert ID';
--
-- AUTO_INCREMENT for table `admin_role`
--
ALTER TABLE `admin_role`
  MODIFY `role_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Role ID',AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `admin_rule`
--
ALTER TABLE `admin_rule`
  MODIFY `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule ID',AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `admin_user`
--
ALTER TABLE `admin_user`
  MODIFY `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'User ID',AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `api2_acl_attribute`
--
ALTER TABLE `api2_acl_attribute`
  MODIFY `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID';
--
-- AUTO_INCREMENT for table `api2_acl_role`
--
ALTER TABLE `api2_acl_role`
  MODIFY `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `api2_acl_rule`
--
ALTER TABLE `api2_acl_rule`
  MODIFY `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID';
--
-- AUTO_INCREMENT for table `api_assert`
--
ALTER TABLE `api_assert`
  MODIFY `assert_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Assert id';
--
-- AUTO_INCREMENT for table `api_role`
--
ALTER TABLE `api_role`
  MODIFY `role_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Role id';
--
-- AUTO_INCREMENT for table `api_rule`
--
ALTER TABLE `api_rule`
  MODIFY `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Api rule Id';
--
-- AUTO_INCREMENT for table `api_user`
--
ALTER TABLE `api_user`
  MODIFY `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'User id';
--
-- AUTO_INCREMENT for table `cataloginventory_stock`
--
ALTER TABLE `cataloginventory_stock`
  MODIFY `stock_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Stock Id',AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cataloginventory_stock_item`
--
ALTER TABLE `cataloginventory_stock_item`
  MODIFY `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item Id',AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `catalogrule`
--
ALTER TABLE `catalogrule`
  MODIFY `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Id';
--
-- AUTO_INCREMENT for table `catalogrule_product`
--
ALTER TABLE `catalogrule_product`
  MODIFY `rule_product_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Product Id';
--
-- AUTO_INCREMENT for table `catalogrule_product_price`
--
ALTER TABLE `catalogrule_product_price`
  MODIFY `rule_product_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Product PriceId';
--
-- AUTO_INCREMENT for table `catalogsearch_fulltext`
--
ALTER TABLE `catalogsearch_fulltext`
  MODIFY `fulltext_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `catalogsearch_query`
--
ALTER TABLE `catalogsearch_query`
  MODIFY `query_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Query ID';
--
-- AUTO_INCREMENT for table `catalog_category_entity`
--
ALTER TABLE `catalog_category_entity`
  MODIFY `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `catalog_category_entity_datetime`
--
ALTER TABLE `catalog_category_entity_datetime`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID';
--
-- AUTO_INCREMENT for table `catalog_category_entity_decimal`
--
ALTER TABLE `catalog_category_entity_decimal`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID';
--
-- AUTO_INCREMENT for table `catalog_category_entity_int`
--
ALTER TABLE `catalog_category_entity_int`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `catalog_category_entity_text`
--
ALTER TABLE `catalog_category_entity_text`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `catalog_category_entity_varchar`
--
ALTER TABLE `catalog_category_entity_varchar`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `catalog_compare_item`
--
ALTER TABLE `catalog_compare_item`
  MODIFY `catalog_compare_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Compare Item ID';
--
-- AUTO_INCREMENT for table `catalog_product_bundle_option`
--
ALTER TABLE `catalog_product_bundle_option`
  MODIFY `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Id';
--
-- AUTO_INCREMENT for table `catalog_product_bundle_option_value`
--
ALTER TABLE `catalog_product_bundle_option_value`
  MODIFY `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `catalog_product_bundle_selection`
--
ALTER TABLE `catalog_product_bundle_selection`
  MODIFY `selection_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Selection Id';
--
-- AUTO_INCREMENT for table `catalog_product_entity`
--
ALTER TABLE `catalog_product_entity`
  MODIFY `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `catalog_product_entity_datetime`
--
ALTER TABLE `catalog_product_entity_datetime`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `catalog_product_entity_decimal`
--
ALTER TABLE `catalog_product_entity_decimal`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `catalog_product_entity_gallery`
--
ALTER TABLE `catalog_product_entity_gallery`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID';
--
-- AUTO_INCREMENT for table `catalog_product_entity_group_price`
--
ALTER TABLE `catalog_product_entity_group_price`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID';
--
-- AUTO_INCREMENT for table `catalog_product_entity_int`
--
ALTER TABLE `catalog_product_entity_int`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `catalog_product_entity_media_gallery`
--
ALTER TABLE `catalog_product_entity_media_gallery`
  MODIFY `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `catalog_product_entity_text`
--
ALTER TABLE `catalog_product_entity_text`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `catalog_product_entity_tier_price`
--
ALTER TABLE `catalog_product_entity_tier_price`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID';
--
-- AUTO_INCREMENT for table `catalog_product_entity_varchar`
--
ALTER TABLE `catalog_product_entity_varchar`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT for table `catalog_product_link`
--
ALTER TABLE `catalog_product_link`
  MODIFY `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link ID';
--
-- AUTO_INCREMENT for table `catalog_product_link_attribute`
--
ALTER TABLE `catalog_product_link_attribute`
  MODIFY `product_link_attribute_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product Link Attribute ID',AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `catalog_product_link_attribute_decimal`
--
ALTER TABLE `catalog_product_link_attribute_decimal`
  MODIFY `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID';
--
-- AUTO_INCREMENT for table `catalog_product_link_attribute_int`
--
ALTER TABLE `catalog_product_link_attribute_int`
  MODIFY `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID';
--
-- AUTO_INCREMENT for table `catalog_product_link_attribute_varchar`
--
ALTER TABLE `catalog_product_link_attribute_varchar`
  MODIFY `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID';
--
-- AUTO_INCREMENT for table `catalog_product_link_type`
--
ALTER TABLE `catalog_product_link_type`
  MODIFY `link_type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link Type ID',AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `catalog_product_option`
--
ALTER TABLE `catalog_product_option`
  MODIFY `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option ID';
--
-- AUTO_INCREMENT for table `catalog_product_option_price`
--
ALTER TABLE `catalog_product_option_price`
  MODIFY `option_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Price ID';
--
-- AUTO_INCREMENT for table `catalog_product_option_title`
--
ALTER TABLE `catalog_product_option_title`
  MODIFY `option_title_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Title ID';
--
-- AUTO_INCREMENT for table `catalog_product_option_type_price`
--
ALTER TABLE `catalog_product_option_type_price`
  MODIFY `option_type_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Type Price ID';
--
-- AUTO_INCREMENT for table `catalog_product_option_type_title`
--
ALTER TABLE `catalog_product_option_type_title`
  MODIFY `option_type_title_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Type Title ID';
--
-- AUTO_INCREMENT for table `catalog_product_option_type_value`
--
ALTER TABLE `catalog_product_option_type_value`
  MODIFY `option_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Type ID';
--
-- AUTO_INCREMENT for table `catalog_product_super_attribute`
--
ALTER TABLE `catalog_product_super_attribute`
  MODIFY `product_super_attribute_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product Super Attribute ID';
--
-- AUTO_INCREMENT for table `catalog_product_super_attribute_label`
--
ALTER TABLE `catalog_product_super_attribute_label`
  MODIFY `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID';
--
-- AUTO_INCREMENT for table `catalog_product_super_attribute_pricing`
--
ALTER TABLE `catalog_product_super_attribute_pricing`
  MODIFY `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID';
--
-- AUTO_INCREMENT for table `catalog_product_super_link`
--
ALTER TABLE `catalog_product_super_link`
  MODIFY `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link ID';
--
-- AUTO_INCREMENT for table `checkout_agreement`
--
ALTER TABLE `checkout_agreement`
  MODIFY `agreement_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Agreement Id';
--
-- AUTO_INCREMENT for table `cms_block`
--
ALTER TABLE `cms_block`
  MODIFY `block_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Block ID',AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cms_page`
--
ALTER TABLE `cms_page`
  MODIFY `page_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Page ID',AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `core_config_data`
--
ALTER TABLE `core_config_data`
  MODIFY `config_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Config Id',AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `core_email_template`
--
ALTER TABLE `core_email_template`
  MODIFY `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Template Id';
--
-- AUTO_INCREMENT for table `core_flag`
--
ALTER TABLE `core_flag`
  MODIFY `flag_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Flag Id',AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `core_layout_link`
--
ALTER TABLE `core_layout_link`
  MODIFY `layout_link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link Id';
--
-- AUTO_INCREMENT for table `core_layout_update`
--
ALTER TABLE `core_layout_update`
  MODIFY `layout_update_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Layout Update Id';
--
-- AUTO_INCREMENT for table `core_store`
--
ALTER TABLE `core_store`
  MODIFY `store_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Store Id',AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `core_store_group`
--
ALTER TABLE `core_store_group`
  MODIFY `group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Group Id',AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `core_translate`
--
ALTER TABLE `core_translate`
  MODIFY `key_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Key Id of Translation';
--
-- AUTO_INCREMENT for table `core_url_rewrite`
--
ALTER TABLE `core_url_rewrite`
  MODIFY `url_rewrite_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rewrite Id',AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `core_variable`
--
ALTER TABLE `core_variable`
  MODIFY `variable_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Variable Id';
--
-- AUTO_INCREMENT for table `core_variable_value`
--
ALTER TABLE `core_variable_value`
  MODIFY `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Variable Value Id';
--
-- AUTO_INCREMENT for table `core_website`
--
ALTER TABLE `core_website`
  MODIFY `website_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Website Id',AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `coupon_aggregated`
--
ALTER TABLE `coupon_aggregated`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `coupon_aggregated_order`
--
ALTER TABLE `coupon_aggregated_order`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `coupon_aggregated_updated`
--
ALTER TABLE `coupon_aggregated_updated`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `cron_schedule`
--
ALTER TABLE `cron_schedule`
  MODIFY `schedule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Schedule Id';
--
-- AUTO_INCREMENT for table `customer_address_entity`
--
ALTER TABLE `customer_address_entity`
  MODIFY `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `customer_address_entity_datetime`
--
ALTER TABLE `customer_address_entity_datetime`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `customer_address_entity_decimal`
--
ALTER TABLE `customer_address_entity_decimal`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `customer_address_entity_int`
--
ALTER TABLE `customer_address_entity_int`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `customer_address_entity_text`
--
ALTER TABLE `customer_address_entity_text`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `customer_address_entity_varchar`
--
ALTER TABLE `customer_address_entity_varchar`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `customer_entity`
--
ALTER TABLE `customer_entity`
  MODIFY `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `customer_entity_datetime`
--
ALTER TABLE `customer_entity_datetime`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `customer_entity_decimal`
--
ALTER TABLE `customer_entity_decimal`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `customer_entity_int`
--
ALTER TABLE `customer_entity_int`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `customer_entity_text`
--
ALTER TABLE `customer_entity_text`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `customer_entity_varchar`
--
ALTER TABLE `customer_entity_varchar`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `customer_group`
--
ALTER TABLE `customer_group`
  MODIFY `customer_group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Customer Group Id',AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `dataflow_batch`
--
ALTER TABLE `dataflow_batch`
  MODIFY `batch_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Batch Id';
--
-- AUTO_INCREMENT for table `dataflow_batch_export`
--
ALTER TABLE `dataflow_batch_export`
  MODIFY `batch_export_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Batch Export Id';
--
-- AUTO_INCREMENT for table `dataflow_batch_import`
--
ALTER TABLE `dataflow_batch_import`
  MODIFY `batch_import_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Batch Import Id';
--
-- AUTO_INCREMENT for table `dataflow_import_data`
--
ALTER TABLE `dataflow_import_data`
  MODIFY `import_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Import Id';
--
-- AUTO_INCREMENT for table `dataflow_profile`
--
ALTER TABLE `dataflow_profile`
  MODIFY `profile_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Profile Id',AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `dataflow_profile_history`
--
ALTER TABLE `dataflow_profile_history`
  MODIFY `history_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'History Id',AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `dataflow_session`
--
ALTER TABLE `dataflow_session`
  MODIFY `session_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Session Id';
--
-- AUTO_INCREMENT for table `design_change`
--
ALTER TABLE `design_change`
  MODIFY `design_change_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Design Change Id';
--
-- AUTO_INCREMENT for table `directory_country_format`
--
ALTER TABLE `directory_country_format`
  MODIFY `country_format_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Country Format Id';
--
-- AUTO_INCREMENT for table `directory_country_region`
--
ALTER TABLE `directory_country_region`
  MODIFY `region_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Region Id',AUTO_INCREMENT=485;
--
-- AUTO_INCREMENT for table `downloadable_link`
--
ALTER TABLE `downloadable_link`
  MODIFY `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link ID';
--
-- AUTO_INCREMENT for table `downloadable_link_price`
--
ALTER TABLE `downloadable_link_price`
  MODIFY `price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Price ID';
--
-- AUTO_INCREMENT for table `downloadable_link_purchased`
--
ALTER TABLE `downloadable_link_purchased`
  MODIFY `purchased_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Purchased ID';
--
-- AUTO_INCREMENT for table `downloadable_link_purchased_item`
--
ALTER TABLE `downloadable_link_purchased_item`
  MODIFY `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item ID';
--
-- AUTO_INCREMENT for table `downloadable_link_title`
--
ALTER TABLE `downloadable_link_title`
  MODIFY `title_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Title ID';
--
-- AUTO_INCREMENT for table `downloadable_sample`
--
ALTER TABLE `downloadable_sample`
  MODIFY `sample_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Sample ID';
--
-- AUTO_INCREMENT for table `downloadable_sample_title`
--
ALTER TABLE `downloadable_sample_title`
  MODIFY `title_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Title ID';
--
-- AUTO_INCREMENT for table `eav_attribute`
--
ALTER TABLE `eav_attribute`
  MODIFY `attribute_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Id',AUTO_INCREMENT=133;
--
-- AUTO_INCREMENT for table `eav_attribute_group`
--
ALTER TABLE `eav_attribute_group`
  MODIFY `attribute_group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Group Id',AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `eav_attribute_label`
--
ALTER TABLE `eav_attribute_label`
  MODIFY `attribute_label_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Label Id';
--
-- AUTO_INCREMENT for table `eav_attribute_option`
--
ALTER TABLE `eav_attribute_option`
  MODIFY `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Id',AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `eav_attribute_option_value`
--
ALTER TABLE `eav_attribute_option_value`
  MODIFY `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value Id',AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `eav_attribute_set`
--
ALTER TABLE `eav_attribute_set`
  MODIFY `attribute_set_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Set Id',AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `eav_entity`
--
ALTER TABLE `eav_entity`
  MODIFY `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `eav_entity_attribute`
--
ALTER TABLE `eav_entity_attribute`
  MODIFY `entity_attribute_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Attribute Id',AUTO_INCREMENT=131;
--
-- AUTO_INCREMENT for table `eav_entity_datetime`
--
ALTER TABLE `eav_entity_datetime`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `eav_entity_decimal`
--
ALTER TABLE `eav_entity_decimal`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `eav_entity_int`
--
ALTER TABLE `eav_entity_int`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `eav_entity_store`
--
ALTER TABLE `eav_entity_store`
  MODIFY `entity_store_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Store Id';
--
-- AUTO_INCREMENT for table `eav_entity_text`
--
ALTER TABLE `eav_entity_text`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `eav_entity_type`
--
ALTER TABLE `eav_entity_type`
  MODIFY `entity_type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Type Id',AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `eav_entity_varchar`
--
ALTER TABLE `eav_entity_varchar`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `eav_form_element`
--
ALTER TABLE `eav_form_element`
  MODIFY `element_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Element Id',AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `eav_form_fieldset`
--
ALTER TABLE `eav_form_fieldset`
  MODIFY `fieldset_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Fieldset Id',AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `eav_form_type`
--
ALTER TABLE `eav_form_type`
  MODIFY `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Type Id',AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `finware_index`
--
ALTER TABLE `finware_index`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `gift_message`
--
ALTER TABLE `gift_message`
  MODIFY `gift_message_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'GiftMessage Id';
--
-- AUTO_INCREMENT for table `importexport_importdata`
--
ALTER TABLE `importexport_importdata`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `index_event`
--
ALTER TABLE `index_event`
  MODIFY `event_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Event Id',AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `index_process`
--
ALTER TABLE `index_process`
  MODIFY `process_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Process Id',AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `log_customer`
--
ALTER TABLE `log_customer`
  MODIFY `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Log ID';
--
-- AUTO_INCREMENT for table `log_summary`
--
ALTER TABLE `log_summary`
  MODIFY `summary_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Summary ID';
--
-- AUTO_INCREMENT for table `log_summary_type`
--
ALTER TABLE `log_summary_type`
  MODIFY `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Type ID',AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `log_url_info`
--
ALTER TABLE `log_url_info`
  MODIFY `url_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'URL ID',AUTO_INCREMENT=731;
--
-- AUTO_INCREMENT for table `log_visitor`
--
ALTER TABLE `log_visitor`
  MODIFY `visitor_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Visitor ID',AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `log_visitor_online`
--
ALTER TABLE `log_visitor_online`
  MODIFY `visitor_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Visitor ID';
--
-- AUTO_INCREMENT for table `newsletter_problem`
--
ALTER TABLE `newsletter_problem`
  MODIFY `problem_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Problem Id';
--
-- AUTO_INCREMENT for table `newsletter_queue`
--
ALTER TABLE `newsletter_queue`
  MODIFY `queue_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Queue Id';
--
-- AUTO_INCREMENT for table `newsletter_queue_link`
--
ALTER TABLE `newsletter_queue_link`
  MODIFY `queue_link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Queue Link Id';
--
-- AUTO_INCREMENT for table `newsletter_subscriber`
--
ALTER TABLE `newsletter_subscriber`
  MODIFY `subscriber_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Subscriber Id';
--
-- AUTO_INCREMENT for table `newsletter_template`
--
ALTER TABLE `newsletter_template`
  MODIFY `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Template Id';
--
-- AUTO_INCREMENT for table `oauth_consumer`
--
ALTER TABLE `oauth_consumer`
  MODIFY `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `oauth_token`
--
ALTER TABLE `oauth_token`
  MODIFY `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID';
--
-- AUTO_INCREMENT for table `oc_product_categories`
--
ALTER TABLE `oc_product_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `oc_product_color`
--
ALTER TABLE `oc_product_color`
  MODIFY `color_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `oc_product_customize`
--
ALTER TABLE `oc_product_customize`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=157;
--
-- AUTO_INCREMENT for table `oc_product_hotspot`
--
ALTER TABLE `oc_product_hotspot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `oc_product_interactivity`
--
ALTER TABLE `oc_product_interactivity`
  MODIFY `interactivity_id` int(200) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1659;
--
-- AUTO_INCREMENT for table `oc_product_pattern`
--
ALTER TABLE `oc_product_pattern`
AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `oc_product_pattern1`
--
ALTER TABLE `oc_product_pattern1`
  MODIFY `pattern_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `oc_product_troubleshoot_type`
--
ALTER TABLE `oc_product_troubleshoot_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `paypal_cert`
--
ALTER TABLE `paypal_cert`
  MODIFY `cert_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Cert Id';
--
-- AUTO_INCREMENT for table `paypal_payment_transaction`
--
ALTER TABLE `paypal_payment_transaction`
  MODIFY `transaction_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `paypal_settlement_report`
--
ALTER TABLE `paypal_settlement_report`
  MODIFY `report_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Report Id';
--
-- AUTO_INCREMENT for table `paypal_settlement_report_row`
--
ALTER TABLE `paypal_settlement_report_row`
  MODIFY `row_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Row Id';
--
-- AUTO_INCREMENT for table `persistent_session`
--
ALTER TABLE `persistent_session`
  MODIFY `persistent_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Session id';
--
-- AUTO_INCREMENT for table `poll`
--
ALTER TABLE `poll`
  MODIFY `poll_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Poll Id',AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `poll_answer`
--
ALTER TABLE `poll_answer`
  MODIFY `answer_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Answer Id',AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `poll_vote`
--
ALTER TABLE `poll_vote`
  MODIFY `vote_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Vote Id';
--
-- AUTO_INCREMENT for table `product_alert_price`
--
ALTER TABLE `product_alert_price`
  MODIFY `alert_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product alert price id';
--
-- AUTO_INCREMENT for table `product_alert_stock`
--
ALTER TABLE `product_alert_stock`
  MODIFY `alert_stock_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product alert stock id';
--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `rating_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rating Id',AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `rating_entity`
--
ALTER TABLE `rating_entity`
  MODIFY `entity_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `rating_option`
--
ALTER TABLE `rating_option`
  MODIFY `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rating Option Id',AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `rating_option_vote`
--
ALTER TABLE `rating_option_vote`
  MODIFY `vote_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Vote id';
--
-- AUTO_INCREMENT for table `rating_option_vote_aggregated`
--
ALTER TABLE `rating_option_vote_aggregated`
  MODIFY `primary_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Vote aggregation id';
--
-- AUTO_INCREMENT for table `report_compared_product_index`
--
ALTER TABLE `report_compared_product_index`
  MODIFY `index_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Index Id';
--
-- AUTO_INCREMENT for table `report_event`
--
ALTER TABLE `report_event`
  MODIFY `event_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Event Id',AUTO_INCREMENT=92;
--
-- AUTO_INCREMENT for table `report_event_types`
--
ALTER TABLE `report_event_types`
  MODIFY `event_type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Event Type Id',AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `report_viewed_product_aggregated_daily`
--
ALTER TABLE `report_viewed_product_aggregated_daily`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `report_viewed_product_aggregated_monthly`
--
ALTER TABLE `report_viewed_product_aggregated_monthly`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `report_viewed_product_aggregated_yearly`
--
ALTER TABLE `report_viewed_product_aggregated_yearly`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `report_viewed_product_index`
--
ALTER TABLE `report_viewed_product_index`
  MODIFY `index_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Index Id',AUTO_INCREMENT=92;
--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Review id';
--
-- AUTO_INCREMENT for table `review_detail`
--
ALTER TABLE `review_detail`
  MODIFY `detail_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Review detail id';
--
-- AUTO_INCREMENT for table `review_entity`
--
ALTER TABLE `review_entity`
  MODIFY `entity_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Review entity id',AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `review_entity_summary`
--
ALTER TABLE `review_entity_summary`
  MODIFY `primary_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Summary review entity id';
--
-- AUTO_INCREMENT for table `review_status`
--
ALTER TABLE `review_status`
  MODIFY `status_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Status id',AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `salesrule`
--
ALTER TABLE `salesrule`
  MODIFY `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Id';
--
-- AUTO_INCREMENT for table `salesrule_coupon`
--
ALTER TABLE `salesrule_coupon`
  MODIFY `coupon_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Coupon Id';
--
-- AUTO_INCREMENT for table `salesrule_customer`
--
ALTER TABLE `salesrule_customer`
  MODIFY `rule_customer_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Customer Id';
--
-- AUTO_INCREMENT for table `salesrule_label`
--
ALTER TABLE `salesrule_label`
  MODIFY `label_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Label Id';
--
-- AUTO_INCREMENT for table `sales_bestsellers_aggregated_daily`
--
ALTER TABLE `sales_bestsellers_aggregated_daily`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `sales_bestsellers_aggregated_monthly`
--
ALTER TABLE `sales_bestsellers_aggregated_monthly`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `sales_bestsellers_aggregated_yearly`
--
ALTER TABLE `sales_bestsellers_aggregated_yearly`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `sales_billing_agreement`
--
ALTER TABLE `sales_billing_agreement`
  MODIFY `agreement_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Agreement Id';
--
-- AUTO_INCREMENT for table `sales_flat_creditmemo`
--
ALTER TABLE `sales_flat_creditmemo`
  MODIFY `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `sales_flat_creditmemo_comment`
--
ALTER TABLE `sales_flat_creditmemo_comment`
  MODIFY `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `sales_flat_creditmemo_item`
--
ALTER TABLE `sales_flat_creditmemo_item`
  MODIFY `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `sales_flat_invoice`
--
ALTER TABLE `sales_flat_invoice`
  MODIFY `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `sales_flat_invoice_comment`
--
ALTER TABLE `sales_flat_invoice_comment`
  MODIFY `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `sales_flat_invoice_item`
--
ALTER TABLE `sales_flat_invoice_item`
  MODIFY `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `sales_flat_order`
--
ALTER TABLE `sales_flat_order`
  MODIFY `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `sales_flat_order_address`
--
ALTER TABLE `sales_flat_order_address`
  MODIFY `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `sales_flat_order_item`
--
ALTER TABLE `sales_flat_order_item`
  MODIFY `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item Id';
--
-- AUTO_INCREMENT for table `sales_flat_order_payment`
--
ALTER TABLE `sales_flat_order_payment`
  MODIFY `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `sales_flat_order_status_history`
--
ALTER TABLE `sales_flat_order_status_history`
  MODIFY `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `sales_flat_quote`
--
ALTER TABLE `sales_flat_quote`
  MODIFY `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `sales_flat_quote_address`
--
ALTER TABLE `sales_flat_quote_address`
  MODIFY `address_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Address Id';
--
-- AUTO_INCREMENT for table `sales_flat_quote_address_item`
--
ALTER TABLE `sales_flat_quote_address_item`
  MODIFY `address_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Address Item Id';
--
-- AUTO_INCREMENT for table `sales_flat_quote_item`
--
ALTER TABLE `sales_flat_quote_item`
  MODIFY `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item Id';
--
-- AUTO_INCREMENT for table `sales_flat_quote_item_option`
--
ALTER TABLE `sales_flat_quote_item_option`
  MODIFY `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Id';
--
-- AUTO_INCREMENT for table `sales_flat_quote_payment`
--
ALTER TABLE `sales_flat_quote_payment`
  MODIFY `payment_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Payment Id';
--
-- AUTO_INCREMENT for table `sales_flat_quote_shipping_rate`
--
ALTER TABLE `sales_flat_quote_shipping_rate`
  MODIFY `rate_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rate Id';
--
-- AUTO_INCREMENT for table `sales_flat_shipment`
--
ALTER TABLE `sales_flat_shipment`
  MODIFY `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `sales_flat_shipment_comment`
--
ALTER TABLE `sales_flat_shipment_comment`
  MODIFY `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `sales_flat_shipment_item`
--
ALTER TABLE `sales_flat_shipment_item`
  MODIFY `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `sales_flat_shipment_track`
--
ALTER TABLE `sales_flat_shipment_track`
  MODIFY `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `sales_invoiced_aggregated`
--
ALTER TABLE `sales_invoiced_aggregated`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `sales_invoiced_aggregated_order`
--
ALTER TABLE `sales_invoiced_aggregated_order`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `sales_order_aggregated_created`
--
ALTER TABLE `sales_order_aggregated_created`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `sales_order_aggregated_updated`
--
ALTER TABLE `sales_order_aggregated_updated`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `sales_order_tax`
--
ALTER TABLE `sales_order_tax`
  MODIFY `tax_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Tax Id';
--
-- AUTO_INCREMENT for table `sales_order_tax_item`
--
ALTER TABLE `sales_order_tax_item`
  MODIFY `tax_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Tax Item Id';
--
-- AUTO_INCREMENT for table `sales_payment_transaction`
--
ALTER TABLE `sales_payment_transaction`
  MODIFY `transaction_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Transaction Id';
--
-- AUTO_INCREMENT for table `sales_recurring_profile`
--
ALTER TABLE `sales_recurring_profile`
  MODIFY `profile_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Profile Id';
--
-- AUTO_INCREMENT for table `sales_recurring_profile_order`
--
ALTER TABLE `sales_recurring_profile_order`
  MODIFY `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link Id';
--
-- AUTO_INCREMENT for table `sales_refunded_aggregated`
--
ALTER TABLE `sales_refunded_aggregated`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `sales_refunded_aggregated_order`
--
ALTER TABLE `sales_refunded_aggregated_order`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `sales_shipping_aggregated`
--
ALTER TABLE `sales_shipping_aggregated`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `sales_shipping_aggregated_order`
--
ALTER TABLE `sales_shipping_aggregated_order`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `sendfriend_log`
--
ALTER TABLE `sendfriend_log`
  MODIFY `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Log ID';
--
-- AUTO_INCREMENT for table `shipping_tablerate`
--
ALTER TABLE `shipping_tablerate`
  MODIFY `pk` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary key';
--
-- AUTO_INCREMENT for table `sitemap`
--
ALTER TABLE `sitemap`
  MODIFY `sitemap_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Sitemap Id';
--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `tag_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Tag Id';
--
-- AUTO_INCREMENT for table `tag_relation`
--
ALTER TABLE `tag_relation`
  MODIFY `tag_relation_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Tag Relation Id';
--
-- AUTO_INCREMENT for table `tax_calculation`
--
ALTER TABLE `tax_calculation`
  MODIFY `tax_calculation_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Id',AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tax_calculation_rate`
--
ALTER TABLE `tax_calculation_rate`
  MODIFY `tax_calculation_rate_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rate Id',AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tax_calculation_rate_title`
--
ALTER TABLE `tax_calculation_rate_title`
  MODIFY `tax_calculation_rate_title_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rate Title Id';
--
-- AUTO_INCREMENT for table `tax_calculation_rule`
--
ALTER TABLE `tax_calculation_rule`
  MODIFY `tax_calculation_rule_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rule Id',AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tax_class`
--
ALTER TABLE `tax_class`
  MODIFY `class_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Class Id',AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tax_order_aggregated_created`
--
ALTER TABLE `tax_order_aggregated_created`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `tax_order_aggregated_updated`
--
ALTER TABLE `tax_order_aggregated_updated`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `weee_tax`
--
ALTER TABLE `weee_tax`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `widget`
--
ALTER TABLE `widget`
  MODIFY `widget_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Widget Id';
--
-- AUTO_INCREMENT for table `widget_instance`
--
ALTER TABLE `widget_instance`
  MODIFY `instance_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Instance Id';
--
-- AUTO_INCREMENT for table `widget_instance_page`
--
ALTER TABLE `widget_instance_page`
  MODIFY `page_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Page Id';
--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Wishlist ID';
--
-- AUTO_INCREMENT for table `wishlist_item`
--
ALTER TABLE `wishlist_item`
  MODIFY `wishlist_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Wishlist item ID';
--
-- AUTO_INCREMENT for table `wishlist_item_option`
--
ALTER TABLE `wishlist_item_option`
  MODIFY `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Id';
--
-- AUTO_INCREMENT for table `xmlconnect_application`
--
ALTER TABLE `xmlconnect_application`
  MODIFY `application_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Application Id';
--
-- AUTO_INCREMENT for table `xmlconnect_history`
--
ALTER TABLE `xmlconnect_history`
  MODIFY `history_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'History Id';
--
-- AUTO_INCREMENT for table `xmlconnect_images`
--
ALTER TABLE `xmlconnect_images`
  MODIFY `image_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Image Id';
--
-- AUTO_INCREMENT for table `xmlconnect_notification_template`
--
ALTER TABLE `xmlconnect_notification_template`
  MODIFY `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Template Id';
--
-- AUTO_INCREMENT for table `xmlconnect_queue`
--
ALTER TABLE `xmlconnect_queue`
  MODIFY `queue_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Queue Id';
--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_rule`
--
ALTER TABLE `admin_rule`
ADD CONSTRAINT `FK_ADMIN_RULE_ROLE_ID_ADMIN_ROLE_ROLE_ID` FOREIGN KEY (`role_id`) REFERENCES `admin_role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `api2_acl_rule`
--
ALTER TABLE `api2_acl_rule`
ADD CONSTRAINT `FK_API2_ACL_RULE_ROLE_ID_API2_ACL_ROLE_ENTITY_ID` FOREIGN KEY (`role_id`) REFERENCES `api2_acl_role` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `api2_acl_user`
--
ALTER TABLE `api2_acl_user`
ADD CONSTRAINT `FK_API2_ACL_USER_ADMIN_ID_ADMIN_USER_USER_ID` FOREIGN KEY (`admin_id`) REFERENCES `admin_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_API2_ACL_USER_ROLE_ID_API2_ACL_ROLE_ENTITY_ID` FOREIGN KEY (`role_id`) REFERENCES `api2_acl_role` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `api_rule`
--
ALTER TABLE `api_rule`
ADD CONSTRAINT `FK_API_RULE_ROLE_ID_API_ROLE_ROLE_ID` FOREIGN KEY (`role_id`) REFERENCES `api_role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `api_session`
--
ALTER TABLE `api_session`
ADD CONSTRAINT `FK_API_SESSION_USER_ID_API_USER_USER_ID` FOREIGN KEY (`user_id`) REFERENCES `api_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cataloginventory_stock_item`
--
ALTER TABLE `cataloginventory_stock_item`
ADD CONSTRAINT `FK_CATINV_STOCK_ITEM_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CATINV_STOCK_ITEM_STOCK_ID_CATINV_STOCK_STOCK_ID` FOREIGN KEY (`stock_id`) REFERENCES `cataloginventory_stock` (`stock_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cataloginventory_stock_status`
--
ALTER TABLE `cataloginventory_stock_status`
ADD CONSTRAINT `FK_CATINV_STOCK_STS_STOCK_ID_CATINV_STOCK_STOCK_ID` FOREIGN KEY (`stock_id`) REFERENCES `cataloginventory_stock` (`stock_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CATINV_STOCK_STS_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CATINV_STOCK_STS_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalogrule_customer_group`
--
ALTER TABLE `catalogrule_customer_group`
ADD CONSTRAINT `FK_CATALOGRULE_CUSTOMER_GROUP_RULE_ID_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `catalogrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CATRULE_CSTR_GROUP_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalogrule_group_website`
--
ALTER TABLE `catalogrule_group_website`
ADD CONSTRAINT `FK_CATRULE_GROUP_WS_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CATALOGRULE_GROUP_WEBSITE_RULE_ID_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `catalogrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CATALOGRULE_GROUP_WEBSITE_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalogrule_product`
--
ALTER TABLE `catalogrule_product`
ADD CONSTRAINT `FK_CATALOGRULE_PRODUCT_RULE_ID_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `catalogrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CATALOGRULE_PRODUCT_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CATRULE_PRD_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CATRULE_PRD_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalogrule_product_price`
--
ALTER TABLE `catalogrule_product_price`
ADD CONSTRAINT `FK_CATRULE_PRD_PRICE_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CATRULE_PRD_PRICE_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CATALOGRULE_PRODUCT_PRICE_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalogrule_website`
--
ALTER TABLE `catalogrule_website`
ADD CONSTRAINT `FK_CATALOGRULE_WEBSITE_RULE_ID_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `catalogrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CATALOGRULE_WEBSITE_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalogsearch_query`
--
ALTER TABLE `catalogsearch_query`
ADD CONSTRAINT `FK_CATALOGSEARCH_QUERY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalogsearch_result`
--
ALTER TABLE `catalogsearch_result`
ADD CONSTRAINT `FK_CATALOGSEARCH_RESULT_QUERY_ID_CATALOGSEARCH_QUERY_QUERY_ID` FOREIGN KEY (`query_id`) REFERENCES `catalogsearch_query` (`query_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CATSRCH_RESULT_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_category_entity_datetime`
--
ALTER TABLE `catalog_category_entity_datetime`
ADD CONSTRAINT `FK_CAT_CTGR_ENTT_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CAT_CTGR_ENTT_DTIME_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_DATETIME_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_category_entity_decimal`
--
ALTER TABLE `catalog_category_entity_decimal`
ADD CONSTRAINT `FK_CAT_CTGR_ENTT_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CAT_CTGR_ENTT_DEC_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_DECIMAL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_category_entity_int`
--
ALTER TABLE `catalog_category_entity_int`
ADD CONSTRAINT `FK_CAT_CTGR_ENTT_INT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CAT_CTGR_ENTT_INT_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_INT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_category_entity_text`
--
ALTER TABLE `catalog_category_entity_text`
ADD CONSTRAINT `FK_CAT_CTGR_ENTT_TEXT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CAT_CTGR_ENTT_TEXT_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_TEXT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_category_entity_varchar`
--
ALTER TABLE `catalog_category_entity_varchar`
ADD CONSTRAINT `FK_CAT_CTGR_ENTT_VCHR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CAT_CTGR_ENTT_VCHR_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_VARCHAR_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_category_product`
--
ALTER TABLE `catalog_category_product`
ADD CONSTRAINT `FK_CAT_CTGR_PRD_CTGR_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`category_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CAT_CTGR_PRD_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_category_product_index`
--
ALTER TABLE `catalog_category_product_index`
ADD CONSTRAINT `FK_CATALOG_CATEGORY_PRODUCT_INDEX_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CAT_CTGR_PRD_IDX_CTGR_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`category_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CAT_CTGR_PRD_IDX_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_compare_item`
--
ALTER TABLE `catalog_compare_item`
ADD CONSTRAINT `FK_CATALOG_COMPARE_ITEM_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CAT_CMP_ITEM_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CATALOG_COMPARE_ITEM_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `catalog_eav_attribute`
--
ALTER TABLE `catalog_eav_attribute`
ADD CONSTRAINT `FK_CATALOG_EAV_ATTRIBUTE_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_bundle_option`
--
ALTER TABLE `catalog_product_bundle_option`
ADD CONSTRAINT `FK_CAT_PRD_BNDL_OPT_PARENT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_bundle_option_value`
--
ALTER TABLE `catalog_product_bundle_option_value`
ADD CONSTRAINT `FK_CAT_PRD_BNDL_OPT_VAL_OPT_ID_CAT_PRD_BNDL_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_bundle_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_bundle_price_index`
--
ALTER TABLE `catalog_product_bundle_price_index`
ADD CONSTRAINT `FK_CAT_PRD_BNDL_PRICE_IDX_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CAT_PRD_BNDL_PRICE_IDX_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CAT_PRD_BNDL_PRICE_IDX_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_bundle_selection`
--
ALTER TABLE `catalog_product_bundle_selection`
ADD CONSTRAINT `FK_CAT_PRD_BNDL_SELECTION_OPT_ID_CAT_PRD_BNDL_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_bundle_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CAT_PRD_BNDL_SELECTION_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_bundle_selection_price`
--
ALTER TABLE `catalog_product_bundle_selection_price`
ADD CONSTRAINT `FK_CAT_PRD_BNDL_SELECTION_PRICE_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_DCF37523AA05D770A70AA4ED7C2616E4` FOREIGN KEY (`selection_id`) REFERENCES `catalog_product_bundle_selection` (`selection_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_enabled_index`
--
ALTER TABLE `catalog_product_enabled_index`
ADD CONSTRAINT `FK_CAT_PRD_ENABLED_IDX_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENABLED_INDEX_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_entity`
--
ALTER TABLE `catalog_product_entity`
ADD CONSTRAINT `FK_CAT_PRD_ENTT_ATTR_SET_ID_EAV_ATTR_SET_ATTR_SET_ID` FOREIGN KEY (`attribute_set_id`) REFERENCES `eav_attribute_set` (`attribute_set_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CAT_PRD_ENTT_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_entity_datetime`
--
ALTER TABLE `catalog_product_entity_datetime`
ADD CONSTRAINT `FK_CAT_PRD_ENTT_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CAT_PRD_ENTT_DTIME_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_DATETIME_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_entity_decimal`
--
ALTER TABLE `catalog_product_entity_decimal`
ADD CONSTRAINT `FK_CAT_PRD_ENTT_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CAT_PRD_ENTT_DEC_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_DECIMAL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_entity_gallery`
--
ALTER TABLE `catalog_product_entity_gallery`
ADD CONSTRAINT `FK_CAT_PRD_ENTT_GLR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CAT_PRD_ENTT_GLR_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_GALLERY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_entity_group_price`
--
ALTER TABLE `catalog_product_entity_group_price`
ADD CONSTRAINT `FK_DF909D22C11B60B1E5E3EE64AB220ECE` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CAT_PRD_ENTT_GROUP_PRICE_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CAT_PRD_ENTT_GROUP_PRICE_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_entity_int`
--
ALTER TABLE `catalog_product_entity_int`
ADD CONSTRAINT `FK_CAT_PRD_ENTT_INT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CAT_PRD_ENTT_INT_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_INT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_entity_media_gallery`
--
ALTER TABLE `catalog_product_entity_media_gallery`
ADD CONSTRAINT `FK_CAT_PRD_ENTT_MDA_GLR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CAT_PRD_ENTT_MDA_GLR_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_entity_media_gallery_value`
--
ALTER TABLE `catalog_product_entity_media_gallery_value`
ADD CONSTRAINT `FK_CAT_PRD_ENTT_MDA_GLR_VAL_VAL_ID_CAT_PRD_ENTT_MDA_GLR_VAL_ID` FOREIGN KEY (`value_id`) REFERENCES `catalog_product_entity_media_gallery` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CAT_PRD_ENTT_MDA_GLR_VAL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_entity_text`
--
ALTER TABLE `catalog_product_entity_text`
ADD CONSTRAINT `FK_CAT_PRD_ENTT_TEXT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CAT_PRD_ENTT_TEXT_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_TEXT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_entity_tier_price`
--
ALTER TABLE `catalog_product_entity_tier_price`
ADD CONSTRAINT `FK_6E08D719F0501DD1D8E6D4EFF2511C85` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CAT_PRD_ENTT_TIER_PRICE_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CAT_PRD_ENTT_TIER_PRICE_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_entity_varchar`
--
ALTER TABLE `catalog_product_entity_varchar`
ADD CONSTRAINT `FK_CAT_PRD_ENTT_VCHR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CAT_PRD_ENTT_VCHR_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_VARCHAR_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_index_eav`
--
ALTER TABLE `catalog_product_index_eav`
ADD CONSTRAINT `FK_CAT_PRD_IDX_EAV_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CAT_PRD_IDX_EAV_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CATALOG_PRODUCT_INDEX_EAV_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_index_eav_decimal`
--
ALTER TABLE `catalog_product_index_eav_decimal`
ADD CONSTRAINT `FK_CAT_PRD_IDX_EAV_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CAT_PRD_IDX_EAV_DEC_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CAT_PRD_IDX_EAV_DEC_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_index_group_price`
--
ALTER TABLE `catalog_product_index_group_price`
ADD CONSTRAINT `FK_195DF97C81B0BDD6A2EEC50F870E16D1` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CAT_PRD_IDX_GROUP_PRICE_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CAT_PRD_IDX_GROUP_PRICE_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_index_price`
--
ALTER TABLE `catalog_product_index_price`
ADD CONSTRAINT `FK_CAT_PRD_IDX_PRICE_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CAT_PRD_IDX_PRICE_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CAT_PRD_IDX_PRICE_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_index_tier_price`
--
ALTER TABLE `catalog_product_index_tier_price`
ADD CONSTRAINT `FK_CAT_PRD_IDX_TIER_PRICE_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CAT_PRD_IDX_TIER_PRICE_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CAT_PRD_IDX_TIER_PRICE_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_index_website`
--
ALTER TABLE `catalog_product_index_website`
ADD CONSTRAINT `FK_CAT_PRD_IDX_WS_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_link`
--
ALTER TABLE `catalog_product_link`
ADD CONSTRAINT `FK_CAT_PRD_LNK_LNKED_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`linked_product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CAT_PRD_LNK_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CAT_PRD_LNK_LNK_TYPE_ID_CAT_PRD_LNK_TYPE_LNK_TYPE_ID` FOREIGN KEY (`link_type_id`) REFERENCES `catalog_product_link_type` (`link_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_link_attribute`
--
ALTER TABLE `catalog_product_link_attribute`
ADD CONSTRAINT `FK_CAT_PRD_LNK_ATTR_LNK_TYPE_ID_CAT_PRD_LNK_TYPE_LNK_TYPE_ID` FOREIGN KEY (`link_type_id`) REFERENCES `catalog_product_link_type` (`link_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_link_attribute_decimal`
--
ALTER TABLE `catalog_product_link_attribute_decimal`
ADD CONSTRAINT `FK_CAT_PRD_LNK_ATTR_DEC_LNK_ID_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `catalog_product_link` (`link_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_AB2EFA9A14F7BCF1D5400056203D14B6` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_link_attribute_int`
--
ALTER TABLE `catalog_product_link_attribute_int`
ADD CONSTRAINT `FK_D6D878F8BA2A4282F8DDED7E6E3DE35C` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CAT_PRD_LNK_ATTR_INT_LNK_ID_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `catalog_product_link` (`link_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_link_attribute_varchar`
--
ALTER TABLE `catalog_product_link_attribute_varchar`
ADD CONSTRAINT `FK_CAT_PRD_LNK_ATTR_VCHR_LNK_ID_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `catalog_product_link` (`link_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_DEE9C4DA61CFCC01DFCF50F0D79CEA51` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_option`
--
ALTER TABLE `catalog_product_option`
ADD CONSTRAINT `FK_CAT_PRD_OPT_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_option_price`
--
ALTER TABLE `catalog_product_option_price`
ADD CONSTRAINT `FK_CAT_PRD_OPT_PRICE_OPT_ID_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CATALOG_PRODUCT_OPTION_PRICE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_option_title`
--
ALTER TABLE `catalog_product_option_title`
ADD CONSTRAINT `FK_CAT_PRD_OPT_TTL_OPT_ID_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CATALOG_PRODUCT_OPTION_TITLE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_option_type_price`
--
ALTER TABLE `catalog_product_option_type_price`
ADD CONSTRAINT `FK_B523E3378E8602F376CC415825576B7F` FOREIGN KEY (`option_type_id`) REFERENCES `catalog_product_option_type_value` (`option_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CAT_PRD_OPT_TYPE_PRICE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_option_type_title`
--
ALTER TABLE `catalog_product_option_type_title`
ADD CONSTRAINT `FK_C085B9CF2C2A302E8043FDEA1937D6A2` FOREIGN KEY (`option_type_id`) REFERENCES `catalog_product_option_type_value` (`option_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CAT_PRD_OPT_TYPE_TTL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_option_type_value`
--
ALTER TABLE `catalog_product_option_type_value`
ADD CONSTRAINT `FK_CAT_PRD_OPT_TYPE_VAL_OPT_ID_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_relation`
--
ALTER TABLE `catalog_product_relation`
ADD CONSTRAINT `FK_CAT_PRD_RELATION_CHILD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`child_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CAT_PRD_RELATION_PARENT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_super_attribute`
--
ALTER TABLE `catalog_product_super_attribute`
ADD CONSTRAINT `FK_CAT_PRD_SPR_ATTR_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `catalog_product_super_attribute_label`
--
ALTER TABLE `catalog_product_super_attribute_label`
ADD CONSTRAINT `FK_309442281DF7784210ED82B2CC51E5D5` FOREIGN KEY (`product_super_attribute_id`) REFERENCES `catalog_product_super_attribute` (`product_super_attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CAT_PRD_SPR_ATTR_LBL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_super_attribute_pricing`
--
ALTER TABLE `catalog_product_super_attribute_pricing`
ADD CONSTRAINT `FK_CAT_PRD_SPR_ATTR_PRICING_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CDE8813117106CFAA3AD209358F66332` FOREIGN KEY (`product_super_attribute_id`) REFERENCES `catalog_product_super_attribute` (`product_super_attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_super_link`
--
ALTER TABLE `catalog_product_super_link`
ADD CONSTRAINT `FK_CAT_PRD_SPR_LNK_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CAT_PRD_SPR_LNK_PARENT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_website`
--
ALTER TABLE `catalog_product_website`
ADD CONSTRAINT `FK_CATALOG_PRODUCT_WEBSITE_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CAT_PRD_WS_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `checkout_agreement_store`
--
ALTER TABLE `checkout_agreement_store`
ADD CONSTRAINT `FK_CHKT_AGRT_STORE_AGRT_ID_CHKT_AGRT_AGRT_ID` FOREIGN KEY (`agreement_id`) REFERENCES `checkout_agreement` (`agreement_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CHECKOUT_AGREEMENT_STORE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cms_block_store`
--
ALTER TABLE `cms_block_store`
ADD CONSTRAINT `FK_CMS_BLOCK_STORE_BLOCK_ID_CMS_BLOCK_BLOCK_ID` FOREIGN KEY (`block_id`) REFERENCES `cms_block` (`block_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CMS_BLOCK_STORE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cms_page_store`
--
ALTER TABLE `cms_page_store`
ADD CONSTRAINT `FK_CMS_PAGE_STORE_PAGE_ID_CMS_PAGE_PAGE_ID` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`page_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CMS_PAGE_STORE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `core_layout_link`
--
ALTER TABLE `core_layout_link`
ADD CONSTRAINT `FK_CORE_LAYOUT_LINK_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CORE_LYT_LNK_LYT_UPDATE_ID_CORE_LYT_UPDATE_LYT_UPDATE_ID` FOREIGN KEY (`layout_update_id`) REFERENCES `core_layout_update` (`layout_update_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `core_store`
--
ALTER TABLE `core_store`
ADD CONSTRAINT `FK_CORE_STORE_GROUP_ID_CORE_STORE_GROUP_GROUP_ID` FOREIGN KEY (`group_id`) REFERENCES `core_store_group` (`group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CORE_STORE_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `core_store_group`
--
ALTER TABLE `core_store_group`
ADD CONSTRAINT `FK_CORE_STORE_GROUP_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `core_translate`
--
ALTER TABLE `core_translate`
ADD CONSTRAINT `FK_CORE_TRANSLATE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `core_url_rewrite`
--
ALTER TABLE `core_url_rewrite`
ADD CONSTRAINT `FK_CORE_URL_REWRITE_PRODUCT_ID_CATALOG_CATEGORY_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CORE_URL_REWRITE_CTGR_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`category_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CORE_URL_REWRITE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `core_variable_value`
--
ALTER TABLE `core_variable_value`
ADD CONSTRAINT `FK_CORE_VARIABLE_VALUE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CORE_VARIABLE_VALUE_VARIABLE_ID_CORE_VARIABLE_VARIABLE_ID` FOREIGN KEY (`variable_id`) REFERENCES `core_variable` (`variable_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `coupon_aggregated`
--
ALTER TABLE `coupon_aggregated`
ADD CONSTRAINT `FK_COUPON_AGGREGATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `coupon_aggregated_order`
--
ALTER TABLE `coupon_aggregated_order`
ADD CONSTRAINT `FK_COUPON_AGGREGATED_ORDER_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `coupon_aggregated_updated`
--
ALTER TABLE `coupon_aggregated_updated`
ADD CONSTRAINT `FK_COUPON_AGGREGATED_UPDATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_address_entity`
--
ALTER TABLE `customer_address_entity`
ADD CONSTRAINT `FK_CUSTOMER_ADDRESS_ENTITY_PARENT_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_address_entity_datetime`
--
ALTER TABLE `customer_address_entity_datetime`
ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_DTIME_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_DTIME_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_address_entity_decimal`
--
ALTER TABLE `customer_address_entity_decimal`
ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_DEC_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_DEC_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_address_entity_int`
--
ALTER TABLE `customer_address_entity_int`
ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_INT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_INT_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_INT_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_address_entity_text`
--
ALTER TABLE `customer_address_entity_text`
ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_TEXT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_TEXT_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_TEXT_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_address_entity_varchar`
--
ALTER TABLE `customer_address_entity_varchar`
ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_VCHR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_VCHR_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_VCHR_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_eav_attribute`
--
ALTER TABLE `customer_eav_attribute`
ADD CONSTRAINT `FK_CSTR_EAV_ATTR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_eav_attribute_website`
--
ALTER TABLE `customer_eav_attribute_website`
ADD CONSTRAINT `FK_CSTR_EAV_ATTR_WS_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CSTR_EAV_ATTR_WS_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_entity`
--
ALTER TABLE `customer_entity`
ADD CONSTRAINT `FK_CUSTOMER_ENTITY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CUSTOMER_ENTITY_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `customer_entity_datetime`
--
ALTER TABLE `customer_entity_datetime`
ADD CONSTRAINT `FK_CSTR_ENTT_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CUSTOMER_ENTITY_DATETIME_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CSTR_ENTT_DTIME_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_entity_decimal`
--
ALTER TABLE `customer_entity_decimal`
ADD CONSTRAINT `FK_CSTR_ENTT_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CSTR_ENTT_DEC_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_entity_int`
--
ALTER TABLE `customer_entity_int`
ADD CONSTRAINT `FK_CUSTOMER_ENTITY_INT_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CUSTOMER_ENTITY_INT_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CSTR_ENTT_INT_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_entity_text`
--
ALTER TABLE `customer_entity_text`
ADD CONSTRAINT `FK_CUSTOMER_ENTITY_TEXT_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CUSTOMER_ENTITY_TEXT_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CSTR_ENTT_TEXT_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_entity_varchar`
--
ALTER TABLE `customer_entity_varchar`
ADD CONSTRAINT `FK_CSTR_ENTT_VCHR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_CSTR_ENTT_VCHR_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_form_attribute`
--
ALTER TABLE `customer_form_attribute`
ADD CONSTRAINT `FK_CSTR_FORM_ATTR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dataflow_batch`
--
ALTER TABLE `dataflow_batch`
ADD CONSTRAINT `FK_DATAFLOW_BATCH_PROFILE_ID_DATAFLOW_PROFILE_PROFILE_ID` FOREIGN KEY (`profile_id`) REFERENCES `dataflow_profile` (`profile_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
ADD CONSTRAINT `FK_DATAFLOW_BATCH_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `dataflow_batch_export`
--
ALTER TABLE `dataflow_batch_export`
ADD CONSTRAINT `FK_DATAFLOW_BATCH_EXPORT_BATCH_ID_DATAFLOW_BATCH_BATCH_ID` FOREIGN KEY (`batch_id`) REFERENCES `dataflow_batch` (`batch_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `dataflow_batch_import`
--
ALTER TABLE `dataflow_batch_import`
ADD CONSTRAINT `FK_DATAFLOW_BATCH_IMPORT_BATCH_ID_DATAFLOW_BATCH_BATCH_ID` FOREIGN KEY (`batch_id`) REFERENCES `dataflow_batch` (`batch_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `dataflow_import_data`
--
ALTER TABLE `dataflow_import_data`
ADD CONSTRAINT `FK_DATAFLOW_IMPORT_DATA_SESSION_ID_DATAFLOW_SESSION_SESSION_ID` FOREIGN KEY (`session_id`) REFERENCES `dataflow_session` (`session_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dataflow_profile_history`
--
ALTER TABLE `dataflow_profile_history`
ADD CONSTRAINT `FK_AEA06B0C500063D3CE6EA671AE776645` FOREIGN KEY (`profile_id`) REFERENCES `dataflow_profile` (`profile_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `design_change`
--
ALTER TABLE `design_change`
ADD CONSTRAINT `FK_DESIGN_CHANGE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `directory_country_region_name`
--
ALTER TABLE `directory_country_region_name`
ADD CONSTRAINT `FK_D7CFDEB379F775328EB6F62695E2B3E1` FOREIGN KEY (`region_id`) REFERENCES `directory_country_region` (`region_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `downloadable_link`
--
ALTER TABLE `downloadable_link`
ADD CONSTRAINT `FK_DOWNLOADABLE_LINK_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `downloadable_link_price`
--
ALTER TABLE `downloadable_link_price`
ADD CONSTRAINT `FK_DOWNLOADABLE_LINK_PRICE_LINK_ID_DOWNLOADABLE_LINK_LINK_ID` FOREIGN KEY (`link_id`) REFERENCES `downloadable_link` (`link_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_DOWNLOADABLE_LINK_PRICE_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `downloadable_link_purchased`
--
ALTER TABLE `downloadable_link_purchased`
ADD CONSTRAINT `FK_DL_LNK_PURCHASED_CSTR_ID_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
ADD CONSTRAINT `FK_DL_LNK_PURCHASED_ORDER_ID_SALES_FLAT_ORDER_ENTT_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `downloadable_link_purchased_item`
--
ALTER TABLE `downloadable_link_purchased_item`
ADD CONSTRAINT `FK_46CC8E252307CE62F00A8F1887512A39` FOREIGN KEY (`purchased_id`) REFERENCES `downloadable_link_purchased` (`purchased_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_B219BF25756700DEE44550B21220ECCE` FOREIGN KEY (`order_item_id`) REFERENCES `sales_flat_order_item` (`item_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `downloadable_link_title`
--
ALTER TABLE `downloadable_link_title`
ADD CONSTRAINT `FK_DOWNLOADABLE_LINK_TITLE_LINK_ID_DOWNLOADABLE_LINK_LINK_ID` FOREIGN KEY (`link_id`) REFERENCES `downloadable_link` (`link_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_DOWNLOADABLE_LINK_TITLE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `downloadable_sample`
--
ALTER TABLE `downloadable_sample`
ADD CONSTRAINT `FK_DL_SAMPLE_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `downloadable_sample_title`
--
ALTER TABLE `downloadable_sample_title`
ADD CONSTRAINT `FK_DL_SAMPLE_TTL_SAMPLE_ID_DL_SAMPLE_SAMPLE_ID` FOREIGN KEY (`sample_id`) REFERENCES `downloadable_sample` (`sample_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_DOWNLOADABLE_SAMPLE_TITLE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_attribute`
--
ALTER TABLE `eav_attribute`
ADD CONSTRAINT `FK_EAV_ATTRIBUTE_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_attribute_group`
--
ALTER TABLE `eav_attribute_group`
ADD CONSTRAINT `FK_EAV_ATTR_GROUP_ATTR_SET_ID_EAV_ATTR_SET_ATTR_SET_ID` FOREIGN KEY (`attribute_set_id`) REFERENCES `eav_attribute_set` (`attribute_set_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_attribute_label`
--
ALTER TABLE `eav_attribute_label`
ADD CONSTRAINT `FK_EAV_ATTRIBUTE_LABEL_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_EAV_ATTRIBUTE_LABEL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_attribute_option`
--
ALTER TABLE `eav_attribute_option`
ADD CONSTRAINT `FK_EAV_ATTRIBUTE_OPTION_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_attribute_option_value`
--
ALTER TABLE `eav_attribute_option_value`
ADD CONSTRAINT `FK_EAV_ATTR_OPT_VAL_OPT_ID_EAV_ATTR_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `eav_attribute_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_EAV_ATTRIBUTE_OPTION_VALUE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_attribute_set`
--
ALTER TABLE `eav_attribute_set`
ADD CONSTRAINT `FK_EAV_ATTR_SET_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_entity`
--
ALTER TABLE `eav_entity`
ADD CONSTRAINT `FK_EAV_ENTITY_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_EAV_ENTITY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_entity_attribute`
--
ALTER TABLE `eav_entity_attribute`
ADD CONSTRAINT `FK_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_EAV_ENTT_ATTR_ATTR_GROUP_ID_EAV_ATTR_GROUP_ATTR_GROUP_ID` FOREIGN KEY (`attribute_group_id`) REFERENCES `eav_attribute_group` (`attribute_group_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_entity_datetime`
--
ALTER TABLE `eav_entity_datetime`
ADD CONSTRAINT `FK_EAV_ENTITY_DATETIME_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_EAV_ENTT_DTIME_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_EAV_ENTITY_DATETIME_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_entity_decimal`
--
ALTER TABLE `eav_entity_decimal`
ADD CONSTRAINT `FK_EAV_ENTITY_DECIMAL_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_EAV_ENTT_DEC_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_EAV_ENTITY_DECIMAL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_entity_int`
--
ALTER TABLE `eav_entity_int`
ADD CONSTRAINT `FK_EAV_ENTITY_INT_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_EAV_ENTITY_INT_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_EAV_ENTITY_INT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_entity_store`
--
ALTER TABLE `eav_entity_store`
ADD CONSTRAINT `FK_EAV_ENTT_STORE_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_EAV_ENTITY_STORE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_entity_text`
--
ALTER TABLE `eav_entity_text`
ADD CONSTRAINT `FK_EAV_ENTITY_TEXT_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_EAV_ENTITY_TEXT_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_EAV_ENTITY_TEXT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_entity_varchar`
--
ALTER TABLE `eav_entity_varchar`
ADD CONSTRAINT `FK_EAV_ENTITY_VARCHAR_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_EAV_ENTT_VCHR_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_EAV_ENTITY_VARCHAR_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_form_element`
--
ALTER TABLE `eav_form_element`
ADD CONSTRAINT `FK_EAV_FORM_ELEMENT_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_EAV_FORM_ELEMENT_FIELDSET_ID_EAV_FORM_FIELDSET_FIELDSET_ID` FOREIGN KEY (`fieldset_id`) REFERENCES `eav_form_fieldset` (`fieldset_id`) ON DELETE SET NULL ON UPDATE CASCADE,
ADD CONSTRAINT `FK_EAV_FORM_ELEMENT_TYPE_ID_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `eav_form_type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_form_fieldset`
--
ALTER TABLE `eav_form_fieldset`
ADD CONSTRAINT `FK_EAV_FORM_FIELDSET_TYPE_ID_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `eav_form_type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_form_fieldset_label`
--
ALTER TABLE `eav_form_fieldset_label`
ADD CONSTRAINT `FK_EAV_FORM_FSET_LBL_FSET_ID_EAV_FORM_FSET_FSET_ID` FOREIGN KEY (`fieldset_id`) REFERENCES `eav_form_fieldset` (`fieldset_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_EAV_FORM_FIELDSET_LABEL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_form_type`
--
ALTER TABLE `eav_form_type`
ADD CONSTRAINT `FK_EAV_FORM_TYPE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eav_form_type_entity`
--
ALTER TABLE `eav_form_type_entity`
ADD CONSTRAINT `FK_EAV_FORM_TYPE_ENTT_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_EAV_FORM_TYPE_ENTITY_TYPE_ID_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `eav_form_type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `index_process_event`
--
ALTER TABLE `index_process_event`
ADD CONSTRAINT `FK_INDEX_PROCESS_EVENT_EVENT_ID_INDEX_EVENT_EVENT_ID` FOREIGN KEY (`event_id`) REFERENCES `index_event` (`event_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_INDEX_PROCESS_EVENT_PROCESS_ID_INDEX_PROCESS_PROCESS_ID` FOREIGN KEY (`process_id`) REFERENCES `index_process` (`process_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `newsletter_problem`
--
ALTER TABLE `newsletter_problem`
ADD CONSTRAINT `FK_NEWSLETTER_PROBLEM_QUEUE_ID_NEWSLETTER_QUEUE_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `newsletter_queue` (`queue_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_NLTTR_PROBLEM_SUBSCRIBER_ID_NLTTR_SUBSCRIBER_SUBSCRIBER_ID` FOREIGN KEY (`subscriber_id`) REFERENCES `newsletter_subscriber` (`subscriber_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `newsletter_queue`
--
ALTER TABLE `newsletter_queue`
ADD CONSTRAINT `FK_NEWSLETTER_QUEUE_TEMPLATE_ID_NEWSLETTER_TEMPLATE_TEMPLATE_ID` FOREIGN KEY (`template_id`) REFERENCES `newsletter_template` (`template_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `newsletter_queue_link`
--
ALTER TABLE `newsletter_queue_link`
ADD CONSTRAINT `FK_NEWSLETTER_QUEUE_LINK_QUEUE_ID_NEWSLETTER_QUEUE_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `newsletter_queue` (`queue_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_NLTTR_QUEUE_LNK_SUBSCRIBER_ID_NLTTR_SUBSCRIBER_SUBSCRIBER_ID` FOREIGN KEY (`subscriber_id`) REFERENCES `newsletter_subscriber` (`subscriber_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `newsletter_queue_store_link`
--
ALTER TABLE `newsletter_queue_store_link`
ADD CONSTRAINT `FK_NLTTR_QUEUE_STORE_LNK_QUEUE_ID_NLTTR_QUEUE_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `newsletter_queue` (`queue_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_NEWSLETTER_QUEUE_STORE_LINK_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `newsletter_subscriber`
--
ALTER TABLE `newsletter_subscriber`
ADD CONSTRAINT `FK_NEWSLETTER_SUBSCRIBER_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `oauth_token`
--
ALTER TABLE `oauth_token`
ADD CONSTRAINT `FK_OAUTH_TOKEN_ADMIN_ID_ADMIN_USER_USER_ID` FOREIGN KEY (`admin_id`) REFERENCES `admin_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_OAUTH_TOKEN_CONSUMER_ID_OAUTH_CONSUMER_ENTITY_ID` FOREIGN KEY (`consumer_id`) REFERENCES `oauth_consumer` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_OAUTH_TOKEN_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `paypal_cert`
--
ALTER TABLE `paypal_cert`
ADD CONSTRAINT `FK_PAYPAL_CERT_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `paypal_settlement_report_row`
--
ALTER TABLE `paypal_settlement_report_row`
ADD CONSTRAINT `FK_E183E488F593E0DE10C6EBFFEBAC9B55` FOREIGN KEY (`report_id`) REFERENCES `paypal_settlement_report` (`report_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `persistent_session`
--
ALTER TABLE `persistent_session`
ADD CONSTRAINT `FK_PERSISTENT_SESSION_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
ADD CONSTRAINT `FK_PERSISTENT_SESSION_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `poll`
--
ALTER TABLE `poll`
ADD CONSTRAINT `FK_POLL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `poll_answer`
--
ALTER TABLE `poll_answer`
ADD CONSTRAINT `FK_POLL_ANSWER_POLL_ID_POLL_POLL_ID` FOREIGN KEY (`poll_id`) REFERENCES `poll` (`poll_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `poll_store`
--
ALTER TABLE `poll_store`
ADD CONSTRAINT `FK_POLL_STORE_POLL_ID_POLL_POLL_ID` FOREIGN KEY (`poll_id`) REFERENCES `poll` (`poll_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_POLL_STORE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `poll_vote`
--
ALTER TABLE `poll_vote`
ADD CONSTRAINT `FK_POLL_VOTE_POLL_ANSWER_ID_POLL_ANSWER_ANSWER_ID` FOREIGN KEY (`poll_answer_id`) REFERENCES `poll_answer` (`answer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_alert_price`
--
ALTER TABLE `product_alert_price`
ADD CONSTRAINT `FK_PRODUCT_ALERT_PRICE_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_PRD_ALERT_PRICE_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_PRODUCT_ALERT_PRICE_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_alert_stock`
--
ALTER TABLE `product_alert_stock`
ADD CONSTRAINT `FK_PRODUCT_ALERT_STOCK_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_PRODUCT_ALERT_STOCK_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_PRD_ALERT_STOCK_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
ADD CONSTRAINT `FK_RATING_ENTITY_ID_RATING_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `rating_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rating_option`
--
ALTER TABLE `rating_option`
ADD CONSTRAINT `FK_RATING_OPTION_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rating_option_vote`
--
ALTER TABLE `rating_option_vote`
ADD CONSTRAINT `FK_RATING_OPTION_VOTE_REVIEW_ID_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_RATING_OPTION_VOTE_OPTION_ID_RATING_OPTION_OPTION_ID` FOREIGN KEY (`option_id`) REFERENCES `rating_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rating_option_vote_aggregated`
--
ALTER TABLE `rating_option_vote_aggregated`
ADD CONSTRAINT `FK_RATING_OPTION_VOTE_AGGREGATED_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_RATING_OPTION_VOTE_AGGREGATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rating_store`
--
ALTER TABLE `rating_store`
ADD CONSTRAINT `FK_RATING_STORE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_RATING_STORE_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `rating_title`
--
ALTER TABLE `rating_title`
ADD CONSTRAINT `FK_RATING_TITLE_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_RATING_TITLE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `report_compared_product_index`
--
ALTER TABLE `report_compared_product_index`
ADD CONSTRAINT `FK_REPORT_CMPD_PRD_IDX_CSTR_ID_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_REPORT_CMPD_PRD_IDX_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_REPORT_COMPARED_PRODUCT_INDEX_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `report_event`
--
ALTER TABLE `report_event`
ADD CONSTRAINT `FK_REPORT_EVENT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_REPORT_EVENT_EVENT_TYPE_ID_REPORT_EVENT_TYPES_EVENT_TYPE_ID` FOREIGN KEY (`event_type_id`) REFERENCES `report_event_types` (`event_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `report_viewed_product_aggregated_daily`
--
ALTER TABLE `report_viewed_product_aggregated_daily`
ADD CONSTRAINT `FK_REPORT_VIEWED_PRD_AGGRED_DAILY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_REPORT_VIEWED_PRD_AGGRED_DAILY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `report_viewed_product_aggregated_monthly`
--
ALTER TABLE `report_viewed_product_aggregated_monthly`
ADD CONSTRAINT `FK_REPORT_VIEWED_PRD_AGGRED_MONTHLY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_REPORT_VIEWED_PRD_AGGRED_MONTHLY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `report_viewed_product_aggregated_yearly`
--
ALTER TABLE `report_viewed_product_aggregated_yearly`
ADD CONSTRAINT `FK_REPORT_VIEWED_PRD_AGGRED_YEARLY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_REPORT_VIEWED_PRD_AGGRED_YEARLY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `report_viewed_product_index`
--
ALTER TABLE `report_viewed_product_index`
ADD CONSTRAINT `FK_REPORT_VIEWED_PRD_IDX_CSTR_ID_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_REPORT_VIEWED_PRD_IDX_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_REPORT_VIEWED_PRODUCT_INDEX_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `review`
--
ALTER TABLE `review`
ADD CONSTRAINT `FK_REVIEW_ENTITY_ID_REVIEW_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `review_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_REVIEW_STATUS_ID_REVIEW_STATUS_STATUS_ID` FOREIGN KEY (`status_id`) REFERENCES `review_status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `review_detail`
--
ALTER TABLE `review_detail`
ADD CONSTRAINT `FK_REVIEW_DETAIL_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
ADD CONSTRAINT `FK_REVIEW_DETAIL_REVIEW_ID_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_REVIEW_DETAIL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `review_entity_summary`
--
ALTER TABLE `review_entity_summary`
ADD CONSTRAINT `FK_REVIEW_ENTITY_SUMMARY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `review_store`
--
ALTER TABLE `review_store`
ADD CONSTRAINT `FK_REVIEW_STORE_REVIEW_ID_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_REVIEW_STORE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `salesrule_coupon`
--
ALTER TABLE `salesrule_coupon`
ADD CONSTRAINT `FK_SALESRULE_COUPON_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `salesrule_coupon_usage`
--
ALTER TABLE `salesrule_coupon_usage`
ADD CONSTRAINT `FK_SALESRULE_COUPON_USAGE_COUPON_ID_SALESRULE_COUPON_COUPON_ID` FOREIGN KEY (`coupon_id`) REFERENCES `salesrule_coupon` (`coupon_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_SALESRULE_COUPON_USAGE_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `salesrule_customer`
--
ALTER TABLE `salesrule_customer`
ADD CONSTRAINT `FK_SALESRULE_CUSTOMER_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_SALESRULE_CUSTOMER_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `salesrule_customer_group`
--
ALTER TABLE `salesrule_customer_group`
ADD CONSTRAINT `FK_SALESRULE_CUSTOMER_GROUP_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_SALESRULE_CSTR_GROUP_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `salesrule_label`
--
ALTER TABLE `salesrule_label`
ADD CONSTRAINT `FK_SALESRULE_LABEL_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_SALESRULE_LABEL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `salesrule_product_attribute`
--
ALTER TABLE `salesrule_product_attribute`
ADD CONSTRAINT `FK_SALESRULE_PRD_ATTR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
ADD CONSTRAINT `FK_SALESRULE_PRD_ATTR_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
ADD CONSTRAINT `FK_SALESRULE_PRODUCT_ATTRIBUTE_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
ADD CONSTRAINT `FK_SALESRULE_PRD_ATTR_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `salesrule_website`
--
ALTER TABLE `salesrule_website`
ADD CONSTRAINT `FK_SALESRULE_WEBSITE_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_SALESRULE_WEBSITE_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_bestsellers_aggregated_daily`
--
ALTER TABLE `sales_bestsellers_aggregated_daily`
ADD CONSTRAINT `FK_SALES_BESTSELLERS_AGGRED_DAILY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_SALES_BESTSELLERS_AGGRED_DAILY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_bestsellers_aggregated_monthly`
--
ALTER TABLE `sales_bestsellers_aggregated_monthly`
ADD CONSTRAINT `FK_SALES_BESTSELLERS_AGGRED_MONTHLY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_SALES_BESTSELLERS_AGGRED_MONTHLY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_bestsellers_aggregated_yearly`
--
ALTER TABLE `sales_bestsellers_aggregated_yearly`
ADD CONSTRAINT `FK_SALES_BESTSELLERS_AGGRED_YEARLY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_SALES_BESTSELLERS_AGGRED_YEARLY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_billing_agreement`
--
ALTER TABLE `sales_billing_agreement`
ADD CONSTRAINT `FK_SALES_BILLING_AGREEMENT_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_SALES_BILLING_AGREEMENT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sales_billing_agreement_order`
--
ALTER TABLE `sales_billing_agreement_order`
ADD CONSTRAINT `FK_SALES_BILLING_AGRT_ORDER_AGRT_ID_SALES_BILLING_AGRT_AGRT_ID` FOREIGN KEY (`agreement_id`) REFERENCES `sales_billing_agreement` (`agreement_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_SALES_BILLING_AGRT_ORDER_ORDER_ID_SALES_FLAT_ORDER_ENTT_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_flat_creditmemo`
--
ALTER TABLE `sales_flat_creditmemo`
ADD CONSTRAINT `FK_SALES_FLAT_CREDITMEMO_ORDER_ID_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_SALES_FLAT_CREDITMEMO_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sales_flat_creditmemo_comment`
--
ALTER TABLE `sales_flat_creditmemo_comment`
ADD CONSTRAINT `FK_B0FCB0B5467075BE63D474F2CD5F7804` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_creditmemo` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_flat_creditmemo_grid`
--
ALTER TABLE `sales_flat_creditmemo_grid`
ADD CONSTRAINT `FK_78C711B225167A11CC077B03D1C8E1CC` FOREIGN KEY (`entity_id`) REFERENCES `sales_flat_creditmemo` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_SALES_FLAT_CREDITMEMO_GRID_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sales_flat_creditmemo_item`
--
ALTER TABLE `sales_flat_creditmemo_item`
ADD CONSTRAINT `FK_306DAC836C699F0B5E13BE486557AC8A` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_creditmemo` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_flat_invoice`
--
ALTER TABLE `sales_flat_invoice`
ADD CONSTRAINT `FK_SALES_FLAT_INVOICE_ORDER_ID_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_SALES_FLAT_INVOICE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sales_flat_invoice_comment`
--
ALTER TABLE `sales_flat_invoice_comment`
ADD CONSTRAINT `FK_5C4B36BBE5231A76AB8018B281ED50BC` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_invoice` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_flat_invoice_grid`
--
ALTER TABLE `sales_flat_invoice_grid`
ADD CONSTRAINT `FK_SALES_FLAT_INVOICE_GRID_ENTT_ID_SALES_FLAT_INVOICE_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `sales_flat_invoice` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_SALES_FLAT_INVOICE_GRID_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sales_flat_invoice_item`
--
ALTER TABLE `sales_flat_invoice_item`
ADD CONSTRAINT `FK_SALES_FLAT_INVOICE_ITEM_PARENT_ID_SALES_FLAT_INVOICE_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_invoice` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_flat_order`
--
ALTER TABLE `sales_flat_order`
ADD CONSTRAINT `FK_SALES_FLAT_ORDER_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
ADD CONSTRAINT `FK_SALES_FLAT_ORDER_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sales_flat_order_address`
--
ALTER TABLE `sales_flat_order_address`
ADD CONSTRAINT `FK_SALES_FLAT_ORDER_ADDRESS_PARENT_ID_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_flat_order_grid`
--
ALTER TABLE `sales_flat_order_grid`
ADD CONSTRAINT `FK_SALES_FLAT_ORDER_GRID_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
ADD CONSTRAINT `FK_SALES_FLAT_ORDER_GRID_ENTITY_ID_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_SALES_FLAT_ORDER_GRID_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sales_flat_order_item`
--
ALTER TABLE `sales_flat_order_item`
ADD CONSTRAINT `FK_SALES_FLAT_ORDER_ITEM_ORDER_ID_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_SALES_FLAT_ORDER_ITEM_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sales_flat_order_payment`
--
ALTER TABLE `sales_flat_order_payment`
ADD CONSTRAINT `FK_SALES_FLAT_ORDER_PAYMENT_PARENT_ID_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_flat_order_status_history`
--
ALTER TABLE `sales_flat_order_status_history`
ADD CONSTRAINT `FK_CE7C71E74CB74DDACED337CEE6753D5E` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_flat_quote`
--
ALTER TABLE `sales_flat_quote`
ADD CONSTRAINT `FK_SALES_FLAT_QUOTE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_flat_quote_address`
--
ALTER TABLE `sales_flat_quote_address`
ADD CONSTRAINT `FK_SALES_FLAT_QUOTE_ADDRESS_QUOTE_ID_SALES_FLAT_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `sales_flat_quote` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_flat_quote_address_item`
--
ALTER TABLE `sales_flat_quote_address_item`
ADD CONSTRAINT `FK_2EF8E28181D666D94D4E30DC2B0F80BF` FOREIGN KEY (`quote_item_id`) REFERENCES `sales_flat_quote_item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_A345FC758F20C314169CE27DCE53477F` FOREIGN KEY (`parent_item_id`) REFERENCES `sales_flat_quote_address_item` (`address_item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_B521389746C00700D1B2B76EBBE53854` FOREIGN KEY (`quote_address_id`) REFERENCES `sales_flat_quote_address` (`address_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_flat_quote_item`
--
ALTER TABLE `sales_flat_quote_item`
ADD CONSTRAINT `FK_B201DEB5DE51B791AF5C5BF87053C5A7` FOREIGN KEY (`parent_item_id`) REFERENCES `sales_flat_quote_item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_SALES_FLAT_QUOTE_ITEM_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_SALES_FLAT_QUOTE_ITEM_QUOTE_ID_SALES_FLAT_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `sales_flat_quote` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_SALES_FLAT_QUOTE_ITEM_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sales_flat_quote_item_option`
--
ALTER TABLE `sales_flat_quote_item_option`
ADD CONSTRAINT `FK_5F20E478CA64B6891EA8A9D6C2735739` FOREIGN KEY (`item_id`) REFERENCES `sales_flat_quote_item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_flat_quote_payment`
--
ALTER TABLE `sales_flat_quote_payment`
ADD CONSTRAINT `FK_SALES_FLAT_QUOTE_PAYMENT_QUOTE_ID_SALES_FLAT_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `sales_flat_quote` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_flat_quote_shipping_rate`
--
ALTER TABLE `sales_flat_quote_shipping_rate`
ADD CONSTRAINT `FK_B1F177EFB73D3EDF5322BA64AC48D150` FOREIGN KEY (`address_id`) REFERENCES `sales_flat_quote_address` (`address_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_flat_shipment`
--
ALTER TABLE `sales_flat_shipment`
ADD CONSTRAINT `FK_SALES_FLAT_SHIPMENT_ORDER_ID_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_SALES_FLAT_SHIPMENT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sales_flat_shipment_comment`
--
ALTER TABLE `sales_flat_shipment_comment`
ADD CONSTRAINT `FK_C2D69CC1FB03D2B2B794B0439F6650CF` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_shipment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_flat_shipment_grid`
--
ALTER TABLE `sales_flat_shipment_grid`
ADD CONSTRAINT `FK_SALES_FLAT_SHIPMENT_GRID_ENTT_ID_SALES_FLAT_SHIPMENT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `sales_flat_shipment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_SALES_FLAT_SHIPMENT_GRID_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sales_flat_shipment_item`
--
ALTER TABLE `sales_flat_shipment_item`
ADD CONSTRAINT `FK_3AECE5007D18F159231B87E8306FC02A` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_shipment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_flat_shipment_track`
--
ALTER TABLE `sales_flat_shipment_track`
ADD CONSTRAINT `FK_BCD2FA28717D29F37E10A153E6F2F841` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_shipment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_invoiced_aggregated`
--
ALTER TABLE `sales_invoiced_aggregated`
ADD CONSTRAINT `FK_SALES_INVOICED_AGGREGATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sales_invoiced_aggregated_order`
--
ALTER TABLE `sales_invoiced_aggregated_order`
ADD CONSTRAINT `FK_SALES_INVOICED_AGGREGATED_ORDER_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sales_order_aggregated_created`
--
ALTER TABLE `sales_order_aggregated_created`
ADD CONSTRAINT `FK_SALES_ORDER_AGGREGATED_CREATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sales_order_aggregated_updated`
--
ALTER TABLE `sales_order_aggregated_updated`
ADD CONSTRAINT `FK_SALES_ORDER_AGGREGATED_UPDATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sales_order_status_label`
--
ALTER TABLE `sales_order_status_label`
ADD CONSTRAINT `FK_SALES_ORDER_STATUS_LABEL_STATUS_SALES_ORDER_STATUS_STATUS` FOREIGN KEY (`status`) REFERENCES `sales_order_status` (`status`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_SALES_ORDER_STATUS_LABEL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_order_status_state`
--
ALTER TABLE `sales_order_status_state`
ADD CONSTRAINT `FK_SALES_ORDER_STATUS_STATE_STATUS_SALES_ORDER_STATUS_STATUS` FOREIGN KEY (`status`) REFERENCES `sales_order_status` (`status`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_order_tax_item`
--
ALTER TABLE `sales_order_tax_item`
ADD CONSTRAINT `FK_SALES_ORDER_TAX_ITEM_ITEM_ID_SALES_FLAT_ORDER_ITEM_ITEM_ID` FOREIGN KEY (`item_id`) REFERENCES `sales_flat_order_item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_SALES_ORDER_TAX_ITEM_TAX_ID_SALES_ORDER_TAX_TAX_ID` FOREIGN KEY (`tax_id`) REFERENCES `sales_order_tax` (`tax_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_payment_transaction`
--
ALTER TABLE `sales_payment_transaction`
ADD CONSTRAINT `FK_SALES_PAYMENT_TRANSACTION_ORDER_ID_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_B99FF1A06402D725EBDB0F3A7ECD47A2` FOREIGN KEY (`parent_id`) REFERENCES `sales_payment_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_DA51A10B2405B64A4DAEF77A64F0DAAD` FOREIGN KEY (`payment_id`) REFERENCES `sales_flat_order_payment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_recurring_profile`
--
ALTER TABLE `sales_recurring_profile`
ADD CONSTRAINT `FK_SALES_RECURRING_PROFILE_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
ADD CONSTRAINT `FK_SALES_RECURRING_PROFILE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sales_recurring_profile_order`
--
ALTER TABLE `sales_recurring_profile_order`
ADD CONSTRAINT `FK_7FF85741C66DCD37A4FBE3E3255A5A01` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_B8A7A5397B67455786E55461748C59F4` FOREIGN KEY (`profile_id`) REFERENCES `sales_recurring_profile` (`profile_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_refunded_aggregated`
--
ALTER TABLE `sales_refunded_aggregated`
ADD CONSTRAINT `FK_SALES_REFUNDED_AGGREGATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sales_refunded_aggregated_order`
--
ALTER TABLE `sales_refunded_aggregated_order`
ADD CONSTRAINT `FK_SALES_REFUNDED_AGGREGATED_ORDER_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sales_shipping_aggregated`
--
ALTER TABLE `sales_shipping_aggregated`
ADD CONSTRAINT `FK_SALES_SHIPPING_AGGREGATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sales_shipping_aggregated_order`
--
ALTER TABLE `sales_shipping_aggregated_order`
ADD CONSTRAINT `FK_SALES_SHIPPING_AGGREGATED_ORDER_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sitemap`
--
ALTER TABLE `sitemap`
ADD CONSTRAINT `FK_SITEMAP_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tag`
--
ALTER TABLE `tag`
ADD CONSTRAINT `FK_TAG_FIRST_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`first_customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE NO ACTION,
ADD CONSTRAINT `FK_TAG_FIRST_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`first_store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Constraints for table `tag_properties`
--
ALTER TABLE `tag_properties`
ADD CONSTRAINT `FK_TAG_PROPERTIES_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_TAG_PROPERTIES_TAG_ID_TAG_TAG_ID` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`tag_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tag_relation`
--
ALTER TABLE `tag_relation`
ADD CONSTRAINT `FK_TAG_RELATION_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_TAG_RELATION_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_TAG_RELATION_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_TAG_RELATION_TAG_ID_TAG_TAG_ID` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`tag_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tag_summary`
--
ALTER TABLE `tag_summary`
ADD CONSTRAINT `FK_TAG_SUMMARY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_TAG_SUMMARY_TAG_ID_TAG_TAG_ID` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`tag_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tax_calculation`
--
ALTER TABLE `tax_calculation`
ADD CONSTRAINT `FK_TAX_CALCULATION_PRODUCT_TAX_CLASS_ID_TAX_CLASS_CLASS_ID` FOREIGN KEY (`product_tax_class_id`) REFERENCES `tax_class` (`class_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_TAX_CALCULATION_CUSTOMER_TAX_CLASS_ID_TAX_CLASS_CLASS_ID` FOREIGN KEY (`customer_tax_class_id`) REFERENCES `tax_class` (`class_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_TAX_CALC_TAX_CALC_RATE_ID_TAX_CALC_RATE_TAX_CALC_RATE_ID` FOREIGN KEY (`tax_calculation_rate_id`) REFERENCES `tax_calculation_rate` (`tax_calculation_rate_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_TAX_CALC_TAX_CALC_RULE_ID_TAX_CALC_RULE_TAX_CALC_RULE_ID` FOREIGN KEY (`tax_calculation_rule_id`) REFERENCES `tax_calculation_rule` (`tax_calculation_rule_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tax_calculation_rate_title`
--
ALTER TABLE `tax_calculation_rate_title`
ADD CONSTRAINT `FK_TAX_CALCULATION_RATE_TITLE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_37FB965F786AD5897BB3AE90470C42AB` FOREIGN KEY (`tax_calculation_rate_id`) REFERENCES `tax_calculation_rate` (`tax_calculation_rate_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tax_order_aggregated_created`
--
ALTER TABLE `tax_order_aggregated_created`
ADD CONSTRAINT `FK_TAX_ORDER_AGGREGATED_CREATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tax_order_aggregated_updated`
--
ALTER TABLE `tax_order_aggregated_updated`
ADD CONSTRAINT `FK_TAX_ORDER_AGGREGATED_UPDATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `weee_discount`
--
ALTER TABLE `weee_discount`
ADD CONSTRAINT `FK_WEEE_DISCOUNT_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_WEEE_DISCOUNT_ENTITY_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_WEEE_DISCOUNT_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `weee_tax`
--
ALTER TABLE `weee_tax`
ADD CONSTRAINT `FK_WEEE_TAX_COUNTRY_DIRECTORY_COUNTRY_COUNTRY_ID` FOREIGN KEY (`country`) REFERENCES `directory_country` (`country_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_WEEE_TAX_ENTITY_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_WEEE_TAX_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_WEEE_TAX_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `widget_instance_page`
--
ALTER TABLE `widget_instance_page`
ADD CONSTRAINT `FK_WIDGET_INSTANCE_PAGE_INSTANCE_ID_WIDGET_INSTANCE_INSTANCE_ID` FOREIGN KEY (`instance_id`) REFERENCES `widget_instance` (`instance_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `widget_instance_page_layout`
--
ALTER TABLE `widget_instance_page_layout`
ADD CONSTRAINT `FK_WIDGET_INSTANCE_PAGE_LYT_PAGE_ID_WIDGET_INSTANCE_PAGE_PAGE_ID` FOREIGN KEY (`page_id`) REFERENCES `widget_instance_page` (`page_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_0A5D06DCEC6A6845F50E5FAAC5A1C96D` FOREIGN KEY (`layout_update_id`) REFERENCES `core_layout_update` (`layout_update_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
ADD CONSTRAINT `FK_WISHLIST_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wishlist_item`
--
ALTER TABLE `wishlist_item`
ADD CONSTRAINT `FK_WISHLIST_ITEM_WISHLIST_ID_WISHLIST_WISHLIST_ID` FOREIGN KEY (`wishlist_id`) REFERENCES `wishlist` (`wishlist_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_WISHLIST_ITEM_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_WISHLIST_ITEM_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `wishlist_item_option`
--
ALTER TABLE `wishlist_item_option`
ADD CONSTRAINT `FK_A014B30B04B72DD0EAB3EECD779728D6` FOREIGN KEY (`wishlist_item_id`) REFERENCES `wishlist_item` (`wishlist_item_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `xmlconnect_application`
--
ALTER TABLE `xmlconnect_application`
ADD CONSTRAINT `FK_XMLCONNECT_APPLICATION_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `xmlconnect_config_data`
--
ALTER TABLE `xmlconnect_config_data`
ADD CONSTRAINT `FK_31EE36D814216200D7C0723145AC510E` FOREIGN KEY (`application_id`) REFERENCES `xmlconnect_application` (`application_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `xmlconnect_history`
--
ALTER TABLE `xmlconnect_history`
ADD CONSTRAINT `FK_8F08B9513373BC19F49EE3EF8340E270` FOREIGN KEY (`application_id`) REFERENCES `xmlconnect_application` (`application_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `xmlconnect_images`
--
ALTER TABLE `xmlconnect_images`
ADD CONSTRAINT `FK_6C55A623A089E4FEA9201FFE01693167` FOREIGN KEY (`application_id`) REFERENCES `xmlconnect_application` (`application_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `xmlconnect_notification_template`
--
ALTER TABLE `xmlconnect_notification_template`
ADD CONSTRAINT `FK_F9927C7518A907CF5C350942FD296DC3` FOREIGN KEY (`application_id`) REFERENCES `xmlconnect_application` (`application_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `xmlconnect_queue`
--
ALTER TABLE `xmlconnect_queue`
ADD CONSTRAINT `FK_2019AEC5FC55A516965583447CA26B14` FOREIGN KEY (`template_id`) REFERENCES `xmlconnect_notification_template` (`template_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;