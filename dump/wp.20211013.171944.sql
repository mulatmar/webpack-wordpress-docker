/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_commentmeta
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_comments
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`, `comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_links
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_options
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE = InnoDB AUTO_INCREMENT = 330 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_postmeta
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE = InnoDB AUTO_INCREMENT = 32 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_posts
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`, `post_status`, `post_date`, `ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE = InnoDB AUTO_INCREMENT = 33 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_term_relationships
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`, `term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_term_taxonomy
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`, `taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE = InnoDB AUTO_INCREMENT = 2 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_termmeta
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_terms
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE = InnoDB AUTO_INCREMENT = 2 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_usermeta
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE = InnoDB AUTO_INCREMENT = 21 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_users
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE = InnoDB AUTO_INCREMENT = 2 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_commentmeta
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_comments
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_links
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_options
# ------------------------------------------------------------

INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (1, 'siteurl', 'http://localhost', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (2, 'home', 'http://localhost', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (3, 'blogname', 'test', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    4,
    'blogdescription',
    'Kolejna witryna oparta na WordPressie',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (5, 'users_can_register', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (6, 'admin_email', 'test@test.pl', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (7, 'start_of_week', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (8, 'use_balanceTags', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (9, 'use_smilies', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (10, 'require_name_email', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (11, 'comments_notify', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (12, 'posts_per_rss', '5', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (13, 'rss_use_excerpt', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (14, 'mailserver_url', 'mail.example.com', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (15, 'mailserver_login', 'login@example.com', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (16, 'mailserver_pass', 'password', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (17, 'mailserver_port', '110', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (18, 'default_category', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (19, 'default_comment_status', 'open', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (20, 'default_ping_status', 'open', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (21, 'default_pingback_flag', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (22, 'posts_per_page', '5', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (23, 'date_format', 'j F Y', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (24, 'time_format', 'H:i', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (25, 'links_updated_date_format', 'j F Y H:i', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (26, 'comment_moderation', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (27, 'moderation_notify', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    28,
    'permalink_structure',
    '/%category%/%postname%/',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    29,
    'rewrite_rules',
    'a:99:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:31:\".+?/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\".+?/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\".+?/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\".+?/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"(.+?)/([^/]+)/embed/?$\";s:63:\"index.php?category_name=$matches[1]&name=$matches[2]&embed=true\";s:26:\"(.+?)/([^/]+)/trackback/?$\";s:57:\"index.php?category_name=$matches[1]&name=$matches[2]&tb=1\";s:46:\"(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:41:\"(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:34:\"(.+?)/([^/]+)/page/?([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&paged=$matches[3]\";s:41:\"(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&cpage=$matches[3]\";s:30:\"(.+?)/([^/]+)(?:/([0-9]+))?/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&page=$matches[3]\";s:20:\".+?/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\".+?/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\".+?/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\".+?/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:14:\"(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:26:\"(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:33:\"(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&cpage=$matches[2]\";s:8:\"(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (30, 'hack_file', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (31, 'blog_charset', 'UTF-8', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (32, 'moderation_keys', '', 'no');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (33, 'active_plugins', 'a:0:{}', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (34, 'category_base', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    35,
    'ping_sites',
    'http://rpc.pingomatic.com/',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (36, 'comment_max_links', '2', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (37, 'gmt_offset', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (38, 'default_email_category', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (39, 'recently_edited', '', 'no');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (40, 'template', 'newTemplate', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (41, 'stylesheet', 'newTemplate', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (44, 'comment_registration', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (45, 'html_type', 'text/html', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (46, 'use_trackback', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (47, 'default_role', 'subscriber', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (48, 'db_version', '49752', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (49, 'uploads_use_yearmonth_folders', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (50, 'upload_path', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (51, 'blog_public', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (52, 'default_link_category', '2', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (53, 'show_on_front', 'posts', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (54, 'tag_base', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (55, 'show_avatars', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (56, 'avatar_rating', 'G', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (57, 'upload_url_path', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (58, 'thumbnail_size_w', '150', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (59, 'thumbnail_size_h', '150', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (60, 'thumbnail_crop', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (61, 'medium_size_w', '300', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (62, 'medium_size_h', '300', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (63, 'avatar_default', 'mystery', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (64, 'large_size_w', '1024', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (65, 'large_size_h', '1024', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (66, 'image_default_link_type', 'none', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (67, 'image_default_size', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (68, 'image_default_align', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (69, 'close_comments_for_old_posts', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (70, 'close_comments_days_old', '14', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (71, 'thread_comments', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (72, 'thread_comments_depth', '5', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (73, 'page_comments', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (74, 'comments_per_page', '50', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (75, 'default_comments_page', 'newest', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (76, 'comment_order', 'asc', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (77, 'sticky_posts', 'a:0:{}', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    78,
    'widget_categories',
    'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (79, 'widget_text', 'a:0:{}', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (80, 'widget_rss', 'a:0:{}', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (81, 'uninstall_plugins', 'a:0:{}', 'no');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (82, 'timezone_string', 'Europe/Warsaw', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (84, 'page_on_front', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (85, 'default_post_format', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (86, 'link_manager_enabled', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (87, 'finished_splitting_shared_terms', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (88, 'site_icon', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (89, 'medium_large_size_w', '768', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (90, 'medium_large_size_h', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (91, 'wp_page_for_privacy_policy', '3', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (92, 'show_comments_cookies_opt_in', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (93, 'initial_db_version', '38590', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    94,
    'wp_user_roles',
    'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (95, 'fresh_site', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (96, 'WPLANG', 'pl_PL', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    97,
    'widget_search',
    'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    98,
    'widget_recent-posts',
    'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    99,
    'widget_recent-comments',
    'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    100,
    'widget_archives',
    'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    101,
    'widget_meta',
    'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    102,
    'sidebars_widgets',
    'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    103,
    'widget_pages',
    'a:1:{s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    104,
    'widget_calendar',
    'a:1:{s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    105,
    'widget_media_audio',
    'a:1:{s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    106,
    'widget_media_image',
    'a:1:{s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    107,
    'widget_media_gallery',
    'a:1:{s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    108,
    'widget_media_video',
    'a:1:{s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    109,
    'widget_tag_cloud',
    'a:1:{s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    110,
    'widget_nav_menu',
    'a:1:{s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    111,
    'widget_custom_html',
    'a:1:{s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    112,
    'cron',
    'a:7:{i:1634136626;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1634147441;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1634151026;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1634151059;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1634151073;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1634160836;a:2:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    113,
    'theme_mods_twentyseventeen',
    'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1535223189;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (144, 'current_theme', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    145,
    'theme_mods_newTemplate',
    'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1535223393;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (146, 'theme_switched', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    152,
    'theme_mods_twentyfifteen',
    'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1535223453;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:0:{}}}}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    154,
    '_transient_twentyfifteen_categories',
    '1',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (158, 'recently_activated', 'a:0:{}', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    176,
    'logged_in_key',
    '9m;et>$j$(QUtL<66l{e7wffJMR(n+Nm+S5*su8Z|+|OmH$r)$riGK:*I~(B`616',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    177,
    'logged_in_salt',
    '0ZVYX*h,##vZ,{82my]!w15- &5eMO[#nmco21<L`CmZ!d8eiNa8F0h:eRO<PnL<',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    178,
    'nonce_key',
    'a;~J:{2Cst20S@=IPz:bLi:?O%}i|k<oENjZ^4FrLJJO77Q^EkaXEIPcX>,-Lk;1',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    179,
    'nonce_salt',
    'T6>:^*MfU7@Y`.<.<B*yn}v92&rh}H:+j);l,RO]9z!3S5e;g,7]Kp$.#7~Mq-En',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    187,
    'auth_key',
    'B=QEiu%s{1Z+/{Q6fVpbU[h4?<A))tbi~Y1#NhD;`/FT&5-|kU90b.N&D-2J5Qa/',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    188,
    'auth_salt',
    's3g2bo]?%)7@(_{~OglPz_c& AOp*sDSe#Ur|x[07goE%Nn/}HHxH=Dy_uv 6dCR',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (189, 'db_upgraded', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    218,
    'auto_core_update_notified',
    'a:4:{s:4:\"type\";s:4:\"fail\";s:5:\"email\";s:12:\"test@test.pl\";s:7:\"version\";s:5:\"5.2.4\";s:9:\"timestamp\";i:1575049848;}',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (219, 'recovery_keys', 'a:0:{}', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    242,
    '_transient_health-check-site-status-result',
    '{\"good\":16,\"recommended\":2,\"critical\":1}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (245, 'page_for_posts', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (253, 'admin_email_lifespan', '1619213031', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (307, 'disallowed_keys', '', 'no');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (308, 'comment_previously_approved', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    309,
    'auto_plugin_theme_update_emails',
    'a:0:{}',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (310, 'auto_update_core_dev', 'enabled', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (311, 'auto_update_core_minor', 'enabled', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (312, 'auto_update_core_major', 'unset', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (313, 'finished_updating_comment_type', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    317,
    'https_detection_errors',
    'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (318, 'can_compress_scripts', '1', 'no');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    319,
    'widget_block',
    'a:1:{s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    322,
    '_site_transient_timeout_theme_roots',
    '1634135981',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    323,
    '_site_transient_theme_roots',
    'a:2:{s:11:\"newTemplate\";s:7:\"/themes\";s:12:\"newTemplate3\";s:7:\"/themes\";}',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    325,
    '_site_transient_update_core',
    'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pl_PL/wordpress-5.8.1.zip\";s:6:\"locale\";s:5:\"pl_PL\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pl_PL/wordpress-5.8.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.1\";s:7:\"version\";s:5:\"5.8.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1634134186;s:15:\"version_checked\";s:5:\"5.8.1\";s:12:\"translations\";a:0:{}}',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    326,
    '_site_transient_update_themes',
    'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1634134186;s:7:\"checked\";a:2:{s:11:\"newTemplate\";s:0:\"\";s:12:\"newTemplate3\";s:3:\"1.3\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    327,
    '_site_transient_update_plugins',
    'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1634134186;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}}',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    328,
    '_site_transient_timeout_php_check_d4508776add2ac959ef9a5d5285e77c3',
    '1634738988',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    329,
    '_site_transient_php_check_d4508776add2ac959ef9a5d5285e77c3',
    'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}',
    'no'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_postmeta
# ------------------------------------------------------------

INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (18, 13, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (19, 13, '_edit_lock', '1575051523:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (22, 15, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (23, 15, '_edit_lock', '1575051562:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (26, 17, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (27, 17, '_edit_lock', '1575051596:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (30, 19, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (31, 19, '_edit_lock', '1575051874:1');

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_posts
# ------------------------------------------------------------

INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    13,
    1,
    '2018-08-26 09:25:15',
    '2018-08-26 07:25:15',
    '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;jest tekstem stosowanym jako przykładowy wypełniacz w przemyśle poligraficznym. Został po raz pierwszy użyty w XV w. przez nieznanego drukarza do wypełnienia tekstem próbnej książki. Pięć wieków później zaczął być używany przemyśle elektronicznym, pozostając praktycznie niezmienionym. Spopularyzował się w latach 60. XX w. wraz z publikacją arkuszy Letrasetu, zawierających fragmenty Lorem Ipsum, a ostatnio z zawierającym różne wersje Lorem Ipsum oprogramowaniem przeznaczonym do realizacji druków na komputerach osobistych, jak Aldus PageMaker\n\n</p>\n<!-- /wp:paragraph -->',
    'first',
    '',
    'publish',
    'open',
    'open',
    '',
    'pierwszy',
    '',
    '',
    '2019-11-29 19:21:05',
    '2019-11-29 18:21:05',
    '',
    0,
    'http://localhost/?p=13',
    0,
    'post',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    14,
    1,
    '2018-08-26 09:25:15',
    '2018-08-26 07:25:15',
    'Pierwszy',
    'Pierwszy',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '13-revision-v1',
    '',
    '',
    '2018-08-26 09:25:15',
    '2018-08-26 07:25:15',
    '',
    13,
    'http://localhost/2018/08/26/13-revision-v1/',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    15,
    1,
    '2018-08-26 09:25:29',
    '2018-08-26 07:25:29',
    '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;ist ein einfacher Demo-Text für die Print- und Schriftindustrie. Lorem Ipsum ist in der Industrie bereits der Standard Demo-Text seit 1500, als ein unbekannter Schriftsteller eine Hand voll Wörter nahm und diese durcheinander warf um ein Musterbuch zu erstellen. Es hat nicht nur 5 Jahrhunderte überlebt, sondern auch in Spruch in die elektronische Schriftbearbeitung geschafft (bemerke, nahezu unverändert). Bekannt wurde es 1960, mit dem erscheinen von \"Letraset\", welches Passagen von Lorem Ipsum enhielt, so wie Desktop Software wie \"Aldus PageMaker\" - ebenfalls mit Lorem Ipsum.\n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->',
    'second',
    '',
    'publish',
    'open',
    'open',
    '',
    'drugi',
    '',
    '',
    '2019-11-29 19:21:42',
    '2019-11-29 18:21:42',
    '',
    0,
    'http://localhost/?p=15',
    0,
    'post',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    16,
    1,
    '2018-08-26 09:25:29',
    '2018-08-26 07:25:29',
    'Drugi',
    'Drugi',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '15-revision-v1',
    '',
    '',
    '2018-08-26 09:25:29',
    '2018-08-26 07:25:29',
    '',
    15,
    'http://localhost/2018/08/26/15-revision-v1/',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    17,
    1,
    '2018-08-26 09:25:40',
    '2018-08-26 07:25:40',
    '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;је једноставно модел текста који се користи у штампарској и словослагачкој индустрији. Lorem ipsum је био стандард за модел текста још од 1500. године, када је непознати штампар узео кутију са словима и сложио их како би направио узорак књиге. Не само што је овај модел опстао пет векова, него је чак почео да се користи и у електронским медијима, непроменивши се. Популаризован је шездесетих година двадесетог века заједно са листовима летерсета који су садржали Lorem Ipsum пасусе, а данас са софтверским пакетом за прелом као што је Aldus PageMaker који је садржао Lorem Ipsum верзије.\n\n</p>\n<!-- /wp:paragraph -->',
    'third',
    '',
    'publish',
    'open',
    'open',
    '',
    'trzecie',
    '',
    '',
    '2019-11-29 19:22:19',
    '2019-11-29 18:22:19',
    '',
    0,
    'http://localhost/?p=17',
    0,
    'post',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    18,
    1,
    '2018-08-26 09:25:40',
    '2018-08-26 07:25:40',
    'Trzecie',
    'Trzecie',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '17-revision-v1',
    '',
    '',
    '2018-08-26 09:25:40',
    '2018-08-26 07:25:40',
    '',
    17,
    'http://localhost/2018/08/26/17-revision-v1/',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    19,
    1,
    '2018-08-26 09:25:49',
    '2018-08-26 07:25:49',
    '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> je demonstrativní výplňový text používaný v tiskařském a knihařském průmyslu. Lorem Ipsum je považováno za standard v této oblasti už od začátku 16. století, kdy dnes neznámý tiskař vzal kusy textu a na jejich základě vytvořil speciální vzorovou knihu. Jeho odkaz nevydržel pouze pět století, on přežil i nástup elektronické sazby v podstatě beze změny. Nejvíce popularizováno bylo Lorem Ipsum v šedesátých letech 20. století, kdy byly vydávány speciální vzorníky s jeho pasážemi a později pak díky počítačovým DTP programům jako Aldus PageMaker. </p>\n<!-- /wp:paragraph -->',
    'fourth',
    '',
    'publish',
    'open',
    'open',
    '',
    'czwarte',
    '',
    '',
    '2019-11-29 19:27:01',
    '2019-11-29 18:27:01',
    '',
    0,
    'http://localhost/?p=19',
    0,
    'post',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    20,
    1,
    '2018-08-26 09:25:49',
    '2018-08-26 07:25:49',
    'Czwarte',
    'Czwarte',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '19-revision-v1',
    '',
    '',
    '2018-08-26 09:25:49',
    '2018-08-26 07:25:49',
    '',
    19,
    'http://localhost/2018/08/26/19-revision-v1/',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    24,
    1,
    '2019-11-29 19:20:43',
    '2019-11-29 18:20:43',
    '<p>first</p>\n\n<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;jest tekstem stosowanym jako przykładowy wypełniacz w przemyśle poligraficznym. Został po raz pierwszy użyty w XV w. przez nieznanego drukarza do wypełnienia tekstem próbnej książki. Pięć wieków później zaczął być używany przemyśle elektronicznym, pozostając praktycznie niezmienionym. Spopularyzował się w latach 60. XX w. wraz z publikacją arkuszy Letrasetu, zawierających fragmenty Lorem Ipsum, a ostatnio z zawierającym różne wersje Lorem Ipsum oprogramowaniem przeznaczonym do realizacji druków na komputerach osobistych, jak Aldus PageMaker\n\n</p>\n<!-- /wp:paragraph -->',
    'Pierwszy',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '13-revision-v1',
    '',
    '',
    '2019-11-29 19:20:43',
    '2019-11-29 18:20:43',
    '',
    13,
    'http://localhost/bez-kategorii/13-revision-v1/',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    25,
    1,
    '2019-11-29 19:21:05',
    '2019-11-29 18:21:05',
    '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;jest tekstem stosowanym jako przykładowy wypełniacz w przemyśle poligraficznym. Został po raz pierwszy użyty w XV w. przez nieznanego drukarza do wypełnienia tekstem próbnej książki. Pięć wieków później zaczął być używany przemyśle elektronicznym, pozostając praktycznie niezmienionym. Spopularyzował się w latach 60. XX w. wraz z publikacją arkuszy Letrasetu, zawierających fragmenty Lorem Ipsum, a ostatnio z zawierającym różne wersje Lorem Ipsum oprogramowaniem przeznaczonym do realizacji druków na komputerach osobistych, jak Aldus PageMaker\n\n</p>\n<!-- /wp:paragraph -->',
    'first',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '13-revision-v1',
    '',
    '',
    '2019-11-29 19:21:05',
    '2019-11-29 18:21:05',
    '',
    13,
    'http://localhost/bez-kategorii/13-revision-v1/',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    26,
    1,
    '2019-11-29 19:21:42',
    '2019-11-29 18:21:42',
    '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;ist ein einfacher Demo-Text für die Print- und Schriftindustrie. Lorem Ipsum ist in der Industrie bereits der Standard Demo-Text seit 1500, als ein unbekannter Schriftsteller eine Hand voll Wörter nahm und diese durcheinander warf um ein Musterbuch zu erstellen. Es hat nicht nur 5 Jahrhunderte überlebt, sondern auch in Spruch in die elektronische Schriftbearbeitung geschafft (bemerke, nahezu unverändert). Bekannt wurde es 1960, mit dem erscheinen von \"Letraset\", welches Passagen von Lorem Ipsum enhielt, so wie Desktop Software wie \"Aldus PageMaker\" - ebenfalls mit Lorem Ipsum.\n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->',
    'second',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '15-revision-v1',
    '',
    '',
    '2019-11-29 19:21:42',
    '2019-11-29 18:21:42',
    '',
    15,
    'http://localhost/bez-kategorii/15-revision-v1/',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    27,
    1,
    '2019-11-29 19:22:19',
    '2019-11-29 18:22:19',
    '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;је једноставно модел текста који се користи у штампарској и словослагачкој индустрији. Lorem ipsum је био стандард за модел текста још од 1500. године, када је непознати штампар узео кутију са словима и сложио их како би направио узорак књиге. Не само што је овај модел опстао пет векова, него је чак почео да се користи и у електронским медијима, непроменивши се. Популаризован је шездесетих година двадесетог века заједно са листовима летерсета који су садржали Lorem Ipsum пасусе, а данас са софтверским пакетом за прелом као што је Aldus PageMaker који је садржао Lorem Ipsum верзије.\n\n</p>\n<!-- /wp:paragraph -->',
    'third',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '17-revision-v1',
    '',
    '',
    '2019-11-29 19:22:19',
    '2019-11-29 18:22:19',
    '',
    17,
    'http://localhost/bez-kategorii/17-revision-v1/',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    28,
    1,
    '2019-11-29 19:22:52',
    '2019-11-29 18:22:52',
    '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;je demonstrativní výplňový text používaný v tiskařském a knihařském průmyslu. Lorem Ipsum je považováno za standard v této oblasti už od začátku 16. století, kdy dnes neznámý tiskař vzal kusy textu a na jejich základě vytvořil speciální vzorovou knihu. Jeho odkaz nevydržel pouze pět století, on přežil i nástup elektronické sazby v podstatě beze změny. Nejvíce popularizováno bylo Lorem Ipsum v šedesátých letech 20. století, kdy byly vydávány speciální vzorníky s jeho pasážemi a později pak díky počítačovým DTP programům jako Aldus PageMaker.\n\n</p>\n<!-- /wp:paragraph -->',
    'fourth',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '19-revision-v1',
    '',
    '',
    '2019-11-29 19:22:52',
    '2019-11-29 18:22:52',
    '',
    19,
    'http://localhost/bez-kategorii/19-revision-v1/',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    29,
    1,
    '2019-11-29 19:24:51',
    '2019-11-29 18:24:51',
    '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> je demonstrativní výplňový text používaný v tiskařském a knihařském průmyslu. Lorem Ipsum je považováno za standard v této oblasti už od začátku 16. století, kdy dnes neznámý tiskař vzal kusy textu a na jejich základě vytvořil speciální vzorovou knihu. Jeho odkaz nevydržel pouze pět století, on přežil i nástup elektronické sazby v podstatě beze změny. Nejvíce popularizováno bylo Lorem Ipsum v šedesátých letech 20. století, kdy byly vydávány speciální vzorníky s jeho pasážemi a později pak díky počítačovým DTP programům jako Aldus PageMaker. </p>\n<!-- /wp:paragraph -->',
    'fourth',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '19-autosave-v1',
    '',
    '',
    '2019-11-29 19:24:51',
    '2019-11-29 18:24:51',
    '',
    19,
    'http://localhost/bez-kategorii/19-autosave-v1/',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    30,
    1,
    '2019-11-29 19:26:34',
    '2019-11-29 18:26:34',
    '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> je demonstrativní výplňový text používaný v tiskařském a knihařském průmyslu. Lorem Ipsum je považováno za standard v této oblasti už od začátku 16. století, kdy dnes neznámý tiskař vzal kusy textu a na jejich základě vytvořil speciální vzorovou knihu. Jeho odkaz nevydržel pouze pět století, on přežil i nástup elektronické sazby v podstatě beze změny. Nejvíce popularizováno bylo Lorem Ipsum v šedesátých letech 20. století, kdy byly vydávány speciální vzorníky s jeho pasážemi a později pak díky počítačovým DTP programům jako Aldus PageMaker. </p>\n<!-- /wp:paragraph -->',
    'Untitled Reusable Block',
    '',
    'publish',
    'closed',
    'closed',
    '',
    'untitled-reusable-block',
    '',
    '',
    '2019-11-29 19:26:34',
    '2019-11-29 18:26:34',
    '',
    0,
    'http://localhost/bez-kategorii/untitled-reusable-block/',
    0,
    'wp_block',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    31,
    1,
    '2019-11-29 19:27:01',
    '2019-11-29 18:27:01',
    '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> je demonstrativní výplňový text používaný v tiskařském a knihařském průmyslu. Lorem Ipsum je považováno za standard v této oblasti už od začátku 16. století, kdy dnes neznámý tiskař vzal kusy textu a na jejich základě vytvořil speciální vzorovou knihu. Jeho odkaz nevydržel pouze pět století, on přežil i nástup elektronické sazby v podstatě beze změny. Nejvíce popularizováno bylo Lorem Ipsum v šedesátých letech 20. století, kdy byly vydávány speciální vzorníky s jeho pasážemi a později pak díky počítačovým DTP programům jako Aldus PageMaker. </p>\n<!-- /wp:paragraph -->',
    'fourth',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '19-revision-v1',
    '',
    '',
    '2019-11-29 19:27:01',
    '2019-11-29 18:27:01',
    '',
    19,
    'http://localhost/bez-kategorii/19-revision-v1/',
    0,
    'revision',
    '',
    0
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_term_relationships
# ------------------------------------------------------------

INSERT INTO
  `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`)
VALUES
  (13, 1, 0);
INSERT INTO
  `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`)
VALUES
  (15, 1, 0);
INSERT INTO
  `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`)
VALUES
  (17, 1, 0);
INSERT INTO
  `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`)
VALUES
  (19, 1, 0);

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_term_taxonomy
# ------------------------------------------------------------

INSERT INTO
  `wp_term_taxonomy` (
    `term_taxonomy_id`,
    `term_id`,
    `taxonomy`,
    `description`,
    `parent`,
    `count`
  )
VALUES
  (1, 1, 'category', '', 0, 4);

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_termmeta
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_terms
# ------------------------------------------------------------

INSERT INTO
  `wp_terms` (`term_id`, `name`, `slug`, `term_group`)
VALUES
  (1, 'Bez kategorii', 'bez-kategorii', 0);

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_usermeta
# ------------------------------------------------------------

INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (1, 1, 'nickname', 'test');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (2, 1, 'first_name', '');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (3, 1, 'last_name', '');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (4, 1, 'description', '');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (5, 1, 'rich_editing', 'true');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (6, 1, 'syntax_highlighting', 'true');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (7, 1, 'comment_shortcuts', 'false');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (8, 1, 'admin_color', 'fresh');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (9, 1, 'use_ssl', '0');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (10, 1, 'show_admin_bar_front', 'false');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (11, 1, 'locale', '');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (
    12,
    1,
    'wp_capabilities',
    'a:1:{s:13:\"administrator\";b:1;}'
  );
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (13, 1, 'wp_user_level', '10');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (14, 1, 'dismissed_wp_pointers', 'wp496_privacy');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (15, 1, 'show_welcome_panel', '1');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (
    16,
    1,
    'session_tokens',
    'a:1:{s:64:\"7ea7f7e5c3a35a9aefcd5ac5f49e26b3c8564b422b111a75cc6e07904d676e6d\";a:4:{s:10:\"expiration\";i:1619126625;s:2:\"ip\";s:10:\"172.21.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36\";s:5:\"login\";i:1618953825;}}'
  );
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (
    17,
    1,
    'wp_dashboard_quick_press_last_post_id',
    '32'
  );
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (
    18,
    1,
    'community-events-location',
    'a:1:{s:2:\"ip\";s:10:\"172.21.0.0\";}'
  );
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (
    19,
    1,
    'wp_user-settings',
    'mfold=o&unfold=1&libraryContent=browse&editor=html'
  );
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (20, 1, 'wp_user-settings-time', '1618953828');

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_users
# ------------------------------------------------------------

INSERT INTO
  `wp_users` (
    `ID`,
    `user_login`,
    `user_pass`,
    `user_nicename`,
    `user_email`,
    `user_url`,
    `user_registered`,
    `user_activation_key`,
    `user_status`,
    `display_name`
  )
VALUES
  (
    1,
    'test',
    '$P$B/nIptzjky0uL8dAEoktZY/GRIvkPc.',
    'test',
    'test@test.pl',
    '',
    '2018-08-25 18:50:25',
    '',
    0,
    'test'
  );

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
