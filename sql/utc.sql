-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Aug 31, 2018 at 12:24 AM
-- Server version: 5.6.38
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `utc`
--

-- --------------------------------------------------------

--
-- Table structure for table `perch3_blogs`
--

CREATE TABLE `perch3_blogs` (
  `blogID` int(10) UNSIGNED NOT NULL,
  `blogTitle` char(255) NOT NULL DEFAULT 'Blog',
  `blogSlug` char(255) DEFAULT 'blog',
  `setSlug` char(255) DEFAULT 'blog',
  `postTemplate` char(255) DEFAULT 'post.html',
  `blogDynamicFields` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `perch3_blogs`
--

INSERT INTO `perch3_blogs` (`blogID`, `blogTitle`, `blogSlug`, `setSlug`, `postTemplate`, `blogDynamicFields`) VALUES
(1, 'Blog', 'blog', 'blog', 'post.html', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `perch3_blog_authors`
--

CREATE TABLE `perch3_blog_authors` (
  `authorID` int(10) UNSIGNED NOT NULL,
  `authorGivenName` varchar(255) NOT NULL DEFAULT '',
  `authorFamilyName` varchar(255) NOT NULL DEFAULT '',
  `authorEmail` varchar(255) NOT NULL DEFAULT '',
  `authorPostCount` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authorSlug` varchar(255) NOT NULL DEFAULT '',
  `authorImportRef` varchar(64) DEFAULT NULL,
  `authorDynamicFields` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `perch3_blog_authors`
--

INSERT INTO `perch3_blog_authors` (`authorID`, `authorGivenName`, `authorFamilyName`, `authorEmail`, `authorPostCount`, `authorSlug`, `authorImportRef`, `authorDynamicFields`) VALUES
(1, 'Warren', 'Longmire', 'warrenlongmire@gmail.com', 1, 'warren-longmire', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `perch3_blog_comments`
--

CREATE TABLE `perch3_blog_comments` (
  `commentID` int(10) UNSIGNED NOT NULL,
  `postID` int(10) UNSIGNED NOT NULL,
  `commentName` varchar(255) NOT NULL DEFAULT '',
  `commentEmail` varchar(255) NOT NULL DEFAULT '',
  `commentURL` varchar(255) NOT NULL DEFAULT '',
  `commentIP` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `commentDateTime` datetime NOT NULL,
  `commentHTML` text NOT NULL,
  `commentStatus` enum('LIVE','PENDING','SPAM','REJECTED') NOT NULL DEFAULT 'PENDING',
  `commentSpamData` text NOT NULL,
  `commentDynamicFields` text NOT NULL,
  `webmention` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `webmentionType` enum('comment','like','repost') DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `perch3_blog_index`
--

CREATE TABLE `perch3_blog_index` (
  `indexID` int(10) NOT NULL,
  `itemKey` char(64) NOT NULL DEFAULT '-',
  `itemID` int(10) NOT NULL DEFAULT '0',
  `indexKey` char(64) NOT NULL DEFAULT '-',
  `indexValue` char(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `perch3_blog_index`
--

INSERT INTO `perch3_blog_index` (`indexID`, `itemKey`, `itemID`, `indexKey`, `indexValue`) VALUES
(250, 'postID', 1, '_id', '1'),
(249, 'postID', 1, 'postURLFull', 'http://localhost:8888/blog/post.php?s=2018-08-23-2017-year-in-review'),
(248, 'postID', 1, 'postURL', '/blog/post.php?s=2018-08-23-2017-year-in-review'),
(247, 'postID', 1, 'authorImportRef', ''),
(246, 'postID', 1, 'authorSlug', 'warren-longmire'),
(245, 'postID', 1, 'authorPostCount', '1'),
(244, 'postID', 1, 'authorEmail', 'warrenlongmire@gmail.com'),
(243, 'postID', 1, 'authorFamilyName', 'Longmire'),
(242, 'postID', 1, 'authorGivenName', 'Warren'),
(241, 'postID', 1, 'itemRowID', ''),
(240, 'postID', 1, 'itemID', ''),
(239, 'postID', 1, 'postIsPublished', '0'),
(238, 'postID', 1, 'postMetaTemplate', 'post_meta.html'),
(237, 'postID', 1, 'postTemplate', 'post.html'),
(236, 'postID', 1, 'postAllowComments', '1'),
(235, 'postID', 1, 'postLegacyURL', ''),
(234, 'postID', 1, 'postImportID', ''),
(233, 'postID', 1, 'postCommentCount', '0'),
(232, 'postID', 1, 'sectionID', '1'),
(231, 'postID', 1, 'authorID', '1'),
(230, 'postID', 1, 'postStatus', 'Published'),
(229, 'postID', 1, 'postTags', ''),
(228, 'postID', 1, 'postDescHTML', '<p>Integer velit pretium adipiscing massa parturient a vulputate consequat class adipiscing nibh sit pharetra condimentum a consequat mi placerat mattis. Massa non condimentum volutpat euismod a parturient nisl dui ante nunc metus vestibulum a lobortis ni'),
(227, 'postID', 1, 'postDescRaw', 'Integer velit pretium adipiscing massa parturient a vulputate consequat class adipiscing nibh sit pharetra condimentum a consequat mi placerat mattis. Massa non condimentum volutpat euismod a parturient nisl dui ante nunc metus vestibulum a lobortis nibh'),
(226, 'postID', 1, 'postDateTime', '2018-08-23 18:35:00'),
(225, 'postID', 1, 'postSlug', '2018-08-23-2017-year-in-review'),
(224, 'postID', 1, 'postTitle', '2017 Year in Review'),
(223, 'postID', 1, 'blogID', '1'),
(222, 'postID', 1, 'postID', '1'),
(221, 'postID', 1, '_category', 'blog/home-page/'),
(220, 'postID', 1, 'image', ''),
(219, 'postID', 1, 'excerpt', ''),
(405, 'postID', 2, '_id', '2'),
(404, 'postID', 2, 'postURLFull', 'http://localhost:8888/blog/post.php?s=2018-08-27-post-2'),
(403, 'postID', 2, 'postURL', '/blog/post.php?s=2018-08-27-post-2'),
(402, 'postID', 2, 'authorImportRef', ''),
(401, 'postID', 2, 'authorSlug', 'warren-longmire'),
(400, 'postID', 2, 'authorPostCount', '2'),
(399, 'postID', 2, 'authorEmail', 'warrenlongmire@gmail.com'),
(398, 'postID', 2, 'authorFamilyName', 'Longmire'),
(397, 'postID', 2, 'authorGivenName', 'Warren'),
(396, 'postID', 2, 'itemRowID', ''),
(395, 'postID', 2, 'itemID', ''),
(394, 'postID', 2, 'postIsPublished', '0'),
(393, 'postID', 2, 'postMetaTemplate', 'post_meta.html'),
(392, 'postID', 2, 'postTemplate', 'post.html'),
(391, 'postID', 2, 'postAllowComments', '1'),
(390, 'postID', 2, 'postLegacyURL', ''),
(389, 'postID', 2, 'postImportID', ''),
(388, 'postID', 2, 'postCommentCount', '0'),
(387, 'postID', 2, 'sectionID', '1'),
(386, 'postID', 2, 'authorID', '1'),
(385, 'postID', 2, 'postStatus', 'Published'),
(384, 'postID', 2, 'postTags', ''),
(383, 'postID', 2, 'postDescHTML', '<p>Consectetur dui scelerisque ac ut facilisi non feugiat curae primis vehicula curae ultricies parturient dictumst. Erat vulputate leo laoreet suspendisse vivamus iaculis dapibus ullamcorper nec facilisis vestibulum dolor a a a metus duis a dictumst dign'),
(382, 'postID', 2, 'postDescRaw', 'Consectetur dui scelerisque ac ut facilisi non feugiat curae primis vehicula curae ultricies parturient dictumst. Erat vulputate leo laoreet suspendisse vivamus iaculis dapibus ullamcorper nec facilisis vestibulum dolor a a a metus duis a dictumst digniss'),
(381, 'postID', 2, 'postDateTime', '2018-08-27 18:40:00'),
(380, 'postID', 2, 'postSlug', '2018-08-27-post-2'),
(379, 'postID', 2, 'postTitle', 'Post 2'),
(378, 'postID', 2, 'blogID', '1'),
(377, 'postID', 2, 'postID', '2'),
(376, 'postID', 2, '_category', 'blog/home-page/'),
(375, 'postID', 2, 'image', ''),
(374, 'postID', 2, 'excerpt', '');

-- --------------------------------------------------------

--
-- Table structure for table `perch3_blog_posts`
--

CREATE TABLE `perch3_blog_posts` (
  `postID` int(11) NOT NULL,
  `blogID` int(10) UNSIGNED DEFAULT '1',
  `postTitle` varchar(255) NOT NULL DEFAULT '',
  `postSlug` varchar(255) NOT NULL DEFAULT '',
  `postDateTime` datetime DEFAULT NULL,
  `postDescRaw` text,
  `postDescHTML` text,
  `postDynamicFields` mediumtext,
  `postTags` varchar(255) NOT NULL DEFAULT '',
  `postStatus` enum('Published','Draft') NOT NULL DEFAULT 'Published',
  `authorID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `sectionID` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `postCommentCount` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `postImportID` varchar(64) DEFAULT NULL,
  `postLegacyURL` varchar(255) DEFAULT NULL,
  `postAllowComments` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `postTemplate` varchar(255) NOT NULL DEFAULT 'post.html',
  `postMetaTemplate` varchar(255) NOT NULL DEFAULT 'post_meta.html',
  `postIsPublished` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `perch3_blog_posts_to_tags`
--

CREATE TABLE `perch3_blog_posts_to_tags` (
  `postID` int(11) NOT NULL DEFAULT '0',
  `tagID` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Table structure for table `perch3_blog_sections`
--

CREATE TABLE `perch3_blog_sections` (
  `sectionID` int(11) NOT NULL,
  `blogID` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `sectionTitle` varchar(255) NOT NULL DEFAULT '',
  `sectionSlug` varchar(255) NOT NULL DEFAULT '',
  `sectionPostCount` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `sectionDynamicFields` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `perch3_blog_sections`
--

INSERT INTO `perch3_blog_sections` (`sectionID`, `blogID`, `sectionTitle`, `sectionSlug`, `sectionPostCount`, `sectionDynamicFields`) VALUES
(1, 1, 'Posts', 'posts', 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `perch3_blog_tags`
--

CREATE TABLE `perch3_blog_tags` (
  `tagID` int(11) NOT NULL,
  `tagTitle` varchar(255) NOT NULL DEFAULT '',
  `tagSlug` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `perch3_blog_webmention_queue`
--

CREATE TABLE `perch3_blog_webmention_queue` (
  `entryID` int(10) UNSIGNED NOT NULL,
  `entryCreated` timestamp NOT NULL DEFAULT '2000-01-01 05:00:00',
  `entrySource` char(255) NOT NULL DEFAULT '',
  `entryTarget` char(255) NOT NULL DEFAULT '',
  `entryType` enum('post','comment') NOT NULL DEFAULT 'post',
  `entryFK` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `perch3_categories`
--

CREATE TABLE `perch3_categories` (
  `catID` int(10) NOT NULL,
  `setID` int(10) UNSIGNED NOT NULL,
  `catParentID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `catTitle` char(64) NOT NULL DEFAULT '',
  `catSlug` char(64) NOT NULL DEFAULT '',
  `catPath` char(255) NOT NULL DEFAULT '',
  `catDisplayPath` char(255) NOT NULL DEFAULT '',
  `catOrder` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `catTreePosition` char(255) NOT NULL DEFAULT '000',
  `catDynamicFields` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `perch3_categories`
--

INSERT INTO `perch3_categories` (`catID`, `setID`, `catParentID`, `catTitle`, `catSlug`, `catPath`, `catDisplayPath`, `catOrder`, `catTreePosition`, `catDynamicFields`) VALUES
(1, 1, 0, 'home-page', 'home-page', 'blog/home-page/', 'home-page', 1, '001-001', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `perch3_category_counts`
--

CREATE TABLE `perch3_category_counts` (
  `countID` int(10) UNSIGNED NOT NULL,
  `catID` int(10) UNSIGNED NOT NULL,
  `countType` char(64) NOT NULL DEFAULT '',
  `countValue` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `perch3_category_sets`
--

CREATE TABLE `perch3_category_sets` (
  `setID` int(10) NOT NULL,
  `setTitle` char(64) NOT NULL DEFAULT '',
  `setSlug` char(64) NOT NULL DEFAULT '',
  `setTemplate` char(255) NOT NULL DEFAULT 'set.html',
  `setCatTemplate` char(255) NOT NULL DEFAULT 'category.html',
  `setDynamicFields` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `perch3_category_sets`
--

INSERT INTO `perch3_category_sets` (`setID`, `setTitle`, `setSlug`, `setTemplate`, `setCatTemplate`, `setDynamicFields`) VALUES
(1, 'Blog', 'blog', '~/perch_blog/templates/blog/category_set.html', '~/perch_blog/templates/blog/category.html', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `perch3_content_index`
--

CREATE TABLE `perch3_content_index` (
  `indexID` int(10) NOT NULL,
  `itemID` int(10) NOT NULL DEFAULT '0',
  `regionID` int(10) NOT NULL DEFAULT '0',
  `pageID` int(10) NOT NULL DEFAULT '0',
  `itemRev` int(10) NOT NULL DEFAULT '0',
  `indexKey` char(64) NOT NULL DEFAULT '-',
  `indexValue` char(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `perch3_content_index`
--

INSERT INTO `perch3_content_index` (`indexID`, `itemID`, `regionID`, `pageID`, `itemRev`, `indexKey`, `indexValue`) VALUES
(1, 1, 2, 1, 1, 'text', 'BUILDING COMMUNITY ONE VACANT LOT AT A TIME…\nThe Urban Tree Connection (UTC) is a 501(c)(3) nonprofit community-based organization, and our mission is to work with residents in Philadelphia’s historically marginalized urban communities to transform abando'),
(2, 1, 2, 1, 1, '_id', '1'),
(3, 1, 2, 1, 1, '_order', '1000'),
(4, 1, 2, 1, 2, 'text', 'BUILDING COMMUNITY ONE VACANT LOT AT A TIME…\nThe Urban Tree Connection (UTC) is a 501(c)(3) nonprofit community-based organization, and our mission is to work with residents in Philadelphia’s historically marginalized urban communities to transform abando'),
(5, 1, 2, 1, 2, '_id', '1'),
(6, 1, 2, 1, 2, '_order', '1000'),
(7, 1, 2, 1, 3, 'text', 'BUILDING COMMUNITY ONE VACANT LOT AT A TIME…\r\nThe Urban Tree Connection (UTC) is a 501(c)(3) nonprofit community-based organization, and our mission is to work with residents in Philadelphia’s historically marginalized urban communities to transform aband'),
(8, 1, 2, 1, 3, '_id', '1'),
(9, 1, 2, 1, 3, '_order', '1000'),
(10, 1, 2, 1, 4, 'text', 'BUILDING COMMUNITY ONE VACANT LOT AT A TIME…\r\nThe Urban Tree Connection (UTC) is a 501(c)(3) nonprofit community-based organization, and our mission is to work with residents in Philadelphia’s historically marginalized urban communities to transform aband'),
(11, 1, 2, 1, 4, '_id', '1'),
(12, 1, 2, 1, 4, '_order', '1000'),
(13, 1, 2, 1, 5, 'text', 'BUILDING COMMUNITY ONE VACANT LOT AT A TIME…\r\nThe Urban Tree Connection (UTC) is a 501(c)(3) nonprofit community-based organization, and our mission is to work with residents in Philadelphia’s historically marginalized urban communities to transform aband'),
(14, 1, 2, 1, 5, '_id', '1'),
(15, 1, 2, 1, 5, '_order', '1000'),
(3435, 2, 3, 1, 17, '_order', '1000'),
(3434, 2, 3, 1, 17, '_id', '2'),
(3433, 2, 3, 1, 17, 'album__default', 'header-gallery'),
(3432, 2, 3, 1, 17, 'album_albumSlug', 'header-gallery'),
(3431, 2, 3, 1, 17, 'album', 'header-gallery'),
(3440, 2, 3, 1, 18, '_order', '1000'),
(3439, 2, 3, 1, 18, '_id', '2'),
(3438, 2, 3, 1, 18, 'album__default', 'header-gallery'),
(3437, 2, 3, 1, 18, 'album_albumSlug', 'header-gallery'),
(3436, 2, 3, 1, 18, 'album', 'header-gallery'),
(3445, 2, 3, 1, 19, '_order', '1000'),
(3444, 2, 3, 1, 19, '_id', '2'),
(3400, 2, 3, 1, 12, '_order', '1000'),
(3399, 2, 3, 1, 12, '_id', '2'),
(3398, 2, 3, 1, 12, 'album__default', 'header-gallery'),
(3397, 2, 3, 1, 12, 'album_albumSlug', 'header-gallery'),
(3396, 2, 3, 1, 12, 'album', 'header-gallery'),
(3405, 2, 3, 1, 13, '_order', '1000'),
(3404, 2, 3, 1, 13, '_id', '2'),
(3403, 2, 3, 1, 13, 'album__default', 'header-gallery'),
(3402, 2, 3, 1, 13, 'album_albumSlug', 'header-gallery'),
(3401, 2, 3, 1, 13, 'album', 'header-gallery'),
(3417, 2, 3, 1, 14, 'album_albumSlug', 'header-gallery'),
(3416, 2, 3, 1, 14, 'album', 'header-gallery'),
(3423, 2, 3, 1, 15, 'album__default', 'header-gallery'),
(3422, 2, 3, 1, 15, 'album_albumSlug', 'header-gallery'),
(3421, 2, 3, 1, 15, 'album', 'header-gallery'),
(3430, 2, 3, 1, 16, '_order', '1000'),
(3429, 2, 3, 1, 16, '_id', '2'),
(3428, 2, 3, 1, 16, 'album__default', 'header-gallery'),
(3427, 2, 3, 1, 16, 'album_albumSlug', 'header-gallery'),
(3426, 2, 3, 1, 16, 'album', 'header-gallery'),
(3443, 2, 3, 1, 19, 'album__default', 'header-gallery'),
(3442, 2, 3, 1, 19, 'album_albumSlug', 'header-gallery'),
(3441, 2, 3, 1, 19, 'album', 'header-gallery'),
(3944, 4, 4, 1, 32, 'body', 'Suspendisse proin ullamcorper quisque duis risus dolor volutpat sit nostra in blandit nunc scelerisque morbi dis vestibulum parturient luctus. Interdum tincidunt ultricies curae condimentum volutpat in a ullamcorper adipiscing class ac ultrices a senectus'),
(3943, 4, 4, 1, 32, 'showTimeStamp', '1'),
(3956, 4, 4, 1, 33, 'body', 'Suspendisse proin ullamcorper quisque duis risus dolor volutpat sit nostra in blandit nunc scelerisque morbi dis vestibulum parturient luctus. Interdum tincidunt ultricies curae condimentum volutpat in a ullamcorper adipiscing class ac ultrices a senectus'),
(3955, 4, 4, 1, 33, 'showTimeStamp', '1'),
(3954, 4, 4, 1, 33, 'date', '2018-08-28'),
(3953, 4, 4, 1, 33, 'heading', 'Announcement 2'),
(3952, 3, 4, 1, 33, '_order', '1000'),
(3951, 3, 4, 1, 33, '_id', '3'),
(3950, 3, 4, 1, 33, 'body', 'Phasellus fames viverra in eu eu gravida adipiscing vehicula in hendrerit urna erat ultricies a duis vestibulum a parturient vestibulum urna ipsum porta cubilia a sociis. Quam cursus lobortis faucibus adipiscing fringilla ut fames scelerisque nam turpis d'),
(3968, 4, 4, 1, 34, 'body', 'Suspendisse proin ullamcorper quisque duis risus dolor volutpat sit nostra in blandit nunc scelerisque morbi dis vestibulum parturient luctus. Interdum tincidunt ultricies curae condimentum volutpat in a ullamcorper adipiscing class ac ultrices a senectus'),
(3967, 4, 4, 1, 34, 'showTimeStamp', '1'),
(3966, 4, 4, 1, 34, 'date', '2018-08-28'),
(3965, 4, 4, 1, 34, 'heading', 'Announcement 2'),
(3964, 3, 4, 1, 34, '_order', '1000'),
(3963, 3, 4, 1, 34, '_id', '3'),
(3962, 3, 4, 1, 34, 'body', 'Phasellus fames viverra in eu eu gravida adipiscing vehicula in hendrerit urna erat ultricies a duis vestibulum a parturient vestibulum urna ipsum porta cubilia a sociis. Quam cursus lobortis faucibus adipiscing fringilla ut fames scelerisque nam turpis d'),
(3982, 4, 4, 1, 35, '_order', '1001'),
(3981, 4, 4, 1, 35, '_id', '4'),
(3980, 4, 4, 1, 35, 'body', 'Suspendisse proin ullamcorper quisque duis risus dolor volutpat sit nostra in blandit nunc scelerisque morbi dis vestibulum parturient luctus. Interdum tincidunt ultricies curae condimentum volutpat in a ullamcorper adipiscing class ac ultrices a senectus'),
(3979, 4, 4, 1, 35, 'showTimeStamp', '1'),
(3978, 4, 4, 1, 35, 'date', '2018-08-28'),
(3994, 4, 4, 1, 36, '_order', '1001'),
(3993, 4, 4, 1, 36, '_id', '4'),
(3992, 4, 4, 1, 36, 'body', 'Suspendisse proin ullamcorper quisque duis risus dolor volutpat sit nostra in blandit nunc scelerisque morbi dis vestibulum parturient luctus. Interdum tincidunt ultricies curae condimentum volutpat in a ullamcorper adipiscing class ac ultrices a senectus'),
(3991, 4, 4, 1, 36, 'showTimeStamp', '1'),
(3990, 4, 4, 1, 36, 'date', '2018-08-28'),
(3989, 4, 4, 1, 36, 'heading', 'Announcement 2'),
(3988, 3, 4, 1, 36, '_order', '1000'),
(4006, 4, 4, 1, 37, '_order', '1001'),
(4005, 4, 4, 1, 37, '_id', '4'),
(4004, 4, 4, 1, 37, 'body', 'Suspendisse proin ullamcorper quisque duis risus dolor volutpat sit nostra in blandit nunc scelerisque morbi dis vestibulum parturient luctus. Interdum tincidunt ultricies curae condimentum volutpat in a ullamcorper adipiscing class ac ultrices a senectus'),
(4003, 4, 4, 1, 37, 'showTimeStamp', ''),
(4002, 4, 4, 1, 37, 'date', '2018-08-28'),
(4001, 4, 4, 1, 37, 'heading', 'Announcement 2'),
(4000, 3, 4, 1, 37, '_order', '1000'),
(4018, 4, 4, 1, 38, '_order', '1001'),
(4017, 4, 4, 1, 38, '_id', '4'),
(4016, 4, 4, 1, 38, 'body', 'Suspendisse proin ullamcorper quisque duis risus dolor volutpat sit nostra in blandit nunc scelerisque morbi dis vestibulum parturient luctus. Interdum tincidunt ultricies curae condimentum volutpat in a ullamcorper adipiscing class ac ultrices a senectus'),
(4015, 4, 4, 1, 38, 'showTimeStamp', '1'),
(4014, 4, 4, 1, 38, 'date', '2018-08-28'),
(4013, 4, 4, 1, 38, 'heading', 'Announcement 2'),
(4012, 3, 4, 1, 38, '_order', '1000'),
(3932, 4, 4, 1, 31, 'body', 'Suspendisse proin ullamcorper quisque duis risus dolor volutpat sit nostra in blandit nunc scelerisque morbi dis vestibulum parturient luctus. Interdum tincidunt ultricies curae condimentum volutpat in a ullamcorper adipiscing class ac ultrices a senectus'),
(3931, 4, 4, 1, 31, 'showTimeStamp', ''),
(3930, 4, 4, 1, 31, 'date', '2018-08-28'),
(3929, 4, 4, 1, 31, 'heading', 'Announcement 2'),
(3928, 3, 4, 1, 31, '_order', '1000'),
(3927, 3, 4, 1, 31, '_id', '3'),
(3926, 3, 4, 1, 31, 'body', 'Phasellus fames viverra in eu eu gravida adipiscing vehicula in hendrerit urna erat ultricies a duis vestibulum a parturient vestibulum urna ipsum porta cubilia a sociis. Quam cursus lobortis faucibus adipiscing fringilla ut fames scelerisque nam turpis d'),
(3942, 4, 4, 1, 32, 'date', '2018-08-28'),
(3941, 4, 4, 1, 32, 'heading', 'Announcement 2'),
(3940, 3, 4, 1, 32, '_order', '1000'),
(3939, 3, 4, 1, 32, '_id', '3'),
(3938, 3, 4, 1, 32, 'body', 'Phasellus fames viverra in eu eu gravida adipiscing vehicula in hendrerit urna erat ultricies a duis vestibulum a parturient vestibulum urna ipsum porta cubilia a sociis. Quam cursus lobortis faucibus adipiscing fringilla ut fames scelerisque nam turpis d'),
(3987, 3, 4, 1, 36, '_id', '3'),
(3986, 3, 4, 1, 36, 'body', 'Phasellus fames viverra in eu eu gravida adipiscing vehicula in hendrerit urna erat ultricies a duis vestibulum a parturient vestibulum urna ipsum porta cubilia a sociis. Quam cursus lobortis faucibus adipiscing fringilla ut fames scelerisque nam turpis d'),
(3985, 3, 4, 1, 36, 'showTimeStamp', '1'),
(3999, 3, 4, 1, 37, '_id', '3'),
(3998, 3, 4, 1, 37, 'body', 'Phasellus fames viverra in eu eu gravida adipiscing vehicula in hendrerit urna erat ultricies a duis vestibulum a parturient vestibulum urna ipsum porta cubilia a sociis. Quam cursus lobortis faucibus adipiscing fringilla ut fames scelerisque nam turpis d'),
(3997, 3, 4, 1, 37, 'showTimeStamp', '1'),
(4011, 3, 4, 1, 38, '_id', '3'),
(4010, 3, 4, 1, 38, 'body', 'Phasellus fames viverra in eu eu gravida adipiscing vehicula in hendrerit urna erat ultricies a duis vestibulum a parturient vestibulum urna ipsum porta cubilia a sociis. Quam cursus lobortis faucibus adipiscing fringilla ut fames scelerisque nam turpis d'),
(4009, 3, 4, 1, 38, 'showTimeStamp', '1'),
(3925, 3, 4, 1, 31, 'showTimeStamp', '1'),
(3924, 3, 4, 1, 31, 'date', '2018-08-28'),
(3923, 3, 4, 1, 31, 'heading', 'Announcement 1'),
(3937, 3, 4, 1, 32, 'showTimeStamp', '1'),
(3936, 3, 4, 1, 32, 'date', '2018-08-28'),
(3935, 3, 4, 1, 32, 'heading', 'Announcement 1'),
(3949, 3, 4, 1, 33, 'showTimeStamp', ''),
(3948, 3, 4, 1, 33, 'date', '2018-08-28'),
(3947, 3, 4, 1, 33, 'heading', 'Announcement 1'),
(3388, 6, 5, 2, 25, '_order', '1000'),
(3395, 6, 5, 2, 26, '_order', '1000'),
(3343, 6, 5, 2, 19, 'right_image', '/admin/resources/sprout.jpg'),
(3342, 6, 5, 2, 19, 'text', 'The Urban Tree Connection (UTC) works with residents in Philadelphia’s historically marginalized urban communities to revitalize their neighborhoods by transforming abandoned open spaces into safe and functional places that inspire and promote positive hu'),
(3341, 6, 5, 2, 19, 'left_image_width', '100'),
(3350, 6, 5, 2, 20, 'right_image', '/admin/resources/sprout.jpg'),
(3349, 6, 5, 2, 20, 'text', 'The Urban Tree Connection (UTC) works with residents in Philadelphia’s historically marginalized urban communities to revitalize their neighborhoods by transforming abandoned open spaces into safe and functional places that inspire and promote positive hu'),
(3348, 6, 5, 2, 20, 'left_image_width', '100'),
(3357, 6, 5, 2, 21, 'right_image', '/admin/resources/sprout.jpg'),
(3356, 6, 5, 2, 21, 'text', 'The Urban Tree Connection (UTC) works with residents in Philadelphia’s historically marginalized urban communities to revitalize their neighborhoods by transforming abandoned open spaces into safe and functional places that inspire and promote positive hu'),
(3355, 6, 5, 2, 21, 'left_image_width', '100'),
(474, 7, 6, 2, 9, '_order', '1000'),
(473, 7, 6, 2, 9, '_id', '7'),
(472, 7, 6, 2, 9, 'work_organization', 'Lenfest'),
(471, 7, 6, 2, 9, 'work_position', 'Program Manager'),
(470, 7, 6, 2, 9, 'utc_title', 'UTC Board Chair'),
(469, 7, 6, 2, 9, 'last_name', 'Blunt'),
(468, 7, 6, 2, 9, 'first_name', 'India'),
(523, 7, 6, 2, 10, '_order', '1000'),
(522, 7, 6, 2, 10, '_id', '7'),
(521, 7, 6, 2, 10, 'work_organization', 'Lenfest'),
(520, 7, 6, 2, 10, 'work_position', 'Program Manager'),
(519, 7, 6, 2, 10, 'utc_title', 'UTC Board Chair'),
(518, 7, 6, 2, 10, 'last_name', 'Blunt'),
(517, 7, 6, 2, 10, 'first_name', 'India'),
(579, 7, 6, 2, 11, '_order', '1000'),
(578, 7, 6, 2, 11, '_id', '7'),
(577, 7, 6, 2, 11, 'work_organization', 'Lenfest'),
(576, 7, 6, 2, 11, 'work_position', 'Program Manager'),
(575, 7, 6, 2, 11, 'utc_title', 'UTC Board Chair'),
(574, 7, 6, 2, 11, 'last_name', 'Blunt'),
(573, 7, 6, 2, 11, 'first_name', 'India'),
(328, 7, 6, 2, 4, 'first_name', 'India'),
(329, 7, 6, 2, 4, 'last_name', 'Blunt'),
(330, 7, 6, 2, 4, 'utc_title', 'UTC Board Chair'),
(331, 7, 6, 2, 4, 'work_position', 'Program Manager'),
(332, 7, 6, 2, 4, 'work_organization', 'Lenfest'),
(333, 7, 6, 2, 4, '_id', '7'),
(334, 7, 6, 2, 4, '_order', '1000'),
(335, 8, 6, 2, 4, 'first_name', 'Jayne'),
(336, 8, 6, 2, 4, 'last_name', 'Mariotti'),
(337, 8, 6, 2, 4, 'utc_title', 'UTC Board Vice-Chair'),
(338, 8, 6, 2, 4, 'work_position', 'Associate'),
(339, 8, 6, 2, 4, 'work_organization', 'Ballard Spahr, LLP'),
(340, 8, 6, 2, 4, '_id', '8'),
(341, 8, 6, 2, 4, '_order', '1001'),
(342, 7, 6, 2, 5, 'first_name', 'India'),
(343, 7, 6, 2, 5, 'last_name', 'Blunt'),
(344, 7, 6, 2, 5, 'utc_title', 'UTC Board Chair'),
(345, 7, 6, 2, 5, 'work_position', 'Program Manager'),
(346, 7, 6, 2, 5, 'work_organization', 'Lenfest'),
(347, 7, 6, 2, 5, '_id', '7'),
(348, 7, 6, 2, 5, '_order', '1000'),
(349, 8, 6, 2, 5, 'first_name', 'Jayne'),
(350, 8, 6, 2, 5, 'last_name', 'Mariotti'),
(351, 8, 6, 2, 5, 'utc_title', 'UTC Board Vice-Chair'),
(352, 8, 6, 2, 5, 'work_position', 'Associate'),
(353, 8, 6, 2, 5, 'work_organization', 'Ballard Spahr, LLP'),
(354, 8, 6, 2, 5, '_id', '8'),
(355, 8, 6, 2, 5, '_order', '1001'),
(356, 9, 6, 2, 5, 'first_name', 'Katherine'),
(357, 9, 6, 2, 5, 'last_name', 'Madonna'),
(358, 9, 6, 2, 5, 'utc_title', 'UTC Board Treasurer'),
(359, 9, 6, 2, 5, 'work_position', 'Director of Finance'),
(360, 9, 6, 2, 5, 'work_organization', 'Department of OBGYN, Penn Medicine'),
(361, 9, 6, 2, 5, '_id', '9'),
(362, 9, 6, 2, 5, '_order', '1002'),
(363, 7, 6, 2, 6, 'first_name', 'India'),
(364, 7, 6, 2, 6, 'last_name', 'Blunt'),
(365, 7, 6, 2, 6, 'utc_title', 'UTC Board Chair'),
(366, 7, 6, 2, 6, 'work_position', 'Program Manager'),
(367, 7, 6, 2, 6, 'work_organization', 'Lenfest'),
(368, 7, 6, 2, 6, '_id', '7'),
(369, 7, 6, 2, 6, '_order', '1000'),
(370, 8, 6, 2, 6, 'first_name', 'Jayne'),
(371, 8, 6, 2, 6, 'last_name', 'Mariotti'),
(372, 8, 6, 2, 6, 'utc_title', 'UTC Board Vice-Chair'),
(373, 8, 6, 2, 6, 'work_position', 'Associate'),
(374, 8, 6, 2, 6, 'work_organization', 'Ballard Spahr, LLP'),
(375, 8, 6, 2, 6, '_id', '8'),
(376, 8, 6, 2, 6, '_order', '1001'),
(377, 9, 6, 2, 6, 'first_name', 'Katherine'),
(378, 9, 6, 2, 6, 'last_name', 'Madonna'),
(379, 9, 6, 2, 6, 'utc_title', 'UTC Board Treasurer'),
(380, 9, 6, 2, 6, 'work_position', 'Director of Finance'),
(381, 9, 6, 2, 6, 'work_organization', 'Department of OBGYN, Penn Medicine'),
(382, 9, 6, 2, 6, '_id', '9'),
(383, 9, 6, 2, 6, '_order', '1002'),
(384, 10, 6, 2, 6, 'first_name', 'Lauren'),
(385, 10, 6, 2, 6, 'last_name', 'Fox'),
(386, 10, 6, 2, 6, 'utc_title', 'UTC Board Secretary'),
(387, 10, 6, 2, 6, 'work_position', 'Member'),
(388, 10, 6, 2, 6, 'work_organization', 'Cozen O\'Connor'),
(389, 10, 6, 2, 6, '_id', '10'),
(390, 10, 6, 2, 6, '_order', '1003'),
(391, 7, 6, 2, 7, 'first_name', 'India'),
(392, 7, 6, 2, 7, 'last_name', 'Blunt'),
(393, 7, 6, 2, 7, 'utc_title', 'UTC Board Chair'),
(394, 7, 6, 2, 7, 'work_position', 'Program Manager'),
(395, 7, 6, 2, 7, 'work_organization', 'Lenfest'),
(396, 7, 6, 2, 7, '_id', '7'),
(397, 7, 6, 2, 7, '_order', '1000'),
(398, 8, 6, 2, 7, 'first_name', 'Jayne'),
(399, 8, 6, 2, 7, 'last_name', 'Mariotti'),
(400, 8, 6, 2, 7, 'utc_title', 'UTC Board Vice-Chair'),
(401, 8, 6, 2, 7, 'work_position', 'Associate'),
(402, 8, 6, 2, 7, 'work_organization', 'Ballard Spahr, LLP'),
(403, 8, 6, 2, 7, '_id', '8'),
(404, 8, 6, 2, 7, '_order', '1001'),
(405, 9, 6, 2, 7, 'first_name', 'Katherine'),
(406, 9, 6, 2, 7, 'last_name', 'Madonna'),
(407, 9, 6, 2, 7, 'utc_title', 'UTC Board Treasurer'),
(408, 9, 6, 2, 7, 'work_position', 'Director of Finance'),
(409, 9, 6, 2, 7, 'work_organization', 'Department of OBGYN, Penn Medicine'),
(410, 9, 6, 2, 7, '_id', '9'),
(411, 9, 6, 2, 7, '_order', '1002'),
(412, 10, 6, 2, 7, 'first_name', 'Lauren'),
(413, 10, 6, 2, 7, 'last_name', 'Fox'),
(414, 10, 6, 2, 7, 'utc_title', 'UTC Board Secretary'),
(415, 10, 6, 2, 7, 'work_position', 'Member'),
(416, 10, 6, 2, 7, 'work_organization', 'Cozen O\'Connor'),
(417, 10, 6, 2, 7, '_id', '10'),
(418, 10, 6, 2, 7, '_order', '1003'),
(419, 11, 6, 2, 7, 'first_name', 'Joann'),
(420, 11, 6, 2, 7, 'last_name', 'Manuel'),
(421, 11, 6, 2, 7, 'utc_title', 'Community Liaison'),
(422, 11, 6, 2, 7, 'work_position', 'Executive Secretary'),
(423, 11, 6, 2, 7, 'work_organization', 'CATCH, Inc.'),
(424, 11, 6, 2, 7, '_id', '11'),
(425, 11, 6, 2, 7, '_order', '1004'),
(426, 7, 6, 2, 8, 'first_name', 'India'),
(427, 7, 6, 2, 8, 'last_name', 'Blunt'),
(428, 7, 6, 2, 8, 'utc_title', 'UTC Board Chair'),
(429, 7, 6, 2, 8, 'work_position', 'Program Manager'),
(430, 7, 6, 2, 8, 'work_organization', 'Lenfest'),
(431, 7, 6, 2, 8, '_id', '7'),
(432, 7, 6, 2, 8, '_order', '1000'),
(433, 8, 6, 2, 8, 'first_name', 'Jayne'),
(434, 8, 6, 2, 8, 'last_name', 'Mariotti'),
(435, 8, 6, 2, 8, 'utc_title', 'UTC Board Vice-Chair'),
(436, 8, 6, 2, 8, 'work_position', 'Associate'),
(437, 8, 6, 2, 8, 'work_organization', 'Ballard Spahr, LLP'),
(438, 8, 6, 2, 8, '_id', '8'),
(439, 8, 6, 2, 8, '_order', '1001'),
(440, 9, 6, 2, 8, 'first_name', 'Katherine'),
(441, 9, 6, 2, 8, 'last_name', 'Madonna'),
(442, 9, 6, 2, 8, 'utc_title', 'UTC Board Treasurer'),
(443, 9, 6, 2, 8, 'work_position', 'Director of Finance'),
(444, 9, 6, 2, 8, 'work_organization', 'Department of OBGYN, Penn Medicine'),
(445, 9, 6, 2, 8, '_id', '9'),
(446, 9, 6, 2, 8, '_order', '1002'),
(447, 10, 6, 2, 8, 'first_name', 'Lauren'),
(448, 10, 6, 2, 8, 'last_name', 'Fox'),
(449, 10, 6, 2, 8, 'utc_title', 'UTC Board Secretary'),
(450, 10, 6, 2, 8, 'work_position', 'Member'),
(451, 10, 6, 2, 8, 'work_organization', 'Cozen O\'Connor'),
(452, 10, 6, 2, 8, '_id', '10'),
(453, 10, 6, 2, 8, '_order', '1003'),
(454, 11, 6, 2, 8, 'first_name', 'Joann'),
(455, 11, 6, 2, 8, 'last_name', 'Manuel'),
(456, 11, 6, 2, 8, 'utc_title', 'Community Liaison'),
(457, 11, 6, 2, 8, 'work_position', 'Executive Secretary'),
(458, 11, 6, 2, 8, 'work_organization', 'CATCH, Inc.'),
(459, 11, 6, 2, 8, '_id', '11'),
(460, 11, 6, 2, 8, '_order', '1004'),
(461, 12, 6, 2, 8, 'first_name', 'Keon'),
(462, 12, 6, 2, 8, 'last_name', 'Mercedes-Liberato'),
(463, 12, 6, 2, 8, 'utc_title', ''),
(464, 12, 6, 2, 8, 'work_position', 'Track Maintenance & Inspection'),
(465, 12, 6, 2, 8, 'work_organization', 'National Railroad Passenger Corporation'),
(466, 12, 6, 2, 8, '_id', '12'),
(467, 12, 6, 2, 8, '_order', '1005'),
(475, 8, 6, 2, 9, 'first_name', 'Jayne'),
(476, 8, 6, 2, 9, 'last_name', 'Mariotti'),
(477, 8, 6, 2, 9, 'utc_title', 'UTC Board Vice-Chair'),
(478, 8, 6, 2, 9, 'work_position', 'Associate'),
(479, 8, 6, 2, 9, 'work_organization', 'Ballard Spahr, LLP'),
(480, 8, 6, 2, 9, '_id', '8'),
(481, 8, 6, 2, 9, '_order', '1001'),
(482, 9, 6, 2, 9, 'first_name', 'Katherine'),
(483, 9, 6, 2, 9, 'last_name', 'Madonna'),
(484, 9, 6, 2, 9, 'utc_title', 'UTC Board Treasurer'),
(485, 9, 6, 2, 9, 'work_position', 'Director of Finance'),
(486, 9, 6, 2, 9, 'work_organization', 'Department of OBGYN, Penn Medicine'),
(487, 9, 6, 2, 9, '_id', '9'),
(488, 9, 6, 2, 9, '_order', '1002'),
(489, 10, 6, 2, 9, 'first_name', 'Lauren'),
(490, 10, 6, 2, 9, 'last_name', 'Fox'),
(491, 10, 6, 2, 9, 'utc_title', 'UTC Board Secretary'),
(492, 10, 6, 2, 9, 'work_position', 'Member'),
(493, 10, 6, 2, 9, 'work_organization', 'Cozen O\'Connor'),
(494, 10, 6, 2, 9, '_id', '10'),
(495, 10, 6, 2, 9, '_order', '1003'),
(496, 11, 6, 2, 9, 'first_name', 'Joann'),
(497, 11, 6, 2, 9, 'last_name', 'Manuel'),
(498, 11, 6, 2, 9, 'utc_title', 'Community Liaison'),
(499, 11, 6, 2, 9, 'work_position', 'Executive Secretary'),
(500, 11, 6, 2, 9, 'work_organization', 'CATCH, Inc.'),
(501, 11, 6, 2, 9, '_id', '11'),
(502, 11, 6, 2, 9, '_order', '1004'),
(503, 12, 6, 2, 9, 'first_name', 'Keon'),
(504, 12, 6, 2, 9, 'last_name', 'Mercedes-Liberato'),
(505, 12, 6, 2, 9, 'utc_title', ''),
(506, 12, 6, 2, 9, 'work_position', 'Track Maintenance & Inspection'),
(507, 12, 6, 2, 9, 'work_organization', 'National Railroad Passenger Corporation'),
(508, 12, 6, 2, 9, '_id', '12'),
(509, 12, 6, 2, 9, '_order', '1005'),
(510, 13, 6, 2, 9, 'first_name', 'Tamar'),
(511, 13, 6, 2, 9, 'last_name', 'Sharabi'),
(512, 13, 6, 2, 9, 'utc_title', ''),
(513, 13, 6, 2, 9, 'work_position', 'Engineer II, Field Services'),
(514, 13, 6, 2, 9, 'work_organization', 'Philadelphia Gas Works'),
(515, 13, 6, 2, 9, '_id', '13'),
(516, 13, 6, 2, 9, '_order', '1006'),
(524, 8, 6, 2, 10, 'first_name', 'Jayne'),
(525, 8, 6, 2, 10, 'last_name', 'Mariotti'),
(526, 8, 6, 2, 10, 'utc_title', 'UTC Board Vice-Chair'),
(527, 8, 6, 2, 10, 'work_position', 'Associate'),
(528, 8, 6, 2, 10, 'work_organization', 'Ballard Spahr, LLP'),
(529, 8, 6, 2, 10, '_id', '8'),
(530, 8, 6, 2, 10, '_order', '1001'),
(531, 9, 6, 2, 10, 'first_name', 'Katherine'),
(532, 9, 6, 2, 10, 'last_name', 'Madonna'),
(533, 9, 6, 2, 10, 'utc_title', 'UTC Board Treasurer'),
(534, 9, 6, 2, 10, 'work_position', 'Director of Finance'),
(535, 9, 6, 2, 10, 'work_organization', 'Department of OBGYN, Penn Medicine'),
(536, 9, 6, 2, 10, '_id', '9'),
(537, 9, 6, 2, 10, '_order', '1002'),
(538, 10, 6, 2, 10, 'first_name', 'Lauren'),
(539, 10, 6, 2, 10, 'last_name', 'Fox'),
(540, 10, 6, 2, 10, 'utc_title', 'UTC Board Secretary'),
(541, 10, 6, 2, 10, 'work_position', 'Member'),
(542, 10, 6, 2, 10, 'work_organization', 'Cozen O\'Connor'),
(543, 10, 6, 2, 10, '_id', '10'),
(544, 10, 6, 2, 10, '_order', '1003'),
(545, 11, 6, 2, 10, 'first_name', 'Joann'),
(546, 11, 6, 2, 10, 'last_name', 'Manuel'),
(547, 11, 6, 2, 10, 'utc_title', 'Community Liaison'),
(548, 11, 6, 2, 10, 'work_position', 'Executive Secretary'),
(549, 11, 6, 2, 10, 'work_organization', 'CATCH, Inc.'),
(550, 11, 6, 2, 10, '_id', '11'),
(551, 11, 6, 2, 10, '_order', '1004'),
(552, 12, 6, 2, 10, 'first_name', 'Keon'),
(553, 12, 6, 2, 10, 'last_name', 'Mercedes-Liberato'),
(554, 12, 6, 2, 10, 'utc_title', ''),
(555, 12, 6, 2, 10, 'work_position', 'Track Maintenance & Inspection'),
(556, 12, 6, 2, 10, 'work_organization', 'National Railroad Passenger Corporation'),
(557, 12, 6, 2, 10, '_id', '12'),
(558, 12, 6, 2, 10, '_order', '1005'),
(559, 13, 6, 2, 10, 'first_name', 'Tamar'),
(560, 13, 6, 2, 10, 'last_name', 'Sharabi'),
(561, 13, 6, 2, 10, 'utc_title', ''),
(562, 13, 6, 2, 10, 'work_position', 'Engineer II, Field Services'),
(563, 13, 6, 2, 10, 'work_organization', 'Philadelphia Gas Works'),
(564, 13, 6, 2, 10, '_id', '13'),
(565, 13, 6, 2, 10, '_order', '1006'),
(566, 14, 6, 2, 10, 'first_name', 'Noelle'),
(567, 14, 6, 2, 10, 'last_name', 'Warford'),
(568, 14, 6, 2, 10, 'utc_title', ''),
(569, 14, 6, 2, 10, 'work_position', 'Executive Director'),
(570, 14, 6, 2, 10, 'work_organization', 'Urban Tree Connection'),
(571, 14, 6, 2, 10, '_id', '14'),
(572, 14, 6, 2, 10, '_order', '1007'),
(580, 8, 6, 2, 11, 'first_name', 'Jayne'),
(581, 8, 6, 2, 11, 'last_name', 'Mariotti'),
(582, 8, 6, 2, 11, 'utc_title', 'UTC Board Vice-Chair'),
(583, 8, 6, 2, 11, 'work_position', 'Associate'),
(584, 8, 6, 2, 11, 'work_organization', 'Ballard Spahr, LLP'),
(585, 8, 6, 2, 11, '_id', '8'),
(586, 8, 6, 2, 11, '_order', '1001'),
(587, 9, 6, 2, 11, 'first_name', 'Katherine'),
(588, 9, 6, 2, 11, 'last_name', 'Madonna'),
(589, 9, 6, 2, 11, 'utc_title', 'UTC Board Treasurer'),
(590, 9, 6, 2, 11, 'work_position', 'Director of Finance'),
(591, 9, 6, 2, 11, 'work_organization', 'Department of OBGYN, Penn Medicine'),
(592, 9, 6, 2, 11, '_id', '9'),
(593, 9, 6, 2, 11, '_order', '1002'),
(594, 10, 6, 2, 11, 'first_name', 'Lauren'),
(595, 10, 6, 2, 11, 'last_name', 'Fox'),
(596, 10, 6, 2, 11, 'utc_title', 'UTC Board Secretary'),
(597, 10, 6, 2, 11, 'work_position', 'Member'),
(598, 10, 6, 2, 11, 'work_organization', 'Cozen O\'Connor'),
(599, 10, 6, 2, 11, '_id', '10'),
(600, 10, 6, 2, 11, '_order', '1003'),
(601, 11, 6, 2, 11, 'first_name', 'Joann'),
(602, 11, 6, 2, 11, 'last_name', 'Manuel'),
(603, 11, 6, 2, 11, 'utc_title', 'Community Liaison'),
(604, 11, 6, 2, 11, 'work_position', 'Executive Secretary'),
(605, 11, 6, 2, 11, 'work_organization', 'CATCH, Inc.'),
(606, 11, 6, 2, 11, '_id', '11'),
(607, 11, 6, 2, 11, '_order', '1004'),
(608, 12, 6, 2, 11, 'first_name', 'Keon'),
(609, 12, 6, 2, 11, 'last_name', 'Mercedes-Liberato'),
(610, 12, 6, 2, 11, 'utc_title', ''),
(611, 12, 6, 2, 11, 'work_position', 'Track Maintenance & Inspection'),
(612, 12, 6, 2, 11, 'work_organization', 'National Railroad Passenger Corporation'),
(613, 12, 6, 2, 11, '_id', '12'),
(614, 12, 6, 2, 11, '_order', '1005'),
(615, 13, 6, 2, 11, 'first_name', 'Tamar'),
(616, 13, 6, 2, 11, 'last_name', 'Sharabi'),
(617, 13, 6, 2, 11, 'utc_title', ''),
(618, 13, 6, 2, 11, 'work_position', 'Engineer II, Field Services'),
(619, 13, 6, 2, 11, 'work_organization', 'Philadelphia Gas Works'),
(620, 13, 6, 2, 11, '_id', '13'),
(621, 13, 6, 2, 11, '_order', '1006'),
(622, 14, 6, 2, 11, 'first_name', 'Noelle'),
(623, 14, 6, 2, 11, 'last_name', 'Warford'),
(624, 14, 6, 2, 11, 'utc_title', ''),
(625, 14, 6, 2, 11, 'work_position', 'Executive Director'),
(626, 14, 6, 2, 11, 'work_organization', 'Urban Tree Connection'),
(627, 14, 6, 2, 11, '_id', '14'),
(628, 14, 6, 2, 11, '_order', '1007'),
(629, 15, 6, 2, 11, 'first_name', 'Shane'),
(630, 15, 6, 2, 11, 'last_name', 'Mayo'),
(631, 15, 6, 2, 11, 'utc_title', ''),
(632, 15, 6, 2, 11, 'work_position', 'Manager of Administrative Services'),
(633, 15, 6, 2, 11, 'work_organization', 'Philadelphia Gas Works'),
(634, 15, 6, 2, 11, '_id', '15'),
(635, 15, 6, 2, 11, '_order', '1008'),
(636, 16, 7, 2, 1, 'first_name', 'Noelle'),
(637, 16, 7, 2, 1, 'last_name', 'Warford'),
(638, 16, 7, 2, 1, 'position', 'Executive Director'),
(639, 16, 7, 2, 1, 'email', 'noelle@urbantreeconnection.org'),
(640, 16, 7, 2, 1, '_id', '16'),
(641, 16, 7, 2, 1, '_order', '1000'),
(642, 16, 7, 2, 2, 'first_name', 'Noelle'),
(643, 16, 7, 2, 2, 'last_name', 'Warford'),
(644, 16, 7, 2, 2, 'position', 'Executive Director'),
(645, 16, 7, 2, 2, 'email', 'noelle@urbantreeconnection.org'),
(646, 16, 7, 2, 2, '_id', '16'),
(647, 16, 7, 2, 2, '_order', '1000'),
(648, 17, 7, 2, 2, 'first_name', 'Nykisha'),
(649, 17, 7, 2, 2, 'last_name', 'Madison'),
(650, 17, 7, 2, 2, 'position', 'Farm Manager'),
(651, 17, 7, 2, 2, 'email', 'nykisha@urbantreeconnection.org'),
(652, 17, 7, 2, 2, '_id', '17'),
(653, 17, 7, 2, 2, '_order', '1001'),
(654, 16, 7, 2, 3, 'first_name', 'Noelle'),
(655, 16, 7, 2, 3, 'last_name', 'Warford'),
(656, 16, 7, 2, 3, 'position', 'Executive Director'),
(657, 16, 7, 2, 3, 'email', 'noelle@urbantreeconnection.org'),
(658, 16, 7, 2, 3, '_id', '16'),
(659, 16, 7, 2, 3, '_order', '1000'),
(660, 17, 7, 2, 3, 'first_name', 'Nykisha'),
(661, 17, 7, 2, 3, 'last_name', 'Madison'),
(662, 17, 7, 2, 3, 'position', 'Farm Manager'),
(663, 17, 7, 2, 3, 'email', 'nykisha@urbantreeconnection.org'),
(664, 17, 7, 2, 3, '_id', '17'),
(665, 17, 7, 2, 3, '_order', '1001'),
(666, 18, 7, 2, 3, 'first_name', 'Amirah'),
(667, 18, 7, 2, 3, 'last_name', 'Mitchell'),
(668, 18, 7, 2, 3, 'position', 'Community Education Coordinator'),
(669, 18, 7, 2, 3, 'email', 'amirah@urbantreeconnection.org'),
(670, 18, 7, 2, 3, '_id', '18'),
(671, 18, 7, 2, 3, '_order', '1002'),
(672, 16, 7, 2, 4, 'first_name', 'Noelle'),
(673, 16, 7, 2, 4, 'last_name', 'Warford'),
(674, 16, 7, 2, 4, 'position', 'Executive Director'),
(675, 16, 7, 2, 4, 'email', 'noelle@urbantreeconnection.org'),
(676, 16, 7, 2, 4, '_id', '16'),
(677, 16, 7, 2, 4, '_order', '1000'),
(678, 17, 7, 2, 4, 'first_name', 'Nykisha'),
(679, 17, 7, 2, 4, 'last_name', 'Madison'),
(680, 17, 7, 2, 4, 'position', 'Farm Manager'),
(681, 17, 7, 2, 4, 'email', 'nykisha@urbantreeconnection.org'),
(682, 17, 7, 2, 4, '_id', '17'),
(683, 17, 7, 2, 4, '_order', '1001'),
(684, 18, 7, 2, 4, 'first_name', 'Amirah'),
(685, 18, 7, 2, 4, 'last_name', 'Mitchell'),
(686, 18, 7, 2, 4, 'position', 'Community Education Coordinator'),
(687, 18, 7, 2, 4, 'email', 'amirah@urbantreeconnection.org'),
(688, 18, 7, 2, 4, '_id', '18'),
(689, 18, 7, 2, 4, '_order', '1002'),
(690, 19, 7, 2, 4, 'first_name', 'Daniel'),
(691, 19, 7, 2, 4, 'last_name', 'Reyes'),
(692, 19, 7, 2, 4, 'position', 'Land Stewardship Coordinator'),
(693, 19, 7, 2, 4, 'email', 'daniel@urbantreeconnection.org'),
(694, 19, 7, 2, 4, '_id', '19'),
(695, 19, 7, 2, 4, '_order', '1003'),
(696, 16, 7, 2, 5, 'first_name', 'Noelle'),
(697, 16, 7, 2, 5, 'last_name', 'Warford'),
(698, 16, 7, 2, 5, 'position', 'Executive Director'),
(699, 16, 7, 2, 5, 'email', 'noelle@urbantreeconnection.org'),
(700, 16, 7, 2, 5, '_id', '16'),
(701, 16, 7, 2, 5, '_order', '1000'),
(702, 17, 7, 2, 5, 'first_name', 'Nykisha'),
(703, 17, 7, 2, 5, 'last_name', 'Madison'),
(704, 17, 7, 2, 5, 'position', 'Farm Manager'),
(705, 17, 7, 2, 5, 'email', 'nykisha@urbantreeconnection.org'),
(706, 17, 7, 2, 5, '_id', '17'),
(707, 17, 7, 2, 5, '_order', '1001'),
(708, 18, 7, 2, 5, 'first_name', 'Amirah'),
(709, 18, 7, 2, 5, 'last_name', 'Mitchell'),
(710, 18, 7, 2, 5, 'position', 'Community Education Coordinator'),
(711, 18, 7, 2, 5, 'email', 'amirah@urbantreeconnection.org'),
(712, 18, 7, 2, 5, '_id', '18'),
(713, 18, 7, 2, 5, '_order', '1002'),
(714, 19, 7, 2, 5, 'first_name', 'Daniel'),
(715, 19, 7, 2, 5, 'last_name', 'Reyes'),
(716, 19, 7, 2, 5, 'position', 'Land Stewardship Coordinator'),
(717, 19, 7, 2, 5, 'email', 'daniel@urbantreeconnection.org'),
(718, 19, 7, 2, 5, '_id', '19'),
(719, 19, 7, 2, 5, '_order', '1003'),
(720, 20, 7, 2, 5, 'first_name', 'Jahzara'),
(721, 20, 7, 2, 5, 'last_name', 'Heredia'),
(722, 20, 7, 2, 5, 'position', 'Lead Farmer'),
(723, 20, 7, 2, 5, 'email', 'jahzara@urbantreeconnection.org'),
(724, 20, 7, 2, 5, '_id', '20'),
(725, 20, 7, 2, 5, '_order', '1004'),
(726, 16, 7, 2, 6, 'first_name', 'Noelle'),
(727, 16, 7, 2, 6, 'last_name', 'Warford'),
(728, 16, 7, 2, 6, 'position', 'Executive Director'),
(729, 16, 7, 2, 6, 'email', 'noelle@urbantreeconnection.org'),
(730, 16, 7, 2, 6, '_id', '16'),
(731, 16, 7, 2, 6, '_order', '1000'),
(732, 17, 7, 2, 6, 'first_name', 'Nykisha'),
(733, 17, 7, 2, 6, 'last_name', 'Madison'),
(734, 17, 7, 2, 6, 'position', 'Farm Manager'),
(735, 17, 7, 2, 6, 'email', 'nykisha@urbantreeconnection.org'),
(736, 17, 7, 2, 6, '_id', '17'),
(737, 17, 7, 2, 6, '_order', '1001'),
(738, 18, 7, 2, 6, 'first_name', 'Amirah'),
(739, 18, 7, 2, 6, 'last_name', 'Mitchell'),
(740, 18, 7, 2, 6, 'position', 'Community Education Coordinator'),
(741, 18, 7, 2, 6, 'email', 'amirah@urbantreeconnection.org'),
(742, 18, 7, 2, 6, '_id', '18'),
(743, 18, 7, 2, 6, '_order', '1002'),
(744, 19, 7, 2, 6, 'first_name', 'Daniel'),
(745, 19, 7, 2, 6, 'last_name', 'Reyes'),
(746, 19, 7, 2, 6, 'position', 'Land Stewardship Coordinator'),
(747, 19, 7, 2, 6, 'email', 'daniel@urbantreeconnection.org'),
(748, 19, 7, 2, 6, '_id', '19'),
(749, 19, 7, 2, 6, '_order', '1003'),
(750, 20, 7, 2, 6, 'first_name', 'Jahzara'),
(751, 20, 7, 2, 6, 'last_name', 'Heredia'),
(752, 20, 7, 2, 6, 'position', 'Lead Farmer'),
(753, 20, 7, 2, 6, 'email', 'jahzara@urbantreeconnection.org'),
(754, 20, 7, 2, 6, '_id', '20'),
(755, 20, 7, 2, 6, '_order', '1004'),
(756, 21, 7, 2, 6, 'first_name', 'Mecca'),
(757, 21, 7, 2, 6, 'last_name', 'Brooks'),
(758, 21, 7, 2, 6, 'position', 'Food Distribution Coordinator'),
(759, 21, 7, 2, 6, 'email', 'mecca@urbantreeconnection.org'),
(760, 21, 7, 2, 6, '_id', '21'),
(761, 21, 7, 2, 6, '_order', '1005'),
(762, 16, 7, 2, 7, 'first_name', 'Noelle'),
(763, 16, 7, 2, 7, 'last_name', 'Warford'),
(764, 16, 7, 2, 7, 'position', 'Executive Director'),
(765, 16, 7, 2, 7, 'email', 'noelle@urbantreeconnection.org'),
(766, 16, 7, 2, 7, '_id', '16'),
(767, 16, 7, 2, 7, '_order', '1000'),
(768, 17, 7, 2, 7, 'first_name', 'Nykisha'),
(769, 17, 7, 2, 7, 'last_name', 'Madison'),
(770, 17, 7, 2, 7, 'position', 'Farm Manager'),
(771, 17, 7, 2, 7, 'email', 'nykisha@urbantreeconnection.org'),
(772, 17, 7, 2, 7, '_id', '17'),
(773, 17, 7, 2, 7, '_order', '1001'),
(774, 18, 7, 2, 7, 'first_name', 'Amirah'),
(775, 18, 7, 2, 7, 'last_name', 'Mitchell'),
(776, 18, 7, 2, 7, 'position', 'Community Education Coordinator'),
(777, 18, 7, 2, 7, 'email', 'amirah@urbantreeconnection.org'),
(778, 18, 7, 2, 7, '_id', '18'),
(779, 18, 7, 2, 7, '_order', '1002'),
(780, 19, 7, 2, 7, 'first_name', 'Daniel'),
(781, 19, 7, 2, 7, 'last_name', 'Reyes'),
(782, 19, 7, 2, 7, 'position', 'Land Stewardship Coordinator'),
(783, 19, 7, 2, 7, 'email', 'daniel@urbantreeconnection.org'),
(784, 19, 7, 2, 7, '_id', '19'),
(785, 19, 7, 2, 7, '_order', '1003'),
(786, 20, 7, 2, 7, 'first_name', 'Jahzara'),
(787, 20, 7, 2, 7, 'last_name', 'Heredia'),
(788, 20, 7, 2, 7, 'position', 'Lead Farmer'),
(789, 20, 7, 2, 7, 'email', 'jahzara@urbantreeconnection.org'),
(790, 20, 7, 2, 7, '_id', '20'),
(791, 20, 7, 2, 7, '_order', '1004'),
(792, 21, 7, 2, 7, 'first_name', 'Mecca'),
(793, 21, 7, 2, 7, 'last_name', 'Brooks'),
(794, 21, 7, 2, 7, 'position', 'Food Distribution Coordinator'),
(795, 21, 7, 2, 7, 'email', 'mecca@urbantreeconnection.org'),
(796, 21, 7, 2, 7, '_id', '21'),
(797, 21, 7, 2, 7, '_order', '1005'),
(798, 22, 7, 2, 7, 'first_name', 'Lisa'),
(799, 22, 7, 2, 7, 'last_name', 'Barkley'),
(800, 22, 7, 2, 7, 'position', 'Community Liaison'),
(801, 22, 7, 2, 7, 'email', 'lisa@urbantreeconnection.org'),
(802, 22, 7, 2, 7, '_id', '22'),
(803, 22, 7, 2, 7, '_order', '1006'),
(804, 16, 7, 2, 8, 'first_name', 'Noelle'),
(805, 16, 7, 2, 8, 'last_name', 'Warford'),
(806, 16, 7, 2, 8, 'position', 'Executive Director'),
(807, 16, 7, 2, 8, 'email', 'noelle@urbantreeconnection.org'),
(808, 16, 7, 2, 8, '_id', '16'),
(809, 16, 7, 2, 8, '_order', '1000'),
(810, 17, 7, 2, 8, 'first_name', 'Nykisha'),
(811, 17, 7, 2, 8, 'last_name', 'Madison'),
(812, 17, 7, 2, 8, 'position', 'Farm Manager'),
(813, 17, 7, 2, 8, 'email', 'nykisha@urbantreeconnection.org'),
(814, 17, 7, 2, 8, '_id', '17'),
(815, 17, 7, 2, 8, '_order', '1001'),
(816, 18, 7, 2, 8, 'first_name', 'Amirah'),
(817, 18, 7, 2, 8, 'last_name', 'Mitchell'),
(818, 18, 7, 2, 8, 'position', 'Community Education Coordinator'),
(819, 18, 7, 2, 8, 'email', 'amirah@urbantreeconnection.org'),
(820, 18, 7, 2, 8, '_id', '18'),
(821, 18, 7, 2, 8, '_order', '1002'),
(822, 19, 7, 2, 8, 'first_name', 'Daniel'),
(823, 19, 7, 2, 8, 'last_name', 'Reyes'),
(824, 19, 7, 2, 8, 'position', 'Land Stewardship Coordinator'),
(825, 19, 7, 2, 8, 'email', 'daniel@urbantreeconnection.org'),
(826, 19, 7, 2, 8, '_id', '19'),
(827, 19, 7, 2, 8, '_order', '1003'),
(828, 20, 7, 2, 8, 'first_name', 'Jahzara'),
(829, 20, 7, 2, 8, 'last_name', 'Heredia'),
(830, 20, 7, 2, 8, 'position', 'Lead Farmer'),
(831, 20, 7, 2, 8, 'email', 'jahzara@urbantreeconnection.org'),
(832, 20, 7, 2, 8, '_id', '20'),
(833, 20, 7, 2, 8, '_order', '1004'),
(834, 21, 7, 2, 8, 'first_name', 'Mecca'),
(835, 21, 7, 2, 8, 'last_name', 'Brooks'),
(836, 21, 7, 2, 8, 'position', 'Food Distribution Coordinator'),
(837, 21, 7, 2, 8, 'email', 'mecca@urbantreeconnection.org'),
(838, 21, 7, 2, 8, '_id', '21'),
(839, 21, 7, 2, 8, '_order', '1005'),
(840, 22, 7, 2, 8, 'first_name', 'Lisa'),
(841, 22, 7, 2, 8, 'last_name', 'Barkley'),
(842, 22, 7, 2, 8, 'position', 'Community Liaison'),
(843, 22, 7, 2, 8, 'email', 'lisa@urbantreeconnection.org'),
(844, 22, 7, 2, 8, '_id', '22'),
(845, 22, 7, 2, 8, '_order', '1006'),
(846, 23, 7, 2, 8, 'first_name', 'Misako'),
(847, 23, 7, 2, 8, 'last_name', 'Scott'),
(848, 23, 7, 2, 8, 'position', 'Office Manager'),
(849, 23, 7, 2, 8, 'email', 'misako@urbantreeconnection.org'),
(850, 23, 7, 2, 8, '_id', '23'),
(851, 23, 7, 2, 8, '_order', '1007'),
(3832, 26, 8, 4, 25, '_order', '1002'),
(3831, 26, 8, 4, 25, '_id', '26'),
(3830, 26, 8, 4, 25, 'text', 'Community Education & Land Stewardship\r\nRooted in popular education methodologies, our multigenerational education programs promote health, wellness, and leadership development. For adults and families, we host hands-on workshops that cover topics such as'),
(3829, 26, 8, 4, 25, 'right_image_width', '300'),
(3828, 26, 8, 4, 25, 'right_image', '/admin/resources/young-farmers.jpg'),
(3853, 26, 8, 4, 26, '_order', '1002'),
(3852, 26, 8, 4, 26, '_id', '26'),
(3851, 26, 8, 4, 26, 'text', 'Community Education & Land Stewardship\r\nRooted in popular education methodologies, our multigenerational education programs promote health, wellness, and leadership development. For adults and families, we host hands-on workshops that cover topics such as'),
(3850, 26, 8, 4, 26, 'right_image_width', '300'),
(3849, 26, 8, 4, 26, 'right_image', ''),
(3848, 26, 8, 4, 26, 'left_image_width', '200'),
(3847, 26, 8, 4, 26, 'left_image', '/admin/resources/young-farmers.jpg'),
(3846, 25, 8, 4, 26, '_order', '1001'),
(3845, 25, 8, 4, 26, '_id', '25'),
(3844, 25, 8, 4, 26, 'text', 'Community-Led Food Distribution\r\nOur produce is distributed through&nbsp;Community-Led Farmers Markets and a Community Supported Agriculture (CSA)&nbsp;program in West Philly where residents have limited options to fresh, quality produce. We engage custom'),
(3874, 26, 8, 4, 27, '_order', '1002'),
(3873, 26, 8, 4, 27, '_id', '26'),
(3872, 26, 8, 4, 27, 'text', 'Community Education & Land Stewardship\r\nRooted in popular education methodologies, our multigenerational education programs promote health, wellness, and leadership development. For adults and families, we host hands-on workshops that cover topics such as'),
(3871, 26, 8, 4, 27, 'right_image_width', '300'),
(3870, 26, 8, 4, 27, 'right_image', ''),
(3869, 26, 8, 4, 27, 'left_image_width', '200'),
(3868, 26, 8, 4, 27, 'left_image', '/admin/resources/young-farmers.jpg'),
(3867, 25, 8, 4, 27, '_order', '1001'),
(3866, 25, 8, 4, 27, '_id', '25'),
(3865, 25, 8, 4, 27, 'text', 'Community-Led Food Distribution\r\nOur produce is distributed through&nbsp;Community-Led Farmers Markets and a Community Supported Agriculture (CSA)&nbsp;program in West Philly where residents have limited options to fresh, quality produce. We engage custom'),
(3864, 25, 8, 4, 27, 'right_image_width', ''),
(3863, 25, 8, 4, 27, 'right_image', ''),
(3862, 25, 8, 4, 27, 'left_image_width', '200'),
(3861, 25, 8, 4, 27, 'left_image', '/admin/resources/memorial-garden-4.jpg'),
(3860, 24, 8, 4, 27, '_order', '1000'),
(3727, 26, 8, 4, 20, '_order', '1002'),
(3726, 26, 8, 4, 20, '_id', '26'),
(3725, 26, 8, 4, 20, 'text', 'Community Education & Land Stewardship\r\nRooted in popular education methodologies, our multigenerational education programs promote health, wellness, and leadership development. For adults and families, we host hands-on workshops that cover topics such as'),
(3724, 26, 8, 4, 20, 'right_image_width', '250'),
(3723, 26, 8, 4, 20, 'right_image', '/admin/resources/young-farmers.jpg'),
(3722, 26, 8, 4, 20, 'left_image_width', ''),
(3721, 26, 8, 4, 20, 'left_image', ''),
(3720, 25, 8, 4, 20, '_order', '1001'),
(3719, 25, 8, 4, 20, '_id', '25'),
(3718, 25, 8, 4, 20, 'text', 'Community-Led Food Distribution\r\nOur produce is distributed through&nbsp;Community-Led Farmers Markets and a Community Supported Agriculture (CSA)&nbsp;program in West Philly where residents have limited options to fresh, quality produce. We engage custom'),
(3717, 25, 8, 4, 20, 'right_image_width', ''),
(3716, 25, 8, 4, 20, 'right_image', ''),
(3715, 25, 8, 4, 20, 'left_image_width', ''),
(3714, 25, 8, 4, 20, 'left_image', ''),
(3713, 24, 8, 4, 20, '_order', '1000'),
(3748, 26, 8, 4, 21, '_order', '1002'),
(3747, 26, 8, 4, 21, '_id', '26'),
(3746, 26, 8, 4, 21, 'text', 'Community Education & Land Stewardship\r\nRooted in popular education methodologies, our multigenerational education programs promote health, wellness, and leadership development. For adults and families, we host hands-on workshops that cover topics such as'),
(3745, 26, 8, 4, 21, 'right_image_width', '250'),
(3744, 26, 8, 4, 21, 'right_image', ''),
(3743, 26, 8, 4, 21, 'left_image_width', '250'),
(3769, 26, 8, 4, 22, '_order', '1002'),
(3768, 26, 8, 4, 22, '_id', '26'),
(3767, 26, 8, 4, 22, 'text', 'Community Education & Land Stewardship\r\nRooted in popular education methodologies, our multigenerational education programs promote health, wellness, and leadership development. For adults and families, we host hands-on workshops that cover topics such as'),
(3766, 26, 8, 4, 22, 'right_image_width', '200'),
(3765, 26, 8, 4, 22, 'right_image', ''),
(3764, 26, 8, 4, 22, 'left_image_width', '250'),
(3763, 26, 8, 4, 22, 'left_image', '/admin/resources/young-farmers.jpg'),
(3762, 25, 8, 4, 22, '_order', '1001'),
(3761, 25, 8, 4, 22, '_id', '25'),
(3790, 26, 8, 4, 23, '_order', '1002'),
(3789, 26, 8, 4, 23, '_id', '26'),
(3788, 26, 8, 4, 23, 'text', 'Community Education & Land Stewardship\r\nRooted in popular education methodologies, our multigenerational education programs promote health, wellness, and leadership development. For adults and families, we host hands-on workshops that cover topics such as'),
(3787, 26, 8, 4, 23, 'right_image_width', '200'),
(3786, 26, 8, 4, 23, 'right_image', ''),
(3785, 26, 8, 4, 23, 'left_image_width', '200'),
(3784, 26, 8, 4, 23, 'left_image', '/admin/resources/young-farmers.jpg'),
(3783, 25, 8, 4, 23, '_order', '1001'),
(3782, 25, 8, 4, 23, '_id', '25'),
(936, 27, 9, 4, 1, 'image', ''),
(937, 27, 9, 4, 1, 'alt', 'memorial garden'),
(938, 27, 9, 4, 1, '_id', '27'),
(939, 27, 9, 4, 1, '_order', '1000'),
(940, 28, 10, 4, 1, 'image', '/admin/resources/adult-gardening-workshop.jpg'),
(941, 28, 10, 4, 1, 'alt', 'Adult Gardening Workshop'),
(942, 28, 10, 4, 1, '_id', '28'),
(943, 28, 10, 4, 1, '_order', '1000'),
(944, 27, 9, 4, 2, 'image', '/admin/resources/memorial-garden.jpg'),
(945, 27, 9, 4, 2, 'alt', 'memorial garden'),
(946, 27, 9, 4, 2, '_id', '27'),
(947, 27, 9, 4, 2, '_order', '1000'),
(948, 29, 11, 4, 1, 'text', 'UTC partners with Haddington residents to reclaim vacant land for community-building green spaces that bring people together to address community needs.Our current programs include:'),
(949, 29, 11, 4, 1, '_id', '29'),
(950, 29, 11, 4, 1, '_order', '1000'),
(951, 27, 9, 4, 3, 'image', '/admin/resources/adult-gardening-workshop-2.jpg'),
(952, 27, 9, 4, 3, 'alt', 'memorial garden'),
(953, 27, 9, 4, 3, '_id', '27'),
(954, 27, 9, 4, 3, '_order', '1000'),
(955, 28, 10, 4, 2, 'image', '/admin/resources/memorial-garden-1.jpg'),
(956, 28, 10, 4, 2, 'alt', 'Adult Gardening Workshop'),
(957, 28, 10, 4, 2, '_id', '28'),
(958, 28, 10, 4, 2, '_order', '1000'),
(959, 27, 9, 4, 4, 'image', ''),
(960, 27, 9, 4, 4, 'alt', 'memorial garden'),
(961, 27, 9, 4, 4, '_id', '27'),
(962, 27, 9, 4, 4, '_order', '1000'),
(963, 28, 10, 4, 3, 'image', ''),
(964, 28, 10, 4, 3, 'alt', 'Adult Gardening Workshop'),
(965, 28, 10, 4, 3, '_id', '28'),
(966, 28, 10, 4, 3, '_order', '1000'),
(967, 28, 10, 4, 4, 'image', '/admin/resources/adult-gardening-workshop-3.jpg'),
(968, 28, 10, 4, 4, 'alt', 'Adult Gardening Workshop'),
(969, 28, 10, 4, 4, '_id', '28'),
(970, 28, 10, 4, 4, '_order', '1000'),
(971, 27, 9, 4, 5, 'image', '/admin/resources/memorial-garden-2.jpg'),
(972, 27, 9, 4, 5, 'alt', 'memorial garden'),
(973, 27, 9, 4, 5, '_id', '27'),
(974, 27, 9, 4, 5, '_order', '1000'),
(975, 27, 9, 4, 6, 'image', ''),
(976, 27, 9, 4, 6, 'alt', 'memorial garden'),
(977, 27, 9, 4, 6, '_id', '27'),
(978, 27, 9, 4, 6, '_order', '1000'),
(979, 28, 10, 4, 5, 'image', ''),
(980, 28, 10, 4, 5, 'alt', 'Adult Gardening Workshop'),
(981, 28, 10, 4, 5, '_id', '28'),
(982, 28, 10, 4, 5, '_order', '1000'),
(983, 27, 9, 4, 7, 'image', '/admin/resources/adult-gardening-workshop-4.jpg'),
(984, 27, 9, 4, 7, 'alt', 'memorial garden'),
(985, 27, 9, 4, 7, '_id', '27'),
(986, 27, 9, 4, 7, '_order', '1000'),
(987, 28, 10, 4, 6, 'image', '/admin/resources/memorial-garden-3.jpg'),
(988, 28, 10, 4, 6, 'alt', 'Adult Gardening Workshop'),
(989, 28, 10, 4, 6, '_id', '28'),
(990, 28, 10, 4, 6, '_order', '1000'),
(991, 30, 12, 5, 0, '_id', '30'),
(992, 30, 12, 5, 0, '_order', '1000'),
(993, 30, 12, 5, 1, 'name', 'Neighborhood Foods Farmers Market'),
(994, 30, 12, 5, 1, 'address', '53rd St. & Wyalusing Ave.'),
(995, 30, 12, 5, 1, 'frequency', 'Every Saturday, 10am-2pm'),
(996, 30, 12, 5, 1, 'date_range', 'May 12th - Nov 3rd'),
(997, 30, 12, 5, 1, 'notes', ''),
(998, 30, 12, 5, 1, '_id', '30'),
(999, 30, 12, 5, 1, '_order', '1000'),
(1000, 30, 12, 5, 2, 'name', 'Neighborhood Foods Farmers Market'),
(1001, 30, 12, 5, 2, 'address', '53rd St. & Wyalusing Ave.'),
(1002, 30, 12, 5, 2, 'frequency', 'Every Saturday, 10am-2pm'),
(1003, 30, 12, 5, 2, 'date_range', 'May 12th - Nov 3rd'),
(1004, 30, 12, 5, 2, 'notes', ''),
(1005, 30, 12, 5, 2, '_id', '30'),
(1006, 30, 12, 5, 2, '_order', '1000'),
(1007, 31, 12, 5, 2, 'name', 'Neighborhood Foods Youth-Led Market'),
(1008, 31, 12, 5, 2, 'address', '53rd St. & Wyalusing Ave.'),
(1009, 31, 12, 5, 2, 'frequency', 'Every Saturday, 10am-2pm'),
(1010, 31, 12, 5, 2, 'date_range', 'July 11th - August 29th'),
(1011, 31, 12, 5, 2, 'notes', ''),
(1012, 31, 12, 5, 2, '_id', '31'),
(1013, 31, 12, 5, 2, '_order', '1001'),
(1014, 30, 12, 5, 3, 'name', 'Neighborhood Foods Farmers Market'),
(1015, 30, 12, 5, 3, 'address', '53rd St. & Wyalusing Ave.'),
(1016, 30, 12, 5, 3, 'frequency', 'Every Saturday, 10am-2pm'),
(1017, 30, 12, 5, 3, 'date_range', 'May 12th - Nov 3rd'),
(1018, 30, 12, 5, 3, 'notes', ''),
(1019, 30, 12, 5, 3, '_id', '30'),
(1020, 30, 12, 5, 3, '_order', '1000'),
(1021, 31, 12, 5, 3, 'name', 'Neighborhood Foods Youth-Led Market'),
(1022, 31, 12, 5, 3, 'address', '53rd St. & Wyalusing Ave.'),
(1023, 31, 12, 5, 3, 'frequency', 'Every Saturday, 10am-2pm'),
(1024, 31, 12, 5, 3, 'date_range', 'July 11th - August 29th'),
(1025, 31, 12, 5, 3, 'notes', ''),
(1026, 31, 12, 5, 3, '_id', '31'),
(1027, 31, 12, 5, 3, '_order', '1001'),
(1028, 32, 12, 5, 3, 'name', 'Shepard Recreation Center Market'),
(1029, 32, 12, 5, 3, 'address', '5700 Haverford Ave'),
(1030, 32, 12, 5, 3, 'frequency', 'Every Last Tuesday of the Month, 12pm-3pm'),
(1031, 32, 12, 5, 3, 'date_range', '6/26, 7/31, 8/28, 9/25, & 10/30'),
(1032, 32, 12, 5, 3, 'notes', ''),
(1033, 32, 12, 5, 3, '_id', '32'),
(1034, 32, 12, 5, 3, '_order', '1002'),
(1035, 30, 12, 5, 4, 'name', 'Neighborhood Foods Farmers Market'),
(1036, 30, 12, 5, 4, 'address', '53rd St. & Wyalusing Ave.'),
(1037, 30, 12, 5, 4, 'frequency', 'Every Saturday, 10am-2pm'),
(1038, 30, 12, 5, 4, 'date_range', 'May 12th - Nov 3rd'),
(1039, 30, 12, 5, 4, 'notes', ''),
(1040, 30, 12, 5, 4, '_id', '30'),
(1041, 30, 12, 5, 4, '_order', '1000'),
(1042, 31, 12, 5, 4, 'name', 'Neighborhood Foods Youth-Led Market'),
(1043, 31, 12, 5, 4, 'address', '53rd St. & Wyalusing Ave.'),
(1044, 31, 12, 5, 4, 'frequency', 'Every Saturday, 10am-2pm'),
(1045, 31, 12, 5, 4, 'date_range', 'July 11th - August 29th'),
(1046, 31, 12, 5, 4, 'notes', ''),
(1047, 31, 12, 5, 4, '_id', '31'),
(1048, 31, 12, 5, 4, '_order', '1001'),
(1049, 32, 12, 5, 4, 'name', 'Shepard Recreation Center Market'),
(1050, 32, 12, 5, 4, 'address', '5700 Haverford Ave'),
(1051, 32, 12, 5, 4, 'frequency', 'Every Last Tuesday of the Month, 12pm-3pm'),
(1052, 32, 12, 5, 4, 'date_range', '6/26, 7/31, 8/28, 9/25, & 10/30'),
(1053, 32, 12, 5, 4, 'notes', ''),
(1054, 32, 12, 5, 4, '_id', '32'),
(1055, 32, 12, 5, 4, '_order', '1002'),
(1056, 33, 12, 5, 4, 'name', 'West Philly YMCA Market'),
(1057, 33, 12, 5, 4, 'address', '5120 Chestnut Street'),
(1058, 33, 12, 5, 4, 'frequency', 'Every 1st and 3rd Friday, 10am-2pm'),
(1059, 33, 12, 5, 4, 'date_range', '5/18, 6/1, 6/15, 7/6, 7/20, 8/3, 8/17, 9/7, 9/21, 10/5, 10/19'),
(1060, 33, 12, 5, 4, 'notes', ''),
(1061, 33, 12, 5, 4, '_id', '33'),
(1062, 33, 12, 5, 4, '_order', '1003'),
(1063, 30, 12, 5, 5, 'name', 'Neighborhood Foods Farmers Market'),
(1064, 30, 12, 5, 5, 'address', '53rd St. & Wyalusing Ave.'),
(1065, 30, 12, 5, 5, 'frequency', 'Every Saturday, 10am-2pm'),
(1066, 30, 12, 5, 5, 'date_range', 'May 12th - Nov 3rd'),
(1067, 30, 12, 5, 5, 'notes', ''),
(1068, 30, 12, 5, 5, '_id', '30'),
(1069, 30, 12, 5, 5, '_order', '1000'),
(1070, 31, 12, 5, 5, 'name', 'Neighborhood Foods Youth-Led Market'),
(1071, 31, 12, 5, 5, 'address', '53rd St. & Wyalusing Ave.'),
(1072, 31, 12, 5, 5, 'frequency', 'Every Saturday, 10am-2pm'),
(1073, 31, 12, 5, 5, 'date_range', 'July 11th - August 29th'),
(1074, 31, 12, 5, 5, 'notes', ''),
(1075, 31, 12, 5, 5, '_id', '31'),
(1076, 31, 12, 5, 5, '_order', '1001'),
(1077, 32, 12, 5, 5, 'name', 'Shepard Recreation Center Market'),
(1078, 32, 12, 5, 5, 'address', '5700 Haverford Ave'),
(1079, 32, 12, 5, 5, 'frequency', 'Every Last Tuesday of the Month, 12pm-3pm'),
(1080, 32, 12, 5, 5, 'date_range', '6/26, 7/31, 8/28, 9/25, & 10/30'),
(1081, 32, 12, 5, 5, 'notes', ''),
(1082, 32, 12, 5, 5, '_id', '32'),
(1083, 32, 12, 5, 5, '_order', '1002'),
(1084, 33, 12, 5, 5, 'name', 'West Philly YMCA Market'),
(1085, 33, 12, 5, 5, 'address', '5120 Chestnut Street'),
(1086, 33, 12, 5, 5, 'frequency', 'Every 1st and 3rd Friday, 10am-2pm'),
(1087, 33, 12, 5, 5, 'date_range', '5/18, 6/1, 6/15, 7/6, 7/20, 8/3, 8/17, 9/7, 9/21, 10/5, 10/19'),
(1088, 33, 12, 5, 5, 'notes', ''),
(1089, 33, 12, 5, 5, '_id', '33'),
(1090, 33, 12, 5, 5, '_order', '1003'),
(1091, 34, 12, 5, 5, '_id', '34'),
(1092, 34, 12, 5, 5, '_order', '1004'),
(1093, 30, 12, 5, 6, 'name', 'Neighborhood Foods Farmers Market'),
(1094, 30, 12, 5, 6, 'address', '53rd St. & Wyalusing Ave.'),
(1095, 30, 12, 5, 6, 'frequency', 'Every Saturday, 10am-2pm'),
(1096, 30, 12, 5, 6, 'date_range', 'May 12th - Nov 3rd'),
(1097, 30, 12, 5, 6, 'notes', ''),
(1098, 30, 12, 5, 6, '_id', '30'),
(1099, 30, 12, 5, 6, '_order', '1000'),
(1100, 31, 12, 5, 6, 'name', 'Neighborhood Foods Youth-Led Market'),
(1101, 31, 12, 5, 6, 'address', '53rd St. & Wyalusing Ave.'),
(1102, 31, 12, 5, 6, 'frequency', 'Every Saturday, 10am-2pm'),
(1103, 31, 12, 5, 6, 'date_range', 'July 11th - August 29th'),
(1104, 31, 12, 5, 6, 'notes', ''),
(1105, 31, 12, 5, 6, '_id', '31'),
(1106, 31, 12, 5, 6, '_order', '1001'),
(1107, 32, 12, 5, 6, 'name', 'Shepard Recreation Center Market'),
(1108, 32, 12, 5, 6, 'address', '5700 Haverford Ave'),
(1109, 32, 12, 5, 6, 'frequency', 'Every Last Tuesday of the Month, 12pm-3pm'),
(1110, 32, 12, 5, 6, 'date_range', '6/26, 7/31, 8/28, 9/25, & 10/30'),
(1111, 32, 12, 5, 6, 'notes', ''),
(1112, 32, 12, 5, 6, '_id', '32'),
(1113, 32, 12, 5, 6, '_order', '1002'),
(1114, 33, 12, 5, 6, 'name', 'West Philly YMCA Market'),
(1115, 33, 12, 5, 6, 'address', '5120 Chestnut Street'),
(1116, 33, 12, 5, 6, 'frequency', 'Every 1st and 3rd Friday, 10am-2pm'),
(1117, 33, 12, 5, 6, 'date_range', '5/18, 6/1, 6/15, 7/6, 7/20, 8/3, 8/17, 9/7, 9/21, 10/5, 10/19'),
(1118, 33, 12, 5, 6, 'notes', ''),
(1119, 33, 12, 5, 6, '_id', '33'),
(1120, 33, 12, 5, 6, '_order', '1003'),
(1121, 34, 12, 5, 6, '_id', '34'),
(1122, 34, 12, 5, 6, '_order', '1004'),
(1123, 30, 12, 5, 7, 'name', 'Neighborhood Foods Farmers Market'),
(1124, 30, 12, 5, 7, 'address', '53rd St. & Wyalusing Ave.'),
(1125, 30, 12, 5, 7, 'frequency', 'Every Saturday, 10am-2pm'),
(1126, 30, 12, 5, 7, 'date_range', 'May 12th - Nov 3rd'),
(1127, 30, 12, 5, 7, 'notes', ''),
(1128, 30, 12, 5, 7, '_id', '30'),
(1129, 30, 12, 5, 7, '_order', '1000'),
(1130, 31, 12, 5, 7, 'name', 'Neighborhood Foods Youth-Led Market'),
(1131, 31, 12, 5, 7, 'address', '53rd St. & Wyalusing Ave.'),
(1132, 31, 12, 5, 7, 'frequency', 'Every Saturday, 10am-2pm');
INSERT INTO `perch3_content_index` (`indexID`, `itemID`, `regionID`, `pageID`, `itemRev`, `indexKey`, `indexValue`) VALUES
(1133, 31, 12, 5, 7, 'date_range', 'July 11th - August 29th'),
(1134, 31, 12, 5, 7, 'notes', ''),
(1135, 31, 12, 5, 7, '_id', '31'),
(1136, 31, 12, 5, 7, '_order', '1001'),
(1137, 32, 12, 5, 7, 'name', 'Shepard Recreation Center Market'),
(1138, 32, 12, 5, 7, 'address', '5700 Haverford Ave'),
(1139, 32, 12, 5, 7, 'frequency', 'Every Last Tuesday of the Month, 12pm-3pm'),
(1140, 32, 12, 5, 7, 'date_range', '6/26, 7/31, 8/28, 9/25, & 10/30'),
(1141, 32, 12, 5, 7, 'notes', ''),
(1142, 32, 12, 5, 7, '_id', '32'),
(1143, 32, 12, 5, 7, '_order', '1002'),
(1144, 33, 12, 5, 7, 'name', 'West Philly YMCA Market'),
(1145, 33, 12, 5, 7, 'address', '5120 Chestnut Street'),
(1146, 33, 12, 5, 7, 'frequency', 'Every 1st and 3rd Friday, 10am-2pm'),
(1147, 33, 12, 5, 7, 'date_range', '5/18, 6/1, 6/15, 7/6, 7/20, 8/3, 8/17, 9/7, 9/21, 10/5, 10/19'),
(1148, 33, 12, 5, 7, 'notes', ''),
(1149, 33, 12, 5, 7, '_id', '33'),
(1150, 33, 12, 5, 7, '_order', '1003'),
(1151, 34, 12, 5, 7, '_id', '34'),
(1152, 34, 12, 5, 7, '_order', '1004'),
(1153, 35, 13, 5, 0, '_id', '35'),
(1154, 35, 13, 5, 0, '_order', '1000'),
(1155, 35, 13, 5, 1, 'name', 'Rittenhouse Farmers Market'),
(1156, 35, 13, 5, 1, 'address', 'Rittenhouse Square (18th St. & Walnut St.)'),
(1157, 35, 13, 5, 1, 'frequency', 'Every Saturday, 9a-3p'),
(1158, 35, 13, 5, 1, 'date_range', 'May 26th - November 10th'),
(1159, 35, 13, 5, 1, 'notes', 'This market accepts cash and FMNP vouchers'),
(1160, 35, 13, 5, 1, '_id', '35'),
(1161, 35, 13, 5, 1, '_order', '1000'),
(1162, 36, 14, 6, 1, '_id', '36'),
(1163, 36, 14, 6, 1, '_order', '1000'),
(1164, 36, 14, 6, 2, 'text', 'As a grassroots community organization, Urban Tree Connection relies on the partnership of individuals and groups across the Greater Philadelphia area to help us fulfill our mission. These critical partnerships take many forms, including volunteering, fin'),
(1165, 36, 14, 6, 2, '_id', '36'),
(1166, 36, 14, 6, 2, '_order', '1000'),
(1167, 36, 14, 6, 3, 'text', 'As a grassroots community organization, Urban Tree Connection relies on the partnership of individuals and groups across the Greater Philadelphia area to help us fulfill our mission. These critical partnerships take many forms, including volunteering, fin'),
(1168, 36, 14, 6, 3, '_id', '36'),
(1169, 36, 14, 6, 3, '_order', '1000'),
(2128, 55, 15, 6, 29, '_order', '1016'),
(2127, 55, 15, 6, 29, '_id', '55'),
(2126, 55, 15, 6, 29, 'text', 'Lindback Foundation'),
(2206, 56, 15, 6, 30, '_order', '1017'),
(2205, 56, 15, 6, 30, '_id', '56'),
(2204, 56, 15, 6, 30, 'text', 'Leo & Peggy Pierce Foundation'),
(2203, 55, 15, 6, 30, '_order', '1016'),
(2202, 55, 15, 6, 30, '_id', '55'),
(2201, 55, 15, 6, 30, 'text', 'Lindback Foundation'),
(2287, 57, 15, 6, 31, '_order', '1018'),
(2286, 57, 15, 6, 31, '_id', '57'),
(2285, 57, 15, 6, 31, 'text', 'Louis N. Cassett Foundation'),
(2284, 56, 15, 6, 31, '_order', '1017'),
(2283, 56, 15, 6, 31, '_id', '56'),
(2282, 56, 15, 6, 31, 'text', 'Leo & Peggy Pierce Foundation'),
(2281, 55, 15, 6, 31, '_order', '1016'),
(2280, 55, 15, 6, 31, '_id', '55'),
(2279, 55, 15, 6, 31, 'text', 'Lindback Foundation'),
(2371, 58, 15, 6, 32, '_order', '1019'),
(2370, 58, 15, 6, 32, '_id', '58'),
(2369, 58, 15, 6, 32, 'text', 'Merck Family Fund'),
(2368, 57, 15, 6, 32, '_order', '1018'),
(2367, 57, 15, 6, 32, '_id', '57'),
(2366, 57, 15, 6, 32, 'text', 'Louis N. Cassett Foundation'),
(2365, 56, 15, 6, 32, '_order', '1017'),
(2364, 56, 15, 6, 32, '_id', '56'),
(2363, 56, 15, 6, 32, 'text', 'Leo & Peggy Pierce Foundation'),
(2362, 55, 15, 6, 32, '_order', '1016'),
(2361, 55, 15, 6, 32, '_id', '55'),
(2360, 55, 15, 6, 32, 'text', 'Lindback Foundation'),
(2458, 59, 15, 6, 33, '_order', '1020'),
(2457, 59, 15, 6, 33, '_id', '59'),
(2456, 59, 15, 6, 33, 'text', 'Philadelphia Chapter of the Garden Club of America'),
(2455, 58, 15, 6, 33, '_order', '1019'),
(2454, 58, 15, 6, 33, '_id', '58'),
(2453, 58, 15, 6, 33, 'text', 'Merck Family Fund'),
(2452, 57, 15, 6, 33, '_order', '1018'),
(2451, 57, 15, 6, 33, '_id', '57'),
(2450, 57, 15, 6, 33, 'text', 'Louis N. Cassett Foundation'),
(2449, 56, 15, 6, 33, '_order', '1017'),
(2448, 56, 15, 6, 33, '_id', '56'),
(2447, 56, 15, 6, 33, 'text', 'Leo & Peggy Pierce Foundation'),
(2446, 55, 15, 6, 33, '_order', '1016'),
(2445, 55, 15, 6, 33, '_id', '55'),
(2444, 55, 15, 6, 33, 'text', 'Lindback Foundation'),
(2548, 60, 15, 6, 34, '_order', '1021'),
(2547, 60, 15, 6, 34, '_id', '60'),
(2546, 60, 15, 6, 34, 'text', 'Philadelphia Water Department'),
(2545, 59, 15, 6, 34, '_order', '1020'),
(2544, 59, 15, 6, 34, '_id', '59'),
(2543, 59, 15, 6, 34, 'text', 'Philadelphia Chapter of the Garden Club of America'),
(2542, 58, 15, 6, 34, '_order', '1019'),
(2541, 58, 15, 6, 34, '_id', '58'),
(2540, 58, 15, 6, 34, 'text', 'Merck Family Fund'),
(2539, 57, 15, 6, 34, '_order', '1018'),
(2538, 57, 15, 6, 34, '_id', '57'),
(2537, 57, 15, 6, 34, 'text', 'Louis N. Cassett Foundation'),
(2536, 56, 15, 6, 34, '_order', '1017'),
(2535, 56, 15, 6, 34, '_id', '56'),
(2534, 56, 15, 6, 34, 'text', 'Leo & Peggy Pierce Foundation'),
(2533, 55, 15, 6, 34, '_order', '1016'),
(2532, 55, 15, 6, 34, '_id', '55'),
(2531, 55, 15, 6, 34, 'text', 'Lindback Foundation'),
(2641, 61, 15, 6, 35, '_order', '1022'),
(2640, 61, 15, 6, 35, '_id', '61'),
(2639, 61, 15, 6, 35, 'text', 'Rosenlund Family Foundation'),
(2638, 60, 15, 6, 35, '_order', '1021'),
(2637, 60, 15, 6, 35, '_id', '60'),
(2636, 60, 15, 6, 35, 'text', 'Philadelphia Water Department'),
(2635, 59, 15, 6, 35, '_order', '1020'),
(2634, 59, 15, 6, 35, '_id', '59'),
(2633, 59, 15, 6, 35, 'text', 'Philadelphia Chapter of the Garden Club of America'),
(2632, 58, 15, 6, 35, '_order', '1019'),
(2631, 58, 15, 6, 35, '_id', '58'),
(2630, 58, 15, 6, 35, 'text', 'Merck Family Fund'),
(2629, 57, 15, 6, 35, '_order', '1018'),
(2628, 57, 15, 6, 35, '_id', '57'),
(2627, 57, 15, 6, 35, 'text', 'Louis N. Cassett Foundation'),
(2626, 56, 15, 6, 35, '_order', '1017'),
(2625, 56, 15, 6, 35, '_id', '56'),
(2624, 56, 15, 6, 35, 'text', 'Leo & Peggy Pierce Foundation'),
(2623, 55, 15, 6, 35, '_order', '1016'),
(2622, 55, 15, 6, 35, '_id', '55'),
(2621, 55, 15, 6, 35, 'text', 'Lindback Foundation'),
(2734, 62, 15, 6, 36, '_order', '1023'),
(2733, 62, 15, 6, 36, '_id', '62'),
(2732, 62, 15, 6, 36, 'text', 'Samuel S. Fels Foundation'),
(2731, 61, 15, 6, 36, '_order', '1022'),
(2730, 61, 15, 6, 36, '_id', '61'),
(2729, 61, 15, 6, 36, 'text', 'Rosenlund Family Foundation'),
(2728, 60, 15, 6, 36, '_order', '1021'),
(2727, 60, 15, 6, 36, '_id', '60'),
(2726, 60, 15, 6, 36, 'text', 'Philadelphia Water Department'),
(2725, 59, 15, 6, 36, '_order', '1020'),
(2724, 59, 15, 6, 36, '_id', '59'),
(2723, 59, 15, 6, 36, 'text', 'Philadelphia Chapter of the Garden Club of America'),
(2722, 58, 15, 6, 36, '_order', '1019'),
(2721, 58, 15, 6, 36, '_id', '58'),
(2720, 58, 15, 6, 36, 'text', 'Merck Family Fund'),
(2719, 57, 15, 6, 36, '_order', '1018'),
(2718, 57, 15, 6, 36, '_id', '57'),
(2717, 57, 15, 6, 36, 'text', 'Louis N. Cassett Foundation'),
(2716, 56, 15, 6, 36, '_order', '1017'),
(2715, 56, 15, 6, 36, '_id', '56'),
(2714, 56, 15, 6, 36, 'text', 'Leo & Peggy Pierce Foundation'),
(2713, 55, 15, 6, 36, '_order', '1016'),
(2712, 55, 15, 6, 36, '_id', '55'),
(2711, 55, 15, 6, 36, 'text', 'Lindback Foundation'),
(2125, 54, 15, 6, 29, '_order', '1015'),
(2124, 54, 15, 6, 29, '_id', '54'),
(2123, 54, 15, 6, 29, 'text', 'Independence Foundation'),
(2122, 53, 15, 6, 29, '_order', '1014'),
(2121, 53, 15, 6, 29, '_id', '53'),
(2120, 53, 15, 6, 29, 'text', 'Wawa Foundation'),
(2119, 52, 15, 6, 29, '_order', '1013'),
(2118, 52, 15, 6, 29, '_id', '52'),
(2117, 52, 15, 6, 29, 'text', 'Henrietta Tower Wurts Memorial'),
(2116, 51, 15, 6, 29, '_order', '1012'),
(2115, 51, 15, 6, 29, '_id', '51'),
(2114, 51, 15, 6, 29, 'text', 'First Presbyterian Church'),
(2113, 50, 15, 6, 29, '_order', '1011'),
(2112, 50, 15, 6, 29, '_id', '50'),
(2111, 50, 15, 6, 29, 'text', 'Dolfinger-McMahon Foundation'),
(2110, 49, 15, 6, 29, '_order', '1010'),
(2109, 49, 15, 6, 29, '_id', '49'),
(2108, 49, 15, 6, 29, 'text', 'Christopher Ludwick Foundation'),
(2107, 48, 15, 6, 29, '_order', '1009'),
(2106, 48, 15, 6, 29, '_id', '48'),
(2105, 48, 15, 6, 29, 'text', 'Claneil Foundation, Inc.'),
(2104, 47, 15, 6, 29, '_order', '1008'),
(2103, 47, 15, 6, 29, '_id', '47'),
(2102, 47, 15, 6, 29, 'text', 'Catholic Campaign for Human Development'),
(2200, 54, 15, 6, 30, '_order', '1015'),
(2199, 54, 15, 6, 30, '_id', '54'),
(2198, 54, 15, 6, 30, 'text', 'Independence Foundation'),
(2197, 53, 15, 6, 30, '_order', '1014'),
(2196, 53, 15, 6, 30, '_id', '53'),
(2195, 53, 15, 6, 30, 'text', 'Wawa Foundation'),
(2194, 52, 15, 6, 30, '_order', '1013'),
(2193, 52, 15, 6, 30, '_id', '52'),
(2192, 52, 15, 6, 30, 'text', 'Henrietta Tower Wurts Memorial'),
(2191, 51, 15, 6, 30, '_order', '1012'),
(2190, 51, 15, 6, 30, '_id', '51'),
(2189, 51, 15, 6, 30, 'text', 'First Presbyterian Church'),
(2188, 50, 15, 6, 30, '_order', '1011'),
(2187, 50, 15, 6, 30, '_id', '50'),
(2186, 50, 15, 6, 30, 'text', 'Dolfinger-McMahon Foundation'),
(2185, 49, 15, 6, 30, '_order', '1010'),
(2184, 49, 15, 6, 30, '_id', '49'),
(2183, 49, 15, 6, 30, 'text', 'Christopher Ludwick Foundation'),
(2182, 48, 15, 6, 30, '_order', '1009'),
(2181, 48, 15, 6, 30, '_id', '48'),
(2180, 48, 15, 6, 30, 'text', 'Claneil Foundation, Inc.'),
(2179, 47, 15, 6, 30, '_order', '1008'),
(2178, 47, 15, 6, 30, '_id', '47'),
(2177, 47, 15, 6, 30, 'text', 'Catholic Campaign for Human Development'),
(2278, 54, 15, 6, 31, '_order', '1015'),
(2277, 54, 15, 6, 31, '_id', '54'),
(2276, 54, 15, 6, 31, 'text', 'Independence Foundation'),
(2275, 53, 15, 6, 31, '_order', '1014'),
(2274, 53, 15, 6, 31, '_id', '53'),
(2273, 53, 15, 6, 31, 'text', 'Wawa Foundation'),
(2272, 52, 15, 6, 31, '_order', '1013'),
(2271, 52, 15, 6, 31, '_id', '52'),
(2270, 52, 15, 6, 31, 'text', 'Henrietta Tower Wurts Memorial'),
(2269, 51, 15, 6, 31, '_order', '1012'),
(2268, 51, 15, 6, 31, '_id', '51'),
(2267, 51, 15, 6, 31, 'text', 'First Presbyterian Church'),
(2266, 50, 15, 6, 31, '_order', '1011'),
(2265, 50, 15, 6, 31, '_id', '50'),
(2264, 50, 15, 6, 31, 'text', 'Dolfinger-McMahon Foundation'),
(2263, 49, 15, 6, 31, '_order', '1010'),
(2262, 49, 15, 6, 31, '_id', '49'),
(2261, 49, 15, 6, 31, 'text', 'Christopher Ludwick Foundation'),
(2260, 48, 15, 6, 31, '_order', '1009'),
(2259, 48, 15, 6, 31, '_id', '48'),
(2258, 48, 15, 6, 31, 'text', 'Claneil Foundation, Inc.'),
(2257, 47, 15, 6, 31, '_order', '1008'),
(2256, 47, 15, 6, 31, '_id', '47'),
(2255, 47, 15, 6, 31, 'text', 'Catholic Campaign for Human Development'),
(2359, 54, 15, 6, 32, '_order', '1015'),
(2358, 54, 15, 6, 32, '_id', '54'),
(2357, 54, 15, 6, 32, 'text', 'Independence Foundation'),
(2356, 53, 15, 6, 32, '_order', '1014'),
(2355, 53, 15, 6, 32, '_id', '53'),
(2354, 53, 15, 6, 32, 'text', 'Wawa Foundation'),
(2353, 52, 15, 6, 32, '_order', '1013'),
(2352, 52, 15, 6, 32, '_id', '52'),
(2351, 52, 15, 6, 32, 'text', 'Henrietta Tower Wurts Memorial'),
(2350, 51, 15, 6, 32, '_order', '1012'),
(2349, 51, 15, 6, 32, '_id', '51'),
(2348, 51, 15, 6, 32, 'text', 'First Presbyterian Church'),
(2347, 50, 15, 6, 32, '_order', '1011'),
(2346, 50, 15, 6, 32, '_id', '50'),
(2345, 50, 15, 6, 32, 'text', 'Dolfinger-McMahon Foundation'),
(2344, 49, 15, 6, 32, '_order', '1010'),
(2343, 49, 15, 6, 32, '_id', '49'),
(2342, 49, 15, 6, 32, 'text', 'Christopher Ludwick Foundation'),
(2341, 48, 15, 6, 32, '_order', '1009'),
(2340, 48, 15, 6, 32, '_id', '48'),
(2339, 48, 15, 6, 32, 'text', 'Claneil Foundation, Inc.'),
(2338, 47, 15, 6, 32, '_order', '1008'),
(2337, 47, 15, 6, 32, '_id', '47'),
(2336, 47, 15, 6, 32, 'text', 'Catholic Campaign for Human Development'),
(2443, 54, 15, 6, 33, '_order', '1015'),
(2442, 54, 15, 6, 33, '_id', '54'),
(2441, 54, 15, 6, 33, 'text', 'Independence Foundation'),
(2440, 53, 15, 6, 33, '_order', '1014'),
(2439, 53, 15, 6, 33, '_id', '53'),
(2438, 53, 15, 6, 33, 'text', 'Wawa Foundation'),
(2437, 52, 15, 6, 33, '_order', '1013'),
(2436, 52, 15, 6, 33, '_id', '52'),
(2435, 52, 15, 6, 33, 'text', 'Henrietta Tower Wurts Memorial'),
(2434, 51, 15, 6, 33, '_order', '1012'),
(2433, 51, 15, 6, 33, '_id', '51'),
(2432, 51, 15, 6, 33, 'text', 'First Presbyterian Church'),
(2431, 50, 15, 6, 33, '_order', '1011'),
(2430, 50, 15, 6, 33, '_id', '50'),
(2429, 50, 15, 6, 33, 'text', 'Dolfinger-McMahon Foundation'),
(2428, 49, 15, 6, 33, '_order', '1010'),
(2427, 49, 15, 6, 33, '_id', '49'),
(2426, 49, 15, 6, 33, 'text', 'Christopher Ludwick Foundation'),
(2425, 48, 15, 6, 33, '_order', '1009'),
(2424, 48, 15, 6, 33, '_id', '48'),
(2423, 48, 15, 6, 33, 'text', 'Claneil Foundation, Inc.'),
(2422, 47, 15, 6, 33, '_order', '1008'),
(2421, 47, 15, 6, 33, '_id', '47'),
(2420, 47, 15, 6, 33, 'text', 'Catholic Campaign for Human Development'),
(2530, 54, 15, 6, 34, '_order', '1015'),
(2529, 54, 15, 6, 34, '_id', '54'),
(2528, 54, 15, 6, 34, 'text', 'Independence Foundation'),
(2527, 53, 15, 6, 34, '_order', '1014'),
(2526, 53, 15, 6, 34, '_id', '53'),
(2525, 53, 15, 6, 34, 'text', 'Wawa Foundation'),
(2524, 52, 15, 6, 34, '_order', '1013'),
(2523, 52, 15, 6, 34, '_id', '52'),
(2522, 52, 15, 6, 34, 'text', 'Henrietta Tower Wurts Memorial'),
(2521, 51, 15, 6, 34, '_order', '1012'),
(2520, 51, 15, 6, 34, '_id', '51'),
(2519, 51, 15, 6, 34, 'text', 'First Presbyterian Church'),
(2518, 50, 15, 6, 34, '_order', '1011'),
(2517, 50, 15, 6, 34, '_id', '50'),
(2516, 50, 15, 6, 34, 'text', 'Dolfinger-McMahon Foundation'),
(2515, 49, 15, 6, 34, '_order', '1010'),
(2514, 49, 15, 6, 34, '_id', '49'),
(2513, 49, 15, 6, 34, 'text', 'Christopher Ludwick Foundation'),
(2512, 48, 15, 6, 34, '_order', '1009'),
(2511, 48, 15, 6, 34, '_id', '48'),
(2510, 48, 15, 6, 34, 'text', 'Claneil Foundation, Inc.'),
(2509, 47, 15, 6, 34, '_order', '1008'),
(2508, 47, 15, 6, 34, '_id', '47'),
(2507, 47, 15, 6, 34, 'text', 'Catholic Campaign for Human Development'),
(2620, 54, 15, 6, 35, '_order', '1015'),
(2619, 54, 15, 6, 35, '_id', '54'),
(2618, 54, 15, 6, 35, 'text', 'Independence Foundation'),
(2617, 53, 15, 6, 35, '_order', '1014'),
(2616, 53, 15, 6, 35, '_id', '53'),
(2615, 53, 15, 6, 35, 'text', 'Wawa Foundation'),
(2614, 52, 15, 6, 35, '_order', '1013'),
(2613, 52, 15, 6, 35, '_id', '52'),
(2612, 52, 15, 6, 35, 'text', 'Henrietta Tower Wurts Memorial'),
(2611, 51, 15, 6, 35, '_order', '1012'),
(2610, 51, 15, 6, 35, '_id', '51'),
(2609, 51, 15, 6, 35, 'text', 'First Presbyterian Church'),
(2608, 50, 15, 6, 35, '_order', '1011'),
(2607, 50, 15, 6, 35, '_id', '50'),
(2606, 50, 15, 6, 35, 'text', 'Dolfinger-McMahon Foundation'),
(2605, 49, 15, 6, 35, '_order', '1010'),
(2604, 49, 15, 6, 35, '_id', '49'),
(2603, 49, 15, 6, 35, 'text', 'Christopher Ludwick Foundation'),
(2602, 48, 15, 6, 35, '_order', '1009'),
(2601, 48, 15, 6, 35, '_id', '48'),
(2600, 48, 15, 6, 35, 'text', 'Claneil Foundation, Inc.'),
(2599, 47, 15, 6, 35, '_order', '1008'),
(2598, 47, 15, 6, 35, '_id', '47'),
(2597, 47, 15, 6, 35, 'text', 'Catholic Campaign for Human Development'),
(2710, 54, 15, 6, 36, '_order', '1015'),
(2709, 54, 15, 6, 36, '_id', '54'),
(2708, 54, 15, 6, 36, 'text', 'Independence Foundation'),
(2707, 53, 15, 6, 36, '_order', '1014'),
(2706, 53, 15, 6, 36, '_id', '53'),
(2705, 53, 15, 6, 36, 'text', 'Wawa Foundation'),
(2704, 52, 15, 6, 36, '_order', '1013'),
(2703, 52, 15, 6, 36, '_id', '52'),
(2702, 52, 15, 6, 36, 'text', 'Henrietta Tower Wurts Memorial'),
(2701, 51, 15, 6, 36, '_order', '1012'),
(2700, 51, 15, 6, 36, '_id', '51'),
(2699, 51, 15, 6, 36, 'text', 'First Presbyterian Church'),
(2698, 50, 15, 6, 36, '_order', '1011'),
(2697, 50, 15, 6, 36, '_id', '50'),
(2696, 50, 15, 6, 36, 'text', 'Dolfinger-McMahon Foundation'),
(2695, 49, 15, 6, 36, '_order', '1010'),
(2694, 49, 15, 6, 36, '_id', '49'),
(2693, 49, 15, 6, 36, 'text', 'Christopher Ludwick Foundation'),
(2692, 48, 15, 6, 36, '_order', '1009'),
(2691, 48, 15, 6, 36, '_id', '48'),
(2690, 48, 15, 6, 36, 'text', 'Claneil Foundation, Inc.'),
(2689, 47, 15, 6, 36, '_order', '1008'),
(2688, 47, 15, 6, 36, '_id', '47'),
(2687, 47, 15, 6, 36, 'text', 'Catholic Campaign for Human Development'),
(2101, 46, 15, 6, 29, '_order', '1007'),
(2100, 46, 15, 6, 29, '_id', '46'),
(2099, 46, 15, 6, 29, 'text', 'Cassett Foundation'),
(2098, 45, 15, 6, 29, '_order', '1006'),
(2097, 45, 15, 6, 29, '_id', '45'),
(2096, 45, 15, 6, 29, 'text', 'Bryn Mawr Presbyterian Church'),
(2095, 44, 15, 6, 29, '_order', '1005'),
(2094, 44, 15, 6, 29, '_id', '44'),
(2093, 44, 15, 6, 29, 'text', 'Bread & Roses Community Fund'),
(2092, 43, 15, 6, 29, '_order', '1004'),
(2091, 43, 15, 6, 29, '_id', '43'),
(2090, 43, 15, 6, 29, 'text', 'Berkowitz Family Foundation'),
(2089, 42, 15, 6, 29, '_order', '1003'),
(2088, 42, 15, 6, 29, '_id', '42'),
(2087, 42, 15, 6, 29, 'text', 'Barra Foundation'),
(2086, 41, 15, 6, 29, '_order', '1002'),
(2085, 41, 15, 6, 29, '_id', '41'),
(2084, 41, 15, 6, 29, 'text', 'Allen Hilles Fund'),
(2083, 40, 15, 6, 29, '_order', '1001'),
(2082, 40, 15, 6, 29, '_id', '40'),
(2081, 40, 15, 6, 29, 'text', 'Alfred and Mary Douty Foundation'),
(2080, 39, 15, 6, 29, '_order', '1000'),
(2079, 39, 15, 6, 29, '_id', '39'),
(2078, 39, 15, 6, 29, 'text', '1830 Family Foundation'),
(2176, 46, 15, 6, 30, '_order', '1007'),
(2175, 46, 15, 6, 30, '_id', '46'),
(2174, 46, 15, 6, 30, 'text', 'Cassett Foundation'),
(2173, 45, 15, 6, 30, '_order', '1006'),
(2172, 45, 15, 6, 30, '_id', '45'),
(2171, 45, 15, 6, 30, 'text', 'Bryn Mawr Presbyterian Church'),
(2170, 44, 15, 6, 30, '_order', '1005'),
(2169, 44, 15, 6, 30, '_id', '44'),
(2168, 44, 15, 6, 30, 'text', 'Bread & Roses Community Fund'),
(2167, 43, 15, 6, 30, '_order', '1004'),
(2166, 43, 15, 6, 30, '_id', '43'),
(2165, 43, 15, 6, 30, 'text', 'Berkowitz Family Foundation'),
(2164, 42, 15, 6, 30, '_order', '1003'),
(2163, 42, 15, 6, 30, '_id', '42'),
(2162, 42, 15, 6, 30, 'text', 'Barra Foundation'),
(2161, 41, 15, 6, 30, '_order', '1002'),
(2160, 41, 15, 6, 30, '_id', '41'),
(2159, 41, 15, 6, 30, 'text', 'Allen Hilles Fund'),
(2158, 40, 15, 6, 30, '_order', '1001'),
(2157, 40, 15, 6, 30, '_id', '40'),
(2156, 40, 15, 6, 30, 'text', 'Alfred and Mary Douty Foundation'),
(2155, 39, 15, 6, 30, '_order', '1000'),
(2154, 39, 15, 6, 30, '_id', '39'),
(2153, 39, 15, 6, 30, 'text', '1830 Family Foundation'),
(2254, 46, 15, 6, 31, '_order', '1007'),
(2253, 46, 15, 6, 31, '_id', '46'),
(2252, 46, 15, 6, 31, 'text', 'Cassett Foundation'),
(2251, 45, 15, 6, 31, '_order', '1006'),
(2250, 45, 15, 6, 31, '_id', '45'),
(2249, 45, 15, 6, 31, 'text', 'Bryn Mawr Presbyterian Church'),
(2248, 44, 15, 6, 31, '_order', '1005'),
(2247, 44, 15, 6, 31, '_id', '44'),
(2246, 44, 15, 6, 31, 'text', 'Bread & Roses Community Fund'),
(2245, 43, 15, 6, 31, '_order', '1004'),
(2244, 43, 15, 6, 31, '_id', '43'),
(2243, 43, 15, 6, 31, 'text', 'Berkowitz Family Foundation'),
(2242, 42, 15, 6, 31, '_order', '1003'),
(2241, 42, 15, 6, 31, '_id', '42'),
(2240, 42, 15, 6, 31, 'text', 'Barra Foundation'),
(2239, 41, 15, 6, 31, '_order', '1002'),
(2238, 41, 15, 6, 31, '_id', '41'),
(2237, 41, 15, 6, 31, 'text', 'Allen Hilles Fund'),
(2236, 40, 15, 6, 31, '_order', '1001'),
(2235, 40, 15, 6, 31, '_id', '40'),
(2234, 40, 15, 6, 31, 'text', 'Alfred and Mary Douty Foundation'),
(2233, 39, 15, 6, 31, '_order', '1000'),
(2232, 39, 15, 6, 31, '_id', '39'),
(2231, 39, 15, 6, 31, 'text', '1830 Family Foundation'),
(2335, 46, 15, 6, 32, '_order', '1007'),
(2334, 46, 15, 6, 32, '_id', '46'),
(2333, 46, 15, 6, 32, 'text', 'Cassett Foundation'),
(2332, 45, 15, 6, 32, '_order', '1006'),
(2331, 45, 15, 6, 32, '_id', '45'),
(2330, 45, 15, 6, 32, 'text', 'Bryn Mawr Presbyterian Church'),
(2329, 44, 15, 6, 32, '_order', '1005'),
(2328, 44, 15, 6, 32, '_id', '44'),
(2327, 44, 15, 6, 32, 'text', 'Bread & Roses Community Fund'),
(2326, 43, 15, 6, 32, '_order', '1004'),
(2325, 43, 15, 6, 32, '_id', '43'),
(2324, 43, 15, 6, 32, 'text', 'Berkowitz Family Foundation'),
(2323, 42, 15, 6, 32, '_order', '1003'),
(2322, 42, 15, 6, 32, '_id', '42'),
(2321, 42, 15, 6, 32, 'text', 'Barra Foundation'),
(2320, 41, 15, 6, 32, '_order', '1002'),
(2319, 41, 15, 6, 32, '_id', '41'),
(2318, 41, 15, 6, 32, 'text', 'Allen Hilles Fund'),
(2317, 40, 15, 6, 32, '_order', '1001'),
(2316, 40, 15, 6, 32, '_id', '40'),
(2315, 40, 15, 6, 32, 'text', 'Alfred and Mary Douty Foundation'),
(2314, 39, 15, 6, 32, '_order', '1000'),
(2313, 39, 15, 6, 32, '_id', '39'),
(2312, 39, 15, 6, 32, 'text', '1830 Family Foundation'),
(2419, 46, 15, 6, 33, '_order', '1007'),
(2418, 46, 15, 6, 33, '_id', '46'),
(2417, 46, 15, 6, 33, 'text', 'Cassett Foundation'),
(2416, 45, 15, 6, 33, '_order', '1006'),
(2415, 45, 15, 6, 33, '_id', '45'),
(2414, 45, 15, 6, 33, 'text', 'Bryn Mawr Presbyterian Church'),
(2413, 44, 15, 6, 33, '_order', '1005'),
(2412, 44, 15, 6, 33, '_id', '44'),
(2411, 44, 15, 6, 33, 'text', 'Bread & Roses Community Fund'),
(2410, 43, 15, 6, 33, '_order', '1004'),
(2409, 43, 15, 6, 33, '_id', '43'),
(2408, 43, 15, 6, 33, 'text', 'Berkowitz Family Foundation'),
(2407, 42, 15, 6, 33, '_order', '1003'),
(2406, 42, 15, 6, 33, '_id', '42'),
(2405, 42, 15, 6, 33, 'text', 'Barra Foundation'),
(2404, 41, 15, 6, 33, '_order', '1002'),
(2403, 41, 15, 6, 33, '_id', '41'),
(2402, 41, 15, 6, 33, 'text', 'Allen Hilles Fund'),
(2401, 40, 15, 6, 33, '_order', '1001'),
(2400, 40, 15, 6, 33, '_id', '40'),
(2399, 40, 15, 6, 33, 'text', 'Alfred and Mary Douty Foundation'),
(2398, 39, 15, 6, 33, '_order', '1000'),
(2397, 39, 15, 6, 33, '_id', '39'),
(2396, 39, 15, 6, 33, 'text', '1830 Family Foundation'),
(2506, 46, 15, 6, 34, '_order', '1007'),
(2505, 46, 15, 6, 34, '_id', '46'),
(2504, 46, 15, 6, 34, 'text', 'Cassett Foundation'),
(2503, 45, 15, 6, 34, '_order', '1006'),
(2502, 45, 15, 6, 34, '_id', '45'),
(2501, 45, 15, 6, 34, 'text', 'Bryn Mawr Presbyterian Church'),
(2500, 44, 15, 6, 34, '_order', '1005'),
(2499, 44, 15, 6, 34, '_id', '44'),
(2498, 44, 15, 6, 34, 'text', 'Bread & Roses Community Fund'),
(2497, 43, 15, 6, 34, '_order', '1004'),
(2496, 43, 15, 6, 34, '_id', '43'),
(2495, 43, 15, 6, 34, 'text', 'Berkowitz Family Foundation'),
(2494, 42, 15, 6, 34, '_order', '1003'),
(2493, 42, 15, 6, 34, '_id', '42'),
(2492, 42, 15, 6, 34, 'text', 'Barra Foundation'),
(2491, 41, 15, 6, 34, '_order', '1002'),
(2490, 41, 15, 6, 34, '_id', '41'),
(2489, 41, 15, 6, 34, 'text', 'Allen Hilles Fund'),
(2488, 40, 15, 6, 34, '_order', '1001'),
(2487, 40, 15, 6, 34, '_id', '40'),
(2486, 40, 15, 6, 34, 'text', 'Alfred and Mary Douty Foundation'),
(2485, 39, 15, 6, 34, '_order', '1000'),
(2484, 39, 15, 6, 34, '_id', '39'),
(2483, 39, 15, 6, 34, 'text', '1830 Family Foundation'),
(2596, 46, 15, 6, 35, '_order', '1007'),
(2595, 46, 15, 6, 35, '_id', '46'),
(2594, 46, 15, 6, 35, 'text', 'Cassett Foundation'),
(2593, 45, 15, 6, 35, '_order', '1006'),
(2592, 45, 15, 6, 35, '_id', '45'),
(2591, 45, 15, 6, 35, 'text', 'Bryn Mawr Presbyterian Church'),
(2590, 44, 15, 6, 35, '_order', '1005'),
(2589, 44, 15, 6, 35, '_id', '44'),
(2588, 44, 15, 6, 35, 'text', 'Bread & Roses Community Fund'),
(2587, 43, 15, 6, 35, '_order', '1004'),
(2586, 43, 15, 6, 35, '_id', '43'),
(2585, 43, 15, 6, 35, 'text', 'Berkowitz Family Foundation'),
(2584, 42, 15, 6, 35, '_order', '1003'),
(2583, 42, 15, 6, 35, '_id', '42'),
(2582, 42, 15, 6, 35, 'text', 'Barra Foundation'),
(2581, 41, 15, 6, 35, '_order', '1002'),
(2580, 41, 15, 6, 35, '_id', '41'),
(2579, 41, 15, 6, 35, 'text', 'Allen Hilles Fund'),
(2578, 40, 15, 6, 35, '_order', '1001'),
(2577, 40, 15, 6, 35, '_id', '40'),
(2576, 40, 15, 6, 35, 'text', 'Alfred and Mary Douty Foundation'),
(2575, 39, 15, 6, 35, '_order', '1000'),
(2574, 39, 15, 6, 35, '_id', '39'),
(2573, 39, 15, 6, 35, 'text', '1830 Family Foundation'),
(2686, 46, 15, 6, 36, '_order', '1007'),
(2685, 46, 15, 6, 36, '_id', '46'),
(2684, 46, 15, 6, 36, 'text', 'Cassett Foundation'),
(2683, 45, 15, 6, 36, '_order', '1006'),
(2682, 45, 15, 6, 36, '_id', '45'),
(2681, 45, 15, 6, 36, 'text', 'Bryn Mawr Presbyterian Church'),
(2680, 44, 15, 6, 36, '_order', '1005'),
(2679, 44, 15, 6, 36, '_id', '44'),
(2678, 44, 15, 6, 36, 'text', 'Bread & Roses Community Fund'),
(2677, 43, 15, 6, 36, '_order', '1004'),
(2676, 43, 15, 6, 36, '_id', '43'),
(2675, 43, 15, 6, 36, 'text', 'Berkowitz Family Foundation'),
(2674, 42, 15, 6, 36, '_order', '1003'),
(2673, 42, 15, 6, 36, '_id', '42'),
(2672, 42, 15, 6, 36, 'text', 'Barra Foundation'),
(2671, 41, 15, 6, 36, '_order', '1002'),
(2670, 41, 15, 6, 36, '_id', '41'),
(2669, 41, 15, 6, 36, 'text', 'Allen Hilles Fund'),
(2668, 40, 15, 6, 36, '_order', '1001'),
(2667, 40, 15, 6, 36, '_id', '40'),
(2666, 40, 15, 6, 36, 'text', 'Alfred and Mary Douty Foundation'),
(2665, 39, 15, 6, 36, '_order', '1000'),
(2664, 39, 15, 6, 36, '_id', '39'),
(2663, 39, 15, 6, 36, 'text', '1830 Family Foundation'),
(2129, 56, 15, 6, 29, 'text', 'Leo & Peggy Pierce Foundation'),
(2130, 56, 15, 6, 29, '_id', '56'),
(2131, 56, 15, 6, 29, '_order', '1017'),
(2132, 57, 15, 6, 29, 'text', 'Louis N. Cassett Foundation'),
(2133, 57, 15, 6, 29, '_id', '57'),
(2134, 57, 15, 6, 29, '_order', '1018'),
(2135, 58, 15, 6, 29, 'text', 'Merck Family Fund'),
(2136, 58, 15, 6, 29, '_id', '58'),
(2137, 58, 15, 6, 29, '_order', '1019'),
(2138, 59, 15, 6, 29, 'text', 'Philadelphia Chapter of the Garden Club of America'),
(2139, 59, 15, 6, 29, '_id', '59'),
(2140, 59, 15, 6, 29, '_order', '1020'),
(2141, 60, 15, 6, 29, 'text', 'Philadelphia Water Department'),
(2142, 60, 15, 6, 29, '_id', '60'),
(2143, 60, 15, 6, 29, '_order', '1021'),
(2144, 61, 15, 6, 29, 'text', 'Rosenlund Family Foundation'),
(2145, 61, 15, 6, 29, '_id', '61'),
(2146, 61, 15, 6, 29, '_order', '1022'),
(2147, 62, 15, 6, 29, 'text', 'Samuel S. Fels Foundation'),
(2148, 62, 15, 6, 29, '_id', '62'),
(2149, 62, 15, 6, 29, '_order', '1023'),
(2150, 63, 15, 6, 29, 'text', 'SEI Giving Fund'),
(2151, 63, 15, 6, 29, '_id', '63'),
(2152, 63, 15, 6, 29, '_order', '1024'),
(2207, 57, 15, 6, 30, 'text', 'Louis N. Cassett Foundation'),
(2208, 57, 15, 6, 30, '_id', '57'),
(2209, 57, 15, 6, 30, '_order', '1018'),
(2210, 58, 15, 6, 30, 'text', 'Merck Family Fund'),
(2211, 58, 15, 6, 30, '_id', '58'),
(2212, 58, 15, 6, 30, '_order', '1019'),
(2213, 59, 15, 6, 30, 'text', 'Philadelphia Chapter of the Garden Club of America'),
(2214, 59, 15, 6, 30, '_id', '59'),
(2215, 59, 15, 6, 30, '_order', '1020'),
(2216, 60, 15, 6, 30, 'text', 'Philadelphia Water Department'),
(2217, 60, 15, 6, 30, '_id', '60'),
(2218, 60, 15, 6, 30, '_order', '1021'),
(2219, 61, 15, 6, 30, 'text', 'Rosenlund Family Foundation'),
(2220, 61, 15, 6, 30, '_id', '61'),
(2221, 61, 15, 6, 30, '_order', '1022'),
(2222, 62, 15, 6, 30, 'text', 'Samuel S. Fels Foundation'),
(2223, 62, 15, 6, 30, '_id', '62'),
(2224, 62, 15, 6, 30, '_order', '1023'),
(2225, 63, 15, 6, 30, 'text', 'SEI Giving Fund'),
(2226, 63, 15, 6, 30, '_id', '63'),
(2227, 63, 15, 6, 30, '_order', '1024'),
(2228, 64, 15, 6, 30, 'text', 'Thomas Skelton Harrison Foundation'),
(2229, 64, 15, 6, 30, '_id', '64'),
(2230, 64, 15, 6, 30, '_order', '1025'),
(2288, 58, 15, 6, 31, 'text', 'Merck Family Fund'),
(2289, 58, 15, 6, 31, '_id', '58'),
(2290, 58, 15, 6, 31, '_order', '1019'),
(2291, 59, 15, 6, 31, 'text', 'Philadelphia Chapter of the Garden Club of America'),
(2292, 59, 15, 6, 31, '_id', '59'),
(2293, 59, 15, 6, 31, '_order', '1020'),
(2294, 60, 15, 6, 31, 'text', 'Philadelphia Water Department'),
(2295, 60, 15, 6, 31, '_id', '60'),
(2296, 60, 15, 6, 31, '_order', '1021'),
(2297, 61, 15, 6, 31, 'text', 'Rosenlund Family Foundation'),
(2298, 61, 15, 6, 31, '_id', '61'),
(2299, 61, 15, 6, 31, '_order', '1022'),
(2300, 62, 15, 6, 31, 'text', 'Samuel S. Fels Foundation'),
(2301, 62, 15, 6, 31, '_id', '62'),
(2302, 62, 15, 6, 31, '_order', '1023'),
(2303, 63, 15, 6, 31, 'text', 'SEI Giving Fund'),
(2304, 63, 15, 6, 31, '_id', '63'),
(2305, 63, 15, 6, 31, '_order', '1024'),
(2306, 64, 15, 6, 31, 'text', 'Thomas Skelton Harrison Foundation'),
(2307, 64, 15, 6, 31, '_id', '64'),
(2308, 64, 15, 6, 31, '_order', '1025'),
(2309, 65, 15, 6, 31, 'text', 'Union Benevolent Foundation'),
(2310, 65, 15, 6, 31, '_id', '65'),
(2311, 65, 15, 6, 31, '_order', '1026'),
(2372, 59, 15, 6, 32, 'text', 'Philadelphia Chapter of the Garden Club of America'),
(2373, 59, 15, 6, 32, '_id', '59'),
(2374, 59, 15, 6, 32, '_order', '1020'),
(2375, 60, 15, 6, 32, 'text', 'Philadelphia Water Department'),
(2376, 60, 15, 6, 32, '_id', '60'),
(2377, 60, 15, 6, 32, '_order', '1021'),
(2378, 61, 15, 6, 32, 'text', 'Rosenlund Family Foundation'),
(2379, 61, 15, 6, 32, '_id', '61'),
(2380, 61, 15, 6, 32, '_order', '1022'),
(2381, 62, 15, 6, 32, 'text', 'Samuel S. Fels Foundation'),
(2382, 62, 15, 6, 32, '_id', '62'),
(2383, 62, 15, 6, 32, '_order', '1023'),
(2384, 63, 15, 6, 32, 'text', 'SEI Giving Fund'),
(2385, 63, 15, 6, 32, '_id', '63'),
(2386, 63, 15, 6, 32, '_order', '1024'),
(2387, 64, 15, 6, 32, 'text', 'Thomas Skelton Harrison Foundation'),
(2388, 64, 15, 6, 32, '_id', '64'),
(2389, 64, 15, 6, 32, '_order', '1025'),
(2390, 65, 15, 6, 32, 'text', 'Union Benevolent Foundation'),
(2391, 65, 15, 6, 32, '_id', '65'),
(2392, 65, 15, 6, 32, '_order', '1026'),
(2393, 66, 15, 6, 32, 'text', 'U.S. Department of Agriculture'),
(2394, 66, 15, 6, 32, '_id', '66'),
(2395, 66, 15, 6, 32, '_order', '1027'),
(2459, 60, 15, 6, 33, 'text', 'Philadelphia Water Department'),
(2460, 60, 15, 6, 33, '_id', '60'),
(2461, 60, 15, 6, 33, '_order', '1021'),
(2462, 61, 15, 6, 33, 'text', 'Rosenlund Family Foundation'),
(2463, 61, 15, 6, 33, '_id', '61'),
(2464, 61, 15, 6, 33, '_order', '1022'),
(2465, 62, 15, 6, 33, 'text', 'Samuel S. Fels Foundation'),
(2466, 62, 15, 6, 33, '_id', '62'),
(2467, 62, 15, 6, 33, '_order', '1023'),
(2468, 63, 15, 6, 33, 'text', 'SEI Giving Fund'),
(2469, 63, 15, 6, 33, '_id', '63'),
(2470, 63, 15, 6, 33, '_order', '1024'),
(2471, 64, 15, 6, 33, 'text', 'Thomas Skelton Harrison Foundation'),
(2472, 64, 15, 6, 33, '_id', '64'),
(2473, 64, 15, 6, 33, '_order', '1025'),
(2474, 65, 15, 6, 33, 'text', 'Union Benevolent Foundation'),
(2475, 65, 15, 6, 33, '_id', '65'),
(2476, 65, 15, 6, 33, '_order', '1026'),
(2477, 66, 15, 6, 33, 'text', 'U.S. Department of Agriculture'),
(2478, 66, 15, 6, 33, '_id', '66'),
(2479, 66, 15, 6, 33, '_order', '1027'),
(2480, 67, 15, 6, 33, 'text', 'Vanguard Group'),
(2481, 67, 15, 6, 33, '_id', '67'),
(2482, 67, 15, 6, 33, '_order', '1028'),
(2549, 61, 15, 6, 34, 'text', 'Rosenlund Family Foundation'),
(2550, 61, 15, 6, 34, '_id', '61'),
(2551, 61, 15, 6, 34, '_order', '1022'),
(2552, 62, 15, 6, 34, 'text', 'Samuel S. Fels Foundation'),
(2553, 62, 15, 6, 34, '_id', '62'),
(2554, 62, 15, 6, 34, '_order', '1023'),
(2555, 63, 15, 6, 34, 'text', 'SEI Giving Fund'),
(2556, 63, 15, 6, 34, '_id', '63'),
(2557, 63, 15, 6, 34, '_order', '1024'),
(2558, 64, 15, 6, 34, 'text', 'Thomas Skelton Harrison Foundation'),
(2559, 64, 15, 6, 34, '_id', '64'),
(2560, 64, 15, 6, 34, '_order', '1025'),
(2561, 65, 15, 6, 34, 'text', 'Union Benevolent Foundation'),
(2562, 65, 15, 6, 34, '_id', '65'),
(2563, 65, 15, 6, 34, '_order', '1026'),
(2564, 66, 15, 6, 34, 'text', 'U.S. Department of Agriculture'),
(2565, 66, 15, 6, 34, '_id', '66'),
(2566, 66, 15, 6, 34, '_order', '1027'),
(2567, 67, 15, 6, 34, 'text', 'Vanguard Group'),
(2568, 67, 15, 6, 34, '_id', '67'),
(2569, 67, 15, 6, 34, '_order', '1028'),
(2570, 68, 15, 6, 34, 'text', 'Whole Cities Foundation'),
(2571, 68, 15, 6, 34, '_id', '68'),
(2572, 68, 15, 6, 34, '_order', '1029'),
(2642, 62, 15, 6, 35, 'text', 'Samuel S. Fels Foundation'),
(2643, 62, 15, 6, 35, '_id', '62'),
(2644, 62, 15, 6, 35, '_order', '1023'),
(2645, 63, 15, 6, 35, 'text', 'SEI Giving Fund'),
(2646, 63, 15, 6, 35, '_id', '63'),
(2647, 63, 15, 6, 35, '_order', '1024'),
(2648, 64, 15, 6, 35, 'text', 'Thomas Skelton Harrison Foundation'),
(2649, 64, 15, 6, 35, '_id', '64'),
(2650, 64, 15, 6, 35, '_order', '1025'),
(2651, 65, 15, 6, 35, 'text', 'Union Benevolent Foundation'),
(2652, 65, 15, 6, 35, '_id', '65'),
(2653, 65, 15, 6, 35, '_order', '1026'),
(2654, 66, 15, 6, 35, 'text', 'U.S. Department of Agriculture'),
(2655, 66, 15, 6, 35, '_id', '66'),
(2656, 66, 15, 6, 35, '_order', '1027'),
(2657, 67, 15, 6, 35, 'text', 'Vanguard Group'),
(2658, 67, 15, 6, 35, '_id', '67'),
(2659, 67, 15, 6, 35, '_order', '1028'),
(2660, 68, 15, 6, 35, 'text', 'Whole Cities Foundation'),
(2661, 68, 15, 6, 35, '_id', '68'),
(2662, 68, 15, 6, 35, '_order', '1029'),
(2735, 63, 15, 6, 36, 'text', 'SEI Giving Fund'),
(2736, 63, 15, 6, 36, '_id', '63'),
(2737, 63, 15, 6, 36, '_order', '1024'),
(2738, 64, 15, 6, 36, 'text', 'Thomas Skelton Harrison Foundation'),
(2739, 64, 15, 6, 36, '_id', '64'),
(2740, 64, 15, 6, 36, '_order', '1025'),
(2741, 65, 15, 6, 36, 'text', 'Union Benevolent Foundation'),
(2742, 65, 15, 6, 36, '_id', '65'),
(2743, 65, 15, 6, 36, '_order', '1026'),
(2744, 66, 15, 6, 36, 'text', 'U.S. Department of Agriculture'),
(2745, 66, 15, 6, 36, '_id', '66'),
(2746, 66, 15, 6, 36, '_order', '1027'),
(2747, 67, 15, 6, 36, 'text', 'Vanguard Group'),
(2748, 67, 15, 6, 36, '_id', '67'),
(2749, 67, 15, 6, 36, '_order', '1028'),
(2750, 68, 15, 6, 36, 'text', 'Whole Cities Foundation'),
(2751, 68, 15, 6, 36, '_id', '68'),
(2752, 68, 15, 6, 36, '_order', '1029'),
(2753, 70, 16, 7, 1, 'text', 'Urban Tree Connection remains a genuinely grassroots organization, driven by the time, commitment, and partnership of individuals like you. Your support enables us to continue our core work and programming and be good stewards of our community-based garde'),
(2754, 70, 16, 7, 1, '_id', '70'),
(2755, 70, 16, 7, 1, '_order', '1000'),
(2756, 71, 17, 7, 1, 'text', 'Click on our PayPal donation button below, and make a gift using your MasterCard, Visa, American Express, or Discover card:'),
(2757, 71, 17, 7, 1, '_id', '71'),
(2758, 71, 17, 7, 1, '_order', '1000'),
(2759, 71, 17, 7, 2, 'text', 'Click on our PayPal donation button below, and make a gift using your MasterCard, Visa, American Express, or Discover card:'),
(2760, 71, 17, 7, 2, '_id', '71'),
(2761, 71, 17, 7, 2, '_order', '1000'),
(2762, 72, 18, 7, 1, 'text', 'https://www.paypal.com/fundraiser/charity/1563272'),
(2763, 72, 18, 7, 1, '_id', '72'),
(2764, 72, 18, 7, 1, '_order', '1000'),
(2765, 72, 18, 7, 2, 'text', 'https://www.paypal.com/fundraiser/charity/1563272'),
(2766, 72, 18, 7, 2, '_id', '72'),
(2767, 72, 18, 7, 2, '_order', '1000'),
(2768, 72, 18, 7, 3, 'text', 'https://www.paypal.com/fundraiser/charity/1563272'),
(2769, 72, 18, 7, 3, '_id', '72'),
(2770, 72, 18, 7, 3, '_order', '1000'),
(2771, 73, 19, 7, 1, 'text', 'Check can be made payable to “Urban Tree Connection” and send to the following address:&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;Urban Tree Connection&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;c/o First African Presbyterian Church&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;4159 West G'),
(2772, 73, 19, 7, 1, '_id', '73'),
(2773, 73, 19, 7, 1, '_order', '1000'),
(2774, 74, 20, 7, 1, 'text', 'Help support our work by donating a critically needed item from our Wish&nbsp;List. If you are interested in donating one of these items, call our office: 215-877-7203 or send us an email: info@urbantreeconnection.org, to arrange delivery or set a drop-of'),
(2775, 74, 20, 7, 1, '_id', '74'),
(2776, 74, 20, 7, 1, '_order', '1000'),
(2777, 74, 20, 7, 2, 'text', 'Help support our work by donating a critically needed item from our Wish&nbsp;List. If you are interested in donating one of these items, call our office: 215-877-7203 or send us an email: info@urbantreeconnection.org, to arrange delivery or set a drop-of'),
(2778, 74, 20, 7, 2, '_id', '74'),
(2779, 74, 20, 7, 2, '_order', '1000'),
(2780, 74, 20, 7, 3, 'text', 'Help support our work by donating a critically needed item from our Wish&nbsp;List. If you are interested in donating one of these items, call our office: 215-877-7203 or send us an email:'),
(2781, 74, 20, 7, 3, '_id', '74'),
(2782, 74, 20, 7, 3, '_order', '1000'),
(2783, 74, 20, 7, 4, 'text', 'Help support our work by donating a critically needed item from our Wish&nbsp;List. If you are interested in donating one of these items, call our office: 215-877-7203 or send us an info@urbantreeconnection.org.'),
(2784, 74, 20, 7, 4, '_id', '74'),
(2785, 74, 20, 7, 4, '_order', '1000'),
(2786, 75, 21, 8, 1, 'text', 'Urban Tree Connection is a grassroots organization, and we rely on the partnership of community volunteers to make our work possible. Last year, 978 volunteers contributed more than 7,000 hours of their time at our farms and garden sites.  We appreciate o'),
(2787, 75, 21, 8, 1, '_id', '75'),
(2788, 75, 21, 8, 1, '_order', '1000'),
(2789, 75, 21, 8, 2, 'text', 'Urban Tree Connection is a grassroots organization, and we rely on the partnership of community volunteers to make our work possible. Last year, 978 volunteers contributed more than 7,000 hours of their time at our farms and garden sites.  We appreciate o'),
(2790, 75, 21, 8, 2, '_id', '75'),
(2791, 75, 21, 8, 2, '_order', '1000'),
(2792, 76, 22, 8, 1, 'position_name', 'Farming Apprenticeship'),
(2793, 76, 22, 8, 1, 'position_descriptin', 'Farm Apprentices will receive 1:1 training with our farm staff in sustainable vegetable production along with a share in the harvest. Apprenticeships can be structured for 3 to 9 months during the growing season.'),
(2794, 76, 22, 8, 1, '_id', '76'),
(2795, 76, 22, 8, 1, '_order', '1000'),
(2796, 76, 22, 8, 2, 'position_name', 'Farming Apprenticeship'),
(2797, 76, 22, 8, 2, 'position_descriptin', 'Farm Apprentices will receive 1:1 training with our farm staff in sustainable vegetable production along with a share in the harvest. Apprenticeships can be structured for 3 to 9 months during the growing season.'),
(2798, 76, 22, 8, 2, '_id', '76'),
(2799, 76, 22, 8, 2, '_order', '1000'),
(2800, 77, 22, 8, 2, 'position_name', 'Grants & Communications Internship'),
(2801, 77, 22, 8, 2, 'position_descriptin', 'UTC is currently seeking an intern that can support with grant writing, communications, and social media. We are seeking 6 month to year-long interns.'),
(2802, 77, 22, 8, 2, '_id', '77'),
(2803, 77, 22, 8, 2, '_order', '1001'),
(2914, 78, 23, 8, 9, '_order', '1000'),
(2913, 78, 23, 8, 9, '_id', '78'),
(2912, 78, 23, 8, 9, 'text', 'Ink for Laser Jet 304A'),
(2944, 79, 23, 8, 10, '_order', '1001'),
(2943, 79, 23, 8, 10, '_id', '79'),
(2942, 79, 23, 8, 10, 'text', '13-Gallon Trash Bags'),
(2941, 78, 23, 8, 10, '_order', '1000'),
(2940, 78, 23, 8, 10, '_id', '78'),
(2939, 78, 23, 8, 10, 'text', 'Ink for Laser Jet 304A'),
(2977, 80, 23, 8, 11, '_order', '1002'),
(2976, 80, 23, 8, 11, '_id', '80'),
(2975, 80, 23, 8, 11, 'text', 'Large Chart Paper'),
(2974, 79, 23, 8, 11, '_order', '1001'),
(2973, 79, 23, 8, 11, '_id', '79'),
(2972, 79, 23, 8, 11, 'text', '13-Gallon Trash Bags'),
(2971, 78, 23, 8, 11, '_order', '1000'),
(2970, 78, 23, 8, 11, '_id', '78'),
(2969, 78, 23, 8, 11, 'text', 'Ink for Laser Jet 304A'),
(3013, 81, 23, 8, 12, '_order', '1003'),
(3012, 81, 23, 8, 12, '_id', '81'),
(3011, 81, 23, 8, 12, 'text', 'Sharpies/Markers'),
(3010, 80, 23, 8, 12, '_order', '1002'),
(3009, 80, 23, 8, 12, '_id', '80'),
(3008, 80, 23, 8, 12, 'text', 'Large Chart Paper'),
(3007, 79, 23, 8, 12, '_order', '1001'),
(3006, 79, 23, 8, 12, '_id', '79'),
(3005, 79, 23, 8, 12, 'text', '13-Gallon Trash Bags'),
(3004, 78, 23, 8, 12, '_order', '1000'),
(3003, 78, 23, 8, 12, '_id', '78'),
(3002, 78, 23, 8, 12, 'text', 'Ink for Laser Jet 304A'),
(2834, 78, 23, 8, 5, 'text', 'Ink for Laser Jet 304A'),
(2835, 78, 23, 8, 5, '_id', '78'),
(2836, 78, 23, 8, 5, '_order', '1000'),
(2837, 79, 23, 8, 5, 'text', '13-Gallon Trash Bags'),
(2838, 79, 23, 8, 5, '_id', '79'),
(2839, 79, 23, 8, 5, '_order', '1001'),
(2840, 80, 23, 8, 5, 'text', 'Large Chart Paper'),
(2841, 80, 23, 8, 5, '_id', '80'),
(2842, 80, 23, 8, 5, '_order', '1002'),
(2843, 81, 23, 8, 5, 'text', 'Sharpies/Markers'),
(2844, 81, 23, 8, 5, '_id', '81'),
(2845, 81, 23, 8, 5, '_order', '1003'),
(2846, 82, 23, 8, 5, 'text', 'Art Supplies'),
(2847, 82, 23, 8, 5, '_id', '82'),
(2848, 82, 23, 8, 5, '_order', '1004'),
(2849, 78, 23, 8, 6, 'text', 'Ink for Laser Jet 304A'),
(2850, 78, 23, 8, 6, '_id', '78'),
(2851, 78, 23, 8, 6, '_order', '1000'),
(2852, 79, 23, 8, 6, 'text', '13-Gallon Trash Bags'),
(2853, 79, 23, 8, 6, '_id', '79'),
(2854, 79, 23, 8, 6, '_order', '1001'),
(2855, 80, 23, 8, 6, 'text', 'Large Chart Paper'),
(2856, 80, 23, 8, 6, '_id', '80'),
(2857, 80, 23, 8, 6, '_order', '1002'),
(2858, 81, 23, 8, 6, 'text', 'Sharpies/Markers'),
(2859, 81, 23, 8, 6, '_id', '81'),
(2860, 81, 23, 8, 6, '_order', '1003'),
(2861, 82, 23, 8, 6, 'text', 'Art Supplies'),
(2862, 82, 23, 8, 6, '_id', '82'),
(2863, 82, 23, 8, 6, '_order', '1004'),
(2864, 83, 23, 8, 6, 'text', 'Projector Screen'),
(2865, 83, 23, 8, 6, '_id', '83'),
(2866, 83, 23, 8, 6, '_order', '1005'),
(2867, 78, 23, 8, 7, 'text', 'Ink for Laser Jet 304A'),
(2868, 78, 23, 8, 7, '_id', '78'),
(2869, 78, 23, 8, 7, '_order', '1000'),
(2870, 79, 23, 8, 7, 'text', '13-Gallon Trash Bags'),
(2871, 79, 23, 8, 7, '_id', '79'),
(2872, 79, 23, 8, 7, '_order', '1001'),
(2873, 80, 23, 8, 7, 'text', 'Large Chart Paper'),
(2874, 80, 23, 8, 7, '_id', '80'),
(2875, 80, 23, 8, 7, '_order', '1002'),
(2876, 81, 23, 8, 7, 'text', 'Sharpies/Markers'),
(2877, 81, 23, 8, 7, '_id', '81'),
(2878, 81, 23, 8, 7, '_order', '1003'),
(2879, 82, 23, 8, 7, 'text', 'Art Supplies'),
(2880, 82, 23, 8, 7, '_id', '82'),
(2881, 82, 23, 8, 7, '_order', '1004'),
(2882, 83, 23, 8, 7, 'text', 'Projector Screen'),
(2883, 83, 23, 8, 7, '_id', '83'),
(2884, 83, 23, 8, 7, '_order', '1005'),
(2885, 84, 23, 8, 7, 'text', 'Propane Canisters'),
(2886, 84, 23, 8, 7, '_id', '84'),
(2887, 84, 23, 8, 7, '_order', '1006'),
(2888, 78, 23, 8, 8, 'text', 'Ink for Laser Jet 304A'),
(2889, 78, 23, 8, 8, '_id', '78'),
(2890, 78, 23, 8, 8, '_order', '1000'),
(2891, 79, 23, 8, 8, 'text', '13-Gallon Trash Bags'),
(2892, 79, 23, 8, 8, '_id', '79'),
(2893, 79, 23, 8, 8, '_order', '1001'),
(2894, 80, 23, 8, 8, 'text', 'Large Chart Paper'),
(2895, 80, 23, 8, 8, '_id', '80'),
(2896, 80, 23, 8, 8, '_order', '1002'),
(2897, 81, 23, 8, 8, 'text', 'Sharpies/Markers'),
(2898, 81, 23, 8, 8, '_id', '81'),
(2899, 81, 23, 8, 8, '_order', '1003'),
(2900, 82, 23, 8, 8, 'text', 'Art Supplies'),
(2901, 82, 23, 8, 8, '_id', '82'),
(2902, 82, 23, 8, 8, '_order', '1004'),
(2903, 83, 23, 8, 8, 'text', 'Projector Screen'),
(2904, 83, 23, 8, 8, '_id', '83'),
(2905, 83, 23, 8, 8, '_order', '1005'),
(2906, 84, 23, 8, 8, 'text', 'Propane Canisters'),
(2907, 84, 23, 8, 8, '_id', '84'),
(2908, 84, 23, 8, 8, '_order', '1006'),
(2909, 85, 23, 8, 8, 'text', 'Non-perishable Snacks'),
(2910, 85, 23, 8, 8, '_id', '85'),
(2911, 85, 23, 8, 8, '_order', '1007'),
(2915, 79, 23, 8, 9, 'text', '13-Gallon Trash Bags'),
(2916, 79, 23, 8, 9, '_id', '79'),
(2917, 79, 23, 8, 9, '_order', '1001'),
(2918, 80, 23, 8, 9, 'text', 'Large Chart Paper'),
(2919, 80, 23, 8, 9, '_id', '80'),
(2920, 80, 23, 8, 9, '_order', '1002'),
(2921, 81, 23, 8, 9, 'text', 'Sharpies/Markers'),
(2922, 81, 23, 8, 9, '_id', '81'),
(2923, 81, 23, 8, 9, '_order', '1003'),
(2924, 82, 23, 8, 9, 'text', 'Art Supplies'),
(2925, 82, 23, 8, 9, '_id', '82'),
(2926, 82, 23, 8, 9, '_order', '1004'),
(2927, 83, 23, 8, 9, 'text', 'Projector Screen'),
(2928, 83, 23, 8, 9, '_id', '83'),
(2929, 83, 23, 8, 9, '_order', '1005'),
(2930, 84, 23, 8, 9, 'text', 'Propane Canisters'),
(2931, 84, 23, 8, 9, '_id', '84'),
(2932, 84, 23, 8, 9, '_order', '1006'),
(2933, 85, 23, 8, 9, 'text', 'Non-perishable Snacks'),
(2934, 85, 23, 8, 9, '_id', '85'),
(2935, 85, 23, 8, 9, '_order', '1007'),
(2936, 86, 23, 8, 9, 'text', 'SEPTA Tokens (for youth)'),
(2937, 86, 23, 8, 9, '_id', '86'),
(2938, 86, 23, 8, 9, '_order', '1008'),
(2945, 80, 23, 8, 10, 'text', 'Large Chart Paper'),
(2946, 80, 23, 8, 10, '_id', '80'),
(2947, 80, 23, 8, 10, '_order', '1002'),
(2948, 81, 23, 8, 10, 'text', 'Sharpies/Markers'),
(2949, 81, 23, 8, 10, '_id', '81'),
(2950, 81, 23, 8, 10, '_order', '1003'),
(2951, 82, 23, 8, 10, 'text', 'Art Supplies'),
(2952, 82, 23, 8, 10, '_id', '82'),
(2953, 82, 23, 8, 10, '_order', '1004'),
(2954, 83, 23, 8, 10, 'text', 'Projector Screen'),
(2955, 83, 23, 8, 10, '_id', '83'),
(2956, 83, 23, 8, 10, '_order', '1005'),
(2957, 84, 23, 8, 10, 'text', 'Propane Canisters'),
(2958, 84, 23, 8, 10, '_id', '84'),
(2959, 84, 23, 8, 10, '_order', '1006'),
(2960, 85, 23, 8, 10, 'text', 'Non-perishable Snacks'),
(2961, 85, 23, 8, 10, '_id', '85'),
(2962, 85, 23, 8, 10, '_order', '1007'),
(2963, 86, 23, 8, 10, 'text', 'SEPTA Tokens (for youth)'),
(2964, 86, 23, 8, 10, '_id', '86'),
(2965, 86, 23, 8, 10, '_order', '1008'),
(2966, 87, 23, 8, 10, 'text', 'iPad (for farmers markets)'),
(2967, 87, 23, 8, 10, '_id', '87'),
(2968, 87, 23, 8, 10, '_order', '1009'),
(2978, 81, 23, 8, 11, 'text', 'Sharpies/Markers'),
(2979, 81, 23, 8, 11, '_id', '81'),
(2980, 81, 23, 8, 11, '_order', '1003'),
(2981, 82, 23, 8, 11, 'text', 'Art Supplies'),
(2982, 82, 23, 8, 11, '_id', '82'),
(2983, 82, 23, 8, 11, '_order', '1004'),
(2984, 83, 23, 8, 11, 'text', 'Projector Screen'),
(2985, 83, 23, 8, 11, '_id', '83'),
(2986, 83, 23, 8, 11, '_order', '1005'),
(2987, 84, 23, 8, 11, 'text', 'Propane Canisters'),
(2988, 84, 23, 8, 11, '_id', '84'),
(2989, 84, 23, 8, 11, '_order', '1006'),
(2990, 85, 23, 8, 11, 'text', 'Non-perishable Snacks'),
(2991, 85, 23, 8, 11, '_id', '85'),
(2992, 85, 23, 8, 11, '_order', '1007'),
(2993, 86, 23, 8, 11, 'text', 'SEPTA Tokens (for youth)'),
(2994, 86, 23, 8, 11, '_id', '86'),
(2995, 86, 23, 8, 11, '_order', '1008'),
(2996, 87, 23, 8, 11, 'text', 'iPad (for farmers markets)'),
(2997, 87, 23, 8, 11, '_id', '87'),
(2998, 87, 23, 8, 11, '_order', '1009'),
(2999, 88, 23, 8, 11, 'text', 'Camera'),
(3000, 88, 23, 8, 11, '_id', '88'),
(3001, 88, 23, 8, 11, '_order', '1010'),
(3014, 82, 23, 8, 12, 'text', 'Art Supplies'),
(3015, 82, 23, 8, 12, '_id', '82'),
(3016, 82, 23, 8, 12, '_order', '1004'),
(3017, 83, 23, 8, 12, 'text', 'Projector Screen'),
(3018, 83, 23, 8, 12, '_id', '83'),
(3019, 83, 23, 8, 12, '_order', '1005'),
(3020, 84, 23, 8, 12, 'text', 'Propane Canisters'),
(3021, 84, 23, 8, 12, '_id', '84'),
(3022, 84, 23, 8, 12, '_order', '1006'),
(3023, 85, 23, 8, 12, 'text', 'Non-perishable Snacks'),
(3024, 85, 23, 8, 12, '_id', '85'),
(3025, 85, 23, 8, 12, '_order', '1007'),
(3026, 86, 23, 8, 12, 'text', 'SEPTA Tokens (for youth)'),
(3027, 86, 23, 8, 12, '_id', '86'),
(3028, 86, 23, 8, 12, '_order', '1008'),
(3029, 87, 23, 8, 12, 'text', 'iPad (for farmers markets)'),
(3030, 87, 23, 8, 12, '_id', '87'),
(3031, 87, 23, 8, 12, '_order', '1009'),
(3032, 88, 23, 8, 12, 'text', 'Camera'),
(3033, 88, 23, 8, 12, '_id', '88'),
(3034, 88, 23, 8, 12, '_order', '1010'),
(3035, 89, 23, 8, 12, 'text', 'Dry Food Ingredients/Spices'),
(3036, 89, 23, 8, 12, '_id', '89'),
(3037, 89, 23, 8, 12, '_order', '1011'),
(3148, 91, 24, 8, 9, '_order', '1000'),
(3147, 91, 24, 8, 9, '_id', '91'),
(3146, 91, 24, 8, 9, 'text', 'Garden Tools'),
(3178, 92, 24, 8, 10, '_order', '1001'),
(3177, 92, 24, 8, 10, '_id', '92'),
(3176, 92, 24, 8, 10, 'text', 'Pocket Snips'),
(3175, 91, 24, 8, 10, '_order', '1000'),
(3174, 91, 24, 8, 10, '_id', '91'),
(3173, 91, 24, 8, 10, 'text', 'Garden Tools'),
(3211, 93, 24, 8, 11, '_order', '1002'),
(3210, 93, 24, 8, 11, '_id', '93'),
(3209, 93, 24, 8, 11, 'text', 'Soil Testing Kits'),
(3208, 92, 24, 8, 11, '_order', '1001'),
(3207, 92, 24, 8, 11, '_id', '92'),
(3206, 92, 24, 8, 11, 'text', 'Pocket Snips'),
(3205, 91, 24, 8, 11, '_order', '1000'),
(3204, 91, 24, 8, 11, '_id', '91'),
(3203, 91, 24, 8, 11, 'text', 'Garden Tools'),
(3247, 94, 24, 8, 12, '_order', '1003'),
(3246, 94, 24, 8, 12, '_id', '94'),
(3245, 94, 24, 8, 12, 'text', 'Cordless Drills'),
(3244, 93, 24, 8, 12, '_order', '1002'),
(3243, 93, 24, 8, 12, '_id', '93'),
(3242, 93, 24, 8, 12, 'text', 'Soil Testing Kits'),
(3241, 92, 24, 8, 12, '_order', '1001'),
(3240, 92, 24, 8, 12, '_id', '92'),
(3239, 92, 24, 8, 12, 'text', 'Pocket Snips'),
(3238, 91, 24, 8, 12, '_order', '1000'),
(3237, 91, 24, 8, 12, '_id', '91'),
(3236, 91, 24, 8, 12, 'text', 'Garden Tools'),
(3068, 91, 24, 8, 5, 'text', 'Garden Tools'),
(3069, 91, 24, 8, 5, '_id', '91'),
(3070, 91, 24, 8, 5, '_order', '1000'),
(3071, 92, 24, 8, 5, 'text', 'Pocket Snips'),
(3072, 92, 24, 8, 5, '_id', '92'),
(3073, 92, 24, 8, 5, '_order', '1001'),
(3074, 93, 24, 8, 5, 'text', 'Soil Testing Kits'),
(3075, 93, 24, 8, 5, '_id', '93'),
(3076, 93, 24, 8, 5, '_order', '1002'),
(3077, 94, 24, 8, 5, 'text', 'Cordless Drills'),
(3078, 94, 24, 8, 5, '_id', '94'),
(3079, 94, 24, 8, 5, '_order', '1003'),
(3080, 95, 24, 8, 5, 'text', 'Cordless Chainsaw'),
(3081, 95, 24, 8, 5, '_id', '95'),
(3082, 95, 24, 8, 5, '_order', '1004'),
(3083, 91, 24, 8, 6, 'text', 'Garden Tools'),
(3084, 91, 24, 8, 6, '_id', '91'),
(3085, 91, 24, 8, 6, '_order', '1000'),
(3086, 92, 24, 8, 6, 'text', 'Pocket Snips'),
(3087, 92, 24, 8, 6, '_id', '92'),
(3088, 92, 24, 8, 6, '_order', '1001'),
(3089, 93, 24, 8, 6, 'text', 'Soil Testing Kits'),
(3090, 93, 24, 8, 6, '_id', '93'),
(3091, 93, 24, 8, 6, '_order', '1002'),
(3092, 94, 24, 8, 6, 'text', 'Cordless Drills'),
(3093, 94, 24, 8, 6, '_id', '94'),
(3094, 94, 24, 8, 6, '_order', '1003'),
(3095, 95, 24, 8, 6, 'text', 'Cordless Chainsaw'),
(3096, 95, 24, 8, 6, '_id', '95'),
(3097, 95, 24, 8, 6, '_order', '1004'),
(3098, 96, 24, 8, 6, 'text', 'Cordless Hedge Trimmer'),
(3099, 96, 24, 8, 6, '_id', '96'),
(3100, 96, 24, 8, 6, '_order', '1005'),
(3101, 91, 24, 8, 7, 'text', 'Garden Tools'),
(3102, 91, 24, 8, 7, '_id', '91'),
(3103, 91, 24, 8, 7, '_order', '1000'),
(3104, 92, 24, 8, 7, 'text', 'Pocket Snips'),
(3105, 92, 24, 8, 7, '_id', '92'),
(3106, 92, 24, 8, 7, '_order', '1001'),
(3107, 93, 24, 8, 7, 'text', 'Soil Testing Kits'),
(3108, 93, 24, 8, 7, '_id', '93'),
(3109, 93, 24, 8, 7, '_order', '1002'),
(3110, 94, 24, 8, 7, 'text', 'Cordless Drills'),
(3111, 94, 24, 8, 7, '_id', '94'),
(3112, 94, 24, 8, 7, '_order', '1003'),
(3113, 95, 24, 8, 7, 'text', 'Cordless Chainsaw'),
(3114, 95, 24, 8, 7, '_id', '95'),
(3115, 95, 24, 8, 7, '_order', '1004'),
(3116, 96, 24, 8, 7, 'text', 'Cordless Hedge Trimmer'),
(3117, 96, 24, 8, 7, '_id', '96'),
(3118, 96, 24, 8, 7, '_order', '1005'),
(3119, 97, 24, 8, 7, 'text', 'Bypass Pruners'),
(3120, 97, 24, 8, 7, '_id', '97'),
(3121, 97, 24, 8, 7, '_order', '1006'),
(3122, 91, 24, 8, 8, 'text', 'Garden Tools'),
(3123, 91, 24, 8, 8, '_id', '91'),
(3124, 91, 24, 8, 8, '_order', '1000'),
(3125, 92, 24, 8, 8, 'text', 'Pocket Snips'),
(3126, 92, 24, 8, 8, '_id', '92'),
(3127, 92, 24, 8, 8, '_order', '1001'),
(3128, 93, 24, 8, 8, 'text', 'Soil Testing Kits'),
(3129, 93, 24, 8, 8, '_id', '93'),
(3130, 93, 24, 8, 8, '_order', '1002'),
(3131, 94, 24, 8, 8, 'text', 'Cordless Drills'),
(3132, 94, 24, 8, 8, '_id', '94'),
(3133, 94, 24, 8, 8, '_order', '1003'),
(3134, 95, 24, 8, 8, 'text', 'Cordless Chainsaw'),
(3135, 95, 24, 8, 8, '_id', '95'),
(3136, 95, 24, 8, 8, '_order', '1004'),
(3137, 96, 24, 8, 8, 'text', 'Cordless Hedge Trimmer'),
(3138, 96, 24, 8, 8, '_id', '96'),
(3139, 96, 24, 8, 8, '_order', '1005'),
(3140, 97, 24, 8, 8, 'text', 'Bypass Pruners'),
(3141, 97, 24, 8, 8, '_id', '97'),
(3142, 97, 24, 8, 8, '_order', '1006'),
(3143, 98, 24, 8, 8, 'text', '10 inch Nursery Pots'),
(3144, 98, 24, 8, 8, '_id', '98'),
(3145, 98, 24, 8, 8, '_order', '1007'),
(3149, 92, 24, 8, 9, 'text', 'Pocket Snips'),
(3150, 92, 24, 8, 9, '_id', '92'),
(3151, 92, 24, 8, 9, '_order', '1001'),
(3152, 93, 24, 8, 9, 'text', 'Soil Testing Kits'),
(3153, 93, 24, 8, 9, '_id', '93'),
(3154, 93, 24, 8, 9, '_order', '1002'),
(3155, 94, 24, 8, 9, 'text', 'Cordless Drills'),
(3156, 94, 24, 8, 9, '_id', '94'),
(3157, 94, 24, 8, 9, '_order', '1003'),
(3158, 95, 24, 8, 9, 'text', 'Cordless Chainsaw'),
(3159, 95, 24, 8, 9, '_id', '95'),
(3160, 95, 24, 8, 9, '_order', '1004'),
(3161, 96, 24, 8, 9, 'text', 'Cordless Hedge Trimmer'),
(3162, 96, 24, 8, 9, '_id', '96');
INSERT INTO `perch3_content_index` (`indexID`, `itemID`, `regionID`, `pageID`, `itemRev`, `indexKey`, `indexValue`) VALUES
(3163, 96, 24, 8, 9, '_order', '1005'),
(3164, 97, 24, 8, 9, 'text', 'Bypass Pruners'),
(3165, 97, 24, 8, 9, '_id', '97'),
(3166, 97, 24, 8, 9, '_order', '1006'),
(3167, 98, 24, 8, 9, 'text', '10 inch Nursery Pots'),
(3168, 98, 24, 8, 9, '_id', '98'),
(3169, 98, 24, 8, 9, '_order', '1007'),
(3170, 99, 24, 8, 9, 'text', 'Outdoor Chairs'),
(3171, 99, 24, 8, 9, '_id', '99'),
(3172, 99, 24, 8, 9, '_order', '1008'),
(3179, 93, 24, 8, 10, 'text', 'Soil Testing Kits'),
(3180, 93, 24, 8, 10, '_id', '93'),
(3181, 93, 24, 8, 10, '_order', '1002'),
(3182, 94, 24, 8, 10, 'text', 'Cordless Drills'),
(3183, 94, 24, 8, 10, '_id', '94'),
(3184, 94, 24, 8, 10, '_order', '1003'),
(3185, 95, 24, 8, 10, 'text', 'Cordless Chainsaw'),
(3186, 95, 24, 8, 10, '_id', '95'),
(3187, 95, 24, 8, 10, '_order', '1004'),
(3188, 96, 24, 8, 10, 'text', 'Cordless Hedge Trimmer'),
(3189, 96, 24, 8, 10, '_id', '96'),
(3190, 96, 24, 8, 10, '_order', '1005'),
(3191, 97, 24, 8, 10, 'text', 'Bypass Pruners'),
(3192, 97, 24, 8, 10, '_id', '97'),
(3193, 97, 24, 8, 10, '_order', '1006'),
(3194, 98, 24, 8, 10, 'text', '10 inch Nursery Pots'),
(3195, 98, 24, 8, 10, '_id', '98'),
(3196, 98, 24, 8, 10, '_order', '1007'),
(3197, 99, 24, 8, 10, 'text', 'Outdoor Chairs'),
(3198, 99, 24, 8, 10, '_id', '99'),
(3199, 99, 24, 8, 10, '_order', '1008'),
(3200, 100, 24, 8, 10, 'text', '40-Gallon Trash Bags'),
(3201, 100, 24, 8, 10, '_id', '100'),
(3202, 100, 24, 8, 10, '_order', '1009'),
(3212, 94, 24, 8, 11, 'text', 'Cordless Drills'),
(3213, 94, 24, 8, 11, '_id', '94'),
(3214, 94, 24, 8, 11, '_order', '1003'),
(3215, 95, 24, 8, 11, 'text', 'Cordless Chainsaw'),
(3216, 95, 24, 8, 11, '_id', '95'),
(3217, 95, 24, 8, 11, '_order', '1004'),
(3218, 96, 24, 8, 11, 'text', 'Cordless Hedge Trimmer'),
(3219, 96, 24, 8, 11, '_id', '96'),
(3220, 96, 24, 8, 11, '_order', '1005'),
(3221, 97, 24, 8, 11, 'text', 'Bypass Pruners'),
(3222, 97, 24, 8, 11, '_id', '97'),
(3223, 97, 24, 8, 11, '_order', '1006'),
(3224, 98, 24, 8, 11, 'text', '10 inch Nursery Pots'),
(3225, 98, 24, 8, 11, '_id', '98'),
(3226, 98, 24, 8, 11, '_order', '1007'),
(3227, 99, 24, 8, 11, 'text', 'Outdoor Chairs'),
(3228, 99, 24, 8, 11, '_id', '99'),
(3229, 99, 24, 8, 11, '_order', '1008'),
(3230, 100, 24, 8, 11, 'text', '40-Gallon Trash Bags'),
(3231, 100, 24, 8, 11, '_id', '100'),
(3232, 100, 24, 8, 11, '_order', '1009'),
(3233, 101, 24, 8, 11, 'text', 'Agribon Row Covers'),
(3234, 101, 24, 8, 11, '_id', '101'),
(3235, 101, 24, 8, 11, '_order', '1010'),
(3248, 95, 24, 8, 12, 'text', 'Cordless Chainsaw'),
(3249, 95, 24, 8, 12, '_id', '95'),
(3250, 95, 24, 8, 12, '_order', '1004'),
(3251, 96, 24, 8, 12, 'text', 'Cordless Hedge Trimmer'),
(3252, 96, 24, 8, 12, '_id', '96'),
(3253, 96, 24, 8, 12, '_order', '1005'),
(3254, 97, 24, 8, 12, 'text', 'Bypass Pruners'),
(3255, 97, 24, 8, 12, '_id', '97'),
(3256, 97, 24, 8, 12, '_order', '1006'),
(3257, 98, 24, 8, 12, 'text', '10 inch Nursery Pots'),
(3258, 98, 24, 8, 12, '_id', '98'),
(3259, 98, 24, 8, 12, '_order', '1007'),
(3260, 99, 24, 8, 12, 'text', 'Outdoor Chairs'),
(3261, 99, 24, 8, 12, '_id', '99'),
(3262, 99, 24, 8, 12, '_order', '1008'),
(3263, 100, 24, 8, 12, 'text', '40-Gallon Trash Bags'),
(3264, 100, 24, 8, 12, '_id', '100'),
(3265, 100, 24, 8, 12, '_order', '1009'),
(3266, 101, 24, 8, 12, 'text', 'Agribon Row Covers'),
(3267, 101, 24, 8, 12, '_id', '101'),
(3268, 101, 24, 8, 12, '_order', '1010'),
(3269, 102, 24, 8, 12, 'text', 'Gardening Gloves'),
(3270, 102, 24, 8, 12, '_id', '102'),
(3271, 102, 24, 8, 12, '_order', '1011'),
(3365, 6, 5, 2, 22, 'text', 'The Urban Tree Connection (UTC) works with residents in Philadelphia’s historically marginalized urban communities to revitalize their neighborhoods by transforming abandoned open spaces into safe and functional places that inspire and promote positive hu'),
(3364, 6, 5, 2, 22, 'right_image_width', '100'),
(3363, 6, 5, 2, 22, 'right_image', '/admin/resources/sprout.jpg'),
(3372, 6, 5, 2, 23, 'text', 'The Urban Tree Connection (UTC) works with residents in Philadelphia’s historically marginalized urban communities to revitalize their neighborhoods by transforming abandoned open spaces into safe and functional places that inspire and promote positive hu'),
(3371, 6, 5, 2, 23, 'right_image_width', '200'),
(3370, 6, 5, 2, 23, 'right_image', '/admin/resources/sprout.jpg'),
(3381, 6, 5, 2, 24, '_order', '1000'),
(3387, 6, 5, 2, 25, '_id', '6'),
(3386, 6, 5, 2, 25, 'text', 'The Urban Tree Connection (UTC) works with residents in Philadelphia’s historically marginalized urban communities to revitalize their neighborhoods by transforming abandoned open spaces into safe and functional places that inspire and promote positive hu'),
(3394, 6, 5, 2, 26, '_id', '6'),
(3393, 6, 5, 2, 26, 'text', 'The Urban Tree Connection (UTC) works with residents in Philadelphia’s historically marginalized urban communities to revitalize their neighborhoods by transforming abandoned open spaces into safe and functional places that inspire and promote positive hu'),
(3340, 6, 5, 2, 19, 'left_image', '/admin/resources/gardening-at-girarden.jpg'),
(3347, 6, 5, 2, 20, 'left_image', '/admin/resources/gardening-at-girarden.jpg'),
(3354, 6, 5, 2, 21, 'left_image', '/admin/resources/gardening-at-girarden.jpg'),
(3362, 6, 5, 2, 22, 'left_image_width', '100'),
(3361, 6, 5, 2, 22, 'left_image', '/admin/resources/gardening-at-girarden.jpg'),
(3369, 6, 5, 2, 23, 'left_image_width', '100'),
(3368, 6, 5, 2, 23, 'left_image', '/admin/resources/gardening-at-girarden.jpg'),
(3380, 6, 5, 2, 24, '_id', '6'),
(3379, 6, 5, 2, 24, 'text', 'The Urban Tree Connection (UTC) works with residents in Philadelphia’s historically marginalized urban communities to revitalize their neighborhoods by transforming abandoned open spaces into safe and functional places that inspire and promote positive hu'),
(3378, 6, 5, 2, 24, 'right_image_width', '250'),
(3377, 6, 5, 2, 24, 'right_image', '/admin/resources/sprout.jpg'),
(3376, 6, 5, 2, 24, 'left_image_width', '100'),
(3375, 6, 5, 2, 24, 'left_image', '/admin/resources/gardening-at-girarden.jpg'),
(3385, 6, 5, 2, 25, 'right_image_width', '250'),
(3384, 6, 5, 2, 25, 'right_image', '/admin/resources/sprout.jpg'),
(3383, 6, 5, 2, 25, 'left_image_width', '100'),
(3382, 6, 5, 2, 25, 'left_image', '/admin/resources/gardening-at-girarden.jpg'),
(3392, 6, 5, 2, 26, 'right_image_width', '250'),
(3391, 6, 5, 2, 26, 'right_image', '/admin/resources/sprout.jpg'),
(3390, 6, 5, 2, 26, 'left_image_width', '300'),
(3389, 6, 5, 2, 26, 'left_image', '/admin/resources/gardening-at-girarden.jpg'),
(3344, 6, 5, 2, 19, 'right_image_width', '100'),
(3345, 6, 5, 2, 19, '_id', '6'),
(3346, 6, 5, 2, 19, '_order', '1000'),
(3351, 6, 5, 2, 20, 'right_image_width', '100'),
(3352, 6, 5, 2, 20, '_id', '6'),
(3353, 6, 5, 2, 20, '_order', '1000'),
(3358, 6, 5, 2, 21, 'right_image_width', '100'),
(3359, 6, 5, 2, 21, '_id', '6'),
(3360, 6, 5, 2, 21, '_order', '1000'),
(3366, 6, 5, 2, 22, '_id', '6'),
(3367, 6, 5, 2, 22, '_order', '1000'),
(3373, 6, 5, 2, 23, '_id', '6'),
(3374, 6, 5, 2, 23, '_order', '1000'),
(3961, 3, 4, 1, 34, 'showTimeStamp', '1'),
(3960, 3, 4, 1, 34, 'date', '2018-08-28'),
(3959, 3, 4, 1, 34, 'heading', 'Announcement 1'),
(3418, 2, 3, 1, 14, 'album__default', 'header-gallery'),
(3419, 2, 3, 1, 14, '_id', '2'),
(3420, 2, 3, 1, 14, '_order', '1000'),
(3424, 2, 3, 1, 15, '_id', '2'),
(3425, 2, 3, 1, 15, '_order', '1000'),
(3811, 26, 8, 4, 24, '_order', '1002'),
(3810, 26, 8, 4, 24, '_id', '26'),
(3809, 26, 8, 4, 24, 'text', 'Community Education & Land Stewardship\r\nRooted in popular education methodologies, our multigenerational education programs promote health, wellness, and leadership development. For adults and families, we host hands-on workshops that cover topics such as'),
(3808, 26, 8, 4, 24, 'right_image_width', '200'),
(3807, 26, 8, 4, 24, 'right_image', '/admin/resources/young-farmers.jpg'),
(3806, 26, 8, 4, 24, 'left_image_width', ''),
(3805, 26, 8, 4, 24, 'left_image', ''),
(3804, 25, 8, 4, 24, '_order', '1001'),
(3803, 25, 8, 4, 24, '_id', '25'),
(3802, 25, 8, 4, 24, 'text', 'Community-Led Food Distribution\r\nOur produce is distributed through&nbsp;Community-Led Farmers Markets and a Community Supported Agriculture (CSA)&nbsp;program in West Philly where residents have limited options to fresh, quality produce. We engage custom'),
(3801, 25, 8, 4, 24, 'right_image_width', ''),
(3800, 25, 8, 4, 24, 'right_image', ''),
(3799, 25, 8, 4, 24, 'left_image_width', ''),
(3798, 25, 8, 4, 24, 'left_image', ''),
(3797, 24, 8, 4, 24, '_order', '1000'),
(3796, 24, 8, 4, 24, '_id', '24'),
(3795, 24, 8, 4, 24, 'text', 'Urban Farming & Gardening\r\nIn 2009, UTC and three block captains founded Neighborhood Foods Farm (NF) as a positive solution to food insecurity and the growing number of abandoned lots in the neighborhood. After significant remediation, NF is now a fully'),
(3794, 24, 8, 4, 24, 'right_image_width', '200'),
(3793, 24, 8, 4, 24, 'right_image', '/admin/resources/nf-farm.jpg'),
(3792, 24, 8, 4, 24, 'left_image_width', ''),
(3791, 24, 8, 4, 24, 'left_image', ''),
(3827, 26, 8, 4, 25, 'left_image_width', ''),
(3826, 26, 8, 4, 25, 'left_image', ''),
(3825, 25, 8, 4, 25, '_order', '1001'),
(3824, 25, 8, 4, 25, '_id', '25'),
(3823, 25, 8, 4, 25, 'text', 'Community-Led Food Distribution\r\nOur produce is distributed through&nbsp;Community-Led Farmers Markets and a Community Supported Agriculture (CSA)&nbsp;program in West Philly where residents have limited options to fresh, quality produce. We engage custom'),
(3822, 25, 8, 4, 25, 'right_image_width', ''),
(3821, 25, 8, 4, 25, 'right_image', ''),
(3820, 25, 8, 4, 25, 'left_image_width', ''),
(3819, 25, 8, 4, 25, 'left_image', ''),
(3818, 24, 8, 4, 25, '_order', '1000'),
(3817, 24, 8, 4, 25, '_id', '24'),
(3816, 24, 8, 4, 25, 'text', 'Urban Farming & Gardening\r\nIn 2009, UTC and three block captains founded Neighborhood Foods Farm (NF) as a positive solution to food insecurity and the growing number of abandoned lots in the neighborhood. After significant remediation, NF is now a fully'),
(3815, 24, 8, 4, 25, 'right_image_width', '200'),
(3814, 24, 8, 4, 25, 'right_image', '/admin/resources/nf-farm.jpg'),
(3813, 24, 8, 4, 25, 'left_image_width', ''),
(3812, 24, 8, 4, 25, 'left_image', ''),
(3843, 25, 8, 4, 26, 'right_image_width', ''),
(3842, 25, 8, 4, 26, 'right_image', ''),
(3841, 25, 8, 4, 26, 'left_image_width', '200'),
(3840, 25, 8, 4, 26, 'left_image', '/admin/resources/memorial-garden-4.jpg'),
(3839, 24, 8, 4, 26, '_order', '1000'),
(3838, 24, 8, 4, 26, '_id', '24'),
(3837, 24, 8, 4, 26, 'text', 'Urban Farming & Gardening\r\nIn 2009, UTC and three block captains founded Neighborhood Foods Farm (NF) as a positive solution to food insecurity and the growing number of abandoned lots in the neighborhood. After significant remediation, NF is now a fully'),
(3836, 24, 8, 4, 26, 'right_image_width', '200'),
(3835, 24, 8, 4, 26, 'right_image', ''),
(3834, 24, 8, 4, 26, 'left_image_width', '200'),
(3833, 24, 8, 4, 26, 'left_image', '/admin/resources/nf-farm.jpg'),
(3859, 24, 8, 4, 27, '_id', '24'),
(3858, 24, 8, 4, 27, 'text', 'Urban Farming & Gardening\r\nIn 2009, UTC and three block captains founded Neighborhood Foods Farm (NF) as a positive solution to food insecurity and the growing number of abandoned lots in the neighborhood. After significant remediation, NF is now a fully'),
(3857, 24, 8, 4, 27, 'right_image_width', '200'),
(3856, 24, 8, 4, 27, 'right_image', ''),
(3855, 24, 8, 4, 27, 'left_image_width', '200'),
(3854, 24, 8, 4, 27, 'left_image', '/admin/resources/nf-farm.jpg'),
(3712, 24, 8, 4, 20, '_id', '24'),
(3711, 24, 8, 4, 20, 'text', 'Urban Farming & Gardening\r\nIn 2009, UTC and three block captains founded Neighborhood Foods Farm (NF) as a positive solution to food insecurity and the growing number of abandoned lots in the neighborhood. After significant remediation, NF is now a fully'),
(3710, 24, 8, 4, 20, 'right_image_width', '200'),
(3709, 24, 8, 4, 20, 'right_image', '/admin/resources/nf-farm.jpg'),
(3708, 24, 8, 4, 20, 'left_image_width', ''),
(3707, 24, 8, 4, 20, 'left_image', ''),
(3742, 26, 8, 4, 21, 'left_image', '/admin/resources/young-farmers.jpg'),
(3741, 25, 8, 4, 21, '_order', '1001'),
(3740, 25, 8, 4, 21, '_id', '25'),
(3739, 25, 8, 4, 21, 'text', 'Community-Led Food Distribution\r\nOur produce is distributed through&nbsp;Community-Led Farmers Markets and a Community Supported Agriculture (CSA)&nbsp;program in West Philly where residents have limited options to fresh, quality produce. We engage custom'),
(3738, 25, 8, 4, 21, 'right_image_width', ''),
(3737, 25, 8, 4, 21, 'right_image', ''),
(3736, 25, 8, 4, 21, 'left_image_width', ''),
(3735, 25, 8, 4, 21, 'left_image', ''),
(3734, 24, 8, 4, 21, '_order', '1000'),
(3733, 24, 8, 4, 21, '_id', '24'),
(3732, 24, 8, 4, 21, 'text', 'Urban Farming & Gardening\r\nIn 2009, UTC and three block captains founded Neighborhood Foods Farm (NF) as a positive solution to food insecurity and the growing number of abandoned lots in the neighborhood. After significant remediation, NF is now a fully'),
(3731, 24, 8, 4, 21, 'right_image_width', '200'),
(3730, 24, 8, 4, 21, 'right_image', ''),
(3729, 24, 8, 4, 21, 'left_image_width', '200'),
(3728, 24, 8, 4, 21, 'left_image', '/admin/resources/nf-farm.jpg'),
(3760, 25, 8, 4, 22, 'text', 'Community-Led Food Distribution\r\nOur produce is distributed through&nbsp;Community-Led Farmers Markets and a Community Supported Agriculture (CSA)&nbsp;program in West Philly where residents have limited options to fresh, quality produce. We engage custom'),
(3759, 25, 8, 4, 22, 'right_image_width', ''),
(3758, 25, 8, 4, 22, 'right_image', ''),
(3757, 25, 8, 4, 22, 'left_image_width', ''),
(3756, 25, 8, 4, 22, 'left_image', ''),
(3755, 24, 8, 4, 22, '_order', '1000'),
(3754, 24, 8, 4, 22, '_id', '24'),
(3753, 24, 8, 4, 22, 'text', 'Urban Farming & Gardening\r\nIn 2009, UTC and three block captains founded Neighborhood Foods Farm (NF) as a positive solution to food insecurity and the growing number of abandoned lots in the neighborhood. After significant remediation, NF is now a fully'),
(3752, 24, 8, 4, 22, 'right_image_width', '200'),
(3751, 24, 8, 4, 22, 'right_image', ''),
(3750, 24, 8, 4, 22, 'left_image_width', '200'),
(3749, 24, 8, 4, 22, 'left_image', '/admin/resources/nf-farm.jpg'),
(3781, 25, 8, 4, 23, 'text', 'Community-Led Food Distribution\r\nOur produce is distributed through&nbsp;Community-Led Farmers Markets and a Community Supported Agriculture (CSA)&nbsp;program in West Philly where residents have limited options to fresh, quality produce. We engage custom'),
(3780, 25, 8, 4, 23, 'right_image_width', ''),
(3779, 25, 8, 4, 23, 'right_image', ''),
(3778, 25, 8, 4, 23, 'left_image_width', ''),
(3777, 25, 8, 4, 23, 'left_image', ''),
(3776, 24, 8, 4, 23, '_order', '1000'),
(3775, 24, 8, 4, 23, '_id', '24'),
(3774, 24, 8, 4, 23, 'text', 'Urban Farming & Gardening\r\nIn 2009, UTC and three block captains founded Neighborhood Foods Farm (NF) as a positive solution to food insecurity and the growing number of abandoned lots in the neighborhood. After significant remediation, NF is now a fully'),
(3773, 24, 8, 4, 23, 'right_image_width', '200'),
(3772, 24, 8, 4, 23, 'right_image', ''),
(3771, 24, 8, 4, 23, 'left_image_width', '200'),
(3770, 24, 8, 4, 23, 'left_image', '/admin/resources/nf-farm.jpg'),
(3977, 4, 4, 1, 35, 'heading', 'Announcement 2'),
(3976, 3, 4, 1, 35, '_order', '1000'),
(3975, 3, 4, 1, 35, '_id', '3'),
(3974, 3, 4, 1, 35, 'body', 'Phasellus fames viverra in eu eu gravida adipiscing vehicula in hendrerit urna erat ultricies a duis vestibulum a parturient vestibulum urna ipsum porta cubilia a sociis. Quam cursus lobortis faucibus adipiscing fringilla ut fames scelerisque nam turpis d'),
(3973, 3, 4, 1, 35, 'showTimeStamp', ''),
(3972, 3, 4, 1, 35, 'date', '2018-08-28'),
(3971, 3, 4, 1, 35, 'heading', 'Announcement 1'),
(3984, 3, 4, 1, 36, 'date', '2018-08-28'),
(3983, 3, 4, 1, 36, 'heading', 'Announcement 1'),
(3996, 3, 4, 1, 37, 'date', '2018-08-28'),
(3995, 3, 4, 1, 37, 'heading', 'Announcement 1'),
(4008, 3, 4, 1, 38, 'date', '2018-08-28'),
(4007, 3, 4, 1, 38, 'heading', 'Announcement 1'),
(3933, 4, 4, 1, 31, '_id', '4'),
(3934, 4, 4, 1, 31, '_order', '1001'),
(3945, 4, 4, 1, 32, '_id', '4'),
(3946, 4, 4, 1, 32, '_order', '1001'),
(3957, 4, 4, 1, 33, '_id', '4'),
(3958, 4, 4, 1, 33, '_order', '1001'),
(3969, 4, 4, 1, 34, '_id', '4'),
(3970, 4, 4, 1, 34, '_order', '1001');

-- --------------------------------------------------------

--
-- Table structure for table `perch3_content_items`
--

CREATE TABLE `perch3_content_items` (
  `itemRowID` int(10) UNSIGNED NOT NULL,
  `itemID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `regionID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pageID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `itemRev` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `itemOrder` int(10) UNSIGNED NOT NULL DEFAULT '1000',
  `itemJSON` mediumtext NOT NULL,
  `itemSearch` mediumtext NOT NULL,
  `itemUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `itemUpdatedBy` char(32) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `perch3_content_items`
--

INSERT INTO `perch3_content_items` (`itemRowID`, `itemID`, `regionID`, `pageID`, `itemRev`, `itemOrder`, `itemJSON`, `itemSearch`, `itemUpdated`, `itemUpdatedBy`) VALUES
(1, 1, 2, 1, 0, 1000, '', '', '2018-08-22 18:41:48', ''),
(2, 1, 2, 1, 1, 1000, '{\"_id\":\"1\",\"text\":{\"_flang\":\"markdown\",\"raw\":\"## BUILDING COMMUNITY ONE VACANT LOT AT A TIME\\u2026\\r\\n\\r\\nThe Urban Tree Connection (UTC) is a 501(c)(3) nonprofit community-based organization, and our mission is to work with residents in Philadelphia\\u2019s historically marginalized urban communities to transform abandoned open spaces into safe and functional places that inspire and promote positive human interaction.\\r\\n\\r\\nOver the last 19 years, we have primarily partnered with residents of West Philadelphia\'s Haddington neighborhood to develop and sustain community-driven greening and gardening projects.  Our network of garden and farm sites are spaces for communal growing, gathering and education that foster deep community leadership of all ages to build healthy sustainable community.\",\"processed\":\"<h2>BUILDING COMMUNITY ONE VACANT LOT AT A TIME\\u2026<\\/h2>\\n<p>The Urban Tree Connection (UTC) is a 501(c)(3) nonprofit community-based organization, and our mission is to work with residents in Philadelphia\\u2019s historically marginalized urban communities to transform abandoned open spaces into safe and functional places that inspire and promote positive human interaction.<\\/p>\\n<p>Over the last 19 years, we have primarily partnered with residents of West Philadelphia\\u2019s Haddington neighborhood to develop and sustain community-driven greening and gardening projects.  Our network of garden and farm sites are spaces for communal growing, gathering and education that foster deep community leadership of all ages to build healthy sustainable community.<\\/p>\"}}', ' BUILDING COMMUNITY ONE VACANT LOT AT A TIME…\nThe Urban Tree Connection (UTC) is a 501(c)(3) nonprofit community-based organization, and our mission is to work with residents in Philadelphia’s historically marginalized urban communities to transform abandoned open spaces into safe and functional places that inspire and promote positive human interaction.\nOver the last 19 years, we have primarily partnered with residents of West Philadelphia’s Haddington neighborhood to develop and sustain community-driven greening and gardening projects.  Our network of garden and farm sites are spaces for communal growing, gathering and education that foster deep community leadership of all ages to build healthy sustainable community. ', '2018-08-22 18:42:27', '1'),
(3, 1, 2, 1, 2, 1000, '{\"_id\":\"1\",\"text\":{\"_flang\":\"markdown\",\"raw\":\"## BUILDING COMMUNITY ONE VACANT LOT AT A TIME\\u2026\\r\\n\\r\\nThe Urban Tree Connection (UTC) is a 501(c)(3) nonprofit community-based organization, and our mission is to work with residents in Philadelphia\\u2019s historically marginalized urban communities to transform abandoned open spaces into safe and functional places that inspire and promote positive human interaction.\\r\\n\\r\\nOver the last 19 years, we have primarily partnered with residents of West Philadelphia\'s Haddington neighborhood to develop and sustain community-driven greening and gardening projects.  Our network of garden and farm sites are spaces for communal growing, gathering and education that foster deep community leadership of all ages to build healthy sustainable community.\",\"processed\":\"<h2>BUILDING COMMUNITY ONE VACANT LOT AT A TIME\\u2026<\\/h2>\\n<p>The Urban Tree Connection (UTC) is a 501(c)(3) nonprofit community-based organization, and our mission is to work with residents in Philadelphia\\u2019s historically marginalized urban communities to transform abandoned open spaces into safe and functional places that inspire and promote positive human interaction.<\\/p>\\n<p>Over the last 19 years, we have primarily partnered with residents of West Philadelphia\\u2019s Haddington neighborhood to develop and sustain community-driven greening and gardening projects.  Our network of garden and farm sites are spaces for communal growing, gathering and education that foster deep community leadership of all ages to build healthy sustainable community.<\\/p>\"}}', ' BUILDING COMMUNITY ONE VACANT LOT AT A TIME…\nThe Urban Tree Connection (UTC) is a 501(c)(3) nonprofit community-based organization, and our mission is to work with residents in Philadelphia’s historically marginalized urban communities to transform abandoned open spaces into safe and functional places that inspire and promote positive human interaction.\nOver the last 19 years, we have primarily partnered with residents of West Philadelphia’s Haddington neighborhood to develop and sustain community-driven greening and gardening projects.  Our network of garden and farm sites are spaces for communal growing, gathering and education that foster deep community leadership of all ages to build healthy sustainable community. ', '2018-08-22 18:59:30', '1'),
(4, 1, 2, 1, 3, 1000, '{\"_id\":\"1\",\"text\":{\"_flang\":\"html\",\"raw\":\"<h2>BUILDING COMMUNITY ONE VACANT LOT AT A TIME\\u2026<\\/h2>\\r\\n<p>The Urban Tree Connection (UTC) is a 501(c)(3) nonprofit community-based organization, and our mission is to work with residents in Philadelphia\\u2019s historically marginalized urban communities to transform abandoned open spaces into safe and functional places that inspire and promote positive human interaction.<\\/p>\\r\\n<p>Over the last 19 years, we have primarily partnered with residents of West Philadelphia\'s Haddington neighborhood to develop and sustain community-driven greening and gardening projects.  Our network of garden and farm sites are spaces for communal growing, gathering and education that foster deep community leadership of all ages to build healthy sustainable community.<\\/p>\",\"processed\":\"<h2>BUILDING COMMUNITY ONE VACANT LOT AT A TIME\\u2026<\\/h2>\\r\\n<p>The Urban Tree Connection (UTC) is a 501(c)(3) nonprofit community-based organization, and our mission is to work with residents in Philadelphia\\u2019s historically marginalized urban communities to transform abandoned open spaces into safe and functional places that inspire and promote positive human interaction.<\\/p>\\r\\n<p>Over the last 19 years, we have primarily partnered with residents of West Philadelphia\'s Haddington neighborhood to develop and sustain community-driven greening and gardening projects.  Our network of garden and farm sites are spaces for communal growing, gathering and education that foster deep community leadership of all ages to build healthy sustainable community.<\\/p>\"}}', ' BUILDING COMMUNITY ONE VACANT LOT AT A TIME…\r\nThe Urban Tree Connection (UTC) is a 501(c)(3) nonprofit community-based organization, and our mission is to work with residents in Philadelphia’s historically marginalized urban communities to transform abandoned open spaces into safe and functional places that inspire and promote positive human interaction.\r\nOver the last 19 years, we have primarily partnered with residents of West Philadelphia\'s Haddington neighborhood to develop and sustain community-driven greening and gardening projects.  Our network of garden and farm sites are spaces for communal growing, gathering and education that foster deep community leadership of all ages to build healthy sustainable community. ', '2018-08-22 19:28:36', '1'),
(5, 1, 2, 1, 4, 1000, '{\"_id\":\"1\",\"text\":{\"_flang\":\"html\",\"raw\":\"<h2>BUILDING COMMUNITY ONE VACANT LOT AT A TIME\\u2026<\\/h2>\\r\\n<p>The Urban Tree Connection (UTC) is a 501(c)(3) nonprofit community-based organization, and our mission is to work with residents in Philadelphia\\u2019s historically marginalized urban communities to transform abandoned open spaces into safe and functional places that inspire and promote positive human interaction.<\\/p>\\r\\n<p>Over the last 19 years, we have primarily partnered with residents of West Philadelphia\'s Haddington neighborhood to develop and sustain community-driven greening and gardening projects.  Our network of garden and farm sites are spaces for communal growing, gathering and education that foster deep community leadership of all ages to build healthy sustainable community.<\\/p>\",\"processed\":\"<h2>BUILDING COMMUNITY ONE VACANT LOT AT A TIME\\u2026<\\/h2>\\r\\n<p>The Urban Tree Connection (UTC) is a 501(c)(3) nonprofit community-based organization, and our mission is to work with residents in Philadelphia\\u2019s historically marginalized urban communities to transform abandoned open spaces into safe and functional places that inspire and promote positive human interaction.<\\/p>\\r\\n<p>Over the last 19 years, we have primarily partnered with residents of West Philadelphia\'s Haddington neighborhood to develop and sustain community-driven greening and gardening projects.  Our network of garden and farm sites are spaces for communal growing, gathering and education that foster deep community leadership of all ages to build healthy sustainable community.<\\/p>\"}}', ' BUILDING COMMUNITY ONE VACANT LOT AT A TIME…\r\nThe Urban Tree Connection (UTC) is a 501(c)(3) nonprofit community-based organization, and our mission is to work with residents in Philadelphia’s historically marginalized urban communities to transform abandoned open spaces into safe and functional places that inspire and promote positive human interaction.\r\nOver the last 19 years, we have primarily partnered with residents of West Philadelphia\'s Haddington neighborhood to develop and sustain community-driven greening and gardening projects.  Our network of garden and farm sites are spaces for communal growing, gathering and education that foster deep community leadership of all ages to build healthy sustainable community. ', '2018-08-22 19:28:41', '1'),
(6, 1, 2, 1, 5, 1000, '{\"_id\":\"1\",\"text\":{\"_flang\":\"html\",\"raw\":\"<h2>BUILDING COMMUNITY ONE VACANT LOT AT A TIME\\u2026<\\/h2>\\r\\n<p>The Urban Tree Connection (UTC) is a 501(c)(3) nonprofit community-based organization, and our mission is to work with residents in Philadelphia\\u2019s historically marginalized urban communities to transform abandoned open spaces into safe and functional places that inspire and promote positive human interaction.<\\/p>\\r\\n<p>Over the last 19 years, we have primarily partnered with residents of West Philadelphia\'s Haddington neighborhood to develop and sustain community-driven greening and gardening projects.  Our network of garden and farm sites are spaces for communal growing, gathering and education that foster deep community leadership of all ages to build healthy sustainable community.<\\/p>\",\"processed\":\"<h2>BUILDING COMMUNITY ONE VACANT LOT AT A TIME\\u2026<\\/h2>\\r\\n<p>The Urban Tree Connection (UTC) is a 501(c)(3) nonprofit community-based organization, and our mission is to work with residents in Philadelphia\\u2019s historically marginalized urban communities to transform abandoned open spaces into safe and functional places that inspire and promote positive human interaction.<\\/p>\\r\\n<p>Over the last 19 years, we have primarily partnered with residents of West Philadelphia\'s Haddington neighborhood to develop and sustain community-driven greening and gardening projects.  Our network of garden and farm sites are spaces for communal growing, gathering and education that foster deep community leadership of all ages to build healthy sustainable community.<\\/p>\"}}', ' BUILDING COMMUNITY ONE VACANT LOT AT A TIME…\r\nThe Urban Tree Connection (UTC) is a 501(c)(3) nonprofit community-based organization, and our mission is to work with residents in Philadelphia’s historically marginalized urban communities to transform abandoned open spaces into safe and functional places that inspire and promote positive human interaction.\r\nOver the last 19 years, we have primarily partnered with residents of West Philadelphia\'s Haddington neighborhood to develop and sustain community-driven greening and gardening projects.  Our network of garden and farm sites are spaces for communal growing, gathering and education that foster deep community leadership of all ages to build healthy sustainable community. ', '2018-08-22 21:53:28', '1'),
(1040, 2, 3, 1, 19, 1000, '{\"_id\":\"2\",\"album\":{\"albumSlug\":\"header-gallery\",\"_default\":\"header-gallery\"}}', '  ', '2018-08-30 22:54:06', '1'),
(1032, 2, 3, 1, 13, 1000, '{\"_id\":\"2\",\"album\":{\"albumSlug\":\"header-gallery\",\"_default\":\"header-gallery\"}}', '  ', '2018-08-30 22:37:18', '1'),
(1036, 2, 3, 1, 15, 1000, '{\"_id\":\"2\",\"album\":{\"albumSlug\":\"header-gallery\",\"_default\":\"header-gallery\"}}', '  ', '2018-08-30 22:50:14', '1'),
(1037, 2, 3, 1, 16, 1000, '{\"_id\":\"2\",\"album\":{\"albumSlug\":\"header-gallery\",\"_default\":\"header-gallery\"}}', '  ', '2018-08-30 22:51:08', '1'),
(1038, 2, 3, 1, 17, 1000, '{\"_id\":\"2\",\"album\":{\"albumSlug\":\"header-gallery\",\"_default\":\"header-gallery\"}}', '  ', '2018-08-30 22:53:33', '1'),
(1039, 2, 3, 1, 18, 1000, '{\"_id\":\"2\",\"album\":{\"albumSlug\":\"header-gallery\",\"_default\":\"header-gallery\"}}', '  ', '2018-08-30 22:53:39', '1'),
(1122, 4, 4, 1, 37, 1001, '{\"_id\":\"4\",\"heading\":\"Announcement 2\",\"_title\":\"Announcement 2\",\"date\":\"2018-08-28\",\"showTimeStamp\":null,\"body\":{\"_flang\":\"html\",\"raw\":\"<p>Suspendisse proin ullamcorper quisque duis risus dolor volutpat sit nostra in blandit nunc scelerisque morbi dis vestibulum parturient luctus. Interdum tincidunt ultricies curae condimentum volutpat in a ullamcorper adipiscing class ac ultrices a senectus a eleifend enim at. A erat habitasse cum netus felis condimentum quam euismod ante lectus vulputate bibendum nibh nisi a magnis dui ridiculus dis accumsan fermentum a.&nbsp;<\\/p>\",\"processed\":\"<p>Suspendisse proin ullamcorper quisque duis risus dolor volutpat sit nostra in blandit nunc scelerisque morbi dis vestibulum parturient luctus. Interdum tincidunt ultricies curae condimentum volutpat in a ullamcorper adipiscing class ac ultrices a senectus a eleifend enim at. A erat habitasse cum netus felis condimentum quam euismod ante lectus vulputate bibendum nibh nisi a magnis dui ridiculus dis accumsan fermentum a.&nbsp;<\\/p>\"}}', ' Announcement 2 Tuesday 28 August 2018  Suspendisse proin ullamcorper quisque duis risus dolor volutpat sit nostra in blandit nunc scelerisque morbi dis vestibulum parturient luctus. Interdum tincidunt ultricies curae condimentum volutpat in a ullamcorper adipiscing class ac ultrices a senectus a eleifend enim at. A erat habitasse cum netus felis condimentum quam euismod ante lectus vulputate bibendum nibh nisi a magnis dui ridiculus dis accumsan fermentum a.&nbsp;     ', '2018-08-30 23:36:15', '1'),
(1123, 3, 4, 1, 38, 1000, '{\"_id\":\"3\",\"heading\":\"Announcement 1\",\"_title\":\"Announcement 1\",\"date\":\"2018-08-28\",\"showTimeStamp\":\"1\",\"body\":{\"_flang\":\"html\",\"raw\":\"<p style=\\\"text-align:center\\\">[cms:asset 1 title=\\\"Logo nm\\\"]<\\/p>\\r\\n<p>Phasellus fames viverra in eu eu gravida adipiscing vehicula in hendrerit urna erat ultricies a duis vestibulum a parturient vestibulum urna ipsum porta cubilia a sociis. Quam cursus lobortis faucibus adipiscing fringilla ut fames scelerisque nam turpis dictumst taciti a odio ullamcorper montes a ut sociosqu a rhoncus ad parturient semper habitant gravida at elementum. Adipiscing consectetur posuere adipiscing arcu ut ridiculus id neque in a a cum adipiscing senectus parturient hac in nullam adipiscing erat et nibh lacus sagittis quam. Ut consequat adipiscing class duis venenatis a nulla in dolor habitasse justo vestibulum sodales vestibulum suspendisse cursus parturient ligula a. Consectetur vestibulum suspendisse nibh vivamus parturient fringilla vestibulum consequat nunc litora adipiscing nunc tempor praesent pretium volutpat auctor curabitur suspendisse tempus dictumst luctus commodo scelerisque. Condimentum nunc cubilia laoreet adipiscing quis ullamcorper eu mi justo facilisi ullamcorper orci luctus fringilla habitasse a magna parturient.<br><br>[cms:asset 4 title=\\\"2017 UTC Highlights\\\"]<\\/p>\",\"processed\":\"<p style=\\\"text-align:center\\\"><img title=\\\"Logo nm\\\" src=\\\"\\/admin\\/resources\\/logonm-w800.jpg\\\" alt=\\\"Logo nm\\\"><\\/p>\\r\\n<p>Phasellus fames viverra in eu eu gravida adipiscing vehicula in hendrerit urna erat ultricies a duis vestibulum a parturient vestibulum urna ipsum porta cubilia a sociis. Quam cursus lobortis faucibus adipiscing fringilla ut fames scelerisque nam turpis dictumst taciti a odio ullamcorper montes a ut sociosqu a rhoncus ad parturient semper habitant gravida at elementum. Adipiscing consectetur posuere adipiscing arcu ut ridiculus id neque in a a cum adipiscing senectus parturient hac in nullam adipiscing erat et nibh lacus sagittis quam. Ut consequat adipiscing class duis venenatis a nulla in dolor habitasse justo vestibulum sodales vestibulum suspendisse cursus parturient ligula a. Consectetur vestibulum suspendisse nibh vivamus parturient fringilla vestibulum consequat nunc litora adipiscing nunc tempor praesent pretium volutpat auctor curabitur suspendisse tempus dictumst luctus commodo scelerisque. Condimentum nunc cubilia laoreet adipiscing quis ullamcorper eu mi justo facilisi ullamcorper orci luctus fringilla habitasse a magna parturient.<br><br><a title=\\\"2017 UTC Highlights\\\" href=\\\"\\/admin\\/resources\\/2017-utc-highlights.pdf\\\">2017 UTC Highlights<\\/a><\\/p>\"}}', ' Announcement 1 Tuesday 28 August 2018 1 \r\nPhasellus fames viverra in eu eu gravida adipiscing vehicula in hendrerit urna erat ultricies a duis vestibulum a parturient vestibulum urna ipsum porta cubilia a sociis. Quam cursus lobortis faucibus adipiscing fringilla ut fames scelerisque nam turpis dictumst taciti a odio ullamcorper montes a ut sociosqu a rhoncus ad parturient semper habitant gravida at elementum. Adipiscing consectetur posuere adipiscing arcu ut ridiculus id neque in a a cum adipiscing senectus parturient hac in nullam adipiscing erat et nibh lacus sagittis quam. Ut consequat adipiscing class duis venenatis a nulla in dolor habitasse justo vestibulum sodales vestibulum suspendisse cursus parturient ligula a. Consectetur vestibulum suspendisse nibh vivamus parturient fringilla vestibulum consequat nunc litora adipiscing nunc tempor praesent pretium volutpat auctor curabitur suspendisse tempus dictumst luctus commodo scelerisque. Condimentum nunc cubilia laoreet adipiscing quis ullamcorper eu mi justo facilisi ullamcorper orci luctus fringilla habitasse a magna parturient.2017 UTC Highlights     ', '2018-08-30 23:36:18', '1'),
(1109, 3, 4, 1, 31, 1000, '{\"_id\":\"3\",\"heading\":\"Announcement 1\",\"_title\":\"Announcement 1\",\"date\":\"2018-08-28\",\"showTimeStamp\":\"1\",\"body\":{\"_flang\":\"html\",\"raw\":\"<p style=\\\"text-align:center\\\">[cms:asset 1 title=\\\"Logo nm\\\"]<\\/p>\\r\\n<p>Phasellus fames viverra in eu eu gravida adipiscing vehicula in hendrerit urna erat ultricies a duis vestibulum a parturient vestibulum urna ipsum porta cubilia a sociis. Quam cursus lobortis faucibus adipiscing fringilla ut fames scelerisque nam turpis dictumst taciti a odio ullamcorper montes a ut sociosqu a rhoncus ad parturient semper habitant gravida at elementum. Adipiscing consectetur posuere adipiscing arcu ut ridiculus id neque in a a cum adipiscing senectus parturient hac in nullam adipiscing erat et nibh lacus sagittis quam. Ut consequat adipiscing class duis venenatis a nulla in dolor habitasse justo vestibulum sodales vestibulum suspendisse cursus parturient ligula a. Consectetur vestibulum suspendisse nibh vivamus parturient fringilla vestibulum consequat nunc litora adipiscing nunc tempor praesent pretium volutpat auctor curabitur suspendisse tempus dictumst luctus commodo scelerisque. Condimentum nunc cubilia laoreet adipiscing quis ullamcorper eu mi justo facilisi ullamcorper orci luctus fringilla habitasse a magna parturient.<br><br>[cms:asset 4 title=\\\"2017 UTC Highlights\\\"]<\\/p>\",\"processed\":\"<p style=\\\"text-align:center\\\"><img title=\\\"Logo nm\\\" src=\\\"\\/admin\\/resources\\/logonm-w800.jpg\\\" alt=\\\"Logo nm\\\"><\\/p>\\r\\n<p>Phasellus fames viverra in eu eu gravida adipiscing vehicula in hendrerit urna erat ultricies a duis vestibulum a parturient vestibulum urna ipsum porta cubilia a sociis. Quam cursus lobortis faucibus adipiscing fringilla ut fames scelerisque nam turpis dictumst taciti a odio ullamcorper montes a ut sociosqu a rhoncus ad parturient semper habitant gravida at elementum. Adipiscing consectetur posuere adipiscing arcu ut ridiculus id neque in a a cum adipiscing senectus parturient hac in nullam adipiscing erat et nibh lacus sagittis quam. Ut consequat adipiscing class duis venenatis a nulla in dolor habitasse justo vestibulum sodales vestibulum suspendisse cursus parturient ligula a. Consectetur vestibulum suspendisse nibh vivamus parturient fringilla vestibulum consequat nunc litora adipiscing nunc tempor praesent pretium volutpat auctor curabitur suspendisse tempus dictumst luctus commodo scelerisque. Condimentum nunc cubilia laoreet adipiscing quis ullamcorper eu mi justo facilisi ullamcorper orci luctus fringilla habitasse a magna parturient.<br><br><a title=\\\"2017 UTC Highlights\\\" href=\\\"\\/admin\\/resources\\/2017-utc-highlights.pdf\\\">2017 UTC Highlights<\\/a><\\/p>\"}}', ' Announcement 1 Tuesday 28 August 2018 1 \r\nPhasellus fames viverra in eu eu gravida adipiscing vehicula in hendrerit urna erat ultricies a duis vestibulum a parturient vestibulum urna ipsum porta cubilia a sociis. Quam cursus lobortis faucibus adipiscing fringilla ut fames scelerisque nam turpis dictumst taciti a odio ullamcorper montes a ut sociosqu a rhoncus ad parturient semper habitant gravida at elementum. Adipiscing consectetur posuere adipiscing arcu ut ridiculus id neque in a a cum adipiscing senectus parturient hac in nullam adipiscing erat et nibh lacus sagittis quam. Ut consequat adipiscing class duis venenatis a nulla in dolor habitasse justo vestibulum sodales vestibulum suspendisse cursus parturient ligula a. Consectetur vestibulum suspendisse nibh vivamus parturient fringilla vestibulum consequat nunc litora adipiscing nunc tempor praesent pretium volutpat auctor curabitur suspendisse tempus dictumst luctus commodo scelerisque. Condimentum nunc cubilia laoreet adipiscing quis ullamcorper eu mi justo facilisi ullamcorper orci luctus fringilla habitasse a magna parturient.2017 UTC Highlights     ', '2018-08-30 23:35:05', '1'),
(1111, 3, 4, 1, 32, 1000, '{\"_id\":\"3\",\"heading\":\"Announcement 1\",\"_title\":\"Announcement 1\",\"date\":\"2018-08-28\",\"showTimeStamp\":\"1\",\"body\":{\"_flang\":\"html\",\"raw\":\"<p style=\\\"text-align:center\\\">[cms:asset 1 title=\\\"Logo nm\\\"]<\\/p>\\r\\n<p>Phasellus fames viverra in eu eu gravida adipiscing vehicula in hendrerit urna erat ultricies a duis vestibulum a parturient vestibulum urna ipsum porta cubilia a sociis. Quam cursus lobortis faucibus adipiscing fringilla ut fames scelerisque nam turpis dictumst taciti a odio ullamcorper montes a ut sociosqu a rhoncus ad parturient semper habitant gravida at elementum. Adipiscing consectetur posuere adipiscing arcu ut ridiculus id neque in a a cum adipiscing senectus parturient hac in nullam adipiscing erat et nibh lacus sagittis quam. Ut consequat adipiscing class duis venenatis a nulla in dolor habitasse justo vestibulum sodales vestibulum suspendisse cursus parturient ligula a. Consectetur vestibulum suspendisse nibh vivamus parturient fringilla vestibulum consequat nunc litora adipiscing nunc tempor praesent pretium volutpat auctor curabitur suspendisse tempus dictumst luctus commodo scelerisque. Condimentum nunc cubilia laoreet adipiscing quis ullamcorper eu mi justo facilisi ullamcorper orci luctus fringilla habitasse a magna parturient.<br><br>[cms:asset 4 title=\\\"2017 UTC Highlights\\\"]<\\/p>\",\"processed\":\"<p style=\\\"text-align:center\\\"><img title=\\\"Logo nm\\\" src=\\\"\\/admin\\/resources\\/logonm-w800.jpg\\\" alt=\\\"Logo nm\\\"><\\/p>\\r\\n<p>Phasellus fames viverra in eu eu gravida adipiscing vehicula in hendrerit urna erat ultricies a duis vestibulum a parturient vestibulum urna ipsum porta cubilia a sociis. Quam cursus lobortis faucibus adipiscing fringilla ut fames scelerisque nam turpis dictumst taciti a odio ullamcorper montes a ut sociosqu a rhoncus ad parturient semper habitant gravida at elementum. Adipiscing consectetur posuere adipiscing arcu ut ridiculus id neque in a a cum adipiscing senectus parturient hac in nullam adipiscing erat et nibh lacus sagittis quam. Ut consequat adipiscing class duis venenatis a nulla in dolor habitasse justo vestibulum sodales vestibulum suspendisse cursus parturient ligula a. Consectetur vestibulum suspendisse nibh vivamus parturient fringilla vestibulum consequat nunc litora adipiscing nunc tempor praesent pretium volutpat auctor curabitur suspendisse tempus dictumst luctus commodo scelerisque. Condimentum nunc cubilia laoreet adipiscing quis ullamcorper eu mi justo facilisi ullamcorper orci luctus fringilla habitasse a magna parturient.<br><br><a title=\\\"2017 UTC Highlights\\\" href=\\\"\\/admin\\/resources\\/2017-utc-highlights.pdf\\\">2017 UTC Highlights<\\/a><\\/p>\"}}', ' Announcement 1 Tuesday 28 August 2018 1 \r\nPhasellus fames viverra in eu eu gravida adipiscing vehicula in hendrerit urna erat ultricies a duis vestibulum a parturient vestibulum urna ipsum porta cubilia a sociis. Quam cursus lobortis faucibus adipiscing fringilla ut fames scelerisque nam turpis dictumst taciti a odio ullamcorper montes a ut sociosqu a rhoncus ad parturient semper habitant gravida at elementum. Adipiscing consectetur posuere adipiscing arcu ut ridiculus id neque in a a cum adipiscing senectus parturient hac in nullam adipiscing erat et nibh lacus sagittis quam. Ut consequat adipiscing class duis venenatis a nulla in dolor habitasse justo vestibulum sodales vestibulum suspendisse cursus parturient ligula a. Consectetur vestibulum suspendisse nibh vivamus parturient fringilla vestibulum consequat nunc litora adipiscing nunc tempor praesent pretium volutpat auctor curabitur suspendisse tempus dictumst luctus commodo scelerisque. Condimentum nunc cubilia laoreet adipiscing quis ullamcorper eu mi justo facilisi ullamcorper orci luctus fringilla habitasse a magna parturient.2017 UTC Highlights     ', '2018-08-30 23:35:16', '1'),
(1113, 3, 4, 1, 33, 1000, '{\"_id\":\"3\",\"heading\":\"Announcement 1\",\"_title\":\"Announcement 1\",\"date\":\"2018-08-28\",\"showTimeStamp\":null,\"body\":{\"_flang\":\"html\",\"raw\":\"<p style=\\\"text-align:center\\\">[cms:asset 1 title=\\\"Logo nm\\\"]<\\/p>\\r\\n<p>Phasellus fames viverra in eu eu gravida adipiscing vehicula in hendrerit urna erat ultricies a duis vestibulum a parturient vestibulum urna ipsum porta cubilia a sociis. Quam cursus lobortis faucibus adipiscing fringilla ut fames scelerisque nam turpis dictumst taciti a odio ullamcorper montes a ut sociosqu a rhoncus ad parturient semper habitant gravida at elementum. Adipiscing consectetur posuere adipiscing arcu ut ridiculus id neque in a a cum adipiscing senectus parturient hac in nullam adipiscing erat et nibh lacus sagittis quam. Ut consequat adipiscing class duis venenatis a nulla in dolor habitasse justo vestibulum sodales vestibulum suspendisse cursus parturient ligula a. Consectetur vestibulum suspendisse nibh vivamus parturient fringilla vestibulum consequat nunc litora adipiscing nunc tempor praesent pretium volutpat auctor curabitur suspendisse tempus dictumst luctus commodo scelerisque. Condimentum nunc cubilia laoreet adipiscing quis ullamcorper eu mi justo facilisi ullamcorper orci luctus fringilla habitasse a magna parturient.<br><br>[cms:asset 4 title=\\\"2017 UTC Highlights\\\"]<\\/p>\",\"processed\":\"<p style=\\\"text-align:center\\\"><img title=\\\"Logo nm\\\" src=\\\"\\/admin\\/resources\\/logonm-w800.jpg\\\" alt=\\\"Logo nm\\\"><\\/p>\\r\\n<p>Phasellus fames viverra in eu eu gravida adipiscing vehicula in hendrerit urna erat ultricies a duis vestibulum a parturient vestibulum urna ipsum porta cubilia a sociis. Quam cursus lobortis faucibus adipiscing fringilla ut fames scelerisque nam turpis dictumst taciti a odio ullamcorper montes a ut sociosqu a rhoncus ad parturient semper habitant gravida at elementum. Adipiscing consectetur posuere adipiscing arcu ut ridiculus id neque in a a cum adipiscing senectus parturient hac in nullam adipiscing erat et nibh lacus sagittis quam. Ut consequat adipiscing class duis venenatis a nulla in dolor habitasse justo vestibulum sodales vestibulum suspendisse cursus parturient ligula a. Consectetur vestibulum suspendisse nibh vivamus parturient fringilla vestibulum consequat nunc litora adipiscing nunc tempor praesent pretium volutpat auctor curabitur suspendisse tempus dictumst luctus commodo scelerisque. Condimentum nunc cubilia laoreet adipiscing quis ullamcorper eu mi justo facilisi ullamcorper orci luctus fringilla habitasse a magna parturient.<br><br><a title=\\\"2017 UTC Highlights\\\" href=\\\"\\/admin\\/resources\\/2017-utc-highlights.pdf\\\">2017 UTC Highlights<\\/a><\\/p>\"}}', ' Announcement 1 Tuesday 28 August 2018  \r\nPhasellus fames viverra in eu eu gravida adipiscing vehicula in hendrerit urna erat ultricies a duis vestibulum a parturient vestibulum urna ipsum porta cubilia a sociis. Quam cursus lobortis faucibus adipiscing fringilla ut fames scelerisque nam turpis dictumst taciti a odio ullamcorper montes a ut sociosqu a rhoncus ad parturient semper habitant gravida at elementum. Adipiscing consectetur posuere adipiscing arcu ut ridiculus id neque in a a cum adipiscing senectus parturient hac in nullam adipiscing erat et nibh lacus sagittis quam. Ut consequat adipiscing class duis venenatis a nulla in dolor habitasse justo vestibulum sodales vestibulum suspendisse cursus parturient ligula a. Consectetur vestibulum suspendisse nibh vivamus parturient fringilla vestibulum consequat nunc litora adipiscing nunc tempor praesent pretium volutpat auctor curabitur suspendisse tempus dictumst luctus commodo scelerisque. Condimentum nunc cubilia laoreet adipiscing quis ullamcorper eu mi justo facilisi ullamcorper orci luctus fringilla habitasse a magna parturient.2017 UTC Highlights     ', '2018-08-30 23:35:22', '1'),
(1110, 4, 4, 1, 31, 1001, '{\"_id\":\"4\",\"heading\":\"Announcement 2\",\"_title\":\"Announcement 2\",\"date\":\"2018-08-28\",\"showTimeStamp\":null,\"body\":{\"_flang\":\"html\",\"raw\":\"<p>Suspendisse proin ullamcorper quisque duis risus dolor volutpat sit nostra in blandit nunc scelerisque morbi dis vestibulum parturient luctus. Interdum tincidunt ultricies curae condimentum volutpat in a ullamcorper adipiscing class ac ultrices a senectus a eleifend enim at. A erat habitasse cum netus felis condimentum quam euismod ante lectus vulputate bibendum nibh nisi a magnis dui ridiculus dis accumsan fermentum a.&nbsp;<\\/p>\",\"processed\":\"<p>Suspendisse proin ullamcorper quisque duis risus dolor volutpat sit nostra in blandit nunc scelerisque morbi dis vestibulum parturient luctus. Interdum tincidunt ultricies curae condimentum volutpat in a ullamcorper adipiscing class ac ultrices a senectus a eleifend enim at. A erat habitasse cum netus felis condimentum quam euismod ante lectus vulputate bibendum nibh nisi a magnis dui ridiculus dis accumsan fermentum a.&nbsp;<\\/p>\"}}', ' Announcement 2 Tuesday 28 August 2018  Suspendisse proin ullamcorper quisque duis risus dolor volutpat sit nostra in blandit nunc scelerisque morbi dis vestibulum parturient luctus. Interdum tincidunt ultricies curae condimentum volutpat in a ullamcorper adipiscing class ac ultrices a senectus a eleifend enim at. A erat habitasse cum netus felis condimentum quam euismod ante lectus vulputate bibendum nibh nisi a magnis dui ridiculus dis accumsan fermentum a.&nbsp;     ', '2018-08-30 23:35:05', '1'),
(1112, 4, 4, 1, 32, 1001, '{\"_id\":\"4\",\"heading\":\"Announcement 2\",\"_title\":\"Announcement 2\",\"date\":\"2018-08-28\",\"showTimeStamp\":\"1\",\"body\":{\"_flang\":\"html\",\"raw\":\"<p>Suspendisse proin ullamcorper quisque duis risus dolor volutpat sit nostra in blandit nunc scelerisque morbi dis vestibulum parturient luctus. Interdum tincidunt ultricies curae condimentum volutpat in a ullamcorper adipiscing class ac ultrices a senectus a eleifend enim at. A erat habitasse cum netus felis condimentum quam euismod ante lectus vulputate bibendum nibh nisi a magnis dui ridiculus dis accumsan fermentum a.&nbsp;<\\/p>\",\"processed\":\"<p>Suspendisse proin ullamcorper quisque duis risus dolor volutpat sit nostra in blandit nunc scelerisque morbi dis vestibulum parturient luctus. Interdum tincidunt ultricies curae condimentum volutpat in a ullamcorper adipiscing class ac ultrices a senectus a eleifend enim at. A erat habitasse cum netus felis condimentum quam euismod ante lectus vulputate bibendum nibh nisi a magnis dui ridiculus dis accumsan fermentum a.&nbsp;<\\/p>\"}}', ' Announcement 2 Tuesday 28 August 2018 1 Suspendisse proin ullamcorper quisque duis risus dolor volutpat sit nostra in blandit nunc scelerisque morbi dis vestibulum parturient luctus. Interdum tincidunt ultricies curae condimentum volutpat in a ullamcorper adipiscing class ac ultrices a senectus a eleifend enim at. A erat habitasse cum netus felis condimentum quam euismod ante lectus vulputate bibendum nibh nisi a magnis dui ridiculus dis accumsan fermentum a.&nbsp;     ', '2018-08-30 23:35:16', '1'),
(1116, 4, 4, 1, 34, 1001, '{\"_id\":\"4\",\"heading\":\"Announcement 2\",\"_title\":\"Announcement 2\",\"date\":\"2018-08-28\",\"showTimeStamp\":\"1\",\"body\":{\"_flang\":\"html\",\"raw\":\"<p>Suspendisse proin ullamcorper quisque duis risus dolor volutpat sit nostra in blandit nunc scelerisque morbi dis vestibulum parturient luctus. Interdum tincidunt ultricies curae condimentum volutpat in a ullamcorper adipiscing class ac ultrices a senectus a eleifend enim at. A erat habitasse cum netus felis condimentum quam euismod ante lectus vulputate bibendum nibh nisi a magnis dui ridiculus dis accumsan fermentum a.&nbsp;<\\/p>\",\"processed\":\"<p>Suspendisse proin ullamcorper quisque duis risus dolor volutpat sit nostra in blandit nunc scelerisque morbi dis vestibulum parturient luctus. Interdum tincidunt ultricies curae condimentum volutpat in a ullamcorper adipiscing class ac ultrices a senectus a eleifend enim at. A erat habitasse cum netus felis condimentum quam euismod ante lectus vulputate bibendum nibh nisi a magnis dui ridiculus dis accumsan fermentum a.&nbsp;<\\/p>\"}}', ' Announcement 2 Tuesday 28 August 2018 1 Suspendisse proin ullamcorper quisque duis risus dolor volutpat sit nostra in blandit nunc scelerisque morbi dis vestibulum parturient luctus. Interdum tincidunt ultricies curae condimentum volutpat in a ullamcorper adipiscing class ac ultrices a senectus a eleifend enim at. A erat habitasse cum netus felis condimentum quam euismod ante lectus vulputate bibendum nibh nisi a magnis dui ridiculus dis accumsan fermentum a.&nbsp;     ', '2018-08-30 23:35:29', '1'),
(1115, 3, 4, 1, 34, 1000, '{\"_id\":\"3\",\"heading\":\"Announcement 1\",\"_title\":\"Announcement 1\",\"date\":\"2018-08-28\",\"showTimeStamp\":\"1\",\"body\":{\"_flang\":\"html\",\"raw\":\"<p style=\\\"text-align:center\\\">[cms:asset 1 title=\\\"Logo nm\\\"]<\\/p>\\r\\n<p>Phasellus fames viverra in eu eu gravida adipiscing vehicula in hendrerit urna erat ultricies a duis vestibulum a parturient vestibulum urna ipsum porta cubilia a sociis. Quam cursus lobortis faucibus adipiscing fringilla ut fames scelerisque nam turpis dictumst taciti a odio ullamcorper montes a ut sociosqu a rhoncus ad parturient semper habitant gravida at elementum. Adipiscing consectetur posuere adipiscing arcu ut ridiculus id neque in a a cum adipiscing senectus parturient hac in nullam adipiscing erat et nibh lacus sagittis quam. Ut consequat adipiscing class duis venenatis a nulla in dolor habitasse justo vestibulum sodales vestibulum suspendisse cursus parturient ligula a. Consectetur vestibulum suspendisse nibh vivamus parturient fringilla vestibulum consequat nunc litora adipiscing nunc tempor praesent pretium volutpat auctor curabitur suspendisse tempus dictumst luctus commodo scelerisque. Condimentum nunc cubilia laoreet adipiscing quis ullamcorper eu mi justo facilisi ullamcorper orci luctus fringilla habitasse a magna parturient.<br><br>[cms:asset 4 title=\\\"2017 UTC Highlights\\\"]<\\/p>\",\"processed\":\"<p style=\\\"text-align:center\\\"><img title=\\\"Logo nm\\\" src=\\\"\\/admin\\/resources\\/logonm-w800.jpg\\\" alt=\\\"Logo nm\\\"><\\/p>\\r\\n<p>Phasellus fames viverra in eu eu gravida adipiscing vehicula in hendrerit urna erat ultricies a duis vestibulum a parturient vestibulum urna ipsum porta cubilia a sociis. Quam cursus lobortis faucibus adipiscing fringilla ut fames scelerisque nam turpis dictumst taciti a odio ullamcorper montes a ut sociosqu a rhoncus ad parturient semper habitant gravida at elementum. Adipiscing consectetur posuere adipiscing arcu ut ridiculus id neque in a a cum adipiscing senectus parturient hac in nullam adipiscing erat et nibh lacus sagittis quam. Ut consequat adipiscing class duis venenatis a nulla in dolor habitasse justo vestibulum sodales vestibulum suspendisse cursus parturient ligula a. Consectetur vestibulum suspendisse nibh vivamus parturient fringilla vestibulum consequat nunc litora adipiscing nunc tempor praesent pretium volutpat auctor curabitur suspendisse tempus dictumst luctus commodo scelerisque. Condimentum nunc cubilia laoreet adipiscing quis ullamcorper eu mi justo facilisi ullamcorper orci luctus fringilla habitasse a magna parturient.<br><br><a title=\\\"2017 UTC Highlights\\\" href=\\\"\\/admin\\/resources\\/2017-utc-highlights.pdf\\\">2017 UTC Highlights<\\/a><\\/p>\"}}', ' Announcement 1 Tuesday 28 August 2018 1 \r\nPhasellus fames viverra in eu eu gravida adipiscing vehicula in hendrerit urna erat ultricies a duis vestibulum a parturient vestibulum urna ipsum porta cubilia a sociis. Quam cursus lobortis faucibus adipiscing fringilla ut fames scelerisque nam turpis dictumst taciti a odio ullamcorper montes a ut sociosqu a rhoncus ad parturient semper habitant gravida at elementum. Adipiscing consectetur posuere adipiscing arcu ut ridiculus id neque in a a cum adipiscing senectus parturient hac in nullam adipiscing erat et nibh lacus sagittis quam. Ut consequat adipiscing class duis venenatis a nulla in dolor habitasse justo vestibulum sodales vestibulum suspendisse cursus parturient ligula a. Consectetur vestibulum suspendisse nibh vivamus parturient fringilla vestibulum consequat nunc litora adipiscing nunc tempor praesent pretium volutpat auctor curabitur suspendisse tempus dictumst luctus commodo scelerisque. Condimentum nunc cubilia laoreet adipiscing quis ullamcorper eu mi justo facilisi ullamcorper orci luctus fringilla habitasse a magna parturient.2017 UTC Highlights     ', '2018-08-30 23:35:29', '1'),
(1114, 4, 4, 1, 33, 1001, '{\"_id\":\"4\",\"heading\":\"Announcement 2\",\"_title\":\"Announcement 2\",\"date\":\"2018-08-28\",\"showTimeStamp\":\"1\",\"body\":{\"_flang\":\"html\",\"raw\":\"<p>Suspendisse proin ullamcorper quisque duis risus dolor volutpat sit nostra in blandit nunc scelerisque morbi dis vestibulum parturient luctus. Interdum tincidunt ultricies curae condimentum volutpat in a ullamcorper adipiscing class ac ultrices a senectus a eleifend enim at. A erat habitasse cum netus felis condimentum quam euismod ante lectus vulputate bibendum nibh nisi a magnis dui ridiculus dis accumsan fermentum a.&nbsp;<\\/p>\",\"processed\":\"<p>Suspendisse proin ullamcorper quisque duis risus dolor volutpat sit nostra in blandit nunc scelerisque morbi dis vestibulum parturient luctus. Interdum tincidunt ultricies curae condimentum volutpat in a ullamcorper adipiscing class ac ultrices a senectus a eleifend enim at. A erat habitasse cum netus felis condimentum quam euismod ante lectus vulputate bibendum nibh nisi a magnis dui ridiculus dis accumsan fermentum a.&nbsp;<\\/p>\"}}', ' Announcement 2 Tuesday 28 August 2018 1 Suspendisse proin ullamcorper quisque duis risus dolor volutpat sit nostra in blandit nunc scelerisque morbi dis vestibulum parturient luctus. Interdum tincidunt ultricies curae condimentum volutpat in a ullamcorper adipiscing class ac ultrices a senectus a eleifend enim at. A erat habitasse cum netus felis condimentum quam euismod ante lectus vulputate bibendum nibh nisi a magnis dui ridiculus dis accumsan fermentum a.&nbsp;     ', '2018-08-30 23:35:22', '1'),
(1098, 24, 8, 4, 27, 1000, '{\"_id\":\"24\",\"left_image\":{\"assetID\":\"11\",\"title\":\"NF Farm\",\"_default\":\"\\/admin\\/resources\\/nf-farm.jpg\",\"bucket\":\"default\",\"path\":\"nf-farm.jpg\",\"size\":369096,\"w\":1024,\"h\":685,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"100\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"nf-farm-thumb@2x.jpg\",\"size\":40479,\"mime\":\"image\\/jpeg\",\"assetID\":\"12\"}}},\"left_image_width\":\"200\",\"right_image\":null,\"right_image_width\":\"200\",\"text\":{\"_flang\":\"html\",\"raw\":\"<h2>Urban Farming & Gardening<\\/h2>\\r\\n<p>In 2009, UTC and three block captains founded Neighborhood Foods Farm (NF) as a positive solution to food insecurity and the growing number of abandoned lots in the neighborhood. After significant remediation, NF is now a fully functioning \\u00be acre farm. We have also developed a community-based micro-farm in collaboration with First African Presbyterian Church, and 27 other vacant lots have been converted into pocket parks, communal growing plots, and educational spaces. Together, these sites comprise a neighborhood food system that annually raises over 8,000 pounds of chemical-free produce. We offer volunteer and apprenticeship opportunities at our farms, and host farm tours through the growing season.<\\/p>\",\"processed\":\"<h2>Urban Farming & Gardening<\\/h2>\\r\\n<p>In 2009, UTC and three block captains founded Neighborhood Foods Farm (NF) as a positive solution to food insecurity and the growing number of abandoned lots in the neighborhood. After significant remediation, NF is now a fully functioning \\u00be acre farm. We have also developed a community-based micro-farm in collaboration with First African Presbyterian Church, and 27 other vacant lots have been converted into pocket parks, communal growing plots, and educational spaces. Together, these sites comprise a neighborhood food system that annually raises over 8,000 pounds of chemical-free produce. We offer volunteer and apprenticeship opportunities at our farms, and host farm tours through the growing season.<\\/p>\"}}', '  200  200 Urban Farming & Gardening\r\nIn 2009, UTC and three block captains founded Neighborhood Foods Farm (NF) as a positive solution to food insecurity and the growing number of abandoned lots in the neighborhood. After significant remediation, NF is now a fully functioning ¾ acre farm. We have also developed a community-based micro-farm in collaboration with First African Presbyterian Church, and 27 other vacant lots have been converted into pocket parks, communal growing plots, and educational spaces. Together, these sites comprise a neighborhood food system that annually raises over 8,000 pounds of chemical-free produce. We offer volunteer and apprenticeship opportunities at our farms, and host farm tours through the growing season. ', '2018-08-30 23:33:11', '1'),
(1095, 24, 8, 4, 26, 1000, '{\"_id\":\"24\",\"left_image\":{\"assetID\":\"11\",\"title\":\"NF Farm\",\"_default\":\"\\/admin\\/resources\\/nf-farm.jpg\",\"bucket\":\"default\",\"path\":\"nf-farm.jpg\",\"size\":369096,\"w\":1024,\"h\":685,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"100\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"nf-farm-thumb@2x.jpg\",\"size\":40479,\"mime\":\"image\\/jpeg\",\"assetID\":\"12\"}}},\"left_image_width\":\"200\",\"right_image\":null,\"right_image_width\":\"200\",\"text\":{\"_flang\":\"html\",\"raw\":\"<h2>Urban Farming & Gardening<\\/h2>\\r\\n<p>In 2009, UTC and three block captains founded Neighborhood Foods Farm (NF) as a positive solution to food insecurity and the growing number of abandoned lots in the neighborhood. After significant remediation, NF is now a fully functioning \\u00be acre farm. We have also developed a community-based micro-farm in collaboration with First African Presbyterian Church, and 27 other vacant lots have been converted into pocket parks, communal growing plots, and educational spaces. Together, these sites comprise a neighborhood food system that annually raises over 8,000 pounds of chemical-free produce. We offer volunteer and apprenticeship opportunities at our farms, and host farm tours through the growing season.<\\/p>\",\"processed\":\"<h2>Urban Farming & Gardening<\\/h2>\\r\\n<p>In 2009, UTC and three block captains founded Neighborhood Foods Farm (NF) as a positive solution to food insecurity and the growing number of abandoned lots in the neighborhood. After significant remediation, NF is now a fully functioning \\u00be acre farm. We have also developed a community-based micro-farm in collaboration with First African Presbyterian Church, and 27 other vacant lots have been converted into pocket parks, communal growing plots, and educational spaces. Together, these sites comprise a neighborhood food system that annually raises over 8,000 pounds of chemical-free produce. We offer volunteer and apprenticeship opportunities at our farms, and host farm tours through the growing season.<\\/p>\"}}', '  200  200 Urban Farming & Gardening\r\nIn 2009, UTC and three block captains founded Neighborhood Foods Farm (NF) as a positive solution to food insecurity and the growing number of abandoned lots in the neighborhood. After significant remediation, NF is now a fully functioning ¾ acre farm. We have also developed a community-based micro-farm in collaboration with First African Presbyterian Church, and 27 other vacant lots have been converted into pocket parks, communal growing plots, and educational spaces. Together, these sites comprise a neighborhood food system that annually raises over 8,000 pounds of chemical-free produce. We offer volunteer and apprenticeship opportunities at our farms, and host farm tours through the growing season. ', '2018-08-30 23:28:18', '1'),
(1096, 25, 8, 4, 26, 1001, '{\"_id\":\"25\",\"left_image\":{\"assetID\":\"40\",\"title\":\"Memorial Garden\",\"_default\":\"\\/admin\\/resources\\/memorial-garden-4.jpg\",\"bucket\":\"default\",\"path\":\"memorial-garden-4.jpg\",\"size\":112486,\"w\":533,\"h\":400,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"112\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"memorial-garden-4-thumb@2x.jpg\",\"size\":36686,\"mime\":\"image\\/jpeg\",\"assetID\":\"41\"}}},\"left_image_width\":\"200\",\"right_image\":null,\"right_image_width\":null,\"text\":{\"_flang\":\"html\",\"raw\":\"<h2>Community-Led Food Distribution<\\/h2>\\r\\n<p>Our produce is distributed through&nbsp;<a href=\\\"http:\\/\\/www.urbantreeconnection.org\\/visitus.php\\\">Community-Led Farmers Markets and a Community Supported Agriculture (CSA)<\\/a>&nbsp;program in West Philly where residents have limited options to fresh, quality produce. We engage customers with limited incomes, offering them produce at an affordable price, encouraging the use of subsidized payments like EBT\\/Access and Senior vouchers. All of our farm stands are uniquely operated by community members (youth and adults), and we provide on-going training and support. Our excess food is donated to local food banks and feeding programs in Haddington.<\\/p>\",\"processed\":\"<h2>Community-Led Food Distribution<\\/h2>\\r\\n<p>Our produce is distributed through&nbsp;<a href=\\\"http:\\/\\/www.urbantreeconnection.org\\/visitus.php\\\">Community-Led Farmers Markets and a Community Supported Agriculture (CSA)<\\/a>&nbsp;program in West Philly where residents have limited options to fresh, quality produce. We engage customers with limited incomes, offering them produce at an affordable price, encouraging the use of subsidized payments like EBT\\/Access and Senior vouchers. All of our farm stands are uniquely operated by community members (youth and adults), and we provide on-going training and support. Our excess food is donated to local food banks and feeding programs in Haddington.<\\/p>\"}}', '  200   Community-Led Food Distribution\r\nOur produce is distributed through&nbsp;Community-Led Farmers Markets and a Community Supported Agriculture (CSA)&nbsp;program in West Philly where residents have limited options to fresh, quality produce. We engage customers with limited incomes, offering them produce at an affordable price, encouraging the use of subsidized payments like EBT/Access and Senior vouchers. All of our farm stands are uniquely operated by community members (youth and adults), and we provide on-going training and support. Our excess food is donated to local food banks and feeding programs in Haddington. ', '2018-08-30 23:28:18', '1'),
(1031, 2, 3, 1, 12, 1000, '{\"_id\":\"2\",\"album\":{\"albumSlug\":\"header-gallery\",\"_default\":\"header-gallery\"}}', '  ', '2018-08-30 22:34:08', '1'),
(1035, 2, 3, 1, 14, 1000, '{\"_id\":\"2\",\"album\":{\"albumSlug\":\"header-gallery\",\"_default\":\"header-gallery\"}}', '  ', '2018-08-30 22:49:15', '1');
INSERT INTO `perch3_content_items` (`itemRowID`, `itemID`, `regionID`, `pageID`, `itemRev`, `itemOrder`, `itemJSON`, `itemSearch`, `itemUpdated`, `itemUpdatedBy`) VALUES
(1124, 4, 4, 1, 38, 1001, '{\"_id\":\"4\",\"heading\":\"Announcement 2\",\"_title\":\"Announcement 2\",\"date\":\"2018-08-28\",\"showTimeStamp\":\"1\",\"body\":{\"_flang\":\"html\",\"raw\":\"<p>Suspendisse proin ullamcorper quisque duis risus dolor volutpat sit nostra in blandit nunc scelerisque morbi dis vestibulum parturient luctus. Interdum tincidunt ultricies curae condimentum volutpat in a ullamcorper adipiscing class ac ultrices a senectus a eleifend enim at. A erat habitasse cum netus felis condimentum quam euismod ante lectus vulputate bibendum nibh nisi a magnis dui ridiculus dis accumsan fermentum a.&nbsp;<\\/p>\",\"processed\":\"<p>Suspendisse proin ullamcorper quisque duis risus dolor volutpat sit nostra in blandit nunc scelerisque morbi dis vestibulum parturient luctus. Interdum tincidunt ultricies curae condimentum volutpat in a ullamcorper adipiscing class ac ultrices a senectus a eleifend enim at. A erat habitasse cum netus felis condimentum quam euismod ante lectus vulputate bibendum nibh nisi a magnis dui ridiculus dis accumsan fermentum a.&nbsp;<\\/p>\"}}', ' Announcement 2 Tuesday 28 August 2018 1 Suspendisse proin ullamcorper quisque duis risus dolor volutpat sit nostra in blandit nunc scelerisque morbi dis vestibulum parturient luctus. Interdum tincidunt ultricies curae condimentum volutpat in a ullamcorper adipiscing class ac ultrices a senectus a eleifend enim at. A erat habitasse cum netus felis condimentum quam euismod ante lectus vulputate bibendum nibh nisi a magnis dui ridiculus dis accumsan fermentum a.&nbsp;     ', '2018-08-30 23:36:19', '1'),
(1025, 6, 5, 2, 21, 1000, '{\"_id\":\"6\",\"left_image\":{\"assetID\":\"5\",\"title\":\"Gardening at Girarden\",\"_default\":\"\\/admin\\/resources\\/gardening-at-girarden.jpg\",\"bucket\":\"default\",\"path\":\"gardening-at-girarden.jpg\",\"size\":143319,\"w\":837,\"h\":560,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"100\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"gardening-at-girarden-thumb@2x.jpg\",\"size\":30148,\"mime\":\"image\\/jpeg\",\"assetID\":\"6\"}}},\"left_image_width\":\"100\",\"text\":{\"_flang\":\"html\",\"raw\":\"<p>The Urban Tree Connection (UTC) works with residents in Philadelphia\\u2019s historically marginalized urban communities to revitalize their neighborhoods by transforming abandoned open spaces into safe and functional places that inspire and promote positive human interaction. Founded in 1989 and incorporated as a 501(c)(3) nonprofit organization in 1997, UTC works with residents of West Philadelphia\'s Haddington neighborhood to develop community-driven greening and gardening projects on vacant land. Our aim is to cultivate community leadership to improve community health and to develop a local, sustainable, and equitable food system<br><\\/p>\\r\\n<p>Over the last 19 years, UTC has transformed the landscape of Haddington alongside community leaders, catalyzing residents\' demand for green space and locally produced fresh food. Together, we have redeveloped 29 vacant lots, totaling more than 86,000 square feet of land for communal growing and gathering, sustainable (chemical free) food production and distribution, and multigenerational health and wellness education. This includes our community gem - a \\u00be acre urban farm \\u2013 Neighborhood Foods Farm, which produces over 8,000 pounds of produce annually. Furthermore, UTC has been at the forefront of urban farming and land reclamation movements in Philadelphia, helping pioneer key tools for legal reclamation of abandoned properties.<br><br>Neighbors, once isolated from each other, increasingly connect through the gardens created on these formerly abandoned lots, as well as through <a href=\\\"http:\\/\\/urbantreeconnection.org\\/programs.php\\\">diverse array of educational and community programs<\\/a>&nbsp;that UTC offers.  These personal connections have, in turn, empowered neighbors to continue to transform their community. Today, Haddington residents are increasingly realizing the potential for growing food on abandoned lots in their neighborhood, and are active partners with UTC in developing a community based local food system aimed at making affordable, healthy, Haddington-grown food available to every neighbor. This community-based food system presents a powerful antidote to food insecurity and diet-related illnesses faced by residents.<\\/p>\",\"processed\":\"<p>The Urban Tree Connection (UTC) works with residents in Philadelphia\\u2019s historically marginalized urban communities to revitalize their neighborhoods by transforming abandoned open spaces into safe and functional places that inspire and promote positive human interaction. Founded in 1989 and incorporated as a 501(c)(3) nonprofit organization in 1997, UTC works with residents of West Philadelphia\'s Haddington neighborhood to develop community-driven greening and gardening projects on vacant land. Our aim is to cultivate community leadership to improve community health and to develop a local, sustainable, and equitable food system<br><\\/p>\\r\\n<p>Over the last 19 years, UTC has transformed the landscape of Haddington alongside community leaders, catalyzing residents\' demand for green space and locally produced fresh food. Together, we have redeveloped 29 vacant lots, totaling more than 86,000 square feet of land for communal growing and gathering, sustainable (chemical free) food production and distribution, and multigenerational health and wellness education. This includes our community gem - a \\u00be acre urban farm \\u2013 Neighborhood Foods Farm, which produces over 8,000 pounds of produce annually. Furthermore, UTC has been at the forefront of urban farming and land reclamation movements in Philadelphia, helping pioneer key tools for legal reclamation of abandoned properties.<br><br>Neighbors, once isolated from each other, increasingly connect through the gardens created on these formerly abandoned lots, as well as through <a href=\\\"http:\\/\\/urbantreeconnection.org\\/programs.php\\\">diverse array of educational and community programs<\\/a>&nbsp;that UTC offers.  These personal connections have, in turn, empowered neighbors to continue to transform their community. Today, Haddington residents are increasingly realizing the potential for growing food on abandoned lots in their neighborhood, and are active partners with UTC in developing a community based local food system aimed at making affordable, healthy, Haddington-grown food available to every neighbor. This community-based food system presents a powerful antidote to food insecurity and diet-related illnesses faced by residents.<\\/p>\"},\"right_image\":{\"assetID\":\"7\",\"title\":\"Sprout\",\"_default\":\"\\/admin\\/resources\\/sprout.jpg\",\"bucket\":\"default\",\"path\":\"sprout.jpg\",\"size\":174915,\"w\":528,\"h\":704,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"112\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"sprout-thumb@2x.jpg\",\"size\":38923,\"mime\":\"image\\/jpeg\",\"assetID\":\"8\"}}},\"right_image_width\":\"100\"}', '  100 The Urban Tree Connection (UTC) works with residents in Philadelphia’s historically marginalized urban communities to revitalize their neighborhoods by transforming abandoned open spaces into safe and functional places that inspire and promote positive human interaction. Founded in 1989 and incorporated as a 501(c)(3) nonprofit organization in 1997, UTC works with residents of West Philadelphia\'s Haddington neighborhood to develop community-driven greening and gardening projects on vacant land. Our aim is to cultivate community leadership to improve community health and to develop a local, sustainable, and equitable food system\r\nOver the last 19 years, UTC has transformed the landscape of Haddington alongside community leaders, catalyzing residents\' demand for green space and locally produced fresh food. Together, we have redeveloped 29 vacant lots, totaling more than 86,000 square feet of land for communal growing and gathering, sustainable (chemical free) food production and distribution, and multigenerational health and wellness education. This includes our community gem - a ¾ acre urban farm – Neighborhood Foods Farm, which produces over 8,000 pounds of produce annually. Furthermore, UTC has been at the forefront of urban farming and land reclamation movements in Philadelphia, helping pioneer key tools for legal reclamation of abandoned properties.Neighbors, once isolated from each other, increasingly connect through the gardens created on these formerly abandoned lots, as well as through diverse array of educational and community programs&nbsp;that UTC offers.  These personal connections have, in turn, empowered neighbors to continue to transform their community. Today, Haddington residents are increasingly realizing the potential for growing food on abandoned lots in their neighborhood, and are active partners with UTC in developing a community based local food system aimed at making affordable, healthy, Haddington-grown food available to every neighbor. This community-based food system presents a powerful antidote to food insecurity and diet-related illnesses faced by residents.  100 ', '2018-08-30 22:31:14', '1'),
(1026, 6, 5, 2, 22, 1000, '{\"_id\":\"6\",\"left_image\":{\"assetID\":\"5\",\"title\":\"Gardening at Girarden\",\"_default\":\"\\/admin\\/resources\\/gardening-at-girarden.jpg\",\"bucket\":\"default\",\"path\":\"gardening-at-girarden.jpg\",\"size\":143319,\"w\":837,\"h\":560,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"100\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"gardening-at-girarden-thumb@2x.jpg\",\"size\":30148,\"mime\":\"image\\/jpeg\",\"assetID\":\"6\"}}},\"left_image_width\":\"100\",\"right_image\":{\"assetID\":\"7\",\"title\":\"Sprout\",\"_default\":\"\\/admin\\/resources\\/sprout.jpg\",\"bucket\":\"default\",\"path\":\"sprout.jpg\",\"size\":174915,\"w\":528,\"h\":704,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"112\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"sprout-thumb@2x.jpg\",\"size\":38923,\"mime\":\"image\\/jpeg\",\"assetID\":\"8\"}}},\"right_image_width\":\"100\",\"text\":{\"_flang\":\"html\",\"raw\":\"<p>The Urban Tree Connection (UTC) works with residents in Philadelphia\\u2019s historically marginalized urban communities to revitalize their neighborhoods by transforming abandoned open spaces into safe and functional places that inspire and promote positive human interaction. Founded in 1989 and incorporated as a 501(c)(3) nonprofit organization in 1997, UTC works with residents of West Philadelphia\'s Haddington neighborhood to develop community-driven greening and gardening projects on vacant land. Our aim is to cultivate community leadership to improve community health and to develop a local, sustainable, and equitable food system<br><\\/p>\\r\\n<p>Over the last 19 years, UTC has transformed the landscape of Haddington alongside community leaders, catalyzing residents\' demand for green space and locally produced fresh food. Together, we have redeveloped 29 vacant lots, totaling more than 86,000 square feet of land for communal growing and gathering, sustainable (chemical free) food production and distribution, and multigenerational health and wellness education. This includes our community gem - a \\u00be acre urban farm \\u2013 Neighborhood Foods Farm, which produces over 8,000 pounds of produce annually. Furthermore, UTC has been at the forefront of urban farming and land reclamation movements in Philadelphia, helping pioneer key tools for legal reclamation of abandoned properties.<br><br>Neighbors, once isolated from each other, increasingly connect through the gardens created on these formerly abandoned lots, as well as through <a href=\\\"http:\\/\\/urbantreeconnection.org\\/programs.php\\\">diverse array of educational and community programs<\\/a>&nbsp;that UTC offers.  These personal connections have, in turn, empowered neighbors to continue to transform their community. Today, Haddington residents are increasingly realizing the potential for growing food on abandoned lots in their neighborhood, and are active partners with UTC in developing a community based local food system aimed at making affordable, healthy, Haddington-grown food available to every neighbor. This community-based food system presents a powerful antidote to food insecurity and diet-related illnesses faced by residents.<\\/p>\",\"processed\":\"<p>The Urban Tree Connection (UTC) works with residents in Philadelphia\\u2019s historically marginalized urban communities to revitalize their neighborhoods by transforming abandoned open spaces into safe and functional places that inspire and promote positive human interaction. Founded in 1989 and incorporated as a 501(c)(3) nonprofit organization in 1997, UTC works with residents of West Philadelphia\'s Haddington neighborhood to develop community-driven greening and gardening projects on vacant land. Our aim is to cultivate community leadership to improve community health and to develop a local, sustainable, and equitable food system<br><\\/p>\\r\\n<p>Over the last 19 years, UTC has transformed the landscape of Haddington alongside community leaders, catalyzing residents\' demand for green space and locally produced fresh food. Together, we have redeveloped 29 vacant lots, totaling more than 86,000 square feet of land for communal growing and gathering, sustainable (chemical free) food production and distribution, and multigenerational health and wellness education. This includes our community gem - a \\u00be acre urban farm \\u2013 Neighborhood Foods Farm, which produces over 8,000 pounds of produce annually. Furthermore, UTC has been at the forefront of urban farming and land reclamation movements in Philadelphia, helping pioneer key tools for legal reclamation of abandoned properties.<br><br>Neighbors, once isolated from each other, increasingly connect through the gardens created on these formerly abandoned lots, as well as through <a href=\\\"http:\\/\\/urbantreeconnection.org\\/programs.php\\\">diverse array of educational and community programs<\\/a>&nbsp;that UTC offers.  These personal connections have, in turn, empowered neighbors to continue to transform their community. Today, Haddington residents are increasingly realizing the potential for growing food on abandoned lots in their neighborhood, and are active partners with UTC in developing a community based local food system aimed at making affordable, healthy, Haddington-grown food available to every neighbor. This community-based food system presents a powerful antidote to food insecurity and diet-related illnesses faced by residents.<\\/p>\"}}', '  100  100 The Urban Tree Connection (UTC) works with residents in Philadelphia’s historically marginalized urban communities to revitalize their neighborhoods by transforming abandoned open spaces into safe and functional places that inspire and promote positive human interaction. Founded in 1989 and incorporated as a 501(c)(3) nonprofit organization in 1997, UTC works with residents of West Philadelphia\'s Haddington neighborhood to develop community-driven greening and gardening projects on vacant land. Our aim is to cultivate community leadership to improve community health and to develop a local, sustainable, and equitable food system\r\nOver the last 19 years, UTC has transformed the landscape of Haddington alongside community leaders, catalyzing residents\' demand for green space and locally produced fresh food. Together, we have redeveloped 29 vacant lots, totaling more than 86,000 square feet of land for communal growing and gathering, sustainable (chemical free) food production and distribution, and multigenerational health and wellness education. This includes our community gem - a ¾ acre urban farm – Neighborhood Foods Farm, which produces over 8,000 pounds of produce annually. Furthermore, UTC has been at the forefront of urban farming and land reclamation movements in Philadelphia, helping pioneer key tools for legal reclamation of abandoned properties.Neighbors, once isolated from each other, increasingly connect through the gardens created on these formerly abandoned lots, as well as through diverse array of educational and community programs&nbsp;that UTC offers.  These personal connections have, in turn, empowered neighbors to continue to transform their community. Today, Haddington residents are increasingly realizing the potential for growing food on abandoned lots in their neighborhood, and are active partners with UTC in developing a community based local food system aimed at making affordable, healthy, Haddington-grown food available to every neighbor. This community-based food system presents a powerful antidote to food insecurity and diet-related illnesses faced by residents. ', '2018-08-30 22:31:33', '1'),
(96, 13, 6, 2, 8, 1006, '', '', '2018-08-28 18:38:41', ''),
(104, 14, 6, 2, 9, 1007, '', '', '2018-08-28 18:39:18', ''),
(105, 7, 6, 2, 10, 1000, '{\"_id\":\"7\",\"first_name\":\"India\",\"last_name\":\"Blunt\",\"utc_title\":\"UTC Board Chair\",\"work_position\":\"Program Manager\",\"work_organization\":\"Lenfest\"}', ' India Blunt UTC Board Chair Program Manager Lenfest ', '2018-08-28 18:39:41', '1'),
(113, 15, 6, 2, 10, 1008, '', '', '2018-08-28 18:39:41', ''),
(114, 7, 6, 2, 11, 1000, '{\"_id\":\"7\",\"first_name\":\"India\",\"last_name\":\"Blunt\",\"utc_title\":\"UTC Board Chair\",\"work_position\":\"Program Manager\",\"work_organization\":\"Lenfest\"}', ' India Blunt UTC Board Chair Program Manager Lenfest ', '2018-08-28 18:39:55', '1'),
(124, 16, 7, 2, 1, 1000, '{\"_id\":\"16\",\"first_name\":\"Noelle\",\"last_name\":\"Warford\",\"position\":\"Executive Director\",\"email\":\"noelle@urbantreeconnection.org\"}', ' Noelle Warford Executive Director noelle@urbantreeconnection.org ', '2018-08-28 18:47:24', '1'),
(72, 7, 6, 2, 4, 1000, '{\"_id\":\"7\",\"first_name\":\"India\",\"last_name\":\"Blunt\",\"utc_title\":\"UTC Board Chair\",\"work_position\":\"Program Manager\",\"work_organization\":\"Lenfest\"}', ' India Blunt UTC Board Chair Program Manager Lenfest ', '2018-08-28 18:37:20', '1'),
(73, 8, 6, 2, 4, 1001, '{\"_id\":\"8\",\"first_name\":\"Jayne\",\"last_name\":\"Mariotti\",\"utc_title\":\"UTC Board Vice-Chair\",\"work_position\":\"Associate\",\"work_organization\":\"Ballard Spahr, LLP\"}', ' Jayne Mariotti UTC Board Vice-Chair Associate Ballard Spahr, LLP ', '2018-08-28 18:37:20', '1'),
(74, 9, 6, 2, 4, 1002, '', '', '2018-08-28 18:37:20', ''),
(75, 7, 6, 2, 5, 1000, '{\"_id\":\"7\",\"first_name\":\"India\",\"last_name\":\"Blunt\",\"utc_title\":\"UTC Board Chair\",\"work_position\":\"Program Manager\",\"work_organization\":\"Lenfest\"}', ' India Blunt UTC Board Chair Program Manager Lenfest ', '2018-08-28 18:37:40', '1'),
(76, 8, 6, 2, 5, 1001, '{\"_id\":\"8\",\"first_name\":\"Jayne\",\"last_name\":\"Mariotti\",\"utc_title\":\"UTC Board Vice-Chair\",\"work_position\":\"Associate\",\"work_organization\":\"Ballard Spahr, LLP\"}', ' Jayne Mariotti UTC Board Vice-Chair Associate Ballard Spahr, LLP ', '2018-08-28 18:37:40', '1'),
(77, 9, 6, 2, 5, 1002, '{\"_id\":\"9\",\"first_name\":\"Katherine\",\"last_name\":\"Madonna\",\"utc_title\":\"UTC Board Treasurer\",\"work_position\":\"Director of Finance\",\"work_organization\":\"Department of OBGYN, Penn Medicine\"}', ' Katherine Madonna UTC Board Treasurer Director of Finance Department of OBGYN, Penn Medicine ', '2018-08-28 18:37:40', '1'),
(78, 10, 6, 2, 5, 1003, '', '', '2018-08-28 18:37:40', ''),
(79, 7, 6, 2, 6, 1000, '{\"_id\":\"7\",\"first_name\":\"India\",\"last_name\":\"Blunt\",\"utc_title\":\"UTC Board Chair\",\"work_position\":\"Program Manager\",\"work_organization\":\"Lenfest\"}', ' India Blunt UTC Board Chair Program Manager Lenfest ', '2018-08-28 18:38:00', '1'),
(80, 8, 6, 2, 6, 1001, '{\"_id\":\"8\",\"first_name\":\"Jayne\",\"last_name\":\"Mariotti\",\"utc_title\":\"UTC Board Vice-Chair\",\"work_position\":\"Associate\",\"work_organization\":\"Ballard Spahr, LLP\"}', ' Jayne Mariotti UTC Board Vice-Chair Associate Ballard Spahr, LLP ', '2018-08-28 18:38:00', '1'),
(81, 9, 6, 2, 6, 1002, '{\"_id\":\"9\",\"first_name\":\"Katherine\",\"last_name\":\"Madonna\",\"utc_title\":\"UTC Board Treasurer\",\"work_position\":\"Director of Finance\",\"work_organization\":\"Department of OBGYN, Penn Medicine\"}', ' Katherine Madonna UTC Board Treasurer Director of Finance Department of OBGYN, Penn Medicine ', '2018-08-28 18:38:00', '1'),
(82, 10, 6, 2, 6, 1003, '{\"_id\":\"10\",\"first_name\":\"Lauren\",\"last_name\":\"Fox\",\"utc_title\":\"UTC Board Secretary\",\"work_position\":\"Member\",\"work_organization\":\"Cozen O\'Connor\"}', ' Lauren Fox UTC Board Secretary Member Cozen O\'Connor ', '2018-08-28 18:38:01', '1'),
(83, 11, 6, 2, 6, 1004, '', '', '2018-08-28 18:38:01', ''),
(84, 7, 6, 2, 7, 1000, '{\"_id\":\"7\",\"first_name\":\"India\",\"last_name\":\"Blunt\",\"utc_title\":\"UTC Board Chair\",\"work_position\":\"Program Manager\",\"work_organization\":\"Lenfest\"}', ' India Blunt UTC Board Chair Program Manager Lenfest ', '2018-08-28 18:38:18', '1'),
(85, 8, 6, 2, 7, 1001, '{\"_id\":\"8\",\"first_name\":\"Jayne\",\"last_name\":\"Mariotti\",\"utc_title\":\"UTC Board Vice-Chair\",\"work_position\":\"Associate\",\"work_organization\":\"Ballard Spahr, LLP\"}', ' Jayne Mariotti UTC Board Vice-Chair Associate Ballard Spahr, LLP ', '2018-08-28 18:38:18', '1'),
(86, 9, 6, 2, 7, 1002, '{\"_id\":\"9\",\"first_name\":\"Katherine\",\"last_name\":\"Madonna\",\"utc_title\":\"UTC Board Treasurer\",\"work_position\":\"Director of Finance\",\"work_organization\":\"Department of OBGYN, Penn Medicine\"}', ' Katherine Madonna UTC Board Treasurer Director of Finance Department of OBGYN, Penn Medicine ', '2018-08-28 18:38:18', '1'),
(87, 10, 6, 2, 7, 1003, '{\"_id\":\"10\",\"first_name\":\"Lauren\",\"last_name\":\"Fox\",\"utc_title\":\"UTC Board Secretary\",\"work_position\":\"Member\",\"work_organization\":\"Cozen O\'Connor\"}', ' Lauren Fox UTC Board Secretary Member Cozen O\'Connor ', '2018-08-28 18:38:18', '1'),
(88, 11, 6, 2, 7, 1004, '{\"_id\":\"11\",\"first_name\":\"Joann\",\"last_name\":\"Manuel\",\"utc_title\":\"Community Liaison\",\"work_position\":\"Executive Secretary\",\"work_organization\":\"CATCH, Inc.\"}', ' Joann Manuel Community Liaison Executive Secretary CATCH, Inc. ', '2018-08-28 18:38:18', '1'),
(89, 12, 6, 2, 7, 1005, '', '', '2018-08-28 18:38:18', ''),
(90, 7, 6, 2, 8, 1000, '{\"_id\":\"7\",\"first_name\":\"India\",\"last_name\":\"Blunt\",\"utc_title\":\"UTC Board Chair\",\"work_position\":\"Program Manager\",\"work_organization\":\"Lenfest\"}', ' India Blunt UTC Board Chair Program Manager Lenfest ', '2018-08-28 18:38:41', '1'),
(91, 8, 6, 2, 8, 1001, '{\"_id\":\"8\",\"first_name\":\"Jayne\",\"last_name\":\"Mariotti\",\"utc_title\":\"UTC Board Vice-Chair\",\"work_position\":\"Associate\",\"work_organization\":\"Ballard Spahr, LLP\"}', ' Jayne Mariotti UTC Board Vice-Chair Associate Ballard Spahr, LLP ', '2018-08-28 18:38:41', '1'),
(92, 9, 6, 2, 8, 1002, '{\"_id\":\"9\",\"first_name\":\"Katherine\",\"last_name\":\"Madonna\",\"utc_title\":\"UTC Board Treasurer\",\"work_position\":\"Director of Finance\",\"work_organization\":\"Department of OBGYN, Penn Medicine\"}', ' Katherine Madonna UTC Board Treasurer Director of Finance Department of OBGYN, Penn Medicine ', '2018-08-28 18:38:41', '1'),
(93, 10, 6, 2, 8, 1003, '{\"_id\":\"10\",\"first_name\":\"Lauren\",\"last_name\":\"Fox\",\"utc_title\":\"UTC Board Secretary\",\"work_position\":\"Member\",\"work_organization\":\"Cozen O\'Connor\"}', ' Lauren Fox UTC Board Secretary Member Cozen O\'Connor ', '2018-08-28 18:38:41', '1'),
(94, 11, 6, 2, 8, 1004, '{\"_id\":\"11\",\"first_name\":\"Joann\",\"last_name\":\"Manuel\",\"utc_title\":\"Community Liaison\",\"work_position\":\"Executive Secretary\",\"work_organization\":\"CATCH, Inc.\"}', ' Joann Manuel Community Liaison Executive Secretary CATCH, Inc. ', '2018-08-28 18:38:41', '1'),
(95, 12, 6, 2, 8, 1005, '{\"_id\":\"12\",\"first_name\":\"Keon\",\"last_name\":\"Mercedes-Liberato\",\"utc_title\":null,\"work_position\":\"Track Maintenance & Inspection\",\"work_organization\":\"National Railroad Passenger Corporation\"}', ' Keon Mercedes-Liberato  Track Maintenance & Inspection National Railroad Passenger Corporation ', '2018-08-28 18:38:41', '1'),
(97, 7, 6, 2, 9, 1000, '{\"_id\":\"7\",\"first_name\":\"India\",\"last_name\":\"Blunt\",\"utc_title\":\"UTC Board Chair\",\"work_position\":\"Program Manager\",\"work_organization\":\"Lenfest\"}', ' India Blunt UTC Board Chair Program Manager Lenfest ', '2018-08-28 18:39:18', '1'),
(98, 8, 6, 2, 9, 1001, '{\"_id\":\"8\",\"first_name\":\"Jayne\",\"last_name\":\"Mariotti\",\"utc_title\":\"UTC Board Vice-Chair\",\"work_position\":\"Associate\",\"work_organization\":\"Ballard Spahr, LLP\"}', ' Jayne Mariotti UTC Board Vice-Chair Associate Ballard Spahr, LLP ', '2018-08-28 18:39:18', '1'),
(99, 9, 6, 2, 9, 1002, '{\"_id\":\"9\",\"first_name\":\"Katherine\",\"last_name\":\"Madonna\",\"utc_title\":\"UTC Board Treasurer\",\"work_position\":\"Director of Finance\",\"work_organization\":\"Department of OBGYN, Penn Medicine\"}', ' Katherine Madonna UTC Board Treasurer Director of Finance Department of OBGYN, Penn Medicine ', '2018-08-28 18:39:18', '1'),
(100, 10, 6, 2, 9, 1003, '{\"_id\":\"10\",\"first_name\":\"Lauren\",\"last_name\":\"Fox\",\"utc_title\":\"UTC Board Secretary\",\"work_position\":\"Member\",\"work_organization\":\"Cozen O\'Connor\"}', ' Lauren Fox UTC Board Secretary Member Cozen O\'Connor ', '2018-08-28 18:39:18', '1'),
(101, 11, 6, 2, 9, 1004, '{\"_id\":\"11\",\"first_name\":\"Joann\",\"last_name\":\"Manuel\",\"utc_title\":\"Community Liaison\",\"work_position\":\"Executive Secretary\",\"work_organization\":\"CATCH, Inc.\"}', ' Joann Manuel Community Liaison Executive Secretary CATCH, Inc. ', '2018-08-28 18:39:18', '1'),
(102, 12, 6, 2, 9, 1005, '{\"_id\":\"12\",\"first_name\":\"Keon\",\"last_name\":\"Mercedes-Liberato\",\"utc_title\":null,\"work_position\":\"Track Maintenance & Inspection\",\"work_organization\":\"National Railroad Passenger Corporation\"}', ' Keon Mercedes-Liberato  Track Maintenance & Inspection National Railroad Passenger Corporation ', '2018-08-28 18:39:18', '1'),
(103, 13, 6, 2, 9, 1006, '{\"_id\":\"13\",\"first_name\":\"Tamar\",\"last_name\":\"Sharabi\",\"utc_title\":null,\"work_position\":\"Engineer II, Field Services\",\"work_organization\":\"Philadelphia Gas Works\"}', ' Tamar Sharabi  Engineer II, Field Services Philadelphia Gas Works ', '2018-08-28 18:39:18', '1'),
(106, 8, 6, 2, 10, 1001, '{\"_id\":\"8\",\"first_name\":\"Jayne\",\"last_name\":\"Mariotti\",\"utc_title\":\"UTC Board Vice-Chair\",\"work_position\":\"Associate\",\"work_organization\":\"Ballard Spahr, LLP\"}', ' Jayne Mariotti UTC Board Vice-Chair Associate Ballard Spahr, LLP ', '2018-08-28 18:39:41', '1'),
(107, 9, 6, 2, 10, 1002, '{\"_id\":\"9\",\"first_name\":\"Katherine\",\"last_name\":\"Madonna\",\"utc_title\":\"UTC Board Treasurer\",\"work_position\":\"Director of Finance\",\"work_organization\":\"Department of OBGYN, Penn Medicine\"}', ' Katherine Madonna UTC Board Treasurer Director of Finance Department of OBGYN, Penn Medicine ', '2018-08-28 18:39:41', '1'),
(108, 10, 6, 2, 10, 1003, '{\"_id\":\"10\",\"first_name\":\"Lauren\",\"last_name\":\"Fox\",\"utc_title\":\"UTC Board Secretary\",\"work_position\":\"Member\",\"work_organization\":\"Cozen O\'Connor\"}', ' Lauren Fox UTC Board Secretary Member Cozen O\'Connor ', '2018-08-28 18:39:41', '1'),
(109, 11, 6, 2, 10, 1004, '{\"_id\":\"11\",\"first_name\":\"Joann\",\"last_name\":\"Manuel\",\"utc_title\":\"Community Liaison\",\"work_position\":\"Executive Secretary\",\"work_organization\":\"CATCH, Inc.\"}', ' Joann Manuel Community Liaison Executive Secretary CATCH, Inc. ', '2018-08-28 18:39:41', '1'),
(110, 12, 6, 2, 10, 1005, '{\"_id\":\"12\",\"first_name\":\"Keon\",\"last_name\":\"Mercedes-Liberato\",\"utc_title\":null,\"work_position\":\"Track Maintenance & Inspection\",\"work_organization\":\"National Railroad Passenger Corporation\"}', ' Keon Mercedes-Liberato  Track Maintenance & Inspection National Railroad Passenger Corporation ', '2018-08-28 18:39:41', '1'),
(111, 13, 6, 2, 10, 1006, '{\"_id\":\"13\",\"first_name\":\"Tamar\",\"last_name\":\"Sharabi\",\"utc_title\":null,\"work_position\":\"Engineer II, Field Services\",\"work_organization\":\"Philadelphia Gas Works\"}', ' Tamar Sharabi  Engineer II, Field Services Philadelphia Gas Works ', '2018-08-28 18:39:41', '1'),
(112, 14, 6, 2, 10, 1007, '{\"_id\":\"14\",\"first_name\":\"Noelle\",\"last_name\":\"Warford\",\"utc_title\":null,\"work_position\":\"Executive Director\",\"work_organization\":\"Urban Tree Connection\"}', ' Noelle Warford  Executive Director Urban Tree Connection ', '2018-08-28 18:39:41', '1'),
(115, 8, 6, 2, 11, 1001, '{\"_id\":\"8\",\"first_name\":\"Jayne\",\"last_name\":\"Mariotti\",\"utc_title\":\"UTC Board Vice-Chair\",\"work_position\":\"Associate\",\"work_organization\":\"Ballard Spahr, LLP\"}', ' Jayne Mariotti UTC Board Vice-Chair Associate Ballard Spahr, LLP ', '2018-08-28 18:39:55', '1'),
(116, 9, 6, 2, 11, 1002, '{\"_id\":\"9\",\"first_name\":\"Katherine\",\"last_name\":\"Madonna\",\"utc_title\":\"UTC Board Treasurer\",\"work_position\":\"Director of Finance\",\"work_organization\":\"Department of OBGYN, Penn Medicine\"}', ' Katherine Madonna UTC Board Treasurer Director of Finance Department of OBGYN, Penn Medicine ', '2018-08-28 18:39:55', '1'),
(117, 10, 6, 2, 11, 1003, '{\"_id\":\"10\",\"first_name\":\"Lauren\",\"last_name\":\"Fox\",\"utc_title\":\"UTC Board Secretary\",\"work_position\":\"Member\",\"work_organization\":\"Cozen O\'Connor\"}', ' Lauren Fox UTC Board Secretary Member Cozen O\'Connor ', '2018-08-28 18:39:55', '1'),
(118, 11, 6, 2, 11, 1004, '{\"_id\":\"11\",\"first_name\":\"Joann\",\"last_name\":\"Manuel\",\"utc_title\":\"Community Liaison\",\"work_position\":\"Executive Secretary\",\"work_organization\":\"CATCH, Inc.\"}', ' Joann Manuel Community Liaison Executive Secretary CATCH, Inc. ', '2018-08-28 18:39:55', '1'),
(119, 12, 6, 2, 11, 1005, '{\"_id\":\"12\",\"first_name\":\"Keon\",\"last_name\":\"Mercedes-Liberato\",\"utc_title\":null,\"work_position\":\"Track Maintenance & Inspection\",\"work_organization\":\"National Railroad Passenger Corporation\"}', ' Keon Mercedes-Liberato  Track Maintenance & Inspection National Railroad Passenger Corporation ', '2018-08-28 18:39:55', '1'),
(120, 13, 6, 2, 11, 1006, '{\"_id\":\"13\",\"first_name\":\"Tamar\",\"last_name\":\"Sharabi\",\"utc_title\":null,\"work_position\":\"Engineer II, Field Services\",\"work_organization\":\"Philadelphia Gas Works\"}', ' Tamar Sharabi  Engineer II, Field Services Philadelphia Gas Works ', '2018-08-28 18:39:55', '1'),
(121, 14, 6, 2, 11, 1007, '{\"_id\":\"14\",\"first_name\":\"Noelle\",\"last_name\":\"Warford\",\"utc_title\":null,\"work_position\":\"Executive Director\",\"work_organization\":\"Urban Tree Connection\"}', ' Noelle Warford  Executive Director Urban Tree Connection ', '2018-08-28 18:39:55', '1'),
(122, 15, 6, 2, 11, 1008, '{\"_id\":\"15\",\"first_name\":\"Shane\",\"last_name\":\"Mayo\",\"utc_title\":null,\"work_position\":\"Manager of Administrative Services\",\"work_organization\":\"Philadelphia Gas Works\"}', ' Shane Mayo  Manager of Administrative Services Philadelphia Gas Works ', '2018-08-28 18:39:55', '1'),
(125, 17, 7, 2, 1, 1001, '', '', '2018-08-28 18:47:24', ''),
(126, 16, 7, 2, 2, 1000, '{\"_id\":\"16\",\"first_name\":\"Noelle\",\"last_name\":\"Warford\",\"position\":\"Executive Director\",\"email\":\"noelle@urbantreeconnection.org\"}', ' Noelle Warford Executive Director noelle@urbantreeconnection.org ', '2018-08-28 18:47:45', '1'),
(127, 17, 7, 2, 2, 1001, '{\"_id\":\"17\",\"first_name\":\"Nykisha\",\"last_name\":\"Madison\",\"position\":\"Farm Manager\",\"email\":\"nykisha@urbantreeconnection.org\"}', ' Nykisha Madison Farm Manager nykisha@urbantreeconnection.org ', '2018-08-28 18:47:45', '1'),
(128, 18, 7, 2, 2, 1002, '', '', '2018-08-28 18:47:45', ''),
(129, 16, 7, 2, 3, 1000, '{\"_id\":\"16\",\"first_name\":\"Noelle\",\"last_name\":\"Warford\",\"position\":\"Executive Director\",\"email\":\"noelle@urbantreeconnection.org\"}', ' Noelle Warford Executive Director noelle@urbantreeconnection.org ', '2018-08-28 18:48:04', '1'),
(130, 17, 7, 2, 3, 1001, '{\"_id\":\"17\",\"first_name\":\"Nykisha\",\"last_name\":\"Madison\",\"position\":\"Farm Manager\",\"email\":\"nykisha@urbantreeconnection.org\"}', ' Nykisha Madison Farm Manager nykisha@urbantreeconnection.org ', '2018-08-28 18:48:04', '1'),
(131, 18, 7, 2, 3, 1002, '{\"_id\":\"18\",\"first_name\":\"Amirah\",\"last_name\":\"Mitchell\",\"position\":\"Community Education Coordinator\",\"email\":\"amirah@urbantreeconnection.org\"}', ' Amirah Mitchell Community Education Coordinator amirah@urbantreeconnection.org ', '2018-08-28 18:48:04', '1'),
(132, 19, 7, 2, 3, 1003, '', '', '2018-08-28 18:48:04', ''),
(133, 16, 7, 2, 4, 1000, '{\"_id\":\"16\",\"first_name\":\"Noelle\",\"last_name\":\"Warford\",\"position\":\"Executive Director\",\"email\":\"noelle@urbantreeconnection.org\"}', ' Noelle Warford Executive Director noelle@urbantreeconnection.org ', '2018-08-28 18:48:35', '1'),
(134, 17, 7, 2, 4, 1001, '{\"_id\":\"17\",\"first_name\":\"Nykisha\",\"last_name\":\"Madison\",\"position\":\"Farm Manager\",\"email\":\"nykisha@urbantreeconnection.org\"}', ' Nykisha Madison Farm Manager nykisha@urbantreeconnection.org ', '2018-08-28 18:48:35', '1'),
(135, 18, 7, 2, 4, 1002, '{\"_id\":\"18\",\"first_name\":\"Amirah\",\"last_name\":\"Mitchell\",\"position\":\"Community Education Coordinator\",\"email\":\"amirah@urbantreeconnection.org\"}', ' Amirah Mitchell Community Education Coordinator amirah@urbantreeconnection.org ', '2018-08-28 18:48:35', '1'),
(136, 19, 7, 2, 4, 1003, '{\"_id\":\"19\",\"first_name\":\"Daniel\",\"last_name\":\"Reyes\",\"position\":\"Land Stewardship Coordinator\",\"email\":\"daniel@urbantreeconnection.org\"}', ' Daniel Reyes Land Stewardship Coordinator daniel@urbantreeconnection.org ', '2018-08-28 18:48:35', '1'),
(137, 20, 7, 2, 4, 1004, '', '', '2018-08-28 18:48:35', ''),
(138, 16, 7, 2, 5, 1000, '{\"_id\":\"16\",\"first_name\":\"Noelle\",\"last_name\":\"Warford\",\"position\":\"Executive Director\",\"email\":\"noelle@urbantreeconnection.org\"}', ' Noelle Warford Executive Director noelle@urbantreeconnection.org ', '2018-08-28 18:48:53', '1'),
(139, 17, 7, 2, 5, 1001, '{\"_id\":\"17\",\"first_name\":\"Nykisha\",\"last_name\":\"Madison\",\"position\":\"Farm Manager\",\"email\":\"nykisha@urbantreeconnection.org\"}', ' Nykisha Madison Farm Manager nykisha@urbantreeconnection.org ', '2018-08-28 18:48:53', '1'),
(140, 18, 7, 2, 5, 1002, '{\"_id\":\"18\",\"first_name\":\"Amirah\",\"last_name\":\"Mitchell\",\"position\":\"Community Education Coordinator\",\"email\":\"amirah@urbantreeconnection.org\"}', ' Amirah Mitchell Community Education Coordinator amirah@urbantreeconnection.org ', '2018-08-28 18:48:53', '1'),
(141, 19, 7, 2, 5, 1003, '{\"_id\":\"19\",\"first_name\":\"Daniel\",\"last_name\":\"Reyes\",\"position\":\"Land Stewardship Coordinator\",\"email\":\"daniel@urbantreeconnection.org\"}', ' Daniel Reyes Land Stewardship Coordinator daniel@urbantreeconnection.org ', '2018-08-28 18:48:53', '1'),
(142, 20, 7, 2, 5, 1004, '{\"_id\":\"20\",\"first_name\":\"Jahzara\",\"last_name\":\"Heredia\",\"position\":\"Lead Farmer\",\"email\":\"jahzara@urbantreeconnection.org\"}', ' Jahzara Heredia Lead Farmer jahzara@urbantreeconnection.org ', '2018-08-28 18:48:53', '1'),
(143, 21, 7, 2, 5, 1005, '', '', '2018-08-28 18:48:53', ''),
(144, 16, 7, 2, 6, 1000, '{\"_id\":\"16\",\"first_name\":\"Noelle\",\"last_name\":\"Warford\",\"position\":\"Executive Director\",\"email\":\"noelle@urbantreeconnection.org\"}', ' Noelle Warford Executive Director noelle@urbantreeconnection.org ', '2018-08-28 18:49:09', '1'),
(145, 17, 7, 2, 6, 1001, '{\"_id\":\"17\",\"first_name\":\"Nykisha\",\"last_name\":\"Madison\",\"position\":\"Farm Manager\",\"email\":\"nykisha@urbantreeconnection.org\"}', ' Nykisha Madison Farm Manager nykisha@urbantreeconnection.org ', '2018-08-28 18:49:09', '1'),
(146, 18, 7, 2, 6, 1002, '{\"_id\":\"18\",\"first_name\":\"Amirah\",\"last_name\":\"Mitchell\",\"position\":\"Community Education Coordinator\",\"email\":\"amirah@urbantreeconnection.org\"}', ' Amirah Mitchell Community Education Coordinator amirah@urbantreeconnection.org ', '2018-08-28 18:49:09', '1'),
(147, 19, 7, 2, 6, 1003, '{\"_id\":\"19\",\"first_name\":\"Daniel\",\"last_name\":\"Reyes\",\"position\":\"Land Stewardship Coordinator\",\"email\":\"daniel@urbantreeconnection.org\"}', ' Daniel Reyes Land Stewardship Coordinator daniel@urbantreeconnection.org ', '2018-08-28 18:49:09', '1'),
(148, 20, 7, 2, 6, 1004, '{\"_id\":\"20\",\"first_name\":\"Jahzara\",\"last_name\":\"Heredia\",\"position\":\"Lead Farmer\",\"email\":\"jahzara@urbantreeconnection.org\"}', ' Jahzara Heredia Lead Farmer jahzara@urbantreeconnection.org ', '2018-08-28 18:49:09', '1'),
(149, 21, 7, 2, 6, 1005, '{\"_id\":\"21\",\"first_name\":\"Mecca\",\"last_name\":\"Brooks\",\"position\":\"Food Distribution Coordinator\",\"email\":\"mecca@urbantreeconnection.org\"}', ' Mecca Brooks Food Distribution Coordinator mecca@urbantreeconnection.org ', '2018-08-28 18:49:09', '1'),
(150, 22, 7, 2, 6, 1006, '', '', '2018-08-28 18:49:09', ''),
(151, 16, 7, 2, 7, 1000, '{\"_id\":\"16\",\"first_name\":\"Noelle\",\"last_name\":\"Warford\",\"position\":\"Executive Director\",\"email\":\"noelle@urbantreeconnection.org\"}', ' Noelle Warford Executive Director noelle@urbantreeconnection.org ', '2018-08-28 18:49:22', '1'),
(152, 17, 7, 2, 7, 1001, '{\"_id\":\"17\",\"first_name\":\"Nykisha\",\"last_name\":\"Madison\",\"position\":\"Farm Manager\",\"email\":\"nykisha@urbantreeconnection.org\"}', ' Nykisha Madison Farm Manager nykisha@urbantreeconnection.org ', '2018-08-28 18:49:22', '1'),
(153, 18, 7, 2, 7, 1002, '{\"_id\":\"18\",\"first_name\":\"Amirah\",\"last_name\":\"Mitchell\",\"position\":\"Community Education Coordinator\",\"email\":\"amirah@urbantreeconnection.org\"}', ' Amirah Mitchell Community Education Coordinator amirah@urbantreeconnection.org ', '2018-08-28 18:49:22', '1'),
(154, 19, 7, 2, 7, 1003, '{\"_id\":\"19\",\"first_name\":\"Daniel\",\"last_name\":\"Reyes\",\"position\":\"Land Stewardship Coordinator\",\"email\":\"daniel@urbantreeconnection.org\"}', ' Daniel Reyes Land Stewardship Coordinator daniel@urbantreeconnection.org ', '2018-08-28 18:49:22', '1'),
(155, 20, 7, 2, 7, 1004, '{\"_id\":\"20\",\"first_name\":\"Jahzara\",\"last_name\":\"Heredia\",\"position\":\"Lead Farmer\",\"email\":\"jahzara@urbantreeconnection.org\"}', ' Jahzara Heredia Lead Farmer jahzara@urbantreeconnection.org ', '2018-08-28 18:49:22', '1'),
(156, 21, 7, 2, 7, 1005, '{\"_id\":\"21\",\"first_name\":\"Mecca\",\"last_name\":\"Brooks\",\"position\":\"Food Distribution Coordinator\",\"email\":\"mecca@urbantreeconnection.org\"}', ' Mecca Brooks Food Distribution Coordinator mecca@urbantreeconnection.org ', '2018-08-28 18:49:22', '1'),
(157, 22, 7, 2, 7, 1006, '{\"_id\":\"22\",\"first_name\":\"Lisa\",\"last_name\":\"Barkley\",\"position\":\"Community Liaison\",\"email\":\"lisa@urbantreeconnection.org\"}', ' Lisa Barkley Community Liaison lisa@urbantreeconnection.org ', '2018-08-28 18:49:22', '1'),
(158, 23, 7, 2, 7, 1007, '', '', '2018-08-28 18:49:22', ''),
(159, 16, 7, 2, 8, 1000, '{\"_id\":\"16\",\"first_name\":\"Noelle\",\"last_name\":\"Warford\",\"position\":\"Executive Director\",\"email\":\"noelle@urbantreeconnection.org\"}', ' Noelle Warford Executive Director noelle@urbantreeconnection.org ', '2018-08-28 18:49:39', '1'),
(160, 17, 7, 2, 8, 1001, '{\"_id\":\"17\",\"first_name\":\"Nykisha\",\"last_name\":\"Madison\",\"position\":\"Farm Manager\",\"email\":\"nykisha@urbantreeconnection.org\"}', ' Nykisha Madison Farm Manager nykisha@urbantreeconnection.org ', '2018-08-28 18:49:39', '1'),
(161, 18, 7, 2, 8, 1002, '{\"_id\":\"18\",\"first_name\":\"Amirah\",\"last_name\":\"Mitchell\",\"position\":\"Community Education Coordinator\",\"email\":\"amirah@urbantreeconnection.org\"}', ' Amirah Mitchell Community Education Coordinator amirah@urbantreeconnection.org ', '2018-08-28 18:49:39', '1'),
(162, 19, 7, 2, 8, 1003, '{\"_id\":\"19\",\"first_name\":\"Daniel\",\"last_name\":\"Reyes\",\"position\":\"Land Stewardship Coordinator\",\"email\":\"daniel@urbantreeconnection.org\"}', ' Daniel Reyes Land Stewardship Coordinator daniel@urbantreeconnection.org ', '2018-08-28 18:49:39', '1'),
(163, 20, 7, 2, 8, 1004, '{\"_id\":\"20\",\"first_name\":\"Jahzara\",\"last_name\":\"Heredia\",\"position\":\"Lead Farmer\",\"email\":\"jahzara@urbantreeconnection.org\"}', ' Jahzara Heredia Lead Farmer jahzara@urbantreeconnection.org ', '2018-08-28 18:49:39', '1'),
(164, 21, 7, 2, 8, 1005, '{\"_id\":\"21\",\"first_name\":\"Mecca\",\"last_name\":\"Brooks\",\"position\":\"Food Distribution Coordinator\",\"email\":\"mecca@urbantreeconnection.org\"}', ' Mecca Brooks Food Distribution Coordinator mecca@urbantreeconnection.org ', '2018-08-28 18:49:39', '1'),
(165, 22, 7, 2, 8, 1006, '{\"_id\":\"22\",\"first_name\":\"Lisa\",\"last_name\":\"Barkley\",\"position\":\"Community Liaison\",\"email\":\"lisa@urbantreeconnection.org\"}', ' Lisa Barkley Community Liaison lisa@urbantreeconnection.org ', '2018-08-28 18:49:39', '1'),
(166, 23, 7, 2, 8, 1007, '{\"_id\":\"23\",\"first_name\":\"Misako\",\"last_name\":\"Scott\",\"position\":\"Office Manager\",\"email\":\"misako@urbantreeconnection.org\"}', ' Misako Scott Office Manager misako@urbantreeconnection.org ', '2018-08-28 18:49:39', '1'),
(1078, 25, 8, 4, 20, 1001, '{\"_id\":\"25\",\"left_image\":null,\"left_image_width\":null,\"right_image\":null,\"right_image_width\":null,\"text\":{\"_flang\":\"html\",\"raw\":\"<h2>Community-Led Food Distribution<\\/h2>\\r\\n<p>Our produce is distributed through&nbsp;<a href=\\\"http:\\/\\/www.urbantreeconnection.org\\/visitus.php\\\">Community-Led Farmers Markets and a Community Supported Agriculture (CSA)<\\/a>&nbsp;program in West Philly where residents have limited options to fresh, quality produce. We engage customers with limited incomes, offering them produce at an affordable price, encouraging the use of subsidized payments like EBT\\/Access and Senior vouchers. All of our farm stands are uniquely operated by community members (youth and adults), and we provide on-going training and support. Our excess food is donated to local food banks and feeding programs in Haddington.<\\/p>\",\"processed\":\"<h2>Community-Led Food Distribution<\\/h2>\\r\\n<p>Our produce is distributed through&nbsp;<a href=\\\"http:\\/\\/www.urbantreeconnection.org\\/visitus.php\\\">Community-Led Farmers Markets and a Community Supported Agriculture (CSA)<\\/a>&nbsp;program in West Philly where residents have limited options to fresh, quality produce. We engage customers with limited incomes, offering them produce at an affordable price, encouraging the use of subsidized payments like EBT\\/Access and Senior vouchers. All of our farm stands are uniquely operated by community members (youth and adults), and we provide on-going training and support. Our excess food is donated to local food banks and feeding programs in Haddington.<\\/p>\"}}', '     Community-Led Food Distribution\r\nOur produce is distributed through&nbsp;Community-Led Farmers Markets and a Community Supported Agriculture (CSA)&nbsp;program in West Philly where residents have limited options to fresh, quality produce. We engage customers with limited incomes, offering them produce at an affordable price, encouraging the use of subsidized payments like EBT/Access and Senior vouchers. All of our farm stands are uniquely operated by community members (youth and adults), and we provide on-going training and support. Our excess food is donated to local food banks and feeding programs in Haddington. ', '2018-08-30 23:20:47', '1'),
(1082, 26, 8, 4, 21, 1002, '{\"_id\":\"26\",\"left_image\":{\"assetID\":\"38\",\"title\":\"Young Farmers\",\"_default\":\"\\/admin\\/resources\\/young-farmers.jpg\",\"bucket\":\"default\",\"path\":\"young-farmers.jpg\",\"size\":652800,\"w\":1649,\"h\":1236,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"112\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"young-farmers-thumb@2x.jpg\",\"size\":29425,\"mime\":\"image\\/jpeg\",\"assetID\":\"39\"}}},\"left_image_width\":\"250\",\"right_image\":null,\"right_image_width\":\"250\",\"text\":{\"_flang\":\"html\",\"raw\":\"<h2>Community Education & Land Stewardship<\\/h2>\\r\\n<p>Rooted in popular education methodologies, our multigenerational education programs promote health, wellness, and leadership development. For adults and families, we host hands-on workshops that cover topics such as healthy cooking, seed starting, and medicinal tinctures, and provide access to garden beds, and technical assistance and resources to local community gardeners. UTC has two multigenerational teaching gardens where we offer environmental education and gardening instruction.<\\/p>\\r\\n<p>UTC\\u2019s Youth Apprenticeship Program hires and mentors 10-12 high-school aged youth that primarily live in the Haddington.&nbsp; This unique five-month paid apprenticeship introduces Black and youth of color to urban agriculture and cultivates their leadership.&nbsp;Each Apprentice receives 1:1 mentorship from Staff in urban farming, community food distribution, and community education and outreach.<\\/p>\\r\\n<p>Urban Tree Connection has also incubated Neighborhood Foods Coop, a community-led initiative of local residents who helped found Neighborhood Foods Farm and other community gardens. The group meets monthly to share resources, host community events, and run the Neighborhood Foods farm stand.<\\/p>\",\"processed\":\"<h2>Community Education & Land Stewardship<\\/h2>\\r\\n<p>Rooted in popular education methodologies, our multigenerational education programs promote health, wellness, and leadership development. For adults and families, we host hands-on workshops that cover topics such as healthy cooking, seed starting, and medicinal tinctures, and provide access to garden beds, and technical assistance and resources to local community gardeners. UTC has two multigenerational teaching gardens where we offer environmental education and gardening instruction.<\\/p>\\r\\n<p>UTC\\u2019s Youth Apprenticeship Program hires and mentors 10-12 high-school aged youth that primarily live in the Haddington.&nbsp; This unique five-month paid apprenticeship introduces Black and youth of color to urban agriculture and cultivates their leadership.&nbsp;Each Apprentice receives 1:1 mentorship from Staff in urban farming, community food distribution, and community education and outreach.<\\/p>\\r\\n<p>Urban Tree Connection has also incubated Neighborhood Foods Coop, a community-led initiative of local residents who helped found Neighborhood Foods Farm and other community gardens. The group meets monthly to share resources, host community events, and run the Neighborhood Foods farm stand.<\\/p>\"}}', '  250  250 Community Education & Land Stewardship\r\nRooted in popular education methodologies, our multigenerational education programs promote health, wellness, and leadership development. For adults and families, we host hands-on workshops that cover topics such as healthy cooking, seed starting, and medicinal tinctures, and provide access to garden beds, and technical assistance and resources to local community gardeners. UTC has two multigenerational teaching gardens where we offer environmental education and gardening instruction.\r\nUTC’s Youth Apprenticeship Program hires and mentors 10-12 high-school aged youth that primarily live in the Haddington.&nbsp; This unique five-month paid apprenticeship introduces Black and youth of color to urban agriculture and cultivates their leadership.&nbsp;Each Apprentice receives 1:1 mentorship from Staff in urban farming, community food distribution, and community education and outreach.\r\nUrban Tree Connection has also incubated Neighborhood Foods Coop, a community-led initiative of local residents who helped found Neighborhood Foods Farm and other community gardens. The group meets monthly to share resources, host community events, and run the Neighborhood Foods farm stand. ', '2018-08-30 23:21:47', '1');
INSERT INTO `perch3_content_items` (`itemRowID`, `itemID`, `regionID`, `pageID`, `itemRev`, `itemOrder`, `itemJSON`, `itemSearch`, `itemUpdated`, `itemUpdatedBy`) VALUES
(1081, 25, 8, 4, 21, 1001, '{\"_id\":\"25\",\"left_image\":null,\"left_image_width\":null,\"right_image\":null,\"right_image_width\":null,\"text\":{\"_flang\":\"html\",\"raw\":\"<h2>Community-Led Food Distribution<\\/h2>\\r\\n<p>Our produce is distributed through&nbsp;<a href=\\\"http:\\/\\/www.urbantreeconnection.org\\/visitus.php\\\">Community-Led Farmers Markets and a Community Supported Agriculture (CSA)<\\/a>&nbsp;program in West Philly where residents have limited options to fresh, quality produce. We engage customers with limited incomes, offering them produce at an affordable price, encouraging the use of subsidized payments like EBT\\/Access and Senior vouchers. All of our farm stands are uniquely operated by community members (youth and adults), and we provide on-going training and support. Our excess food is donated to local food banks and feeding programs in Haddington.<\\/p>\",\"processed\":\"<h2>Community-Led Food Distribution<\\/h2>\\r\\n<p>Our produce is distributed through&nbsp;<a href=\\\"http:\\/\\/www.urbantreeconnection.org\\/visitus.php\\\">Community-Led Farmers Markets and a Community Supported Agriculture (CSA)<\\/a>&nbsp;program in West Philly where residents have limited options to fresh, quality produce. We engage customers with limited incomes, offering them produce at an affordable price, encouraging the use of subsidized payments like EBT\\/Access and Senior vouchers. All of our farm stands are uniquely operated by community members (youth and adults), and we provide on-going training and support. Our excess food is donated to local food banks and feeding programs in Haddington.<\\/p>\"}}', '     Community-Led Food Distribution\r\nOur produce is distributed through&nbsp;Community-Led Farmers Markets and a Community Supported Agriculture (CSA)&nbsp;program in West Philly where residents have limited options to fresh, quality produce. We engage customers with limited incomes, offering them produce at an affordable price, encouraging the use of subsidized payments like EBT/Access and Senior vouchers. All of our farm stands are uniquely operated by community members (youth and adults), and we provide on-going training and support. Our excess food is donated to local food banks and feeding programs in Haddington. ', '2018-08-30 23:21:47', '1'),
(1083, 24, 8, 4, 22, 1000, '{\"_id\":\"24\",\"left_image\":{\"assetID\":\"11\",\"title\":\"NF Farm\",\"_default\":\"\\/admin\\/resources\\/nf-farm.jpg\",\"bucket\":\"default\",\"path\":\"nf-farm.jpg\",\"size\":369096,\"w\":1024,\"h\":685,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"100\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"nf-farm-thumb@2x.jpg\",\"size\":40479,\"mime\":\"image\\/jpeg\",\"assetID\":\"12\"}}},\"left_image_width\":\"200\",\"right_image\":null,\"right_image_width\":\"200\",\"text\":{\"_flang\":\"html\",\"raw\":\"<h2>Urban Farming & Gardening<\\/h2>\\r\\n<p>In 2009, UTC and three block captains founded Neighborhood Foods Farm (NF) as a positive solution to food insecurity and the growing number of abandoned lots in the neighborhood. After significant remediation, NF is now a fully functioning \\u00be acre farm. We have also developed a community-based micro-farm in collaboration with First African Presbyterian Church, and 27 other vacant lots have been converted into pocket parks, communal growing plots, and educational spaces. Together, these sites comprise a neighborhood food system that annually raises over 8,000 pounds of chemical-free produce. We offer volunteer and apprenticeship opportunities at our farms, and host farm tours through the growing season.<\\/p>\",\"processed\":\"<h2>Urban Farming & Gardening<\\/h2>\\r\\n<p>In 2009, UTC and three block captains founded Neighborhood Foods Farm (NF) as a positive solution to food insecurity and the growing number of abandoned lots in the neighborhood. After significant remediation, NF is now a fully functioning \\u00be acre farm. We have also developed a community-based micro-farm in collaboration with First African Presbyterian Church, and 27 other vacant lots have been converted into pocket parks, communal growing plots, and educational spaces. Together, these sites comprise a neighborhood food system that annually raises over 8,000 pounds of chemical-free produce. We offer volunteer and apprenticeship opportunities at our farms, and host farm tours through the growing season.<\\/p>\"}}', '  200  200 Urban Farming & Gardening\r\nIn 2009, UTC and three block captains founded Neighborhood Foods Farm (NF) as a positive solution to food insecurity and the growing number of abandoned lots in the neighborhood. After significant remediation, NF is now a fully functioning ¾ acre farm. We have also developed a community-based micro-farm in collaboration with First African Presbyterian Church, and 27 other vacant lots have been converted into pocket parks, communal growing plots, and educational spaces. Together, these sites comprise a neighborhood food system that annually raises over 8,000 pounds of chemical-free produce. We offer volunteer and apprenticeship opportunities at our farms, and host farm tours through the growing season. ', '2018-08-30 23:22:06', '1'),
(1084, 25, 8, 4, 22, 1001, '{\"_id\":\"25\",\"left_image\":null,\"left_image_width\":null,\"right_image\":null,\"right_image_width\":null,\"text\":{\"_flang\":\"html\",\"raw\":\"<h2>Community-Led Food Distribution<\\/h2>\\r\\n<p>Our produce is distributed through&nbsp;<a href=\\\"http:\\/\\/www.urbantreeconnection.org\\/visitus.php\\\">Community-Led Farmers Markets and a Community Supported Agriculture (CSA)<\\/a>&nbsp;program in West Philly where residents have limited options to fresh, quality produce. We engage customers with limited incomes, offering them produce at an affordable price, encouraging the use of subsidized payments like EBT\\/Access and Senior vouchers. All of our farm stands are uniquely operated by community members (youth and adults), and we provide on-going training and support. Our excess food is donated to local food banks and feeding programs in Haddington.<\\/p>\",\"processed\":\"<h2>Community-Led Food Distribution<\\/h2>\\r\\n<p>Our produce is distributed through&nbsp;<a href=\\\"http:\\/\\/www.urbantreeconnection.org\\/visitus.php\\\">Community-Led Farmers Markets and a Community Supported Agriculture (CSA)<\\/a>&nbsp;program in West Philly where residents have limited options to fresh, quality produce. We engage customers with limited incomes, offering them produce at an affordable price, encouraging the use of subsidized payments like EBT\\/Access and Senior vouchers. All of our farm stands are uniquely operated by community members (youth and adults), and we provide on-going training and support. Our excess food is donated to local food banks and feeding programs in Haddington.<\\/p>\"}}', '     Community-Led Food Distribution\r\nOur produce is distributed through&nbsp;Community-Led Farmers Markets and a Community Supported Agriculture (CSA)&nbsp;program in West Philly where residents have limited options to fresh, quality produce. We engage customers with limited incomes, offering them produce at an affordable price, encouraging the use of subsidized payments like EBT/Access and Senior vouchers. All of our farm stands are uniquely operated by community members (youth and adults), and we provide on-going training and support. Our excess food is donated to local food banks and feeding programs in Haddington. ', '2018-08-30 23:22:06', '1'),
(1085, 26, 8, 4, 22, 1002, '{\"_id\":\"26\",\"left_image\":{\"assetID\":\"38\",\"title\":\"Young Farmers\",\"_default\":\"\\/admin\\/resources\\/young-farmers.jpg\",\"bucket\":\"default\",\"path\":\"young-farmers.jpg\",\"size\":652800,\"w\":1649,\"h\":1236,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"112\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"young-farmers-thumb@2x.jpg\",\"size\":29425,\"mime\":\"image\\/jpeg\",\"assetID\":\"39\"}}},\"left_image_width\":\"250\",\"right_image\":null,\"right_image_width\":\"200\",\"text\":{\"_flang\":\"html\",\"raw\":\"<h2>Community Education & Land Stewardship<\\/h2>\\r\\n<p>Rooted in popular education methodologies, our multigenerational education programs promote health, wellness, and leadership development. For adults and families, we host hands-on workshops that cover topics such as healthy cooking, seed starting, and medicinal tinctures, and provide access to garden beds, and technical assistance and resources to local community gardeners. UTC has two multigenerational teaching gardens where we offer environmental education and gardening instruction.<\\/p>\\r\\n<p>UTC\\u2019s Youth Apprenticeship Program hires and mentors 10-12 high-school aged youth that primarily live in the Haddington.&nbsp; This unique five-month paid apprenticeship introduces Black and youth of color to urban agriculture and cultivates their leadership.&nbsp;Each Apprentice receives 1:1 mentorship from Staff in urban farming, community food distribution, and community education and outreach.<\\/p>\\r\\n<p>Urban Tree Connection has also incubated Neighborhood Foods Coop, a community-led initiative of local residents who helped found Neighborhood Foods Farm and other community gardens. The group meets monthly to share resources, host community events, and run the Neighborhood Foods farm stand.<\\/p>\",\"processed\":\"<h2>Community Education & Land Stewardship<\\/h2>\\r\\n<p>Rooted in popular education methodologies, our multigenerational education programs promote health, wellness, and leadership development. For adults and families, we host hands-on workshops that cover topics such as healthy cooking, seed starting, and medicinal tinctures, and provide access to garden beds, and technical assistance and resources to local community gardeners. UTC has two multigenerational teaching gardens where we offer environmental education and gardening instruction.<\\/p>\\r\\n<p>UTC\\u2019s Youth Apprenticeship Program hires and mentors 10-12 high-school aged youth that primarily live in the Haddington.&nbsp; This unique five-month paid apprenticeship introduces Black and youth of color to urban agriculture and cultivates their leadership.&nbsp;Each Apprentice receives 1:1 mentorship from Staff in urban farming, community food distribution, and community education and outreach.<\\/p>\\r\\n<p>Urban Tree Connection has also incubated Neighborhood Foods Coop, a community-led initiative of local residents who helped found Neighborhood Foods Farm and other community gardens. The group meets monthly to share resources, host community events, and run the Neighborhood Foods farm stand.<\\/p>\"}}', '  250  200 Community Education & Land Stewardship\r\nRooted in popular education methodologies, our multigenerational education programs promote health, wellness, and leadership development. For adults and families, we host hands-on workshops that cover topics such as healthy cooking, seed starting, and medicinal tinctures, and provide access to garden beds, and technical assistance and resources to local community gardeners. UTC has two multigenerational teaching gardens where we offer environmental education and gardening instruction.\r\nUTC’s Youth Apprenticeship Program hires and mentors 10-12 high-school aged youth that primarily live in the Haddington.&nbsp; This unique five-month paid apprenticeship introduces Black and youth of color to urban agriculture and cultivates their leadership.&nbsp;Each Apprentice receives 1:1 mentorship from Staff in urban farming, community food distribution, and community education and outreach.\r\nUrban Tree Connection has also incubated Neighborhood Foods Coop, a community-led initiative of local residents who helped found Neighborhood Foods Farm and other community gardens. The group meets monthly to share resources, host community events, and run the Neighborhood Foods farm stand. ', '2018-08-30 23:22:07', '1'),
(1088, 26, 8, 4, 23, 1002, '{\"_id\":\"26\",\"left_image\":{\"assetID\":\"38\",\"title\":\"Young Farmers\",\"_default\":\"\\/admin\\/resources\\/young-farmers.jpg\",\"bucket\":\"default\",\"path\":\"young-farmers.jpg\",\"size\":652800,\"w\":1649,\"h\":1236,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"112\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"young-farmers-thumb@2x.jpg\",\"size\":29425,\"mime\":\"image\\/jpeg\",\"assetID\":\"39\"}}},\"left_image_width\":\"200\",\"right_image\":null,\"right_image_width\":\"200\",\"text\":{\"_flang\":\"html\",\"raw\":\"<h2>Community Education & Land Stewardship<\\/h2>\\r\\n<p>Rooted in popular education methodologies, our multigenerational education programs promote health, wellness, and leadership development. For adults and families, we host hands-on workshops that cover topics such as healthy cooking, seed starting, and medicinal tinctures, and provide access to garden beds, and technical assistance and resources to local community gardeners. UTC has two multigenerational teaching gardens where we offer environmental education and gardening instruction.<\\/p>\\r\\n<p>UTC\\u2019s Youth Apprenticeship Program hires and mentors 10-12 high-school aged youth that primarily live in the Haddington.&nbsp; This unique five-month paid apprenticeship introduces Black and youth of color to urban agriculture and cultivates their leadership.&nbsp;Each Apprentice receives 1:1 mentorship from Staff in urban farming, community food distribution, and community education and outreach.<\\/p>\\r\\n<p>Urban Tree Connection has also incubated Neighborhood Foods Coop, a community-led initiative of local residents who helped found Neighborhood Foods Farm and other community gardens. The group meets monthly to share resources, host community events, and run the Neighborhood Foods farm stand.<\\/p>\",\"processed\":\"<h2>Community Education & Land Stewardship<\\/h2>\\r\\n<p>Rooted in popular education methodologies, our multigenerational education programs promote health, wellness, and leadership development. For adults and families, we host hands-on workshops that cover topics such as healthy cooking, seed starting, and medicinal tinctures, and provide access to garden beds, and technical assistance and resources to local community gardeners. UTC has two multigenerational teaching gardens where we offer environmental education and gardening instruction.<\\/p>\\r\\n<p>UTC\\u2019s Youth Apprenticeship Program hires and mentors 10-12 high-school aged youth that primarily live in the Haddington.&nbsp; This unique five-month paid apprenticeship introduces Black and youth of color to urban agriculture and cultivates their leadership.&nbsp;Each Apprentice receives 1:1 mentorship from Staff in urban farming, community food distribution, and community education and outreach.<\\/p>\\r\\n<p>Urban Tree Connection has also incubated Neighborhood Foods Coop, a community-led initiative of local residents who helped found Neighborhood Foods Farm and other community gardens. The group meets monthly to share resources, host community events, and run the Neighborhood Foods farm stand.<\\/p>\"}}', '  200  200 Community Education & Land Stewardship\r\nRooted in popular education methodologies, our multigenerational education programs promote health, wellness, and leadership development. For adults and families, we host hands-on workshops that cover topics such as healthy cooking, seed starting, and medicinal tinctures, and provide access to garden beds, and technical assistance and resources to local community gardeners. UTC has two multigenerational teaching gardens where we offer environmental education and gardening instruction.\r\nUTC’s Youth Apprenticeship Program hires and mentors 10-12 high-school aged youth that primarily live in the Haddington.&nbsp; This unique five-month paid apprenticeship introduces Black and youth of color to urban agriculture and cultivates their leadership.&nbsp;Each Apprentice receives 1:1 mentorship from Staff in urban farming, community food distribution, and community education and outreach.\r\nUrban Tree Connection has also incubated Neighborhood Foods Coop, a community-led initiative of local residents who helped found Neighborhood Foods Farm and other community gardens. The group meets monthly to share resources, host community events, and run the Neighborhood Foods farm stand. ', '2018-08-30 23:25:36', '1'),
(1090, 25, 8, 4, 24, 1001, '{\"_id\":\"25\",\"left_image\":null,\"left_image_width\":null,\"right_image\":null,\"right_image_width\":null,\"text\":{\"_flang\":\"html\",\"raw\":\"<h2>Community-Led Food Distribution<\\/h2>\\r\\n<p>Our produce is distributed through&nbsp;<a href=\\\"http:\\/\\/www.urbantreeconnection.org\\/visitus.php\\\">Community-Led Farmers Markets and a Community Supported Agriculture (CSA)<\\/a>&nbsp;program in West Philly where residents have limited options to fresh, quality produce. We engage customers with limited incomes, offering them produce at an affordable price, encouraging the use of subsidized payments like EBT\\/Access and Senior vouchers. All of our farm stands are uniquely operated by community members (youth and adults), and we provide on-going training and support. Our excess food is donated to local food banks and feeding programs in Haddington.<\\/p>\",\"processed\":\"<h2>Community-Led Food Distribution<\\/h2>\\r\\n<p>Our produce is distributed through&nbsp;<a href=\\\"http:\\/\\/www.urbantreeconnection.org\\/visitus.php\\\">Community-Led Farmers Markets and a Community Supported Agriculture (CSA)<\\/a>&nbsp;program in West Philly where residents have limited options to fresh, quality produce. We engage customers with limited incomes, offering them produce at an affordable price, encouraging the use of subsidized payments like EBT\\/Access and Senior vouchers. All of our farm stands are uniquely operated by community members (youth and adults), and we provide on-going training and support. Our excess food is donated to local food banks and feeding programs in Haddington.<\\/p>\"}}', '     Community-Led Food Distribution\r\nOur produce is distributed through&nbsp;Community-Led Farmers Markets and a Community Supported Agriculture (CSA)&nbsp;program in West Philly where residents have limited options to fresh, quality produce. We engage customers with limited incomes, offering them produce at an affordable price, encouraging the use of subsidized payments like EBT/Access and Senior vouchers. All of our farm stands are uniquely operated by community members (youth and adults), and we provide on-going training and support. Our excess food is donated to local food banks and feeding programs in Haddington. ', '2018-08-30 23:26:13', '1'),
(1091, 26, 8, 4, 24, 1002, '{\"_id\":\"26\",\"left_image\":null,\"left_image_width\":null,\"right_image\":{\"assetID\":\"38\",\"title\":\"Young Farmers\",\"_default\":\"\\/admin\\/resources\\/young-farmers.jpg\",\"bucket\":\"default\",\"path\":\"young-farmers.jpg\",\"size\":652800,\"w\":1649,\"h\":1236,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"112\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"young-farmers-thumb@2x.jpg\",\"size\":29425,\"mime\":\"image\\/jpeg\",\"assetID\":\"39\"}}},\"right_image_width\":\"200\",\"text\":{\"_flang\":\"html\",\"raw\":\"<h2>Community Education & Land Stewardship<\\/h2>\\r\\n<p>Rooted in popular education methodologies, our multigenerational education programs promote health, wellness, and leadership development. For adults and families, we host hands-on workshops that cover topics such as healthy cooking, seed starting, and medicinal tinctures, and provide access to garden beds, and technical assistance and resources to local community gardeners. UTC has two multigenerational teaching gardens where we offer environmental education and gardening instruction.<\\/p>\\r\\n<p>UTC\\u2019s Youth Apprenticeship Program hires and mentors 10-12 high-school aged youth that primarily live in the Haddington.&nbsp; This unique five-month paid apprenticeship introduces Black and youth of color to urban agriculture and cultivates their leadership.&nbsp;Each Apprentice receives 1:1 mentorship from Staff in urban farming, community food distribution, and community education and outreach.<\\/p>\\r\\n<p>Urban Tree Connection has also incubated Neighborhood Foods Coop, a community-led initiative of local residents who helped found Neighborhood Foods Farm and other community gardens. The group meets monthly to share resources, host community events, and run the Neighborhood Foods farm stand.<\\/p>\",\"processed\":\"<h2>Community Education & Land Stewardship<\\/h2>\\r\\n<p>Rooted in popular education methodologies, our multigenerational education programs promote health, wellness, and leadership development. For adults and families, we host hands-on workshops that cover topics such as healthy cooking, seed starting, and medicinal tinctures, and provide access to garden beds, and technical assistance and resources to local community gardeners. UTC has two multigenerational teaching gardens where we offer environmental education and gardening instruction.<\\/p>\\r\\n<p>UTC\\u2019s Youth Apprenticeship Program hires and mentors 10-12 high-school aged youth that primarily live in the Haddington.&nbsp; This unique five-month paid apprenticeship introduces Black and youth of color to urban agriculture and cultivates their leadership.&nbsp;Each Apprentice receives 1:1 mentorship from Staff in urban farming, community food distribution, and community education and outreach.<\\/p>\\r\\n<p>Urban Tree Connection has also incubated Neighborhood Foods Coop, a community-led initiative of local residents who helped found Neighborhood Foods Farm and other community gardens. The group meets monthly to share resources, host community events, and run the Neighborhood Foods farm stand.<\\/p>\"}}', '    200 Community Education & Land Stewardship\r\nRooted in popular education methodologies, our multigenerational education programs promote health, wellness, and leadership development. For adults and families, we host hands-on workshops that cover topics such as healthy cooking, seed starting, and medicinal tinctures, and provide access to garden beds, and technical assistance and resources to local community gardeners. UTC has two multigenerational teaching gardens where we offer environmental education and gardening instruction.\r\nUTC’s Youth Apprenticeship Program hires and mentors 10-12 high-school aged youth that primarily live in the Haddington.&nbsp; This unique five-month paid apprenticeship introduces Black and youth of color to urban agriculture and cultivates their leadership.&nbsp;Each Apprentice receives 1:1 mentorship from Staff in urban farming, community food distribution, and community education and outreach.\r\nUrban Tree Connection has also incubated Neighborhood Foods Coop, a community-led initiative of local residents who helped found Neighborhood Foods Farm and other community gardens. The group meets monthly to share resources, host community events, and run the Neighborhood Foods farm stand. ', '2018-08-30 23:26:13', '1'),
(1093, 25, 8, 4, 25, 1001, '{\"_id\":\"25\",\"left_image\":null,\"left_image_width\":null,\"right_image\":null,\"right_image_width\":null,\"text\":{\"_flang\":\"html\",\"raw\":\"<h2>Community-Led Food Distribution<\\/h2>\\r\\n<p>Our produce is distributed through&nbsp;<a href=\\\"http:\\/\\/www.urbantreeconnection.org\\/visitus.php\\\">Community-Led Farmers Markets and a Community Supported Agriculture (CSA)<\\/a>&nbsp;program in West Philly where residents have limited options to fresh, quality produce. We engage customers with limited incomes, offering them produce at an affordable price, encouraging the use of subsidized payments like EBT\\/Access and Senior vouchers. All of our farm stands are uniquely operated by community members (youth and adults), and we provide on-going training and support. Our excess food is donated to local food banks and feeding programs in Haddington.<\\/p>\",\"processed\":\"<h2>Community-Led Food Distribution<\\/h2>\\r\\n<p>Our produce is distributed through&nbsp;<a href=\\\"http:\\/\\/www.urbantreeconnection.org\\/visitus.php\\\">Community-Led Farmers Markets and a Community Supported Agriculture (CSA)<\\/a>&nbsp;program in West Philly where residents have limited options to fresh, quality produce. We engage customers with limited incomes, offering them produce at an affordable price, encouraging the use of subsidized payments like EBT\\/Access and Senior vouchers. All of our farm stands are uniquely operated by community members (youth and adults), and we provide on-going training and support. Our excess food is donated to local food banks and feeding programs in Haddington.<\\/p>\"}}', '     Community-Led Food Distribution\r\nOur produce is distributed through&nbsp;Community-Led Farmers Markets and a Community Supported Agriculture (CSA)&nbsp;program in West Philly where residents have limited options to fresh, quality produce. We engage customers with limited incomes, offering them produce at an affordable price, encouraging the use of subsidized payments like EBT/Access and Senior vouchers. All of our farm stands are uniquely operated by community members (youth and adults), and we provide on-going training and support. Our excess food is donated to local food banks and feeding programs in Haddington. ', '2018-08-30 23:26:31', '1'),
(1094, 26, 8, 4, 25, 1002, '{\"_id\":\"26\",\"left_image\":null,\"left_image_width\":null,\"right_image\":{\"assetID\":\"38\",\"title\":\"Young Farmers\",\"_default\":\"\\/admin\\/resources\\/young-farmers.jpg\",\"bucket\":\"default\",\"path\":\"young-farmers.jpg\",\"size\":652800,\"w\":1649,\"h\":1236,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"112\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"young-farmers-thumb@2x.jpg\",\"size\":29425,\"mime\":\"image\\/jpeg\",\"assetID\":\"39\"}}},\"right_image_width\":\"300\",\"text\":{\"_flang\":\"html\",\"raw\":\"<h2>Community Education & Land Stewardship<\\/h2>\\r\\n<p>Rooted in popular education methodologies, our multigenerational education programs promote health, wellness, and leadership development. For adults and families, we host hands-on workshops that cover topics such as healthy cooking, seed starting, and medicinal tinctures, and provide access to garden beds, and technical assistance and resources to local community gardeners. UTC has two multigenerational teaching gardens where we offer environmental education and gardening instruction.<\\/p>\\r\\n<p>UTC\\u2019s Youth Apprenticeship Program hires and mentors 10-12 high-school aged youth that primarily live in the Haddington.&nbsp; This unique five-month paid apprenticeship introduces Black and youth of color to urban agriculture and cultivates their leadership.&nbsp;Each Apprentice receives 1:1 mentorship from Staff in urban farming, community food distribution, and community education and outreach.<\\/p>\\r\\n<p>Urban Tree Connection has also incubated Neighborhood Foods Coop, a community-led initiative of local residents who helped found Neighborhood Foods Farm and other community gardens. The group meets monthly to share resources, host community events, and run the Neighborhood Foods farm stand.<\\/p>\",\"processed\":\"<h2>Community Education & Land Stewardship<\\/h2>\\r\\n<p>Rooted in popular education methodologies, our multigenerational education programs promote health, wellness, and leadership development. For adults and families, we host hands-on workshops that cover topics such as healthy cooking, seed starting, and medicinal tinctures, and provide access to garden beds, and technical assistance and resources to local community gardeners. UTC has two multigenerational teaching gardens where we offer environmental education and gardening instruction.<\\/p>\\r\\n<p>UTC\\u2019s Youth Apprenticeship Program hires and mentors 10-12 high-school aged youth that primarily live in the Haddington.&nbsp; This unique five-month paid apprenticeship introduces Black and youth of color to urban agriculture and cultivates their leadership.&nbsp;Each Apprentice receives 1:1 mentorship from Staff in urban farming, community food distribution, and community education and outreach.<\\/p>\\r\\n<p>Urban Tree Connection has also incubated Neighborhood Foods Coop, a community-led initiative of local residents who helped found Neighborhood Foods Farm and other community gardens. The group meets monthly to share resources, host community events, and run the Neighborhood Foods farm stand.<\\/p>\"}}', '    300 Community Education & Land Stewardship\r\nRooted in popular education methodologies, our multigenerational education programs promote health, wellness, and leadership development. For adults and families, we host hands-on workshops that cover topics such as healthy cooking, seed starting, and medicinal tinctures, and provide access to garden beds, and technical assistance and resources to local community gardeners. UTC has two multigenerational teaching gardens where we offer environmental education and gardening instruction.\r\nUTC’s Youth Apprenticeship Program hires and mentors 10-12 high-school aged youth that primarily live in the Haddington.&nbsp; This unique five-month paid apprenticeship introduces Black and youth of color to urban agriculture and cultivates their leadership.&nbsp;Each Apprentice receives 1:1 mentorship from Staff in urban farming, community food distribution, and community education and outreach.\r\nUrban Tree Connection has also incubated Neighborhood Foods Coop, a community-led initiative of local residents who helped found Neighborhood Foods Farm and other community gardens. The group meets monthly to share resources, host community events, and run the Neighborhood Foods farm stand. ', '2018-08-30 23:26:31', '1'),
(188, 27, 9, 4, 0, 1000, '', '', '2018-08-30 17:43:20', ''),
(189, 27, 9, 4, 1, 1000, '{\"_id\":\"27\",\"image\":null,\"alt\":\"memorial garden\",\"_title\":\"memorial garden\"}', '  memorial garden ', '2018-08-30 17:44:14', '1'),
(190, 28, 10, 4, 0, 1000, '', '', '2018-08-30 17:44:23', ''),
(191, 28, 10, 4, 1, 1000, '{\"_id\":\"28\",\"image\":{\"assetID\":\"16\",\"title\":\"Adult Gardening Workshop\",\"_default\":\"\\/admin\\/resources\\/adult-gardening-workshop.jpg\",\"bucket\":\"default\",\"path\":\"adult-gardening-workshop.jpg\",\"size\":279832,\"w\":1024,\"h\":685,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"100\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"adult-gardening-workshop-thumb@2x.jpg\",\"size\":35354,\"mime\":\"image\\/jpeg\",\"assetID\":\"17\"},\"w800hc0\":{\"w\":800,\"h\":535,\"target_w\":\"800\",\"target_h\":false,\"crop\":false,\"density\":\"1\",\"path\":\"adult-gardening-workshop-w800.jpg\",\"size\":186976,\"mime\":\"image\\/jpeg\"}}},\"alt\":\"Adult Gardening Workshop\",\"_title\":\"Adult Gardening Workshop\"}', '  Adult Gardening Workshop ', '2018-08-30 17:45:01', '1'),
(192, 27, 9, 4, 2, 1000, '{\"_id\":\"27\",\"image\":{\"assetID\":\"14\",\"title\":\"Memorial Garden\",\"_default\":\"\\/admin\\/resources\\/memorial-garden.jpg\",\"bucket\":\"default\",\"path\":\"memorial-garden.jpg\",\"size\":346598,\"w\":1034,\"h\":776,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"112\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"memorial-garden-thumb@2x.jpg\",\"size\":35760,\"mime\":\"image\\/jpeg\",\"assetID\":\"15\"},\"w800hc0\":{\"w\":800,\"h\":600,\"target_w\":\"800\",\"target_h\":false,\"crop\":false,\"density\":\"1\",\"path\":\"memorial-garden-w800.jpg\",\"size\":210346,\"mime\":\"image\\/jpeg\"}}},\"alt\":\"memorial garden\",\"_title\":\"memorial garden\"}', '  memorial garden ', '2018-08-30 17:46:21', '1'),
(193, 29, 11, 4, 0, 1000, '', '', '2018-08-30 17:55:58', ''),
(194, 29, 11, 4, 1, 1000, '{\"_id\":\"29\",\"text\":{\"_flang\":\"html\",\"raw\":\"<p>UTC partners with Haddington residents to reclaim vacant land for community-building green spaces that bring people together to address community needs.<br><strong><br>Our current programs include:<\\/strong><\\/p>\",\"processed\":\"<p>UTC partners with Haddington residents to reclaim vacant land for community-building green spaces that bring people together to address community needs.<br><strong><br>Our current programs include:<\\/strong><\\/p>\"}}', ' UTC partners with Haddington residents to reclaim vacant land for community-building green spaces that bring people together to address community needs.Our current programs include: ', '2018-08-30 17:56:14', '1'),
(195, 27, 9, 4, 3, 1000, '{\"_id\":\"27\",\"image\":{\"assetID\":\"26\",\"title\":\"Adult Gardening Workshop\",\"_default\":\"\\/admin\\/resources\\/adult-gardening-workshop-2.jpg\",\"bucket\":\"default\",\"path\":\"adult-gardening-workshop-2.jpg\",\"size\":135585,\"w\":598,\"h\":400,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"100\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"adult-gardening-workshop-2-thumb@2x.jpg\",\"size\":37075,\"mime\":\"image\\/jpeg\",\"assetID\":\"27\"}}},\"alt\":\"memorial garden\",\"_title\":\"memorial garden\"}', '  memorial garden ', '2018-08-30 18:00:04', '1'),
(196, 28, 10, 4, 2, 1000, '{\"_id\":\"28\",\"image\":{\"assetID\":\"28\",\"title\":\"Memorial Garden\",\"_default\":\"\\/admin\\/resources\\/memorial-garden-1.jpg\",\"bucket\":\"default\",\"path\":\"memorial-garden-1.jpg\",\"size\":112486,\"w\":533,\"h\":400,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"112\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"memorial-garden-1-thumb@2x.jpg\",\"size\":36686,\"mime\":\"image\\/jpeg\",\"assetID\":\"29\"}}},\"alt\":\"Adult Gardening Workshop\",\"_title\":\"Adult Gardening Workshop\"}', '  Adult Gardening Workshop ', '2018-08-30 18:00:19', '1'),
(197, 27, 9, 4, 4, 1000, '{\"_id\":\"27\",\"image\":null,\"alt\":\"memorial garden\",\"_title\":\"memorial garden\"}', '  memorial garden ', '2018-08-30 18:00:45', '1'),
(200, 27, 9, 4, 5, 1000, '{\"_id\":\"27\",\"image\":{\"assetID\":\"32\",\"title\":\"Memorial Garden\",\"_default\":\"\\/admin\\/resources\\/memorial-garden-2.jpg\",\"bucket\":\"default\",\"path\":\"memorial-garden-2.jpg\",\"size\":112486,\"w\":533,\"h\":400,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"112\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"memorial-garden-2-thumb@2x.jpg\",\"size\":36686,\"mime\":\"image\\/jpeg\",\"assetID\":\"33\"}}},\"alt\":\"memorial garden\",\"_title\":\"memorial garden\"}', '  memorial garden ', '2018-08-30 18:01:36', '1'),
(198, 28, 10, 4, 3, 1000, '{\"_id\":\"28\",\"image\":null,\"alt\":\"Adult Gardening Workshop\",\"_title\":\"Adult Gardening Workshop\"}', '  Adult Gardening Workshop ', '2018-08-30 18:00:53', '1'),
(199, 28, 10, 4, 4, 1000, '{\"_id\":\"28\",\"image\":{\"assetID\":\"30\",\"title\":\"Adult Gardening Workshop\",\"_default\":\"\\/admin\\/resources\\/adult-gardening-workshop-3.jpg\",\"bucket\":\"default\",\"path\":\"adult-gardening-workshop-3.jpg\",\"size\":135585,\"w\":598,\"h\":400,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"100\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"adult-gardening-workshop-3-thumb@2x.jpg\",\"size\":37075,\"mime\":\"image\\/jpeg\",\"assetID\":\"31\"}}},\"alt\":\"Adult Gardening Workshop\",\"_title\":\"Adult Gardening Workshop\"}', '  Adult Gardening Workshop ', '2018-08-30 18:01:20', '1'),
(201, 27, 9, 4, 6, 1000, '{\"_id\":\"27\",\"image\":null,\"alt\":\"memorial garden\",\"_title\":\"memorial garden\"}', '  memorial garden ', '2018-08-30 18:02:26', '1'),
(202, 28, 10, 4, 5, 1000, '{\"_id\":\"28\",\"image\":null,\"alt\":\"Adult Gardening Workshop\",\"_title\":\"Adult Gardening Workshop\"}', '  Adult Gardening Workshop ', '2018-08-30 18:02:33', '1'),
(203, 27, 9, 4, 7, 1000, '{\"_id\":\"27\",\"image\":{\"assetID\":\"34\",\"title\":\"Adult Gardening Workshop\",\"_default\":\"\\/admin\\/resources\\/adult-gardening-workshop-4.jpg\",\"bucket\":\"default\",\"path\":\"adult-gardening-workshop-4.jpg\",\"size\":135585,\"w\":598,\"h\":400,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"100\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"adult-gardening-workshop-4-thumb@2x.jpg\",\"size\":37075,\"mime\":\"image\\/jpeg\",\"assetID\":\"35\"}}},\"alt\":\"memorial garden\",\"_title\":\"memorial garden\"}', '  memorial garden ', '2018-08-30 18:03:20', '1'),
(204, 28, 10, 4, 6, 1000, '{\"_id\":\"28\",\"image\":{\"assetID\":\"36\",\"title\":\"Memorial Garden\",\"_default\":\"\\/admin\\/resources\\/memorial-garden-3.jpg\",\"bucket\":\"default\",\"path\":\"memorial-garden-3.jpg\",\"size\":112486,\"w\":533,\"h\":400,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"112\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"memorial-garden-3-thumb@2x.jpg\",\"size\":36686,\"mime\":\"image\\/jpeg\",\"assetID\":\"37\"}}},\"alt\":\"Adult Gardening Workshop\",\"_title\":\"Adult Gardening Workshop\"}', '  Adult Gardening Workshop ', '2018-08-30 18:03:51', '1'),
(205, 30, 12, 5, 0, 1000, '', '', '2018-08-30 18:20:29', ''),
(206, 30, 12, 5, 1, 1000, '{\"_id\":\"30\",\"name\":\"Neighborhood Foods Farmers Market\",\"address\":\"53rd St. & Wyalusing Ave.\",\"frequency\":\"Every Saturday, 10am-2pm\",\"date_range\":\"May 12th - Nov 3rd\",\"notes\":null}', ' Neighborhood Foods Farmers Market 53rd St. & Wyalusing Ave. Every Saturday, 10am-2pm May 12th - Nov 3rd  ', '2018-08-30 18:21:29', '1'),
(207, 31, 12, 5, 1, 1001, '', '', '2018-08-30 18:21:29', ''),
(208, 30, 12, 5, 2, 1000, '{\"_id\":\"30\",\"name\":\"Neighborhood Foods Farmers Market\",\"address\":\"53rd St. & Wyalusing Ave.\",\"frequency\":\"Every Saturday, 10am-2pm\",\"date_range\":\"May 12th - Nov 3rd\",\"notes\":null}', ' Neighborhood Foods Farmers Market 53rd St. & Wyalusing Ave. Every Saturday, 10am-2pm May 12th - Nov 3rd  ', '2018-08-30 18:21:45', '1'),
(209, 31, 12, 5, 2, 1001, '{\"_id\":\"31\",\"name\":\"Neighborhood Foods Youth-Led Market\",\"address\":\"53rd St. & Wyalusing Ave.\",\"frequency\":\"Every Saturday, 10am-2pm\",\"date_range\":\"July 11th - August 29th\",\"notes\":null}', ' Neighborhood Foods Youth-Led Market 53rd St. & Wyalusing Ave. Every Saturday, 10am-2pm July 11th - August 29th  ', '2018-08-30 18:21:45', '1'),
(210, 32, 12, 5, 2, 1002, '', '', '2018-08-30 18:21:45', ''),
(211, 30, 12, 5, 3, 1000, '{\"_id\":\"30\",\"name\":\"Neighborhood Foods Farmers Market\",\"address\":\"53rd St. & Wyalusing Ave.\",\"frequency\":\"Every Saturday, 10am-2pm\",\"date_range\":\"May 12th - Nov 3rd\",\"notes\":null}', ' Neighborhood Foods Farmers Market 53rd St. & Wyalusing Ave. Every Saturday, 10am-2pm May 12th - Nov 3rd  ', '2018-08-30 18:21:59', '1'),
(212, 31, 12, 5, 3, 1001, '{\"_id\":\"31\",\"name\":\"Neighborhood Foods Youth-Led Market\",\"address\":\"53rd St. & Wyalusing Ave.\",\"frequency\":\"Every Saturday, 10am-2pm\",\"date_range\":\"July 11th - August 29th\",\"notes\":null}', ' Neighborhood Foods Youth-Led Market 53rd St. & Wyalusing Ave. Every Saturday, 10am-2pm July 11th - August 29th  ', '2018-08-30 18:21:59', '1'),
(213, 32, 12, 5, 3, 1002, '{\"_id\":\"32\",\"name\":\"Shepard Recreation Center Market\",\"address\":\"5700 Haverford Ave\",\"frequency\":\"Every Last Tuesday of the Month, 12pm-3pm\",\"date_range\":\"6\\/26, 7\\/31, 8\\/28, 9\\/25, & 10\\/30\",\"notes\":null}', ' Shepard Recreation Center Market 5700 Haverford Ave Every Last Tuesday of the Month, 12pm-3pm 6/26, 7/31, 8/28, 9/25, & 10/30  ', '2018-08-30 18:21:59', '1'),
(214, 33, 12, 5, 3, 1003, '', '', '2018-08-30 18:21:59', ''),
(215, 30, 12, 5, 4, 1000, '{\"_id\":\"30\",\"name\":\"Neighborhood Foods Farmers Market\",\"address\":\"53rd St. & Wyalusing Ave.\",\"frequency\":\"Every Saturday, 10am-2pm\",\"date_range\":\"May 12th - Nov 3rd\",\"notes\":null}', ' Neighborhood Foods Farmers Market 53rd St. & Wyalusing Ave. Every Saturday, 10am-2pm May 12th - Nov 3rd  ', '2018-08-30 18:22:12', '1'),
(216, 31, 12, 5, 4, 1001, '{\"_id\":\"31\",\"name\":\"Neighborhood Foods Youth-Led Market\",\"address\":\"53rd St. & Wyalusing Ave.\",\"frequency\":\"Every Saturday, 10am-2pm\",\"date_range\":\"July 11th - August 29th\",\"notes\":null}', ' Neighborhood Foods Youth-Led Market 53rd St. & Wyalusing Ave. Every Saturday, 10am-2pm July 11th - August 29th  ', '2018-08-30 18:22:12', '1'),
(217, 32, 12, 5, 4, 1002, '{\"_id\":\"32\",\"name\":\"Shepard Recreation Center Market\",\"address\":\"5700 Haverford Ave\",\"frequency\":\"Every Last Tuesday of the Month, 12pm-3pm\",\"date_range\":\"6\\/26, 7\\/31, 8\\/28, 9\\/25, & 10\\/30\",\"notes\":null}', ' Shepard Recreation Center Market 5700 Haverford Ave Every Last Tuesday of the Month, 12pm-3pm 6/26, 7/31, 8/28, 9/25, & 10/30  ', '2018-08-30 18:22:12', '1'),
(218, 33, 12, 5, 4, 1003, '{\"_id\":\"33\",\"name\":\"West Philly YMCA Market\",\"address\":\"5120 Chestnut Street\",\"frequency\":\"Every 1st and 3rd Friday, 10am-2pm\",\"date_range\":\"5\\/18, 6\\/1, 6\\/15, 7\\/6, 7\\/20, 8\\/3, 8\\/17, 9\\/7, 9\\/21, 10\\/5, 10\\/19\",\"notes\":null}', ' West Philly YMCA Market 5120 Chestnut Street Every 1st and 3rd Friday, 10am-2pm 5/18, 6/1, 6/15, 7/6, 7/20, 8/3, 8/17, 9/7, 9/21, 10/5, 10/19  ', '2018-08-30 18:22:12', '1'),
(219, 34, 12, 5, 4, 1004, '', '', '2018-08-30 18:22:12', ''),
(220, 30, 12, 5, 5, 1000, '{\"_id\":\"30\",\"name\":\"Neighborhood Foods Farmers Market\",\"address\":\"53rd St. & Wyalusing Ave.\",\"frequency\":\"Every Saturday, 10am-2pm\",\"date_range\":\"May 12th - Nov 3rd\",\"notes\":null}', ' Neighborhood Foods Farmers Market 53rd St. & Wyalusing Ave. Every Saturday, 10am-2pm May 12th - Nov 3rd  ', '2018-08-30 18:23:27', '1'),
(221, 31, 12, 5, 5, 1001, '{\"_id\":\"31\",\"name\":\"Neighborhood Foods Youth-Led Market\",\"address\":\"53rd St. & Wyalusing Ave.\",\"frequency\":\"Every Saturday, 10am-2pm\",\"date_range\":\"July 11th - August 29th\",\"notes\":null}', ' Neighborhood Foods Youth-Led Market 53rd St. & Wyalusing Ave. Every Saturday, 10am-2pm July 11th - August 29th  ', '2018-08-30 18:23:27', '1'),
(222, 32, 12, 5, 5, 1002, '{\"_id\":\"32\",\"name\":\"Shepard Recreation Center Market\",\"address\":\"5700 Haverford Ave\",\"frequency\":\"Every Last Tuesday of the Month, 12pm-3pm\",\"date_range\":\"6\\/26, 7\\/31, 8\\/28, 9\\/25, & 10\\/30\",\"notes\":null}', ' Shepard Recreation Center Market 5700 Haverford Ave Every Last Tuesday of the Month, 12pm-3pm 6/26, 7/31, 8/28, 9/25, & 10/30  ', '2018-08-30 18:23:27', '1'),
(223, 33, 12, 5, 5, 1003, '{\"_id\":\"33\",\"name\":\"West Philly YMCA Market\",\"address\":\"5120 Chestnut Street\",\"frequency\":\"Every 1st and 3rd Friday, 10am-2pm\",\"date_range\":\"5\\/18, 6\\/1, 6\\/15, 7\\/6, 7\\/20, 8\\/3, 8\\/17, 9\\/7, 9\\/21, 10\\/5, 10\\/19\",\"notes\":null}', ' West Philly YMCA Market 5120 Chestnut Street Every 1st and 3rd Friday, 10am-2pm 5/18, 6/1, 6/15, 7/6, 7/20, 8/3, 8/17, 9/7, 9/21, 10/5, 10/19  ', '2018-08-30 18:23:27', '1'),
(224, 34, 12, 5, 5, 1004, '', '', '2018-08-30 18:23:27', '1'),
(225, 30, 12, 5, 6, 1000, '{\"_id\":\"30\",\"name\":\"Neighborhood Foods Farmers Market\",\"address\":\"53rd St. & Wyalusing Ave.\",\"frequency\":\"Every Saturday, 10am-2pm\",\"date_range\":\"May 12th - Nov 3rd\",\"notes\":null}', ' Neighborhood Foods Farmers Market 53rd St. & Wyalusing Ave. Every Saturday, 10am-2pm May 12th - Nov 3rd  ', '2018-08-30 18:23:59', '1'),
(226, 31, 12, 5, 6, 1001, '{\"_id\":\"31\",\"name\":\"Neighborhood Foods Youth-Led Market\",\"address\":\"53rd St. & Wyalusing Ave.\",\"frequency\":\"Every Saturday, 10am-2pm\",\"date_range\":\"July 11th - August 29th\",\"notes\":null}', ' Neighborhood Foods Youth-Led Market 53rd St. & Wyalusing Ave. Every Saturday, 10am-2pm July 11th - August 29th  ', '2018-08-30 18:23:59', '1'),
(227, 32, 12, 5, 6, 1002, '{\"_id\":\"32\",\"name\":\"Shepard Recreation Center Market\",\"address\":\"5700 Haverford Ave\",\"frequency\":\"Every Last Tuesday of the Month, 12pm-3pm\",\"date_range\":\"6\\/26, 7\\/31, 8\\/28, 9\\/25, & 10\\/30\",\"notes\":null}', ' Shepard Recreation Center Market 5700 Haverford Ave Every Last Tuesday of the Month, 12pm-3pm 6/26, 7/31, 8/28, 9/25, & 10/30  ', '2018-08-30 18:23:59', '1'),
(228, 33, 12, 5, 6, 1003, '{\"_id\":\"33\",\"name\":\"West Philly YMCA Market\",\"address\":\"5120 Chestnut Street\",\"frequency\":\"Every 1st and 3rd Friday, 10am-2pm\",\"date_range\":\"5\\/18, 6\\/1, 6\\/15, 7\\/6, 7\\/20, 8\\/3, 8\\/17, 9\\/7, 9\\/21, 10\\/5, 10\\/19\",\"notes\":null}', ' West Philly YMCA Market 5120 Chestnut Street Every 1st and 3rd Friday, 10am-2pm 5/18, 6/1, 6/15, 7/6, 7/20, 8/3, 8/17, 9/7, 9/21, 10/5, 10/19  ', '2018-08-30 18:23:59', '1'),
(229, 34, 12, 5, 6, 1004, '', '', '2018-08-30 18:23:59', '1'),
(230, 30, 12, 5, 7, 1000, '{\"_id\":\"30\",\"name\":\"Neighborhood Foods Farmers Market\",\"address\":\"53rd St. & Wyalusing Ave.\",\"frequency\":\"Every Saturday, 10am-2pm\",\"date_range\":\"May 12th - Nov 3rd\",\"notes\":null}', ' Neighborhood Foods Farmers Market 53rd St. & Wyalusing Ave. Every Saturday, 10am-2pm May 12th - Nov 3rd  ', '2018-08-30 18:24:25', '1'),
(231, 31, 12, 5, 7, 1001, '{\"_id\":\"31\",\"name\":\"Neighborhood Foods Youth-Led Market\",\"address\":\"53rd St. & Wyalusing Ave.\",\"frequency\":\"Every Saturday, 10am-2pm\",\"date_range\":\"July 11th - August 29th\",\"notes\":null}', ' Neighborhood Foods Youth-Led Market 53rd St. & Wyalusing Ave. Every Saturday, 10am-2pm July 11th - August 29th  ', '2018-08-30 18:24:25', '1'),
(232, 32, 12, 5, 7, 1002, '{\"_id\":\"32\",\"name\":\"Shepard Recreation Center Market\",\"address\":\"5700 Haverford Ave\",\"frequency\":\"Every Last Tuesday of the Month, 12pm-3pm\",\"date_range\":\"6\\/26, 7\\/31, 8\\/28, 9\\/25, & 10\\/30\",\"notes\":null}', ' Shepard Recreation Center Market 5700 Haverford Ave Every Last Tuesday of the Month, 12pm-3pm 6/26, 7/31, 8/28, 9/25, & 10/30  ', '2018-08-30 18:24:25', '1'),
(233, 33, 12, 5, 7, 1003, '{\"_id\":\"33\",\"name\":\"West Philly YMCA Market\",\"address\":\"5120 Chestnut Street\",\"frequency\":\"Every 1st and 3rd Friday, 10am-2pm\",\"date_range\":\"5\\/18, 6\\/1, 6\\/15, 7\\/6, 7\\/20, 8\\/3, 8\\/17, 9\\/7, 9\\/21, 10\\/5, 10\\/19\",\"notes\":null}', ' West Philly YMCA Market 5120 Chestnut Street Every 1st and 3rd Friday, 10am-2pm 5/18, 6/1, 6/15, 7/6, 7/20, 8/3, 8/17, 9/7, 9/21, 10/5, 10/19  ', '2018-08-30 18:24:25', '1'),
(234, 34, 12, 5, 7, 1004, '', '', '2018-08-30 18:24:25', '1'),
(235, 35, 13, 5, 0, 1000, '', '', '2018-08-30 18:24:59', ''),
(236, 35, 13, 5, 1, 1000, '{\"_id\":\"35\",\"name\":\"Rittenhouse Farmers Market\",\"address\":\"Rittenhouse Square (18th St. & Walnut St.)\",\"frequency\":\"Every Saturday, 9a-3p\",\"date_range\":\"May 26th - November 10th\",\"notes\":\"This market accepts cash and FMNP vouchers\"}', ' Rittenhouse Farmers Market Rittenhouse Square (18th St. & Walnut St.) Every Saturday, 9a-3p May 26th - November 10th This market accepts cash and FMNP vouchers ', '2018-08-30 18:25:33', '1'),
(237, 36, 14, 6, 0, 1000, '', '', '2018-08-30 18:36:10', ''),
(238, 36, 14, 6, 1, 1000, '', '', '2018-08-30 18:37:06', '1');
INSERT INTO `perch3_content_items` (`itemRowID`, `itemID`, `regionID`, `pageID`, `itemRev`, `itemOrder`, `itemJSON`, `itemSearch`, `itemUpdated`, `itemUpdatedBy`) VALUES
(239, 36, 14, 6, 2, 1000, '{\"_id\":\"36\",\"text\":{\"_flang\":\"html\",\"raw\":\"<p>As a grassroots community organization, Urban Tree Connection relies on the partnership of individuals and groups across the Greater Philadelphia area to help us fulfill our mission. These critical partnerships take many forms, including volunteering, financial and in-kind donations, and direct collaboration on community programs.<br><br>Volunteers<br>Over the years we have had nearly 1000 volunteers annually support our operations at UTC. We appreciate all of volunteers from local high schools, colleges and universities, a broad range of faith based organizations, corporate entities, and other community-based organizations throughout the city. We especially appreciate all of the efforts and hours of volunteership our local neighbors in Haddington and in surrounding neighborhoods provide \\u2013 from working at the farm, to cleaning up the community gardens, to helping cook meals for community events. Our community-based volunteers are the glue that holds the work together!<\\/p>\",\"processed\":\"<p>As a grassroots community organization, Urban Tree Connection relies on the partnership of individuals and groups across the Greater Philadelphia area to help us fulfill our mission. These critical partnerships take many forms, including volunteering, financial and in-kind donations, and direct collaboration on community programs.<br><br>Volunteers<br>Over the years we have had nearly 1000 volunteers annually support our operations at UTC. We appreciate all of volunteers from local high schools, colleges and universities, a broad range of faith based organizations, corporate entities, and other community-based organizations throughout the city. We especially appreciate all of the efforts and hours of volunteership our local neighbors in Haddington and in surrounding neighborhoods provide \\u2013 from working at the farm, to cleaning up the community gardens, to helping cook meals for community events. Our community-based volunteers are the glue that holds the work together!<\\/p>\"}}', ' As a grassroots community organization, Urban Tree Connection relies on the partnership of individuals and groups across the Greater Philadelphia area to help us fulfill our mission. These critical partnerships take many forms, including volunteering, financial and in-kind donations, and direct collaboration on community programs.VolunteersOver the years we have had nearly 1000 volunteers annually support our operations at UTC. We appreciate all of volunteers from local high schools, colleges and universities, a broad range of faith based organizations, corporate entities, and other community-based organizations throughout the city. We especially appreciate all of the efforts and hours of volunteership our local neighbors in Haddington and in surrounding neighborhoods provide – from working at the farm, to cleaning up the community gardens, to helping cook meals for community events. Our community-based volunteers are the glue that holds the work together! ', '2018-08-30 18:37:11', '1'),
(240, 36, 14, 6, 3, 1000, '{\"_id\":\"36\",\"text\":{\"_flang\":\"html\",\"raw\":\"<p>As a grassroots community organization, Urban Tree Connection relies on the partnership of individuals and groups across the Greater Philadelphia area to help us fulfill our mission. These critical partnerships take many forms, including volunteering, financial and in-kind donations, and direct collaboration on community programs.<\\/p><h2>Volunteers<\\/h2><p>Over the years we have had nearly 1000 volunteers annually support our operations at UTC. We appreciate all of volunteers from local high schools, colleges and universities, a broad range of faith based organizations, corporate entities, and other community-based organizations throughout the city. We especially appreciate all of the efforts and hours of volunteership our local neighbors in Haddington and in surrounding neighborhoods provide \\u2013 from working at the farm, to cleaning up the community gardens, to helping cook meals for community events. Our community-based volunteers are the glue that holds the work together!<\\/p>\",\"processed\":\"<p>As a grassroots community organization, Urban Tree Connection relies on the partnership of individuals and groups across the Greater Philadelphia area to help us fulfill our mission. These critical partnerships take many forms, including volunteering, financial and in-kind donations, and direct collaboration on community programs.<\\/p><h2>Volunteers<\\/h2><p>Over the years we have had nearly 1000 volunteers annually support our operations at UTC. We appreciate all of volunteers from local high schools, colleges and universities, a broad range of faith based organizations, corporate entities, and other community-based organizations throughout the city. We especially appreciate all of the efforts and hours of volunteership our local neighbors in Haddington and in surrounding neighborhoods provide \\u2013 from working at the farm, to cleaning up the community gardens, to helping cook meals for community events. Our community-based volunteers are the glue that holds the work together!<\\/p>\"}}', ' As a grassroots community organization, Urban Tree Connection relies on the partnership of individuals and groups across the Greater Philadelphia area to help us fulfill our mission. These critical partnerships take many forms, including volunteering, financial and in-kind donations, and direct collaboration on community programs.VolunteersOver the years we have had nearly 1000 volunteers annually support our operations at UTC. We appreciate all of volunteers from local high schools, colleges and universities, a broad range of faith based organizations, corporate entities, and other community-based organizations throughout the city. We especially appreciate all of the efforts and hours of volunteership our local neighbors in Haddington and in surrounding neighborhoods provide – from working at the farm, to cleaning up the community gardens, to helping cook meals for community events. Our community-based volunteers are the glue that holds the work together! ', '2018-08-30 18:37:44', '1'),
(586, 52, 15, 6, 29, 1013, '{\"_id\":\"52\",\"text\":\"Henrietta Tower Wurts Memorial\",\"_title\":\"Henrietta Tower Wurts Memorial\"}', ' Henrietta Tower Wurts Memorial ', '2018-08-30 18:41:53', '1'),
(671, 56, 15, 6, 32, 1017, '{\"_id\":\"56\",\"text\":\"Leo & Peggy Pierce Foundation\",\"_title\":\"Leo & Peggy Pierce Foundation\"}', ' Leo & Peggy Pierce Foundation ', '2018-08-30 18:42:05', '1'),
(587, 53, 15, 6, 29, 1014, '{\"_id\":\"53\",\"text\":\"Wawa Foundation\",\"_title\":\"Wawa Foundation\"}', ' Wawa Foundation ', '2018-08-30 18:41:53', '1'),
(642, 55, 15, 6, 31, 1016, '{\"_id\":\"55\",\"text\":\"Lindback Foundation\",\"_title\":\"Lindback Foundation\"}', ' Lindback Foundation ', '2018-08-30 18:42:01', '1'),
(700, 56, 15, 6, 33, 1017, '{\"_id\":\"56\",\"text\":\"Leo & Peggy Pierce Foundation\",\"_title\":\"Leo & Peggy Pierce Foundation\"}', ' Leo & Peggy Pierce Foundation ', '2018-08-30 18:42:09', '1'),
(699, 55, 15, 6, 33, 1016, '{\"_id\":\"55\",\"text\":\"Lindback Foundation\",\"_title\":\"Lindback Foundation\"}', ' Lindback Foundation ', '2018-08-30 18:42:09', '1'),
(670, 55, 15, 6, 32, 1016, '{\"_id\":\"55\",\"text\":\"Lindback Foundation\",\"_title\":\"Lindback Foundation\"}', ' Lindback Foundation ', '2018-08-30 18:42:05', '1'),
(731, 57, 15, 6, 34, 1018, '{\"_id\":\"57\",\"text\":\"Louis N. Cassett Foundation\",\"_title\":\"Louis N. Cassett Foundation\"}', ' Louis N. Cassett Foundation ', '2018-08-30 18:42:13', '1'),
(730, 56, 15, 6, 34, 1017, '{\"_id\":\"56\",\"text\":\"Leo & Peggy Pierce Foundation\",\"_title\":\"Leo & Peggy Pierce Foundation\"}', ' Leo & Peggy Pierce Foundation ', '2018-08-30 18:42:13', '1'),
(763, 58, 15, 6, 35, 1019, '{\"_id\":\"58\",\"text\":\"Merck Family Fund\",\"_title\":\"Merck Family Fund\"}', ' Merck Family Fund ', '2018-08-30 18:43:27', '1'),
(764, 59, 15, 6, 35, 1020, '{\"_id\":\"59\",\"text\":\"Philadelphia Chapter of the Garden Club of America\",\"_title\":\"Philadelphia Chapter of the Garden Club of America\"}', ' Philadelphia Chapter of the Garden Club of America ', '2018-08-30 18:43:27', '1'),
(762, 57, 15, 6, 35, 1018, '{\"_id\":\"57\",\"text\":\"Louis N. Cassett Foundation\",\"_title\":\"Louis N. Cassett Foundation\"}', ' Louis N. Cassett Foundation ', '2018-08-30 18:43:27', '1'),
(796, 60, 15, 6, 36, 1021, '{\"_id\":\"60\",\"text\":\"Philadelphia Water Department\",\"_title\":\"Philadelphia Water Department\"}', ' Philadelphia Water Department ', '2018-08-30 18:43:30', '1'),
(793, 57, 15, 6, 36, 1018, '{\"_id\":\"57\",\"text\":\"Louis N. Cassett Foundation\",\"_title\":\"Louis N. Cassett Foundation\"}', ' Louis N. Cassett Foundation ', '2018-08-30 18:43:30', '1'),
(812, 72, 18, 7, 2, 1000, '{\"_id\":\"72\",\"text\":\"https:\\/\\/www.paypal.com\\/fundraiser\\/charity\\/1563272\",\"_title\":\"https:\\/\\/www.paypal.com\\/fundraiser\\/charity\\/1563272\"}', ' https://www.paypal.com/fundraiser/charity/1563272 ', '2018-08-30 18:54:11', '1'),
(810, 72, 18, 7, 0, 1000, '', '', '2018-08-30 18:53:01', ''),
(811, 72, 18, 7, 1, 1000, '{\"_id\":\"72\",\"text\":\"https:\\/\\/www.paypal.com\\/fundraiser\\/charity\\/1563272\",\"_title\":\"https:\\/\\/www.paypal.com\\/fundraiser\\/charity\\/1563272\"}', ' https://www.paypal.com/fundraiser/charity/1563272 ', '2018-08-30 18:53:03', '1'),
(794, 58, 15, 6, 36, 1019, '{\"_id\":\"58\",\"text\":\"Merck Family Fund\",\"_title\":\"Merck Family Fund\"}', ' Merck Family Fund ', '2018-08-30 18:43:30', '1'),
(585, 51, 15, 6, 29, 1012, '{\"_id\":\"51\",\"text\":\"First Presbyterian Church\",\"_title\":\"First Presbyterian Church\"}', ' First Presbyterian Church ', '2018-08-30 18:41:53', '1'),
(584, 50, 15, 6, 29, 1011, '{\"_id\":\"50\",\"text\":\"Dolfinger-McMahon Foundation\",\"_title\":\"Dolfinger-McMahon Foundation\"}', ' Dolfinger-McMahon Foundation ', '2018-08-30 18:41:53', '1'),
(583, 49, 15, 6, 29, 1010, '{\"_id\":\"49\",\"text\":\"Christopher Ludwick Foundation\",\"_title\":\"Christopher Ludwick Foundation\"}', ' Christopher Ludwick Foundation ', '2018-08-30 18:41:53', '1'),
(582, 48, 15, 6, 29, 1009, '{\"_id\":\"48\",\"text\":\"Claneil Foundation, Inc.\",\"_title\":\"Claneil Foundation, Inc.\"}', ' Claneil Foundation, Inc. ', '2018-08-30 18:41:53', '1'),
(613, 53, 15, 6, 30, 1014, '{\"_id\":\"53\",\"text\":\"Wawa Foundation\",\"_title\":\"Wawa Foundation\"}', ' Wawa Foundation ', '2018-08-30 18:41:57', '1'),
(612, 52, 15, 6, 30, 1013, '{\"_id\":\"52\",\"text\":\"Henrietta Tower Wurts Memorial\",\"_title\":\"Henrietta Tower Wurts Memorial\"}', ' Henrietta Tower Wurts Memorial ', '2018-08-30 18:41:57', '1'),
(611, 51, 15, 6, 30, 1012, '{\"_id\":\"51\",\"text\":\"First Presbyterian Church\",\"_title\":\"First Presbyterian Church\"}', ' First Presbyterian Church ', '2018-08-30 18:41:57', '1'),
(610, 50, 15, 6, 30, 1011, '{\"_id\":\"50\",\"text\":\"Dolfinger-McMahon Foundation\",\"_title\":\"Dolfinger-McMahon Foundation\"}', ' Dolfinger-McMahon Foundation ', '2018-08-30 18:41:57', '1'),
(609, 49, 15, 6, 30, 1010, '{\"_id\":\"49\",\"text\":\"Christopher Ludwick Foundation\",\"_title\":\"Christopher Ludwick Foundation\"}', ' Christopher Ludwick Foundation ', '2018-08-30 18:41:57', '1'),
(608, 48, 15, 6, 30, 1009, '{\"_id\":\"48\",\"text\":\"Claneil Foundation, Inc.\",\"_title\":\"Claneil Foundation, Inc.\"}', ' Claneil Foundation, Inc. ', '2018-08-30 18:41:57', '1'),
(640, 53, 15, 6, 31, 1014, '{\"_id\":\"53\",\"text\":\"Wawa Foundation\",\"_title\":\"Wawa Foundation\"}', ' Wawa Foundation ', '2018-08-30 18:42:01', '1'),
(639, 52, 15, 6, 31, 1013, '{\"_id\":\"52\",\"text\":\"Henrietta Tower Wurts Memorial\",\"_title\":\"Henrietta Tower Wurts Memorial\"}', ' Henrietta Tower Wurts Memorial ', '2018-08-30 18:42:01', '1'),
(638, 51, 15, 6, 31, 1012, '{\"_id\":\"51\",\"text\":\"First Presbyterian Church\",\"_title\":\"First Presbyterian Church\"}', ' First Presbyterian Church ', '2018-08-30 18:42:01', '1'),
(637, 50, 15, 6, 31, 1011, '{\"_id\":\"50\",\"text\":\"Dolfinger-McMahon Foundation\",\"_title\":\"Dolfinger-McMahon Foundation\"}', ' Dolfinger-McMahon Foundation ', '2018-08-30 18:42:01', '1'),
(636, 49, 15, 6, 31, 1010, '{\"_id\":\"49\",\"text\":\"Christopher Ludwick Foundation\",\"_title\":\"Christopher Ludwick Foundation\"}', ' Christopher Ludwick Foundation ', '2018-08-30 18:42:01', '1'),
(635, 48, 15, 6, 31, 1009, '{\"_id\":\"48\",\"text\":\"Claneil Foundation, Inc.\",\"_title\":\"Claneil Foundation, Inc.\"}', ' Claneil Foundation, Inc. ', '2018-08-30 18:42:01', '1'),
(634, 47, 15, 6, 31, 1008, '{\"_id\":\"47\",\"text\":\"Catholic Campaign for Human Development\",\"_title\":\"Catholic Campaign for Human Development\"}', ' Catholic Campaign for Human Development ', '2018-08-30 18:42:01', '1'),
(668, 53, 15, 6, 32, 1014, '{\"_id\":\"53\",\"text\":\"Wawa Foundation\",\"_title\":\"Wawa Foundation\"}', ' Wawa Foundation ', '2018-08-30 18:42:05', '1'),
(669, 54, 15, 6, 32, 1015, '{\"_id\":\"54\",\"text\":\"Independence Foundation\",\"_title\":\"Independence Foundation\"}', ' Independence Foundation ', '2018-08-30 18:42:05', '1'),
(667, 52, 15, 6, 32, 1013, '{\"_id\":\"52\",\"text\":\"Henrietta Tower Wurts Memorial\",\"_title\":\"Henrietta Tower Wurts Memorial\"}', ' Henrietta Tower Wurts Memorial ', '2018-08-30 18:42:05', '1'),
(666, 51, 15, 6, 32, 1012, '{\"_id\":\"51\",\"text\":\"First Presbyterian Church\",\"_title\":\"First Presbyterian Church\"}', ' First Presbyterian Church ', '2018-08-30 18:42:05', '1'),
(665, 50, 15, 6, 32, 1011, '{\"_id\":\"50\",\"text\":\"Dolfinger-McMahon Foundation\",\"_title\":\"Dolfinger-McMahon Foundation\"}', ' Dolfinger-McMahon Foundation ', '2018-08-30 18:42:05', '1'),
(663, 48, 15, 6, 32, 1009, '{\"_id\":\"48\",\"text\":\"Claneil Foundation, Inc.\",\"_title\":\"Claneil Foundation, Inc.\"}', ' Claneil Foundation, Inc. ', '2018-08-30 18:42:05', '1'),
(664, 49, 15, 6, 32, 1010, '{\"_id\":\"49\",\"text\":\"Christopher Ludwick Foundation\",\"_title\":\"Christopher Ludwick Foundation\"}', ' Christopher Ludwick Foundation ', '2018-08-30 18:42:05', '1'),
(697, 53, 15, 6, 33, 1014, '{\"_id\":\"53\",\"text\":\"Wawa Foundation\",\"_title\":\"Wawa Foundation\"}', ' Wawa Foundation ', '2018-08-30 18:42:09', '1'),
(698, 54, 15, 6, 33, 1015, '{\"_id\":\"54\",\"text\":\"Independence Foundation\",\"_title\":\"Independence Foundation\"}', ' Independence Foundation ', '2018-08-30 18:42:09', '1'),
(696, 52, 15, 6, 33, 1013, '{\"_id\":\"52\",\"text\":\"Henrietta Tower Wurts Memorial\",\"_title\":\"Henrietta Tower Wurts Memorial\"}', ' Henrietta Tower Wurts Memorial ', '2018-08-30 18:42:09', '1'),
(695, 51, 15, 6, 33, 1012, '{\"_id\":\"51\",\"text\":\"First Presbyterian Church\",\"_title\":\"First Presbyterian Church\"}', ' First Presbyterian Church ', '2018-08-30 18:42:09', '1'),
(694, 50, 15, 6, 33, 1011, '{\"_id\":\"50\",\"text\":\"Dolfinger-McMahon Foundation\",\"_title\":\"Dolfinger-McMahon Foundation\"}', ' Dolfinger-McMahon Foundation ', '2018-08-30 18:42:09', '1'),
(693, 49, 15, 6, 33, 1010, '{\"_id\":\"49\",\"text\":\"Christopher Ludwick Foundation\",\"_title\":\"Christopher Ludwick Foundation\"}', ' Christopher Ludwick Foundation ', '2018-08-30 18:42:09', '1'),
(692, 48, 15, 6, 33, 1009, '{\"_id\":\"48\",\"text\":\"Claneil Foundation, Inc.\",\"_title\":\"Claneil Foundation, Inc.\"}', ' Claneil Foundation, Inc. ', '2018-08-30 18:42:09', '1'),
(732, 58, 15, 6, 34, 1019, '{\"_id\":\"58\",\"text\":\"Merck Family Fund\",\"_title\":\"Merck Family Fund\"}', ' Merck Family Fund ', '2018-08-30 18:42:13', '1'),
(729, 55, 15, 6, 34, 1016, '{\"_id\":\"55\",\"text\":\"Lindback Foundation\",\"_title\":\"Lindback Foundation\"}', ' Lindback Foundation ', '2018-08-30 18:42:13', '1'),
(728, 54, 15, 6, 34, 1015, '{\"_id\":\"54\",\"text\":\"Independence Foundation\",\"_title\":\"Independence Foundation\"}', ' Independence Foundation ', '2018-08-30 18:42:13', '1'),
(727, 53, 15, 6, 34, 1014, '{\"_id\":\"53\",\"text\":\"Wawa Foundation\",\"_title\":\"Wawa Foundation\"}', ' Wawa Foundation ', '2018-08-30 18:42:13', '1'),
(726, 52, 15, 6, 34, 1013, '{\"_id\":\"52\",\"text\":\"Henrietta Tower Wurts Memorial\",\"_title\":\"Henrietta Tower Wurts Memorial\"}', ' Henrietta Tower Wurts Memorial ', '2018-08-30 18:42:13', '1'),
(725, 51, 15, 6, 34, 1012, '{\"_id\":\"51\",\"text\":\"First Presbyterian Church\",\"_title\":\"First Presbyterian Church\"}', ' First Presbyterian Church ', '2018-08-30 18:42:13', '1'),
(724, 50, 15, 6, 34, 1011, '{\"_id\":\"50\",\"text\":\"Dolfinger-McMahon Foundation\",\"_title\":\"Dolfinger-McMahon Foundation\"}', ' Dolfinger-McMahon Foundation ', '2018-08-30 18:42:13', '1'),
(723, 49, 15, 6, 34, 1010, '{\"_id\":\"49\",\"text\":\"Christopher Ludwick Foundation\",\"_title\":\"Christopher Ludwick Foundation\"}', ' Christopher Ludwick Foundation ', '2018-08-30 18:42:13', '1'),
(722, 48, 15, 6, 34, 1009, '{\"_id\":\"48\",\"text\":\"Claneil Foundation, Inc.\",\"_title\":\"Claneil Foundation, Inc.\"}', ' Claneil Foundation, Inc. ', '2018-08-30 18:42:13', '1'),
(761, 56, 15, 6, 35, 1017, '{\"_id\":\"56\",\"text\":\"Leo & Peggy Pierce Foundation\",\"_title\":\"Leo & Peggy Pierce Foundation\"}', ' Leo & Peggy Pierce Foundation ', '2018-08-30 18:43:27', '1'),
(760, 55, 15, 6, 35, 1016, '{\"_id\":\"55\",\"text\":\"Lindback Foundation\",\"_title\":\"Lindback Foundation\"}', ' Lindback Foundation ', '2018-08-30 18:43:27', '1'),
(759, 54, 15, 6, 35, 1015, '{\"_id\":\"54\",\"text\":\"Independence Foundation\",\"_title\":\"Independence Foundation\"}', ' Independence Foundation ', '2018-08-30 18:43:27', '1'),
(758, 53, 15, 6, 35, 1014, '{\"_id\":\"53\",\"text\":\"Wawa Foundation\",\"_title\":\"Wawa Foundation\"}', ' Wawa Foundation ', '2018-08-30 18:43:27', '1'),
(757, 52, 15, 6, 35, 1013, '{\"_id\":\"52\",\"text\":\"Henrietta Tower Wurts Memorial\",\"_title\":\"Henrietta Tower Wurts Memorial\"}', ' Henrietta Tower Wurts Memorial ', '2018-08-30 18:43:27', '1'),
(756, 51, 15, 6, 35, 1012, '{\"_id\":\"51\",\"text\":\"First Presbyterian Church\",\"_title\":\"First Presbyterian Church\"}', ' First Presbyterian Church ', '2018-08-30 18:43:27', '1'),
(755, 50, 15, 6, 35, 1011, '{\"_id\":\"50\",\"text\":\"Dolfinger-McMahon Foundation\",\"_title\":\"Dolfinger-McMahon Foundation\"}', ' Dolfinger-McMahon Foundation ', '2018-08-30 18:43:27', '1'),
(754, 49, 15, 6, 35, 1010, '{\"_id\":\"49\",\"text\":\"Christopher Ludwick Foundation\",\"_title\":\"Christopher Ludwick Foundation\"}', ' Christopher Ludwick Foundation ', '2018-08-30 18:43:27', '1'),
(753, 48, 15, 6, 35, 1009, '{\"_id\":\"48\",\"text\":\"Claneil Foundation, Inc.\",\"_title\":\"Claneil Foundation, Inc.\"}', ' Claneil Foundation, Inc. ', '2018-08-30 18:43:27', '1'),
(795, 59, 15, 6, 36, 1020, '{\"_id\":\"59\",\"text\":\"Philadelphia Chapter of the Garden Club of America\",\"_title\":\"Philadelphia Chapter of the Garden Club of America\"}', ' Philadelphia Chapter of the Garden Club of America ', '2018-08-30 18:43:30', '1'),
(791, 55, 15, 6, 36, 1016, '{\"_id\":\"55\",\"text\":\"Lindback Foundation\",\"_title\":\"Lindback Foundation\"}', ' Lindback Foundation ', '2018-08-30 18:43:30', '1'),
(790, 54, 15, 6, 36, 1015, '{\"_id\":\"54\",\"text\":\"Independence Foundation\",\"_title\":\"Independence Foundation\"}', ' Independence Foundation ', '2018-08-30 18:43:30', '1'),
(789, 53, 15, 6, 36, 1014, '{\"_id\":\"53\",\"text\":\"Wawa Foundation\",\"_title\":\"Wawa Foundation\"}', ' Wawa Foundation ', '2018-08-30 18:43:30', '1'),
(788, 52, 15, 6, 36, 1013, '{\"_id\":\"52\",\"text\":\"Henrietta Tower Wurts Memorial\",\"_title\":\"Henrietta Tower Wurts Memorial\"}', ' Henrietta Tower Wurts Memorial ', '2018-08-30 18:43:30', '1'),
(787, 51, 15, 6, 36, 1012, '{\"_id\":\"51\",\"text\":\"First Presbyterian Church\",\"_title\":\"First Presbyterian Church\"}', ' First Presbyterian Church ', '2018-08-30 18:43:30', '1'),
(786, 50, 15, 6, 36, 1011, '{\"_id\":\"50\",\"text\":\"Dolfinger-McMahon Foundation\",\"_title\":\"Dolfinger-McMahon Foundation\"}', ' Dolfinger-McMahon Foundation ', '2018-08-30 18:43:30', '1'),
(785, 49, 15, 6, 36, 1010, '{\"_id\":\"49\",\"text\":\"Christopher Ludwick Foundation\",\"_title\":\"Christopher Ludwick Foundation\"}', ' Christopher Ludwick Foundation ', '2018-08-30 18:43:30', '1'),
(809, 71, 17, 7, 2, 1000, '{\"_id\":\"71\",\"text\":{\"_flang\":\"html\",\"raw\":\"<p>Click on our PayPal donation button below, and make a gift using your MasterCard, Visa, American Express, or Discover card:<\\/p>\",\"processed\":\"<p>Click on our PayPal donation button below, and make a gift using your MasterCard, Visa, American Express, or Discover card:<\\/p>\"}}', ' Click on our PayPal donation button below, and make a gift using your MasterCard, Visa, American Express, or Discover card: ', '2018-08-30 18:52:41', '1'),
(807, 71, 17, 7, 0, 1000, '', '', '2018-08-30 18:52:17', ''),
(808, 71, 17, 7, 1, 1000, '{\"_id\":\"71\",\"text\":{\"_flang\":\"html\",\"raw\":\"<p>Click on our PayPal donation button below, and make a gift using your MasterCard, Visa, American Express, or Discover card:<\\/p>\",\"processed\":\"<p>Click on our PayPal donation button below, and make a gift using your MasterCard, Visa, American Express, or Discover card:<\\/p>\"}}', ' Click on our PayPal donation button below, and make a gift using your MasterCard, Visa, American Express, or Discover card: ', '2018-08-30 18:52:22', '1'),
(784, 48, 15, 6, 36, 1009, '{\"_id\":\"48\",\"text\":\"Claneil Foundation, Inc.\",\"_title\":\"Claneil Foundation, Inc.\"}', ' Claneil Foundation, Inc. ', '2018-08-30 18:43:30', '1'),
(581, 47, 15, 6, 29, 1008, '{\"_id\":\"47\",\"text\":\"Catholic Campaign for Human Development\",\"_title\":\"Catholic Campaign for Human Development\"}', ' Catholic Campaign for Human Development ', '2018-08-30 18:41:53', '1'),
(580, 46, 15, 6, 29, 1007, '{\"_id\":\"46\",\"text\":\"Cassett Foundation\",\"_title\":\"Cassett Foundation\"}', ' Cassett Foundation ', '2018-08-30 18:41:53', '1'),
(579, 45, 15, 6, 29, 1006, '{\"_id\":\"45\",\"text\":\"Bryn Mawr Presbyterian Church\",\"_title\":\"Bryn Mawr Presbyterian Church\"}', ' Bryn Mawr Presbyterian Church ', '2018-08-30 18:41:53', '1'),
(578, 44, 15, 6, 29, 1005, '{\"_id\":\"44\",\"text\":\"Bread & Roses Community Fund\",\"_title\":\"Bread & Roses Community Fund\"}', ' Bread & Roses Community Fund ', '2018-08-30 18:41:53', '1'),
(577, 43, 15, 6, 29, 1004, '{\"_id\":\"43\",\"text\":\"Berkowitz Family Foundation\",\"_title\":\"Berkowitz Family Foundation\"}', ' Berkowitz Family Foundation ', '2018-08-30 18:41:53', '1'),
(576, 42, 15, 6, 29, 1003, '{\"_id\":\"42\",\"text\":\"Barra Foundation\",\"_title\":\"Barra Foundation\"}', ' Barra Foundation ', '2018-08-30 18:41:53', '1'),
(575, 41, 15, 6, 29, 1002, '{\"_id\":\"41\",\"text\":\"Allen Hilles Fund\",\"_title\":\"Allen Hilles Fund\"}', ' Allen Hilles Fund ', '2018-08-30 18:41:53', '1'),
(574, 40, 15, 6, 29, 1001, '{\"_id\":\"40\",\"text\":\"Alfred and Mary Douty Foundation\",\"_title\":\"Alfred and Mary Douty Foundation\"}', ' Alfred and Mary Douty Foundation ', '2018-08-30 18:41:53', '1'),
(573, 39, 15, 6, 29, 1000, '{\"_id\":\"39\",\"text\":\"1830 Family Foundation\",\"_title\":\"1830 Family Foundation\"}', ' 1830 Family Foundation ', '2018-08-30 18:41:53', '1'),
(614, 54, 15, 6, 30, 1015, '{\"_id\":\"54\",\"text\":\"Independence Foundation\",\"_title\":\"Independence Foundation\"}', ' Independence Foundation ', '2018-08-30 18:41:57', '1'),
(607, 47, 15, 6, 30, 1008, '{\"_id\":\"47\",\"text\":\"Catholic Campaign for Human Development\",\"_title\":\"Catholic Campaign for Human Development\"}', ' Catholic Campaign for Human Development ', '2018-08-30 18:41:57', '1'),
(606, 46, 15, 6, 30, 1007, '{\"_id\":\"46\",\"text\":\"Cassett Foundation\",\"_title\":\"Cassett Foundation\"}', ' Cassett Foundation ', '2018-08-30 18:41:57', '1'),
(605, 45, 15, 6, 30, 1006, '{\"_id\":\"45\",\"text\":\"Bryn Mawr Presbyterian Church\",\"_title\":\"Bryn Mawr Presbyterian Church\"}', ' Bryn Mawr Presbyterian Church ', '2018-08-30 18:41:57', '1'),
(604, 44, 15, 6, 30, 1005, '{\"_id\":\"44\",\"text\":\"Bread & Roses Community Fund\",\"_title\":\"Bread & Roses Community Fund\"}', ' Bread & Roses Community Fund ', '2018-08-30 18:41:57', '1'),
(603, 43, 15, 6, 30, 1004, '{\"_id\":\"43\",\"text\":\"Berkowitz Family Foundation\",\"_title\":\"Berkowitz Family Foundation\"}', ' Berkowitz Family Foundation ', '2018-08-30 18:41:57', '1'),
(602, 42, 15, 6, 30, 1003, '{\"_id\":\"42\",\"text\":\"Barra Foundation\",\"_title\":\"Barra Foundation\"}', ' Barra Foundation ', '2018-08-30 18:41:57', '1'),
(601, 41, 15, 6, 30, 1002, '{\"_id\":\"41\",\"text\":\"Allen Hilles Fund\",\"_title\":\"Allen Hilles Fund\"}', ' Allen Hilles Fund ', '2018-08-30 18:41:57', '1'),
(600, 40, 15, 6, 30, 1001, '{\"_id\":\"40\",\"text\":\"Alfred and Mary Douty Foundation\",\"_title\":\"Alfred and Mary Douty Foundation\"}', ' Alfred and Mary Douty Foundation ', '2018-08-30 18:41:57', '1'),
(598, 64, 15, 6, 29, 1025, '', '', '2018-08-30 18:41:53', ''),
(599, 39, 15, 6, 30, 1000, '{\"_id\":\"39\",\"text\":\"1830 Family Foundation\",\"_title\":\"1830 Family Foundation\"}', ' 1830 Family Foundation ', '2018-08-30 18:41:57', '1'),
(641, 54, 15, 6, 31, 1015, '{\"_id\":\"54\",\"text\":\"Independence Foundation\",\"_title\":\"Independence Foundation\"}', ' Independence Foundation ', '2018-08-30 18:42:01', '1'),
(633, 46, 15, 6, 31, 1007, '{\"_id\":\"46\",\"text\":\"Cassett Foundation\",\"_title\":\"Cassett Foundation\"}', ' Cassett Foundation ', '2018-08-30 18:42:01', '1'),
(632, 45, 15, 6, 31, 1006, '{\"_id\":\"45\",\"text\":\"Bryn Mawr Presbyterian Church\",\"_title\":\"Bryn Mawr Presbyterian Church\"}', ' Bryn Mawr Presbyterian Church ', '2018-08-30 18:42:01', '1'),
(631, 44, 15, 6, 31, 1005, '{\"_id\":\"44\",\"text\":\"Bread & Roses Community Fund\",\"_title\":\"Bread & Roses Community Fund\"}', ' Bread & Roses Community Fund ', '2018-08-30 18:42:01', '1'),
(630, 43, 15, 6, 31, 1004, '{\"_id\":\"43\",\"text\":\"Berkowitz Family Foundation\",\"_title\":\"Berkowitz Family Foundation\"}', ' Berkowitz Family Foundation ', '2018-08-30 18:42:01', '1'),
(629, 42, 15, 6, 31, 1003, '{\"_id\":\"42\",\"text\":\"Barra Foundation\",\"_title\":\"Barra Foundation\"}', ' Barra Foundation ', '2018-08-30 18:42:01', '1'),
(628, 41, 15, 6, 31, 1002, '{\"_id\":\"41\",\"text\":\"Allen Hilles Fund\",\"_title\":\"Allen Hilles Fund\"}', ' Allen Hilles Fund ', '2018-08-30 18:42:01', '1'),
(627, 40, 15, 6, 31, 1001, '{\"_id\":\"40\",\"text\":\"Alfred and Mary Douty Foundation\",\"_title\":\"Alfred and Mary Douty Foundation\"}', ' Alfred and Mary Douty Foundation ', '2018-08-30 18:42:01', '1'),
(625, 65, 15, 6, 30, 1026, '', '', '2018-08-30 18:41:57', ''),
(626, 39, 15, 6, 31, 1000, '{\"_id\":\"39\",\"text\":\"1830 Family Foundation\",\"_title\":\"1830 Family Foundation\"}', ' 1830 Family Foundation ', '2018-08-30 18:42:01', '1'),
(662, 47, 15, 6, 32, 1008, '{\"_id\":\"47\",\"text\":\"Catholic Campaign for Human Development\",\"_title\":\"Catholic Campaign for Human Development\"}', ' Catholic Campaign for Human Development ', '2018-08-30 18:42:05', '1'),
(661, 46, 15, 6, 32, 1007, '{\"_id\":\"46\",\"text\":\"Cassett Foundation\",\"_title\":\"Cassett Foundation\"}', ' Cassett Foundation ', '2018-08-30 18:42:05', '1'),
(660, 45, 15, 6, 32, 1006, '{\"_id\":\"45\",\"text\":\"Bryn Mawr Presbyterian Church\",\"_title\":\"Bryn Mawr Presbyterian Church\"}', ' Bryn Mawr Presbyterian Church ', '2018-08-30 18:42:05', '1'),
(659, 44, 15, 6, 32, 1005, '{\"_id\":\"44\",\"text\":\"Bread & Roses Community Fund\",\"_title\":\"Bread & Roses Community Fund\"}', ' Bread & Roses Community Fund ', '2018-08-30 18:42:05', '1'),
(658, 43, 15, 6, 32, 1004, '{\"_id\":\"43\",\"text\":\"Berkowitz Family Foundation\",\"_title\":\"Berkowitz Family Foundation\"}', ' Berkowitz Family Foundation ', '2018-08-30 18:42:05', '1'),
(657, 42, 15, 6, 32, 1003, '{\"_id\":\"42\",\"text\":\"Barra Foundation\",\"_title\":\"Barra Foundation\"}', ' Barra Foundation ', '2018-08-30 18:42:05', '1'),
(656, 41, 15, 6, 32, 1002, '{\"_id\":\"41\",\"text\":\"Allen Hilles Fund\",\"_title\":\"Allen Hilles Fund\"}', ' Allen Hilles Fund ', '2018-08-30 18:42:05', '1'),
(655, 40, 15, 6, 32, 1001, '{\"_id\":\"40\",\"text\":\"Alfred and Mary Douty Foundation\",\"_title\":\"Alfred and Mary Douty Foundation\"}', ' Alfred and Mary Douty Foundation ', '2018-08-30 18:42:05', '1'),
(653, 66, 15, 6, 31, 1027, '', '', '2018-08-30 18:42:01', ''),
(654, 39, 15, 6, 32, 1000, '{\"_id\":\"39\",\"text\":\"1830 Family Foundation\",\"_title\":\"1830 Family Foundation\"}', ' 1830 Family Foundation ', '2018-08-30 18:42:05', '1'),
(701, 57, 15, 6, 33, 1018, '{\"_id\":\"57\",\"text\":\"Louis N. Cassett Foundation\",\"_title\":\"Louis N. Cassett Foundation\"}', ' Louis N. Cassett Foundation ', '2018-08-30 18:42:09', '1'),
(691, 47, 15, 6, 33, 1008, '{\"_id\":\"47\",\"text\":\"Catholic Campaign for Human Development\",\"_title\":\"Catholic Campaign for Human Development\"}', ' Catholic Campaign for Human Development ', '2018-08-30 18:42:09', '1'),
(690, 46, 15, 6, 33, 1007, '{\"_id\":\"46\",\"text\":\"Cassett Foundation\",\"_title\":\"Cassett Foundation\"}', ' Cassett Foundation ', '2018-08-30 18:42:09', '1'),
(689, 45, 15, 6, 33, 1006, '{\"_id\":\"45\",\"text\":\"Bryn Mawr Presbyterian Church\",\"_title\":\"Bryn Mawr Presbyterian Church\"}', ' Bryn Mawr Presbyterian Church ', '2018-08-30 18:42:09', '1'),
(688, 44, 15, 6, 33, 1005, '{\"_id\":\"44\",\"text\":\"Bread & Roses Community Fund\",\"_title\":\"Bread & Roses Community Fund\"}', ' Bread & Roses Community Fund ', '2018-08-30 18:42:09', '1'),
(687, 43, 15, 6, 33, 1004, '{\"_id\":\"43\",\"text\":\"Berkowitz Family Foundation\",\"_title\":\"Berkowitz Family Foundation\"}', ' Berkowitz Family Foundation ', '2018-08-30 18:42:09', '1'),
(686, 42, 15, 6, 33, 1003, '{\"_id\":\"42\",\"text\":\"Barra Foundation\",\"_title\":\"Barra Foundation\"}', ' Barra Foundation ', '2018-08-30 18:42:09', '1'),
(685, 41, 15, 6, 33, 1002, '{\"_id\":\"41\",\"text\":\"Allen Hilles Fund\",\"_title\":\"Allen Hilles Fund\"}', ' Allen Hilles Fund ', '2018-08-30 18:42:09', '1'),
(684, 40, 15, 6, 33, 1001, '{\"_id\":\"40\",\"text\":\"Alfred and Mary Douty Foundation\",\"_title\":\"Alfred and Mary Douty Foundation\"}', ' Alfred and Mary Douty Foundation ', '2018-08-30 18:42:09', '1'),
(682, 67, 15, 6, 32, 1028, '', '', '2018-08-30 18:42:05', ''),
(683, 39, 15, 6, 33, 1000, '{\"_id\":\"39\",\"text\":\"1830 Family Foundation\",\"_title\":\"1830 Family Foundation\"}', ' 1830 Family Foundation ', '2018-08-30 18:42:09', '1'),
(721, 47, 15, 6, 34, 1008, '{\"_id\":\"47\",\"text\":\"Catholic Campaign for Human Development\",\"_title\":\"Catholic Campaign for Human Development\"}', ' Catholic Campaign for Human Development ', '2018-08-30 18:42:13', '1'),
(720, 46, 15, 6, 34, 1007, '{\"_id\":\"46\",\"text\":\"Cassett Foundation\",\"_title\":\"Cassett Foundation\"}', ' Cassett Foundation ', '2018-08-30 18:42:13', '1'),
(719, 45, 15, 6, 34, 1006, '{\"_id\":\"45\",\"text\":\"Bryn Mawr Presbyterian Church\",\"_title\":\"Bryn Mawr Presbyterian Church\"}', ' Bryn Mawr Presbyterian Church ', '2018-08-30 18:42:13', '1'),
(718, 44, 15, 6, 34, 1005, '{\"_id\":\"44\",\"text\":\"Bread & Roses Community Fund\",\"_title\":\"Bread & Roses Community Fund\"}', ' Bread & Roses Community Fund ', '2018-08-30 18:42:13', '1'),
(717, 43, 15, 6, 34, 1004, '{\"_id\":\"43\",\"text\":\"Berkowitz Family Foundation\",\"_title\":\"Berkowitz Family Foundation\"}', ' Berkowitz Family Foundation ', '2018-08-30 18:42:13', '1'),
(716, 42, 15, 6, 34, 1003, '{\"_id\":\"42\",\"text\":\"Barra Foundation\",\"_title\":\"Barra Foundation\"}', ' Barra Foundation ', '2018-08-30 18:42:13', '1'),
(715, 41, 15, 6, 34, 1002, '{\"_id\":\"41\",\"text\":\"Allen Hilles Fund\",\"_title\":\"Allen Hilles Fund\"}', ' Allen Hilles Fund ', '2018-08-30 18:42:13', '1'),
(714, 40, 15, 6, 34, 1001, '{\"_id\":\"40\",\"text\":\"Alfred and Mary Douty Foundation\",\"_title\":\"Alfred and Mary Douty Foundation\"}', ' Alfred and Mary Douty Foundation ', '2018-08-30 18:42:13', '1'),
(712, 68, 15, 6, 33, 1029, '', '', '2018-08-30 18:42:09', ''),
(713, 39, 15, 6, 34, 1000, '{\"_id\":\"39\",\"text\":\"1830 Family Foundation\",\"_title\":\"1830 Family Foundation\"}', ' 1830 Family Foundation ', '2018-08-30 18:42:13', '1'),
(752, 47, 15, 6, 35, 1008, '{\"_id\":\"47\",\"text\":\"Catholic Campaign for Human Development\",\"_title\":\"Catholic Campaign for Human Development\"}', ' Catholic Campaign for Human Development ', '2018-08-30 18:43:27', '1'),
(751, 46, 15, 6, 35, 1007, '{\"_id\":\"46\",\"text\":\"Cassett Foundation\",\"_title\":\"Cassett Foundation\"}', ' Cassett Foundation ', '2018-08-30 18:43:27', '1'),
(750, 45, 15, 6, 35, 1006, '{\"_id\":\"45\",\"text\":\"Bryn Mawr Presbyterian Church\",\"_title\":\"Bryn Mawr Presbyterian Church\"}', ' Bryn Mawr Presbyterian Church ', '2018-08-30 18:43:27', '1'),
(749, 44, 15, 6, 35, 1005, '{\"_id\":\"44\",\"text\":\"Bread & Roses Community Fund\",\"_title\":\"Bread & Roses Community Fund\"}', ' Bread & Roses Community Fund ', '2018-08-30 18:43:27', '1'),
(748, 43, 15, 6, 35, 1004, '{\"_id\":\"43\",\"text\":\"Berkowitz Family Foundation\",\"_title\":\"Berkowitz Family Foundation\"}', ' Berkowitz Family Foundation ', '2018-08-30 18:43:27', '1'),
(747, 42, 15, 6, 35, 1003, '{\"_id\":\"42\",\"text\":\"Barra Foundation\",\"_title\":\"Barra Foundation\"}', ' Barra Foundation ', '2018-08-30 18:43:27', '1'),
(746, 41, 15, 6, 35, 1002, '{\"_id\":\"41\",\"text\":\"Allen Hilles Fund\",\"_title\":\"Allen Hilles Fund\"}', ' Allen Hilles Fund ', '2018-08-30 18:43:27', '1'),
(745, 40, 15, 6, 35, 1001, '{\"_id\":\"40\",\"text\":\"Alfred and Mary Douty Foundation\",\"_title\":\"Alfred and Mary Douty Foundation\"}', ' Alfred and Mary Douty Foundation ', '2018-08-30 18:43:27', '1'),
(743, 69, 15, 6, 34, 1030, '', '', '2018-08-30 18:42:13', ''),
(744, 39, 15, 6, 35, 1000, '{\"_id\":\"39\",\"text\":\"1830 Family Foundation\",\"_title\":\"1830 Family Foundation\"}', ' 1830 Family Foundation ', '2018-08-30 18:43:27', '1'),
(792, 56, 15, 6, 36, 1017, '{\"_id\":\"56\",\"text\":\"Leo & Peggy Pierce Foundation\",\"_title\":\"Leo & Peggy Pierce Foundation\"}', ' Leo & Peggy Pierce Foundation ', '2018-08-30 18:43:30', '1'),
(783, 47, 15, 6, 36, 1008, '{\"_id\":\"47\",\"text\":\"Catholic Campaign for Human Development\",\"_title\":\"Catholic Campaign for Human Development\"}', ' Catholic Campaign for Human Development ', '2018-08-30 18:43:30', '1'),
(782, 46, 15, 6, 36, 1007, '{\"_id\":\"46\",\"text\":\"Cassett Foundation\",\"_title\":\"Cassett Foundation\"}', ' Cassett Foundation ', '2018-08-30 18:43:30', '1'),
(781, 45, 15, 6, 36, 1006, '{\"_id\":\"45\",\"text\":\"Bryn Mawr Presbyterian Church\",\"_title\":\"Bryn Mawr Presbyterian Church\"}', ' Bryn Mawr Presbyterian Church ', '2018-08-30 18:43:30', '1'),
(780, 44, 15, 6, 36, 1005, '{\"_id\":\"44\",\"text\":\"Bread & Roses Community Fund\",\"_title\":\"Bread & Roses Community Fund\"}', ' Bread & Roses Community Fund ', '2018-08-30 18:43:30', '1'),
(779, 43, 15, 6, 36, 1004, '{\"_id\":\"43\",\"text\":\"Berkowitz Family Foundation\",\"_title\":\"Berkowitz Family Foundation\"}', ' Berkowitz Family Foundation ', '2018-08-30 18:43:30', '1'),
(777, 41, 15, 6, 36, 1002, '{\"_id\":\"41\",\"text\":\"Allen Hilles Fund\",\"_title\":\"Allen Hilles Fund\"}', ' Allen Hilles Fund ', '2018-08-30 18:43:30', '1'),
(778, 42, 15, 6, 36, 1003, '{\"_id\":\"42\",\"text\":\"Barra Foundation\",\"_title\":\"Barra Foundation\"}', ' Barra Foundation ', '2018-08-30 18:43:30', '1'),
(776, 40, 15, 6, 36, 1001, '{\"_id\":\"40\",\"text\":\"Alfred and Mary Douty Foundation\",\"_title\":\"Alfred and Mary Douty Foundation\"}', ' Alfred and Mary Douty Foundation ', '2018-08-30 18:43:30', '1'),
(813, 72, 18, 7, 3, 1000, '{\"_id\":\"72\",\"text\":\"https:\\/\\/www.paypal.com\\/fundraiser\\/charity\\/1563272\",\"_title\":\"https:\\/\\/www.paypal.com\\/fundraiser\\/charity\\/1563272\"}', ' https://www.paypal.com/fundraiser/charity/1563272 ', '2018-08-30 18:54:16', '1'),
(805, 70, 16, 7, 0, 1000, '', '', '2018-08-30 18:50:50', ''),
(806, 70, 16, 7, 1, 1000, '{\"_id\":\"70\",\"text\":{\"_flang\":\"html\",\"raw\":\"<p>Urban Tree Connection remains a genuinely grassroots organization, driven by the time, commitment, and partnership of individuals like you. Your support enables us to continue our core work and programming and be good stewards of our community-based gardening and sites.  Your generosity goes a long way \\u2013 from producing beautiful farming produce that allows neighbors to feed themselves and one another to cultivating future farmers and food justice advocates.<\\/p><p>The Urban Tree Connection is a 501 (c)(3) organization, and all contributions are fully tax-deductible. We hope that you\'ll consider donating to Urban Tree Connection in one of the following ways:<br><\\/p>\",\"processed\":\"<p>Urban Tree Connection remains a genuinely grassroots organization, driven by the time, commitment, and partnership of individuals like you. Your support enables us to continue our core work and programming and be good stewards of our community-based gardening and sites.  Your generosity goes a long way \\u2013 from producing beautiful farming produce that allows neighbors to feed themselves and one another to cultivating future farmers and food justice advocates.<\\/p><p>The Urban Tree Connection is a 501 (c)(3) organization, and all contributions are fully tax-deductible. We hope that you\'ll consider donating to Urban Tree Connection in one of the following ways:<br><\\/p>\"}}', ' Urban Tree Connection remains a genuinely grassroots organization, driven by the time, commitment, and partnership of individuals like you. Your support enables us to continue our core work and programming and be good stewards of our community-based gardening and sites.  Your generosity goes a long way – from producing beautiful farming produce that allows neighbors to feed themselves and one another to cultivating future farmers and food justice advocates.The Urban Tree Connection is a 501 (c)(3) organization, and all contributions are fully tax-deductible. We hope that you\'ll consider donating to Urban Tree Connection in one of the following ways: ', '2018-08-30 18:51:04', '1'),
(588, 54, 15, 6, 29, 1015, '{\"_id\":\"54\",\"text\":\"Independence Foundation\",\"_title\":\"Independence Foundation\"}', ' Independence Foundation ', '2018-08-30 18:41:53', '1'),
(589, 55, 15, 6, 29, 1016, '{\"_id\":\"55\",\"text\":\"Lindback Foundation\",\"_title\":\"Lindback Foundation\"}', ' Lindback Foundation ', '2018-08-30 18:41:53', '1'),
(590, 56, 15, 6, 29, 1017, '{\"_id\":\"56\",\"text\":\"Leo & Peggy Pierce Foundation\",\"_title\":\"Leo & Peggy Pierce Foundation\"}', ' Leo & Peggy Pierce Foundation ', '2018-08-30 18:41:53', '1'),
(591, 57, 15, 6, 29, 1018, '{\"_id\":\"57\",\"text\":\"Louis N. Cassett Foundation\",\"_title\":\"Louis N. Cassett Foundation\"}', ' Louis N. Cassett Foundation ', '2018-08-30 18:41:53', '1'),
(592, 58, 15, 6, 29, 1019, '{\"_id\":\"58\",\"text\":\"Merck Family Fund\",\"_title\":\"Merck Family Fund\"}', ' Merck Family Fund ', '2018-08-30 18:41:53', '1'),
(593, 59, 15, 6, 29, 1020, '{\"_id\":\"59\",\"text\":\"Philadelphia Chapter of the Garden Club of America\",\"_title\":\"Philadelphia Chapter of the Garden Club of America\"}', ' Philadelphia Chapter of the Garden Club of America ', '2018-08-30 18:41:53', '1'),
(594, 60, 15, 6, 29, 1021, '{\"_id\":\"60\",\"text\":\"Philadelphia Water Department\",\"_title\":\"Philadelphia Water Department\"}', ' Philadelphia Water Department ', '2018-08-30 18:41:53', '1'),
(595, 61, 15, 6, 29, 1022, '{\"_id\":\"61\",\"text\":\"Rosenlund Family Foundation\",\"_title\":\"Rosenlund Family Foundation\"}', ' Rosenlund Family Foundation ', '2018-08-30 18:41:53', '1'),
(596, 62, 15, 6, 29, 1023, '{\"_id\":\"62\",\"text\":\"Samuel S. Fels Foundation\",\"_title\":\"Samuel S. Fels Foundation\"}', ' Samuel S. Fels Foundation ', '2018-08-30 18:41:53', '1'),
(597, 63, 15, 6, 29, 1024, '{\"_id\":\"63\",\"text\":\"SEI Giving Fund\",\"_title\":\"SEI Giving Fund\"}', ' SEI Giving Fund ', '2018-08-30 18:41:53', '1'),
(615, 55, 15, 6, 30, 1016, '{\"_id\":\"55\",\"text\":\"Lindback Foundation\",\"_title\":\"Lindback Foundation\"}', ' Lindback Foundation ', '2018-08-30 18:41:57', '1'),
(616, 56, 15, 6, 30, 1017, '{\"_id\":\"56\",\"text\":\"Leo & Peggy Pierce Foundation\",\"_title\":\"Leo & Peggy Pierce Foundation\"}', ' Leo & Peggy Pierce Foundation ', '2018-08-30 18:41:57', '1'),
(617, 57, 15, 6, 30, 1018, '{\"_id\":\"57\",\"text\":\"Louis N. Cassett Foundation\",\"_title\":\"Louis N. Cassett Foundation\"}', ' Louis N. Cassett Foundation ', '2018-08-30 18:41:57', '1'),
(618, 58, 15, 6, 30, 1019, '{\"_id\":\"58\",\"text\":\"Merck Family Fund\",\"_title\":\"Merck Family Fund\"}', ' Merck Family Fund ', '2018-08-30 18:41:57', '1'),
(619, 59, 15, 6, 30, 1020, '{\"_id\":\"59\",\"text\":\"Philadelphia Chapter of the Garden Club of America\",\"_title\":\"Philadelphia Chapter of the Garden Club of America\"}', ' Philadelphia Chapter of the Garden Club of America ', '2018-08-30 18:41:57', '1'),
(620, 60, 15, 6, 30, 1021, '{\"_id\":\"60\",\"text\":\"Philadelphia Water Department\",\"_title\":\"Philadelphia Water Department\"}', ' Philadelphia Water Department ', '2018-08-30 18:41:57', '1'),
(621, 61, 15, 6, 30, 1022, '{\"_id\":\"61\",\"text\":\"Rosenlund Family Foundation\",\"_title\":\"Rosenlund Family Foundation\"}', ' Rosenlund Family Foundation ', '2018-08-30 18:41:57', '1'),
(622, 62, 15, 6, 30, 1023, '{\"_id\":\"62\",\"text\":\"Samuel S. Fels Foundation\",\"_title\":\"Samuel S. Fels Foundation\"}', ' Samuel S. Fels Foundation ', '2018-08-30 18:41:57', '1'),
(623, 63, 15, 6, 30, 1024, '{\"_id\":\"63\",\"text\":\"SEI Giving Fund\",\"_title\":\"SEI Giving Fund\"}', ' SEI Giving Fund ', '2018-08-30 18:41:57', '1'),
(624, 64, 15, 6, 30, 1025, '{\"_id\":\"64\",\"text\":\"Thomas Skelton Harrison Foundation\",\"_title\":\"Thomas Skelton Harrison Foundation\"}', ' Thomas Skelton Harrison Foundation ', '2018-08-30 18:41:57', '1'),
(643, 56, 15, 6, 31, 1017, '{\"_id\":\"56\",\"text\":\"Leo & Peggy Pierce Foundation\",\"_title\":\"Leo & Peggy Pierce Foundation\"}', ' Leo & Peggy Pierce Foundation ', '2018-08-30 18:42:01', '1'),
(644, 57, 15, 6, 31, 1018, '{\"_id\":\"57\",\"text\":\"Louis N. Cassett Foundation\",\"_title\":\"Louis N. Cassett Foundation\"}', ' Louis N. Cassett Foundation ', '2018-08-30 18:42:01', '1'),
(645, 58, 15, 6, 31, 1019, '{\"_id\":\"58\",\"text\":\"Merck Family Fund\",\"_title\":\"Merck Family Fund\"}', ' Merck Family Fund ', '2018-08-30 18:42:01', '1'),
(646, 59, 15, 6, 31, 1020, '{\"_id\":\"59\",\"text\":\"Philadelphia Chapter of the Garden Club of America\",\"_title\":\"Philadelphia Chapter of the Garden Club of America\"}', ' Philadelphia Chapter of the Garden Club of America ', '2018-08-30 18:42:01', '1'),
(647, 60, 15, 6, 31, 1021, '{\"_id\":\"60\",\"text\":\"Philadelphia Water Department\",\"_title\":\"Philadelphia Water Department\"}', ' Philadelphia Water Department ', '2018-08-30 18:42:01', '1'),
(648, 61, 15, 6, 31, 1022, '{\"_id\":\"61\",\"text\":\"Rosenlund Family Foundation\",\"_title\":\"Rosenlund Family Foundation\"}', ' Rosenlund Family Foundation ', '2018-08-30 18:42:01', '1'),
(649, 62, 15, 6, 31, 1023, '{\"_id\":\"62\",\"text\":\"Samuel S. Fels Foundation\",\"_title\":\"Samuel S. Fels Foundation\"}', ' Samuel S. Fels Foundation ', '2018-08-30 18:42:01', '1'),
(650, 63, 15, 6, 31, 1024, '{\"_id\":\"63\",\"text\":\"SEI Giving Fund\",\"_title\":\"SEI Giving Fund\"}', ' SEI Giving Fund ', '2018-08-30 18:42:01', '1'),
(651, 64, 15, 6, 31, 1025, '{\"_id\":\"64\",\"text\":\"Thomas Skelton Harrison Foundation\",\"_title\":\"Thomas Skelton Harrison Foundation\"}', ' Thomas Skelton Harrison Foundation ', '2018-08-30 18:42:01', '1'),
(652, 65, 15, 6, 31, 1026, '{\"_id\":\"65\",\"text\":\"Union Benevolent Foundation\",\"_title\":\"Union Benevolent Foundation\"}', ' Union Benevolent Foundation ', '2018-08-30 18:42:01', '1'),
(672, 57, 15, 6, 32, 1018, '{\"_id\":\"57\",\"text\":\"Louis N. Cassett Foundation\",\"_title\":\"Louis N. Cassett Foundation\"}', ' Louis N. Cassett Foundation ', '2018-08-30 18:42:05', '1'),
(673, 58, 15, 6, 32, 1019, '{\"_id\":\"58\",\"text\":\"Merck Family Fund\",\"_title\":\"Merck Family Fund\"}', ' Merck Family Fund ', '2018-08-30 18:42:05', '1'),
(674, 59, 15, 6, 32, 1020, '{\"_id\":\"59\",\"text\":\"Philadelphia Chapter of the Garden Club of America\",\"_title\":\"Philadelphia Chapter of the Garden Club of America\"}', ' Philadelphia Chapter of the Garden Club of America ', '2018-08-30 18:42:05', '1'),
(675, 60, 15, 6, 32, 1021, '{\"_id\":\"60\",\"text\":\"Philadelphia Water Department\",\"_title\":\"Philadelphia Water Department\"}', ' Philadelphia Water Department ', '2018-08-30 18:42:05', '1'),
(676, 61, 15, 6, 32, 1022, '{\"_id\":\"61\",\"text\":\"Rosenlund Family Foundation\",\"_title\":\"Rosenlund Family Foundation\"}', ' Rosenlund Family Foundation ', '2018-08-30 18:42:05', '1'),
(677, 62, 15, 6, 32, 1023, '{\"_id\":\"62\",\"text\":\"Samuel S. Fels Foundation\",\"_title\":\"Samuel S. Fels Foundation\"}', ' Samuel S. Fels Foundation ', '2018-08-30 18:42:05', '1'),
(678, 63, 15, 6, 32, 1024, '{\"_id\":\"63\",\"text\":\"SEI Giving Fund\",\"_title\":\"SEI Giving Fund\"}', ' SEI Giving Fund ', '2018-08-30 18:42:05', '1'),
(679, 64, 15, 6, 32, 1025, '{\"_id\":\"64\",\"text\":\"Thomas Skelton Harrison Foundation\",\"_title\":\"Thomas Skelton Harrison Foundation\"}', ' Thomas Skelton Harrison Foundation ', '2018-08-30 18:42:05', '1'),
(680, 65, 15, 6, 32, 1026, '{\"_id\":\"65\",\"text\":\"Union Benevolent Foundation\",\"_title\":\"Union Benevolent Foundation\"}', ' Union Benevolent Foundation ', '2018-08-30 18:42:05', '1'),
(681, 66, 15, 6, 32, 1027, '{\"_id\":\"66\",\"text\":\"U.S. Department of Agriculture\",\"_title\":\"U.S. Department of Agriculture\"}', ' U.S. Department of Agriculture ', '2018-08-30 18:42:05', '1'),
(702, 58, 15, 6, 33, 1019, '{\"_id\":\"58\",\"text\":\"Merck Family Fund\",\"_title\":\"Merck Family Fund\"}', ' Merck Family Fund ', '2018-08-30 18:42:09', '1'),
(703, 59, 15, 6, 33, 1020, '{\"_id\":\"59\",\"text\":\"Philadelphia Chapter of the Garden Club of America\",\"_title\":\"Philadelphia Chapter of the Garden Club of America\"}', ' Philadelphia Chapter of the Garden Club of America ', '2018-08-30 18:42:09', '1'),
(704, 60, 15, 6, 33, 1021, '{\"_id\":\"60\",\"text\":\"Philadelphia Water Department\",\"_title\":\"Philadelphia Water Department\"}', ' Philadelphia Water Department ', '2018-08-30 18:42:09', '1'),
(705, 61, 15, 6, 33, 1022, '{\"_id\":\"61\",\"text\":\"Rosenlund Family Foundation\",\"_title\":\"Rosenlund Family Foundation\"}', ' Rosenlund Family Foundation ', '2018-08-30 18:42:09', '1'),
(706, 62, 15, 6, 33, 1023, '{\"_id\":\"62\",\"text\":\"Samuel S. Fels Foundation\",\"_title\":\"Samuel S. Fels Foundation\"}', ' Samuel S. Fels Foundation ', '2018-08-30 18:42:09', '1'),
(707, 63, 15, 6, 33, 1024, '{\"_id\":\"63\",\"text\":\"SEI Giving Fund\",\"_title\":\"SEI Giving Fund\"}', ' SEI Giving Fund ', '2018-08-30 18:42:09', '1'),
(708, 64, 15, 6, 33, 1025, '{\"_id\":\"64\",\"text\":\"Thomas Skelton Harrison Foundation\",\"_title\":\"Thomas Skelton Harrison Foundation\"}', ' Thomas Skelton Harrison Foundation ', '2018-08-30 18:42:09', '1'),
(709, 65, 15, 6, 33, 1026, '{\"_id\":\"65\",\"text\":\"Union Benevolent Foundation\",\"_title\":\"Union Benevolent Foundation\"}', ' Union Benevolent Foundation ', '2018-08-30 18:42:09', '1'),
(710, 66, 15, 6, 33, 1027, '{\"_id\":\"66\",\"text\":\"U.S. Department of Agriculture\",\"_title\":\"U.S. Department of Agriculture\"}', ' U.S. Department of Agriculture ', '2018-08-30 18:42:09', '1'),
(711, 67, 15, 6, 33, 1028, '{\"_id\":\"67\",\"text\":\"Vanguard Group\",\"_title\":\"Vanguard Group\"}', ' Vanguard Group ', '2018-08-30 18:42:09', '1'),
(733, 59, 15, 6, 34, 1020, '{\"_id\":\"59\",\"text\":\"Philadelphia Chapter of the Garden Club of America\",\"_title\":\"Philadelphia Chapter of the Garden Club of America\"}', ' Philadelphia Chapter of the Garden Club of America ', '2018-08-30 18:42:13', '1'),
(734, 60, 15, 6, 34, 1021, '{\"_id\":\"60\",\"text\":\"Philadelphia Water Department\",\"_title\":\"Philadelphia Water Department\"}', ' Philadelphia Water Department ', '2018-08-30 18:42:13', '1'),
(735, 61, 15, 6, 34, 1022, '{\"_id\":\"61\",\"text\":\"Rosenlund Family Foundation\",\"_title\":\"Rosenlund Family Foundation\"}', ' Rosenlund Family Foundation ', '2018-08-30 18:42:13', '1'),
(736, 62, 15, 6, 34, 1023, '{\"_id\":\"62\",\"text\":\"Samuel S. Fels Foundation\",\"_title\":\"Samuel S. Fels Foundation\"}', ' Samuel S. Fels Foundation ', '2018-08-30 18:42:13', '1'),
(737, 63, 15, 6, 34, 1024, '{\"_id\":\"63\",\"text\":\"SEI Giving Fund\",\"_title\":\"SEI Giving Fund\"}', ' SEI Giving Fund ', '2018-08-30 18:42:13', '1'),
(738, 64, 15, 6, 34, 1025, '{\"_id\":\"64\",\"text\":\"Thomas Skelton Harrison Foundation\",\"_title\":\"Thomas Skelton Harrison Foundation\"}', ' Thomas Skelton Harrison Foundation ', '2018-08-30 18:42:13', '1'),
(739, 65, 15, 6, 34, 1026, '{\"_id\":\"65\",\"text\":\"Union Benevolent Foundation\",\"_title\":\"Union Benevolent Foundation\"}', ' Union Benevolent Foundation ', '2018-08-30 18:42:13', '1'),
(740, 66, 15, 6, 34, 1027, '{\"_id\":\"66\",\"text\":\"U.S. Department of Agriculture\",\"_title\":\"U.S. Department of Agriculture\"}', ' U.S. Department of Agriculture ', '2018-08-30 18:42:13', '1'),
(741, 67, 15, 6, 34, 1028, '{\"_id\":\"67\",\"text\":\"Vanguard Group\",\"_title\":\"Vanguard Group\"}', ' Vanguard Group ', '2018-08-30 18:42:13', '1'),
(742, 68, 15, 6, 34, 1029, '{\"_id\":\"68\",\"text\":\"Whole Cities Foundation\",\"_title\":\"Whole Cities Foundation\"}', ' Whole Cities Foundation ', '2018-08-30 18:42:13', '1');
INSERT INTO `perch3_content_items` (`itemRowID`, `itemID`, `regionID`, `pageID`, `itemRev`, `itemOrder`, `itemJSON`, `itemSearch`, `itemUpdated`, `itemUpdatedBy`) VALUES
(765, 60, 15, 6, 35, 1021, '{\"_id\":\"60\",\"text\":\"Philadelphia Water Department\",\"_title\":\"Philadelphia Water Department\"}', ' Philadelphia Water Department ', '2018-08-30 18:43:27', '1'),
(766, 61, 15, 6, 35, 1022, '{\"_id\":\"61\",\"text\":\"Rosenlund Family Foundation\",\"_title\":\"Rosenlund Family Foundation\"}', ' Rosenlund Family Foundation ', '2018-08-30 18:43:27', '1'),
(767, 62, 15, 6, 35, 1023, '{\"_id\":\"62\",\"text\":\"Samuel S. Fels Foundation\",\"_title\":\"Samuel S. Fels Foundation\"}', ' Samuel S. Fels Foundation ', '2018-08-30 18:43:27', '1'),
(768, 63, 15, 6, 35, 1024, '{\"_id\":\"63\",\"text\":\"SEI Giving Fund\",\"_title\":\"SEI Giving Fund\"}', ' SEI Giving Fund ', '2018-08-30 18:43:27', '1'),
(769, 64, 15, 6, 35, 1025, '{\"_id\":\"64\",\"text\":\"Thomas Skelton Harrison Foundation\",\"_title\":\"Thomas Skelton Harrison Foundation\"}', ' Thomas Skelton Harrison Foundation ', '2018-08-30 18:43:27', '1'),
(770, 65, 15, 6, 35, 1026, '{\"_id\":\"65\",\"text\":\"Union Benevolent Foundation\",\"_title\":\"Union Benevolent Foundation\"}', ' Union Benevolent Foundation ', '2018-08-30 18:43:27', '1'),
(771, 66, 15, 6, 35, 1027, '{\"_id\":\"66\",\"text\":\"U.S. Department of Agriculture\",\"_title\":\"U.S. Department of Agriculture\"}', ' U.S. Department of Agriculture ', '2018-08-30 18:43:27', '1'),
(772, 67, 15, 6, 35, 1028, '{\"_id\":\"67\",\"text\":\"Vanguard Group\",\"_title\":\"Vanguard Group\"}', ' Vanguard Group ', '2018-08-30 18:43:27', '1'),
(773, 68, 15, 6, 35, 1029, '{\"_id\":\"68\",\"text\":\"Whole Cities Foundation\",\"_title\":\"Whole Cities Foundation\"}', ' Whole Cities Foundation ', '2018-08-30 18:43:27', '1'),
(775, 39, 15, 6, 36, 1000, '{\"_id\":\"39\",\"text\":\"1830 Family Foundation\",\"_title\":\"1830 Family Foundation\"}', ' 1830 Family Foundation ', '2018-08-30 18:43:30', '1'),
(797, 61, 15, 6, 36, 1022, '{\"_id\":\"61\",\"text\":\"Rosenlund Family Foundation\",\"_title\":\"Rosenlund Family Foundation\"}', ' Rosenlund Family Foundation ', '2018-08-30 18:43:30', '1'),
(798, 62, 15, 6, 36, 1023, '{\"_id\":\"62\",\"text\":\"Samuel S. Fels Foundation\",\"_title\":\"Samuel S. Fels Foundation\"}', ' Samuel S. Fels Foundation ', '2018-08-30 18:43:30', '1'),
(799, 63, 15, 6, 36, 1024, '{\"_id\":\"63\",\"text\":\"SEI Giving Fund\",\"_title\":\"SEI Giving Fund\"}', ' SEI Giving Fund ', '2018-08-30 18:43:30', '1'),
(800, 64, 15, 6, 36, 1025, '{\"_id\":\"64\",\"text\":\"Thomas Skelton Harrison Foundation\",\"_title\":\"Thomas Skelton Harrison Foundation\"}', ' Thomas Skelton Harrison Foundation ', '2018-08-30 18:43:30', '1'),
(801, 65, 15, 6, 36, 1026, '{\"_id\":\"65\",\"text\":\"Union Benevolent Foundation\",\"_title\":\"Union Benevolent Foundation\"}', ' Union Benevolent Foundation ', '2018-08-30 18:43:30', '1'),
(802, 66, 15, 6, 36, 1027, '{\"_id\":\"66\",\"text\":\"U.S. Department of Agriculture\",\"_title\":\"U.S. Department of Agriculture\"}', ' U.S. Department of Agriculture ', '2018-08-30 18:43:30', '1'),
(803, 67, 15, 6, 36, 1028, '{\"_id\":\"67\",\"text\":\"Vanguard Group\",\"_title\":\"Vanguard Group\"}', ' Vanguard Group ', '2018-08-30 18:43:30', '1'),
(804, 68, 15, 6, 36, 1029, '{\"_id\":\"68\",\"text\":\"Whole Cities Foundation\",\"_title\":\"Whole Cities Foundation\"}', ' Whole Cities Foundation ', '2018-08-30 18:43:30', '1'),
(814, 73, 19, 7, 0, 1000, '', '', '2018-08-30 18:56:04', ''),
(815, 73, 19, 7, 1, 1000, '{\"_id\":\"73\",\"text\":{\"_flang\":\"html\",\"raw\":\"<p>Check can be made payable to \\u201cUrban Tree Connection\\u201d and send to the following address:<br>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;Urban Tree Connection<br>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;c\\/o First African Presbyterian Church<br>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;4159 West Girard Avenue<br>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;Philadelphia, PA 19104<\\/p>\",\"processed\":\"<p>Check can be made payable to \\u201cUrban Tree Connection\\u201d and send to the following address:<br>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;Urban Tree Connection<br>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;c\\/o First African Presbyterian Church<br>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;4159 West Girard Avenue<br>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;Philadelphia, PA 19104<\\/p>\"}}', ' Check can be made payable to “Urban Tree Connection” and send to the following address:&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;Urban Tree Connection&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;c/o First African Presbyterian Church&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;4159 West Girard Avenue&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;Philadelphia, PA 19104 ', '2018-08-30 18:56:47', '1'),
(816, 74, 20, 7, 0, 1000, '', '', '2018-08-30 18:57:15', ''),
(817, 74, 20, 7, 1, 1000, '{\"_id\":\"74\",\"text\":{\"_flang\":\"html\",\"raw\":\"<p>Help support our work by donating a critically needed item from our <a href=\\\"http:\\/\\/urbantreeconnection.org\\/supportourwork.php\\\">Wish&nbsp;List<\\/a>. If you are interested in donating one of these items, call our office: 215-877-7203 or send us an email: info@urbantreeconnection.org, to arrange delivery or set a drop-off time.<\\/p>\",\"processed\":\"<p>Help support our work by donating a critically needed item from our <a href=\\\"http:\\/\\/urbantreeconnection.org\\/supportourwork.php\\\">Wish&nbsp;List<\\/a>. If you are interested in donating one of these items, call our office: 215-877-7203 or send us an email: info@urbantreeconnection.org, to arrange delivery or set a drop-off time.<\\/p>\"}}', ' Help support our work by donating a critically needed item from our Wish&nbsp;List. If you are interested in donating one of these items, call our office: 215-877-7203 or send us an email: info@urbantreeconnection.org, to arrange delivery or set a drop-off time. ', '2018-08-30 18:58:04', '1'),
(818, 74, 20, 7, 2, 1000, '{\"_id\":\"74\",\"text\":{\"_flang\":\"html\",\"raw\":\"<p>Help support our work by donating a critically needed item from our <a href=\\\"http:\\/\\/urbantreeconnection.org\\/supportourwork.php\\\">Wish&nbsp;List<\\/a>. If you are interested in donating one of these items, call our office: 215-877-7203 or send us an email: info@urbantreeconnection.org, to arrange delivery or set a drop-off time.<\\/p>\",\"processed\":\"<p>Help support our work by donating a critically needed item from our <a href=\\\"http:\\/\\/urbantreeconnection.org\\/supportourwork.php\\\">Wish&nbsp;List<\\/a>. If you are interested in donating one of these items, call our office: 215-877-7203 or send us an email: info@urbantreeconnection.org, to arrange delivery or set a drop-off time.<\\/p>\"}}', ' Help support our work by donating a critically needed item from our Wish&nbsp;List. If you are interested in donating one of these items, call our office: 215-877-7203 or send us an email: info@urbantreeconnection.org, to arrange delivery or set a drop-off time. ', '2018-08-30 18:58:11', '1'),
(819, 74, 20, 7, 3, 1000, '{\"_id\":\"74\",\"text\":{\"_flang\":\"html\",\"raw\":\"<p>Help support our work by donating a critically needed item from our <a href=\\\"http:\\/\\/urbantreeconnection.org\\/supportourwork.php\\\">Wish&nbsp;List<\\/a>. If you are interested in donating one of these items, call our office: 215-877-7203 or send us an email: <a info@urbantreeconnection.org, to arrange delivery or set a drop-off time.<\\/p>\",\"processed\":\"<p>Help support our work by donating a critically needed item from our <a href=\\\"http:\\/\\/urbantreeconnection.org\\/supportourwork.php\\\">Wish&nbsp;List<\\/a>. If you are interested in donating one of these items, call our office: 215-877-7203 or send us an email: <a info@urbantreeconnection.org, to arrange delivery or set a drop-off time.<\\/p>\"}}', ' Help support our work by donating a critically needed item from our Wish&nbsp;List. If you are interested in donating one of these items, call our office: 215-877-7203 or send us an email:  ', '2018-08-30 18:59:00', '1'),
(820, 74, 20, 7, 4, 1000, '{\"_id\":\"74\",\"text\":{\"_flang\":\"html\",\"raw\":\"<p>Help support our work by donating a critically needed item from our <a href=\\\"http:\\/\\/urbantreeconnection.org\\/supportourwork.php\\\">Wish&nbsp;List<\\/a>. If you are interested in donating one of these items, call our office: 215-877-7203 or send us an <a href=\\\"mailto: info@urbantreeconnection.org\\\">info@urbantreeconnection.org<\\/a>.<a info@urbantreeconnection.org,=\\\"\\\" to=\\\"\\\" arrange=\\\"\\\" delivery=\\\"\\\" or=\\\"\\\" set=\\\"\\\" a=\\\"\\\" drop-off=\\\"\\\" time.<=\\\"\\\" p=\\\"\\\"><\\/a><\\/p>\",\"processed\":\"<p>Help support our work by donating a critically needed item from our <a href=\\\"http:\\/\\/urbantreeconnection.org\\/supportourwork.php\\\">Wish&nbsp;List<\\/a>. If you are interested in donating one of these items, call our office: 215-877-7203 or send us an <a href=\\\"mailto: info@urbantreeconnection.org\\\">info@urbantreeconnection.org<\\/a>.<a info@urbantreeconnection.org,=\\\"\\\" to=\\\"\\\" arrange=\\\"\\\" delivery=\\\"\\\" or=\\\"\\\" set=\\\"\\\" a=\\\"\\\" drop-off=\\\"\\\" time.<=\\\"\\\" p=\\\"\\\"><\\/a><\\/p>\"}}', ' Help support our work by donating a critically needed item from our Wish&nbsp;List. If you are interested in donating one of these items, call our office: 215-877-7203 or send us an info@urbantreeconnection.org. ', '2018-08-30 18:59:26', '1'),
(821, 75, 21, 8, 0, 1000, '', '', '2018-08-30 19:02:19', ''),
(822, 75, 21, 8, 1, 1000, '{\"_id\":\"75\",\"text\":{\"_flang\":\"html\",\"raw\":\"<p>Urban Tree Connection is a grassroots organization, and we rely on the partnership of community volunteers to make our work possible. Last year, 978 volunteers contributed more than 7,000 hours of their time at our farms and garden sites.  We appreciate our volunteers from Haddington and across the city and region that have become partners, and their significant contributions over the growing seasons!<br>We are currently seeking volunteers who possess particular skills - such as web design, grant writing\\/fundraising, or marketing \\u2013 to support our organizational advancement. To tell us about your skills or to find out what special projects may be coming up, please email us at&nbsp;<a href=\\\"mailto: noelle@urbantreeconnection.org\\\">noelle@urbantreeconnection.org<\\/a>.<\\/p>\",\"processed\":\"<p>Urban Tree Connection is a grassroots organization, and we rely on the partnership of community volunteers to make our work possible. Last year, 978 volunteers contributed more than 7,000 hours of their time at our farms and garden sites.  We appreciate our volunteers from Haddington and across the city and region that have become partners, and their significant contributions over the growing seasons!<br>We are currently seeking volunteers who possess particular skills - such as web design, grant writing\\/fundraising, or marketing \\u2013 to support our organizational advancement. To tell us about your skills or to find out what special projects may be coming up, please email us at&nbsp;<a href=\\\"mailto: noelle@urbantreeconnection.org\\\">noelle@urbantreeconnection.org<\\/a>.<\\/p>\"}}', ' Urban Tree Connection is a grassroots organization, and we rely on the partnership of community volunteers to make our work possible. Last year, 978 volunteers contributed more than 7,000 hours of their time at our farms and garden sites.  We appreciate our volunteers from Haddington and across the city and region that have become partners, and their significant contributions over the growing seasons!We are currently seeking volunteers who possess particular skills - such as web design, grant writing/fundraising, or marketing – to support our organizational advancement. To tell us about your skills or to find out what special projects may be coming up, please email us at&nbsp;noelle@urbantreeconnection.org. ', '2018-08-30 19:02:50', '1'),
(823, 75, 21, 8, 2, 1000, '{\"_id\":\"75\",\"text\":{\"_flang\":\"html\",\"raw\":\"<p>Urban Tree Connection is a grassroots organization, and we rely on the partnership of community volunteers to make our work possible. Last year, 978 volunteers contributed more than 7,000 hours of their time at our farms and garden sites.  We appreciate our volunteers from Haddington and across the city and region that have become partners, and their significant contributions over the growing seasons!<br><br>We are currently seeking volunteers who possess particular skills - such as web design, grant writing\\/fundraising, or marketing \\u2013 to support our organizational advancement. To tell us about your skills or to find out what special projects may be coming up, please email us at&nbsp;<a href=\\\"mailto: noelle@urbantreeconnection.org\\\">noelle@urbantreeconnection.org<\\/a>.<\\/p>\",\"processed\":\"<p>Urban Tree Connection is a grassroots organization, and we rely on the partnership of community volunteers to make our work possible. Last year, 978 volunteers contributed more than 7,000 hours of their time at our farms and garden sites.  We appreciate our volunteers from Haddington and across the city and region that have become partners, and their significant contributions over the growing seasons!<br><br>We are currently seeking volunteers who possess particular skills - such as web design, grant writing\\/fundraising, or marketing \\u2013 to support our organizational advancement. To tell us about your skills or to find out what special projects may be coming up, please email us at&nbsp;<a href=\\\"mailto: noelle@urbantreeconnection.org\\\">noelle@urbantreeconnection.org<\\/a>.<\\/p>\"}}', ' Urban Tree Connection is a grassroots organization, and we rely on the partnership of community volunteers to make our work possible. Last year, 978 volunteers contributed more than 7,000 hours of their time at our farms and garden sites.  We appreciate our volunteers from Haddington and across the city and region that have become partners, and their significant contributions over the growing seasons!We are currently seeking volunteers who possess particular skills - such as web design, grant writing/fundraising, or marketing – to support our organizational advancement. To tell us about your skills or to find out what special projects may be coming up, please email us at&nbsp;noelle@urbantreeconnection.org. ', '2018-08-30 19:02:54', '1'),
(824, 76, 22, 8, 0, 1000, '', '', '2018-08-30 19:09:08', ''),
(825, 76, 22, 8, 1, 1000, '{\"_id\":\"76\",\"position_name\":\"Farming Apprenticeship\",\"position_descriptin\":\"Farm Apprentices will receive 1:1 training with our farm staff in sustainable vegetable production along with a share in the harvest. Apprenticeships can be structured for 3 to 9 months during the growing season.\"}', ' Farming Apprenticeship Farm Apprentices will receive 1:1 training with our farm staff in sustainable vegetable production along with a share in the harvest. Apprenticeships can be structured for 3 to 9 months during the growing season. ', '2018-08-30 19:09:23', '1'),
(826, 77, 22, 8, 1, 1001, '', '', '2018-08-30 19:09:23', ''),
(827, 76, 22, 8, 2, 1000, '{\"_id\":\"76\",\"position_name\":\"Farming Apprenticeship\",\"position_descriptin\":\"Farm Apprentices will receive 1:1 training with our farm staff in sustainable vegetable production along with a share in the harvest. Apprenticeships can be structured for 3 to 9 months during the growing season.\"}', ' Farming Apprenticeship Farm Apprentices will receive 1:1 training with our farm staff in sustainable vegetable production along with a share in the harvest. Apprenticeships can be structured for 3 to 9 months during the growing season. ', '2018-08-30 19:09:35', '1'),
(828, 77, 22, 8, 2, 1001, '{\"_id\":\"77\",\"position_name\":\"Grants & Communications Internship\",\"position_descriptin\":\"UTC is currently seeking an intern that can support with grant writing, communications, and social media. We are seeking 6 month to year-long interns.\"}', ' Grants & Communications Internship UTC is currently seeking an intern that can support with grant writing, communications, and social media. We are seeking 6 month to year-long interns. ', '2018-08-30 19:09:35', '1'),
(873, 86, 23, 8, 8, 1008, '', '', '2018-08-30 19:12:00', ''),
(884, 78, 23, 8, 10, 1000, '{\"_id\":\"78\",\"text\":\"Ink for Laser Jet 304A\",\"_title\":\"Ink for Laser Jet 304A\"}', ' Ink for Laser Jet 304A ', '2018-08-30 19:12:08', '1'),
(883, 87, 23, 8, 9, 1009, '', '', '2018-08-30 19:12:04', ''),
(896, 79, 23, 8, 11, 1001, '{\"_id\":\"79\",\"text\":\"13-Gallon Trash Bags\",\"_title\":\"13-Gallon Trash Bags\"}', ' 13-Gallon Trash Bags ', '2018-08-30 19:12:12', '1'),
(895, 78, 23, 8, 11, 1000, '{\"_id\":\"78\",\"text\":\"Ink for Laser Jet 304A\",\"_title\":\"Ink for Laser Jet 304A\"}', ' Ink for Laser Jet 304A ', '2018-08-30 19:12:12', '1'),
(894, 88, 23, 8, 10, 1010, '', '', '2018-08-30 19:12:08', ''),
(909, 80, 23, 8, 12, 1002, '{\"_id\":\"80\",\"text\":\"Large Chart Paper\",\"_title\":\"Large Chart Paper\"}', ' Large Chart Paper ', '2018-08-30 19:12:16', '1'),
(908, 79, 23, 8, 12, 1001, '{\"_id\":\"79\",\"text\":\"13-Gallon Trash Bags\",\"_title\":\"13-Gallon Trash Bags\"}', ' 13-Gallon Trash Bags ', '2018-08-30 19:12:16', '1'),
(907, 78, 23, 8, 12, 1000, '{\"_id\":\"78\",\"text\":\"Ink for Laser Jet 304A\",\"_title\":\"Ink for Laser Jet 304A\"}', ' Ink for Laser Jet 304A ', '2018-08-30 19:12:16', '1'),
(906, 89, 23, 8, 11, 1011, '', '', '2018-08-30 19:12:12', ''),
(987, 92, 24, 8, 11, 1001, '{\"_id\":\"92\",\"text\":\"Pocket Snips\",\"_title\":\"Pocket Snips\"}', ' Pocket Snips ', '2018-08-30 19:13:07', '1'),
(986, 91, 24, 8, 11, 1000, '{\"_id\":\"91\",\"text\":\"Garden Tools\",\"_title\":\"Garden Tools\"}', ' Garden Tools ', '2018-08-30 19:13:07', '1'),
(974, 100, 24, 8, 9, 1009, '', '', '2018-08-30 19:13:01', ''),
(975, 91, 24, 8, 10, 1000, '{\"_id\":\"91\",\"text\":\"Garden Tools\",\"_title\":\"Garden Tools\"}', ' Garden Tools ', '2018-08-30 19:13:04', '1'),
(964, 99, 24, 8, 8, 1008, '', '', '2018-08-30 19:12:57', ''),
(919, 90, 23, 8, 12, 1012, '', '', '2018-08-30 19:12:16', ''),
(844, 78, 23, 8, 5, 1000, '{\"_id\":\"78\",\"text\":\"Ink for Laser Jet 304A\",\"_title\":\"Ink for Laser Jet 304A\"}', ' Ink for Laser Jet 304A ', '2018-08-30 19:11:47', '1'),
(845, 79, 23, 8, 5, 1001, '{\"_id\":\"79\",\"text\":\"13-Gallon Trash Bags\",\"_title\":\"13-Gallon Trash Bags\"}', ' 13-Gallon Trash Bags ', '2018-08-30 19:11:47', '1'),
(846, 80, 23, 8, 5, 1002, '{\"_id\":\"80\",\"text\":\"Large Chart Paper\",\"_title\":\"Large Chart Paper\"}', ' Large Chart Paper ', '2018-08-30 19:11:47', '1'),
(847, 81, 23, 8, 5, 1003, '{\"_id\":\"81\",\"text\":\"Sharpies\\/Markers\",\"_title\":\"Sharpies\\/Markers\"}', ' Sharpies/Markers ', '2018-08-30 19:11:47', '1'),
(848, 82, 23, 8, 5, 1004, '{\"_id\":\"82\",\"text\":\"Art Supplies\",\"_title\":\"Art Supplies\"}', ' Art Supplies ', '2018-08-30 19:11:47', '1'),
(849, 83, 23, 8, 5, 1005, '', '', '2018-08-30 19:11:47', ''),
(850, 78, 23, 8, 6, 1000, '{\"_id\":\"78\",\"text\":\"Ink for Laser Jet 304A\",\"_title\":\"Ink for Laser Jet 304A\"}', ' Ink for Laser Jet 304A ', '2018-08-30 19:11:50', '1'),
(851, 79, 23, 8, 6, 1001, '{\"_id\":\"79\",\"text\":\"13-Gallon Trash Bags\",\"_title\":\"13-Gallon Trash Bags\"}', ' 13-Gallon Trash Bags ', '2018-08-30 19:11:50', '1'),
(852, 80, 23, 8, 6, 1002, '{\"_id\":\"80\",\"text\":\"Large Chart Paper\",\"_title\":\"Large Chart Paper\"}', ' Large Chart Paper ', '2018-08-30 19:11:50', '1'),
(853, 81, 23, 8, 6, 1003, '{\"_id\":\"81\",\"text\":\"Sharpies\\/Markers\",\"_title\":\"Sharpies\\/Markers\"}', ' Sharpies/Markers ', '2018-08-30 19:11:50', '1'),
(854, 82, 23, 8, 6, 1004, '{\"_id\":\"82\",\"text\":\"Art Supplies\",\"_title\":\"Art Supplies\"}', ' Art Supplies ', '2018-08-30 19:11:50', '1'),
(855, 83, 23, 8, 6, 1005, '{\"_id\":\"83\",\"text\":\"Projector Screen\",\"_title\":\"Projector Screen\"}', ' Projector Screen ', '2018-08-30 19:11:50', '1'),
(856, 84, 23, 8, 6, 1006, '', '', '2018-08-30 19:11:50', ''),
(857, 78, 23, 8, 7, 1000, '{\"_id\":\"78\",\"text\":\"Ink for Laser Jet 304A\",\"_title\":\"Ink for Laser Jet 304A\"}', ' Ink for Laser Jet 304A ', '2018-08-30 19:11:55', '1'),
(858, 79, 23, 8, 7, 1001, '{\"_id\":\"79\",\"text\":\"13-Gallon Trash Bags\",\"_title\":\"13-Gallon Trash Bags\"}', ' 13-Gallon Trash Bags ', '2018-08-30 19:11:55', '1'),
(859, 80, 23, 8, 7, 1002, '{\"_id\":\"80\",\"text\":\"Large Chart Paper\",\"_title\":\"Large Chart Paper\"}', ' Large Chart Paper ', '2018-08-30 19:11:55', '1'),
(860, 81, 23, 8, 7, 1003, '{\"_id\":\"81\",\"text\":\"Sharpies\\/Markers\",\"_title\":\"Sharpies\\/Markers\"}', ' Sharpies/Markers ', '2018-08-30 19:11:55', '1'),
(861, 82, 23, 8, 7, 1004, '{\"_id\":\"82\",\"text\":\"Art Supplies\",\"_title\":\"Art Supplies\"}', ' Art Supplies ', '2018-08-30 19:11:55', '1'),
(862, 83, 23, 8, 7, 1005, '{\"_id\":\"83\",\"text\":\"Projector Screen\",\"_title\":\"Projector Screen\"}', ' Projector Screen ', '2018-08-30 19:11:55', '1'),
(863, 84, 23, 8, 7, 1006, '{\"_id\":\"84\",\"text\":\"Propane Canisters\",\"_title\":\"Propane Canisters\"}', ' Propane Canisters ', '2018-08-30 19:11:55', '1'),
(864, 85, 23, 8, 7, 1007, '', '', '2018-08-30 19:11:55', ''),
(865, 78, 23, 8, 8, 1000, '{\"_id\":\"78\",\"text\":\"Ink for Laser Jet 304A\",\"_title\":\"Ink for Laser Jet 304A\"}', ' Ink for Laser Jet 304A ', '2018-08-30 19:12:00', '1'),
(866, 79, 23, 8, 8, 1001, '{\"_id\":\"79\",\"text\":\"13-Gallon Trash Bags\",\"_title\":\"13-Gallon Trash Bags\"}', ' 13-Gallon Trash Bags ', '2018-08-30 19:12:00', '1'),
(867, 80, 23, 8, 8, 1002, '{\"_id\":\"80\",\"text\":\"Large Chart Paper\",\"_title\":\"Large Chart Paper\"}', ' Large Chart Paper ', '2018-08-30 19:12:00', '1'),
(868, 81, 23, 8, 8, 1003, '{\"_id\":\"81\",\"text\":\"Sharpies\\/Markers\",\"_title\":\"Sharpies\\/Markers\"}', ' Sharpies/Markers ', '2018-08-30 19:12:00', '1'),
(869, 82, 23, 8, 8, 1004, '{\"_id\":\"82\",\"text\":\"Art Supplies\",\"_title\":\"Art Supplies\"}', ' Art Supplies ', '2018-08-30 19:12:00', '1'),
(870, 83, 23, 8, 8, 1005, '{\"_id\":\"83\",\"text\":\"Projector Screen\",\"_title\":\"Projector Screen\"}', ' Projector Screen ', '2018-08-30 19:12:00', '1'),
(871, 84, 23, 8, 8, 1006, '{\"_id\":\"84\",\"text\":\"Propane Canisters\",\"_title\":\"Propane Canisters\"}', ' Propane Canisters ', '2018-08-30 19:12:00', '1'),
(872, 85, 23, 8, 8, 1007, '{\"_id\":\"85\",\"text\":\"Non-perishable Snacks\",\"_title\":\"Non-perishable Snacks\"}', ' Non-perishable Snacks ', '2018-08-30 19:12:00', '1'),
(874, 78, 23, 8, 9, 1000, '{\"_id\":\"78\",\"text\":\"Ink for Laser Jet 304A\",\"_title\":\"Ink for Laser Jet 304A\"}', ' Ink for Laser Jet 304A ', '2018-08-30 19:12:04', '1'),
(875, 79, 23, 8, 9, 1001, '{\"_id\":\"79\",\"text\":\"13-Gallon Trash Bags\",\"_title\":\"13-Gallon Trash Bags\"}', ' 13-Gallon Trash Bags ', '2018-08-30 19:12:04', '1'),
(876, 80, 23, 8, 9, 1002, '{\"_id\":\"80\",\"text\":\"Large Chart Paper\",\"_title\":\"Large Chart Paper\"}', ' Large Chart Paper ', '2018-08-30 19:12:04', '1'),
(877, 81, 23, 8, 9, 1003, '{\"_id\":\"81\",\"text\":\"Sharpies\\/Markers\",\"_title\":\"Sharpies\\/Markers\"}', ' Sharpies/Markers ', '2018-08-30 19:12:04', '1'),
(878, 82, 23, 8, 9, 1004, '{\"_id\":\"82\",\"text\":\"Art Supplies\",\"_title\":\"Art Supplies\"}', ' Art Supplies ', '2018-08-30 19:12:04', '1'),
(879, 83, 23, 8, 9, 1005, '{\"_id\":\"83\",\"text\":\"Projector Screen\",\"_title\":\"Projector Screen\"}', ' Projector Screen ', '2018-08-30 19:12:04', '1'),
(880, 84, 23, 8, 9, 1006, '{\"_id\":\"84\",\"text\":\"Propane Canisters\",\"_title\":\"Propane Canisters\"}', ' Propane Canisters ', '2018-08-30 19:12:04', '1'),
(881, 85, 23, 8, 9, 1007, '{\"_id\":\"85\",\"text\":\"Non-perishable Snacks\",\"_title\":\"Non-perishable Snacks\"}', ' Non-perishable Snacks ', '2018-08-30 19:12:04', '1'),
(882, 86, 23, 8, 9, 1008, '{\"_id\":\"86\",\"text\":\"SEPTA Tokens (for youth)\",\"_title\":\"SEPTA Tokens (for youth)\"}', ' SEPTA Tokens (for youth) ', '2018-08-30 19:12:04', '1'),
(885, 79, 23, 8, 10, 1001, '{\"_id\":\"79\",\"text\":\"13-Gallon Trash Bags\",\"_title\":\"13-Gallon Trash Bags\"}', ' 13-Gallon Trash Bags ', '2018-08-30 19:12:08', '1'),
(886, 80, 23, 8, 10, 1002, '{\"_id\":\"80\",\"text\":\"Large Chart Paper\",\"_title\":\"Large Chart Paper\"}', ' Large Chart Paper ', '2018-08-30 19:12:08', '1'),
(887, 81, 23, 8, 10, 1003, '{\"_id\":\"81\",\"text\":\"Sharpies\\/Markers\",\"_title\":\"Sharpies\\/Markers\"}', ' Sharpies/Markers ', '2018-08-30 19:12:08', '1'),
(888, 82, 23, 8, 10, 1004, '{\"_id\":\"82\",\"text\":\"Art Supplies\",\"_title\":\"Art Supplies\"}', ' Art Supplies ', '2018-08-30 19:12:08', '1'),
(889, 83, 23, 8, 10, 1005, '{\"_id\":\"83\",\"text\":\"Projector Screen\",\"_title\":\"Projector Screen\"}', ' Projector Screen ', '2018-08-30 19:12:08', '1'),
(890, 84, 23, 8, 10, 1006, '{\"_id\":\"84\",\"text\":\"Propane Canisters\",\"_title\":\"Propane Canisters\"}', ' Propane Canisters ', '2018-08-30 19:12:08', '1'),
(891, 85, 23, 8, 10, 1007, '{\"_id\":\"85\",\"text\":\"Non-perishable Snacks\",\"_title\":\"Non-perishable Snacks\"}', ' Non-perishable Snacks ', '2018-08-30 19:12:08', '1'),
(892, 86, 23, 8, 10, 1008, '{\"_id\":\"86\",\"text\":\"SEPTA Tokens (for youth)\",\"_title\":\"SEPTA Tokens (for youth)\"}', ' SEPTA Tokens (for youth) ', '2018-08-30 19:12:08', '1'),
(893, 87, 23, 8, 10, 1009, '{\"_id\":\"87\",\"text\":\"iPad (for farmers markets)\",\"_title\":\"iPad (for farmers markets)\"}', ' iPad (for farmers markets) ', '2018-08-30 19:12:08', '1'),
(897, 80, 23, 8, 11, 1002, '{\"_id\":\"80\",\"text\":\"Large Chart Paper\",\"_title\":\"Large Chart Paper\"}', ' Large Chart Paper ', '2018-08-30 19:12:12', '1'),
(898, 81, 23, 8, 11, 1003, '{\"_id\":\"81\",\"text\":\"Sharpies\\/Markers\",\"_title\":\"Sharpies\\/Markers\"}', ' Sharpies/Markers ', '2018-08-30 19:12:12', '1'),
(899, 82, 23, 8, 11, 1004, '{\"_id\":\"82\",\"text\":\"Art Supplies\",\"_title\":\"Art Supplies\"}', ' Art Supplies ', '2018-08-30 19:12:12', '1'),
(900, 83, 23, 8, 11, 1005, '{\"_id\":\"83\",\"text\":\"Projector Screen\",\"_title\":\"Projector Screen\"}', ' Projector Screen ', '2018-08-30 19:12:12', '1'),
(901, 84, 23, 8, 11, 1006, '{\"_id\":\"84\",\"text\":\"Propane Canisters\",\"_title\":\"Propane Canisters\"}', ' Propane Canisters ', '2018-08-30 19:12:12', '1'),
(902, 85, 23, 8, 11, 1007, '{\"_id\":\"85\",\"text\":\"Non-perishable Snacks\",\"_title\":\"Non-perishable Snacks\"}', ' Non-perishable Snacks ', '2018-08-30 19:12:12', '1'),
(903, 86, 23, 8, 11, 1008, '{\"_id\":\"86\",\"text\":\"SEPTA Tokens (for youth)\",\"_title\":\"SEPTA Tokens (for youth)\"}', ' SEPTA Tokens (for youth) ', '2018-08-30 19:12:12', '1'),
(904, 87, 23, 8, 11, 1009, '{\"_id\":\"87\",\"text\":\"iPad (for farmers markets)\",\"_title\":\"iPad (for farmers markets)\"}', ' iPad (for farmers markets) ', '2018-08-30 19:12:12', '1'),
(905, 88, 23, 8, 11, 1010, '{\"_id\":\"88\",\"text\":\"Camera\",\"_title\":\"Camera\"}', ' Camera ', '2018-08-30 19:12:12', '1'),
(910, 81, 23, 8, 12, 1003, '{\"_id\":\"81\",\"text\":\"Sharpies\\/Markers\",\"_title\":\"Sharpies\\/Markers\"}', ' Sharpies/Markers ', '2018-08-30 19:12:16', '1'),
(911, 82, 23, 8, 12, 1004, '{\"_id\":\"82\",\"text\":\"Art Supplies\",\"_title\":\"Art Supplies\"}', ' Art Supplies ', '2018-08-30 19:12:16', '1'),
(912, 83, 23, 8, 12, 1005, '{\"_id\":\"83\",\"text\":\"Projector Screen\",\"_title\":\"Projector Screen\"}', ' Projector Screen ', '2018-08-30 19:12:16', '1'),
(913, 84, 23, 8, 12, 1006, '{\"_id\":\"84\",\"text\":\"Propane Canisters\",\"_title\":\"Propane Canisters\"}', ' Propane Canisters ', '2018-08-30 19:12:16', '1'),
(914, 85, 23, 8, 12, 1007, '{\"_id\":\"85\",\"text\":\"Non-perishable Snacks\",\"_title\":\"Non-perishable Snacks\"}', ' Non-perishable Snacks ', '2018-08-30 19:12:16', '1'),
(915, 86, 23, 8, 12, 1008, '{\"_id\":\"86\",\"text\":\"SEPTA Tokens (for youth)\",\"_title\":\"SEPTA Tokens (for youth)\"}', ' SEPTA Tokens (for youth) ', '2018-08-30 19:12:16', '1'),
(916, 87, 23, 8, 12, 1009, '{\"_id\":\"87\",\"text\":\"iPad (for farmers markets)\",\"_title\":\"iPad (for farmers markets)\"}', ' iPad (for farmers markets) ', '2018-08-30 19:12:16', '1'),
(917, 88, 23, 8, 12, 1010, '{\"_id\":\"88\",\"text\":\"Camera\",\"_title\":\"Camera\"}', ' Camera ', '2018-08-30 19:12:16', '1'),
(918, 89, 23, 8, 12, 1011, '{\"_id\":\"89\",\"text\":\"Dry Food Ingredients\\/Spices\",\"_title\":\"Dry Food Ingredients\\/Spices\"}', ' Dry Food Ingredients/Spices ', '2018-08-30 19:12:16', '1'),
(985, 101, 24, 8, 10, 1010, '', '', '2018-08-30 19:13:04', ''),
(1000, 93, 24, 8, 12, 1002, '{\"_id\":\"93\",\"text\":\"Soil Testing Kits\",\"_title\":\"Soil Testing Kits\"}', ' Soil Testing Kits ', '2018-08-30 19:13:11', '1'),
(999, 92, 24, 8, 12, 1001, '{\"_id\":\"92\",\"text\":\"Pocket Snips\",\"_title\":\"Pocket Snips\"}', ' Pocket Snips ', '2018-08-30 19:13:11', '1'),
(998, 91, 24, 8, 12, 1000, '{\"_id\":\"91\",\"text\":\"Garden Tools\",\"_title\":\"Garden Tools\"}', ' Garden Tools ', '2018-08-30 19:13:11', '1'),
(997, 102, 24, 8, 11, 1011, '', '', '2018-08-30 19:13:08', ''),
(935, 91, 24, 8, 5, 1000, '{\"_id\":\"91\",\"text\":\"Garden Tools\",\"_title\":\"Garden Tools\"}', ' Garden Tools ', '2018-08-30 19:12:48', '1'),
(936, 92, 24, 8, 5, 1001, '{\"_id\":\"92\",\"text\":\"Pocket Snips\",\"_title\":\"Pocket Snips\"}', ' Pocket Snips ', '2018-08-30 19:12:48', '1'),
(937, 93, 24, 8, 5, 1002, '{\"_id\":\"93\",\"text\":\"Soil Testing Kits\",\"_title\":\"Soil Testing Kits\"}', ' Soil Testing Kits ', '2018-08-30 19:12:48', '1'),
(938, 94, 24, 8, 5, 1003, '{\"_id\":\"94\",\"text\":\"Cordless Drills\",\"_title\":\"Cordless Drills\"}', ' Cordless Drills ', '2018-08-30 19:12:48', '1'),
(939, 95, 24, 8, 5, 1004, '{\"_id\":\"95\",\"text\":\"Cordless Chainsaw\",\"_title\":\"Cordless Chainsaw\"}', ' Cordless Chainsaw ', '2018-08-30 19:12:48', '1'),
(940, 96, 24, 8, 5, 1005, '', '', '2018-08-30 19:12:48', ''),
(941, 91, 24, 8, 6, 1000, '{\"_id\":\"91\",\"text\":\"Garden Tools\",\"_title\":\"Garden Tools\"}', ' Garden Tools ', '2018-08-30 19:12:51', '1'),
(942, 92, 24, 8, 6, 1001, '{\"_id\":\"92\",\"text\":\"Pocket Snips\",\"_title\":\"Pocket Snips\"}', ' Pocket Snips ', '2018-08-30 19:12:51', '1'),
(943, 93, 24, 8, 6, 1002, '{\"_id\":\"93\",\"text\":\"Soil Testing Kits\",\"_title\":\"Soil Testing Kits\"}', ' Soil Testing Kits ', '2018-08-30 19:12:51', '1'),
(944, 94, 24, 8, 6, 1003, '{\"_id\":\"94\",\"text\":\"Cordless Drills\",\"_title\":\"Cordless Drills\"}', ' Cordless Drills ', '2018-08-30 19:12:51', '1'),
(945, 95, 24, 8, 6, 1004, '{\"_id\":\"95\",\"text\":\"Cordless Chainsaw\",\"_title\":\"Cordless Chainsaw\"}', ' Cordless Chainsaw ', '2018-08-30 19:12:51', '1'),
(946, 96, 24, 8, 6, 1005, '{\"_id\":\"96\",\"text\":\"Cordless Hedge Trimmer\",\"_title\":\"Cordless Hedge Trimmer\"}', ' Cordless Hedge Trimmer ', '2018-08-30 19:12:51', '1'),
(947, 97, 24, 8, 6, 1006, '', '', '2018-08-30 19:12:51', ''),
(948, 91, 24, 8, 7, 1000, '{\"_id\":\"91\",\"text\":\"Garden Tools\",\"_title\":\"Garden Tools\"}', ' Garden Tools ', '2018-08-30 19:12:54', '1'),
(949, 92, 24, 8, 7, 1001, '{\"_id\":\"92\",\"text\":\"Pocket Snips\",\"_title\":\"Pocket Snips\"}', ' Pocket Snips ', '2018-08-30 19:12:54', '1'),
(950, 93, 24, 8, 7, 1002, '{\"_id\":\"93\",\"text\":\"Soil Testing Kits\",\"_title\":\"Soil Testing Kits\"}', ' Soil Testing Kits ', '2018-08-30 19:12:54', '1'),
(951, 94, 24, 8, 7, 1003, '{\"_id\":\"94\",\"text\":\"Cordless Drills\",\"_title\":\"Cordless Drills\"}', ' Cordless Drills ', '2018-08-30 19:12:54', '1'),
(952, 95, 24, 8, 7, 1004, '{\"_id\":\"95\",\"text\":\"Cordless Chainsaw\",\"_title\":\"Cordless Chainsaw\"}', ' Cordless Chainsaw ', '2018-08-30 19:12:54', '1'),
(953, 96, 24, 8, 7, 1005, '{\"_id\":\"96\",\"text\":\"Cordless Hedge Trimmer\",\"_title\":\"Cordless Hedge Trimmer\"}', ' Cordless Hedge Trimmer ', '2018-08-30 19:12:54', '1'),
(954, 97, 24, 8, 7, 1006, '{\"_id\":\"97\",\"text\":\"Bypass Pruners\",\"_title\":\"Bypass Pruners\"}', ' Bypass Pruners ', '2018-08-30 19:12:54', '1'),
(955, 98, 24, 8, 7, 1007, '', '', '2018-08-30 19:12:54', ''),
(956, 91, 24, 8, 8, 1000, '{\"_id\":\"91\",\"text\":\"Garden Tools\",\"_title\":\"Garden Tools\"}', ' Garden Tools ', '2018-08-30 19:12:57', '1'),
(957, 92, 24, 8, 8, 1001, '{\"_id\":\"92\",\"text\":\"Pocket Snips\",\"_title\":\"Pocket Snips\"}', ' Pocket Snips ', '2018-08-30 19:12:57', '1'),
(958, 93, 24, 8, 8, 1002, '{\"_id\":\"93\",\"text\":\"Soil Testing Kits\",\"_title\":\"Soil Testing Kits\"}', ' Soil Testing Kits ', '2018-08-30 19:12:57', '1'),
(959, 94, 24, 8, 8, 1003, '{\"_id\":\"94\",\"text\":\"Cordless Drills\",\"_title\":\"Cordless Drills\"}', ' Cordless Drills ', '2018-08-30 19:12:57', '1'),
(960, 95, 24, 8, 8, 1004, '{\"_id\":\"95\",\"text\":\"Cordless Chainsaw\",\"_title\":\"Cordless Chainsaw\"}', ' Cordless Chainsaw ', '2018-08-30 19:12:57', '1'),
(961, 96, 24, 8, 8, 1005, '{\"_id\":\"96\",\"text\":\"Cordless Hedge Trimmer\",\"_title\":\"Cordless Hedge Trimmer\"}', ' Cordless Hedge Trimmer ', '2018-08-30 19:12:57', '1'),
(962, 97, 24, 8, 8, 1006, '{\"_id\":\"97\",\"text\":\"Bypass Pruners\",\"_title\":\"Bypass Pruners\"}', ' Bypass Pruners ', '2018-08-30 19:12:57', '1'),
(963, 98, 24, 8, 8, 1007, '{\"_id\":\"98\",\"text\":\"10 inch Nursery Pots\",\"_title\":\"10 inch Nursery Pots\"}', ' 10 inch Nursery Pots ', '2018-08-30 19:12:57', '1'),
(965, 91, 24, 8, 9, 1000, '{\"_id\":\"91\",\"text\":\"Garden Tools\",\"_title\":\"Garden Tools\"}', ' Garden Tools ', '2018-08-30 19:13:01', '1'),
(966, 92, 24, 8, 9, 1001, '{\"_id\":\"92\",\"text\":\"Pocket Snips\",\"_title\":\"Pocket Snips\"}', ' Pocket Snips ', '2018-08-30 19:13:01', '1'),
(967, 93, 24, 8, 9, 1002, '{\"_id\":\"93\",\"text\":\"Soil Testing Kits\",\"_title\":\"Soil Testing Kits\"}', ' Soil Testing Kits ', '2018-08-30 19:13:01', '1'),
(968, 94, 24, 8, 9, 1003, '{\"_id\":\"94\",\"text\":\"Cordless Drills\",\"_title\":\"Cordless Drills\"}', ' Cordless Drills ', '2018-08-30 19:13:01', '1'),
(969, 95, 24, 8, 9, 1004, '{\"_id\":\"95\",\"text\":\"Cordless Chainsaw\",\"_title\":\"Cordless Chainsaw\"}', ' Cordless Chainsaw ', '2018-08-30 19:13:01', '1'),
(970, 96, 24, 8, 9, 1005, '{\"_id\":\"96\",\"text\":\"Cordless Hedge Trimmer\",\"_title\":\"Cordless Hedge Trimmer\"}', ' Cordless Hedge Trimmer ', '2018-08-30 19:13:01', '1'),
(971, 97, 24, 8, 9, 1006, '{\"_id\":\"97\",\"text\":\"Bypass Pruners\",\"_title\":\"Bypass Pruners\"}', ' Bypass Pruners ', '2018-08-30 19:13:01', '1'),
(972, 98, 24, 8, 9, 1007, '{\"_id\":\"98\",\"text\":\"10 inch Nursery Pots\",\"_title\":\"10 inch Nursery Pots\"}', ' 10 inch Nursery Pots ', '2018-08-30 19:13:01', '1'),
(973, 99, 24, 8, 9, 1008, '{\"_id\":\"99\",\"text\":\"Outdoor Chairs\",\"_title\":\"Outdoor Chairs\"}', ' Outdoor Chairs ', '2018-08-30 19:13:01', '1'),
(976, 92, 24, 8, 10, 1001, '{\"_id\":\"92\",\"text\":\"Pocket Snips\",\"_title\":\"Pocket Snips\"}', ' Pocket Snips ', '2018-08-30 19:13:04', '1'),
(977, 93, 24, 8, 10, 1002, '{\"_id\":\"93\",\"text\":\"Soil Testing Kits\",\"_title\":\"Soil Testing Kits\"}', ' Soil Testing Kits ', '2018-08-30 19:13:04', '1'),
(978, 94, 24, 8, 10, 1003, '{\"_id\":\"94\",\"text\":\"Cordless Drills\",\"_title\":\"Cordless Drills\"}', ' Cordless Drills ', '2018-08-30 19:13:04', '1'),
(979, 95, 24, 8, 10, 1004, '{\"_id\":\"95\",\"text\":\"Cordless Chainsaw\",\"_title\":\"Cordless Chainsaw\"}', ' Cordless Chainsaw ', '2018-08-30 19:13:04', '1'),
(980, 96, 24, 8, 10, 1005, '{\"_id\":\"96\",\"text\":\"Cordless Hedge Trimmer\",\"_title\":\"Cordless Hedge Trimmer\"}', ' Cordless Hedge Trimmer ', '2018-08-30 19:13:04', '1'),
(981, 97, 24, 8, 10, 1006, '{\"_id\":\"97\",\"text\":\"Bypass Pruners\",\"_title\":\"Bypass Pruners\"}', ' Bypass Pruners ', '2018-08-30 19:13:04', '1'),
(982, 98, 24, 8, 10, 1007, '{\"_id\":\"98\",\"text\":\"10 inch Nursery Pots\",\"_title\":\"10 inch Nursery Pots\"}', ' 10 inch Nursery Pots ', '2018-08-30 19:13:04', '1'),
(983, 99, 24, 8, 10, 1008, '{\"_id\":\"99\",\"text\":\"Outdoor Chairs\",\"_title\":\"Outdoor Chairs\"}', ' Outdoor Chairs ', '2018-08-30 19:13:04', '1'),
(984, 100, 24, 8, 10, 1009, '{\"_id\":\"100\",\"text\":\"40-Gallon Trash Bags\",\"_title\":\"40-Gallon Trash Bags\"}', ' 40-Gallon Trash Bags ', '2018-08-30 19:13:04', '1'),
(988, 93, 24, 8, 11, 1002, '{\"_id\":\"93\",\"text\":\"Soil Testing Kits\",\"_title\":\"Soil Testing Kits\"}', ' Soil Testing Kits ', '2018-08-30 19:13:07', '1'),
(989, 94, 24, 8, 11, 1003, '{\"_id\":\"94\",\"text\":\"Cordless Drills\",\"_title\":\"Cordless Drills\"}', ' Cordless Drills ', '2018-08-30 19:13:07', '1'),
(990, 95, 24, 8, 11, 1004, '{\"_id\":\"95\",\"text\":\"Cordless Chainsaw\",\"_title\":\"Cordless Chainsaw\"}', ' Cordless Chainsaw ', '2018-08-30 19:13:07', '1'),
(991, 96, 24, 8, 11, 1005, '{\"_id\":\"96\",\"text\":\"Cordless Hedge Trimmer\",\"_title\":\"Cordless Hedge Trimmer\"}', ' Cordless Hedge Trimmer ', '2018-08-30 19:13:07', '1'),
(992, 97, 24, 8, 11, 1006, '{\"_id\":\"97\",\"text\":\"Bypass Pruners\",\"_title\":\"Bypass Pruners\"}', ' Bypass Pruners ', '2018-08-30 19:13:07', '1'),
(993, 98, 24, 8, 11, 1007, '{\"_id\":\"98\",\"text\":\"10 inch Nursery Pots\",\"_title\":\"10 inch Nursery Pots\"}', ' 10 inch Nursery Pots ', '2018-08-30 19:13:07', '1'),
(994, 99, 24, 8, 11, 1008, '{\"_id\":\"99\",\"text\":\"Outdoor Chairs\",\"_title\":\"Outdoor Chairs\"}', ' Outdoor Chairs ', '2018-08-30 19:13:07', '1'),
(995, 100, 24, 8, 11, 1009, '{\"_id\":\"100\",\"text\":\"40-Gallon Trash Bags\",\"_title\":\"40-Gallon Trash Bags\"}', ' 40-Gallon Trash Bags ', '2018-08-30 19:13:07', '1'),
(996, 101, 24, 8, 11, 1010, '{\"_id\":\"101\",\"text\":\"Agribon Row Covers\",\"_title\":\"Agribon Row Covers\"}', ' Agribon Row Covers ', '2018-08-30 19:13:07', '1'),
(1001, 94, 24, 8, 12, 1003, '{\"_id\":\"94\",\"text\":\"Cordless Drills\",\"_title\":\"Cordless Drills\"}', ' Cordless Drills ', '2018-08-30 19:13:11', '1'),
(1002, 95, 24, 8, 12, 1004, '{\"_id\":\"95\",\"text\":\"Cordless Chainsaw\",\"_title\":\"Cordless Chainsaw\"}', ' Cordless Chainsaw ', '2018-08-30 19:13:11', '1'),
(1003, 96, 24, 8, 12, 1005, '{\"_id\":\"96\",\"text\":\"Cordless Hedge Trimmer\",\"_title\":\"Cordless Hedge Trimmer\"}', ' Cordless Hedge Trimmer ', '2018-08-30 19:13:11', '1'),
(1004, 97, 24, 8, 12, 1006, '{\"_id\":\"97\",\"text\":\"Bypass Pruners\",\"_title\":\"Bypass Pruners\"}', ' Bypass Pruners ', '2018-08-30 19:13:11', '1'),
(1005, 98, 24, 8, 12, 1007, '{\"_id\":\"98\",\"text\":\"10 inch Nursery Pots\",\"_title\":\"10 inch Nursery Pots\"}', ' 10 inch Nursery Pots ', '2018-08-30 19:13:11', '1'),
(1006, 99, 24, 8, 12, 1008, '{\"_id\":\"99\",\"text\":\"Outdoor Chairs\",\"_title\":\"Outdoor Chairs\"}', ' Outdoor Chairs ', '2018-08-30 19:13:11', '1'),
(1007, 100, 24, 8, 12, 1009, '{\"_id\":\"100\",\"text\":\"40-Gallon Trash Bags\",\"_title\":\"40-Gallon Trash Bags\"}', ' 40-Gallon Trash Bags ', '2018-08-30 19:13:11', '1'),
(1008, 101, 24, 8, 12, 1010, '{\"_id\":\"101\",\"text\":\"Agribon Row Covers\",\"_title\":\"Agribon Row Covers\"}', ' Agribon Row Covers ', '2018-08-30 19:13:11', '1'),
(1009, 102, 24, 8, 12, 1011, '{\"_id\":\"102\",\"text\":\"Gardening Gloves\",\"_title\":\"Gardening Gloves\"}', ' Gardening Gloves ', '2018-08-30 19:13:11', '1'),
(1027, 6, 5, 2, 23, 1000, '{\"_id\":\"6\",\"left_image\":{\"assetID\":\"5\",\"title\":\"Gardening at Girarden\",\"_default\":\"\\/admin\\/resources\\/gardening-at-girarden.jpg\",\"bucket\":\"default\",\"path\":\"gardening-at-girarden.jpg\",\"size\":143319,\"w\":837,\"h\":560,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"100\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"gardening-at-girarden-thumb@2x.jpg\",\"size\":30148,\"mime\":\"image\\/jpeg\",\"assetID\":\"6\"}}},\"left_image_width\":\"100\",\"right_image\":{\"assetID\":\"7\",\"title\":\"Sprout\",\"_default\":\"\\/admin\\/resources\\/sprout.jpg\",\"bucket\":\"default\",\"path\":\"sprout.jpg\",\"size\":174915,\"w\":528,\"h\":704,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"112\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"sprout-thumb@2x.jpg\",\"size\":38923,\"mime\":\"image\\/jpeg\",\"assetID\":\"8\"}}},\"right_image_width\":\"200\",\"text\":{\"_flang\":\"html\",\"raw\":\"<p>The Urban Tree Connection (UTC) works with residents in Philadelphia\\u2019s historically marginalized urban communities to revitalize their neighborhoods by transforming abandoned open spaces into safe and functional places that inspire and promote positive human interaction. Founded in 1989 and incorporated as a 501(c)(3) nonprofit organization in 1997, UTC works with residents of West Philadelphia\'s Haddington neighborhood to develop community-driven greening and gardening projects on vacant land. Our aim is to cultivate community leadership to improve community health and to develop a local, sustainable, and equitable food system<br><\\/p>\\r\\n<p>Over the last 19 years, UTC has transformed the landscape of Haddington alongside community leaders, catalyzing residents\' demand for green space and locally produced fresh food. Together, we have redeveloped 29 vacant lots, totaling more than 86,000 square feet of land for communal growing and gathering, sustainable (chemical free) food production and distribution, and multigenerational health and wellness education. This includes our community gem - a \\u00be acre urban farm \\u2013 Neighborhood Foods Farm, which produces over 8,000 pounds of produce annually. Furthermore, UTC has been at the forefront of urban farming and land reclamation movements in Philadelphia, helping pioneer key tools for legal reclamation of abandoned properties.<br><br>Neighbors, once isolated from each other, increasingly connect through the gardens created on these formerly abandoned lots, as well as through <a href=\\\"http:\\/\\/urbantreeconnection.org\\/programs.php\\\">diverse array of educational and community programs<\\/a>&nbsp;that UTC offers.  These personal connections have, in turn, empowered neighbors to continue to transform their community. Today, Haddington residents are increasingly realizing the potential for growing food on abandoned lots in their neighborhood, and are active partners with UTC in developing a community based local food system aimed at making affordable, healthy, Haddington-grown food available to every neighbor. This community-based food system presents a powerful antidote to food insecurity and diet-related illnesses faced by residents.<\\/p>\",\"processed\":\"<p>The Urban Tree Connection (UTC) works with residents in Philadelphia\\u2019s historically marginalized urban communities to revitalize their neighborhoods by transforming abandoned open spaces into safe and functional places that inspire and promote positive human interaction. Founded in 1989 and incorporated as a 501(c)(3) nonprofit organization in 1997, UTC works with residents of West Philadelphia\'s Haddington neighborhood to develop community-driven greening and gardening projects on vacant land. Our aim is to cultivate community leadership to improve community health and to develop a local, sustainable, and equitable food system<br><\\/p>\\r\\n<p>Over the last 19 years, UTC has transformed the landscape of Haddington alongside community leaders, catalyzing residents\' demand for green space and locally produced fresh food. Together, we have redeveloped 29 vacant lots, totaling more than 86,000 square feet of land for communal growing and gathering, sustainable (chemical free) food production and distribution, and multigenerational health and wellness education. This includes our community gem - a \\u00be acre urban farm \\u2013 Neighborhood Foods Farm, which produces over 8,000 pounds of produce annually. Furthermore, UTC has been at the forefront of urban farming and land reclamation movements in Philadelphia, helping pioneer key tools for legal reclamation of abandoned properties.<br><br>Neighbors, once isolated from each other, increasingly connect through the gardens created on these formerly abandoned lots, as well as through <a href=\\\"http:\\/\\/urbantreeconnection.org\\/programs.php\\\">diverse array of educational and community programs<\\/a>&nbsp;that UTC offers.  These personal connections have, in turn, empowered neighbors to continue to transform their community. Today, Haddington residents are increasingly realizing the potential for growing food on abandoned lots in their neighborhood, and are active partners with UTC in developing a community based local food system aimed at making affordable, healthy, Haddington-grown food available to every neighbor. This community-based food system presents a powerful antidote to food insecurity and diet-related illnesses faced by residents.<\\/p>\"}}', '  100  200 The Urban Tree Connection (UTC) works with residents in Philadelphia’s historically marginalized urban communities to revitalize their neighborhoods by transforming abandoned open spaces into safe and functional places that inspire and promote positive human interaction. Founded in 1989 and incorporated as a 501(c)(3) nonprofit organization in 1997, UTC works with residents of West Philadelphia\'s Haddington neighborhood to develop community-driven greening and gardening projects on vacant land. Our aim is to cultivate community leadership to improve community health and to develop a local, sustainable, and equitable food system\r\nOver the last 19 years, UTC has transformed the landscape of Haddington alongside community leaders, catalyzing residents\' demand for green space and locally produced fresh food. Together, we have redeveloped 29 vacant lots, totaling more than 86,000 square feet of land for communal growing and gathering, sustainable (chemical free) food production and distribution, and multigenerational health and wellness education. This includes our community gem - a ¾ acre urban farm – Neighborhood Foods Farm, which produces over 8,000 pounds of produce annually. Furthermore, UTC has been at the forefront of urban farming and land reclamation movements in Philadelphia, helping pioneer key tools for legal reclamation of abandoned properties.Neighbors, once isolated from each other, increasingly connect through the gardens created on these formerly abandoned lots, as well as through diverse array of educational and community programs&nbsp;that UTC offers.  These personal connections have, in turn, empowered neighbors to continue to transform their community. Today, Haddington residents are increasingly realizing the potential for growing food on abandoned lots in their neighborhood, and are active partners with UTC in developing a community based local food system aimed at making affordable, healthy, Haddington-grown food available to every neighbor. This community-based food system presents a powerful antidote to food insecurity and diet-related illnesses faced by residents. ', '2018-08-30 22:31:51', '1');
INSERT INTO `perch3_content_items` (`itemRowID`, `itemID`, `regionID`, `pageID`, `itemRev`, `itemOrder`, `itemJSON`, `itemSearch`, `itemUpdated`, `itemUpdatedBy`) VALUES
(1030, 6, 5, 2, 26, 1000, '{\"_id\":\"6\",\"left_image\":{\"assetID\":\"5\",\"title\":\"Gardening at Girarden\",\"_default\":\"\\/admin\\/resources\\/gardening-at-girarden.jpg\",\"bucket\":\"default\",\"path\":\"gardening-at-girarden.jpg\",\"size\":143319,\"w\":837,\"h\":560,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"100\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"gardening-at-girarden-thumb@2x.jpg\",\"size\":30148,\"mime\":\"image\\/jpeg\",\"assetID\":\"6\"}}},\"left_image_width\":\"300\",\"right_image\":{\"assetID\":\"7\",\"title\":\"Sprout\",\"_default\":\"\\/admin\\/resources\\/sprout.jpg\",\"bucket\":\"default\",\"path\":\"sprout.jpg\",\"size\":174915,\"w\":528,\"h\":704,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"112\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"sprout-thumb@2x.jpg\",\"size\":38923,\"mime\":\"image\\/jpeg\",\"assetID\":\"8\"}}},\"right_image_width\":\"250\",\"text\":{\"_flang\":\"html\",\"raw\":\"<p>The Urban Tree Connection (UTC) works with residents in Philadelphia\\u2019s historically marginalized urban communities to revitalize their neighborhoods by transforming abandoned open spaces into safe and functional places that inspire and promote positive human interaction. Founded in 1989 and incorporated as a 501(c)(3) nonprofit organization in 1997, UTC works with residents of West Philadelphia\'s Haddington neighborhood to develop community-driven greening and gardening projects on vacant land. Our aim is to cultivate community leadership to improve community health and to develop a local, sustainable, and equitable food system<br><\\/p>\\r\\n<p>Over the last 19 years, UTC has transformed the landscape of Haddington alongside community leaders, catalyzing residents\' demand for green space and locally produced fresh food. Together, we have redeveloped 29 vacant lots, totaling more than 86,000 square feet of land for communal growing and gathering, sustainable (chemical free) food production and distribution, and multigenerational health and wellness education. This includes our community gem - a \\u00be acre urban farm \\u2013 Neighborhood Foods Farm, which produces over 8,000 pounds of produce annually. Furthermore, UTC has been at the forefront of urban farming and land reclamation movements in Philadelphia, helping pioneer key tools for legal reclamation of abandoned properties.<br><br>Neighbors, once isolated from each other, increasingly connect through the gardens created on these formerly abandoned lots, as well as through <a href=\\\"http:\\/\\/urbantreeconnection.org\\/programs.php\\\">diverse array of educational and community programs<\\/a>&nbsp;that UTC offers.  These personal connections have, in turn, empowered neighbors to continue to transform their community. Today, Haddington residents are increasingly realizing the potential for growing food on abandoned lots in their neighborhood, and are active partners with UTC in developing a community based local food system aimed at making affordable, healthy, Haddington-grown food available to every neighbor. This community-based food system presents a powerful antidote to food insecurity and diet-related illnesses faced by residents.<\\/p>\",\"processed\":\"<p>The Urban Tree Connection (UTC) works with residents in Philadelphia\\u2019s historically marginalized urban communities to revitalize their neighborhoods by transforming abandoned open spaces into safe and functional places that inspire and promote positive human interaction. Founded in 1989 and incorporated as a 501(c)(3) nonprofit organization in 1997, UTC works with residents of West Philadelphia\'s Haddington neighborhood to develop community-driven greening and gardening projects on vacant land. Our aim is to cultivate community leadership to improve community health and to develop a local, sustainable, and equitable food system<br><\\/p>\\r\\n<p>Over the last 19 years, UTC has transformed the landscape of Haddington alongside community leaders, catalyzing residents\' demand for green space and locally produced fresh food. Together, we have redeveloped 29 vacant lots, totaling more than 86,000 square feet of land for communal growing and gathering, sustainable (chemical free) food production and distribution, and multigenerational health and wellness education. This includes our community gem - a \\u00be acre urban farm \\u2013 Neighborhood Foods Farm, which produces over 8,000 pounds of produce annually. Furthermore, UTC has been at the forefront of urban farming and land reclamation movements in Philadelphia, helping pioneer key tools for legal reclamation of abandoned properties.<br><br>Neighbors, once isolated from each other, increasingly connect through the gardens created on these formerly abandoned lots, as well as through <a href=\\\"http:\\/\\/urbantreeconnection.org\\/programs.php\\\">diverse array of educational and community programs<\\/a>&nbsp;that UTC offers.  These personal connections have, in turn, empowered neighbors to continue to transform their community. Today, Haddington residents are increasingly realizing the potential for growing food on abandoned lots in their neighborhood, and are active partners with UTC in developing a community based local food system aimed at making affordable, healthy, Haddington-grown food available to every neighbor. This community-based food system presents a powerful antidote to food insecurity and diet-related illnesses faced by residents.<\\/p>\"}}', '  300  250 The Urban Tree Connection (UTC) works with residents in Philadelphia’s historically marginalized urban communities to revitalize their neighborhoods by transforming abandoned open spaces into safe and functional places that inspire and promote positive human interaction. Founded in 1989 and incorporated as a 501(c)(3) nonprofit organization in 1997, UTC works with residents of West Philadelphia\'s Haddington neighborhood to develop community-driven greening and gardening projects on vacant land. Our aim is to cultivate community leadership to improve community health and to develop a local, sustainable, and equitable food system\r\nOver the last 19 years, UTC has transformed the landscape of Haddington alongside community leaders, catalyzing residents\' demand for green space and locally produced fresh food. Together, we have redeveloped 29 vacant lots, totaling more than 86,000 square feet of land for communal growing and gathering, sustainable (chemical free) food production and distribution, and multigenerational health and wellness education. This includes our community gem - a ¾ acre urban farm – Neighborhood Foods Farm, which produces over 8,000 pounds of produce annually. Furthermore, UTC has been at the forefront of urban farming and land reclamation movements in Philadelphia, helping pioneer key tools for legal reclamation of abandoned properties.Neighbors, once isolated from each other, increasingly connect through the gardens created on these formerly abandoned lots, as well as through diverse array of educational and community programs&nbsp;that UTC offers.  These personal connections have, in turn, empowered neighbors to continue to transform their community. Today, Haddington residents are increasingly realizing the potential for growing food on abandoned lots in their neighborhood, and are active partners with UTC in developing a community based local food system aimed at making affordable, healthy, Haddington-grown food available to every neighbor. This community-based food system presents a powerful antidote to food insecurity and diet-related illnesses faced by residents. ', '2018-08-30 22:32:59', '1'),
(1118, 4, 4, 1, 35, 1001, '{\"_id\":\"4\",\"heading\":\"Announcement 2\",\"_title\":\"Announcement 2\",\"date\":\"2018-08-28\",\"showTimeStamp\":\"1\",\"body\":{\"_flang\":\"html\",\"raw\":\"<p>Suspendisse proin ullamcorper quisque duis risus dolor volutpat sit nostra in blandit nunc scelerisque morbi dis vestibulum parturient luctus. Interdum tincidunt ultricies curae condimentum volutpat in a ullamcorper adipiscing class ac ultrices a senectus a eleifend enim at. A erat habitasse cum netus felis condimentum quam euismod ante lectus vulputate bibendum nibh nisi a magnis dui ridiculus dis accumsan fermentum a.&nbsp;<\\/p>\",\"processed\":\"<p>Suspendisse proin ullamcorper quisque duis risus dolor volutpat sit nostra in blandit nunc scelerisque morbi dis vestibulum parturient luctus. Interdum tincidunt ultricies curae condimentum volutpat in a ullamcorper adipiscing class ac ultrices a senectus a eleifend enim at. A erat habitasse cum netus felis condimentum quam euismod ante lectus vulputate bibendum nibh nisi a magnis dui ridiculus dis accumsan fermentum a.&nbsp;<\\/p>\"}}', ' Announcement 2 Tuesday 28 August 2018 1 Suspendisse proin ullamcorper quisque duis risus dolor volutpat sit nostra in blandit nunc scelerisque morbi dis vestibulum parturient luctus. Interdum tincidunt ultricies curae condimentum volutpat in a ullamcorper adipiscing class ac ultrices a senectus a eleifend enim at. A erat habitasse cum netus felis condimentum quam euismod ante lectus vulputate bibendum nibh nisi a magnis dui ridiculus dis accumsan fermentum a.&nbsp;     ', '2018-08-30 23:35:35', '1'),
(1117, 3, 4, 1, 35, 1000, '{\"_id\":\"3\",\"heading\":\"Announcement 1\",\"_title\":\"Announcement 1\",\"date\":\"2018-08-28\",\"showTimeStamp\":null,\"body\":{\"_flang\":\"html\",\"raw\":\"<p style=\\\"text-align:center\\\">[cms:asset 1 title=\\\"Logo nm\\\"]<\\/p>\\r\\n<p>Phasellus fames viverra in eu eu gravida adipiscing vehicula in hendrerit urna erat ultricies a duis vestibulum a parturient vestibulum urna ipsum porta cubilia a sociis. Quam cursus lobortis faucibus adipiscing fringilla ut fames scelerisque nam turpis dictumst taciti a odio ullamcorper montes a ut sociosqu a rhoncus ad parturient semper habitant gravida at elementum. Adipiscing consectetur posuere adipiscing arcu ut ridiculus id neque in a a cum adipiscing senectus parturient hac in nullam adipiscing erat et nibh lacus sagittis quam. Ut consequat adipiscing class duis venenatis a nulla in dolor habitasse justo vestibulum sodales vestibulum suspendisse cursus parturient ligula a. Consectetur vestibulum suspendisse nibh vivamus parturient fringilla vestibulum consequat nunc litora adipiscing nunc tempor praesent pretium volutpat auctor curabitur suspendisse tempus dictumst luctus commodo scelerisque. Condimentum nunc cubilia laoreet adipiscing quis ullamcorper eu mi justo facilisi ullamcorper orci luctus fringilla habitasse a magna parturient.<br><br>[cms:asset 4 title=\\\"2017 UTC Highlights\\\"]<\\/p>\",\"processed\":\"<p style=\\\"text-align:center\\\"><img title=\\\"Logo nm\\\" src=\\\"\\/admin\\/resources\\/logonm-w800.jpg\\\" alt=\\\"Logo nm\\\"><\\/p>\\r\\n<p>Phasellus fames viverra in eu eu gravida adipiscing vehicula in hendrerit urna erat ultricies a duis vestibulum a parturient vestibulum urna ipsum porta cubilia a sociis. Quam cursus lobortis faucibus adipiscing fringilla ut fames scelerisque nam turpis dictumst taciti a odio ullamcorper montes a ut sociosqu a rhoncus ad parturient semper habitant gravida at elementum. Adipiscing consectetur posuere adipiscing arcu ut ridiculus id neque in a a cum adipiscing senectus parturient hac in nullam adipiscing erat et nibh lacus sagittis quam. Ut consequat adipiscing class duis venenatis a nulla in dolor habitasse justo vestibulum sodales vestibulum suspendisse cursus parturient ligula a. Consectetur vestibulum suspendisse nibh vivamus parturient fringilla vestibulum consequat nunc litora adipiscing nunc tempor praesent pretium volutpat auctor curabitur suspendisse tempus dictumst luctus commodo scelerisque. Condimentum nunc cubilia laoreet adipiscing quis ullamcorper eu mi justo facilisi ullamcorper orci luctus fringilla habitasse a magna parturient.<br><br><a title=\\\"2017 UTC Highlights\\\" href=\\\"\\/admin\\/resources\\/2017-utc-highlights.pdf\\\">2017 UTC Highlights<\\/a><\\/p>\"}}', ' Announcement 1 Tuesday 28 August 2018  \r\nPhasellus fames viverra in eu eu gravida adipiscing vehicula in hendrerit urna erat ultricies a duis vestibulum a parturient vestibulum urna ipsum porta cubilia a sociis. Quam cursus lobortis faucibus adipiscing fringilla ut fames scelerisque nam turpis dictumst taciti a odio ullamcorper montes a ut sociosqu a rhoncus ad parturient semper habitant gravida at elementum. Adipiscing consectetur posuere adipiscing arcu ut ridiculus id neque in a a cum adipiscing senectus parturient hac in nullam adipiscing erat et nibh lacus sagittis quam. Ut consequat adipiscing class duis venenatis a nulla in dolor habitasse justo vestibulum sodales vestibulum suspendisse cursus parturient ligula a. Consectetur vestibulum suspendisse nibh vivamus parturient fringilla vestibulum consequat nunc litora adipiscing nunc tempor praesent pretium volutpat auctor curabitur suspendisse tempus dictumst luctus commodo scelerisque. Condimentum nunc cubilia laoreet adipiscing quis ullamcorper eu mi justo facilisi ullamcorper orci luctus fringilla habitasse a magna parturient.2017 UTC Highlights     ', '2018-08-30 23:35:35', '1'),
(1029, 6, 5, 2, 25, 1000, '{\"_id\":\"6\",\"left_image\":{\"assetID\":\"5\",\"title\":\"Gardening at Girarden\",\"_default\":\"\\/admin\\/resources\\/gardening-at-girarden.jpg\",\"bucket\":\"default\",\"path\":\"gardening-at-girarden.jpg\",\"size\":143319,\"w\":837,\"h\":560,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"100\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"gardening-at-girarden-thumb@2x.jpg\",\"size\":30148,\"mime\":\"image\\/jpeg\",\"assetID\":\"6\"}}},\"left_image_width\":\"100\",\"right_image\":{\"assetID\":\"7\",\"title\":\"Sprout\",\"_default\":\"\\/admin\\/resources\\/sprout.jpg\",\"bucket\":\"default\",\"path\":\"sprout.jpg\",\"size\":174915,\"w\":528,\"h\":704,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"112\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"sprout-thumb@2x.jpg\",\"size\":38923,\"mime\":\"image\\/jpeg\",\"assetID\":\"8\"}}},\"right_image_width\":\"250\",\"text\":{\"_flang\":\"html\",\"raw\":\"<p>The Urban Tree Connection (UTC) works with residents in Philadelphia\\u2019s historically marginalized urban communities to revitalize their neighborhoods by transforming abandoned open spaces into safe and functional places that inspire and promote positive human interaction. Founded in 1989 and incorporated as a 501(c)(3) nonprofit organization in 1997, UTC works with residents of West Philadelphia\'s Haddington neighborhood to develop community-driven greening and gardening projects on vacant land. Our aim is to cultivate community leadership to improve community health and to develop a local, sustainable, and equitable food system<br><\\/p>\\r\\n<p>Over the last 19 years, UTC has transformed the landscape of Haddington alongside community leaders, catalyzing residents\' demand for green space and locally produced fresh food. Together, we have redeveloped 29 vacant lots, totaling more than 86,000 square feet of land for communal growing and gathering, sustainable (chemical free) food production and distribution, and multigenerational health and wellness education. This includes our community gem - a \\u00be acre urban farm \\u2013 Neighborhood Foods Farm, which produces over 8,000 pounds of produce annually. Furthermore, UTC has been at the forefront of urban farming and land reclamation movements in Philadelphia, helping pioneer key tools for legal reclamation of abandoned properties.<br><br>Neighbors, once isolated from each other, increasingly connect through the gardens created on these formerly abandoned lots, as well as through <a href=\\\"http:\\/\\/urbantreeconnection.org\\/programs.php\\\">diverse array of educational and community programs<\\/a>&nbsp;that UTC offers.  These personal connections have, in turn, empowered neighbors to continue to transform their community. Today, Haddington residents are increasingly realizing the potential for growing food on abandoned lots in their neighborhood, and are active partners with UTC in developing a community based local food system aimed at making affordable, healthy, Haddington-grown food available to every neighbor. This community-based food system presents a powerful antidote to food insecurity and diet-related illnesses faced by residents.<\\/p>\",\"processed\":\"<p>The Urban Tree Connection (UTC) works with residents in Philadelphia\\u2019s historically marginalized urban communities to revitalize their neighborhoods by transforming abandoned open spaces into safe and functional places that inspire and promote positive human interaction. Founded in 1989 and incorporated as a 501(c)(3) nonprofit organization in 1997, UTC works with residents of West Philadelphia\'s Haddington neighborhood to develop community-driven greening and gardening projects on vacant land. Our aim is to cultivate community leadership to improve community health and to develop a local, sustainable, and equitable food system<br><\\/p>\\r\\n<p>Over the last 19 years, UTC has transformed the landscape of Haddington alongside community leaders, catalyzing residents\' demand for green space and locally produced fresh food. Together, we have redeveloped 29 vacant lots, totaling more than 86,000 square feet of land for communal growing and gathering, sustainable (chemical free) food production and distribution, and multigenerational health and wellness education. This includes our community gem - a \\u00be acre urban farm \\u2013 Neighborhood Foods Farm, which produces over 8,000 pounds of produce annually. Furthermore, UTC has been at the forefront of urban farming and land reclamation movements in Philadelphia, helping pioneer key tools for legal reclamation of abandoned properties.<br><br>Neighbors, once isolated from each other, increasingly connect through the gardens created on these formerly abandoned lots, as well as through <a href=\\\"http:\\/\\/urbantreeconnection.org\\/programs.php\\\">diverse array of educational and community programs<\\/a>&nbsp;that UTC offers.  These personal connections have, in turn, empowered neighbors to continue to transform their community. Today, Haddington residents are increasingly realizing the potential for growing food on abandoned lots in their neighborhood, and are active partners with UTC in developing a community based local food system aimed at making affordable, healthy, Haddington-grown food available to every neighbor. This community-based food system presents a powerful antidote to food insecurity and diet-related illnesses faced by residents.<\\/p>\"}}', '  100  250 The Urban Tree Connection (UTC) works with residents in Philadelphia’s historically marginalized urban communities to revitalize their neighborhoods by transforming abandoned open spaces into safe and functional places that inspire and promote positive human interaction. Founded in 1989 and incorporated as a 501(c)(3) nonprofit organization in 1997, UTC works with residents of West Philadelphia\'s Haddington neighborhood to develop community-driven greening and gardening projects on vacant land. Our aim is to cultivate community leadership to improve community health and to develop a local, sustainable, and equitable food system\r\nOver the last 19 years, UTC has transformed the landscape of Haddington alongside community leaders, catalyzing residents\' demand for green space and locally produced fresh food. Together, we have redeveloped 29 vacant lots, totaling more than 86,000 square feet of land for communal growing and gathering, sustainable (chemical free) food production and distribution, and multigenerational health and wellness education. This includes our community gem - a ¾ acre urban farm – Neighborhood Foods Farm, which produces over 8,000 pounds of produce annually. Furthermore, UTC has been at the forefront of urban farming and land reclamation movements in Philadelphia, helping pioneer key tools for legal reclamation of abandoned properties.Neighbors, once isolated from each other, increasingly connect through the gardens created on these formerly abandoned lots, as well as through diverse array of educational and community programs&nbsp;that UTC offers.  These personal connections have, in turn, empowered neighbors to continue to transform their community. Today, Haddington residents are increasingly realizing the potential for growing food on abandoned lots in their neighborhood, and are active partners with UTC in developing a community based local food system aimed at making affordable, healthy, Haddington-grown food available to every neighbor. This community-based food system presents a powerful antidote to food insecurity and diet-related illnesses faced by residents. ', '2018-08-30 22:32:39', '1'),
(1097, 26, 8, 4, 26, 1002, '{\"_id\":\"26\",\"left_image\":{\"assetID\":\"38\",\"title\":\"Young Farmers\",\"_default\":\"\\/admin\\/resources\\/young-farmers.jpg\",\"bucket\":\"default\",\"path\":\"young-farmers.jpg\",\"size\":652800,\"w\":1649,\"h\":1236,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"112\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"young-farmers-thumb@2x.jpg\",\"size\":29425,\"mime\":\"image\\/jpeg\",\"assetID\":\"39\"}}},\"left_image_width\":\"200\",\"right_image\":null,\"right_image_width\":\"300\",\"text\":{\"_flang\":\"html\",\"raw\":\"<h2>Community Education & Land Stewardship<\\/h2>\\r\\n<p>Rooted in popular education methodologies, our multigenerational education programs promote health, wellness, and leadership development. For adults and families, we host hands-on workshops that cover topics such as healthy cooking, seed starting, and medicinal tinctures, and provide access to garden beds, and technical assistance and resources to local community gardeners. UTC has two multigenerational teaching gardens where we offer environmental education and gardening instruction.<\\/p>\\r\\n<p>UTC\\u2019s Youth Apprenticeship Program hires and mentors 10-12 high-school aged youth that primarily live in the Haddington.&nbsp; This unique five-month paid apprenticeship introduces Black and youth of color to urban agriculture and cultivates their leadership.&nbsp;Each Apprentice receives 1:1 mentorship from Staff in urban farming, community food distribution, and community education and outreach.<\\/p>\\r\\n<p>Urban Tree Connection has also incubated Neighborhood Foods Coop, a community-led initiative of local residents who helped found Neighborhood Foods Farm and other community gardens. The group meets monthly to share resources, host community events, and run the Neighborhood Foods farm stand.<\\/p>\",\"processed\":\"<h2>Community Education & Land Stewardship<\\/h2>\\r\\n<p>Rooted in popular education methodologies, our multigenerational education programs promote health, wellness, and leadership development. For adults and families, we host hands-on workshops that cover topics such as healthy cooking, seed starting, and medicinal tinctures, and provide access to garden beds, and technical assistance and resources to local community gardeners. UTC has two multigenerational teaching gardens where we offer environmental education and gardening instruction.<\\/p>\\r\\n<p>UTC\\u2019s Youth Apprenticeship Program hires and mentors 10-12 high-school aged youth that primarily live in the Haddington.&nbsp; This unique five-month paid apprenticeship introduces Black and youth of color to urban agriculture and cultivates their leadership.&nbsp;Each Apprentice receives 1:1 mentorship from Staff in urban farming, community food distribution, and community education and outreach.<\\/p>\\r\\n<p>Urban Tree Connection has also incubated Neighborhood Foods Coop, a community-led initiative of local residents who helped found Neighborhood Foods Farm and other community gardens. The group meets monthly to share resources, host community events, and run the Neighborhood Foods farm stand.<\\/p>\"}}', '  200  300 Community Education & Land Stewardship\r\nRooted in popular education methodologies, our multigenerational education programs promote health, wellness, and leadership development. For adults and families, we host hands-on workshops that cover topics such as healthy cooking, seed starting, and medicinal tinctures, and provide access to garden beds, and technical assistance and resources to local community gardeners. UTC has two multigenerational teaching gardens where we offer environmental education and gardening instruction.\r\nUTC’s Youth Apprenticeship Program hires and mentors 10-12 high-school aged youth that primarily live in the Haddington.&nbsp; This unique five-month paid apprenticeship introduces Black and youth of color to urban agriculture and cultivates their leadership.&nbsp;Each Apprentice receives 1:1 mentorship from Staff in urban farming, community food distribution, and community education and outreach.\r\nUrban Tree Connection has also incubated Neighborhood Foods Coop, a community-led initiative of local residents who helped found Neighborhood Foods Farm and other community gardens. The group meets monthly to share resources, host community events, and run the Neighborhood Foods farm stand. ', '2018-08-30 23:28:18', '1'),
(1023, 6, 5, 2, 19, 1000, '{\"_id\":\"6\",\"left_image\":{\"assetID\":\"5\",\"title\":\"Gardening at Girarden\",\"_default\":\"\\/admin\\/resources\\/gardening-at-girarden.jpg\",\"bucket\":\"default\",\"path\":\"gardening-at-girarden.jpg\",\"size\":143319,\"w\":837,\"h\":560,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"100\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"gardening-at-girarden-thumb@2x.jpg\",\"size\":30148,\"mime\":\"image\\/jpeg\",\"assetID\":\"6\"}}},\"left_image_width\":\"100\",\"text\":{\"_flang\":\"html\",\"raw\":\"<p>The Urban Tree Connection (UTC) works with residents in Philadelphia\\u2019s historically marginalized urban communities to revitalize their neighborhoods by transforming abandoned open spaces into safe and functional places that inspire and promote positive human interaction. Founded in 1989 and incorporated as a 501(c)(3) nonprofit organization in 1997, UTC works with residents of West Philadelphia\'s Haddington neighborhood to develop community-driven greening and gardening projects on vacant land. Our aim is to cultivate community leadership to improve community health and to develop a local, sustainable, and equitable food system<br><\\/p>\\r\\n<p>Over the last 19 years, UTC has transformed the landscape of Haddington alongside community leaders, catalyzing residents\' demand for green space and locally produced fresh food. Together, we have redeveloped 29 vacant lots, totaling more than 86,000 square feet of land for communal growing and gathering, sustainable (chemical free) food production and distribution, and multigenerational health and wellness education. This includes our community gem - a \\u00be acre urban farm \\u2013 Neighborhood Foods Farm, which produces over 8,000 pounds of produce annually. Furthermore, UTC has been at the forefront of urban farming and land reclamation movements in Philadelphia, helping pioneer key tools for legal reclamation of abandoned properties.<br><br>Neighbors, once isolated from each other, increasingly connect through the gardens created on these formerly abandoned lots, as well as through <a href=\\\"http:\\/\\/urbantreeconnection.org\\/programs.php\\\">diverse array of educational and community programs<\\/a>&nbsp;that UTC offers.  These personal connections have, in turn, empowered neighbors to continue to transform their community. Today, Haddington residents are increasingly realizing the potential for growing food on abandoned lots in their neighborhood, and are active partners with UTC in developing a community based local food system aimed at making affordable, healthy, Haddington-grown food available to every neighbor. This community-based food system presents a powerful antidote to food insecurity and diet-related illnesses faced by residents.<\\/p>\",\"processed\":\"<p>The Urban Tree Connection (UTC) works with residents in Philadelphia\\u2019s historically marginalized urban communities to revitalize their neighborhoods by transforming abandoned open spaces into safe and functional places that inspire and promote positive human interaction. Founded in 1989 and incorporated as a 501(c)(3) nonprofit organization in 1997, UTC works with residents of West Philadelphia\'s Haddington neighborhood to develop community-driven greening and gardening projects on vacant land. Our aim is to cultivate community leadership to improve community health and to develop a local, sustainable, and equitable food system<br><\\/p>\\r\\n<p>Over the last 19 years, UTC has transformed the landscape of Haddington alongside community leaders, catalyzing residents\' demand for green space and locally produced fresh food. Together, we have redeveloped 29 vacant lots, totaling more than 86,000 square feet of land for communal growing and gathering, sustainable (chemical free) food production and distribution, and multigenerational health and wellness education. This includes our community gem - a \\u00be acre urban farm \\u2013 Neighborhood Foods Farm, which produces over 8,000 pounds of produce annually. Furthermore, UTC has been at the forefront of urban farming and land reclamation movements in Philadelphia, helping pioneer key tools for legal reclamation of abandoned properties.<br><br>Neighbors, once isolated from each other, increasingly connect through the gardens created on these formerly abandoned lots, as well as through <a href=\\\"http:\\/\\/urbantreeconnection.org\\/programs.php\\\">diverse array of educational and community programs<\\/a>&nbsp;that UTC offers.  These personal connections have, in turn, empowered neighbors to continue to transform their community. Today, Haddington residents are increasingly realizing the potential for growing food on abandoned lots in their neighborhood, and are active partners with UTC in developing a community based local food system aimed at making affordable, healthy, Haddington-grown food available to every neighbor. This community-based food system presents a powerful antidote to food insecurity and diet-related illnesses faced by residents.<\\/p>\"},\"right_image\":{\"assetID\":\"7\",\"title\":\"Sprout\",\"_default\":\"\\/admin\\/resources\\/sprout.jpg\",\"bucket\":\"default\",\"path\":\"sprout.jpg\",\"size\":174915,\"w\":528,\"h\":704,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"112\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"sprout-thumb@2x.jpg\",\"size\":38923,\"mime\":\"image\\/jpeg\",\"assetID\":\"8\"}}},\"right_image_width\":\"100\"}', '  100 The Urban Tree Connection (UTC) works with residents in Philadelphia’s historically marginalized urban communities to revitalize their neighborhoods by transforming abandoned open spaces into safe and functional places that inspire and promote positive human interaction. Founded in 1989 and incorporated as a 501(c)(3) nonprofit organization in 1997, UTC works with residents of West Philadelphia\'s Haddington neighborhood to develop community-driven greening and gardening projects on vacant land. Our aim is to cultivate community leadership to improve community health and to develop a local, sustainable, and equitable food system\r\nOver the last 19 years, UTC has transformed the landscape of Haddington alongside community leaders, catalyzing residents\' demand for green space and locally produced fresh food. Together, we have redeveloped 29 vacant lots, totaling more than 86,000 square feet of land for communal growing and gathering, sustainable (chemical free) food production and distribution, and multigenerational health and wellness education. This includes our community gem - a ¾ acre urban farm – Neighborhood Foods Farm, which produces over 8,000 pounds of produce annually. Furthermore, UTC has been at the forefront of urban farming and land reclamation movements in Philadelphia, helping pioneer key tools for legal reclamation of abandoned properties.Neighbors, once isolated from each other, increasingly connect through the gardens created on these formerly abandoned lots, as well as through diverse array of educational and community programs&nbsp;that UTC offers.  These personal connections have, in turn, empowered neighbors to continue to transform their community. Today, Haddington residents are increasingly realizing the potential for growing food on abandoned lots in their neighborhood, and are active partners with UTC in developing a community based local food system aimed at making affordable, healthy, Haddington-grown food available to every neighbor. This community-based food system presents a powerful antidote to food insecurity and diet-related illnesses faced by residents.  100 ', '2018-08-30 22:27:14', '1'),
(1024, 6, 5, 2, 20, 1000, '{\"_id\":\"6\",\"left_image\":{\"assetID\":\"5\",\"title\":\"Gardening at Girarden\",\"_default\":\"\\/admin\\/resources\\/gardening-at-girarden.jpg\",\"bucket\":\"default\",\"path\":\"gardening-at-girarden.jpg\",\"size\":143319,\"w\":837,\"h\":560,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"100\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"gardening-at-girarden-thumb@2x.jpg\",\"size\":30148,\"mime\":\"image\\/jpeg\",\"assetID\":\"6\"}}},\"left_image_width\":\"100\",\"text\":{\"_flang\":\"html\",\"raw\":\"<p>The Urban Tree Connection (UTC) works with residents in Philadelphia\\u2019s historically marginalized urban communities to revitalize their neighborhoods by transforming abandoned open spaces into safe and functional places that inspire and promote positive human interaction. Founded in 1989 and incorporated as a 501(c)(3) nonprofit organization in 1997, UTC works with residents of West Philadelphia\'s Haddington neighborhood to develop community-driven greening and gardening projects on vacant land. Our aim is to cultivate community leadership to improve community health and to develop a local, sustainable, and equitable food system<br><\\/p>\\r\\n<p>Over the last 19 years, UTC has transformed the landscape of Haddington alongside community leaders, catalyzing residents\' demand for green space and locally produced fresh food. Together, we have redeveloped 29 vacant lots, totaling more than 86,000 square feet of land for communal growing and gathering, sustainable (chemical free) food production and distribution, and multigenerational health and wellness education. This includes our community gem - a \\u00be acre urban farm \\u2013 Neighborhood Foods Farm, which produces over 8,000 pounds of produce annually. Furthermore, UTC has been at the forefront of urban farming and land reclamation movements in Philadelphia, helping pioneer key tools for legal reclamation of abandoned properties.<br><br>Neighbors, once isolated from each other, increasingly connect through the gardens created on these formerly abandoned lots, as well as through <a href=\\\"http:\\/\\/urbantreeconnection.org\\/programs.php\\\">diverse array of educational and community programs<\\/a>&nbsp;that UTC offers.  These personal connections have, in turn, empowered neighbors to continue to transform their community. Today, Haddington residents are increasingly realizing the potential for growing food on abandoned lots in their neighborhood, and are active partners with UTC in developing a community based local food system aimed at making affordable, healthy, Haddington-grown food available to every neighbor. This community-based food system presents a powerful antidote to food insecurity and diet-related illnesses faced by residents.<\\/p>\",\"processed\":\"<p>The Urban Tree Connection (UTC) works with residents in Philadelphia\\u2019s historically marginalized urban communities to revitalize their neighborhoods by transforming abandoned open spaces into safe and functional places that inspire and promote positive human interaction. Founded in 1989 and incorporated as a 501(c)(3) nonprofit organization in 1997, UTC works with residents of West Philadelphia\'s Haddington neighborhood to develop community-driven greening and gardening projects on vacant land. Our aim is to cultivate community leadership to improve community health and to develop a local, sustainable, and equitable food system<br><\\/p>\\r\\n<p>Over the last 19 years, UTC has transformed the landscape of Haddington alongside community leaders, catalyzing residents\' demand for green space and locally produced fresh food. Together, we have redeveloped 29 vacant lots, totaling more than 86,000 square feet of land for communal growing and gathering, sustainable (chemical free) food production and distribution, and multigenerational health and wellness education. This includes our community gem - a \\u00be acre urban farm \\u2013 Neighborhood Foods Farm, which produces over 8,000 pounds of produce annually. Furthermore, UTC has been at the forefront of urban farming and land reclamation movements in Philadelphia, helping pioneer key tools for legal reclamation of abandoned properties.<br><br>Neighbors, once isolated from each other, increasingly connect through the gardens created on these formerly abandoned lots, as well as through <a href=\\\"http:\\/\\/urbantreeconnection.org\\/programs.php\\\">diverse array of educational and community programs<\\/a>&nbsp;that UTC offers.  These personal connections have, in turn, empowered neighbors to continue to transform their community. Today, Haddington residents are increasingly realizing the potential for growing food on abandoned lots in their neighborhood, and are active partners with UTC in developing a community based local food system aimed at making affordable, healthy, Haddington-grown food available to every neighbor. This community-based food system presents a powerful antidote to food insecurity and diet-related illnesses faced by residents.<\\/p>\"},\"right_image\":{\"assetID\":\"7\",\"title\":\"Sprout\",\"_default\":\"\\/admin\\/resources\\/sprout.jpg\",\"bucket\":\"default\",\"path\":\"sprout.jpg\",\"size\":174915,\"w\":528,\"h\":704,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"112\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"sprout-thumb@2x.jpg\",\"size\":38923,\"mime\":\"image\\/jpeg\",\"assetID\":\"8\"}}},\"right_image_width\":\"100\"}', '  100 The Urban Tree Connection (UTC) works with residents in Philadelphia’s historically marginalized urban communities to revitalize their neighborhoods by transforming abandoned open spaces into safe and functional places that inspire and promote positive human interaction. Founded in 1989 and incorporated as a 501(c)(3) nonprofit organization in 1997, UTC works with residents of West Philadelphia\'s Haddington neighborhood to develop community-driven greening and gardening projects on vacant land. Our aim is to cultivate community leadership to improve community health and to develop a local, sustainable, and equitable food system\r\nOver the last 19 years, UTC has transformed the landscape of Haddington alongside community leaders, catalyzing residents\' demand for green space and locally produced fresh food. Together, we have redeveloped 29 vacant lots, totaling more than 86,000 square feet of land for communal growing and gathering, sustainable (chemical free) food production and distribution, and multigenerational health and wellness education. This includes our community gem - a ¾ acre urban farm – Neighborhood Foods Farm, which produces over 8,000 pounds of produce annually. Furthermore, UTC has been at the forefront of urban farming and land reclamation movements in Philadelphia, helping pioneer key tools for legal reclamation of abandoned properties.Neighbors, once isolated from each other, increasingly connect through the gardens created on these formerly abandoned lots, as well as through diverse array of educational and community programs&nbsp;that UTC offers.  These personal connections have, in turn, empowered neighbors to continue to transform their community. Today, Haddington residents are increasingly realizing the potential for growing food on abandoned lots in their neighborhood, and are active partners with UTC in developing a community based local food system aimed at making affordable, healthy, Haddington-grown food available to every neighbor. This community-based food system presents a powerful antidote to food insecurity and diet-related illnesses faced by residents.  100 ', '2018-08-30 22:28:40', '1'),
(1028, 6, 5, 2, 24, 1000, '{\"_id\":\"6\",\"left_image\":{\"assetID\":\"5\",\"title\":\"Gardening at Girarden\",\"_default\":\"\\/admin\\/resources\\/gardening-at-girarden.jpg\",\"bucket\":\"default\",\"path\":\"gardening-at-girarden.jpg\",\"size\":143319,\"w\":837,\"h\":560,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"100\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"gardening-at-girarden-thumb@2x.jpg\",\"size\":30148,\"mime\":\"image\\/jpeg\",\"assetID\":\"6\"}}},\"left_image_width\":\"100\",\"right_image\":{\"assetID\":\"7\",\"title\":\"Sprout\",\"_default\":\"\\/admin\\/resources\\/sprout.jpg\",\"bucket\":\"default\",\"path\":\"sprout.jpg\",\"size\":174915,\"w\":528,\"h\":704,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"112\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"sprout-thumb@2x.jpg\",\"size\":38923,\"mime\":\"image\\/jpeg\",\"assetID\":\"8\"}}},\"right_image_width\":\"250\",\"text\":{\"_flang\":\"html\",\"raw\":\"<p>The Urban Tree Connection (UTC) works with residents in Philadelphia\\u2019s historically marginalized urban communities to revitalize their neighborhoods by transforming abandoned open spaces into safe and functional places that inspire and promote positive human interaction. Founded in 1989 and incorporated as a 501(c)(3) nonprofit organization in 1997, UTC works with residents of West Philadelphia\'s Haddington neighborhood to develop community-driven greening and gardening projects on vacant land. Our aim is to cultivate community leadership to improve community health and to develop a local, sustainable, and equitable food system<br><\\/p>\\r\\n<p>Over the last 19 years, UTC has transformed the landscape of Haddington alongside community leaders, catalyzing residents\' demand for green space and locally produced fresh food. Together, we have redeveloped 29 vacant lots, totaling more than 86,000 square feet of land for communal growing and gathering, sustainable (chemical free) food production and distribution, and multigenerational health and wellness education. This includes our community gem - a \\u00be acre urban farm \\u2013 Neighborhood Foods Farm, which produces over 8,000 pounds of produce annually. Furthermore, UTC has been at the forefront of urban farming and land reclamation movements in Philadelphia, helping pioneer key tools for legal reclamation of abandoned properties.<br><br>Neighbors, once isolated from each other, increasingly connect through the gardens created on these formerly abandoned lots, as well as through <a href=\\\"http:\\/\\/urbantreeconnection.org\\/programs.php\\\">diverse array of educational and community programs<\\/a>&nbsp;that UTC offers.  These personal connections have, in turn, empowered neighbors to continue to transform their community. Today, Haddington residents are increasingly realizing the potential for growing food on abandoned lots in their neighborhood, and are active partners with UTC in developing a community based local food system aimed at making affordable, healthy, Haddington-grown food available to every neighbor. This community-based food system presents a powerful antidote to food insecurity and diet-related illnesses faced by residents.<\\/p>\",\"processed\":\"<p>The Urban Tree Connection (UTC) works with residents in Philadelphia\\u2019s historically marginalized urban communities to revitalize their neighborhoods by transforming abandoned open spaces into safe and functional places that inspire and promote positive human interaction. Founded in 1989 and incorporated as a 501(c)(3) nonprofit organization in 1997, UTC works with residents of West Philadelphia\'s Haddington neighborhood to develop community-driven greening and gardening projects on vacant land. Our aim is to cultivate community leadership to improve community health and to develop a local, sustainable, and equitable food system<br><\\/p>\\r\\n<p>Over the last 19 years, UTC has transformed the landscape of Haddington alongside community leaders, catalyzing residents\' demand for green space and locally produced fresh food. Together, we have redeveloped 29 vacant lots, totaling more than 86,000 square feet of land for communal growing and gathering, sustainable (chemical free) food production and distribution, and multigenerational health and wellness education. This includes our community gem - a \\u00be acre urban farm \\u2013 Neighborhood Foods Farm, which produces over 8,000 pounds of produce annually. Furthermore, UTC has been at the forefront of urban farming and land reclamation movements in Philadelphia, helping pioneer key tools for legal reclamation of abandoned properties.<br><br>Neighbors, once isolated from each other, increasingly connect through the gardens created on these formerly abandoned lots, as well as through <a href=\\\"http:\\/\\/urbantreeconnection.org\\/programs.php\\\">diverse array of educational and community programs<\\/a>&nbsp;that UTC offers.  These personal connections have, in turn, empowered neighbors to continue to transform their community. Today, Haddington residents are increasingly realizing the potential for growing food on abandoned lots in their neighborhood, and are active partners with UTC in developing a community based local food system aimed at making affordable, healthy, Haddington-grown food available to every neighbor. This community-based food system presents a powerful antidote to food insecurity and diet-related illnesses faced by residents.<\\/p>\"}}', '  100  250 The Urban Tree Connection (UTC) works with residents in Philadelphia’s historically marginalized urban communities to revitalize their neighborhoods by transforming abandoned open spaces into safe and functional places that inspire and promote positive human interaction. Founded in 1989 and incorporated as a 501(c)(3) nonprofit organization in 1997, UTC works with residents of West Philadelphia\'s Haddington neighborhood to develop community-driven greening and gardening projects on vacant land. Our aim is to cultivate community leadership to improve community health and to develop a local, sustainable, and equitable food system\r\nOver the last 19 years, UTC has transformed the landscape of Haddington alongside community leaders, catalyzing residents\' demand for green space and locally produced fresh food. Together, we have redeveloped 29 vacant lots, totaling more than 86,000 square feet of land for communal growing and gathering, sustainable (chemical free) food production and distribution, and multigenerational health and wellness education. This includes our community gem - a ¾ acre urban farm – Neighborhood Foods Farm, which produces over 8,000 pounds of produce annually. Furthermore, UTC has been at the forefront of urban farming and land reclamation movements in Philadelphia, helping pioneer key tools for legal reclamation of abandoned properties.Neighbors, once isolated from each other, increasingly connect through the gardens created on these formerly abandoned lots, as well as through diverse array of educational and community programs&nbsp;that UTC offers.  These personal connections have, in turn, empowered neighbors to continue to transform their community. Today, Haddington residents are increasingly realizing the potential for growing food on abandoned lots in their neighborhood, and are active partners with UTC in developing a community based local food system aimed at making affordable, healthy, Haddington-grown food available to every neighbor. This community-based food system presents a powerful antidote to food insecurity and diet-related illnesses faced by residents. ', '2018-08-30 22:32:02', '1');
INSERT INTO `perch3_content_items` (`itemRowID`, `itemID`, `regionID`, `pageID`, `itemRev`, `itemOrder`, `itemJSON`, `itemSearch`, `itemUpdated`, `itemUpdatedBy`) VALUES
(1099, 25, 8, 4, 27, 1001, '{\"_id\":\"25\",\"left_image\":{\"assetID\":\"40\",\"title\":\"Memorial Garden\",\"_default\":\"\\/admin\\/resources\\/memorial-garden-4.jpg\",\"bucket\":\"default\",\"path\":\"memorial-garden-4.jpg\",\"size\":112486,\"w\":533,\"h\":400,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"112\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"memorial-garden-4-thumb@2x.jpg\",\"size\":36686,\"mime\":\"image\\/jpeg\",\"assetID\":\"41\"}}},\"left_image_width\":\"200\",\"right_image\":null,\"right_image_width\":null,\"text\":{\"_flang\":\"html\",\"raw\":\"<h2>Community-Led Food Distribution<\\/h2>\\r\\n<p>Our produce is distributed through&nbsp;<a href=\\\"http:\\/\\/www.urbantreeconnection.org\\/visitus.php\\\">Community-Led Farmers Markets and a Community Supported Agriculture (CSA)<\\/a>&nbsp;program in West Philly where residents have limited options to fresh, quality produce. We engage customers with limited incomes, offering them produce at an affordable price, encouraging the use of subsidized payments like EBT\\/Access and Senior vouchers. All of our farm stands are uniquely operated by community members (youth and adults), and we provide on-going training and support. Our excess food is donated to local food banks and feeding programs in Haddington.<\\/p>\",\"processed\":\"<h2>Community-Led Food Distribution<\\/h2>\\r\\n<p>Our produce is distributed through&nbsp;<a href=\\\"http:\\/\\/www.urbantreeconnection.org\\/visitus.php\\\">Community-Led Farmers Markets and a Community Supported Agriculture (CSA)<\\/a>&nbsp;program in West Philly where residents have limited options to fresh, quality produce. We engage customers with limited incomes, offering them produce at an affordable price, encouraging the use of subsidized payments like EBT\\/Access and Senior vouchers. All of our farm stands are uniquely operated by community members (youth and adults), and we provide on-going training and support. Our excess food is donated to local food banks and feeding programs in Haddington.<\\/p>\"}}', '  200   Community-Led Food Distribution\r\nOur produce is distributed through&nbsp;Community-Led Farmers Markets and a Community Supported Agriculture (CSA)&nbsp;program in West Philly where residents have limited options to fresh, quality produce. We engage customers with limited incomes, offering them produce at an affordable price, encouraging the use of subsidized payments like EBT/Access and Senior vouchers. All of our farm stands are uniquely operated by community members (youth and adults), and we provide on-going training and support. Our excess food is donated to local food banks and feeding programs in Haddington. ', '2018-08-30 23:33:11', '1'),
(1100, 26, 8, 4, 27, 1002, '{\"_id\":\"26\",\"left_image\":{\"assetID\":\"38\",\"title\":\"Young Farmers\",\"_default\":\"\\/admin\\/resources\\/young-farmers.jpg\",\"bucket\":\"default\",\"path\":\"young-farmers.jpg\",\"size\":652800,\"w\":1649,\"h\":1236,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"112\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"young-farmers-thumb@2x.jpg\",\"size\":29425,\"mime\":\"image\\/jpeg\",\"assetID\":\"39\"}}},\"left_image_width\":\"200\",\"right_image\":null,\"right_image_width\":\"300\",\"text\":{\"_flang\":\"html\",\"raw\":\"<h2>Community Education & Land Stewardship<\\/h2>\\r\\n<p>Rooted in popular education methodologies, our multigenerational education programs promote health, wellness, and leadership development. For adults and families, we host hands-on workshops that cover topics such as healthy cooking, seed starting, and medicinal tinctures, and provide access to garden beds, and technical assistance and resources to local community gardeners. UTC has two multigenerational teaching gardens where we offer environmental education and gardening instruction.<\\/p>\\r\\n<p>UTC\\u2019s Youth Apprenticeship Program hires and mentors 10-12 high-school aged youth that primarily live in the Haddington.&nbsp; This unique five-month paid apprenticeship introduces Black and youth of color to urban agriculture and cultivates their leadership.&nbsp;Each Apprentice receives 1:1 mentorship from Staff in urban farming, community food distribution, and community education and outreach.<\\/p>\\r\\n<p>Urban Tree Connection has also incubated Neighborhood Foods Coop, a community-led initiative of local residents who helped found Neighborhood Foods Farm and other community gardens. The group meets monthly to share resources, host community events, and run the Neighborhood Foods farm stand.<\\/p>\",\"processed\":\"<h2>Community Education & Land Stewardship<\\/h2>\\r\\n<p>Rooted in popular education methodologies, our multigenerational education programs promote health, wellness, and leadership development. For adults and families, we host hands-on workshops that cover topics such as healthy cooking, seed starting, and medicinal tinctures, and provide access to garden beds, and technical assistance and resources to local community gardeners. UTC has two multigenerational teaching gardens where we offer environmental education and gardening instruction.<\\/p>\\r\\n<p>UTC\\u2019s Youth Apprenticeship Program hires and mentors 10-12 high-school aged youth that primarily live in the Haddington.&nbsp; This unique five-month paid apprenticeship introduces Black and youth of color to urban agriculture and cultivates their leadership.&nbsp;Each Apprentice receives 1:1 mentorship from Staff in urban farming, community food distribution, and community education and outreach.<\\/p>\\r\\n<p>Urban Tree Connection has also incubated Neighborhood Foods Coop, a community-led initiative of local residents who helped found Neighborhood Foods Farm and other community gardens. The group meets monthly to share resources, host community events, and run the Neighborhood Foods farm stand.<\\/p>\"}}', '  200  300 Community Education & Land Stewardship\r\nRooted in popular education methodologies, our multigenerational education programs promote health, wellness, and leadership development. For adults and families, we host hands-on workshops that cover topics such as healthy cooking, seed starting, and medicinal tinctures, and provide access to garden beds, and technical assistance and resources to local community gardeners. UTC has two multigenerational teaching gardens where we offer environmental education and gardening instruction.\r\nUTC’s Youth Apprenticeship Program hires and mentors 10-12 high-school aged youth that primarily live in the Haddington.&nbsp; This unique five-month paid apprenticeship introduces Black and youth of color to urban agriculture and cultivates their leadership.&nbsp;Each Apprentice receives 1:1 mentorship from Staff in urban farming, community food distribution, and community education and outreach.\r\nUrban Tree Connection has also incubated Neighborhood Foods Coop, a community-led initiative of local residents who helped found Neighborhood Foods Farm and other community gardens. The group meets monthly to share resources, host community events, and run the Neighborhood Foods farm stand. ', '2018-08-30 23:33:11', '1'),
(1121, 3, 4, 1, 37, 1000, '{\"_id\":\"3\",\"heading\":\"Announcement 1\",\"_title\":\"Announcement 1\",\"date\":\"2018-08-28\",\"showTimeStamp\":\"1\",\"body\":{\"_flang\":\"html\",\"raw\":\"<p style=\\\"text-align:center\\\">[cms:asset 1 title=\\\"Logo nm\\\"]<\\/p>\\r\\n<p>Phasellus fames viverra in eu eu gravida adipiscing vehicula in hendrerit urna erat ultricies a duis vestibulum a parturient vestibulum urna ipsum porta cubilia a sociis. Quam cursus lobortis faucibus adipiscing fringilla ut fames scelerisque nam turpis dictumst taciti a odio ullamcorper montes a ut sociosqu a rhoncus ad parturient semper habitant gravida at elementum. Adipiscing consectetur posuere adipiscing arcu ut ridiculus id neque in a a cum adipiscing senectus parturient hac in nullam adipiscing erat et nibh lacus sagittis quam. Ut consequat adipiscing class duis venenatis a nulla in dolor habitasse justo vestibulum sodales vestibulum suspendisse cursus parturient ligula a. Consectetur vestibulum suspendisse nibh vivamus parturient fringilla vestibulum consequat nunc litora adipiscing nunc tempor praesent pretium volutpat auctor curabitur suspendisse tempus dictumst luctus commodo scelerisque. Condimentum nunc cubilia laoreet adipiscing quis ullamcorper eu mi justo facilisi ullamcorper orci luctus fringilla habitasse a magna parturient.<br><br>[cms:asset 4 title=\\\"2017 UTC Highlights\\\"]<\\/p>\",\"processed\":\"<p style=\\\"text-align:center\\\"><img title=\\\"Logo nm\\\" src=\\\"\\/admin\\/resources\\/logonm-w800.jpg\\\" alt=\\\"Logo nm\\\"><\\/p>\\r\\n<p>Phasellus fames viverra in eu eu gravida adipiscing vehicula in hendrerit urna erat ultricies a duis vestibulum a parturient vestibulum urna ipsum porta cubilia a sociis. Quam cursus lobortis faucibus adipiscing fringilla ut fames scelerisque nam turpis dictumst taciti a odio ullamcorper montes a ut sociosqu a rhoncus ad parturient semper habitant gravida at elementum. Adipiscing consectetur posuere adipiscing arcu ut ridiculus id neque in a a cum adipiscing senectus parturient hac in nullam adipiscing erat et nibh lacus sagittis quam. Ut consequat adipiscing class duis venenatis a nulla in dolor habitasse justo vestibulum sodales vestibulum suspendisse cursus parturient ligula a. Consectetur vestibulum suspendisse nibh vivamus parturient fringilla vestibulum consequat nunc litora adipiscing nunc tempor praesent pretium volutpat auctor curabitur suspendisse tempus dictumst luctus commodo scelerisque. Condimentum nunc cubilia laoreet adipiscing quis ullamcorper eu mi justo facilisi ullamcorper orci luctus fringilla habitasse a magna parturient.<br><br><a title=\\\"2017 UTC Highlights\\\" href=\\\"\\/admin\\/resources\\/2017-utc-highlights.pdf\\\">2017 UTC Highlights<\\/a><\\/p>\"}}', ' Announcement 1 Tuesday 28 August 2018 1 \r\nPhasellus fames viverra in eu eu gravida adipiscing vehicula in hendrerit urna erat ultricies a duis vestibulum a parturient vestibulum urna ipsum porta cubilia a sociis. Quam cursus lobortis faucibus adipiscing fringilla ut fames scelerisque nam turpis dictumst taciti a odio ullamcorper montes a ut sociosqu a rhoncus ad parturient semper habitant gravida at elementum. Adipiscing consectetur posuere adipiscing arcu ut ridiculus id neque in a a cum adipiscing senectus parturient hac in nullam adipiscing erat et nibh lacus sagittis quam. Ut consequat adipiscing class duis venenatis a nulla in dolor habitasse justo vestibulum sodales vestibulum suspendisse cursus parturient ligula a. Consectetur vestibulum suspendisse nibh vivamus parturient fringilla vestibulum consequat nunc litora adipiscing nunc tempor praesent pretium volutpat auctor curabitur suspendisse tempus dictumst luctus commodo scelerisque. Condimentum nunc cubilia laoreet adipiscing quis ullamcorper eu mi justo facilisi ullamcorper orci luctus fringilla habitasse a magna parturient.2017 UTC Highlights     ', '2018-08-30 23:36:15', '1'),
(1120, 4, 4, 1, 36, 1001, '{\"_id\":\"4\",\"heading\":\"Announcement 2\",\"_title\":\"Announcement 2\",\"date\":\"2018-08-28\",\"showTimeStamp\":\"1\",\"body\":{\"_flang\":\"html\",\"raw\":\"<p>Suspendisse proin ullamcorper quisque duis risus dolor volutpat sit nostra in blandit nunc scelerisque morbi dis vestibulum parturient luctus. Interdum tincidunt ultricies curae condimentum volutpat in a ullamcorper adipiscing class ac ultrices a senectus a eleifend enim at. A erat habitasse cum netus felis condimentum quam euismod ante lectus vulputate bibendum nibh nisi a magnis dui ridiculus dis accumsan fermentum a.&nbsp;<\\/p>\",\"processed\":\"<p>Suspendisse proin ullamcorper quisque duis risus dolor volutpat sit nostra in blandit nunc scelerisque morbi dis vestibulum parturient luctus. Interdum tincidunt ultricies curae condimentum volutpat in a ullamcorper adipiscing class ac ultrices a senectus a eleifend enim at. A erat habitasse cum netus felis condimentum quam euismod ante lectus vulputate bibendum nibh nisi a magnis dui ridiculus dis accumsan fermentum a.&nbsp;<\\/p>\"}}', ' Announcement 2 Tuesday 28 August 2018 1 Suspendisse proin ullamcorper quisque duis risus dolor volutpat sit nostra in blandit nunc scelerisque morbi dis vestibulum parturient luctus. Interdum tincidunt ultricies curae condimentum volutpat in a ullamcorper adipiscing class ac ultrices a senectus a eleifend enim at. A erat habitasse cum netus felis condimentum quam euismod ante lectus vulputate bibendum nibh nisi a magnis dui ridiculus dis accumsan fermentum a.&nbsp;     ', '2018-08-30 23:36:11', '1'),
(1119, 3, 4, 1, 36, 1000, '{\"_id\":\"3\",\"heading\":\"Announcement 1\",\"_title\":\"Announcement 1\",\"date\":\"2018-08-28\",\"showTimeStamp\":\"1\",\"body\":{\"_flang\":\"html\",\"raw\":\"<p style=\\\"text-align:center\\\">[cms:asset 1 title=\\\"Logo nm\\\"]<\\/p>\\r\\n<p>Phasellus fames viverra in eu eu gravida adipiscing vehicula in hendrerit urna erat ultricies a duis vestibulum a parturient vestibulum urna ipsum porta cubilia a sociis. Quam cursus lobortis faucibus adipiscing fringilla ut fames scelerisque nam turpis dictumst taciti a odio ullamcorper montes a ut sociosqu a rhoncus ad parturient semper habitant gravida at elementum. Adipiscing consectetur posuere adipiscing arcu ut ridiculus id neque in a a cum adipiscing senectus parturient hac in nullam adipiscing erat et nibh lacus sagittis quam. Ut consequat adipiscing class duis venenatis a nulla in dolor habitasse justo vestibulum sodales vestibulum suspendisse cursus parturient ligula a. Consectetur vestibulum suspendisse nibh vivamus parturient fringilla vestibulum consequat nunc litora adipiscing nunc tempor praesent pretium volutpat auctor curabitur suspendisse tempus dictumst luctus commodo scelerisque. Condimentum nunc cubilia laoreet adipiscing quis ullamcorper eu mi justo facilisi ullamcorper orci luctus fringilla habitasse a magna parturient.<br><br>[cms:asset 4 title=\\\"2017 UTC Highlights\\\"]<\\/p>\",\"processed\":\"<p style=\\\"text-align:center\\\"><img title=\\\"Logo nm\\\" src=\\\"\\/admin\\/resources\\/logonm-w800.jpg\\\" alt=\\\"Logo nm\\\"><\\/p>\\r\\n<p>Phasellus fames viverra in eu eu gravida adipiscing vehicula in hendrerit urna erat ultricies a duis vestibulum a parturient vestibulum urna ipsum porta cubilia a sociis. Quam cursus lobortis faucibus adipiscing fringilla ut fames scelerisque nam turpis dictumst taciti a odio ullamcorper montes a ut sociosqu a rhoncus ad parturient semper habitant gravida at elementum. Adipiscing consectetur posuere adipiscing arcu ut ridiculus id neque in a a cum adipiscing senectus parturient hac in nullam adipiscing erat et nibh lacus sagittis quam. Ut consequat adipiscing class duis venenatis a nulla in dolor habitasse justo vestibulum sodales vestibulum suspendisse cursus parturient ligula a. Consectetur vestibulum suspendisse nibh vivamus parturient fringilla vestibulum consequat nunc litora adipiscing nunc tempor praesent pretium volutpat auctor curabitur suspendisse tempus dictumst luctus commodo scelerisque. Condimentum nunc cubilia laoreet adipiscing quis ullamcorper eu mi justo facilisi ullamcorper orci luctus fringilla habitasse a magna parturient.<br><br><a title=\\\"2017 UTC Highlights\\\" href=\\\"\\/admin\\/resources\\/2017-utc-highlights.pdf\\\">2017 UTC Highlights<\\/a><\\/p>\"}}', ' Announcement 1 Tuesday 28 August 2018 1 \r\nPhasellus fames viverra in eu eu gravida adipiscing vehicula in hendrerit urna erat ultricies a duis vestibulum a parturient vestibulum urna ipsum porta cubilia a sociis. Quam cursus lobortis faucibus adipiscing fringilla ut fames scelerisque nam turpis dictumst taciti a odio ullamcorper montes a ut sociosqu a rhoncus ad parturient semper habitant gravida at elementum. Adipiscing consectetur posuere adipiscing arcu ut ridiculus id neque in a a cum adipiscing senectus parturient hac in nullam adipiscing erat et nibh lacus sagittis quam. Ut consequat adipiscing class duis venenatis a nulla in dolor habitasse justo vestibulum sodales vestibulum suspendisse cursus parturient ligula a. Consectetur vestibulum suspendisse nibh vivamus parturient fringilla vestibulum consequat nunc litora adipiscing nunc tempor praesent pretium volutpat auctor curabitur suspendisse tempus dictumst luctus commodo scelerisque. Condimentum nunc cubilia laoreet adipiscing quis ullamcorper eu mi justo facilisi ullamcorper orci luctus fringilla habitasse a magna parturient.2017 UTC Highlights     ', '2018-08-30 23:36:11', '1'),
(1079, 26, 8, 4, 20, 1002, '{\"_id\":\"26\",\"left_image\":null,\"left_image_width\":null,\"right_image\":{\"assetID\":\"38\",\"title\":\"Young Farmers\",\"_default\":\"\\/admin\\/resources\\/young-farmers.jpg\",\"bucket\":\"default\",\"path\":\"young-farmers.jpg\",\"size\":652800,\"w\":1649,\"h\":1236,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"112\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"young-farmers-thumb@2x.jpg\",\"size\":29425,\"mime\":\"image\\/jpeg\",\"assetID\":\"39\"}}},\"right_image_width\":\"250\",\"text\":{\"_flang\":\"html\",\"raw\":\"<h2>Community Education & Land Stewardship<\\/h2>\\r\\n<p>Rooted in popular education methodologies, our multigenerational education programs promote health, wellness, and leadership development. For adults and families, we host hands-on workshops that cover topics such as healthy cooking, seed starting, and medicinal tinctures, and provide access to garden beds, and technical assistance and resources to local community gardeners. UTC has two multigenerational teaching gardens where we offer environmental education and gardening instruction.<\\/p>\\r\\n<p>UTC\\u2019s Youth Apprenticeship Program hires and mentors 10-12 high-school aged youth that primarily live in the Haddington.&nbsp; This unique five-month paid apprenticeship introduces Black and youth of color to urban agriculture and cultivates their leadership.&nbsp;Each Apprentice receives 1:1 mentorship from Staff in urban farming, community food distribution, and community education and outreach.<\\/p>\\r\\n<p>Urban Tree Connection has also incubated Neighborhood Foods Coop, a community-led initiative of local residents who helped found Neighborhood Foods Farm and other community gardens. The group meets monthly to share resources, host community events, and run the Neighborhood Foods farm stand.<\\/p>\",\"processed\":\"<h2>Community Education & Land Stewardship<\\/h2>\\r\\n<p>Rooted in popular education methodologies, our multigenerational education programs promote health, wellness, and leadership development. For adults and families, we host hands-on workshops that cover topics such as healthy cooking, seed starting, and medicinal tinctures, and provide access to garden beds, and technical assistance and resources to local community gardeners. UTC has two multigenerational teaching gardens where we offer environmental education and gardening instruction.<\\/p>\\r\\n<p>UTC\\u2019s Youth Apprenticeship Program hires and mentors 10-12 high-school aged youth that primarily live in the Haddington.&nbsp; This unique five-month paid apprenticeship introduces Black and youth of color to urban agriculture and cultivates their leadership.&nbsp;Each Apprentice receives 1:1 mentorship from Staff in urban farming, community food distribution, and community education and outreach.<\\/p>\\r\\n<p>Urban Tree Connection has also incubated Neighborhood Foods Coop, a community-led initiative of local residents who helped found Neighborhood Foods Farm and other community gardens. The group meets monthly to share resources, host community events, and run the Neighborhood Foods farm stand.<\\/p>\"}}', '    250 Community Education & Land Stewardship\r\nRooted in popular education methodologies, our multigenerational education programs promote health, wellness, and leadership development. For adults and families, we host hands-on workshops that cover topics such as healthy cooking, seed starting, and medicinal tinctures, and provide access to garden beds, and technical assistance and resources to local community gardeners. UTC has two multigenerational teaching gardens where we offer environmental education and gardening instruction.\r\nUTC’s Youth Apprenticeship Program hires and mentors 10-12 high-school aged youth that primarily live in the Haddington.&nbsp; This unique five-month paid apprenticeship introduces Black and youth of color to urban agriculture and cultivates their leadership.&nbsp;Each Apprentice receives 1:1 mentorship from Staff in urban farming, community food distribution, and community education and outreach.\r\nUrban Tree Connection has also incubated Neighborhood Foods Coop, a community-led initiative of local residents who helped found Neighborhood Foods Farm and other community gardens. The group meets monthly to share resources, host community events, and run the Neighborhood Foods farm stand. ', '2018-08-30 23:20:47', '1'),
(1087, 25, 8, 4, 23, 1001, '{\"_id\":\"25\",\"left_image\":null,\"left_image_width\":null,\"right_image\":null,\"right_image_width\":null,\"text\":{\"_flang\":\"html\",\"raw\":\"<h2>Community-Led Food Distribution<\\/h2>\\r\\n<p>Our produce is distributed through&nbsp;<a href=\\\"http:\\/\\/www.urbantreeconnection.org\\/visitus.php\\\">Community-Led Farmers Markets and a Community Supported Agriculture (CSA)<\\/a>&nbsp;program in West Philly where residents have limited options to fresh, quality produce. We engage customers with limited incomes, offering them produce at an affordable price, encouraging the use of subsidized payments like EBT\\/Access and Senior vouchers. All of our farm stands are uniquely operated by community members (youth and adults), and we provide on-going training and support. Our excess food is donated to local food banks and feeding programs in Haddington.<\\/p>\",\"processed\":\"<h2>Community-Led Food Distribution<\\/h2>\\r\\n<p>Our produce is distributed through&nbsp;<a href=\\\"http:\\/\\/www.urbantreeconnection.org\\/visitus.php\\\">Community-Led Farmers Markets and a Community Supported Agriculture (CSA)<\\/a>&nbsp;program in West Philly where residents have limited options to fresh, quality produce. We engage customers with limited incomes, offering them produce at an affordable price, encouraging the use of subsidized payments like EBT\\/Access and Senior vouchers. All of our farm stands are uniquely operated by community members (youth and adults), and we provide on-going training and support. Our excess food is donated to local food banks and feeding programs in Haddington.<\\/p>\"}}', '     Community-Led Food Distribution\r\nOur produce is distributed through&nbsp;Community-Led Farmers Markets and a Community Supported Agriculture (CSA)&nbsp;program in West Philly where residents have limited options to fresh, quality produce. We engage customers with limited incomes, offering them produce at an affordable price, encouraging the use of subsidized payments like EBT/Access and Senior vouchers. All of our farm stands are uniquely operated by community members (youth and adults), and we provide on-going training and support. Our excess food is donated to local food banks and feeding programs in Haddington. ', '2018-08-30 23:25:36', '1'),
(1092, 24, 8, 4, 25, 1000, '{\"_id\":\"24\",\"left_image\":null,\"left_image_width\":null,\"right_image\":{\"assetID\":\"11\",\"title\":\"NF Farm\",\"_default\":\"\\/admin\\/resources\\/nf-farm.jpg\",\"bucket\":\"default\",\"path\":\"nf-farm.jpg\",\"size\":369096,\"w\":1024,\"h\":685,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"100\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"nf-farm-thumb@2x.jpg\",\"size\":40479,\"mime\":\"image\\/jpeg\",\"assetID\":\"12\"}}},\"right_image_width\":\"200\",\"text\":{\"_flang\":\"html\",\"raw\":\"<h2>Urban Farming & Gardening<\\/h2>\\r\\n<p>In 2009, UTC and three block captains founded Neighborhood Foods Farm (NF) as a positive solution to food insecurity and the growing number of abandoned lots in the neighborhood. After significant remediation, NF is now a fully functioning \\u00be acre farm. We have also developed a community-based micro-farm in collaboration with First African Presbyterian Church, and 27 other vacant lots have been converted into pocket parks, communal growing plots, and educational spaces. Together, these sites comprise a neighborhood food system that annually raises over 8,000 pounds of chemical-free produce. We offer volunteer and apprenticeship opportunities at our farms, and host farm tours through the growing season.<\\/p>\",\"processed\":\"<h2>Urban Farming & Gardening<\\/h2>\\r\\n<p>In 2009, UTC and three block captains founded Neighborhood Foods Farm (NF) as a positive solution to food insecurity and the growing number of abandoned lots in the neighborhood. After significant remediation, NF is now a fully functioning \\u00be acre farm. We have also developed a community-based micro-farm in collaboration with First African Presbyterian Church, and 27 other vacant lots have been converted into pocket parks, communal growing plots, and educational spaces. Together, these sites comprise a neighborhood food system that annually raises over 8,000 pounds of chemical-free produce. We offer volunteer and apprenticeship opportunities at our farms, and host farm tours through the growing season.<\\/p>\"}}', '    200 Urban Farming & Gardening\r\nIn 2009, UTC and three block captains founded Neighborhood Foods Farm (NF) as a positive solution to food insecurity and the growing number of abandoned lots in the neighborhood. After significant remediation, NF is now a fully functioning ¾ acre farm. We have also developed a community-based micro-farm in collaboration with First African Presbyterian Church, and 27 other vacant lots have been converted into pocket parks, communal growing plots, and educational spaces. Together, these sites comprise a neighborhood food system that annually raises over 8,000 pounds of chemical-free produce. We offer volunteer and apprenticeship opportunities at our farms, and host farm tours through the growing season. ', '2018-08-30 23:26:31', '1'),
(1077, 24, 8, 4, 20, 1000, '{\"_id\":\"24\",\"left_image\":null,\"left_image_width\":null,\"right_image\":{\"assetID\":\"11\",\"title\":\"NF Farm\",\"_default\":\"\\/admin\\/resources\\/nf-farm.jpg\",\"bucket\":\"default\",\"path\":\"nf-farm.jpg\",\"size\":369096,\"w\":1024,\"h\":685,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"100\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"nf-farm-thumb@2x.jpg\",\"size\":40479,\"mime\":\"image\\/jpeg\",\"assetID\":\"12\"}}},\"right_image_width\":\"200\",\"text\":{\"_flang\":\"html\",\"raw\":\"<h2>Urban Farming & Gardening<\\/h2>\\r\\n<p>In 2009, UTC and three block captains founded Neighborhood Foods Farm (NF) as a positive solution to food insecurity and the growing number of abandoned lots in the neighborhood. After significant remediation, NF is now a fully functioning \\u00be acre farm. We have also developed a community-based micro-farm in collaboration with First African Presbyterian Church, and 27 other vacant lots have been converted into pocket parks, communal growing plots, and educational spaces. Together, these sites comprise a neighborhood food system that annually raises over 8,000 pounds of chemical-free produce. We offer volunteer and apprenticeship opportunities at our farms, and host farm tours through the growing season.<\\/p>\",\"processed\":\"<h2>Urban Farming & Gardening<\\/h2>\\r\\n<p>In 2009, UTC and three block captains founded Neighborhood Foods Farm (NF) as a positive solution to food insecurity and the growing number of abandoned lots in the neighborhood. After significant remediation, NF is now a fully functioning \\u00be acre farm. We have also developed a community-based micro-farm in collaboration with First African Presbyterian Church, and 27 other vacant lots have been converted into pocket parks, communal growing plots, and educational spaces. Together, these sites comprise a neighborhood food system that annually raises over 8,000 pounds of chemical-free produce. We offer volunteer and apprenticeship opportunities at our farms, and host farm tours through the growing season.<\\/p>\"}}', '    200 Urban Farming & Gardening\r\nIn 2009, UTC and three block captains founded Neighborhood Foods Farm (NF) as a positive solution to food insecurity and the growing number of abandoned lots in the neighborhood. After significant remediation, NF is now a fully functioning ¾ acre farm. We have also developed a community-based micro-farm in collaboration with First African Presbyterian Church, and 27 other vacant lots have been converted into pocket parks, communal growing plots, and educational spaces. Together, these sites comprise a neighborhood food system that annually raises over 8,000 pounds of chemical-free produce. We offer volunteer and apprenticeship opportunities at our farms, and host farm tours through the growing season. ', '2018-08-30 23:20:47', '1'),
(1080, 24, 8, 4, 21, 1000, '{\"_id\":\"24\",\"left_image\":{\"assetID\":\"11\",\"title\":\"NF Farm\",\"_default\":\"\\/admin\\/resources\\/nf-farm.jpg\",\"bucket\":\"default\",\"path\":\"nf-farm.jpg\",\"size\":369096,\"w\":1024,\"h\":685,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"100\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"nf-farm-thumb@2x.jpg\",\"size\":40479,\"mime\":\"image\\/jpeg\",\"assetID\":\"12\"}}},\"left_image_width\":\"200\",\"right_image\":null,\"right_image_width\":\"200\",\"text\":{\"_flang\":\"html\",\"raw\":\"<h2>Urban Farming & Gardening<\\/h2>\\r\\n<p>In 2009, UTC and three block captains founded Neighborhood Foods Farm (NF) as a positive solution to food insecurity and the growing number of abandoned lots in the neighborhood. After significant remediation, NF is now a fully functioning \\u00be acre farm. We have also developed a community-based micro-farm in collaboration with First African Presbyterian Church, and 27 other vacant lots have been converted into pocket parks, communal growing plots, and educational spaces. Together, these sites comprise a neighborhood food system that annually raises over 8,000 pounds of chemical-free produce. We offer volunteer and apprenticeship opportunities at our farms, and host farm tours through the growing season.<\\/p>\",\"processed\":\"<h2>Urban Farming & Gardening<\\/h2>\\r\\n<p>In 2009, UTC and three block captains founded Neighborhood Foods Farm (NF) as a positive solution to food insecurity and the growing number of abandoned lots in the neighborhood. After significant remediation, NF is now a fully functioning \\u00be acre farm. We have also developed a community-based micro-farm in collaboration with First African Presbyterian Church, and 27 other vacant lots have been converted into pocket parks, communal growing plots, and educational spaces. Together, these sites comprise a neighborhood food system that annually raises over 8,000 pounds of chemical-free produce. We offer volunteer and apprenticeship opportunities at our farms, and host farm tours through the growing season.<\\/p>\"}}', '  200  200 Urban Farming & Gardening\r\nIn 2009, UTC and three block captains founded Neighborhood Foods Farm (NF) as a positive solution to food insecurity and the growing number of abandoned lots in the neighborhood. After significant remediation, NF is now a fully functioning ¾ acre farm. We have also developed a community-based micro-farm in collaboration with First African Presbyterian Church, and 27 other vacant lots have been converted into pocket parks, communal growing plots, and educational spaces. Together, these sites comprise a neighborhood food system that annually raises over 8,000 pounds of chemical-free produce. We offer volunteer and apprenticeship opportunities at our farms, and host farm tours through the growing season. ', '2018-08-30 23:21:47', '1'),
(1086, 24, 8, 4, 23, 1000, '{\"_id\":\"24\",\"left_image\":{\"assetID\":\"11\",\"title\":\"NF Farm\",\"_default\":\"\\/admin\\/resources\\/nf-farm.jpg\",\"bucket\":\"default\",\"path\":\"nf-farm.jpg\",\"size\":369096,\"w\":1024,\"h\":685,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"100\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"nf-farm-thumb@2x.jpg\",\"size\":40479,\"mime\":\"image\\/jpeg\",\"assetID\":\"12\"}}},\"left_image_width\":\"200\",\"right_image\":null,\"right_image_width\":\"200\",\"text\":{\"_flang\":\"html\",\"raw\":\"<h2>Urban Farming & Gardening<\\/h2>\\r\\n<p>In 2009, UTC and three block captains founded Neighborhood Foods Farm (NF) as a positive solution to food insecurity and the growing number of abandoned lots in the neighborhood. After significant remediation, NF is now a fully functioning \\u00be acre farm. We have also developed a community-based micro-farm in collaboration with First African Presbyterian Church, and 27 other vacant lots have been converted into pocket parks, communal growing plots, and educational spaces. Together, these sites comprise a neighborhood food system that annually raises over 8,000 pounds of chemical-free produce. We offer volunteer and apprenticeship opportunities at our farms, and host farm tours through the growing season.<\\/p>\",\"processed\":\"<h2>Urban Farming & Gardening<\\/h2>\\r\\n<p>In 2009, UTC and three block captains founded Neighborhood Foods Farm (NF) as a positive solution to food insecurity and the growing number of abandoned lots in the neighborhood. After significant remediation, NF is now a fully functioning \\u00be acre farm. We have also developed a community-based micro-farm in collaboration with First African Presbyterian Church, and 27 other vacant lots have been converted into pocket parks, communal growing plots, and educational spaces. Together, these sites comprise a neighborhood food system that annually raises over 8,000 pounds of chemical-free produce. We offer volunteer and apprenticeship opportunities at our farms, and host farm tours through the growing season.<\\/p>\"}}', '  200  200 Urban Farming & Gardening\r\nIn 2009, UTC and three block captains founded Neighborhood Foods Farm (NF) as a positive solution to food insecurity and the growing number of abandoned lots in the neighborhood. After significant remediation, NF is now a fully functioning ¾ acre farm. We have also developed a community-based micro-farm in collaboration with First African Presbyterian Church, and 27 other vacant lots have been converted into pocket parks, communal growing plots, and educational spaces. Together, these sites comprise a neighborhood food system that annually raises over 8,000 pounds of chemical-free produce. We offer volunteer and apprenticeship opportunities at our farms, and host farm tours through the growing season. ', '2018-08-30 23:25:36', '1'),
(1089, 24, 8, 4, 24, 1000, '{\"_id\":\"24\",\"left_image\":null,\"left_image_width\":null,\"right_image\":{\"assetID\":\"11\",\"title\":\"NF Farm\",\"_default\":\"\\/admin\\/resources\\/nf-farm.jpg\",\"bucket\":\"default\",\"path\":\"nf-farm.jpg\",\"size\":369096,\"w\":1024,\"h\":685,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"100\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"nf-farm-thumb@2x.jpg\",\"size\":40479,\"mime\":\"image\\/jpeg\",\"assetID\":\"12\"}}},\"right_image_width\":\"200\",\"text\":{\"_flang\":\"html\",\"raw\":\"<h2>Urban Farming & Gardening<\\/h2>\\r\\n<p>In 2009, UTC and three block captains founded Neighborhood Foods Farm (NF) as a positive solution to food insecurity and the growing number of abandoned lots in the neighborhood. After significant remediation, NF is now a fully functioning \\u00be acre farm. We have also developed a community-based micro-farm in collaboration with First African Presbyterian Church, and 27 other vacant lots have been converted into pocket parks, communal growing plots, and educational spaces. Together, these sites comprise a neighborhood food system that annually raises over 8,000 pounds of chemical-free produce. We offer volunteer and apprenticeship opportunities at our farms, and host farm tours through the growing season.<\\/p>\",\"processed\":\"<h2>Urban Farming & Gardening<\\/h2>\\r\\n<p>In 2009, UTC and three block captains founded Neighborhood Foods Farm (NF) as a positive solution to food insecurity and the growing number of abandoned lots in the neighborhood. After significant remediation, NF is now a fully functioning \\u00be acre farm. We have also developed a community-based micro-farm in collaboration with First African Presbyterian Church, and 27 other vacant lots have been converted into pocket parks, communal growing plots, and educational spaces. Together, these sites comprise a neighborhood food system that annually raises over 8,000 pounds of chemical-free produce. We offer volunteer and apprenticeship opportunities at our farms, and host farm tours through the growing season.<\\/p>\"}}', '    200 Urban Farming & Gardening\r\nIn 2009, UTC and three block captains founded Neighborhood Foods Farm (NF) as a positive solution to food insecurity and the growing number of abandoned lots in the neighborhood. After significant remediation, NF is now a fully functioning ¾ acre farm. We have also developed a community-based micro-farm in collaboration with First African Presbyterian Church, and 27 other vacant lots have been converted into pocket parks, communal growing plots, and educational spaces. Together, these sites comprise a neighborhood food system that annually raises over 8,000 pounds of chemical-free produce. We offer volunteer and apprenticeship opportunities at our farms, and host farm tours through the growing season. ', '2018-08-30 23:26:13', '1');

-- --------------------------------------------------------

--
-- Table structure for table `perch3_content_regions`
--

CREATE TABLE `perch3_content_regions` (
  `regionID` int(10) NOT NULL,
  `pageID` int(10) UNSIGNED NOT NULL,
  `regionKey` varchar(255) NOT NULL DEFAULT '',
  `regionPage` varchar(255) NOT NULL DEFAULT '',
  `regionHTML` longtext NOT NULL,
  `regionNew` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `regionOrder` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `regionTemplate` varchar(255) NOT NULL DEFAULT '',
  `regionMultiple` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `regionOptions` text NOT NULL,
  `regionSearchable` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `regionRev` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `regionLatestRev` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `regionEditRoles` varchar(255) NOT NULL DEFAULT '*',
  `regionPublishRoles` varchar(255) NOT NULL DEFAULT '*',
  `regionUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `perch3_content_regions`
--

INSERT INTO `perch3_content_regions` (`regionID`, `pageID`, `regionKey`, `regionPage`, `regionHTML`, `regionNew`, `regionOrder`, `regionTemplate`, `regionMultiple`, `regionOptions`, `regionSearchable`, `regionRev`, `regionLatestRev`, `regionEditRoles`, `regionPublishRoles`, `regionUpdated`) VALUES
(3, 1, 'header_gallery', '/index.php', '<h1>\n    header-gallery\n</h1>', 0, 0, 'gallery.html', 0, '{\"edit_mode\":\"singlepage\"}', 1, 19, 19, '*', '*', '2018-08-30 22:54:06'),
(2, 1, 'left_col', '/index.php', '<h2>BUILDING COMMUNITY ONE VACANT LOT AT A TIME…</h2>\r\n<p>The Urban Tree Connection (UTC) is a 501(c)(3) nonprofit community-based organization, and our mission is to work with residents in Philadelphia’s historically marginalized urban communities to transform abandoned open spaces into safe and functional places that inspire and promote positive human interaction.</p>\r\n<p>Over the last 19 years, we have primarily partnered with residents of West Philadelphia\'s Haddington neighborhood to develop and sustain community-driven greening and gardening projects.  Our network of garden and farm sites are spaces for communal growing, gathering and education that foster deep community leadership of all ages to build healthy sustainable community.</p>', 0, 0, 'text_block.html', 0, '{\"edit_mode\":\"singlepage\"}', 1, 5, 5, '*', '*', '2018-08-28 17:57:01'),
(4, 1, 'right_col', '/index.php', '<h2>Announcement 1</h2>\n\n\n  <p class=\"time_stamp\">Posted 28 August 2018</p>\n\n\n\n<p style=\"text-align:center\"><img title=\"Logo nm\" src=\"/admin/resources/logonm-w800.jpg\" alt=\"Logo nm\"></p>\r\n<p>Phasellus fames viverra in eu eu gravida adipiscing vehicula in hendrerit urna erat ultricies a duis vestibulum a parturient vestibulum urna ipsum porta cubilia a sociis. Quam cursus lobortis faucibus adipiscing fringilla ut fames scelerisque nam turpis dictumst taciti a odio ullamcorper montes a ut sociosqu a rhoncus ad parturient semper habitant gravida at elementum. Adipiscing consectetur posuere adipiscing arcu ut ridiculus id neque in a a cum adipiscing senectus parturient hac in nullam adipiscing erat et nibh lacus sagittis quam. Ut consequat adipiscing class duis venenatis a nulla in dolor habitasse justo vestibulum sodales vestibulum suspendisse cursus parturient ligula a. Consectetur vestibulum suspendisse nibh vivamus parturient fringilla vestibulum consequat nunc litora adipiscing nunc tempor praesent pretium volutpat auctor curabitur suspendisse tempus dictumst luctus commodo scelerisque. Condimentum nunc cubilia laoreet adipiscing quis ullamcorper eu mi justo facilisi ullamcorper orci luctus fringilla habitasse a magna parturient.<br><br><a title=\"2017 UTC Highlights\" href=\"/admin/resources/2017-utc-highlights.pdf\">2017 UTC Highlights</a></p>\n\n<hr/>\n\n\n<h2>Announcement 2</h2>\n\n\n  <p class=\"time_stamp\">Posted 28 August 2018</p>\n\n\n\n<p>Suspendisse proin ullamcorper quisque duis risus dolor volutpat sit nostra in blandit nunc scelerisque morbi dis vestibulum parturient luctus. Interdum tincidunt ultricies curae condimentum volutpat in a ullamcorper adipiscing class ac ultrices a senectus a eleifend enim at. A erat habitasse cum netus felis condimentum quam euismod ante lectus vulputate bibendum nibh nisi a magnis dui ridiculus dis accumsan fermentum a.&nbsp;</p>\n\n<hr/>\n\n\n  \n\n', 0, 1, 'article.html', 1, '{\"edit_mode\":\"singlepage\",\"sortOrder\":\"ASC\",\"sortField\":\"\",\"limit\":\"\",\"searchURL\":\"\",\"addToTop\":\"0\",\"title_delimit\":\"\",\"adminOnly\":0,\"column_ids\":[]}', 1, 38, 38, '*', '*', '2018-08-30 23:36:19'),
(5, 2, 'top_content', '/about.php', '<div>\n    <img style=\"float:left; padding:10px\" src=\'/admin/resources/gardening-at-girarden.jpg\' width=\'300\'/>\n    <img style=\"float:right; padding:10px\" src=\'/admin/resources/sprout.jpg\' width=\'250\'/>\n    <p>The Urban Tree Connection (UTC) works with residents in Philadelphia’s historically marginalized urban communities to revitalize their neighborhoods by transforming abandoned open spaces into safe and functional places that inspire and promote positive human interaction. Founded in 1989 and incorporated as a 501(c)(3) nonprofit organization in 1997, UTC works with residents of West Philadelphia\'s Haddington neighborhood to develop community-driven greening and gardening projects on vacant land. Our aim is to cultivate community leadership to improve community health and to develop a local, sustainable, and equitable food system<br></p>\r\n<p>Over the last 19 years, UTC has transformed the landscape of Haddington alongside community leaders, catalyzing residents\' demand for green space and locally produced fresh food. Together, we have redeveloped 29 vacant lots, totaling more than 86,000 square feet of land for communal growing and gathering, sustainable (chemical free) food production and distribution, and multigenerational health and wellness education. This includes our community gem - a ¾ acre urban farm – Neighborhood Foods Farm, which produces over 8,000 pounds of produce annually. Furthermore, UTC has been at the forefront of urban farming and land reclamation movements in Philadelphia, helping pioneer key tools for legal reclamation of abandoned properties.<br><br>Neighbors, once isolated from each other, increasingly connect through the gardens created on these formerly abandoned lots, as well as through <a href=\"http://urbantreeconnection.org/programs.php\">diverse array of educational and community programs</a>&nbsp;that UTC offers.  These personal connections have, in turn, empowered neighbors to continue to transform their community. Today, Haddington residents are increasingly realizing the potential for growing food on abandoned lots in their neighborhood, and are active partners with UTC in developing a community based local food system aimed at making affordable, healthy, Haddington-grown food available to every neighbor. This community-based food system presents a powerful antidote to food insecurity and diet-related illnesses faced by residents.</p>\n    <div style=\"clear:both\"/>\n</div>', 0, 0, 'text_block_images.html', 0, '{\"edit_mode\":\"listdetail\",\"searchURL\":\"\",\"title_delimit\":\"\",\"adminOnly\":0,\"addToTop\":0,\"limit\":false,\"column_ids\":[]}', 1, 26, 26, '*', '*', '2018-08-30 22:32:59'),
(6, 2, 'board_of_directors', '/about.php', '<p>\n    <strong>\n        India\n        Blunt\n        UTC Board Chair\n    </strong>\n    <br/>\n    Program Manager,\n    Lenfest\n</p><p>\n    <strong>\n        Jayne\n        Mariotti\n        UTC Board Vice-Chair\n    </strong>\n    <br/>\n    Associate,\n    Ballard Spahr, LLP\n</p><p>\n    <strong>\n        Katherine\n        Madonna\n        UTC Board Treasurer\n    </strong>\n    <br/>\n    Director of Finance,\n    Department of OBGYN, Penn Medicine\n</p><p>\n    <strong>\n        Lauren\n        Fox\n        UTC Board Secretary\n    </strong>\n    <br/>\n    Member,\n    Cozen O\'Connor\n</p><p>\n    <strong>\n        Joann\n        Manuel\n        Community Liaison\n    </strong>\n    <br/>\n    Executive Secretary,\n    CATCH, Inc.\n</p><p>\n    <strong>\n        Keon\n        Mercedes-Liberato\n        \n    </strong>\n    <br/>\n    Track Maintenance & Inspection,\n    National Railroad Passenger Corporation\n</p><p>\n    <strong>\n        Tamar\n        Sharabi\n        \n    </strong>\n    <br/>\n    Engineer II, Field Services,\n    Philadelphia Gas Works\n</p><p>\n    <strong>\n        Noelle\n        Warford\n        \n    </strong>\n    <br/>\n    Executive Director,\n    Urban Tree Connection\n</p><p>\n    <strong>\n        Shane\n        Mayo\n        \n    </strong>\n    <br/>\n    Manager of Administrative Services,\n    Philadelphia Gas Works\n</p>', 0, 1, 'board_member.html', 1, '{\"edit_mode\":\"singlepage\"}', 1, 11, 11, '*', '*', '2018-08-28 18:39:55'),
(7, 2, 'staff', '/about.php', '<p>\n    <strong>\n        Noelle \n        Warford, \n        Executive Director</strong><br />\n    <a href=\'mailto: noelle@urbantreeconnection.org\'>noelle@urbantreeconnection.org</a>\n</p><p>\n    <strong>\n        Nykisha \n        Madison, \n        Farm Manager</strong><br />\n    <a href=\'mailto: nykisha@urbantreeconnection.org\'>nykisha@urbantreeconnection.org</a>\n</p><p>\n    <strong>\n        Amirah \n        Mitchell, \n        Community Education Coordinator</strong><br />\n    <a href=\'mailto: amirah@urbantreeconnection.org\'>amirah@urbantreeconnection.org</a>\n</p><p>\n    <strong>\n        Daniel \n        Reyes, \n        Land Stewardship Coordinator</strong><br />\n    <a href=\'mailto: daniel@urbantreeconnection.org\'>daniel@urbantreeconnection.org</a>\n</p><p>\n    <strong>\n        Jahzara \n        Heredia, \n        Lead Farmer</strong><br />\n    <a href=\'mailto: jahzara@urbantreeconnection.org\'>jahzara@urbantreeconnection.org</a>\n</p><p>\n    <strong>\n        Mecca \n        Brooks, \n        Food Distribution Coordinator</strong><br />\n    <a href=\'mailto: mecca@urbantreeconnection.org\'>mecca@urbantreeconnection.org</a>\n</p><p>\n    <strong>\n        Lisa \n        Barkley, \n        Community Liaison</strong><br />\n    <a href=\'mailto: lisa@urbantreeconnection.org\'>lisa@urbantreeconnection.org</a>\n</p><p>\n    <strong>\n        Misako \n        Scott, \n        Office Manager</strong><br />\n    <a href=\'mailto: misako@urbantreeconnection.org\'>misako@urbantreeconnection.org</a>\n</p>', 0, 2, 'staff.html', 1, '{\"edit_mode\":\"singlepage\"}', 1, 8, 8, '*', '*', '2018-08-28 18:49:39'),
(8, 4, 'program_listing', '/programs.php', '<div>\n    <div style=\"clear:both\"/>\n    \n        <img style=\"float:left; padding:10px\" src=\'/admin/resources/nf-farm.jpg\' width=\'200\'/>\n    \n\n    \n\n    <div>\n            <h2>Urban Farming & Gardening</h2>\r\n<p>In 2009, UTC and three block captains founded Neighborhood Foods Farm (NF) as a positive solution to food insecurity and the growing number of abandoned lots in the neighborhood. After significant remediation, NF is now a fully functioning ¾ acre farm. We have also developed a community-based micro-farm in collaboration with First African Presbyterian Church, and 27 other vacant lots have been converted into pocket parks, communal growing plots, and educational spaces. Together, these sites comprise a neighborhood food system that annually raises over 8,000 pounds of chemical-free produce. We offer volunteer and apprenticeship opportunities at our farms, and host farm tours through the growing season.</p>\n    </div>\n    <div style=\"clear:both\"/>\n</div><div>\n    <div style=\"clear:both\"/>\n    \n        <img style=\"float:left; padding:10px\" src=\'/admin/resources/memorial-garden-4.jpg\' width=\'200\'/>\n    \n\n    \n\n    <div>\n            <h2>Community-Led Food Distribution</h2>\r\n<p>Our produce is distributed through&nbsp;<a href=\"http://www.urbantreeconnection.org/visitus.php\">Community-Led Farmers Markets and a Community Supported Agriculture (CSA)</a>&nbsp;program in West Philly where residents have limited options to fresh, quality produce. We engage customers with limited incomes, offering them produce at an affordable price, encouraging the use of subsidized payments like EBT/Access and Senior vouchers. All of our farm stands are uniquely operated by community members (youth and adults), and we provide on-going training and support. Our excess food is donated to local food banks and feeding programs in Haddington.</p>\n    </div>\n    <div style=\"clear:both\"/>\n</div><div>\n    <div style=\"clear:both\"/>\n    \n        <img style=\"float:left; padding:10px\" src=\'/admin/resources/young-farmers.jpg\' width=\'200\'/>\n    \n\n    \n\n    <div>\n            <h2>Community Education & Land Stewardship</h2>\r\n<p>Rooted in popular education methodologies, our multigenerational education programs promote health, wellness, and leadership development. For adults and families, we host hands-on workshops that cover topics such as healthy cooking, seed starting, and medicinal tinctures, and provide access to garden beds, and technical assistance and resources to local community gardeners. UTC has two multigenerational teaching gardens where we offer environmental education and gardening instruction.</p>\r\n<p>UTC’s Youth Apprenticeship Program hires and mentors 10-12 high-school aged youth that primarily live in the Haddington.&nbsp; This unique five-month paid apprenticeship introduces Black and youth of color to urban agriculture and cultivates their leadership.&nbsp;Each Apprentice receives 1:1 mentorship from Staff in urban farming, community food distribution, and community education and outreach.</p>\r\n<p>Urban Tree Connection has also incubated Neighborhood Foods Coop, a community-led initiative of local residents who helped found Neighborhood Foods Farm and other community gardens. The group meets monthly to share resources, host community events, and run the Neighborhood Foods farm stand.</p>\n    </div>\n    <div style=\"clear:both\"/>\n</div>', 0, 1, 'text_block_images.html', 1, '{\"edit_mode\":\"singlepage\",\"sortOrder\":\"ASC\",\"sortField\":\"\",\"limit\":\"\",\"searchURL\":\"\",\"addToTop\":\"0\",\"title_delimit\":\"\",\"adminOnly\":0,\"column_ids\":[]}', 1, 27, 27, '*', '*', '2018-08-30 23:33:11'),
(9, 4, 'left_image', '/programs.php', '<img src=\"/admin/resources/adult-gardening-workshop-4.jpg\" alt=\"memorial garden\">', 0, 2, 'image.html', 0, '{\"edit_mode\":\"singlepage\"}', 1, 7, 7, '*', '*', '2018-08-30 18:03:20'),
(10, 4, 'right_image', '/programs.php', '<img src=\"/admin/resources/memorial-garden-3.jpg\" alt=\"Adult Gardening Workshop\">', 0, 3, 'image.html', 0, '{\"edit_mode\":\"singlepage\"}', 1, 6, 6, '*', '*', '2018-08-30 18:03:51'),
(11, 4, 'top_content', '/programs.php', '<p>UTC partners with Haddington residents to reclaim vacant land for community-building green spaces that bring people together to address community needs.<br><strong><br>Our current programs include:</strong></p>', 0, 0, 'text_block.html', 0, '{\"edit_mode\":\"singlepage\"}', 1, 1, 1, '*', '*', '2018-08-30 17:56:14'),
(12, 5, 'west_philly_markets', '/visitus.php', '<h3>Neighborhood Foods Farmers Market</h3>\n\n<p>\n    53rd St. &amp; Wyalusing Ave.<br/>\n    Every Saturday, 10am-2pm<br/>\n    May 12th - Nov 3rd<br/>\n    \n</p><h3>Neighborhood Foods Youth-Led Market</h3>\n\n<p>\n    53rd St. &amp; Wyalusing Ave.<br/>\n    Every Saturday, 10am-2pm<br/>\n    July 11th - August 29th<br/>\n    \n</p><h3>Shepard Recreation Center Market</h3>\n\n<p>\n    5700 Haverford Ave<br/>\n    Every Last Tuesday of the Month, 12pm-3pm<br/>\n    6/26, 7/31, 8/28, 9/25, &amp; 10/30<br/>\n    \n</p><h3>West Philly YMCA Market</h3>\n\n<p>\n    5120 Chestnut Street<br/>\n    Every 1st and 3rd Friday, 10am-2pm<br/>\n    5/18, 6/1, 6/15, 7/6, 7/20, 8/3, 8/17, 9/7, 9/21, 10/5, 10/19<br/>\n    \n</p><h3></h3>\n\n<p>\n    <br/>\n    <br/>\n    <br/>\n    \n</p>', 0, 0, 'market_listing.html', 1, '{\"edit_mode\":\"listdetail\",\"searchURL\":\"\",\"title_delimit\":\"\",\"adminOnly\":0,\"addToTop\":0,\"limit\":false,\"column_ids\":[]}', 1, 7, 7, '*', '*', '2018-08-30 18:24:25'),
(13, 5, 'center_city_markets', '/visitus.php', '<h3>Rittenhouse Farmers Market</h3>\n\n<p>\n    Rittenhouse Square (18th St. &amp; Walnut St.)<br/>\n    Every Saturday, 9a-3p<br/>\n    May 26th - November 10th<br/>\n    This market accepts cash and FMNP vouchers\n</p>', 0, 1, 'market_listing.html', 1, '{\"edit_mode\":\"listdetail\",\"searchURL\":\"\",\"title_delimit\":\"\",\"adminOnly\":0,\"addToTop\":0,\"limit\":false,\"column_ids\":[]}', 1, 1, 1, '*', '*', '2018-08-30 18:25:33'),
(14, 6, 'top_content', '/supporters.php', '<p>As a grassroots community organization, Urban Tree Connection relies on the partnership of individuals and groups across the Greater Philadelphia area to help us fulfill our mission. These critical partnerships take many forms, including volunteering, financial and in-kind donations, and direct collaboration on community programs.</p><h2>Volunteers</h2><p>Over the years we have had nearly 1000 volunteers annually support our operations at UTC. We appreciate all of volunteers from local high schools, colleges and universities, a broad range of faith based organizations, corporate entities, and other community-based organizations throughout the city. We especially appreciate all of the efforts and hours of volunteership our local neighbors in Haddington and in surrounding neighborhoods provide – from working at the farm, to cleaning up the community gardens, to helping cook meals for community events. Our community-based volunteers are the glue that holds the work together!</p>', 0, 0, 'text_block.html', 0, '{\"edit_mode\":\"listdetail\",\"searchURL\":\"\",\"title_delimit\":\"\",\"adminOnly\":0,\"addToTop\":0,\"limit\":false,\"column_ids\":[]}', 1, 3, 3, '*', '*', '2018-08-30 18:37:44'),
(15, 6, 'funders', '/supporters.php', '<p>1830 Family Foundation</p><p>Alfred and Mary Douty Foundation</p><p>Allen Hilles Fund</p><p>Barra Foundation</p><p>Berkowitz Family Foundation</p><p>Bread &amp; Roses Community Fund</p><p>Bryn Mawr Presbyterian Church</p><p>Cassett Foundation</p><p>Catholic Campaign for Human Development</p><p>Claneil Foundation, Inc.</p><p>Christopher Ludwick Foundation</p><p>Dolfinger-McMahon Foundation</p><p>First Presbyterian Church</p><p>Henrietta Tower Wurts Memorial</p><p>Wawa Foundation</p><p>Independence Foundation</p><p>Lindback Foundation</p><p>Leo &amp; Peggy Pierce Foundation</p><p>Louis N. Cassett Foundation</p><p>Merck Family Fund</p><p>Philadelphia Chapter of the Garden Club of America</p><p>Philadelphia Water Department</p><p>Rosenlund Family Foundation</p><p>Samuel S. Fels Foundation</p><p>SEI Giving Fund</p><p>Thomas Skelton Harrison Foundation</p><p>Union Benevolent Foundation</p><p>U.S. Department of Agriculture</p><p>Vanguard Group</p><p>Whole Cities Foundation</p>', 0, 1, 'text.html', 1, '{\"edit_mode\":\"singlepage\"}', 1, 36, 36, '*', '*', '2018-08-30 18:43:30'),
(16, 7, 'top_content', '/donate.php', '<p>Urban Tree Connection remains a genuinely grassroots organization, driven by the time, commitment, and partnership of individuals like you. Your support enables us to continue our core work and programming and be good stewards of our community-based gardening and sites.  Your generosity goes a long way – from producing beautiful farming produce that allows neighbors to feed themselves and one another to cultivating future farmers and food justice advocates.</p><p>The Urban Tree Connection is a 501 (c)(3) organization, and all contributions are fully tax-deductible. We hope that you\'ll consider donating to Urban Tree Connection in one of the following ways:<br></p>', 0, 0, 'text_block.html', 0, '{\"edit_mode\":\"singlepage\"}', 1, 1, 1, '*', '*', '2018-08-30 18:51:04'),
(17, 7, 'donation_copy', '/donate.php', '<p>Click on our PayPal donation button below, and make a gift using your MasterCard, Visa, American Express, or Discover card:</p>', 0, 1, 'text_block.html', 0, '{\"edit_mode\":\"singlepage\"}', 1, 2, 2, '*', '*', '2018-08-30 18:52:41'),
(18, 7, 'donation_paypal_link', '/donate.php', 'https://www.paypal.com/fundraiser/charity/1563272', 0, 2, 'raw_text.html', 0, '{\"edit_mode\":\"listdetail\",\"searchURL\":\"\",\"title_delimit\":\"\",\"adminOnly\":0,\"addToTop\":0,\"limit\":false,\"column_ids\":[]}', 1, 3, 3, '*', '*', '2018-08-30 18:54:16'),
(19, 7, 'mail_copy', '/donate.php', '<p>Check can be made payable to “Urban Tree Connection” and send to the following address:<br>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;Urban Tree Connection<br>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;c/o First African Presbyterian Church<br>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;4159 West Girard Avenue<br>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;Philadelphia, PA 19104</p>', 0, 3, 'text_block.html', 0, '{\"edit_mode\":\"singlepage\"}', 1, 1, 1, '*', '*', '2018-08-30 18:56:47'),
(20, 7, 'in_kind', '/donate.php', '<p>Help support our work by donating a critically needed item from our <a href=\"http://urbantreeconnection.org/supportourwork.php\">Wish&nbsp;List</a>. If you are interested in donating one of these items, call our office: 215-877-7203 or send us an <a href=\"mailto: info@urbantreeconnection.org\">info@urbantreeconnection.org</a>.<a info@urbantreeconnection.org,=\"\" to=\"\" arrange=\"\" delivery=\"\" or=\"\" set=\"\" a=\"\" drop-off=\"\" time.<=\"\" p=\"\"></a></p>', 0, 4, 'text_block.html', 0, '{\"edit_mode\":\"singlepage\"}', 1, 4, 4, '*', '*', '2018-08-30 18:59:26'),
(21, 8, 'top_content', '/supportourwork.php', '<p>Urban Tree Connection is a grassroots organization, and we rely on the partnership of community volunteers to make our work possible. Last year, 978 volunteers contributed more than 7,000 hours of their time at our farms and garden sites.  We appreciate our volunteers from Haddington and across the city and region that have become partners, and their significant contributions over the growing seasons!<br><br>We are currently seeking volunteers who possess particular skills - such as web design, grant writing/fundraising, or marketing – to support our organizational advancement. To tell us about your skills or to find out what special projects may be coming up, please email us at&nbsp;<a href=\"mailto: noelle@urbantreeconnection.org\">noelle@urbantreeconnection.org</a>.</p>', 0, 0, 'text_block.html', 0, '{\"edit_mode\":\"singlepage\"}', 1, 2, 2, '*', '*', '2018-08-30 19:02:54'),
(22, 8, 'internship_positions', '/supportourwork.php', '<h3>Farming Apprenticeship</h3>\n<p>Farm Apprentices will receive 1:1 training with our farm staff in sustainable vegetable production along with a share in the harvest. Apprenticeships can be structured for 3 to 9 months during the growing season.</p>\n<h3>Grants & Communications Internship</h3>\n<p>UTC is currently seeking an intern that can support with grant writing, communications, and social media. We are seeking 6 month to year-long interns.</p>\n', 0, 1, 'internship_listing.html', 1, '{\"edit_mode\":\"singlepage\"}', 1, 2, 2, '*', '*', '2018-08-30 19:09:35'),
(23, 8, 'office_wishlist', '/supportourwork.php', '<p>Ink for Laser Jet 304A</p><p>13-Gallon Trash Bags</p><p>Large Chart Paper</p><p>Sharpies/Markers</p><p>Art Supplies</p><p>Projector Screen</p><p>Propane Canisters</p><p>Non-perishable Snacks</p><p>SEPTA Tokens (for youth)</p><p>iPad (for farmers markets)</p><p>Camera</p><p>Dry Food Ingredients/Spices</p>', 0, 2, 'text.html', 1, '{\"edit_mode\":\"singlepage\"}', 1, 12, 12, '*', '*', '2018-08-30 19:12:16'),
(24, 8, 'gardening_wishlist', '/supportourwork.php', '<p>Garden Tools</p><p>Pocket Snips</p><p>Soil Testing Kits</p><p>Cordless Drills</p><p>Cordless Chainsaw</p><p>Cordless Hedge Trimmer</p><p>Bypass Pruners</p><p>10 inch Nursery Pots</p><p>Outdoor Chairs</p><p>40-Gallon Trash Bags</p><p>Agribon Row Covers</p><p>Gardening Gloves</p>', 0, 3, 'text.html', 1, '{\"edit_mode\":\"singlepage\"}', 1, 12, 12, '*', '*', '2018-08-30 19:13:11');

-- --------------------------------------------------------

--
-- Table structure for table `perch3_gallery_albums`
--

CREATE TABLE `perch3_gallery_albums` (
  `albumID` int(10) UNSIGNED NOT NULL,
  `albumTitle` varchar(255) NOT NULL DEFAULT '',
  `albumSlug` varchar(255) NOT NULL DEFAULT '',
  `albumOrder` int(11) NOT NULL DEFAULT '0',
  `albumDynamicFields` text,
  `imageCount` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `perch3_gallery_albums`
--

INSERT INTO `perch3_gallery_albums` (`albumID`, `albumTitle`, `albumSlug`, `albumOrder`, `albumDynamicFields`, `imageCount`) VALUES
(1, 'header gallery', 'header-gallery', 1, '{\"description\":{\"_flang\":\"markdown\",\"raw\":\"asdfsafsdafsaf\",\"processed\":\"<p>asdfsafsdafsaf<\\/p>\"}}', 5);

-- --------------------------------------------------------

--
-- Table structure for table `perch3_gallery_images`
--

CREATE TABLE `perch3_gallery_images` (
  `imageID` int(10) UNSIGNED NOT NULL,
  `imageAlt` varchar(255) NOT NULL DEFAULT '',
  `imageSlug` varchar(255) NOT NULL DEFAULT '',
  `albumID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `imageOrder` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `imageDynamicFields` text,
  `imageStatus` enum('active','uploading','failed') NOT NULL DEFAULT 'active',
  `imageBucket` varchar(255) NOT NULL DEFAULT 'default'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `perch3_gallery_images`
--

INSERT INTO `perch3_gallery_images` (`imageID`, `imageAlt`, `imageSlug`, `albumID`, `imageOrder`, `imageDynamicFields`, `imageStatus`, `imageBucket`) VALUES
(1, 'this is the title', '1', 1, 2, '{\"desc\":{\"_flang\":\"markdown\",\"raw\":\"this is the description\",\"processed\":\"<p>this is the description<\\/p>\"}}', 'active', 'default'),
(2, 'this is a different title', '2', 1, 1, '{\"desc\":{\"_flang\":\"markdown\",\"raw\":\"\",\"processed\":\"\"}}', 'active', 'default'),
(3, '3', '3', 1, 3, NULL, 'active', 'default'),
(4, '4', '4', 1, 4, NULL, 'active', 'default'),
(5, '5', '5', 1, 5, NULL, 'active', 'default');

-- --------------------------------------------------------

--
-- Table structure for table `perch3_gallery_image_versions`
--

CREATE TABLE `perch3_gallery_image_versions` (
  `versionID` int(10) UNSIGNED NOT NULL,
  `versionPath` varchar(255) NOT NULL DEFAULT '',
  `versionKey` varchar(50) NOT NULL DEFAULT '',
  `versionWidth` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `versionHeight` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `imageID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `perch3_gallery_image_versions`
--

INSERT INTO `perch3_gallery_image_versions` (`versionID`, `versionPath`, `versionKey`, `versionWidth`, `versionHeight`, `imageID`) VALUES
(1, '1-w640h360.jpg', 'small', 640, 360, 1),
(2, '1-w1280h720.jpg', 'main', 137, 250, 1),
(3, '1-w160h160@2x.jpg', 'thumb', 160, 160, 1),
(4, '1.jpg', 'original', 137, 250, 1),
(5, '1-w150h150@2x.jpg', 'admin_thumb', 150, 150, 1),
(6, '1-w180@2x.jpg', 'admin_preview', 137, 250, 1),
(7, '2-w640h360.jpg', 'small', 640, 360, 2),
(8, '2-w1280h720.jpg', 'main', 207, 250, 2),
(9, '2-w160h160@2x.jpg', 'thumb', 160, 160, 2),
(10, '2.jpg', 'original', 207, 250, 2),
(11, '2-w150h150@2x.jpg', 'admin_thumb', 150, 150, 2),
(12, '2-w180@2x.jpg', 'admin_preview', 180, 217, 2),
(13, '3-w640h360.jpg', 'small', 640, 360, 3),
(14, '3-w1280h720.jpg', 'main', 186, 250, 3),
(15, '3-w160h160@2x.jpg', 'thumb', 160, 160, 3),
(16, '3.jpg', 'original', 186, 250, 3),
(17, '3-w150h150@2x.jpg', 'admin_thumb', 150, 150, 3),
(18, '3-w180@2x.jpg', 'admin_preview', 180, 241, 3),
(19, '4-w640h360.jpg', 'small', 640, 360, 4),
(20, '4-w1280h720.jpg', 'main', 219, 250, 4),
(21, '4-w160h160@2x.jpg', 'thumb', 160, 160, 4),
(22, '4.jpg', 'original', 219, 250, 4),
(23, '4-w150h150@2x.jpg', 'admin_thumb', 150, 150, 4),
(24, '4-w180@2x.jpg', 'admin_preview', 180, 205, 4),
(25, '5-w640h360.jpg', 'small', 640, 360, 5),
(26, '5-w1280h720.jpg', 'main', 183, 250, 5),
(27, '5-w160h160@2x.jpg', 'thumb', 160, 160, 5),
(28, '5.jpg', 'original', 183, 250, 5),
(29, '5-w150h150@2x.jpg', 'admin_thumb', 150, 150, 5),
(30, '5-w180@2x.jpg', 'admin_preview', 180, 245, 5);

-- --------------------------------------------------------

--
-- Table structure for table `perch3_menu_items`
--

CREATE TABLE `perch3_menu_items` (
  `itemID` int(10) UNSIGNED NOT NULL,
  `parentID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `itemType` enum('menu','app','link') NOT NULL DEFAULT 'app',
  `itemOrder` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `itemTitle` char(64) NOT NULL DEFAULT 'Unnamed item',
  `itemValue` char(255) DEFAULT NULL,
  `itemPersists` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `itemActive` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `privID` int(10) DEFAULT NULL,
  `userID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `itemInternal` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `perch3_menu_items`
--

INSERT INTO `perch3_menu_items` (`itemID`, `parentID`, `itemType`, `itemOrder`, `itemTitle`, `itemValue`, `itemPersists`, `itemActive`, `privID`, `userID`, `itemInternal`) VALUES
(1, 0, 'menu', 1, 'My Site', NULL, 1, 1, NULL, 0, 0),
(2, 0, 'menu', 2, 'Organise', NULL, 1, 1, NULL, 0, 0),
(3, 1, 'app', 1, 'Pages', 'content', 0, 1, NULL, 0, 0),
(4, 2, 'app', 1, 'Categories', 'categories', 0, 1, 22, 0, 0),
(5, 2, 'app', 2, 'Assets', 'assets', 0, 1, NULL, 0, 0),
(7, 0, 'app', 1, 'Settings', 'settings', 1, 0, NULL, 0, 1),
(8, 0, 'app', 1, 'Users', 'users', 1, 0, NULL, 0, 1),
(9, 0, 'app', 1, 'Help', 'help', 1, 0, NULL, 0, 1),
(10, 1, 'app', 99, 'Gallery', 'perch_gallery', 0, 1, NULL, 0, 0),
(11, 1, 'app', 99, 'Blog', 'perch_blog', 0, 1, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `perch3_navigation`
--

CREATE TABLE `perch3_navigation` (
  `groupID` int(10) NOT NULL,
  `groupTitle` varchar(255) NOT NULL DEFAULT '',
  `groupSlug` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `perch3_navigation_pages`
--

CREATE TABLE `perch3_navigation_pages` (
  `navpageID` int(10) UNSIGNED NOT NULL,
  `pageID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `groupID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pageParentID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pageOrder` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `pageDepth` tinyint(10) UNSIGNED NOT NULL,
  `pageTreePosition` varchar(64) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `perch3_pages`
--

CREATE TABLE `perch3_pages` (
  `pageID` int(10) UNSIGNED NOT NULL,
  `pageParentID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pagePath` varchar(255) NOT NULL DEFAULT '',
  `pageTitle` varchar(255) NOT NULL DEFAULT '',
  `pageNavText` varchar(255) NOT NULL DEFAULT '',
  `pageNew` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `pageOrder` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `pageDepth` tinyint(10) UNSIGNED NOT NULL DEFAULT '0',
  `pageSortPath` varchar(255) NOT NULL DEFAULT '',
  `pageTreePosition` varchar(64) NOT NULL DEFAULT '',
  `pageSubpageRoles` varchar(255) NOT NULL DEFAULT '',
  `pageSubpagePath` varchar(255) NOT NULL DEFAULT '',
  `pageHidden` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `pageNavOnly` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `pageAccessTags` varchar(255) NOT NULL DEFAULT '',
  `pageCreatorID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pageModified` datetime NOT NULL DEFAULT '2014-01-01 00:00:00',
  `pageAttributes` text NOT NULL,
  `pageAttributeTemplate` varchar(255) NOT NULL DEFAULT 'default.html',
  `pageTemplate` char(255) NOT NULL DEFAULT '',
  `templateID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pageSubpageTemplates` varchar(255) NOT NULL DEFAULT '',
  `pageCollections` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `perch3_pages`
--

INSERT INTO `perch3_pages` (`pageID`, `pageParentID`, `pagePath`, `pageTitle`, `pageNavText`, `pageNew`, `pageOrder`, `pageDepth`, `pageSortPath`, `pageTreePosition`, `pageSubpageRoles`, `pageSubpagePath`, `pageHidden`, `pageNavOnly`, `pageAccessTags`, `pageCreatorID`, `pageModified`, `pageAttributes`, `pageAttributeTemplate`, `pageTemplate`, `templateID`, `pageSubpageTemplates`, `pageCollections`) VALUES
(1, 0, '/index.php', 'Home', 'Home', 0, 1, 1, '', '000-001', '', '', 0, 0, '', 0, '2018-08-30 23:36:19', '{\"description\":{\"_flang\":\"plain\",\"raw\":\"\",\"processed\":\"\"},\"keywords\":{\"_flang\":\"plain\",\"raw\":\"\",\"processed\":\"\"},\"noindex\":null,\"nofollow\":null,\"nosnippet\":null}', 'default.html', '', 0, '', ''),
(2, 0, '/about.php', 'About', 'About', 0, 2, 1, '/about', '000-002', '', '', 0, 0, '', 0, '2018-08-30 22:32:59', '', 'default.html', '', 0, '', ''),
(4, 0, '/programs.php', 'Programs', 'Programs', 0, 3, 1, '/programs', '000-003', '', '', 0, 0, '', 0, '2018-08-30 23:33:11', '', 'default.html', '', 0, '', ''),
(5, 0, '/visitus.php', 'Visitus', 'Visitus', 0, 4, 1, '/visitus', '000-004', '', '', 0, 0, '', 0, '2018-08-30 18:25:34', '', 'default.html', '', 0, '', ''),
(6, 0, '/supporters.php', 'Supporters', 'Supporters', 0, 5, 1, '/supporters', '000-005', '', '', 0, 0, '', 0, '2018-08-30 18:43:30', '', 'default.html', '', 0, '', ''),
(7, 0, '/donate.php', 'Donate', 'Donate', 0, 6, 1, '/donate', '000-006', '', '', 0, 0, '', 0, '2018-08-30 18:59:26', '', 'default.html', '', 0, '', ''),
(8, 0, '/supportourwork.php', 'Volunteering', 'Volunteering', 0, 7, 1, '/supportourwork', '000-007', '', '', 0, 0, '', 0, '2018-08-30 19:13:11', '{\"description\":{\"_flang\":\"plain\",\"raw\":\"\",\"processed\":\"\"},\"keywords\":{\"_flang\":\"plain\",\"raw\":\"\",\"processed\":\"\"},\"noindex\":null,\"nofollow\":null,\"nosnippet\":null}', 'default.html', '', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `perch3_page_templates`
--

CREATE TABLE `perch3_page_templates` (
  `templateID` int(10) UNSIGNED NOT NULL,
  `templateTitle` varchar(255) NOT NULL DEFAULT '',
  `templatePath` varchar(255) NOT NULL DEFAULT '',
  `optionsPageID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `templateReference` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `templateNavGroups` varchar(255) DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `perch3_page_templates`
--

INSERT INTO `perch3_page_templates` (`templateID`, `templateTitle`, `templatePath`, `optionsPageID`, `templateReference`, `templateNavGroups`) VALUES
(1, 'Default', 'default.php', 0, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `perch3_resources`
--

CREATE TABLE `perch3_resources` (
  `resourceID` int(10) UNSIGNED NOT NULL,
  `resourceApp` char(32) NOT NULL DEFAULT 'content',
  `resourceBucket` char(16) NOT NULL DEFAULT 'default',
  `resourceFile` char(255) NOT NULL DEFAULT '',
  `resourceKey` enum('orig','thumb') DEFAULT NULL,
  `resourceParentID` int(10) NOT NULL DEFAULT '0',
  `resourceType` char(4) NOT NULL DEFAULT '',
  `resourceCreated` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `resourceUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `resourceAWOL` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `resourceTitle` char(255) DEFAULT NULL,
  `resourceFileSize` int(10) UNSIGNED DEFAULT NULL,
  `resourceWidth` int(10) UNSIGNED DEFAULT NULL,
  `resourceHeight` int(10) UNSIGNED DEFAULT NULL,
  `resourceCrop` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `resourceDensity` float NOT NULL DEFAULT '1',
  `resourceTargetWidth` int(10) UNSIGNED DEFAULT NULL,
  `resourceTargetHeight` int(10) UNSIGNED DEFAULT NULL,
  `resourceMimeType` char(64) DEFAULT NULL,
  `resourceInLibrary` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `perch3_resources`
--

INSERT INTO `perch3_resources` (`resourceID`, `resourceApp`, `resourceBucket`, `resourceFile`, `resourceKey`, `resourceParentID`, `resourceType`, `resourceCreated`, `resourceUpdated`, `resourceAWOL`, `resourceTitle`, `resourceFileSize`, `resourceWidth`, `resourceHeight`, `resourceCrop`, `resourceDensity`, `resourceTargetWidth`, `resourceTargetHeight`, `resourceMimeType`, `resourceInLibrary`) VALUES
(1, 'system', 'default', 'logonm.jpg', 'orig', 0, 'jpg', '2018-08-22 18:45:08', '2018-08-22 18:45:08', 0, 'Logo nm', 36688, 320, 100, 0, 1, NULL, NULL, 'image/jpeg', 1),
(2, 'system', 'default', 'logonm-thumb@2x.jpg', 'thumb', 1, 'jpg', '2018-08-22 18:45:08', '2018-08-22 18:45:08', 0, 'Logo nm', 11059, 150, 46, 0, 2, 150, 150, 'image/jpeg', 1),
(3, 'content', 'default', 'logonm-w800.jpg', '', 1, 'jpg', '2018-08-28 18:01:11', '2018-08-28 18:01:11', 0, 'Logonm w800', 36688, 320, 100, 0, 1, 800, 0, '', 0),
(4, 'assets', 'default', '2017-utc-highlights.pdf', 'orig', 0, 'pdf', '2018-08-28 18:02:36', '2018-08-28 18:02:36', 0, '2017 UTC Highlights', 1718028, NULL, NULL, 0, 1, NULL, NULL, 'application/pdf', 0),
(5, 'assets', 'default', 'gardening-at-girarden.jpg', 'orig', 0, 'jpg', '2018-08-28 18:23:21', '2018-08-28 18:23:21', 0, 'Gardening at Girarden', 143319, 837, 560, 0, 1, NULL, NULL, 'image/jpeg', 0),
(6, 'assets', 'default', 'gardening-at-girarden-thumb@2x.jpg', 'thumb', 5, 'jpg', '2018-08-28 18:23:21', '2018-08-28 18:23:21', 0, 'Gardening at Girarden', 30148, 150, 100, 0, 2, 150, 150, 'image/jpeg', 0),
(7, 'assets', 'default', 'sprout.jpg', 'orig', 0, 'jpg', '2018-08-28 18:23:50', '2018-08-28 18:23:50', 0, 'Sprout', 174915, 528, 704, 0, 1, NULL, NULL, 'image/jpeg', 0),
(8, 'assets', 'default', 'sprout-thumb@2x.jpg', 'thumb', 7, 'jpg', '2018-08-28 18:23:50', '2018-08-28 18:23:50', 0, 'Sprout', 38923, 112, 150, 0, 2, 150, 150, 'image/jpeg', 0),
(38, 'assets', 'default', 'young-farmers.jpg', 'orig', 0, 'jpg', '2018-08-30 23:03:38', '2018-08-30 23:03:38', 0, 'Young Farmers', 652800, 1649, 1236, 0, 1, NULL, NULL, 'image/jpeg', 0),
(39, 'assets', 'default', 'young-farmers-thumb@2x.jpg', 'thumb', 38, 'jpg', '2018-08-30 23:03:38', '2018-08-30 23:03:38', 0, 'Young Farmers', 29425, 150, 112, 0, 2, 150, 150, 'image/jpeg', 0),
(11, 'assets', 'default', 'nf-farm.jpg', 'orig', 0, 'jpg', '2018-08-30 17:33:02', '2018-08-30 17:33:02', 0, 'NF Farm', 369096, 1024, 685, 0, 1, NULL, NULL, 'image/jpeg', 0),
(12, 'assets', 'default', 'nf-farm-thumb@2x.jpg', 'thumb', 11, 'jpg', '2018-08-30 17:33:02', '2018-08-30 17:33:02', 0, 'NF Farm', 40479, 150, 100, 0, 2, 150, 150, 'image/jpeg', 0),
(13, 'content', 'default', 'nf-farm-w800.jpg', '', 11, 'jpg', '2018-08-30 17:33:18', '2018-08-30 17:33:18', 0, 'Nf farm w800', 227468, 800, 535, 0, 1, 800, 0, 'image/jpeg', 0),
(35, 'assets', 'default', 'adult-gardening-workshop-4-thumb@2x.jpg', 'thumb', 34, 'jpg', '2018-08-30 18:03:15', '2018-08-30 18:03:15', 0, 'Adult Gardening Workshop', 37075, 150, 100, 0, 2, 150, 150, 'image/jpeg', 0),
(15, 'assets', 'default', 'memorial-garden-thumb@2x.jpg', 'thumb', 14, 'jpg', '2018-08-30 17:43:43', '2018-08-30 17:43:43', 0, 'Memorial Garden', 35760, 150, 112, 0, 2, 150, 150, 'image/jpeg', 0),
(34, 'assets', 'default', 'adult-gardening-workshop-4.jpg', 'orig', 0, 'jpg', '2018-08-30 18:03:15', '2018-08-30 18:03:15', 0, 'Adult Gardening Workshop', 135585, 598, 400, 0, 1, NULL, NULL, 'image/jpeg', 0),
(17, 'assets', 'default', 'adult-gardening-workshop-thumb@2x.jpg', 'thumb', 16, 'jpg', '2018-08-30 17:44:47', '2018-08-30 17:44:47', 0, 'Adult Gardening Workshop', 35354, 150, 100, 0, 2, 150, 150, 'image/jpeg', 0),
(18, 'content', 'default', 'adult-gardening-workshop-w800.jpg', '', 16, 'jpg', '2018-08-30 17:45:01', '2018-08-30 17:45:01', 0, 'Adult gardening workshop w800', 186976, 800, 535, 0, 1, 800, 0, 'image/jpeg', 0),
(19, 'content', 'default', 'memorial-garden-w800.jpg', '', 14, 'jpg', '2018-08-30 17:46:21', '2018-08-30 17:46:21', 0, 'Memorial garden w800', 210346, 800, 600, 0, 1, 800, 0, 'image/jpeg', 0),
(23, 'content', 'admin', 'adult-gardening-workshop-thumb@2x.jpg', 'thumb', 22, 'jpg', '2018-08-30 17:59:03', '2018-08-30 17:59:03', 0, 'Adult Gardening Workshop', 37075, 150, 100, 0, 2, 150, 150, 'image/jpeg', 0),
(21, 'content', 'default', 'adult-gardening-workshop-1-thumb@2x.jpg', 'thumb', 20, 'jpg', '2018-08-30 17:58:23', '2018-08-30 17:58:23', 0, 'Adult Gardening Workshop', 37075, 150, 100, 0, 2, 150, 150, 'image/jpeg', 0),
(25, 'content', 'admin', 'memorial-garden-thumb@2x.jpg', 'thumb', 24, 'jpg', '2018-08-30 17:59:24', '2018-08-30 17:59:24', 0, 'Memorial Garden', 36686, 150, 112, 0, 2, 150, 150, 'image/jpeg', 0),
(36, 'assets', 'default', 'memorial-garden-3.jpg', 'orig', 0, 'jpg', '2018-08-30 18:03:48', '2018-08-30 18:03:48', 0, 'Memorial Garden', 112486, 533, 400, 0, 1, NULL, NULL, 'image/jpeg', 0),
(27, 'assets', 'default', 'adult-gardening-workshop-2-thumb@2x.jpg', 'thumb', 26, 'jpg', '2018-08-30 17:59:50', '2018-08-30 17:59:50', 0, 'Adult Gardening Workshop', 37075, 150, 100, 0, 2, 150, 150, 'image/jpeg', 0),
(37, 'assets', 'default', 'memorial-garden-3-thumb@2x.jpg', 'thumb', 36, 'jpg', '2018-08-30 18:03:48', '2018-08-30 18:03:48', 0, 'Memorial Garden', 36686, 150, 112, 0, 2, 150, 150, 'image/jpeg', 0),
(29, 'assets', 'default', 'memorial-garden-1-thumb@2x.jpg', 'thumb', 28, 'jpg', '2018-08-30 18:00:16', '2018-08-30 18:00:16', 0, 'Memorial Garden', 36686, 150, 112, 0, 2, 150, 150, 'image/jpeg', 0),
(40, 'assets', 'default', 'memorial-garden-4.jpg', 'orig', 0, 'jpg', '2018-08-30 23:28:11', '2018-08-30 23:28:11', 0, 'Memorial Garden', 112486, 533, 400, 0, 1, NULL, NULL, 'image/jpeg', 0),
(31, 'assets', 'default', 'adult-gardening-workshop-3-thumb@2x.jpg', 'thumb', 30, 'jpg', '2018-08-30 18:01:11', '2018-08-30 18:01:11', 0, 'Adult Gardening Workshop', 37075, 150, 100, 0, 2, 150, 150, 'image/jpeg', 0),
(41, 'assets', 'default', 'memorial-garden-4-thumb@2x.jpg', 'thumb', 40, 'jpg', '2018-08-30 23:28:11', '2018-08-30 23:28:11', 0, 'Memorial Garden', 36686, 150, 112, 0, 2, 150, 150, 'image/jpeg', 0),
(33, 'assets', 'default', 'memorial-garden-2-thumb@2x.jpg', 'thumb', 32, 'jpg', '2018-08-30 18:01:33', '2018-08-30 18:01:33', 0, 'Memorial Garden', 36686, 150, 112, 0, 2, 150, 150, 'image/jpeg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `perch3_resources_to_tags`
--

CREATE TABLE `perch3_resources_to_tags` (
  `resourceID` int(10) NOT NULL DEFAULT '0',
  `tagID` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Table structure for table `perch3_resource_log`
--

CREATE TABLE `perch3_resource_log` (
  `logID` int(10) UNSIGNED NOT NULL,
  `appID` char(32) NOT NULL DEFAULT 'content',
  `itemFK` char(32) NOT NULL DEFAULT 'itemRowID',
  `itemRowID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `resourceID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `perch3_resource_log`
--

INSERT INTO `perch3_resource_log` (`logID`, `appID`, `itemFK`, `itemRowID`, `resourceID`) VALUES
(1, 'perch_core', 'recovery', 1, 1),
(2, 'perch_core', 'recovery', 1, 2),
(525, 'content', 'itemRowID', 1111, 1),
(526, 'content', 'itemRowID', 1111, 2),
(527, 'content', 'itemRowID', 1111, 3),
(541, 'content', 'itemRowID', 1115, 1),
(542, 'content', 'itemRowID', 1115, 2),
(543, 'content', 'itemRowID', 1115, 3),
(533, 'content', 'itemRowID', 1113, 1),
(298, 'content', 'itemRowID', 1025, 8),
(287, 'content', 'itemRowID', 1024, 5),
(327, 'content', 'itemRowID', 1029, 5),
(328, 'content', 'itemRowID', 1029, 6),
(464, 'content', 'itemRowID', 1096, 41),
(463, 'content', 'itemRowID', 1096, 40),
(462, 'content', 'itemRowID', 1095, 41),
(461, 'content', 'itemRowID', 1095, 40),
(573, 'content', 'itemRowID', 1123, 1),
(565, 'content', 'itemRowID', 1121, 1),
(566, 'content', 'itemRowID', 1121, 2),
(567, 'content', 'itemRowID', 1121, 3),
(574, 'content', 'itemRowID', 1123, 2),
(575, 'content', 'itemRowID', 1123, 3),
(517, 'content', 'itemRowID', 1109, 1),
(518, 'content', 'itemRowID', 1109, 2),
(519, 'content', 'itemRowID', 1109, 3),
(534, 'content', 'itemRowID', 1113, 2),
(535, 'content', 'itemRowID', 1113, 3),
(536, 'content', 'itemRowID', 1113, 4),
(544, 'content', 'itemRowID', 1115, 4),
(568, 'content', 'itemRowID', 1121, 4),
(576, 'content', 'itemRowID', 1123, 4),
(520, 'content', 'itemRowID', 1109, 4),
(528, 'content', 'itemRowID', 1111, 4),
(329, 'content', 'itemRowID', 1029, 7),
(335, 'content', 'itemRowID', 1030, 5),
(288, 'content', 'itemRowID', 1024, 6),
(289, 'content', 'itemRowID', 1024, 7),
(290, 'content', 'itemRowID', 1024, 8),
(336, 'content', 'itemRowID', 1030, 6),
(337, 'content', 'itemRowID', 1030, 7),
(338, 'content', 'itemRowID', 1030, 8),
(330, 'content', 'itemRowID', 1029, 8),
(319, 'content', 'itemRowID', 1028, 5),
(320, 'content', 'itemRowID', 1028, 6),
(321, 'content', 'itemRowID', 1028, 7),
(322, 'content', 'itemRowID', 1028, 8),
(311, 'content', 'itemRowID', 1027, 5),
(181, 'content', 'itemRowID', 191, 16),
(182, 'content', 'itemRowID', 191, 17),
(183, 'content', 'itemRowID', 191, 18),
(437, 'content', 'itemRowID', 1088, 38),
(427, 'content', 'itemRowID', 1083, 11),
(428, 'content', 'itemRowID', 1083, 12),
(184, 'content', 'itemRowID', 191, 14),
(185, 'content', 'itemRowID', 191, 15),
(186, 'content', 'itemRowID', 192, 14),
(187, 'content', 'itemRowID', 192, 15),
(188, 'content', 'itemRowID', 192, 19),
(207, 'content', 'itemRowID', 200, 32),
(193, 'content', 'itemRowID', 195, 27),
(192, 'content', 'itemRowID', 195, 26),
(206, 'content', 'itemRowID', 199, 31),
(205, 'content', 'itemRowID', 199, 30),
(200, 'content', 'itemRowID', 196, 29),
(199, 'content', 'itemRowID', 196, 28),
(208, 'content', 'itemRowID', 200, 33),
(213, 'content', 'itemRowID', 203, 34),
(214, 'content', 'itemRowID', 203, 35),
(215, 'content', 'itemRowID', 204, 36),
(216, 'content', 'itemRowID', 204, 37),
(312, 'content', 'itemRowID', 1027, 6),
(313, 'content', 'itemRowID', 1027, 7),
(314, 'content', 'itemRowID', 1027, 8),
(549, 'content', 'itemRowID', 1117, 1),
(550, 'content', 'itemRowID', 1117, 2),
(551, 'content', 'itemRowID', 1117, 3),
(552, 'content', 'itemRowID', 1117, 4),
(279, 'content', 'itemRowID', 1023, 5),
(280, 'content', 'itemRowID', 1023, 6),
(281, 'content', 'itemRowID', 1023, 7),
(282, 'content', 'itemRowID', 1023, 8),
(297, 'content', 'itemRowID', 1025, 7),
(296, 'content', 'itemRowID', 1025, 6),
(295, 'content', 'itemRowID', 1025, 5),
(306, 'content', 'itemRowID', 1026, 8),
(305, 'content', 'itemRowID', 1026, 7),
(304, 'content', 'itemRowID', 1026, 6),
(303, 'content', 'itemRowID', 1026, 5),
(475, 'content', 'itemRowID', 1098, 11),
(438, 'content', 'itemRowID', 1088, 39),
(476, 'content', 'itemRowID', 1098, 12),
(557, 'content', 'itemRowID', 1119, 1),
(558, 'content', 'itemRowID', 1119, 2),
(443, 'content', 'itemRowID', 1089, 11),
(444, 'content', 'itemRowID', 1089, 12),
(445, 'content', 'itemRowID', 1091, 38),
(446, 'content', 'itemRowID', 1091, 39),
(452, 'content', 'itemRowID', 1092, 12),
(451, 'content', 'itemRowID', 1092, 11),
(465, 'content', 'itemRowID', 1097, 38),
(466, 'content', 'itemRowID', 1097, 39),
(453, 'content', 'itemRowID', 1094, 38),
(454, 'content', 'itemRowID', 1094, 39),
(459, 'content', 'itemRowID', 1095, 11),
(460, 'content', 'itemRowID', 1095, 12),
(559, 'content', 'itemRowID', 1119, 3),
(560, 'content', 'itemRowID', 1119, 4),
(414, 'content', 'itemRowID', 1079, 39),
(413, 'content', 'itemRowID', 1079, 38),
(412, 'content', 'itemRowID', 1077, 12),
(411, 'content', 'itemRowID', 1077, 11),
(422, 'content', 'itemRowID', 1082, 39),
(421, 'content', 'itemRowID', 1082, 38),
(420, 'content', 'itemRowID', 1080, 12),
(419, 'content', 'itemRowID', 1080, 11),
(430, 'content', 'itemRowID', 1085, 39),
(429, 'content', 'itemRowID', 1085, 38),
(436, 'content', 'itemRowID', 1086, 12),
(435, 'content', 'itemRowID', 1086, 11),
(478, 'content', 'itemRowID', 1099, 41),
(477, 'content', 'itemRowID', 1099, 40),
(480, 'content', 'itemRowID', 1100, 39),
(479, 'content', 'itemRowID', 1100, 38);

-- --------------------------------------------------------

--
-- Table structure for table `perch3_resource_tags`
--

CREATE TABLE `perch3_resource_tags` (
  `tagID` int(10) NOT NULL,
  `tagTitle` varchar(255) NOT NULL DEFAULT '',
  `tagSlug` varchar(255) NOT NULL DEFAULT '',
  `tagCount` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `perch3_settings`
--

CREATE TABLE `perch3_settings` (
  `settingID` varchar(60) NOT NULL DEFAULT '',
  `userID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `settingValue` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `perch3_settings`
--

INSERT INTO `perch3_settings` (`settingID`, `userID`, `settingValue`) VALUES
('headerColour', 0, '#000000'),
('content_singlePageEdit', 0, '1'),
('helpURL', 0, ''),
('update_3.1.2', 0, 'done'),
('hideBranding', 0, '0'),
('content_collapseList', 0, '1'),
('lang', 0, 'en-gb'),
('installedAt', 0, '3.1.1'),
('update_3.1.1', 0, 'done'),
('latest_version', 0, ''),
('on_sale_version', 0, '3.1.2'),
('headerScheme', 0, 'dark'),
('dashboard', 0, '1'),
('sidebar_back_link', 0, '1'),
('hide_pwd_reset', 0, '0'),
('keyboardShortcuts', 0, '0'),
('content_hideNonEditableRegions', 0, '0'),
('content_frontend_edit', 0, '0'),
('content_skip_region_list', 0, '0'),
('assets_restrict_buckets', 0, '0'),
('siteURL', 0, 'localhost:8888'),
('logoPath', 0, '/admin/resources/logonm.jpg'),
('perch_gallery_update', 0, '2.8.5'),
('perch_blog_update', 0, '5.6'),
('perch_blog_post_url', 0, '/blog/post.php?s={postSlug}'),
('perch_blog_site_name', 0, ''),
('perch_blog_slug_format', 0, '%Y-%m-%d-{postTitle}'),
('perch_blog_akismet_key', 0, ''),
('perch_blog_max_spam_days', 0, '0'),
('perch_gallery_bucket_mode', 0, 'single'),
('perch_gallery_bucket', 0, 'default'),
('perch_blog_comment_notify', 0, '0'),
('perch_blog_webmention_tx', 0, '0'),
('perch_blog_webmention_rx', 0, '0'),
('perch_gallery_basicUpload', 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `perch3_users`
--

CREATE TABLE `perch3_users` (
  `userID` int(10) UNSIGNED NOT NULL,
  `userUsername` varchar(255) NOT NULL DEFAULT '',
  `userPassword` varchar(255) NOT NULL DEFAULT '',
  `userCreated` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `userUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `userLastLogin` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `userGivenName` varchar(255) NOT NULL DEFAULT '',
  `userFamilyName` varchar(255) NOT NULL DEFAULT '',
  `userEmail` varchar(255) NOT NULL DEFAULT '',
  `userEnabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `userHash` char(32) NOT NULL DEFAULT '',
  `roleID` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `userMasterAdmin` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `userPasswordToken` char(255) NOT NULL DEFAULT 'expired',
  `userPasswordTokenExpires` datetime NOT NULL DEFAULT '2015-01-01 00:00:00',
  `userLastFailedLogin` datetime DEFAULT NULL,
  `userFailedLoginAttempts` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `perch3_users`
--

INSERT INTO `perch3_users` (`userID`, `userUsername`, `userPassword`, `userCreated`, `userUpdated`, `userLastLogin`, `userGivenName`, `userFamilyName`, `userEmail`, `userEnabled`, `userHash`, `roleID`, `userMasterAdmin`, `userPasswordToken`, `userPasswordTokenExpires`, `userLastFailedLogin`, `userFailedLoginAttempts`) VALUES
(1, 'admin', '$P$BtfkjU2M2OA5l1Vw4n2Dsnl31ezKaf/', '2018-08-20 20:24:16', '2018-08-30 23:36:19', '2018-08-23 18:32:05', 'Warren', 'Longmire', 'warrenlongmire@gmail.com', 1, 'f8ad1acab46c20702fa6975698e2c034', 2, 1, 'ixwpijf3qo34qpvsvxpnb8hry13g0jlu', '2018-08-22 22:57:54', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `perch3_user_passwords`
--

CREATE TABLE `perch3_user_passwords` (
  `passwordID` int(10) UNSIGNED NOT NULL,
  `userID` int(10) UNSIGNED NOT NULL,
  `userPassword` varchar(255) NOT NULL DEFAULT '',
  `passwordLastUsed` datetime NOT NULL DEFAULT '2000-01-01 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `perch3_user_privileges`
--

CREATE TABLE `perch3_user_privileges` (
  `privID` int(10) UNSIGNED NOT NULL,
  `privKey` varchar(255) NOT NULL DEFAULT '',
  `privTitle` varchar(255) NOT NULL DEFAULT '',
  `privOrder` int(10) UNSIGNED NOT NULL DEFAULT '99'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `perch3_user_privileges`
--

INSERT INTO `perch3_user_privileges` (`privID`, `privKey`, `privTitle`, `privOrder`) VALUES
(1, 'perch.login', 'Log in', 1),
(2, 'perch.settings', 'Change settings', 2),
(3, 'perch.users.manage', 'Manage users', 3),
(4, 'perch.updatenotices', 'View update notices', 4),
(5, 'content.regions.delete', 'Delete regions', 1),
(6, 'content.regions.options', 'Edit region options', 2),
(7, 'content.pages.edit', 'Edit page details', 1),
(8, 'content.pages.reorder', 'Reorder pages', 2),
(9, 'content.pages.create', 'Add new pages', 3),
(10, 'content.pages.configure', 'Configure page settings', 5),
(11, 'content.pages.delete', 'Delete pages', 4),
(12, 'content.templates.delete', 'Delete master pages', 6),
(13, 'content.navgroups.configure', 'Configure navigation groups', 7),
(14, 'content.navgroups.create', 'Create navigation groups', 8),
(15, 'content.navgroups.delete', 'Delete navigation groups', 9),
(16, 'content.pages.create.toplevel', 'Add new top-level pages', 3),
(17, 'content.pages.delete.own', 'Delete pages they created themselves', 4),
(18, 'content.templates.configure', 'Configure master pages', 6),
(19, 'content.pages.attributes', 'Edit page titles and attributes', 6),
(20, 'categories.create', 'Create new categories', 1),
(21, 'categories.delete', 'Delete categories', 2),
(22, 'categories.manage', 'Manage categories', 3),
(23, 'categories.sets.create', 'Create category sets', 4),
(24, 'categories.sets.delete', 'Delete category sets', 5),
(25, 'assets.create', 'Upload assets', 1),
(26, 'assets.manage', 'Manage assets', 2),
(27, 'assets.delete', 'Delete assets', 3),
(28, 'content.pages.republish', 'Republish pages', 12),
(29, 'content.bulk.delete', 'Bulk delete content', 30),
(30, 'perch_gallery', 'Access the gallery', 1),
(31, 'perch_gallery.album.create', 'Create albums', 1),
(32, 'perch_gallery.image.upload', 'Upload images', 1),
(33, 'perch_blog', 'Access the blog', 1),
(34, 'perch_blog.post.create', 'Create posts', 1),
(35, 'perch_blog.post.delete', 'Delete posts', 1),
(36, 'perch_blog.post.publish', 'Publish posts', 1),
(37, 'perch_blog.comments.moderate', 'Moderate comments', 1),
(38, 'perch_blog.comments.enable', 'Enable comments on a post', 1),
(39, 'perch_blog.import', 'Import data', 1),
(40, 'perch_blog.authors.manage', 'Manage authors', 1);

-- --------------------------------------------------------

--
-- Table structure for table `perch3_user_roles`
--

CREATE TABLE `perch3_user_roles` (
  `roleID` int(10) UNSIGNED NOT NULL,
  `roleTitle` varchar(255) NOT NULL DEFAULT '',
  `roleSlug` varchar(255) NOT NULL DEFAULT '',
  `roleMasterAdmin` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `perch3_user_roles`
--

INSERT INTO `perch3_user_roles` (`roleID`, `roleTitle`, `roleSlug`, `roleMasterAdmin`) VALUES
(1, 'Editor', 'editor', 0),
(2, 'Admin', 'admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `perch3_user_role_privileges`
--

CREATE TABLE `perch3_user_role_privileges` (
  `roleID` int(10) UNSIGNED NOT NULL,
  `privID` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `perch3_user_role_privileges`
--

INSERT INTO `perch3_user_role_privileges` (`roleID`, `privID`) VALUES
(1, 1),
(2, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `perch3_blogs`
--
ALTER TABLE `perch3_blogs`
  ADD PRIMARY KEY (`blogID`);

--
-- Indexes for table `perch3_blog_authors`
--
ALTER TABLE `perch3_blog_authors`
  ADD PRIMARY KEY (`authorID`);

--
-- Indexes for table `perch3_blog_comments`
--
ALTER TABLE `perch3_blog_comments`
  ADD PRIMARY KEY (`commentID`);

--
-- Indexes for table `perch3_blog_index`
--
ALTER TABLE `perch3_blog_index`
  ADD PRIMARY KEY (`indexID`),
  ADD KEY `idx_fk` (`itemKey`,`itemID`),
  ADD KEY `idx_key` (`indexKey`),
  ADD KEY `idx_key_val` (`indexKey`,`indexValue`),
  ADD KEY `idx_keys` (`itemKey`,`indexKey`);

--
-- Indexes for table `perch3_blog_posts`
--
ALTER TABLE `perch3_blog_posts`
  ADD PRIMARY KEY (`postID`),
  ADD KEY `idx_date` (`postDateTime`),
  ADD KEY `idx_status` (`postStatus`),
  ADD KEY `idx_blog` (`blogID`);
ALTER TABLE `perch3_blog_posts` ADD FULLTEXT KEY `idx_search` (`postTitle`,`postDescRaw`,`postTags`);

--
-- Indexes for table `perch3_blog_posts_to_tags`
--
ALTER TABLE `perch3_blog_posts_to_tags`
  ADD PRIMARY KEY (`postID`,`tagID`);

--
-- Indexes for table `perch3_blog_sections`
--
ALTER TABLE `perch3_blog_sections`
  ADD PRIMARY KEY (`sectionID`),
  ADD KEY `idx_slug` (`sectionSlug`);

--
-- Indexes for table `perch3_blog_tags`
--
ALTER TABLE `perch3_blog_tags`
  ADD PRIMARY KEY (`tagID`);

--
-- Indexes for table `perch3_blog_webmention_queue`
--
ALTER TABLE `perch3_blog_webmention_queue`
  ADD PRIMARY KEY (`entryID`);

--
-- Indexes for table `perch3_categories`
--
ALTER TABLE `perch3_categories`
  ADD PRIMARY KEY (`catID`),
  ADD KEY `idx_set` (`setID`);

--
-- Indexes for table `perch3_category_counts`
--
ALTER TABLE `perch3_category_counts`
  ADD PRIMARY KEY (`countID`),
  ADD KEY `idx_cat` (`catID`),
  ADD KEY `idx_cat_type` (`countType`,`catID`);

--
-- Indexes for table `perch3_category_sets`
--
ALTER TABLE `perch3_category_sets`
  ADD PRIMARY KEY (`setID`);

--
-- Indexes for table `perch3_content_index`
--
ALTER TABLE `perch3_content_index`
  ADD PRIMARY KEY (`indexID`),
  ADD KEY `idx_key` (`indexKey`),
  ADD KEY `idx_val` (`indexValue`),
  ADD KEY `idx_rev` (`itemRev`),
  ADD KEY `idx_item` (`itemID`),
  ADD KEY `idx_keyval` (`indexKey`,`indexValue`),
  ADD KEY `idx_regrev` (`regionID`,`itemRev`);

--
-- Indexes for table `perch3_content_items`
--
ALTER TABLE `perch3_content_items`
  ADD PRIMARY KEY (`itemRowID`),
  ADD KEY `idx_item` (`itemID`),
  ADD KEY `idx_rev` (`itemRev`),
  ADD KEY `idx_region` (`regionID`),
  ADD KEY `idx_regrev` (`itemID`,`regionID`,`itemRev`),
  ADD KEY `idx_order` (`itemOrder`);
ALTER TABLE `perch3_content_items` ADD FULLTEXT KEY `idx_search` (`itemSearch`);

--
-- Indexes for table `perch3_content_regions`
--
ALTER TABLE `perch3_content_regions`
  ADD PRIMARY KEY (`regionID`),
  ADD KEY `idx_key` (`regionKey`),
  ADD KEY `idx_path` (`regionPage`);

--
-- Indexes for table `perch3_gallery_albums`
--
ALTER TABLE `perch3_gallery_albums`
  ADD PRIMARY KEY (`albumID`),
  ADD KEY `idx_slug` (`albumSlug`);

--
-- Indexes for table `perch3_gallery_images`
--
ALTER TABLE `perch3_gallery_images`
  ADD PRIMARY KEY (`imageID`),
  ADD KEY `idx_albumID` (`albumID`);

--
-- Indexes for table `perch3_gallery_image_versions`
--
ALTER TABLE `perch3_gallery_image_versions`
  ADD PRIMARY KEY (`versionID`),
  ADD KEY `idx_imageID` (`imageID`);

--
-- Indexes for table `perch3_menu_items`
--
ALTER TABLE `perch3_menu_items`
  ADD PRIMARY KEY (`itemID`);

--
-- Indexes for table `perch3_navigation`
--
ALTER TABLE `perch3_navigation`
  ADD PRIMARY KEY (`groupID`);

--
-- Indexes for table `perch3_navigation_pages`
--
ALTER TABLE `perch3_navigation_pages`
  ADD PRIMARY KEY (`navpageID`),
  ADD KEY `idx_group` (`groupID`),
  ADD KEY `idx_page_group` (`pageID`,`groupID`);

--
-- Indexes for table `perch3_pages`
--
ALTER TABLE `perch3_pages`
  ADD PRIMARY KEY (`pageID`),
  ADD KEY `idx_parent` (`pageParentID`);

--
-- Indexes for table `perch3_page_templates`
--
ALTER TABLE `perch3_page_templates`
  ADD PRIMARY KEY (`templateID`);

--
-- Indexes for table `perch3_resources`
--
ALTER TABLE `perch3_resources`
  ADD PRIMARY KEY (`resourceID`),
  ADD UNIQUE KEY `idx_file` (`resourceBucket`,`resourceFile`),
  ADD KEY `idx_app` (`resourceApp`),
  ADD KEY `idx_key` (`resourceKey`),
  ADD KEY `idx_type` (`resourceType`),
  ADD KEY `idx_awol` (`resourceAWOL`),
  ADD KEY `idx_library` (`resourceInLibrary`),
  ADD KEY `idx_list` (`resourceParentID`,`resourceKey`,`resourceAWOL`);
ALTER TABLE `perch3_resources` ADD FULLTEXT KEY `idx_search` (`resourceTitle`);

--
-- Indexes for table `perch3_resources_to_tags`
--
ALTER TABLE `perch3_resources_to_tags`
  ADD PRIMARY KEY (`resourceID`,`tagID`);

--
-- Indexes for table `perch3_resource_log`
--
ALTER TABLE `perch3_resource_log`
  ADD PRIMARY KEY (`logID`),
  ADD UNIQUE KEY `idx_uni` (`appID`,`itemFK`,`itemRowID`,`resourceID`),
  ADD KEY `idx_resource` (`resourceID`),
  ADD KEY `idx_fk` (`itemFK`,`itemRowID`);

--
-- Indexes for table `perch3_resource_tags`
--
ALTER TABLE `perch3_resource_tags`
  ADD PRIMARY KEY (`tagID`);

--
-- Indexes for table `perch3_settings`
--
ALTER TABLE `perch3_settings`
  ADD PRIMARY KEY (`settingID`,`userID`);

--
-- Indexes for table `perch3_users`
--
ALTER TABLE `perch3_users`
  ADD PRIMARY KEY (`userID`),
  ADD KEY `idx_enabled` (`userEnabled`);

--
-- Indexes for table `perch3_user_passwords`
--
ALTER TABLE `perch3_user_passwords`
  ADD PRIMARY KEY (`passwordID`),
  ADD KEY `idx_user` (`userID`);

--
-- Indexes for table `perch3_user_privileges`
--
ALTER TABLE `perch3_user_privileges`
  ADD PRIMARY KEY (`privID`),
  ADD UNIQUE KEY `idx_key` (`privKey`);

--
-- Indexes for table `perch3_user_roles`
--
ALTER TABLE `perch3_user_roles`
  ADD PRIMARY KEY (`roleID`);

--
-- Indexes for table `perch3_user_role_privileges`
--
ALTER TABLE `perch3_user_role_privileges`
  ADD PRIMARY KEY (`roleID`,`privID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `perch3_blogs`
--
ALTER TABLE `perch3_blogs`
  MODIFY `blogID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `perch3_blog_authors`
--
ALTER TABLE `perch3_blog_authors`
  MODIFY `authorID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `perch3_blog_comments`
--
ALTER TABLE `perch3_blog_comments`
  MODIFY `commentID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `perch3_blog_index`
--
ALTER TABLE `perch3_blog_index`
  MODIFY `indexID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=406;

--
-- AUTO_INCREMENT for table `perch3_blog_posts`
--
ALTER TABLE `perch3_blog_posts`
  MODIFY `postID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `perch3_blog_sections`
--
ALTER TABLE `perch3_blog_sections`
  MODIFY `sectionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `perch3_blog_tags`
--
ALTER TABLE `perch3_blog_tags`
  MODIFY `tagID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `perch3_blog_webmention_queue`
--
ALTER TABLE `perch3_blog_webmention_queue`
  MODIFY `entryID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `perch3_categories`
--
ALTER TABLE `perch3_categories`
  MODIFY `catID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `perch3_category_counts`
--
ALTER TABLE `perch3_category_counts`
  MODIFY `countID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `perch3_category_sets`
--
ALTER TABLE `perch3_category_sets`
  MODIFY `setID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `perch3_content_index`
--
ALTER TABLE `perch3_content_index`
  MODIFY `indexID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4019;

--
-- AUTO_INCREMENT for table `perch3_content_items`
--
ALTER TABLE `perch3_content_items`
  MODIFY `itemRowID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1125;

--
-- AUTO_INCREMENT for table `perch3_content_regions`
--
ALTER TABLE `perch3_content_regions`
  MODIFY `regionID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `perch3_gallery_albums`
--
ALTER TABLE `perch3_gallery_albums`
  MODIFY `albumID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `perch3_gallery_images`
--
ALTER TABLE `perch3_gallery_images`
  MODIFY `imageID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `perch3_gallery_image_versions`
--
ALTER TABLE `perch3_gallery_image_versions`
  MODIFY `versionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `perch3_menu_items`
--
ALTER TABLE `perch3_menu_items`
  MODIFY `itemID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `perch3_navigation`
--
ALTER TABLE `perch3_navigation`
  MODIFY `groupID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `perch3_navigation_pages`
--
ALTER TABLE `perch3_navigation_pages`
  MODIFY `navpageID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `perch3_pages`
--
ALTER TABLE `perch3_pages`
  MODIFY `pageID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `perch3_page_templates`
--
ALTER TABLE `perch3_page_templates`
  MODIFY `templateID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `perch3_resources`
--
ALTER TABLE `perch3_resources`
  MODIFY `resourceID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `perch3_resource_log`
--
ALTER TABLE `perch3_resource_log`
  MODIFY `logID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=577;

--
-- AUTO_INCREMENT for table `perch3_resource_tags`
--
ALTER TABLE `perch3_resource_tags`
  MODIFY `tagID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `perch3_users`
--
ALTER TABLE `perch3_users`
  MODIFY `userID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `perch3_user_passwords`
--
ALTER TABLE `perch3_user_passwords`
  MODIFY `passwordID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `perch3_user_privileges`
--
ALTER TABLE `perch3_user_privileges`
  MODIFY `privID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `perch3_user_roles`
--
ALTER TABLE `perch3_user_roles`
  MODIFY `roleID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
