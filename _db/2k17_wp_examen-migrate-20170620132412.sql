# WordPress MySQL database migration
#
# Generated: Tuesday 20. June 2017 13:24 UTC
# Hostname: localhost
# Database: `2k17_wp_examen`
# --------------------------------------------------------

/*!40101 SET NAMES utf8mb4 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_2k17_wp_examencommentmeta`
#

DROP TABLE IF EXISTS `wp_2k17_wp_examencommentmeta`;


#
# Table structure of table `wp_2k17_wp_examencommentmeta`
#

CREATE TABLE `wp_2k17_wp_examencommentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_2k17_wp_examencommentmeta`
#

#
# End of data contents of table `wp_2k17_wp_examencommentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_2k17_wp_examencomments`
#

DROP TABLE IF EXISTS `wp_2k17_wp_examencomments`;


#
# Table structure of table `wp_2k17_wp_examencomments`
#

CREATE TABLE `wp_2k17_wp_examencomments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_2k17_wp_examencomments`
#
INSERT INTO `wp_2k17_wp_examencomments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-06-20 08:56:03', '2017-06-20 06:56:03', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href="https://gravatar.com">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0) ;

#
# End of data contents of table `wp_2k17_wp_examencomments`
# --------------------------------------------------------



#
# Delete any existing table `wp_2k17_wp_examenlinks`
#

DROP TABLE IF EXISTS `wp_2k17_wp_examenlinks`;


#
# Table structure of table `wp_2k17_wp_examenlinks`
#

CREATE TABLE `wp_2k17_wp_examenlinks` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_2k17_wp_examenlinks`
#

#
# End of data contents of table `wp_2k17_wp_examenlinks`
# --------------------------------------------------------



#
# Delete any existing table `wp_2k17_wp_examenoptions`
#

DROP TABLE IF EXISTS `wp_2k17_wp_examenoptions`;


#
# Table structure of table `wp_2k17_wp_examenoptions`
#

CREATE TABLE `wp_2k17_wp_examenoptions` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_2k17_wp_examenoptions`
#
INSERT INTO `wp_2k17_wp_examenoptions` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://http://mjm-webdesign.com', 'yes'),
(2, 'home', 'http://http://mjm-webdesign.com', 'yes'),
(3, 'blogname', 'STRUCTURES INTÉRIEURES', 'yes'),
(4, 'blogdescription', 'Démarquez-vous !', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'lbeuchot68@gmail.com', 'yes'),
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
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=11&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:33:"duplicate-post/duplicate-post.php";i:2;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'wp_examen', 'yes'),
(41, 'stylesheet', 'wp_examen', 'yes'),
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
(53, 'show_on_front', 'page', 'yes'),
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
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '11', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_2k17_wp_examenuser_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:10:"copy_posts";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:35:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:10:"copy_posts";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'fr_FR', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:0:{}s:15:"sidebar-widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:14:"footer-widgets";a:0:{}s:13:"array_version";i:3;}', 'yes') ;
INSERT INTO `wp_2k17_wp_examenoptions` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'cron', 'a:4:{i:1497984964;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1498028521;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1498028937;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(109, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1497942124;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(121, 'can_compress_scripts', '1', 'no'),
(139, 'current_theme', 'FoundationPress', 'yes'),
(140, 'theme_mods_wp_examen', 'a:3:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:2:{s:9:"top-bar-r";i:2;s:10:"mobile-nav";i:2;}}', 'yes'),
(141, 'theme_switched', '', 'yes'),
(143, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(153, 'category_children', 'a:0:{}', 'yes'),
(156, 'recently_activated', 'a:0:{}', 'yes'),
(163, 'acf_version', '4.4.11', 'yes'),
(176, 'duplicate_post_copytitle', '1', 'yes'),
(177, 'duplicate_post_copydate', '0', 'yes'),
(178, 'duplicate_post_copystatus', '0', 'yes'),
(179, 'duplicate_post_copyslug', '1', 'yes'),
(180, 'duplicate_post_copyexcerpt', '1', 'yes'),
(181, 'duplicate_post_copycontent', '1', 'yes'),
(182, 'duplicate_post_copythumbnail', '1', 'yes'),
(183, 'duplicate_post_copytemplate', '1', 'yes'),
(184, 'duplicate_post_copyformat', '1', 'yes'),
(185, 'duplicate_post_copyauthor', '0', 'yes'),
(186, 'duplicate_post_copypassword', '0', 'yes'),
(187, 'duplicate_post_copyattachments', '0', 'yes'),
(188, 'duplicate_post_copychildren', '0', 'yes'),
(189, 'duplicate_post_copycomments', '0', 'yes'),
(190, 'duplicate_post_copymenuorder', '1', 'yes'),
(191, 'duplicate_post_taxonomies_blacklist', 'a:0:{}', 'yes'),
(192, 'duplicate_post_blacklist', '', 'yes'),
(193, 'duplicate_post_types_enabled', 'a:2:{i:0;s:4:"post";i:1;s:4:"page";}', 'yes'),
(194, 'duplicate_post_show_row', '1', 'yes'),
(195, 'duplicate_post_show_adminbar', '1', 'yes'),
(196, 'duplicate_post_show_submitbox', '1', 'yes'),
(197, 'duplicate_post_show_bulkactions', '1', 'yes'),
(198, 'duplicate_post_version', '3.2', 'no'),
(199, 'duplicate_post_show_notice', '1', 'no') ;

#
# End of data contents of table `wp_2k17_wp_examenoptions`
# --------------------------------------------------------



#
# Delete any existing table `wp_2k17_wp_examenpostmeta`
#

DROP TABLE IF EXISTS `wp_2k17_wp_examenpostmeta`;


#
# Table structure of table `wp_2k17_wp_examenpostmeta`
#

CREATE TABLE `wp_2k17_wp_examenpostmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=1129 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_2k17_wp_examenpostmeta`
#
INSERT INTO `wp_2k17_wp_examenpostmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 2, '_wp_trash_meta_status', 'publish'),
(3, 2, '_wp_trash_meta_time', '1497942535'),
(4, 2, '_wp_desired_post_slug', 'page-d-exemple'),
(5, 5, '_edit_last', '1'),
(6, 5, '_wp_page_template', 'default'),
(7, 5, '_edit_lock', '1497950064:1'),
(8, 7, '_edit_last', '1'),
(9, 7, '_edit_lock', '1497950069:1'),
(10, 7, '_wp_page_template', 'default'),
(11, 9, '_edit_last', '1'),
(12, 9, '_wp_page_template', 'default'),
(13, 9, '_edit_lock', '1497942429:1'),
(14, 11, '_edit_last', '1'),
(15, 11, '_wp_page_template', 'page-templates/accueil.php'),
(16, 11, '_edit_lock', '1497946554:1'),
(17, 13, '_edit_last', '1'),
(18, 13, '_wp_page_template', 'default'),
(19, 13, '_edit_lock', '1497952823:1'),
(20, 15, '_edit_last', '1'),
(21, 15, '_wp_page_template', 'page-templates/contact.php'),
(22, 15, '_edit_lock', '1497964620:1'),
(23, 17, '_menu_item_type', 'post_type'),
(24, 17, '_menu_item_menu_item_parent', '0'),
(25, 17, '_menu_item_object_id', '15'),
(26, 17, '_menu_item_object', 'page'),
(27, 17, '_menu_item_target', ''),
(28, 17, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(29, 17, '_menu_item_xfn', ''),
(30, 17, '_menu_item_url', ''),
(32, 18, '_menu_item_type', 'post_type'),
(33, 18, '_menu_item_menu_item_parent', '0'),
(34, 18, '_menu_item_object_id', '13'),
(35, 18, '_menu_item_object', 'page'),
(36, 18, '_menu_item_target', ''),
(37, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(38, 18, '_menu_item_xfn', ''),
(39, 18, '_menu_item_url', ''),
(41, 19, '_menu_item_type', 'post_type'),
(42, 19, '_menu_item_menu_item_parent', '0'),
(43, 19, '_menu_item_object_id', '11'),
(44, 19, '_menu_item_object', 'page'),
(45, 19, '_menu_item_target', ''),
(46, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(47, 19, '_menu_item_xfn', ''),
(48, 19, '_menu_item_url', ''),
(49, 1, '_wp_trash_meta_status', 'publish'),
(50, 1, '_wp_trash_meta_time', '1497952971'),
(51, 1, '_wp_desired_post_slug', 'bonjour-tout-le-monde'),
(52, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(53, 25, '_edit_last', '1'),
(54, 25, '_edit_lock', '1497961957:1'),
(55, 26, '_wp_attached_file', '2017/06/0.jpg'),
(56, 26, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2904;s:6:"height";i:1093;s:4:"file";s:13:"2017/06/0.jpg";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"0-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"0-300x113.jpg";s:5:"width";i:300;s:6:"height";i:113;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:13:"0-768x289.jpg";s:5:"width";i:768;s:6:"height";i:289;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:14:"0-1024x385.jpg";s:5:"width";i:1024;s:6:"height";i:385;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:13:"0-640x200.jpg";s:5:"width";i:640;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-medium";a:4:{s:4:"file";s:14:"0-1280x400.jpg";s:5:"width";i:1280;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-large";a:4:{s:4:"file";s:14:"0-1440x400.jpg";s:5:"width";i:1440;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-xlarge";a:4:{s:4:"file";s:14:"0-1920x400.jpg";s:5:"width";i:1920;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fp-small";a:4:{s:4:"file";s:13:"0-640x241.jpg";s:5:"width";i:640;s:6:"height";i:241;s:9:"mime-type";s:10:"image/jpeg";}s:9:"fp-medium";a:4:{s:4:"file";s:14:"0-1024x385.jpg";s:5:"width";i:1024;s:6:"height";i:385;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fp-large";a:4:{s:4:"file";s:14:"0-1200x452.jpg";s:5:"width";i:1200;s:6:"height";i:452;s:9:"mime-type";s:10:"image/jpeg";}s:9:"fp-xlarge";a:4:{s:4:"file";s:14:"0-1920x723.jpg";s:5:"width";i:1920;s:6:"height";i:723;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"4.5";s:6:"credit";s:0:"";s:6:"camera";s:12:"PENTAX K100D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1136074174";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"40";s:3:"iso";s:3:"800";s:13:"shutter_speed";s:4:"0.25";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(57, 25, '_thumbnail_id', '26'),
(59, 29, '_wp_attached_file', '2017/06/acajou.png'),
(60, 29, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:210;s:6:"height";i:210;s:4:"file";s:18:"2017/06/acajou.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"acajou-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:14:"featured-small";a:4:{s:4:"file";s:18:"acajou-210x200.png";s:5:"width";i:210;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(61, 30, '_wp_attached_file', '2017/06/accueil-ialu.png'),
(62, 30, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:785;s:6:"height";i:515;s:4:"file";s:24:"2017/06/accueil-ialu.png";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"accueil-ialu-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:24:"accueil-ialu-300x197.png";s:5:"width";i:300;s:6:"height";i:197;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:24:"accueil-ialu-768x504.png";s:5:"width";i:768;s:6:"height";i:504;s:9:"mime-type";s:9:"image/png";}s:14:"featured-small";a:4:{s:4:"file";s:24:"accueil-ialu-640x200.png";s:5:"width";i:640;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:15:"featured-medium";a:4:{s:4:"file";s:24:"accueil-ialu-785x400.png";s:5:"width";i:785;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}s:14:"featured-large";a:4:{s:4:"file";s:24:"accueil-ialu-785x400.png";s:5:"width";i:785;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}s:15:"featured-xlarge";a:4:{s:4:"file";s:24:"accueil-ialu-785x400.png";s:5:"width";i:785;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}s:8:"fp-small";a:4:{s:4:"file";s:24:"accueil-ialu-640x420.png";s:5:"width";i:640;s:6:"height";i:420;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(63, 31, '_wp_attached_file', '2017/06/caoutchouc.png'),
(64, 31, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:210;s:6:"height";i:210;s:4:"file";s:22:"2017/06/caoutchouc.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"caoutchouc-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:14:"featured-small";a:4:{s:4:"file";s:22:"caoutchouc-210x200.png";s:5:"width";i:210;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(65, 32, '_wp_attached_file', '2017/06/enceintenoir.png'),
(66, 32, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:556;s:6:"height";i:482;s:4:"file";s:24:"2017/06/enceintenoir.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"enceintenoir-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:24:"enceintenoir-300x260.png";s:5:"width";i:300;s:6:"height";i:260;s:9:"mime-type";s:9:"image/png";}s:14:"featured-small";a:4:{s:4:"file";s:24:"enceintenoir-556x200.png";s:5:"width";i:556;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:15:"featured-medium";a:4:{s:4:"file";s:24:"enceintenoir-556x400.png";s:5:"width";i:556;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}s:14:"featured-large";a:4:{s:4:"file";s:24:"enceintenoir-556x400.png";s:5:"width";i:556;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}s:15:"featured-xlarge";a:4:{s:4:"file";s:24:"enceintenoir-556x400.png";s:5:"width";i:556;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(67, 33, '_wp_attached_file', '2017/06/enceinteorange.png'),
(68, 33, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:555;s:6:"height";i:551;s:4:"file";s:26:"2017/06/enceinteorange.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"enceinteorange-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:26:"enceinteorange-300x298.png";s:5:"width";i:300;s:6:"height";i:298;s:9:"mime-type";s:9:"image/png";}s:14:"featured-small";a:4:{s:4:"file";s:26:"enceinteorange-555x200.png";s:5:"width";i:555;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:15:"featured-medium";a:4:{s:4:"file";s:26:"enceinteorange-555x400.png";s:5:"width";i:555;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}s:14:"featured-large";a:4:{s:4:"file";s:26:"enceinteorange-555x400.png";s:5:"width";i:555;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}s:15:"featured-xlarge";a:4:{s:4:"file";s:26:"enceinteorange-555x400.png";s:5:"width";i:555;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(69, 34, '_wp_attached_file', '2017/06/enceinterouge.png'),
(70, 34, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1439;s:6:"height";i:380;s:4:"file";s:25:"2017/06/enceinterouge.png";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"enceinterouge-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:24:"enceinterouge-300x79.png";s:5:"width";i:300;s:6:"height";i:79;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:25:"enceinterouge-768x203.png";s:5:"width";i:768;s:6:"height";i:203;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:26:"enceinterouge-1024x270.png";s:5:"width";i:1024;s:6:"height";i:270;s:9:"mime-type";s:9:"image/png";}s:14:"featured-small";a:4:{s:4:"file";s:25:"enceinterouge-640x200.png";s:5:"width";i:640;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:15:"featured-medium";a:4:{s:4:"file";s:26:"enceinterouge-1280x380.png";s:5:"width";i:1280;s:6:"height";i:380;s:9:"mime-type";s:9:"image/png";}s:8:"fp-small";a:4:{s:4:"file";s:25:"enceinterouge-640x169.png";s:5:"width";i:640;s:6:"height";i:169;s:9:"mime-type";s:9:"image/png";}s:9:"fp-medium";a:4:{s:4:"file";s:26:"enceinterouge-1024x270.png";s:5:"width";i:1024;s:6:"height";i:270;s:9:"mime-type";s:9:"image/png";}s:8:"fp-large";a:4:{s:4:"file";s:26:"enceinterouge-1200x317.png";s:5:"width";i:1200;s:6:"height";i:317;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(71, 35, '_wp_attached_file', '2017/06/enceinteverte.png'),
(72, 35, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:556;s:6:"height";i:482;s:4:"file";s:25:"2017/06/enceinteverte.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"enceinteverte-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:25:"enceinteverte-300x260.png";s:5:"width";i:300;s:6:"height";i:260;s:9:"mime-type";s:9:"image/png";}s:14:"featured-small";a:4:{s:4:"file";s:25:"enceinteverte-556x200.png";s:5:"width";i:556;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:15:"featured-medium";a:4:{s:4:"file";s:25:"enceinteverte-556x400.png";s:5:"width";i:556;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}s:14:"featured-large";a:4:{s:4:"file";s:25:"enceinteverte-556x400.png";s:5:"width";i:556;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}s:15:"featured-xlarge";a:4:{s:4:"file";s:25:"enceinteverte-556x400.png";s:5:"width";i:556;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(73, 36, '_wp_attached_file', '2017/06/metal.png'),
(74, 36, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:210;s:6:"height";i:210;s:4:"file";s:17:"2017/06/metal.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"metal-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:14:"featured-small";a:4:{s:4:"file";s:17:"metal-210x200.png";s:5:"width";i:210;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(75, 37, '_wp_attached_file', '2017/06/real-1.png'),
(76, 37, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:323;s:6:"height";i:701;s:4:"file";s:18:"2017/06/real-1.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"real-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:18:"real-1-138x300.png";s:5:"width";i:138;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"featured-small";a:4:{s:4:"file";s:18:"real-1-323x200.png";s:5:"width";i:323;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:15:"featured-medium";a:4:{s:4:"file";s:18:"real-1-323x400.png";s:5:"width";i:323;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}s:14:"featured-large";a:4:{s:4:"file";s:18:"real-1-323x400.png";s:5:"width";i:323;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}s:15:"featured-xlarge";a:4:{s:4:"file";s:18:"real-1-323x400.png";s:5:"width";i:323;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(77, 38, '_wp_attached_file', '2017/06/real-2.png'),
(78, 38, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:323;s:6:"height";i:701;s:4:"file";s:18:"2017/06/real-2.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"real-2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:18:"real-2-138x300.png";s:5:"width";i:138;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"featured-small";a:4:{s:4:"file";s:18:"real-2-323x200.png";s:5:"width";i:323;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:15:"featured-medium";a:4:{s:4:"file";s:18:"real-2-323x400.png";s:5:"width";i:323;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}s:14:"featured-large";a:4:{s:4:"file";s:18:"real-2-323x400.png";s:5:"width";i:323;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}s:15:"featured-xlarge";a:4:{s:4:"file";s:18:"real-2-323x400.png";s:5:"width";i:323;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(79, 39, '_wp_attached_file', '2017/06/real-3.png'),
(80, 39, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:323;s:6:"height";i:701;s:4:"file";s:18:"2017/06/real-3.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"real-3-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:18:"real-3-138x300.png";s:5:"width";i:138;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"featured-small";a:4:{s:4:"file";s:18:"real-3-323x200.png";s:5:"width";i:323;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:15:"featured-medium";a:4:{s:4:"file";s:18:"real-3-323x400.png";s:5:"width";i:323;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}s:14:"featured-large";a:4:{s:4:"file";s:18:"real-3-323x400.png";s:5:"width";i:323;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}s:15:"featured-xlarge";a:4:{s:4:"file";s:18:"real-3-323x400.png";s:5:"width";i:323;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(81, 40, '_edit_last', '1'),
(82, 40, 'field_5948fef9dab92', 'a:11:{s:3:"key";s:19:"field_5948fef9dab92";s:5:"label";s:10:"Matériaux";s:4:"name";s:9:"materiaux";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:6:"medium";s:7:"library";s:10:"uploadedTo";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(83, 40, 'field_5948ff20dab93', 'a:14:{s:3:"key";s:19:"field_5948ff20dab93";s:5:"label";s:0:"";s:4:"name";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(85, 40, 'position', 'normal'),
(86, 40, 'layout', 'no_box'),
(87, 40, 'hide_on_screen', 'a:14:{i:0;s:9:"permalink";i:1;s:11:"the_content";i:2;s:7:"excerpt";i:3;s:13:"custom_fields";i:4;s:10:"discussion";i:5;s:8:"comments";i:6;s:9:"revisions";i:7;s:4:"slug";i:8;s:6:"author";i:9;s:6:"format";i:10;s:14:"featured_image";i:11;s:10:"categories";i:12;s:4:"tags";i:13;s:15:"send-trackbacks";}'),
(88, 40, '_edit_lock', '1497957411:1'),
(90, 41, 'materiaux', '31'),
(91, 41, '_materiaux', 'field_5948fef9dab92'),
(92, 41, '_', 'field_5948ff20dab93'),
(93, 25, 'materiaux', '31'),
(94, 25, '_materiaux', 'field_5948fef9dab92'),
(95, 25, '_', 'field_5948ff20dab93'),
(96, 44, '_edit_last', '1'),
(97, 44, 'field_5949014322be1', 'a:14:{s:3:"key";s:19:"field_5949014322be1";s:5:"label";s:15:"Nom du materiel";s:4:"name";s:15:"nom_du_materiel";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(99, 44, 'position', 'normal'),
(100, 44, 'layout', 'no_box'),
(101, 44, 'hide_on_screen', ''),
(102, 44, '_edit_lock', '1497957189:1'),
(107, 44, 'field_5949016ad408c', 'a:14:{s:3:"key";s:19:"field_5949016ad408c";s:5:"label";s:16:"Nom du materiel2";s:4:"name";s:20:"nom_du_materiel_deux";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(109, 44, 'field_594901864ff85', 'a:14:{s:3:"key";s:19:"field_594901864ff85";s:5:"label";s:16:"Nom du materiel3";s:4:"name";s:21:"nom_du_materiel_trois";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(110, 44, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"post";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(111, 40, 'field_594901b78c1d6', 'a:11:{s:3:"key";s:19:"field_594901b78c1d6";s:5:"label";s:11:"Matériaux2";s:4:"name";s:14:"materiaux_deux";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:6:"medium";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}') ;
INSERT INTO `wp_2k17_wp_examenpostmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(113, 40, 'field_594901bf3b634', 'a:11:{s:3:"key";s:19:"field_594901bf3b634";s:5:"label";s:11:"Matériaux3";s:4:"name";s:15:"materiaux_trois";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:6:"medium";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(116, 45, 'materiaux', '31'),
(117, 45, '_materiaux', 'field_5948fef9dab92'),
(118, 45, 'materiaux_deux', '36'),
(119, 45, '_materiaux_deux', 'field_594901b78c1d6'),
(120, 45, 'materiaux_trois', '29'),
(121, 45, '_materiaux_trois', 'field_594901bf3b634'),
(122, 45, '_', 'field_5948ff20dab93'),
(123, 45, 'nom_du_materiel', 'Caoutchouc'),
(124, 45, '_nom_du_materiel', 'field_5949014322be1'),
(125, 45, 'nom_du_materiel_deux', 'Métal'),
(126, 45, '_nom_du_materiel_deux', 'field_5949016ad408c'),
(127, 45, 'nom_du_materiel_trois', 'Acajou'),
(128, 45, '_nom_du_materiel_trois', 'field_594901864ff85'),
(129, 25, 'materiaux_deux', '36'),
(130, 25, '_materiaux_deux', 'field_594901b78c1d6'),
(131, 25, 'materiaux_trois', '29'),
(132, 25, '_materiaux_trois', 'field_594901bf3b634'),
(133, 25, 'nom_du_materiel', 'Caoutchouc'),
(134, 25, '_nom_du_materiel', 'field_5949014322be1'),
(135, 25, 'nom_du_materiel_deux', 'Métal'),
(136, 25, '_nom_du_materiel_deux', 'field_5949016ad408c'),
(137, 25, 'nom_du_materiel_trois', 'Acajou'),
(138, 25, '_nom_du_materiel_trois', 'field_594901864ff85'),
(142, 40, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"post";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(143, 46, '_edit_last', '1'),
(144, 46, 'field_594904c1e0d48', 'a:11:{s:3:"key";s:19:"field_594904c1e0d48";s:5:"label";s:9:"Image une";s:4:"name";s:9:"image_une";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(145, 46, 'field_594904d9e0d49', 'a:11:{s:3:"key";s:19:"field_594904d9e0d49";s:5:"label";s:10:"Image deux";s:4:"name";s:10:"image_deux";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(146, 46, 'field_594904e4e0d4a', 'a:11:{s:3:"key";s:19:"field_594904e4e0d4a";s:5:"label";s:11:"Image trois";s:4:"name";s:11:"image_trois";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(147, 46, 'field_594904f4e0d4b', 'a:11:{s:3:"key";s:19:"field_594904f4e0d4b";s:5:"label";s:12:"Image quatre";s:4:"name";s:12:"image_quatre";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(148, 46, 'field_594904fee0d4c', 'a:11:{s:3:"key";s:19:"field_594904fee0d4c";s:5:"label";s:10:"Image cinq";s:4:"name";s:10:"image_cinq";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}'),
(149, 46, 'field_59490509e0d4d', 'a:11:{s:3:"key";s:19:"field_59490509e0d4d";s:5:"label";s:10:"Image full";s:4:"name";s:10:"image_full";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:5;}'),
(150, 46, 'field_59490518e0d4e', 'a:14:{s:3:"key";s:19:"field_59490518e0d4e";s:5:"label";s:0:"";s:4:"name";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:6;}'),
(152, 46, 'position', 'normal'),
(153, 46, 'layout', 'no_box'),
(154, 46, 'hide_on_screen', ''),
(155, 46, '_edit_lock', '1497958589:1'),
(157, 47, '_edit_last', '1'),
(158, 47, 'field_594905307bd5a', 'a:14:{s:3:"key";s:19:"field_594905307bd5a";s:5:"label";s:8:"texte un";s:4:"name";s:8:"texte_un";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(159, 47, 'field_594905367bd5b', 'a:14:{s:3:"key";s:19:"field_594905367bd5b";s:5:"label";s:10:"texte deux";s:4:"name";s:10:"texte_deux";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(160, 47, 'field_5949053a7bd5c', 'a:14:{s:3:"key";s:19:"field_5949053a7bd5c";s:5:"label";s:11:"texte trois";s:4:"name";s:11:"texte_trois";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(161, 47, 'field_5949053e7bd5d', 'a:14:{s:3:"key";s:19:"field_5949053e7bd5d";s:5:"label";s:12:"texte quatre";s:4:"name";s:12:"texte_quatre";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(162, 47, 'field_594905447bd5e', 'a:14:{s:3:"key";s:19:"field_594905447bd5e";s:5:"label";s:10:"texte full";s:4:"name";s:10:"texte_full";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}'),
(163, 47, 'field_594905497bd5f', 'a:14:{s:3:"key";s:19:"field_594905497bd5f";s:5:"label";s:10:"texte cinq";s:4:"name";s:10:"texte_cinq";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:5;}'),
(164, 47, 'field_5949054e7bd60', 'a:14:{s:3:"key";s:19:"field_5949054e7bd60";s:5:"label";s:0:"";s:4:"name";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:6;}'),
(165, 47, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"post";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(166, 47, 'position', 'normal'),
(167, 47, 'layout', 'no_box'),
(168, 47, 'hide_on_screen', ''),
(169, 47, '_edit_lock', '1497958847:1'),
(171, 48, 'image_une', '35'),
(172, 48, '_image_une', 'field_594904c1e0d48'),
(173, 48, 'image_deux', '33'),
(174, 48, '_image_deux', 'field_594904d9e0d49'),
(175, 48, 'image_trois', '32'),
(176, 48, '_image_trois', 'field_594904e4e0d4a'),
(177, 48, 'image_quatre', ''),
(178, 48, '_image_quatre', 'field_594904f4e0d4b'),
(179, 48, 'image_cinq', ''),
(180, 48, '_image_cinq', 'field_594904fee0d4c'),
(181, 48, 'image_full', '34'),
(182, 48, '_image_full', 'field_59490509e0d4d'),
(183, 48, '_', 'field_5948ff20dab93'),
(184, 48, 'texte_un', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(185, 48, '_texte_un', 'field_594905307bd5a'),
(186, 48, 'texte_deux', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(187, 48, '_texte_deux', 'field_594905367bd5b'),
(188, 48, 'texte_trois', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(189, 48, '_texte_trois', 'field_5949053a7bd5c'),
(190, 48, 'texte_quatre', ''),
(191, 48, '_texte_quatre', 'field_5949053e7bd5d'),
(192, 48, 'texte_full', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(193, 48, '_texte_full', 'field_594905447bd5e'),
(194, 48, 'texte_cinq', ''),
(195, 48, '_texte_cinq', 'field_594905497bd5f'),
(196, 48, 'materiaux', '31'),
(197, 48, '_materiaux', 'field_5948fef9dab92'),
(198, 48, 'materiaux_deux', '36'),
(199, 48, '_materiaux_deux', 'field_594901b78c1d6'),
(200, 48, 'materiaux_trois', '29'),
(201, 48, '_materiaux_trois', 'field_594901bf3b634'),
(202, 48, 'nom_du_materiel', 'Caoutchouc'),
(203, 48, '_nom_du_materiel', 'field_5949014322be1'),
(204, 48, 'nom_du_materiel_deux', 'Métal'),
(205, 48, '_nom_du_materiel_deux', 'field_5949016ad408c'),
(206, 48, 'nom_du_materiel_trois', 'Acajou'),
(207, 48, '_nom_du_materiel_trois', 'field_594901864ff85'),
(208, 25, 'image_une', '35'),
(209, 25, '_image_une', 'field_594904c1e0d48'),
(210, 25, 'image_deux', '33'),
(211, 25, '_image_deux', 'field_594904d9e0d49'),
(212, 25, 'image_trois', '32'),
(213, 25, '_image_trois', 'field_594904e4e0d4a'),
(214, 25, 'image_quatre', ''),
(215, 25, '_image_quatre', 'field_594904f4e0d4b'),
(216, 25, 'image_cinq', ''),
(217, 25, '_image_cinq', 'field_594904fee0d4c'),
(218, 25, 'image_full', '34'),
(219, 25, '_image_full', 'field_59490509e0d4d'),
(220, 25, 'texte_un', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. ') ;
INSERT INTO `wp_2k17_wp_examenpostmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(221, 25, '_texte_un', 'field_594905307bd5a'),
(222, 25, 'texte_deux', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(223, 25, '_texte_deux', 'field_594905367bd5b'),
(224, 25, 'texte_trois', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(225, 25, '_texte_trois', 'field_5949053a7bd5c'),
(226, 25, 'texte_quatre', ''),
(227, 25, '_texte_quatre', 'field_5949053e7bd5d'),
(228, 25, 'texte_full', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(229, 25, '_texte_full', 'field_594905447bd5e'),
(230, 25, 'texte_cinq', ''),
(231, 25, '_texte_cinq', 'field_594905497bd5f'),
(233, 49, 'image_une', '35'),
(234, 49, '_image_une', 'field_594904c1e0d48'),
(235, 49, 'image_deux', '33'),
(236, 49, '_image_deux', 'field_594904d9e0d49'),
(237, 49, 'image_trois', '32'),
(238, 49, '_image_trois', 'field_594904e4e0d4a'),
(239, 49, 'image_quatre', ''),
(240, 49, '_image_quatre', 'field_594904f4e0d4b'),
(241, 49, 'image_cinq', ''),
(242, 49, '_image_cinq', 'field_594904fee0d4c'),
(243, 49, 'image_full', '34'),
(244, 49, '_image_full', 'field_59490509e0d4d'),
(245, 49, '_', 'field_5948ff20dab93'),
(246, 49, 'texte_un', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(247, 49, '_texte_un', 'field_594905307bd5a'),
(248, 49, 'texte_deux', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(249, 49, '_texte_deux', 'field_594905367bd5b'),
(250, 49, 'texte_trois', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(251, 49, '_texte_trois', 'field_5949053a7bd5c'),
(252, 49, 'texte_quatre', ''),
(253, 49, '_texte_quatre', 'field_5949053e7bd5d'),
(254, 49, 'texte_full', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(255, 49, '_texte_full', 'field_594905447bd5e'),
(256, 49, 'texte_cinq', ''),
(257, 49, '_texte_cinq', 'field_594905497bd5f'),
(258, 49, 'materiaux', '31'),
(259, 49, '_materiaux', 'field_5948fef9dab92'),
(260, 49, 'materiaux_deux', '36'),
(261, 49, '_materiaux_deux', 'field_594901b78c1d6'),
(262, 49, 'materiaux_trois', '29'),
(263, 49, '_materiaux_trois', 'field_594901bf3b634'),
(264, 49, 'nom_du_materiel', 'Caoutchouc'),
(265, 49, '_nom_du_materiel', 'field_5949014322be1'),
(266, 49, 'nom_du_materiel_deux', 'Métal'),
(267, 49, '_nom_du_materiel_deux', 'field_5949016ad408c'),
(268, 49, 'nom_du_materiel_trois', 'Acajou'),
(269, 49, '_nom_du_materiel_trois', 'field_594901864ff85'),
(270, 46, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"post";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(271, 50, '_edit_last', '1'),
(272, 50, 'field_5949090b2cb85', 'a:14:{s:3:"key";s:19:"field_5949090b2cb85";s:5:"label";s:14:"titre materiel";s:4:"name";s:14:"titre_materiel";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(273, 50, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"post";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(274, 50, 'position', 'normal'),
(275, 50, 'layout', 'no_box'),
(276, 50, 'hide_on_screen', ''),
(277, 50, '_edit_lock', '1497958536:1'),
(279, 51, 'image_une', '35'),
(280, 51, '_image_une', 'field_594904c1e0d48'),
(281, 51, 'image_deux', '33'),
(282, 51, '_image_deux', 'field_594904d9e0d49'),
(283, 51, 'image_trois', '32'),
(284, 51, '_image_trois', 'field_594904e4e0d4a'),
(285, 51, 'image_quatre', ''),
(286, 51, '_image_quatre', 'field_594904f4e0d4b'),
(287, 51, 'image_cinq', ''),
(288, 51, '_image_cinq', 'field_594904fee0d4c'),
(289, 51, 'image_full', '34'),
(290, 51, '_image_full', 'field_59490509e0d4d'),
(291, 51, '_', 'field_5948ff20dab93'),
(292, 51, 'texte_un', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(293, 51, '_texte_un', 'field_594905307bd5a'),
(294, 51, 'texte_deux', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(295, 51, '_texte_deux', 'field_594905367bd5b'),
(296, 51, 'texte_trois', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(297, 51, '_texte_trois', 'field_5949053a7bd5c'),
(298, 51, 'texte_quatre', ''),
(299, 51, '_texte_quatre', 'field_5949053e7bd5d'),
(300, 51, 'texte_full', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(301, 51, '_texte_full', 'field_594905447bd5e'),
(302, 51, 'texte_cinq', ''),
(303, 51, '_texte_cinq', 'field_594905497bd5f'),
(304, 51, 'materiaux', '31'),
(305, 51, '_materiaux', 'field_5948fef9dab92'),
(306, 51, 'materiaux_deux', '36'),
(307, 51, '_materiaux_deux', 'field_594901b78c1d6'),
(308, 51, 'materiaux_trois', '29'),
(309, 51, '_materiaux_trois', 'field_594901bf3b634'),
(310, 51, 'nom_du_materiel', 'Caoutchouc'),
(311, 51, '_nom_du_materiel', 'field_5949014322be1'),
(312, 51, 'nom_du_materiel_deux', 'Métal'),
(313, 51, '_nom_du_materiel_deux', 'field_5949016ad408c'),
(314, 51, 'nom_du_materiel_trois', 'Acajou'),
(315, 51, '_nom_du_materiel_trois', 'field_594901864ff85'),
(316, 51, 'titre_materiel', 'MATÉRIAUX UTILISÉS'),
(317, 51, '_titre_materiel', 'field_5949090b2cb85'),
(318, 25, 'titre_materiel', 'MATÉRIAUX UTILISÉS'),
(319, 25, '_titre_materiel', 'field_5949090b2cb85'),
(329, 53, '_menu_item_type', 'post_type'),
(330, 53, '_menu_item_menu_item_parent', '18'),
(331, 53, '_menu_item_object_id', '25') ;
INSERT INTO `wp_2k17_wp_examenpostmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(332, 53, '_menu_item_object', 'post'),
(333, 53, '_menu_item_target', ''),
(334, 53, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(335, 53, '_menu_item_xfn', ''),
(336, 53, '_menu_item_url', ''),
(339, 54, '_edit_last', '1'),
(340, 54, 'field_594910d3bf074', 'a:14:{s:3:"key";s:19:"field_594910d3bf074";s:5:"label";s:15:"extrait article";s:4:"name";s:15:"extrait_article";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(341, 54, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"post";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(342, 54, 'position', 'normal'),
(343, 54, 'layout', 'no_box'),
(344, 54, 'hide_on_screen', ''),
(345, 54, '_edit_lock', '1497962469:1'),
(347, 55, 'image_une', '35'),
(348, 55, '_image_une', 'field_594904c1e0d48'),
(349, 55, 'image_deux', '33'),
(350, 55, '_image_deux', 'field_594904d9e0d49'),
(351, 55, 'image_trois', '32'),
(352, 55, '_image_trois', 'field_594904e4e0d4a'),
(353, 55, 'image_quatre', ''),
(354, 55, '_image_quatre', 'field_594904f4e0d4b'),
(355, 55, 'image_cinq', ''),
(356, 55, '_image_cinq', 'field_594904fee0d4c'),
(357, 55, 'image_full', '34'),
(358, 55, '_image_full', 'field_59490509e0d4d'),
(359, 55, '_', 'field_5948ff20dab93'),
(360, 55, 'texte_un', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(361, 55, '_texte_un', 'field_594905307bd5a'),
(362, 55, 'texte_deux', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(363, 55, '_texte_deux', 'field_594905367bd5b'),
(364, 55, 'texte_trois', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(365, 55, '_texte_trois', 'field_5949053a7bd5c'),
(366, 55, 'texte_quatre', ''),
(367, 55, '_texte_quatre', 'field_5949053e7bd5d'),
(368, 55, 'texte_full', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(369, 55, '_texte_full', 'field_594905447bd5e'),
(370, 55, 'texte_cinq', ''),
(371, 55, '_texte_cinq', 'field_594905497bd5f'),
(372, 55, 'extrait_article', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(373, 55, '_extrait_article', 'field_594910d3bf074'),
(374, 55, 'materiaux', '31'),
(375, 55, '_materiaux', 'field_5948fef9dab92'),
(376, 55, 'materiaux_deux', '36'),
(377, 55, '_materiaux_deux', 'field_594901b78c1d6'),
(378, 55, 'materiaux_trois', '29'),
(379, 55, '_materiaux_trois', 'field_594901bf3b634'),
(380, 55, 'nom_du_materiel', 'Caoutchouc'),
(381, 55, '_nom_du_materiel', 'field_5949014322be1'),
(382, 55, 'nom_du_materiel_deux', 'Métal'),
(383, 55, '_nom_du_materiel_deux', 'field_5949016ad408c'),
(384, 55, 'nom_du_materiel_trois', 'Acajou'),
(385, 55, '_nom_du_materiel_trois', 'field_594901864ff85'),
(386, 55, 'titre_materiel', 'MATÉRIAUX UTILISÉS'),
(387, 55, '_titre_materiel', 'field_5949090b2cb85'),
(388, 25, 'extrait_article', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(389, 25, '_extrait_article', 'field_594910d3bf074'),
(390, 56, '_thumbnail_id', '60'),
(391, 56, 'materiaux', '31'),
(392, 56, '_materiaux', 'field_5948fef9dab92'),
(393, 56, '_', 'field_5948ff20dab93'),
(394, 56, 'materiaux_deux', '36'),
(395, 56, '_materiaux_deux', 'field_594901b78c1d6'),
(396, 56, 'materiaux_trois', '29'),
(397, 56, '_materiaux_trois', 'field_594901bf3b634'),
(398, 56, 'nom_du_materiel', 'Caoutchouc'),
(399, 56, '_nom_du_materiel', 'field_5949014322be1'),
(400, 56, 'nom_du_materiel_deux', 'Métal'),
(401, 56, '_nom_du_materiel_deux', 'field_5949016ad408c'),
(402, 56, 'nom_du_materiel_trois', 'Acajou'),
(403, 56, '_nom_du_materiel_trois', 'field_594901864ff85'),
(404, 56, 'image_une', '61'),
(405, 56, '_image_une', 'field_594904c1e0d48'),
(406, 56, 'image_deux', '63'),
(407, 56, '_image_deux', 'field_594904d9e0d49'),
(408, 56, 'image_trois', '60'),
(409, 56, '_image_trois', 'field_594904e4e0d4a'),
(410, 56, 'image_quatre', ''),
(411, 56, '_image_quatre', 'field_594904f4e0d4b'),
(412, 56, 'image_cinq', ''),
(413, 56, '_image_cinq', 'field_594904fee0d4c'),
(414, 56, 'image_full', '62'),
(415, 56, '_image_full', 'field_59490509e0d4d'),
(416, 56, 'texte_un', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(417, 56, '_texte_un', 'field_594905307bd5a'),
(418, 56, 'texte_deux', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(419, 56, '_texte_deux', 'field_594905367bd5b'),
(420, 56, 'texte_trois', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(421, 56, '_texte_trois', 'field_5949053a7bd5c'),
(422, 56, 'texte_quatre', ''),
(423, 56, '_texte_quatre', 'field_5949053e7bd5d'),
(424, 56, 'texte_full', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(425, 56, '_texte_full', 'field_594905447bd5e'),
(426, 56, 'texte_cinq', ''),
(427, 56, '_texte_cinq', 'field_594905497bd5f'),
(428, 56, 'titre_materiel', 'MATÉRIAUX UTILISÉS'),
(429, 56, '_titre_materiel', 'field_5949090b2cb85'),
(430, 56, 'extrait_article', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(431, 56, '_extrait_article', 'field_594910d3bf074'),
(432, 56, '_dp_original', '25'),
(433, 57, '_thumbnail_id', '81'),
(434, 57, 'materiaux', '31') ;
INSERT INTO `wp_2k17_wp_examenpostmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(435, 57, '_materiaux', 'field_5948fef9dab92'),
(436, 57, '_', 'field_5948ff20dab93'),
(437, 57, 'materiaux_deux', '36'),
(438, 57, '_materiaux_deux', 'field_594901b78c1d6'),
(439, 57, 'materiaux_trois', '29'),
(440, 57, '_materiaux_trois', 'field_594901bf3b634'),
(441, 57, 'nom_du_materiel', 'Caoutchouc'),
(442, 57, '_nom_du_materiel', 'field_5949014322be1'),
(443, 57, 'nom_du_materiel_deux', 'Métal'),
(444, 57, '_nom_du_materiel_deux', 'field_5949016ad408c'),
(445, 57, 'nom_du_materiel_trois', 'Acajou'),
(446, 57, '_nom_du_materiel_trois', 'field_594901864ff85'),
(447, 57, 'image_une', '81'),
(448, 57, '_image_une', 'field_594904c1e0d48'),
(449, 57, 'image_deux', '80'),
(450, 57, '_image_deux', 'field_594904d9e0d49'),
(451, 57, 'image_trois', '82'),
(452, 57, '_image_trois', 'field_594904e4e0d4a'),
(453, 57, 'image_quatre', ''),
(454, 57, '_image_quatre', 'field_594904f4e0d4b'),
(455, 57, 'image_cinq', ''),
(456, 57, '_image_cinq', 'field_594904fee0d4c'),
(457, 57, 'image_full', '85'),
(458, 57, '_image_full', 'field_59490509e0d4d'),
(459, 57, 'texte_un', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(460, 57, '_texte_un', 'field_594905307bd5a'),
(461, 57, 'texte_deux', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(462, 57, '_texte_deux', 'field_594905367bd5b'),
(463, 57, 'texte_trois', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(464, 57, '_texte_trois', 'field_5949053a7bd5c'),
(465, 57, 'texte_quatre', ''),
(466, 57, '_texte_quatre', 'field_5949053e7bd5d'),
(467, 57, 'texte_full', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(468, 57, '_texte_full', 'field_594905447bd5e'),
(469, 57, 'texte_cinq', ''),
(470, 57, '_texte_cinq', 'field_594905497bd5f'),
(471, 57, 'titre_materiel', 'MATÉRIAUX UTILISÉS'),
(472, 57, '_titre_materiel', 'field_5949090b2cb85'),
(473, 57, 'extrait_article', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(474, 57, '_extrait_article', 'field_594910d3bf074'),
(476, 57, '_dp_original', '56'),
(477, 58, '_thumbnail_id', '73'),
(478, 58, 'materiaux', ''),
(479, 58, '_materiaux', 'field_5948fef9dab92'),
(480, 58, '_', 'field_5948ff20dab93'),
(481, 58, 'materiaux_deux', '29'),
(482, 58, '_materiaux_deux', 'field_594901b78c1d6'),
(483, 58, 'materiaux_trois', '36'),
(484, 58, '_materiaux_trois', 'field_594901bf3b634'),
(485, 58, 'nom_du_materiel', ''),
(486, 58, '_nom_du_materiel', 'field_5949014322be1'),
(487, 58, 'nom_du_materiel_deux', 'Acajou'),
(488, 58, '_nom_du_materiel_deux', 'field_5949016ad408c'),
(489, 58, 'nom_du_materiel_trois', 'Métal'),
(490, 58, '_nom_du_materiel_trois', 'field_594901864ff85'),
(491, 58, 'image_une', '73'),
(492, 58, '_image_une', 'field_594904c1e0d48'),
(493, 58, 'image_deux', '74'),
(494, 58, '_image_deux', 'field_594904d9e0d49'),
(495, 58, 'image_trois', '75'),
(496, 58, '_image_trois', 'field_594904e4e0d4a'),
(497, 58, 'image_quatre', ''),
(498, 58, '_image_quatre', 'field_594904f4e0d4b'),
(499, 58, 'image_cinq', ''),
(500, 58, '_image_cinq', 'field_594904fee0d4c'),
(501, 58, 'image_full', ''),
(502, 58, '_image_full', 'field_59490509e0d4d'),
(503, 58, 'texte_un', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(504, 58, '_texte_un', 'field_594905307bd5a'),
(505, 58, 'texte_deux', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(506, 58, '_texte_deux', 'field_594905367bd5b'),
(507, 58, 'texte_trois', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(508, 58, '_texte_trois', 'field_5949053a7bd5c'),
(509, 58, 'texte_quatre', ''),
(510, 58, '_texte_quatre', 'field_5949053e7bd5d'),
(511, 58, 'texte_full', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(512, 58, '_texte_full', 'field_594905447bd5e'),
(513, 58, 'texte_cinq', ''),
(514, 58, '_texte_cinq', 'field_594905497bd5f'),
(515, 58, 'titre_materiel', 'MATÉRIAUX UTILISÉS'),
(516, 58, '_titre_materiel', 'field_5949090b2cb85'),
(517, 58, 'extrait_article', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(518, 58, '_extrait_article', 'field_594910d3bf074'),
(520, 58, '_dp_original', '57'),
(521, 56, '_edit_lock', '1497962516:1'),
(522, 59, '_wp_attached_file', '2017/06/2.0-chàne.jpg'),
(523, 59, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2362;s:6:"height";i:1970;s:4:"file";s:23:"2017/06/2.0-chàne.jpg";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"2.0-chàne-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"2.0-chàne-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"2.0-chàne-768x641.jpg";s:5:"width";i:768;s:6:"height";i:641;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:24:"2.0-chàne-1024x854.jpg";s:5:"width";i:1024;s:6:"height";i:854;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:23:"2.0-chàne-640x200.jpg";s:5:"width";i:640;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-medium";a:4:{s:4:"file";s:24:"2.0-chàne-1280x400.jpg";s:5:"width";i:1280;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-large";a:4:{s:4:"file";s:24:"2.0-chàne-1440x400.jpg";s:5:"width";i:1440;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-xlarge";a:4:{s:4:"file";s:24:"2.0-chàne-1920x400.jpg";s:5:"width";i:1920;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fp-small";a:4:{s:4:"file";s:23:"2.0-chàne-640x534.jpg";s:5:"width";i:640;s:6:"height";i:534;s:9:"mime-type";s:10:"image/jpeg";}s:9:"fp-medium";a:4:{s:4:"file";s:24:"2.0-chàne-1024x854.jpg";s:5:"width";i:1024;s:6:"height";i:854;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fp-large";a:4:{s:4:"file";s:25:"2.0-chàne-1200x1001.jpg";s:5:"width";i:1200;s:6:"height";i:1001;s:9:"mime-type";s:10:"image/jpeg";}s:9:"fp-xlarge";a:4:{s:4:"file";s:25:"2.0-chàne-1920x1601.jpg";s:5:"width";i:1920;s:6:"height";i:1601;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(524, 60, '_wp_attached_file', '2017/06/2.0-hàtre-verre-noir.jpg'),
(525, 60, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2362;s:6:"height";i:1970;s:4:"file";s:34:"2017/06/2.0-hàtre-verre-noir.jpg";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"2.0-hàtre-verre-noir-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"2.0-hàtre-verre-noir-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:34:"2.0-hàtre-verre-noir-768x641.jpg";s:5:"width";i:768;s:6:"height";i:641;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:35:"2.0-hàtre-verre-noir-1024x854.jpg";s:5:"width";i:1024;s:6:"height";i:854;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:34:"2.0-hàtre-verre-noir-640x200.jpg";s:5:"width";i:640;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-medium";a:4:{s:4:"file";s:35:"2.0-hàtre-verre-noir-1280x400.jpg";s:5:"width";i:1280;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-large";a:4:{s:4:"file";s:35:"2.0-hàtre-verre-noir-1440x400.jpg";s:5:"width";i:1440;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-xlarge";a:4:{s:4:"file";s:35:"2.0-hàtre-verre-noir-1920x400.jpg";s:5:"width";i:1920;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fp-small";a:4:{s:4:"file";s:34:"2.0-hàtre-verre-noir-640x534.jpg";s:5:"width";i:640;s:6:"height";i:534;s:9:"mime-type";s:10:"image/jpeg";}s:9:"fp-medium";a:4:{s:4:"file";s:35:"2.0-hàtre-verre-noir-1024x854.jpg";s:5:"width";i:1024;s:6:"height";i:854;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fp-large";a:4:{s:4:"file";s:36:"2.0-hàtre-verre-noir-1200x1001.jpg";s:5:"width";i:1200;s:6:"height";i:1001;s:9:"mime-type";s:10:"image/jpeg";}s:9:"fp-xlarge";a:4:{s:4:"file";s:36:"2.0-hàtre-verre-noir-1920x1601.jpg";s:5:"width";i:1920;s:6:"height";i:1601;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(526, 61, '_wp_attached_file', '2017/06/4.0-chàne-teintÇ.jpg'),
(527, 61, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2362;s:6:"height";i:1970;s:4:"file";s:32:"2017/06/4.0-chàne-teintÇ.jpg";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:32:"4.0-chàne-teintÇ-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:32:"4.0-chàne-teintÇ-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:32:"4.0-chàne-teintÇ-768x641.jpg";s:5:"width";i:768;s:6:"height";i:641;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:33:"4.0-chàne-teintÇ-1024x854.jpg";s:5:"width";i:1024;s:6:"height";i:854;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:32:"4.0-chàne-teintÇ-640x200.jpg";s:5:"width";i:640;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-medium";a:4:{s:4:"file";s:33:"4.0-chàne-teintÇ-1280x400.jpg";s:5:"width";i:1280;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-large";a:4:{s:4:"file";s:33:"4.0-chàne-teintÇ-1440x400.jpg";s:5:"width";i:1440;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-xlarge";a:4:{s:4:"file";s:33:"4.0-chàne-teintÇ-1920x400.jpg";s:5:"width";i:1920;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fp-small";a:4:{s:4:"file";s:32:"4.0-chàne-teintÇ-640x534.jpg";s:5:"width";i:640;s:6:"height";i:534;s:9:"mime-type";s:10:"image/jpeg";}s:9:"fp-medium";a:4:{s:4:"file";s:33:"4.0-chàne-teintÇ-1024x854.jpg";s:5:"width";i:1024;s:6:"height";i:854;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fp-large";a:4:{s:4:"file";s:34:"4.0-chàne-teintÇ-1200x1001.jpg";s:5:"width";i:1200;s:6:"height";i:1001;s:9:"mime-type";s:10:"image/jpeg";}s:9:"fp-xlarge";a:4:{s:4:"file";s:34:"4.0-chàne-teintÇ-1920x1601.jpg";s:5:"width";i:1920;s:6:"height";i:1601;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(528, 62, '_wp_attached_file', '2017/06/4.4-sapin-noir.jpg'),
(529, 62, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2362;s:6:"height";i:1970;s:4:"file";s:26:"2017/06/4.4-sapin-noir.jpg";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"4.4-sapin-noir-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"4.4-sapin-noir-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:26:"4.4-sapin-noir-768x641.jpg";s:5:"width";i:768;s:6:"height";i:641;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:27:"4.4-sapin-noir-1024x854.jpg";s:5:"width";i:1024;s:6:"height";i:854;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:26:"4.4-sapin-noir-640x200.jpg";s:5:"width";i:640;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-medium";a:4:{s:4:"file";s:27:"4.4-sapin-noir-1280x400.jpg";s:5:"width";i:1280;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-large";a:4:{s:4:"file";s:27:"4.4-sapin-noir-1440x400.jpg";s:5:"width";i:1440;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-xlarge";a:4:{s:4:"file";s:27:"4.4-sapin-noir-1920x400.jpg";s:5:"width";i:1920;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fp-small";a:4:{s:4:"file";s:26:"4.4-sapin-noir-640x534.jpg";s:5:"width";i:640;s:6:"height";i:534;s:9:"mime-type";s:10:"image/jpeg";}s:9:"fp-medium";a:4:{s:4:"file";s:27:"4.4-sapin-noir-1024x854.jpg";s:5:"width";i:1024;s:6:"height";i:854;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fp-large";a:4:{s:4:"file";s:28:"4.4-sapin-noir-1200x1001.jpg";s:5:"width";i:1200;s:6:"height";i:1001;s:9:"mime-type";s:10:"image/jpeg";}s:9:"fp-xlarge";a:4:{s:4:"file";s:28:"4.4-sapin-noir-1920x1601.jpg";s:5:"width";i:1920;s:6:"height";i:1601;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(530, 63, '_wp_attached_file', '2017/06/Chris2.396.jpg'),
(531, 63, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2362;s:6:"height";i:1970;s:4:"file";s:22:"2017/06/Chris2.396.jpg";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"Chris2.396-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"Chris2.396-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"Chris2.396-768x641.jpg";s:5:"width";i:768;s:6:"height";i:641;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"Chris2.396-1024x854.jpg";s:5:"width";i:1024;s:6:"height";i:854;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:22:"Chris2.396-640x200.jpg";s:5:"width";i:640;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-medium";a:4:{s:4:"file";s:23:"Chris2.396-1280x400.jpg";s:5:"width";i:1280;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-large";a:4:{s:4:"file";s:23:"Chris2.396-1440x400.jpg";s:5:"width";i:1440;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-xlarge";a:4:{s:4:"file";s:23:"Chris2.396-1920x400.jpg";s:5:"width";i:1920;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fp-small";a:4:{s:4:"file";s:22:"Chris2.396-640x534.jpg";s:5:"width";i:640;s:6:"height";i:534;s:9:"mime-type";s:10:"image/jpeg";}s:9:"fp-medium";a:4:{s:4:"file";s:23:"Chris2.396-1024x854.jpg";s:5:"width";i:1024;s:6:"height";i:854;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fp-large";a:4:{s:4:"file";s:24:"Chris2.396-1200x1001.jpg";s:5:"width";i:1200;s:6:"height";i:1001;s:9:"mime-type";s:10:"image/jpeg";}s:9:"fp-xlarge";a:4:{s:4:"file";s:24:"Chris2.396-1920x1601.jpg";s:5:"width";i:1920;s:6:"height";i:1601;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(532, 64, '_wp_attached_file', '2017/06/Dad1.401.jpg'),
(533, 64, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2362;s:6:"height";i:1970;s:4:"file";s:20:"2017/06/Dad1.401.jpg";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"Dad1.401-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"Dad1.401-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"Dad1.401-768x641.jpg";s:5:"width";i:768;s:6:"height";i:641;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"Dad1.401-1024x854.jpg";s:5:"width";i:1024;s:6:"height";i:854;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:20:"Dad1.401-640x200.jpg";s:5:"width";i:640;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-medium";a:4:{s:4:"file";s:21:"Dad1.401-1280x400.jpg";s:5:"width";i:1280;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-large";a:4:{s:4:"file";s:21:"Dad1.401-1440x400.jpg";s:5:"width";i:1440;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-xlarge";a:4:{s:4:"file";s:21:"Dad1.401-1920x400.jpg";s:5:"width";i:1920;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fp-small";a:4:{s:4:"file";s:20:"Dad1.401-640x534.jpg";s:5:"width";i:640;s:6:"height";i:534;s:9:"mime-type";s:10:"image/jpeg";}s:9:"fp-medium";a:4:{s:4:"file";s:21:"Dad1.401-1024x854.jpg";s:5:"width";i:1024;s:6:"height";i:854;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fp-large";a:4:{s:4:"file";s:22:"Dad1.401-1200x1001.jpg";s:5:"width";i:1200;s:6:"height";i:1001;s:9:"mime-type";s:10:"image/jpeg";}s:9:"fp-xlarge";a:4:{s:4:"file";s:22:"Dad1.401-1920x1601.jpg";s:5:"width";i:1920;s:6:"height";i:1601;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(534, 65, '_wp_attached_file', '2017/06/Dad1.jpg'),
(535, 65, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2362;s:6:"height";i:1970;s:4:"file";s:16:"2017/06/Dad1.jpg";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"Dad1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"Dad1-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:16:"Dad1-768x641.jpg";s:5:"width";i:768;s:6:"height";i:641;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:17:"Dad1-1024x854.jpg";s:5:"width";i:1024;s:6:"height";i:854;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:16:"Dad1-640x200.jpg";s:5:"width";i:640;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-medium";a:4:{s:4:"file";s:17:"Dad1-1280x400.jpg";s:5:"width";i:1280;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-large";a:4:{s:4:"file";s:17:"Dad1-1440x400.jpg";s:5:"width";i:1440;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-xlarge";a:4:{s:4:"file";s:17:"Dad1-1920x400.jpg";s:5:"width";i:1920;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fp-small";a:4:{s:4:"file";s:16:"Dad1-640x534.jpg";s:5:"width";i:640;s:6:"height";i:534;s:9:"mime-type";s:10:"image/jpeg";}s:9:"fp-medium";a:4:{s:4:"file";s:17:"Dad1-1024x854.jpg";s:5:"width";i:1024;s:6:"height";i:854;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fp-large";a:4:{s:4:"file";s:18:"Dad1-1200x1001.jpg";s:5:"width";i:1200;s:6:"height";i:1001;s:9:"mime-type";s:10:"image/jpeg";}s:9:"fp-xlarge";a:4:{s:4:"file";s:18:"Dad1-1920x1601.jpg";s:5:"width";i:1920;s:6:"height";i:1601;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(536, 66, '_wp_attached_file', '2017/06/Dad2.400.jpg') ;
INSERT INTO `wp_2k17_wp_examenpostmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(537, 66, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2362;s:6:"height";i:1970;s:4:"file";s:20:"2017/06/Dad2.400.jpg";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"Dad2.400-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"Dad2.400-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"Dad2.400-768x641.jpg";s:5:"width";i:768;s:6:"height";i:641;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"Dad2.400-1024x854.jpg";s:5:"width";i:1024;s:6:"height";i:854;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:20:"Dad2.400-640x200.jpg";s:5:"width";i:640;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-medium";a:4:{s:4:"file";s:21:"Dad2.400-1280x400.jpg";s:5:"width";i:1280;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-large";a:4:{s:4:"file";s:21:"Dad2.400-1440x400.jpg";s:5:"width";i:1440;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-xlarge";a:4:{s:4:"file";s:21:"Dad2.400-1920x400.jpg";s:5:"width";i:1920;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fp-small";a:4:{s:4:"file";s:20:"Dad2.400-640x534.jpg";s:5:"width";i:640;s:6:"height";i:534;s:9:"mime-type";s:10:"image/jpeg";}s:9:"fp-medium";a:4:{s:4:"file";s:21:"Dad2.400-1024x854.jpg";s:5:"width";i:1024;s:6:"height";i:854;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fp-large";a:4:{s:4:"file";s:22:"Dad2.400-1200x1001.jpg";s:5:"width";i:1200;s:6:"height";i:1001;s:9:"mime-type";s:10:"image/jpeg";}s:9:"fp-xlarge";a:4:{s:4:"file";s:22:"Dad2.400-1920x1601.jpg";s:5:"width";i:1920;s:6:"height";i:1601;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(538, 56, '_edit_last', '1'),
(540, 67, 'image_une', '61'),
(541, 67, '_image_une', 'field_594904c1e0d48'),
(542, 67, 'image_deux', '63'),
(543, 67, '_image_deux', 'field_594904d9e0d49'),
(544, 67, 'image_trois', '60'),
(545, 67, '_image_trois', 'field_594904e4e0d4a'),
(546, 67, 'image_quatre', ''),
(547, 67, '_image_quatre', 'field_594904f4e0d4b'),
(548, 67, 'image_cinq', ''),
(549, 67, '_image_cinq', 'field_594904fee0d4c'),
(550, 67, 'image_full', '62'),
(551, 67, '_image_full', 'field_59490509e0d4d'),
(552, 67, '_', 'field_5948ff20dab93'),
(553, 67, 'texte_un', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(554, 67, '_texte_un', 'field_594905307bd5a'),
(555, 67, 'texte_deux', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(556, 67, '_texte_deux', 'field_594905367bd5b'),
(557, 67, 'texte_trois', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(558, 67, '_texte_trois', 'field_5949053a7bd5c'),
(559, 67, 'texte_quatre', ''),
(560, 67, '_texte_quatre', 'field_5949053e7bd5d'),
(561, 67, 'texte_full', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(562, 67, '_texte_full', 'field_594905447bd5e'),
(563, 67, 'texte_cinq', ''),
(564, 67, '_texte_cinq', 'field_594905497bd5f'),
(565, 67, 'extrait_article', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(566, 67, '_extrait_article', 'field_594910d3bf074'),
(567, 67, 'materiaux', '31'),
(568, 67, '_materiaux', 'field_5948fef9dab92'),
(569, 67, 'materiaux_deux', '36'),
(570, 67, '_materiaux_deux', 'field_594901b78c1d6'),
(571, 67, 'materiaux_trois', '29'),
(572, 67, '_materiaux_trois', 'field_594901bf3b634'),
(573, 67, 'nom_du_materiel', 'Caoutchouc'),
(574, 67, '_nom_du_materiel', 'field_5949014322be1'),
(575, 67, 'nom_du_materiel_deux', 'Métal'),
(576, 67, '_nom_du_materiel_deux', 'field_5949016ad408c'),
(577, 67, 'nom_du_materiel_trois', 'Acajou'),
(578, 67, '_nom_du_materiel_trois', 'field_594901864ff85'),
(579, 67, 'titre_materiel', 'MATÉRIAUX UTILISÉS'),
(580, 67, '_titre_materiel', 'field_5949090b2cb85'),
(581, 58, '_edit_lock', '1497962586:1'),
(587, 73, '_wp_attached_file', '2017/06/untitled.246.jpg'),
(588, 73, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:3543;s:6:"height";i:2956;s:4:"file";s:24:"2017/06/untitled.246.jpg";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"untitled.246-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"untitled.246-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"untitled.246-768x641.jpg";s:5:"width";i:768;s:6:"height";i:641;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"untitled.246-1024x854.jpg";s:5:"width";i:1024;s:6:"height";i:854;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:24:"untitled.246-640x200.jpg";s:5:"width";i:640;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-medium";a:4:{s:4:"file";s:25:"untitled.246-1280x400.jpg";s:5:"width";i:1280;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-large";a:4:{s:4:"file";s:25:"untitled.246-1440x400.jpg";s:5:"width";i:1440;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-xlarge";a:4:{s:4:"file";s:25:"untitled.246-1920x400.jpg";s:5:"width";i:1920;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fp-small";a:4:{s:4:"file";s:24:"untitled.246-640x534.jpg";s:5:"width";i:640;s:6:"height";i:534;s:9:"mime-type";s:10:"image/jpeg";}s:9:"fp-medium";a:4:{s:4:"file";s:25:"untitled.246-1024x854.jpg";s:5:"width";i:1024;s:6:"height";i:854;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fp-large";a:4:{s:4:"file";s:26:"untitled.246-1200x1001.jpg";s:5:"width";i:1200;s:6:"height";i:1001;s:9:"mime-type";s:10:"image/jpeg";}s:9:"fp-xlarge";a:4:{s:4:"file";s:26:"untitled.246-1920x1602.jpg";s:5:"width";i:1920;s:6:"height";i:1602;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(589, 74, '_wp_attached_file', '2017/06/untitled.247.jpg'),
(590, 74, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:3543;s:6:"height";i:2956;s:4:"file";s:24:"2017/06/untitled.247.jpg";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"untitled.247-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"untitled.247-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"untitled.247-768x641.jpg";s:5:"width";i:768;s:6:"height";i:641;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"untitled.247-1024x854.jpg";s:5:"width";i:1024;s:6:"height";i:854;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:24:"untitled.247-640x200.jpg";s:5:"width";i:640;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-medium";a:4:{s:4:"file";s:25:"untitled.247-1280x400.jpg";s:5:"width";i:1280;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-large";a:4:{s:4:"file";s:25:"untitled.247-1440x400.jpg";s:5:"width";i:1440;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-xlarge";a:4:{s:4:"file";s:25:"untitled.247-1920x400.jpg";s:5:"width";i:1920;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fp-small";a:4:{s:4:"file";s:24:"untitled.247-640x534.jpg";s:5:"width";i:640;s:6:"height";i:534;s:9:"mime-type";s:10:"image/jpeg";}s:9:"fp-medium";a:4:{s:4:"file";s:25:"untitled.247-1024x854.jpg";s:5:"width";i:1024;s:6:"height";i:854;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fp-large";a:4:{s:4:"file";s:26:"untitled.247-1200x1001.jpg";s:5:"width";i:1200;s:6:"height";i:1001;s:9:"mime-type";s:10:"image/jpeg";}s:9:"fp-xlarge";a:4:{s:4:"file";s:26:"untitled.247-1920x1602.jpg";s:5:"width";i:1920;s:6:"height";i:1602;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(591, 75, '_wp_attached_file', '2017/06/untitled.248.jpg'),
(592, 75, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:3543;s:6:"height";i:2956;s:4:"file";s:24:"2017/06/untitled.248.jpg";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"untitled.248-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"untitled.248-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"untitled.248-768x641.jpg";s:5:"width";i:768;s:6:"height";i:641;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"untitled.248-1024x854.jpg";s:5:"width";i:1024;s:6:"height";i:854;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:24:"untitled.248-640x200.jpg";s:5:"width";i:640;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-medium";a:4:{s:4:"file";s:25:"untitled.248-1280x400.jpg";s:5:"width";i:1280;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-large";a:4:{s:4:"file";s:25:"untitled.248-1440x400.jpg";s:5:"width";i:1440;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-xlarge";a:4:{s:4:"file";s:25:"untitled.248-1920x400.jpg";s:5:"width";i:1920;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fp-small";a:4:{s:4:"file";s:24:"untitled.248-640x534.jpg";s:5:"width";i:640;s:6:"height";i:534;s:9:"mime-type";s:10:"image/jpeg";}s:9:"fp-medium";a:4:{s:4:"file";s:25:"untitled.248-1024x854.jpg";s:5:"width";i:1024;s:6:"height";i:854;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fp-large";a:4:{s:4:"file";s:26:"untitled.248-1200x1001.jpg";s:5:"width";i:1200;s:6:"height";i:1001;s:9:"mime-type";s:10:"image/jpeg";}s:9:"fp-xlarge";a:4:{s:4:"file";s:26:"untitled.248-1920x1602.jpg";s:5:"width";i:1920;s:6:"height";i:1602;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(593, 58, '_edit_last', '1'),
(595, 76, 'image_une', '73'),
(596, 76, '_image_une', 'field_594904c1e0d48'),
(597, 76, 'image_deux', '74'),
(598, 76, '_image_deux', 'field_594904d9e0d49'),
(599, 76, 'image_trois', '75'),
(600, 76, '_image_trois', 'field_594904e4e0d4a'),
(601, 76, 'image_quatre', ''),
(602, 76, '_image_quatre', 'field_594904f4e0d4b'),
(603, 76, 'image_cinq', ''),
(604, 76, '_image_cinq', 'field_594904fee0d4c'),
(605, 76, 'image_full', ''),
(606, 76, '_image_full', 'field_59490509e0d4d'),
(607, 76, '_', 'field_5948ff20dab93'),
(608, 76, 'texte_un', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(609, 76, '_texte_un', 'field_594905307bd5a'),
(610, 76, 'texte_deux', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(611, 76, '_texte_deux', 'field_594905367bd5b'),
(612, 76, 'texte_trois', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(613, 76, '_texte_trois', 'field_5949053a7bd5c'),
(614, 76, 'texte_quatre', ''),
(615, 76, '_texte_quatre', 'field_5949053e7bd5d'),
(616, 76, 'texte_full', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(617, 76, '_texte_full', 'field_594905447bd5e'),
(618, 76, 'texte_cinq', ''),
(619, 76, '_texte_cinq', 'field_594905497bd5f'),
(620, 76, 'extrait_article', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(621, 76, '_extrait_article', 'field_594910d3bf074'),
(622, 76, 'materiaux', '31'),
(623, 76, '_materiaux', 'field_5948fef9dab92'),
(624, 76, 'materiaux_deux', '36'),
(625, 76, '_materiaux_deux', 'field_594901b78c1d6'),
(626, 76, 'materiaux_trois', '29'),
(627, 76, '_materiaux_trois', 'field_594901bf3b634'),
(628, 76, 'nom_du_materiel', 'Caoutchouc'),
(629, 76, '_nom_du_materiel', 'field_5949014322be1'),
(630, 76, 'nom_du_materiel_deux', 'Métal'),
(631, 76, '_nom_du_materiel_deux', 'field_5949016ad408c'),
(632, 76, 'nom_du_materiel_trois', 'Acajou'),
(633, 76, '_nom_du_materiel_trois', 'field_594901864ff85'),
(634, 76, 'titre_materiel', 'MATÉRIAUX UTILISÉS'),
(635, 76, '_titre_materiel', 'field_5949090b2cb85'),
(637, 77, 'image_une', '73'),
(638, 77, '_image_une', 'field_594904c1e0d48'),
(639, 77, 'image_deux', '74'),
(640, 77, '_image_deux', 'field_594904d9e0d49'),
(641, 77, 'image_trois', '75'),
(642, 77, '_image_trois', 'field_594904e4e0d4a'),
(643, 77, 'image_quatre', ''),
(644, 77, '_image_quatre', 'field_594904f4e0d4b') ;
INSERT INTO `wp_2k17_wp_examenpostmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(645, 77, 'image_cinq', ''),
(646, 77, '_image_cinq', 'field_594904fee0d4c'),
(647, 77, 'image_full', ''),
(648, 77, '_image_full', 'field_59490509e0d4d'),
(649, 77, '_', 'field_5948ff20dab93'),
(650, 77, 'texte_un', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(651, 77, '_texte_un', 'field_594905307bd5a'),
(652, 77, 'texte_deux', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(653, 77, '_texte_deux', 'field_594905367bd5b'),
(654, 77, 'texte_trois', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(655, 77, '_texte_trois', 'field_5949053a7bd5c'),
(656, 77, 'texte_quatre', ''),
(657, 77, '_texte_quatre', 'field_5949053e7bd5d'),
(658, 77, 'texte_full', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(659, 77, '_texte_full', 'field_594905447bd5e'),
(660, 77, 'texte_cinq', ''),
(661, 77, '_texte_cinq', 'field_594905497bd5f'),
(662, 77, 'extrait_article', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(663, 77, '_extrait_article', 'field_594910d3bf074'),
(664, 77, 'materiaux', '31'),
(665, 77, '_materiaux', 'field_5948fef9dab92'),
(666, 77, 'materiaux_deux', '36'),
(667, 77, '_materiaux_deux', 'field_594901b78c1d6'),
(668, 77, 'materiaux_trois', '29'),
(669, 77, '_materiaux_trois', 'field_594901bf3b634'),
(670, 77, 'nom_du_materiel', 'Caoutchouc'),
(671, 77, '_nom_du_materiel', 'field_5949014322be1'),
(672, 77, 'nom_du_materiel_deux', 'Métal'),
(673, 77, '_nom_du_materiel_deux', 'field_5949016ad408c'),
(674, 77, 'nom_du_materiel_trois', 'Acajou'),
(675, 77, '_nom_du_materiel_trois', 'field_594901864ff85'),
(676, 77, 'titre_materiel', 'MATÉRIAUX UTILISÉS'),
(677, 77, '_titre_materiel', 'field_5949090b2cb85'),
(679, 78, 'image_une', '73'),
(680, 78, '_image_une', 'field_594904c1e0d48'),
(681, 78, 'image_deux', '74'),
(682, 78, '_image_deux', 'field_594904d9e0d49'),
(683, 78, 'image_trois', '75'),
(684, 78, '_image_trois', 'field_594904e4e0d4a'),
(685, 78, 'image_quatre', ''),
(686, 78, '_image_quatre', 'field_594904f4e0d4b'),
(687, 78, 'image_cinq', ''),
(688, 78, '_image_cinq', 'field_594904fee0d4c'),
(689, 78, 'image_full', ''),
(690, 78, '_image_full', 'field_59490509e0d4d'),
(691, 78, '_', 'field_5948ff20dab93'),
(692, 78, 'texte_un', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(693, 78, '_texte_un', 'field_594905307bd5a'),
(694, 78, 'texte_deux', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(695, 78, '_texte_deux', 'field_594905367bd5b'),
(696, 78, 'texte_trois', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(697, 78, '_texte_trois', 'field_5949053a7bd5c'),
(698, 78, 'texte_quatre', ''),
(699, 78, '_texte_quatre', 'field_5949053e7bd5d'),
(700, 78, 'texte_full', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(701, 78, '_texte_full', 'field_594905447bd5e'),
(702, 78, 'texte_cinq', ''),
(703, 78, '_texte_cinq', 'field_594905497bd5f'),
(704, 78, 'extrait_article', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(705, 78, '_extrait_article', 'field_594910d3bf074'),
(706, 78, 'materiaux', ''),
(707, 78, '_materiaux', 'field_5948fef9dab92'),
(708, 78, 'materiaux_deux', ''),
(709, 78, '_materiaux_deux', 'field_594901b78c1d6'),
(710, 78, 'materiaux_trois', ''),
(711, 78, '_materiaux_trois', 'field_594901bf3b634'),
(712, 78, 'nom_du_materiel', ''),
(713, 78, '_nom_du_materiel', 'field_5949014322be1'),
(714, 78, 'nom_du_materiel_deux', ''),
(715, 78, '_nom_du_materiel_deux', 'field_5949016ad408c'),
(716, 78, 'nom_du_materiel_trois', ''),
(717, 78, '_nom_du_materiel_trois', 'field_594901864ff85'),
(718, 78, 'titre_materiel', 'MATÉRIAUX UTILISÉS'),
(719, 78, '_titre_materiel', 'field_5949090b2cb85'),
(721, 79, 'image_une', '73'),
(722, 79, '_image_une', 'field_594904c1e0d48'),
(723, 79, 'image_deux', '74'),
(724, 79, '_image_deux', 'field_594904d9e0d49'),
(725, 79, 'image_trois', '75'),
(726, 79, '_image_trois', 'field_594904e4e0d4a'),
(727, 79, 'image_quatre', ''),
(728, 79, '_image_quatre', 'field_594904f4e0d4b'),
(729, 79, 'image_cinq', ''),
(730, 79, '_image_cinq', 'field_594904fee0d4c'),
(731, 79, 'image_full', ''),
(732, 79, '_image_full', 'field_59490509e0d4d'),
(733, 79, '_', 'field_5948ff20dab93'),
(734, 79, 'texte_un', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(735, 79, '_texte_un', 'field_594905307bd5a'),
(736, 79, 'texte_deux', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(737, 79, '_texte_deux', 'field_594905367bd5b'),
(738, 79, 'texte_trois', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(739, 79, '_texte_trois', 'field_5949053a7bd5c'),
(740, 79, 'texte_quatre', ''),
(741, 79, '_texte_quatre', 'field_5949053e7bd5d'),
(742, 79, 'texte_full', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(743, 79, '_texte_full', 'field_594905447bd5e'),
(744, 79, 'texte_cinq', ''),
(745, 79, '_texte_cinq', 'field_594905497bd5f'),
(746, 79, 'extrait_article', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. ') ;
INSERT INTO `wp_2k17_wp_examenpostmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(747, 79, '_extrait_article', 'field_594910d3bf074'),
(748, 79, 'materiaux', ''),
(749, 79, '_materiaux', 'field_5948fef9dab92'),
(750, 79, 'materiaux_deux', '29'),
(751, 79, '_materiaux_deux', 'field_594901b78c1d6'),
(752, 79, 'materiaux_trois', '36'),
(753, 79, '_materiaux_trois', 'field_594901bf3b634'),
(754, 79, 'nom_du_materiel', ''),
(755, 79, '_nom_du_materiel', 'field_5949014322be1'),
(756, 79, 'nom_du_materiel_deux', 'Acajou'),
(757, 79, '_nom_du_materiel_deux', 'field_5949016ad408c'),
(758, 79, 'nom_du_materiel_trois', 'Métal'),
(759, 79, '_nom_du_materiel_trois', 'field_594901864ff85'),
(760, 79, 'titre_materiel', 'MATÉRIAUX UTILISÉS'),
(761, 79, '_titre_materiel', 'field_5949090b2cb85'),
(762, 57, '_edit_lock', '1497962522:1'),
(763, 80, '_wp_attached_file', '2017/06/2.1-portes-medium-corps-tripli-pin.jpg'),
(764, 80, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2953;s:6:"height";i:2463;s:4:"file";s:46:"2017/06/2.1-portes-medium-corps-tripli-pin.jpg";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:46:"2.1-portes-medium-corps-tripli-pin-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:46:"2.1-portes-medium-corps-tripli-pin-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:46:"2.1-portes-medium-corps-tripli-pin-768x641.jpg";s:5:"width";i:768;s:6:"height";i:641;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:47:"2.1-portes-medium-corps-tripli-pin-1024x854.jpg";s:5:"width";i:1024;s:6:"height";i:854;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:46:"2.1-portes-medium-corps-tripli-pin-640x200.jpg";s:5:"width";i:640;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-medium";a:4:{s:4:"file";s:47:"2.1-portes-medium-corps-tripli-pin-1280x400.jpg";s:5:"width";i:1280;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-large";a:4:{s:4:"file";s:47:"2.1-portes-medium-corps-tripli-pin-1440x400.jpg";s:5:"width";i:1440;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-xlarge";a:4:{s:4:"file";s:47:"2.1-portes-medium-corps-tripli-pin-1920x400.jpg";s:5:"width";i:1920;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fp-small";a:4:{s:4:"file";s:46:"2.1-portes-medium-corps-tripli-pin-640x534.jpg";s:5:"width";i:640;s:6:"height";i:534;s:9:"mime-type";s:10:"image/jpeg";}s:9:"fp-medium";a:4:{s:4:"file";s:47:"2.1-portes-medium-corps-tripli-pin-1024x854.jpg";s:5:"width";i:1024;s:6:"height";i:854;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fp-large";a:4:{s:4:"file";s:48:"2.1-portes-medium-corps-tripli-pin-1200x1001.jpg";s:5:"width";i:1200;s:6:"height";i:1001;s:9:"mime-type";s:10:"image/jpeg";}s:9:"fp-xlarge";a:4:{s:4:"file";s:48:"2.1-portes-medium-corps-tripli-pin-1920x1601.jpg";s:5:"width";i:1920;s:6:"height";i:1601;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(765, 81, '_wp_attached_file', '2017/06/3-plis-epicÇa-strat-orange-murs-bleus-foncÇs.jpg'),
(766, 81, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2362;s:6:"height";i:1970;s:4:"file";s:60:"2017/06/3-plis-epicÇa-strat-orange-murs-bleus-foncÇs.jpg";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:60:"3-plis-epicÇa-strat-orange-murs-bleus-foncÇs-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:60:"3-plis-epicÇa-strat-orange-murs-bleus-foncÇs-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:60:"3-plis-epicÇa-strat-orange-murs-bleus-foncÇs-768x641.jpg";s:5:"width";i:768;s:6:"height";i:641;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:61:"3-plis-epicÇa-strat-orange-murs-bleus-foncÇs-1024x854.jpg";s:5:"width";i:1024;s:6:"height";i:854;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:60:"3-plis-epicÇa-strat-orange-murs-bleus-foncÇs-640x200.jpg";s:5:"width";i:640;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-medium";a:4:{s:4:"file";s:61:"3-plis-epicÇa-strat-orange-murs-bleus-foncÇs-1280x400.jpg";s:5:"width";i:1280;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-large";a:4:{s:4:"file";s:61:"3-plis-epicÇa-strat-orange-murs-bleus-foncÇs-1440x400.jpg";s:5:"width";i:1440;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-xlarge";a:4:{s:4:"file";s:61:"3-plis-epicÇa-strat-orange-murs-bleus-foncÇs-1920x400.jpg";s:5:"width";i:1920;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fp-small";a:4:{s:4:"file";s:60:"3-plis-epicÇa-strat-orange-murs-bleus-foncÇs-640x534.jpg";s:5:"width";i:640;s:6:"height";i:534;s:9:"mime-type";s:10:"image/jpeg";}s:9:"fp-medium";a:4:{s:4:"file";s:61:"3-plis-epicÇa-strat-orange-murs-bleus-foncÇs-1024x854.jpg";s:5:"width";i:1024;s:6:"height";i:854;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fp-large";a:4:{s:4:"file";s:62:"3-plis-epicÇa-strat-orange-murs-bleus-foncÇs-1200x1001.jpg";s:5:"width";i:1200;s:6:"height";i:1001;s:9:"mime-type";s:10:"image/jpeg";}s:9:"fp-xlarge";a:4:{s:4:"file";s:62:"3-plis-epicÇa-strat-orange-murs-bleus-foncÇs-1920x1601.jpg";s:5:"width";i:1920;s:6:"height";i:1601;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(767, 82, '_wp_attached_file', '2017/06/3-portes-tripli-pin-corps-medium.jpg'),
(768, 82, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2953;s:6:"height";i:2463;s:4:"file";s:44:"2017/06/3-portes-tripli-pin-corps-medium.jpg";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:44:"3-portes-tripli-pin-corps-medium-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:44:"3-portes-tripli-pin-corps-medium-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:44:"3-portes-tripli-pin-corps-medium-768x641.jpg";s:5:"width";i:768;s:6:"height";i:641;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:45:"3-portes-tripli-pin-corps-medium-1024x854.jpg";s:5:"width";i:1024;s:6:"height";i:854;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:44:"3-portes-tripli-pin-corps-medium-640x200.jpg";s:5:"width";i:640;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-medium";a:4:{s:4:"file";s:45:"3-portes-tripli-pin-corps-medium-1280x400.jpg";s:5:"width";i:1280;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-large";a:4:{s:4:"file";s:45:"3-portes-tripli-pin-corps-medium-1440x400.jpg";s:5:"width";i:1440;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-xlarge";a:4:{s:4:"file";s:45:"3-portes-tripli-pin-corps-medium-1920x400.jpg";s:5:"width";i:1920;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fp-small";a:4:{s:4:"file";s:44:"3-portes-tripli-pin-corps-medium-640x534.jpg";s:5:"width";i:640;s:6:"height";i:534;s:9:"mime-type";s:10:"image/jpeg";}s:9:"fp-medium";a:4:{s:4:"file";s:45:"3-portes-tripli-pin-corps-medium-1024x854.jpg";s:5:"width";i:1024;s:6:"height";i:854;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fp-large";a:4:{s:4:"file";s:46:"3-portes-tripli-pin-corps-medium-1200x1001.jpg";s:5:"width";i:1200;s:6:"height";i:1001;s:9:"mime-type";s:10:"image/jpeg";}s:9:"fp-xlarge";a:4:{s:4:"file";s:46:"3-portes-tripli-pin-corps-medium-1920x1601.jpg";s:5:"width";i:1920;s:6:"height";i:1601;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(769, 83, '_wp_attached_file', '2017/06/Amenagement-Christian-1.tif'),
(770, 84, '_wp_attached_file', '2017/06/Amenagement-Christian-2.tif'),
(771, 85, '_wp_attached_file', '2017/06/banc-atelier-1-face.jpg'),
(772, 85, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:4724;s:6:"height";i:3953;s:4:"file";s:31:"2017/06/banc-atelier-1-face.jpg";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"banc-atelier-1-face-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"banc-atelier-1-face-300x251.jpg";s:5:"width";i:300;s:6:"height";i:251;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:31:"banc-atelier-1-face-768x643.jpg";s:5:"width";i:768;s:6:"height";i:643;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"banc-atelier-1-face-1024x857.jpg";s:5:"width";i:1024;s:6:"height";i:857;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:31:"banc-atelier-1-face-640x200.jpg";s:5:"width";i:640;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-medium";a:4:{s:4:"file";s:32:"banc-atelier-1-face-1280x400.jpg";s:5:"width";i:1280;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-large";a:4:{s:4:"file";s:32:"banc-atelier-1-face-1440x400.jpg";s:5:"width";i:1440;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-xlarge";a:4:{s:4:"file";s:32:"banc-atelier-1-face-1920x400.jpg";s:5:"width";i:1920;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fp-small";a:4:{s:4:"file";s:31:"banc-atelier-1-face-640x536.jpg";s:5:"width";i:640;s:6:"height";i:536;s:9:"mime-type";s:10:"image/jpeg";}s:9:"fp-medium";a:4:{s:4:"file";s:32:"banc-atelier-1-face-1024x857.jpg";s:5:"width";i:1024;s:6:"height";i:857;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fp-large";a:4:{s:4:"file";s:33:"banc-atelier-1-face-1200x1004.jpg";s:5:"width";i:1200;s:6:"height";i:1004;s:9:"mime-type";s:10:"image/jpeg";}s:9:"fp-xlarge";a:4:{s:4:"file";s:33:"banc-atelier-1-face-1920x1607.jpg";s:5:"width";i:1920;s:6:"height";i:1607;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(773, 86, '_wp_attached_file', '2017/06/Echelle-gris-gris.jpg'),
(774, 86, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2362;s:6:"height";i:1970;s:4:"file";s:29:"2017/06/Echelle-gris-gris.jpg";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"Echelle-gris-gris-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"Echelle-gris-gris-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:29:"Echelle-gris-gris-768x641.jpg";s:5:"width";i:768;s:6:"height";i:641;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:30:"Echelle-gris-gris-1024x854.jpg";s:5:"width";i:1024;s:6:"height";i:854;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:29:"Echelle-gris-gris-640x200.jpg";s:5:"width";i:640;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-medium";a:4:{s:4:"file";s:30:"Echelle-gris-gris-1280x400.jpg";s:5:"width";i:1280;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-large";a:4:{s:4:"file";s:30:"Echelle-gris-gris-1440x400.jpg";s:5:"width";i:1440;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-xlarge";a:4:{s:4:"file";s:30:"Echelle-gris-gris-1920x400.jpg";s:5:"width";i:1920;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fp-small";a:4:{s:4:"file";s:29:"Echelle-gris-gris-640x534.jpg";s:5:"width";i:640;s:6:"height";i:534;s:9:"mime-type";s:10:"image/jpeg";}s:9:"fp-medium";a:4:{s:4:"file";s:30:"Echelle-gris-gris-1024x854.jpg";s:5:"width";i:1024;s:6:"height";i:854;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fp-large";a:4:{s:4:"file";s:31:"Echelle-gris-gris-1200x1001.jpg";s:5:"width";i:1200;s:6:"height";i:1001;s:9:"mime-type";s:10:"image/jpeg";}s:9:"fp-xlarge";a:4:{s:4:"file";s:31:"Echelle-gris-gris-1920x1601.jpg";s:5:"width";i:1920;s:6:"height";i:1601;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(775, 87, '_wp_attached_file', '2017/06/final-1.jpg'),
(776, 87, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2362;s:6:"height";i:2496;s:4:"file";s:19:"2017/06/final-1.jpg";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"final-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"final-1-284x300.jpg";s:5:"width";i:284;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"final-1-768x812.jpg";s:5:"width";i:768;s:6:"height";i:812;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:20:"final-1-969x1024.jpg";s:5:"width";i:969;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:19:"final-1-640x200.jpg";s:5:"width";i:640;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-medium";a:4:{s:4:"file";s:20:"final-1-1280x400.jpg";s:5:"width";i:1280;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-large";a:4:{s:4:"file";s:20:"final-1-1440x400.jpg";s:5:"width";i:1440;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-xlarge";a:4:{s:4:"file";s:20:"final-1-1920x400.jpg";s:5:"width";i:1920;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fp-small";a:4:{s:4:"file";s:19:"final-1-640x676.jpg";s:5:"width";i:640;s:6:"height";i:676;s:9:"mime-type";s:10:"image/jpeg";}s:9:"fp-medium";a:4:{s:4:"file";s:21:"final-1-1024x1082.jpg";s:5:"width";i:1024;s:6:"height";i:1082;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fp-large";a:4:{s:4:"file";s:21:"final-1-1200x1268.jpg";s:5:"width";i:1200;s:6:"height";i:1268;s:9:"mime-type";s:10:"image/jpeg";}s:9:"fp-xlarge";a:4:{s:4:"file";s:21:"final-1-1920x2029.jpg";s:5:"width";i:1920;s:6:"height";i:2029;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(777, 57, '_edit_last', '1'),
(779, 88, 'image_une', '81'),
(780, 88, '_image_une', 'field_594904c1e0d48'),
(781, 88, 'image_deux', '80'),
(782, 88, '_image_deux', 'field_594904d9e0d49'),
(783, 88, 'image_trois', '82'),
(784, 88, '_image_trois', 'field_594904e4e0d4a'),
(785, 88, 'image_quatre', ''),
(786, 88, '_image_quatre', 'field_594904f4e0d4b'),
(787, 88, 'image_cinq', ''),
(788, 88, '_image_cinq', 'field_594904fee0d4c'),
(789, 88, 'image_full', '85'),
(790, 88, '_image_full', 'field_59490509e0d4d'),
(791, 88, '_', 'field_5948ff20dab93'),
(792, 88, 'texte_un', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(793, 88, '_texte_un', 'field_594905307bd5a'),
(794, 88, 'texte_deux', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(795, 88, '_texte_deux', 'field_594905367bd5b'),
(796, 88, 'texte_trois', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(797, 88, '_texte_trois', 'field_5949053a7bd5c'),
(798, 88, 'texte_quatre', ''),
(799, 88, '_texte_quatre', 'field_5949053e7bd5d'),
(800, 88, 'texte_full', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(801, 88, '_texte_full', 'field_594905447bd5e'),
(802, 88, 'texte_cinq', ''),
(803, 88, '_texte_cinq', 'field_594905497bd5f'),
(804, 88, 'extrait_article', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(805, 88, '_extrait_article', 'field_594910d3bf074'),
(806, 88, 'materiaux', '31'),
(807, 88, '_materiaux', 'field_5948fef9dab92'),
(808, 88, 'materiaux_deux', '36'),
(809, 88, '_materiaux_deux', 'field_594901b78c1d6'),
(810, 88, 'materiaux_trois', '29'),
(811, 88, '_materiaux_trois', 'field_594901bf3b634'),
(812, 88, 'nom_du_materiel', 'Caoutchouc'),
(813, 88, '_nom_du_materiel', 'field_5949014322be1'),
(814, 88, 'nom_du_materiel_deux', 'Métal'),
(815, 88, '_nom_du_materiel_deux', 'field_5949016ad408c'),
(816, 88, 'nom_du_materiel_trois', 'Acajou'),
(817, 88, '_nom_du_materiel_trois', 'field_594901864ff85'),
(818, 88, 'titre_materiel', 'MATÉRIAUX UTILISÉS'),
(819, 88, '_titre_materiel', 'field_5949090b2cb85'),
(821, 89, 'image_une', '81'),
(822, 89, '_image_une', 'field_594904c1e0d48'),
(823, 89, 'image_deux', '80'),
(824, 89, '_image_deux', 'field_594904d9e0d49'),
(825, 89, 'image_trois', '82'),
(826, 89, '_image_trois', 'field_594904e4e0d4a'),
(827, 89, 'image_quatre', ''),
(828, 89, '_image_quatre', 'field_594904f4e0d4b'),
(829, 89, 'image_cinq', ''),
(830, 89, '_image_cinq', 'field_594904fee0d4c'),
(831, 89, 'image_full', '85'),
(832, 89, '_image_full', 'field_59490509e0d4d'),
(833, 89, '_', 'field_5948ff20dab93'),
(834, 89, 'texte_un', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(835, 89, '_texte_un', 'field_594905307bd5a'),
(836, 89, 'texte_deux', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(837, 89, '_texte_deux', 'field_594905367bd5b'),
(838, 89, 'texte_trois', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(839, 89, '_texte_trois', 'field_5949053a7bd5c'),
(840, 89, 'texte_quatre', ''),
(841, 89, '_texte_quatre', 'field_5949053e7bd5d'),
(842, 89, 'texte_full', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(843, 89, '_texte_full', 'field_594905447bd5e'),
(844, 89, 'texte_cinq', ''),
(845, 89, '_texte_cinq', 'field_594905497bd5f'),
(846, 89, 'extrait_article', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(847, 89, '_extrait_article', 'field_594910d3bf074'),
(848, 89, 'materiaux', '31') ;
INSERT INTO `wp_2k17_wp_examenpostmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(849, 89, '_materiaux', 'field_5948fef9dab92'),
(850, 89, 'materiaux_deux', '36'),
(851, 89, '_materiaux_deux', 'field_594901b78c1d6'),
(852, 89, 'materiaux_trois', '29'),
(853, 89, '_materiaux_trois', 'field_594901bf3b634'),
(854, 89, 'nom_du_materiel', 'Caoutchouc'),
(855, 89, '_nom_du_materiel', 'field_5949014322be1'),
(856, 89, 'nom_du_materiel_deux', 'Métal'),
(857, 89, '_nom_du_materiel_deux', 'field_5949016ad408c'),
(858, 89, 'nom_du_materiel_trois', 'Acajou'),
(859, 89, '_nom_du_materiel_trois', 'field_594901864ff85'),
(860, 89, 'titre_materiel', 'MATÉRIAUX UTILISÉS'),
(861, 89, '_titre_materiel', 'field_5949090b2cb85'),
(866, 90, '_menu_item_type', 'post_type'),
(867, 90, '_menu_item_menu_item_parent', '18'),
(868, 90, '_menu_item_object_id', '57'),
(869, 90, '_menu_item_object', 'post'),
(870, 90, '_menu_item_target', ''),
(871, 90, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(872, 90, '_menu_item_xfn', ''),
(873, 90, '_menu_item_url', ''),
(875, 91, '_menu_item_type', 'post_type'),
(876, 91, '_menu_item_menu_item_parent', '18'),
(877, 91, '_menu_item_object_id', '58'),
(878, 91, '_menu_item_object', 'post'),
(879, 91, '_menu_item_target', ''),
(880, 91, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(881, 91, '_menu_item_xfn', ''),
(882, 91, '_menu_item_url', ''),
(884, 92, '_menu_item_type', 'post_type'),
(885, 92, '_menu_item_menu_item_parent', '18'),
(886, 92, '_menu_item_object_id', '56'),
(887, 92, '_menu_item_object', 'post'),
(888, 92, '_menu_item_target', ''),
(889, 92, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(890, 92, '_menu_item_xfn', ''),
(891, 92, '_menu_item_url', ''),
(893, 58, '_wp_trash_meta_status', 'publish'),
(894, 58, '_wp_trash_meta_time', '1497962730'),
(895, 58, '_wp_desired_post_slug', 'bibiliotheque'),
(896, 93, '_thumbnail_id', '97'),
(897, 93, 'materiaux', '31'),
(898, 93, '_materiaux', 'field_5948fef9dab92'),
(899, 93, '_', 'field_5948ff20dab93'),
(900, 93, 'materiaux_deux', '36'),
(901, 93, '_materiaux_deux', 'field_594901b78c1d6'),
(902, 93, 'materiaux_trois', '29'),
(903, 93, '_materiaux_trois', 'field_594901bf3b634'),
(904, 93, 'nom_du_materiel', 'Caoutchouc'),
(905, 93, '_nom_du_materiel', 'field_5949014322be1'),
(906, 93, 'nom_du_materiel_deux', 'Métal'),
(907, 93, '_nom_du_materiel_deux', 'field_5949016ad408c'),
(908, 93, 'nom_du_materiel_trois', 'Acajou'),
(909, 93, '_nom_du_materiel_trois', 'field_594901864ff85'),
(910, 93, 'image_une', '95'),
(911, 93, '_image_une', 'field_594904c1e0d48'),
(912, 93, 'image_deux', '96'),
(913, 93, '_image_deux', 'field_594904d9e0d49'),
(914, 93, 'image_trois', '97'),
(915, 93, '_image_trois', 'field_594904e4e0d4a'),
(916, 93, 'image_quatre', ''),
(917, 93, '_image_quatre', 'field_594904f4e0d4b'),
(918, 93, 'image_cinq', ''),
(919, 93, '_image_cinq', 'field_594904fee0d4c'),
(920, 93, 'image_full', '98'),
(921, 93, '_image_full', 'field_59490509e0d4d'),
(922, 93, 'texte_un', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(923, 93, '_texte_un', 'field_594905307bd5a'),
(924, 93, 'texte_deux', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(925, 93, '_texte_deux', 'field_594905367bd5b'),
(926, 93, 'texte_trois', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(927, 93, '_texte_trois', 'field_5949053a7bd5c'),
(928, 93, 'texte_quatre', ''),
(929, 93, '_texte_quatre', 'field_5949053e7bd5d'),
(930, 93, 'texte_full', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(931, 93, '_texte_full', 'field_594905447bd5e'),
(932, 93, 'texte_cinq', ''),
(933, 93, '_texte_cinq', 'field_594905497bd5f'),
(934, 93, 'titre_materiel', 'MATÉRIAUX UTILISÉS'),
(935, 93, '_titre_materiel', 'field_5949090b2cb85'),
(936, 93, 'extrait_article', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(937, 93, '_extrait_article', 'field_594910d3bf074'),
(939, 93, '_dp_original', '57'),
(940, 93, '_edit_lock', '1497962720:1'),
(941, 94, '_wp_attached_file', '2017/06/CP-peuplier-gris-rose.jpg'),
(942, 94, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2362;s:6:"height";i:1970;s:4:"file";s:33:"2017/06/CP-peuplier-gris-rose.jpg";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"CP-peuplier-gris-rose-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:33:"CP-peuplier-gris-rose-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:33:"CP-peuplier-gris-rose-768x641.jpg";s:5:"width";i:768;s:6:"height";i:641;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:34:"CP-peuplier-gris-rose-1024x854.jpg";s:5:"width";i:1024;s:6:"height";i:854;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:33:"CP-peuplier-gris-rose-640x200.jpg";s:5:"width";i:640;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-medium";a:4:{s:4:"file";s:34:"CP-peuplier-gris-rose-1280x400.jpg";s:5:"width";i:1280;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-large";a:4:{s:4:"file";s:34:"CP-peuplier-gris-rose-1440x400.jpg";s:5:"width";i:1440;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-xlarge";a:4:{s:4:"file";s:34:"CP-peuplier-gris-rose-1920x400.jpg";s:5:"width";i:1920;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fp-small";a:4:{s:4:"file";s:33:"CP-peuplier-gris-rose-640x534.jpg";s:5:"width";i:640;s:6:"height";i:534;s:9:"mime-type";s:10:"image/jpeg";}s:9:"fp-medium";a:4:{s:4:"file";s:34:"CP-peuplier-gris-rose-1024x854.jpg";s:5:"width";i:1024;s:6:"height";i:854;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fp-large";a:4:{s:4:"file";s:35:"CP-peuplier-gris-rose-1200x1001.jpg";s:5:"width";i:1200;s:6:"height";i:1001;s:9:"mime-type";s:10:"image/jpeg";}s:9:"fp-xlarge";a:4:{s:4:"file";s:35:"CP-peuplier-gris-rose-1920x1601.jpg";s:5:"width";i:1920;s:6:"height";i:1601;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(943, 95, '_wp_attached_file', '2017/06/Dressing-Chat-Tigre-modif.1.jpg'),
(944, 95, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:667;s:4:"file";s:39:"2017/06/Dressing-Chat-Tigre-modif.1.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:39:"Dressing-Chat-Tigre-modif.1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:39:"Dressing-Chat-Tigre-modif.1-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:39:"Dressing-Chat-Tigre-modif.1-768x640.jpg";s:5:"width";i:768;s:6:"height";i:640;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:39:"Dressing-Chat-Tigre-modif.1-640x200.jpg";s:5:"width";i:640;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-medium";a:4:{s:4:"file";s:39:"Dressing-Chat-Tigre-modif.1-800x400.jpg";s:5:"width";i:800;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-large";a:4:{s:4:"file";s:39:"Dressing-Chat-Tigre-modif.1-800x400.jpg";s:5:"width";i:800;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-xlarge";a:4:{s:4:"file";s:39:"Dressing-Chat-Tigre-modif.1-800x400.jpg";s:5:"width";i:800;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fp-small";a:4:{s:4:"file";s:39:"Dressing-Chat-Tigre-modif.1-640x534.jpg";s:5:"width";i:640;s:6:"height";i:534;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(945, 96, '_wp_attached_file', '2017/06/Dressing-Chat-Tigre-modif.2.jpg'),
(946, 96, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2362;s:6:"height";i:1970;s:4:"file";s:39:"2017/06/Dressing-Chat-Tigre-modif.2.jpg";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:39:"Dressing-Chat-Tigre-modif.2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:39:"Dressing-Chat-Tigre-modif.2-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:39:"Dressing-Chat-Tigre-modif.2-768x641.jpg";s:5:"width";i:768;s:6:"height";i:641;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:40:"Dressing-Chat-Tigre-modif.2-1024x854.jpg";s:5:"width";i:1024;s:6:"height";i:854;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:39:"Dressing-Chat-Tigre-modif.2-640x200.jpg";s:5:"width";i:640;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-medium";a:4:{s:4:"file";s:40:"Dressing-Chat-Tigre-modif.2-1280x400.jpg";s:5:"width";i:1280;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-large";a:4:{s:4:"file";s:40:"Dressing-Chat-Tigre-modif.2-1440x400.jpg";s:5:"width";i:1440;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-xlarge";a:4:{s:4:"file";s:40:"Dressing-Chat-Tigre-modif.2-1920x400.jpg";s:5:"width";i:1920;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fp-small";a:4:{s:4:"file";s:39:"Dressing-Chat-Tigre-modif.2-640x534.jpg";s:5:"width";i:640;s:6:"height";i:534;s:9:"mime-type";s:10:"image/jpeg";}s:9:"fp-medium";a:4:{s:4:"file";s:40:"Dressing-Chat-Tigre-modif.2-1024x854.jpg";s:5:"width";i:1024;s:6:"height";i:854;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fp-large";a:4:{s:4:"file";s:41:"Dressing-Chat-Tigre-modif.2-1200x1001.jpg";s:5:"width";i:1200;s:6:"height";i:1001;s:9:"mime-type";s:10:"image/jpeg";}s:9:"fp-xlarge";a:4:{s:4:"file";s:41:"Dressing-Chat-Tigre-modif.2-1920x1601.jpg";s:5:"width";i:1920;s:6:"height";i:1601;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(947, 97, '_wp_attached_file', '2017/06/untitled.288.jpg'),
(948, 97, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2953;s:6:"height";i:2464;s:4:"file";s:24:"2017/06/untitled.288.jpg";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"untitled.288-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"untitled.288-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"untitled.288-768x641.jpg";s:5:"width";i:768;s:6:"height";i:641;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"untitled.288-1024x854.jpg";s:5:"width";i:1024;s:6:"height";i:854;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:24:"untitled.288-640x200.jpg";s:5:"width";i:640;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-medium";a:4:{s:4:"file";s:25:"untitled.288-1280x400.jpg";s:5:"width";i:1280;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-large";a:4:{s:4:"file";s:25:"untitled.288-1440x400.jpg";s:5:"width";i:1440;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-xlarge";a:4:{s:4:"file";s:25:"untitled.288-1920x400.jpg";s:5:"width";i:1920;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fp-small";a:4:{s:4:"file";s:24:"untitled.288-640x534.jpg";s:5:"width";i:640;s:6:"height";i:534;s:9:"mime-type";s:10:"image/jpeg";}s:9:"fp-medium";a:4:{s:4:"file";s:25:"untitled.288-1024x854.jpg";s:5:"width";i:1024;s:6:"height";i:854;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fp-large";a:4:{s:4:"file";s:26:"untitled.288-1200x1001.jpg";s:5:"width";i:1200;s:6:"height";i:1001;s:9:"mime-type";s:10:"image/jpeg";}s:9:"fp-xlarge";a:4:{s:4:"file";s:26:"untitled.288-1920x1602.jpg";s:5:"width";i:1920;s:6:"height";i:1602;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(949, 98, '_wp_attached_file', '2017/06/untitled.290.jpg'),
(950, 98, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2953;s:6:"height";i:2464;s:4:"file";s:24:"2017/06/untitled.290.jpg";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"untitled.290-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"untitled.290-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"untitled.290-768x641.jpg";s:5:"width";i:768;s:6:"height";i:641;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"untitled.290-1024x854.jpg";s:5:"width";i:1024;s:6:"height";i:854;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:24:"untitled.290-640x200.jpg";s:5:"width";i:640;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-medium";a:4:{s:4:"file";s:25:"untitled.290-1280x400.jpg";s:5:"width";i:1280;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-large";a:4:{s:4:"file";s:25:"untitled.290-1440x400.jpg";s:5:"width";i:1440;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-xlarge";a:4:{s:4:"file";s:25:"untitled.290-1920x400.jpg";s:5:"width";i:1920;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fp-small";a:4:{s:4:"file";s:24:"untitled.290-640x534.jpg";s:5:"width";i:640;s:6:"height";i:534;s:9:"mime-type";s:10:"image/jpeg";}s:9:"fp-medium";a:4:{s:4:"file";s:25:"untitled.290-1024x854.jpg";s:5:"width";i:1024;s:6:"height";i:854;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fp-large";a:4:{s:4:"file";s:26:"untitled.290-1200x1001.jpg";s:5:"width";i:1200;s:6:"height";i:1001;s:9:"mime-type";s:10:"image/jpeg";}s:9:"fp-xlarge";a:4:{s:4:"file";s:26:"untitled.290-1920x1602.jpg";s:5:"width";i:1920;s:6:"height";i:1602;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(951, 99, '_wp_attached_file', '2017/06/untitled.292.jpg'),
(952, 99, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2953;s:6:"height";i:2464;s:4:"file";s:24:"2017/06/untitled.292.jpg";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"untitled.292-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"untitled.292-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"untitled.292-768x641.jpg";s:5:"width";i:768;s:6:"height";i:641;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"untitled.292-1024x854.jpg";s:5:"width";i:1024;s:6:"height";i:854;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:24:"untitled.292-640x200.jpg";s:5:"width";i:640;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-medium";a:4:{s:4:"file";s:25:"untitled.292-1280x400.jpg";s:5:"width";i:1280;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-large";a:4:{s:4:"file";s:25:"untitled.292-1440x400.jpg";s:5:"width";i:1440;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-xlarge";a:4:{s:4:"file";s:25:"untitled.292-1920x400.jpg";s:5:"width";i:1920;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fp-small";a:4:{s:4:"file";s:24:"untitled.292-640x534.jpg";s:5:"width";i:640;s:6:"height";i:534;s:9:"mime-type";s:10:"image/jpeg";}s:9:"fp-medium";a:4:{s:4:"file";s:25:"untitled.292-1024x854.jpg";s:5:"width";i:1024;s:6:"height";i:854;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fp-large";a:4:{s:4:"file";s:26:"untitled.292-1200x1001.jpg";s:5:"width";i:1200;s:6:"height";i:1001;s:9:"mime-type";s:10:"image/jpeg";}s:9:"fp-xlarge";a:4:{s:4:"file";s:26:"untitled.292-1920x1602.jpg";s:5:"width";i:1920;s:6:"height";i:1602;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(953, 93, '_edit_last', '1'),
(955, 100, 'image_une', '95'),
(956, 100, '_image_une', 'field_594904c1e0d48'),
(957, 100, 'image_deux', '96') ;
INSERT INTO `wp_2k17_wp_examenpostmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(958, 100, '_image_deux', 'field_594904d9e0d49'),
(959, 100, 'image_trois', '97'),
(960, 100, '_image_trois', 'field_594904e4e0d4a'),
(961, 100, 'image_quatre', ''),
(962, 100, '_image_quatre', 'field_594904f4e0d4b'),
(963, 100, 'image_cinq', ''),
(964, 100, '_image_cinq', 'field_594904fee0d4c'),
(965, 100, 'image_full', '98'),
(966, 100, '_image_full', 'field_59490509e0d4d'),
(967, 100, '_', 'field_5948ff20dab93'),
(968, 100, 'texte_un', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(969, 100, '_texte_un', 'field_594905307bd5a'),
(970, 100, 'texte_deux', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(971, 100, '_texte_deux', 'field_594905367bd5b'),
(972, 100, 'texte_trois', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(973, 100, '_texte_trois', 'field_5949053a7bd5c'),
(974, 100, 'texte_quatre', ''),
(975, 100, '_texte_quatre', 'field_5949053e7bd5d'),
(976, 100, 'texte_full', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(977, 100, '_texte_full', 'field_594905447bd5e'),
(978, 100, 'texte_cinq', ''),
(979, 100, '_texte_cinq', 'field_594905497bd5f'),
(980, 100, 'extrait_article', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(981, 100, '_extrait_article', 'field_594910d3bf074'),
(982, 100, 'materiaux', '31'),
(983, 100, '_materiaux', 'field_5948fef9dab92'),
(984, 100, 'materiaux_deux', '36'),
(985, 100, '_materiaux_deux', 'field_594901b78c1d6'),
(986, 100, 'materiaux_trois', '29'),
(987, 100, '_materiaux_trois', 'field_594901bf3b634'),
(988, 100, 'nom_du_materiel', 'Caoutchouc'),
(989, 100, '_nom_du_materiel', 'field_5949014322be1'),
(990, 100, 'nom_du_materiel_deux', 'Métal'),
(991, 100, '_nom_du_materiel_deux', 'field_5949016ad408c'),
(992, 100, 'nom_du_materiel_trois', 'Acajou'),
(993, 100, '_nom_du_materiel_trois', 'field_594901864ff85'),
(994, 100, 'titre_materiel', 'MATÉRIAUX UTILISÉS'),
(995, 100, '_titre_materiel', 'field_5949090b2cb85'),
(997, 101, 'image_une', '95'),
(998, 101, '_image_une', 'field_594904c1e0d48'),
(999, 101, 'image_deux', '96'),
(1000, 101, '_image_deux', 'field_594904d9e0d49'),
(1001, 101, 'image_trois', '97'),
(1002, 101, '_image_trois', 'field_594904e4e0d4a'),
(1003, 101, 'image_quatre', ''),
(1004, 101, '_image_quatre', 'field_594904f4e0d4b'),
(1005, 101, 'image_cinq', ''),
(1006, 101, '_image_cinq', 'field_594904fee0d4c'),
(1007, 101, 'image_full', '98'),
(1008, 101, '_image_full', 'field_59490509e0d4d'),
(1009, 101, '_', 'field_5948ff20dab93'),
(1010, 101, 'texte_un', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(1011, 101, '_texte_un', 'field_594905307bd5a'),
(1012, 101, 'texte_deux', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(1013, 101, '_texte_deux', 'field_594905367bd5b'),
(1014, 101, 'texte_trois', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(1015, 101, '_texte_trois', 'field_5949053a7bd5c'),
(1016, 101, 'texte_quatre', ''),
(1017, 101, '_texte_quatre', 'field_5949053e7bd5d'),
(1018, 101, 'texte_full', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(1019, 101, '_texte_full', 'field_594905447bd5e'),
(1020, 101, 'texte_cinq', ''),
(1021, 101, '_texte_cinq', 'field_594905497bd5f'),
(1022, 101, 'extrait_article', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(1023, 101, '_extrait_article', 'field_594910d3bf074'),
(1024, 101, 'materiaux', '31'),
(1025, 101, '_materiaux', 'field_5948fef9dab92'),
(1026, 101, 'materiaux_deux', '36'),
(1027, 101, '_materiaux_deux', 'field_594901b78c1d6'),
(1028, 101, 'materiaux_trois', '29'),
(1029, 101, '_materiaux_trois', 'field_594901bf3b634'),
(1030, 101, 'nom_du_materiel', 'Caoutchouc'),
(1031, 101, '_nom_du_materiel', 'field_5949014322be1'),
(1032, 101, 'nom_du_materiel_deux', 'Métal'),
(1033, 101, '_nom_du_materiel_deux', 'field_5949016ad408c'),
(1034, 101, 'nom_du_materiel_trois', 'Acajou'),
(1035, 101, '_nom_du_materiel_trois', 'field_594901864ff85'),
(1036, 101, 'titre_materiel', 'MATÉRIAUX UTILISÉS'),
(1037, 101, '_titre_materiel', 'field_5949090b2cb85'),
(1038, 102, '_thumbnail_id', '97'),
(1039, 102, 'materiaux', '31'),
(1040, 102, '_materiaux', 'field_5948fef9dab92'),
(1041, 102, '_', 'field_5948ff20dab93'),
(1042, 102, 'materiaux_deux', '36'),
(1043, 102, '_materiaux_deux', 'field_594901b78c1d6'),
(1044, 102, 'materiaux_trois', '29'),
(1045, 102, '_materiaux_trois', 'field_594901bf3b634'),
(1046, 102, 'nom_du_materiel', 'Caoutchouc'),
(1047, 102, '_nom_du_materiel', 'field_5949014322be1'),
(1048, 102, 'nom_du_materiel_deux', 'Métal'),
(1049, 102, '_nom_du_materiel_deux', 'field_5949016ad408c'),
(1050, 102, 'nom_du_materiel_trois', 'Acajou'),
(1051, 102, '_nom_du_materiel_trois', 'field_594901864ff85'),
(1052, 102, 'image_une', '95'),
(1053, 102, '_image_une', 'field_594904c1e0d48'),
(1054, 102, 'image_deux', '96'),
(1055, 102, '_image_deux', 'field_594904d9e0d49'),
(1056, 102, 'image_trois', '97'),
(1057, 102, '_image_trois', 'field_594904e4e0d4a'),
(1058, 102, 'image_quatre', '') ;
INSERT INTO `wp_2k17_wp_examenpostmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1059, 102, '_image_quatre', 'field_594904f4e0d4b'),
(1060, 102, 'image_cinq', ''),
(1061, 102, '_image_cinq', 'field_594904fee0d4c'),
(1062, 102, 'image_full', '98'),
(1063, 102, '_image_full', 'field_59490509e0d4d'),
(1064, 102, 'texte_un', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(1065, 102, '_texte_un', 'field_594905307bd5a'),
(1066, 102, 'texte_deux', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(1067, 102, '_texte_deux', 'field_594905367bd5b'),
(1068, 102, 'texte_trois', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(1069, 102, '_texte_trois', 'field_5949053a7bd5c'),
(1070, 102, 'texte_quatre', ''),
(1071, 102, '_texte_quatre', 'field_5949053e7bd5d'),
(1072, 102, 'texte_full', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(1073, 102, '_texte_full', 'field_594905447bd5e'),
(1074, 102, 'texte_cinq', ''),
(1075, 102, '_texte_cinq', 'field_594905497bd5f'),
(1076, 102, 'titre_materiel', 'MATÉRIAUX UTILISÉS'),
(1077, 102, '_titre_materiel', 'field_5949090b2cb85'),
(1078, 102, 'extrait_article', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(1079, 102, '_extrait_article', 'field_594910d3bf074'),
(1081, 102, '_dp_original', '93'),
(1082, 93, '_wp_trash_meta_status', 'publish'),
(1083, 93, '_wp_trash_meta_time', '1497962871'),
(1084, 93, '_wp_desired_post_slug', 'amenagements'),
(1085, 102, '_edit_lock', '1497962734:1'),
(1086, 102, '_edit_last', '1'),
(1088, 103, 'image_une', '95'),
(1089, 103, '_image_une', 'field_594904c1e0d48'),
(1090, 103, 'image_deux', '96'),
(1091, 103, '_image_deux', 'field_594904d9e0d49'),
(1092, 103, 'image_trois', '97'),
(1093, 103, '_image_trois', 'field_594904e4e0d4a'),
(1094, 103, 'image_quatre', ''),
(1095, 103, '_image_quatre', 'field_594904f4e0d4b'),
(1096, 103, 'image_cinq', ''),
(1097, 103, '_image_cinq', 'field_594904fee0d4c'),
(1098, 103, 'image_full', '98'),
(1099, 103, '_image_full', 'field_59490509e0d4d'),
(1100, 103, '_', 'field_5948ff20dab93'),
(1101, 103, 'texte_un', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(1102, 103, '_texte_un', 'field_594905307bd5a'),
(1103, 103, 'texte_deux', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(1104, 103, '_texte_deux', 'field_594905367bd5b'),
(1105, 103, 'texte_trois', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(1106, 103, '_texte_trois', 'field_5949053a7bd5c'),
(1107, 103, 'texte_quatre', ''),
(1108, 103, '_texte_quatre', 'field_5949053e7bd5d'),
(1109, 103, 'texte_full', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(1110, 103, '_texte_full', 'field_594905447bd5e'),
(1111, 103, 'texte_cinq', ''),
(1112, 103, '_texte_cinq', 'field_594905497bd5f'),
(1113, 103, 'extrait_article', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisi eu luctus molestie, augue eros viverra urna, id lobortis ante quam vel sapien.    Morbi facilisis, turpis id iaculis scelerisque, turpis nisl pharetra libero, in efficitur massa neque ut risus. Phasellus non ipsum id ex suscipit aliquet et eu nisl. Duis bibendum luctus ipsum vel convallis. '),
(1114, 103, '_extrait_article', 'field_594910d3bf074'),
(1115, 103, 'materiaux', '31'),
(1116, 103, '_materiaux', 'field_5948fef9dab92'),
(1117, 103, 'materiaux_deux', '36'),
(1118, 103, '_materiaux_deux', 'field_594901b78c1d6'),
(1119, 103, 'materiaux_trois', '29'),
(1120, 103, '_materiaux_trois', 'field_594901bf3b634'),
(1121, 103, 'nom_du_materiel', 'Caoutchouc'),
(1122, 103, '_nom_du_materiel', 'field_5949014322be1'),
(1123, 103, 'nom_du_materiel_deux', 'Métal'),
(1124, 103, '_nom_du_materiel_deux', 'field_5949016ad408c'),
(1125, 103, 'nom_du_materiel_trois', 'Acajou'),
(1126, 103, '_nom_du_materiel_trois', 'field_594901864ff85'),
(1127, 103, 'titre_materiel', 'MATÉRIAUX UTILISÉS'),
(1128, 103, '_titre_materiel', 'field_5949090b2cb85') ;

#
# End of data contents of table `wp_2k17_wp_examenpostmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_2k17_wp_examenposts`
#

DROP TABLE IF EXISTS `wp_2k17_wp_examenposts`;


#
# Table structure of table `wp_2k17_wp_examenposts`
#

CREATE TABLE `wp_2k17_wp_examenposts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_2k17_wp_examenposts`
#
INSERT INTO `wp_2k17_wp_examenposts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-06-20 08:56:03', '2017-06-20 06:56:03', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!', 'Bonjour tout le monde&nbsp;!', '', 'trash', 'open', 'open', '', 'bonjour-tout-le-monde__trashed', '', '', '2017-06-20 12:02:51', '2017-06-20 10:02:51', '', 0, 'http://http://mjm-webdesign.com/?p=1', 0, 'post', '', 1),
(2, 1, '2017-06-20 08:56:03', '2017-06-20 06:56:03', 'Voici un exemple de page. Elle est différente d’un article de blog, en cela qu’elle restera à la même place, et s’affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page &laquo;&nbsp;À Propos&nbsp;&raquo; qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et ceci est mon blog. J’habite à Bordeaux, j’ai un super chien qui s’appelle Russell, et j’aime la vodka-ananas (ainsi que perdre mon temps à regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme cela :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis cette année. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur ou une nouvelle utilisatrice de WordPress, vous devriez vous rendre sur votre <a href="http://http://mjm-webdesign.com/wp-admin/">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !', 'Page d&rsquo;exemple', '', 'trash', 'closed', 'open', '', 'page-d-exemple__trashed', '', '', '2017-06-20 09:08:55', '2017-06-20 07:08:55', '', 0, 'http://http://mjm-webdesign.com/?page_id=2', 0, 'page', '', 0),
(3, 1, '2017-06-20 08:56:10', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-06-20 08:56:10', '0000-00-00 00:00:00', '', 0, 'http://http://mjm-webdesign.com/?p=3', 0, 'post', '', 0),
(4, 1, '2017-06-20 09:08:55', '2017-06-20 07:08:55', 'Voici un exemple de page. Elle est différente d’un article de blog, en cela qu’elle restera à la même place, et s’affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page &laquo;&nbsp;À Propos&nbsp;&raquo; qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et ceci est mon blog. J’habite à Bordeaux, j’ai un super chien qui s’appelle Russell, et j’aime la vodka-ananas (ainsi que perdre mon temps à regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme cela :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis cette année. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur ou une nouvelle utilisatrice de WordPress, vous devriez vous rendre sur votre <a href="http://http://mjm-webdesign.com/wp-admin/">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !', 'Page d&rsquo;exemple', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-06-20 09:08:55', '2017-06-20 07:08:55', '', 2, 'http://http://mjm-webdesign.com/2017/06/20/2-revision-v1/', 0, 'revision', '', 0),
(5, 1, '2017-06-20 09:09:02', '2017-06-20 07:09:02', 'rtjrtjryyktek', 'Enceintes', '', 'publish', 'closed', 'closed', '', 'enceintes', '', '', '2017-06-20 11:16:46', '2017-06-20 09:16:46', '', 0, 'http://http://mjm-webdesign.com/?page_id=5', 0, 'page', '', 0),
(6, 1, '2017-06-20 09:09:02', '2017-06-20 07:09:02', '', 'Enceintes', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-06-20 09:09:02', '2017-06-20 07:09:02', '', 5, 'http://http://mjm-webdesign.com/2017/06/20/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2017-06-20 09:09:15', '2017-06-20 07:09:15', 'tyeketkutekekèt', 'Étagères', '', 'publish', 'closed', 'closed', '', 'etageres', '', '', '2017-06-20 11:16:52', '2017-06-20 09:16:52', '', 0, 'http://http://mjm-webdesign.com/?page_id=7', 0, 'page', '', 0),
(8, 1, '2017-06-20 09:09:15', '2017-06-20 07:09:15', '', 'Étagères', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-06-20 09:09:15', '2017-06-20 07:09:15', '', 7, 'http://http://mjm-webdesign.com/2017/06/20/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2017-06-20 09:09:30', '2017-06-20 07:09:30', '', 'Tables', '', 'publish', 'closed', 'closed', '', 'tables', '', '', '2017-06-20 09:09:30', '2017-06-20 07:09:30', '', 0, 'http://http://mjm-webdesign.com/?page_id=9', 0, 'page', '', 0),
(10, 1, '2017-06-20 09:09:30', '2017-06-20 07:09:30', '', 'Tables', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2017-06-20 09:09:30', '2017-06-20 07:09:30', '', 9, 'http://http://mjm-webdesign.com/2017/06/20/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2017-06-20 09:09:40', '2017-06-20 07:09:40', '', 'STRUCTURES INTÉRIEURES', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2017-06-20 10:16:07', '2017-06-20 08:16:07', '', 0, 'http://http://mjm-webdesign.com/?page_id=11', 0, 'page', '', 0),
(12, 1, '2017-06-20 09:09:40', '2017-06-20 07:09:40', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-06-20 09:09:40', '2017-06-20 07:09:40', '', 11, 'http://http://mjm-webdesign.com/2017/06/20/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2017-06-20 09:09:46', '2017-06-20 07:09:46', 'tkutktukrtkr', 'Projets', '', 'publish', 'closed', 'closed', '', 'projets', '', '', '2017-06-20 11:16:59', '2017-06-20 09:16:59', '', 0, 'http://http://mjm-webdesign.com/?page_id=13', 0, 'page', '', 0),
(14, 1, '2017-06-20 09:09:46', '2017-06-20 07:09:46', '', 'Projets', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2017-06-20 09:09:46', '2017-06-20 07:09:46', '', 13, 'http://http://mjm-webdesign.com/2017/06/20/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2017-06-20 09:09:52', '2017-06-20 07:09:52', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2017-06-20 14:54:08', '2017-06-20 12:54:08', '', 0, 'http://http://mjm-webdesign.com/?page_id=15', 0, 'page', '', 0),
(16, 1, '2017-06-20 09:09:52', '2017-06-20 07:09:52', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2017-06-20 09:09:52', '2017-06-20 07:09:52', '', 15, 'http://http://mjm-webdesign.com/2017/06/20/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2017-06-20 09:10:33', '2017-06-20 07:10:33', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2017-06-20 14:44:01', '2017-06-20 12:44:01', '', 0, 'http://http://mjm-webdesign.com/?p=17', 7, 'nav_menu_item', '', 0),
(18, 1, '2017-06-20 09:10:33', '2017-06-20 07:10:33', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2017-06-20 14:44:01', '2017-06-20 12:44:01', '', 0, 'http://http://mjm-webdesign.com/?p=18', 2, 'nav_menu_item', '', 0),
(19, 1, '2017-06-20 09:10:33', '2017-06-20 07:10:33', '', 'ACCUEIL', '', 'publish', 'closed', 'closed', '', '19', '', '', '2017-06-20 14:44:01', '2017-06-20 12:44:01', '', 0, 'http://http://mjm-webdesign.com/?p=19', 1, 'nav_menu_item', '', 0),
(20, 1, '2017-06-20 10:16:07', '2017-06-20 08:16:07', '', 'STRUCTURES INTÉRIEURES', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-06-20 10:16:07', '2017-06-20 08:16:07', '', 11, 'http://http://mjm-webdesign.com/2017/06/20/11-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2017-06-20 11:16:46', '2017-06-20 09:16:46', 'rtjrtjryyktek', 'Enceintes', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-06-20 11:16:46', '2017-06-20 09:16:46', '', 5, 'http://http://mjm-webdesign.com/2017/06/20/5-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2017-06-20 11:16:52', '2017-06-20 09:16:52', 'tyeketkutekekèt', 'Étagères', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-06-20 11:16:52', '2017-06-20 09:16:52', '', 7, 'http://http://mjm-webdesign.com/2017/06/20/7-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2017-06-20 11:16:59', '2017-06-20 09:16:59', 'tkutktukrtkr', 'Projets', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2017-06-20 11:16:59', '2017-06-20 09:16:59', '', 13, 'http://http://mjm-webdesign.com/2017/06/20/13-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2017-06-20 12:02:51', '2017-06-20 10:02:51', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!', 'Bonjour tout le monde&nbsp;!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2017-06-20 12:02:51', '2017-06-20 10:02:51', '', 1, 'http://http://mjm-webdesign.com/2017/06/20/1-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2017-06-20 12:04:14', '2017-06-20 10:04:14', '', 'ENCEINTE YOKO', '', 'publish', 'open', 'open', '', 'enceinte-yoko', '', '', '2017-06-20 14:11:47', '2017-06-20 12:11:47', '', 0, 'http://http://mjm-webdesign.com/?p=25', 0, 'post', '', 0),
(26, 1, '2017-06-20 12:03:38', '2017-06-20 10:03:38', '', '0', '', 'inherit', 'open', 'closed', '', '0', '', '', '2017-06-20 12:03:38', '2017-06-20 10:03:38', '', 25, 'http://http://mjm-webdesign.com/wp-content/uploads/2017/06/0.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2017-06-20 12:04:14', '2017-06-20 10:04:14', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n&nbsp;\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n&nbsp;\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n&nbsp;\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n&nbsp;', 'ENCEINTE YOKO', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2017-06-20 12:04:14', '2017-06-20 10:04:14', '', 25, 'http://http://mjm-webdesign.com/2017/06/20/25-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2017-06-20 12:48:01', '2017-06-20 10:48:01', '<h2>MATÉRIAUX UTILISÉS</h2>', 'ENCEINTE YOKO', '', 'inherit', 'closed', 'closed', '', '25-autosave-v1', '', '', '2017-06-20 12:48:01', '2017-06-20 10:48:01', '', 25, 'http://http://mjm-webdesign.com/2017/06/20/25-autosave-v1/', 0, 'revision', '', 0),
(29, 1, '2017-06-20 12:46:10', '2017-06-20 10:46:10', '', 'acajou', '', 'inherit', 'open', 'closed', '', 'acajou', '', '', '2017-06-20 12:46:10', '2017-06-20 10:46:10', '', 25, 'http://http://mjm-webdesign.com/wp-content/uploads/2017/06/acajou.png', 0, 'attachment', 'image/png', 0),
(30, 1, '2017-06-20 12:46:10', '2017-06-20 10:46:10', '', 'accueil-ialu', '', 'inherit', 'open', 'closed', '', 'accueil-ialu', '', '', '2017-06-20 12:46:10', '2017-06-20 10:46:10', '', 25, 'http://http://mjm-webdesign.com/wp-content/uploads/2017/06/accueil-ialu.png', 0, 'attachment', 'image/png', 0),
(31, 1, '2017-06-20 12:46:13', '2017-06-20 10:46:13', '', 'caoutchouc', '', 'inherit', 'open', 'closed', '', 'caoutchouc', '', '', '2017-06-20 12:46:13', '2017-06-20 10:46:13', '', 25, 'http://http://mjm-webdesign.com/wp-content/uploads/2017/06/caoutchouc.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2017-06-20 12:46:13', '2017-06-20 10:46:13', '', 'enceintenoir', '', 'inherit', 'open', 'closed', '', 'enceintenoir', '', '', '2017-06-20 12:46:13', '2017-06-20 10:46:13', '', 25, 'http://http://mjm-webdesign.com/wp-content/uploads/2017/06/enceintenoir.png', 0, 'attachment', 'image/png', 0),
(33, 1, '2017-06-20 12:46:14', '2017-06-20 10:46:14', '', 'enceinteorange', '', 'inherit', 'open', 'closed', '', 'enceinteorange', '', '', '2017-06-20 12:46:14', '2017-06-20 10:46:14', '', 25, 'http://http://mjm-webdesign.com/wp-content/uploads/2017/06/enceinteorange.png', 0, 'attachment', 'image/png', 0),
(34, 1, '2017-06-20 12:46:15', '2017-06-20 10:46:15', '', 'enceinterouge', '', 'inherit', 'open', 'closed', '', 'enceinterouge', '', '', '2017-06-20 12:46:15', '2017-06-20 10:46:15', '', 25, 'http://http://mjm-webdesign.com/wp-content/uploads/2017/06/enceinterouge.png', 0, 'attachment', 'image/png', 0),
(35, 1, '2017-06-20 12:46:16', '2017-06-20 10:46:16', '', 'enceinteverte', '', 'inherit', 'open', 'closed', '', 'enceinteverte', '', '', '2017-06-20 12:46:16', '2017-06-20 10:46:16', '', 25, 'http://http://mjm-webdesign.com/wp-content/uploads/2017/06/enceinteverte.png', 0, 'attachment', 'image/png', 0),
(36, 1, '2017-06-20 12:46:17', '2017-06-20 10:46:17', '', 'metal', '', 'inherit', 'open', 'closed', '', 'metal', '', '', '2017-06-20 12:46:17', '2017-06-20 10:46:17', '', 25, 'http://http://mjm-webdesign.com/wp-content/uploads/2017/06/metal.png', 0, 'attachment', 'image/png', 0),
(37, 1, '2017-06-20 12:46:18', '2017-06-20 10:46:18', '', 'real-1', '', 'inherit', 'open', 'closed', '', 'real-1', '', '', '2017-06-20 12:46:18', '2017-06-20 10:46:18', '', 25, 'http://http://mjm-webdesign.com/wp-content/uploads/2017/06/real-1.png', 0, 'attachment', 'image/png', 0),
(38, 1, '2017-06-20 12:46:19', '2017-06-20 10:46:19', '', 'real-2', '', 'inherit', 'open', 'closed', '', 'real-2', '', '', '2017-06-20 12:46:19', '2017-06-20 10:46:19', '', 25, 'http://http://mjm-webdesign.com/wp-content/uploads/2017/06/real-2.png', 0, 'attachment', 'image/png', 0),
(39, 1, '2017-06-20 12:46:20', '2017-06-20 10:46:20', '', 'real-3', '', 'inherit', 'open', 'closed', '', 'real-3', '', '', '2017-06-20 12:46:20', '2017-06-20 10:46:20', '', 25, 'http://http://mjm-webdesign.com/wp-content/uploads/2017/06/real-3.png', 0, 'attachment', 'image/png', 0),
(40, 1, '2017-06-20 12:55:33', '2017-06-20 10:55:33', '', 'Materiaux', '', 'publish', 'closed', 'closed', '', 'acf_materiaux', '', '', '2017-06-20 13:16:10', '2017-06-20 11:16:10', '', 0, 'http://http://mjm-webdesign.com/?post_type=acf&#038;p=40', 0, 'acf', '', 0),
(41, 1, '2017-06-20 12:59:22', '2017-06-20 10:59:22', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n&nbsp;\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n&nbsp;\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n&nbsp;\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n&nbsp;', 'ENCEINTE YOKO', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2017-06-20 12:59:22', '2017-06-20 10:59:22', '', 25, 'http://http://mjm-webdesign.com/2017/06/20/25-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2017-06-20 13:02:09', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-06-20 13:02:09', '0000-00-00 00:00:00', '', 0, 'http://http://mjm-webdesign.com/?post_type=acf&p=42', 0, 'acf', '', 0),
(43, 1, '2017-06-20 13:04:33', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-06-20 13:04:33', '0000-00-00 00:00:00', '', 0, 'http://http://mjm-webdesign.com/?post_type=acf&p=43', 0, 'acf', '', 0),
(44, 1, '2017-06-20 13:04:52', '2017-06-20 11:04:52', '', 'Nom du materiel', '', 'publish', 'closed', 'closed', '', 'acf_nom-du-materiel', '', '', '2017-06-20 13:05:52', '2017-06-20 11:05:52', '', 0, 'http://http://mjm-webdesign.com/?post_type=acf&#038;p=44', 0, 'acf', '', 0),
(45, 1, '2017-06-20 13:07:28', '2017-06-20 11:07:28', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n&nbsp;\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n&nbsp;\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n&nbsp;\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n&nbsp;', 'ENCEINTE YOKO', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2017-06-20 13:07:28', '2017-06-20 11:07:28', '', 25, 'http://http://mjm-webdesign.com/2017/06/20/25-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2017-06-20 13:21:01', '2017-06-20 11:21:01', '', 'Champs de présentation produit - Image', '', 'publish', 'closed', 'closed', '', 'acf_champs-de-presentation-produit-image', '', '', '2017-06-20 13:26:08', '2017-06-20 11:26:08', '', 0, 'http://http://mjm-webdesign.com/?post_type=acf&#038;p=46', 0, 'acf', '', 0),
(47, 1, '2017-06-20 13:21:53', '2017-06-20 11:21:53', '', 'Champs texte présentation produit', '', 'publish', 'closed', 'closed', '', 'acf_champs-texte-presentation-produit', '', '', '2017-06-20 13:21:53', '2017-06-20 11:21:53', '', 0, 'http://http://mjm-webdesign.com/?post_type=acf&#038;p=47', 0, 'acf', '', 0),
(48, 1, '2017-06-20 13:25:29', '2017-06-20 11:25:29', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n&nbsp;\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n&nbsp;\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n&nbsp;\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n&nbsp;', 'ENCEINTE YOKO', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2017-06-20 13:25:29', '2017-06-20 11:25:29', '', 25, 'http://http://mjm-webdesign.com/2017/06/20/25-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2017-06-20 13:25:36', '2017-06-20 11:25:36', '', 'ENCEINTE YOKO', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2017-06-20 13:25:36', '2017-06-20 11:25:36', '', 25, 'http://http://mjm-webdesign.com/2017/06/20/25-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2017-06-20 13:37:53', '2017-06-20 11:37:53', '', 'Titre materiel', '', 'publish', 'closed', 'closed', '', 'acf_titre-materiel', '', '', '2017-06-20 13:37:53', '2017-06-20 11:37:53', '', 0, 'http://http://mjm-webdesign.com/?post_type=acf&#038;p=50', 0, 'acf', '', 0),
(51, 1, '2017-06-20 13:38:20', '2017-06-20 11:38:20', '', 'ENCEINTE YOKO', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2017-06-20 13:38:20', '2017-06-20 11:38:20', '', 25, 'http://http://mjm-webdesign.com/2017/06/20/25-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2017-06-20 13:57:49', '2017-06-20 11:57:49', ' ', '', '', 'publish', 'closed', 'closed', '', '53', '', '', '2017-06-20 14:44:01', '2017-06-20 12:44:01', '', 0, 'http://http://mjm-webdesign.com/?p=53', 3, 'nav_menu_item', '', 0),
(54, 1, '2017-06-20 14:11:11', '2017-06-20 12:11:11', '', 'EXTRAIT', '', 'publish', 'closed', 'closed', '', 'acf_extrait', '', '', '2017-06-20 14:11:11', '2017-06-20 12:11:11', '', 0, 'http://http://mjm-webdesign.com/?post_type=acf&#038;p=54', 0, 'acf', '', 0),
(55, 1, '2017-06-20 14:11:47', '2017-06-20 12:11:47', '', 'ENCEINTE YOKO', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2017-06-20 14:11:47', '2017-06-20 12:11:47', '', 25, 'http://http://mjm-webdesign.com/2017/06/20/25-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2017-06-20 14:37:10', '2017-06-20 12:37:10', '', 'TABLE DE CHEVET', '', 'publish', 'open', 'open', '', 'table-de-chevet', '', '', '2017-06-20 14:43:21', '2017-06-20 12:43:21', '', 0, 'http://http://mjm-webdesign.com/?p=56', 0, 'post', '', 0),
(57, 1, '2017-06-20 14:42:05', '2017-06-20 12:42:05', '', 'AMÉNAGEMENTS', '', 'publish', 'open', 'open', '', 'enceinte-yoko-2', '', '', '2017-06-20 14:42:51', '2017-06-20 12:42:51', '', 0, 'http://http://mjm-webdesign.com/?p=57', 0, 'post', '', 0),
(58, 1, '2017-06-20 14:38:35', '2017-06-20 12:38:35', '', 'ÉTAGÈRES', '', 'trash', 'open', 'open', '', 'bibiliotheque__trashed', '', '', '2017-06-20 14:45:30', '2017-06-20 12:45:30', '', 0, 'http://http://mjm-webdesign.com/?p=58', 0, 'post', '', 0),
(59, 1, '2017-06-20 14:36:19', '2017-06-20 12:36:19', '', '2.0 chàne', '', 'inherit', 'open', 'closed', '', '2-0-chane', '', '', '2017-06-20 14:36:19', '2017-06-20 12:36:19', '', 56, 'http://http://mjm-webdesign.com/wp-content/uploads/2017/06/2.0-chàne.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2017-06-20 14:36:23', '2017-06-20 12:36:23', '', '2.0 hàtre verre noir', '', 'inherit', 'open', 'closed', '', '2-0-hatre-verre-noir', '', '', '2017-06-20 14:36:23', '2017-06-20 12:36:23', '', 56, 'http://http://mjm-webdesign.com/wp-content/uploads/2017/06/2.0-hàtre-verre-noir.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2017-06-20 14:36:27', '2017-06-20 12:36:27', '', '4.0 chàne teintÇ', '', 'inherit', 'open', 'closed', '', '4-0-chane-teintc%cc%a7', '', '', '2017-06-20 14:36:27', '2017-06-20 12:36:27', '', 56, 'http://http://mjm-webdesign.com/wp-content/uploads/2017/06/4.0-chàne-teintÇ.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2017-06-20 14:36:32', '2017-06-20 12:36:32', '', '4.4 sapin noir', '', 'inherit', 'open', 'closed', '', '4-4-sapin-noir', '', '', '2017-06-20 14:36:32', '2017-06-20 12:36:32', '', 56, 'http://http://mjm-webdesign.com/wp-content/uploads/2017/06/4.4-sapin-noir.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2017-06-20 14:36:36', '2017-06-20 12:36:36', '', 'Chris2.396', '', 'inherit', 'open', 'closed', '', 'chris2-396', '', '', '2017-06-20 14:36:36', '2017-06-20 12:36:36', '', 56, 'http://http://mjm-webdesign.com/wp-content/uploads/2017/06/Chris2.396.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2017-06-20 14:36:41', '2017-06-20 12:36:41', '', 'Dad1.401', '', 'inherit', 'open', 'closed', '', 'dad1-401', '', '', '2017-06-20 14:36:41', '2017-06-20 12:36:41', '', 56, 'http://http://mjm-webdesign.com/wp-content/uploads/2017/06/Dad1.401.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2017-06-20 14:36:45', '2017-06-20 12:36:45', '', 'Dad1\'', '', 'inherit', 'open', 'closed', '', 'dad1', '', '', '2017-06-20 14:36:45', '2017-06-20 12:36:45', '', 56, 'http://http://mjm-webdesign.com/wp-content/uploads/2017/06/Dad1.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2017-06-20 14:36:50', '2017-06-20 12:36:50', '', 'Dad2.400', '', 'inherit', 'open', 'closed', '', 'dad2-400', '', '', '2017-06-20 14:36:50', '2017-06-20 12:36:50', '', 56, 'http://http://mjm-webdesign.com/wp-content/uploads/2017/06/Dad2.400.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2017-06-20 14:37:10', '2017-06-20 12:37:10', '', 'TABLE DE CHEVET', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2017-06-20 14:37:10', '2017-06-20 12:37:10', '', 56, 'http://http://mjm-webdesign.com/2017/06/20/56-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2017-06-20 14:38:07', '2017-06-20 12:38:07', '', 'untitled.246', '', 'inherit', 'open', 'closed', '', 'untitled-246', '', '', '2017-06-20 14:38:07', '2017-06-20 12:38:07', '', 58, 'http://http://mjm-webdesign.com/wp-content/uploads/2017/06/untitled.246.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2017-06-20 14:38:14', '2017-06-20 12:38:14', '', 'untitled.247', '', 'inherit', 'open', 'closed', '', 'untitled-247', '', '', '2017-06-20 14:38:14', '2017-06-20 12:38:14', '', 58, 'http://http://mjm-webdesign.com/wp-content/uploads/2017/06/untitled.247.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2017-06-20 14:38:21', '2017-06-20 12:38:21', '', 'untitled.248', '', 'inherit', 'open', 'closed', '', 'untitled-248', '', '', '2017-06-20 14:38:21', '2017-06-20 12:38:21', '', 58, 'http://http://mjm-webdesign.com/wp-content/uploads/2017/06/untitled.248.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2017-06-20 14:38:35', '2017-06-20 12:38:35', '', 'BIBILIOTHÈQUE', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2017-06-20 14:38:35', '2017-06-20 12:38:35', '', 58, 'http://http://mjm-webdesign.com/2017/06/20/58-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2017-06-20 14:38:43', '2017-06-20 12:38:43', '', 'ÉTAGÈRES', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2017-06-20 14:38:43', '2017-06-20 12:38:43', '', 58, 'http://http://mjm-webdesign.com/2017/06/20/58-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2017-06-20 14:39:18', '2017-06-20 12:39:18', '', 'ÉTAGÈRES', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2017-06-20 14:39:18', '2017-06-20 12:39:18', '', 58, 'http://http://mjm-webdesign.com/2017/06/20/58-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2017-06-20 14:40:04', '2017-06-20 12:40:04', '', 'ÉTAGÈRES', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2017-06-20 14:40:04', '2017-06-20 12:40:04', '', 58, 'http://http://mjm-webdesign.com/2017/06/20/58-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2017-06-20 14:41:24', '2017-06-20 12:41:24', '', '2.1 portes medium-corps tripli pin', '', 'inherit', 'open', 'closed', '', '2-1-portes-medium-corps-tripli-pin', '', '', '2017-06-20 14:41:24', '2017-06-20 12:41:24', '', 57, 'http://http://mjm-webdesign.com/wp-content/uploads/2017/06/2.1-portes-medium-corps-tripli-pin.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2017-06-20 14:41:30', '2017-06-20 12:41:30', '', '3 plis epicÇa strat orange murs bleus foncÇs', '', 'inherit', 'open', 'closed', '', '3-plis-epicc%cc%a7a-strat-orange-murs-bleus-foncc%cc%a7s', '', '', '2017-06-20 14:41:30', '2017-06-20 12:41:30', '', 57, 'http://http://mjm-webdesign.com/wp-content/uploads/2017/06/3-plis-epicÇa-strat-orange-murs-bleus-foncÇs.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2017-06-20 14:41:34', '2017-06-20 12:41:34', '', '3 portes tripli pin -corps medium', '', 'inherit', 'open', 'closed', '', '3-portes-tripli-pin-corps-medium', '', '', '2017-06-20 14:41:34', '2017-06-20 12:41:34', '', 57, 'http://http://mjm-webdesign.com/wp-content/uploads/2017/06/3-portes-tripli-pin-corps-medium.jpg', 0, 'attachment', 'image/jpeg', 0),
(83, 1, '2017-06-20 14:41:41', '2017-06-20 12:41:41', '', 'Amenagement Christian 1', '', 'inherit', 'open', 'closed', '', 'amenagement-christian-1', '', '', '2017-06-20 14:41:41', '2017-06-20 12:41:41', '', 57, 'http://http://mjm-webdesign.com/wp-content/uploads/2017/06/Amenagement-Christian-1.tif', 0, 'attachment', 'image/tiff', 0),
(84, 1, '2017-06-20 14:41:41', '2017-06-20 12:41:41', '', 'Amenagement Christian 2', '', 'inherit', 'open', 'closed', '', 'amenagement-christian-2', '', '', '2017-06-20 14:41:41', '2017-06-20 12:41:41', '', 57, 'http://http://mjm-webdesign.com/wp-content/uploads/2017/06/Amenagement-Christian-2.tif', 0, 'attachment', 'image/tiff', 0),
(85, 1, '2017-06-20 14:41:42', '2017-06-20 12:41:42', '', 'banc atelier 1 face', '', 'inherit', 'open', 'closed', '', 'banc-atelier-1-face', '', '', '2017-06-20 14:41:42', '2017-06-20 12:41:42', '', 57, 'http://http://mjm-webdesign.com/wp-content/uploads/2017/06/banc-atelier-1-face.jpg', 0, 'attachment', 'image/jpeg', 0),
(86, 1, '2017-06-20 14:41:52', '2017-06-20 12:41:52', '', 'Echelle gris gris', '', 'inherit', 'open', 'closed', '', 'echelle-gris-gris', '', '', '2017-06-20 14:41:52', '2017-06-20 12:41:52', '', 57, 'http://http://mjm-webdesign.com/wp-content/uploads/2017/06/Echelle-gris-gris.jpg', 0, 'attachment', 'image/jpeg', 0),
(87, 1, '2017-06-20 14:41:57', '2017-06-20 12:41:57', '', 'final 1', '', 'inherit', 'open', 'closed', '', 'final-1', '', '', '2017-06-20 14:41:57', '2017-06-20 12:41:57', '', 57, 'http://http://mjm-webdesign.com/wp-content/uploads/2017/06/final-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(88, 1, '2017-06-20 14:42:05', '2017-06-20 12:42:05', '', 'ENCEINTE YOKO', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2017-06-20 14:42:05', '2017-06-20 12:42:05', '', 57, 'http://http://mjm-webdesign.com/2017/06/20/57-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2017-06-20 14:42:13', '2017-06-20 12:42:13', '', 'AMÉNAGEMENTS', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2017-06-20 14:42:13', '2017-06-20 12:42:13', '', 57, 'http://http://mjm-webdesign.com/2017/06/20/57-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2017-06-20 14:44:01', '2017-06-20 12:44:01', ' ', '', '', 'publish', 'closed', 'closed', '', '90', '', '', '2017-06-20 14:44:01', '2017-06-20 12:44:01', '', 0, 'http://http://mjm-webdesign.com/?p=90', 4, 'nav_menu_item', '', 0),
(91, 1, '2017-06-20 14:44:01', '2017-06-20 12:44:01', ' ', '', '', 'publish', 'closed', 'closed', '', '91', '', '', '2017-06-20 14:44:01', '2017-06-20 12:44:01', '', 0, 'http://http://mjm-webdesign.com/?p=91', 5, 'nav_menu_item', '', 0),
(92, 1, '2017-06-20 14:44:01', '2017-06-20 12:44:01', ' ', '', '', 'publish', 'closed', 'closed', '', '92', '', '', '2017-06-20 14:44:01', '2017-06-20 12:44:01', '', 0, 'http://http://mjm-webdesign.com/?p=92', 6, 'nav_menu_item', '', 0),
(93, 1, '2017-06-20 14:47:10', '2017-06-20 12:47:10', '', 'DRESSING', '', 'trash', 'open', 'open', '', 'amenagements__trashed', '', '', '2017-06-20 14:47:51', '2017-06-20 12:47:51', '', 0, 'http://http://mjm-webdesign.com/?p=93', 0, 'post', '', 0),
(94, 1, '2017-06-20 14:46:01', '2017-06-20 12:46:01', '', 'CP peuplier gris rose', '', 'inherit', 'open', 'closed', '', 'cp-peuplier-gris-rose', '', '', '2017-06-20 14:46:01', '2017-06-20 12:46:01', '', 93, 'http://http://mjm-webdesign.com/wp-content/uploads/2017/06/CP-peuplier-gris-rose.jpg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2017-06-20 14:46:05', '2017-06-20 12:46:05', '', 'Dressing Chat Tigre modif.1', '', 'inherit', 'open', 'closed', '', 'dressing-chat-tigre-modif-1', '', '', '2017-06-20 14:46:05', '2017-06-20 12:46:05', '', 93, 'http://http://mjm-webdesign.com/wp-content/uploads/2017/06/Dressing-Chat-Tigre-modif.1.jpg', 0, 'attachment', 'image/jpeg', 0),
(96, 1, '2017-06-20 14:46:06', '2017-06-20 12:46:06', '', 'Dressing Chat Tigre modif.2', '', 'inherit', 'open', 'closed', '', 'dressing-chat-tigre-modif-2', '', '', '2017-06-20 14:46:06', '2017-06-20 12:46:06', '', 93, 'http://http://mjm-webdesign.com/wp-content/uploads/2017/06/Dressing-Chat-Tigre-modif.2.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2017-06-20 14:46:11', '2017-06-20 12:46:11', '', 'untitled.288', '', 'inherit', 'open', 'closed', '', 'untitled-288', '', '', '2017-06-20 14:46:11', '2017-06-20 12:46:11', '', 93, 'http://http://mjm-webdesign.com/wp-content/uploads/2017/06/untitled.288.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2017-06-20 14:46:16', '2017-06-20 12:46:16', '', 'untitled.290', '', 'inherit', 'open', 'closed', '', 'untitled-290', '', '', '2017-06-20 14:46:16', '2017-06-20 12:46:16', '', 93, 'http://http://mjm-webdesign.com/wp-content/uploads/2017/06/untitled.290.jpg', 0, 'attachment', 'image/jpeg', 0),
(99, 1, '2017-06-20 14:46:22', '2017-06-20 12:46:22', '', 'untitled.292', '', 'inherit', 'open', 'closed', '', 'untitled-292', '', '', '2017-06-20 14:46:22', '2017-06-20 12:46:22', '', 93, 'http://http://mjm-webdesign.com/wp-content/uploads/2017/06/untitled.292.jpg', 0, 'attachment', 'image/jpeg', 0),
(100, 1, '2017-06-20 14:47:10', '2017-06-20 12:47:10', '', 'AMÉNAGEMENTS', '', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2017-06-20 14:47:10', '2017-06-20 12:47:10', '', 93, 'http://http://mjm-webdesign.com/2017/06/20/93-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2017-06-20 14:47:23', '2017-06-20 12:47:23', '', 'DRESSING', '', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2017-06-20 14:47:23', '2017-06-20 12:47:23', '', 93, 'http://http://mjm-webdesign.com/2017/06/20/93-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2017-06-20 14:47:55', '2017-06-20 12:47:55', '', 'DRESSING', '', 'publish', 'open', 'open', '', 'dressing', '', '', '2017-06-20 14:47:55', '2017-06-20 12:47:55', '', 0, 'http://http://mjm-webdesign.com/?p=102', 0, 'post', '', 0),
(103, 1, '2017-06-20 14:47:55', '2017-06-20 12:47:55', '', 'DRESSING', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2017-06-20 14:47:55', '2017-06-20 12:47:55', '', 102, 'http://http://mjm-webdesign.com/2017/06/20/102-revision-v1/', 0, 'revision', '', 0) ;

#
# End of data contents of table `wp_2k17_wp_examenposts`
# --------------------------------------------------------



#
# Delete any existing table `wp_2k17_wp_examenterm_relationships`
#

DROP TABLE IF EXISTS `wp_2k17_wp_examenterm_relationships`;


#
# Table structure of table `wp_2k17_wp_examenterm_relationships`
#

CREATE TABLE `wp_2k17_wp_examenterm_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_2k17_wp_examenterm_relationships`
#
INSERT INTO `wp_2k17_wp_examenterm_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(17, 2, 0),
(18, 2, 0),
(19, 2, 0),
(25, 1, 0),
(53, 2, 0),
(56, 1, 0),
(57, 1, 0),
(58, 1, 0),
(90, 2, 0),
(91, 2, 0),
(92, 2, 0),
(93, 1, 0),
(102, 1, 0) ;

#
# End of data contents of table `wp_2k17_wp_examenterm_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_2k17_wp_examenterm_taxonomy`
#

DROP TABLE IF EXISTS `wp_2k17_wp_examenterm_taxonomy`;


#
# Table structure of table `wp_2k17_wp_examenterm_taxonomy`
#

CREATE TABLE `wp_2k17_wp_examenterm_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_2k17_wp_examenterm_taxonomy`
#
INSERT INTO `wp_2k17_wp_examenterm_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 4),
(2, 2, 'nav_menu', '', 0, 7) ;

#
# End of data contents of table `wp_2k17_wp_examenterm_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_2k17_wp_examentermmeta`
#

DROP TABLE IF EXISTS `wp_2k17_wp_examentermmeta`;


#
# Table structure of table `wp_2k17_wp_examentermmeta`
#

CREATE TABLE `wp_2k17_wp_examentermmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_2k17_wp_examentermmeta`
#

#
# End of data contents of table `wp_2k17_wp_examentermmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_2k17_wp_examenterms`
#

DROP TABLE IF EXISTS `wp_2k17_wp_examenterms`;


#
# Table structure of table `wp_2k17_wp_examenterms`
#

CREATE TABLE `wp_2k17_wp_examenterms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_2k17_wp_examenterms`
#
INSERT INTO `wp_2k17_wp_examenterms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'Menu principal', 'menu-principal', 0) ;

#
# End of data contents of table `wp_2k17_wp_examenterms`
# --------------------------------------------------------



#
# Delete any existing table `wp_2k17_wp_examenusermeta`
#

DROP TABLE IF EXISTS `wp_2k17_wp_examenusermeta`;


#
# Table structure of table `wp_2k17_wp_examenusermeta`
#

CREATE TABLE `wp_2k17_wp_examenusermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_2k17_wp_examenusermeta`
#
INSERT INTO `wp_2k17_wp_examenusermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wp_2k17_wp_examencapabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'wp_2k17_wp_examenuser_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '1'),
(15, 1, 'session_tokens', 'a:1:{s:64:"e3a396a3107fb6dd54c811ca69b37bac7559a47b30ac853dc156b70191fe3d20";a:4:{s:10:"expiration";i:1498114569;s:2:"ip";s:3:"::1";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36";s:5:"login";i:1497941769;}}'),
(16, 1, 'wp_2k17_wp_examendashboard_quick_press_last_post_id', '3'),
(17, 1, 'community-events-location', 'a:1:{s:2:"ip";s:2:"::";}'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(20, 1, 'nav_menu_recently_edited', '2'),
(21, 1, 'wp_2k17_wp_examenuser-settings', 'libraryContent=browse&editor=tinymce'),
(22, 1, 'wp_2k17_wp_examenuser-settings-time', '1497962521') ;

#
# End of data contents of table `wp_2k17_wp_examenusermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_2k17_wp_examenusers`
#

DROP TABLE IF EXISTS `wp_2k17_wp_examenusers`;


#
# Table structure of table `wp_2k17_wp_examenusers`
#

CREATE TABLE `wp_2k17_wp_examenusers` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_2k17_wp_examenusers`
#
INSERT INTO `wp_2k17_wp_examenusers` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BBs9mlOaqbdcQI7/chCdEzuEdrDdB30', 'admin', 'lbeuchot68@gmail.com', '', '2017-06-20 06:56:03', '', 0, 'admin') ;

#
# End of data contents of table `wp_2k17_wp_examenusers`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

