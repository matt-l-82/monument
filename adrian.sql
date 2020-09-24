-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.18-0ubuntu0.16.04.1 - (Ubuntu)
-- Server OS:                    Linux
-- HeidiSQL Version:             9.4.0.5174
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for monumenthouse
CREATE DATABASE IF NOT EXISTS `monumenthouse` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `monumenthouse`;

-- Dumping structure for table monumenthouse.mhdb_commentmeta
CREATE TABLE IF NOT EXISTS `mhdb_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.
-- Dumping structure for table monumenthouse.mhdb_comments
CREATE TABLE IF NOT EXISTS `mhdb_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10)),
  KEY `woo_idx_comment_type` (`comment_type`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.
-- Dumping structure for table monumenthouse.mhdb_links
CREATE TABLE IF NOT EXISTS `mhdb_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.
-- Dumping structure for table monumenthouse.mhdb_ngg_album
CREATE TABLE IF NOT EXISTS `mhdb_ngg_album` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `previewpic` bigint(20) NOT NULL DEFAULT '0',
  `albumdesc` mediumtext COLLATE utf8mb4_unicode_ci,
  `sortorder` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `pageid` bigint(20) NOT NULL DEFAULT '0',
  `extras_post_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `extras_post_id_key` (`extras_post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.
-- Dumping structure for table monumenthouse.mhdb_ngg_gallery
CREATE TABLE IF NOT EXISTS `mhdb_ngg_gallery` (
  `gid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` mediumtext COLLATE utf8mb4_unicode_ci,
  `title` mediumtext COLLATE utf8mb4_unicode_ci,
  `galdesc` mediumtext COLLATE utf8mb4_unicode_ci,
  `pageid` bigint(20) NOT NULL DEFAULT '0',
  `previewpic` bigint(20) NOT NULL DEFAULT '0',
  `author` bigint(20) NOT NULL DEFAULT '0',
  `extras_post_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`gid`),
  KEY `extras_post_id_key` (`extras_post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.
-- Dumping structure for table monumenthouse.mhdb_ngg_pictures
CREATE TABLE IF NOT EXISTS `mhdb_ngg_pictures` (
  `pid` bigint(20) NOT NULL AUTO_INCREMENT,
  `image_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) NOT NULL DEFAULT '0',
  `galleryid` bigint(20) NOT NULL DEFAULT '0',
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `alttext` mediumtext COLLATE utf8mb4_unicode_ci,
  `imagedate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `exclude` tinyint(4) DEFAULT '0',
  `sortorder` bigint(20) NOT NULL DEFAULT '0',
  `meta_data` longtext COLLATE utf8mb4_unicode_ci,
  `extras_post_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pid`),
  KEY `extras_post_id_key` (`extras_post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.
-- Dumping structure for table monumenthouse.mhdb_options
CREATE TABLE IF NOT EXISTS `mhdb_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=6528 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.
-- Dumping structure for table monumenthouse.mhdb_postmeta
CREATE TABLE IF NOT EXISTS `mhdb_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=14329 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.
-- Dumping structure for table monumenthouse.mhdb_posts
CREATE TABLE IF NOT EXISTS `mhdb_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=382 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.
-- Dumping structure for table monumenthouse.mhdb_revslider_css
CREATE TABLE IF NOT EXISTS `mhdb_revslider_css` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `handle` text COLLATE utf8_unicode_ci NOT NULL,
  `settings` longtext COLLATE utf8_unicode_ci,
  `hover` longtext COLLATE utf8_unicode_ci,
  `params` longtext COLLATE utf8_unicode_ci NOT NULL,
  `advanced` longtext COLLATE utf8_unicode_ci,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=134 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Data exporting was unselected.
-- Dumping structure for table monumenthouse.mhdb_revslider_layer_animations
CREATE TABLE IF NOT EXISTS `mhdb_revslider_layer_animations` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `handle` text COLLATE utf8_unicode_ci NOT NULL,
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Data exporting was unselected.
-- Dumping structure for table monumenthouse.mhdb_revslider_navigations
CREATE TABLE IF NOT EXISTS `mhdb_revslider_navigations` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `css` longtext COLLATE utf8_unicode_ci NOT NULL,
  `markup` longtext COLLATE utf8_unicode_ci NOT NULL,
  `settings` longtext COLLATE utf8_unicode_ci,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Data exporting was unselected.
-- Dumping structure for table monumenthouse.mhdb_revslider_sliders
CREATE TABLE IF NOT EXISTS `mhdb_revslider_sliders` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `title` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `alias` tinytext COLLATE utf8_unicode_ci,
  `params` longtext COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `type` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Data exporting was unselected.
-- Dumping structure for table monumenthouse.mhdb_revslider_slides
CREATE TABLE IF NOT EXISTS `mhdb_revslider_slides` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `slider_id` int(9) NOT NULL,
  `slide_order` int(11) NOT NULL,
  `params` longtext COLLATE utf8_unicode_ci NOT NULL,
  `layers` longtext COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Data exporting was unselected.
-- Dumping structure for table monumenthouse.mhdb_revslider_static_slides
CREATE TABLE IF NOT EXISTS `mhdb_revslider_static_slides` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `slider_id` int(9) NOT NULL,
  `params` longtext COLLATE utf8_unicode_ci NOT NULL,
  `layers` longtext COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Data exporting was unselected.
-- Dumping structure for table monumenthouse.mhdb_termmeta
CREATE TABLE IF NOT EXISTS `mhdb_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.
-- Dumping structure for table monumenthouse.mhdb_terms
CREATE TABLE IF NOT EXISTS `mhdb_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.
-- Dumping structure for table monumenthouse.mhdb_term_relationships
CREATE TABLE IF NOT EXISTS `mhdb_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.
-- Dumping structure for table monumenthouse.mhdb_term_taxonomy
CREATE TABLE IF NOT EXISTS `mhdb_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.
-- Dumping structure for table monumenthouse.mhdb_usermeta
CREATE TABLE IF NOT EXISTS `mhdb_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.
-- Dumping structure for table monumenthouse.mhdb_users
CREATE TABLE IF NOT EXISTS `mhdb_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.
-- Dumping structure for table monumenthouse.mhdb_wdslayer
CREATE TABLE IF NOT EXISTS `mhdb_wdslayer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext NOT NULL,
  `slide_id` bigint(20) NOT NULL,
  `type` varchar(8) NOT NULL,
  `depth` bigint(20) NOT NULL,
  `text` mediumtext NOT NULL,
  `link` mediumtext NOT NULL,
  `left` int(4) NOT NULL,
  `top` int(4) NOT NULL,
  `start` bigint(20) NOT NULL,
  `end` bigint(20) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `color` varchar(8) NOT NULL,
  `size` bigint(20) NOT NULL,
  `ffamily` varchar(32) NOT NULL,
  `fweight` varchar(8) NOT NULL,
  `padding` varchar(32) NOT NULL,
  `fbgcolor` varchar(8) NOT NULL,
  `transparent` int(4) NOT NULL,
  `border_width` int(4) NOT NULL,
  `border_style` varchar(16) NOT NULL,
  `border_color` varchar(8) NOT NULL,
  `border_radius` varchar(32) NOT NULL,
  `shadow` varchar(127) NOT NULL,
  `image_url` mediumtext NOT NULL,
  `image_width` int(4) NOT NULL,
  `image_height` int(4) NOT NULL,
  `image_scale` varchar(8) NOT NULL,
  `alt` varchar(127) NOT NULL,
  `imgtransparent` int(4) NOT NULL,
  `social_button` varchar(16) NOT NULL,
  `hover_color` varchar(8) NOT NULL,
  `layer_effect_in` varchar(32) NOT NULL,
  `duration_eff_in` bigint(20) NOT NULL,
  `layer_effect_out` varchar(32) NOT NULL,
  `duration_eff_out` bigint(20) NOT NULL,
  `target_attr_layer` tinyint(1) NOT NULL,
  `hotp_width` int(4) NOT NULL,
  `hotp_fbgcolor` varchar(8) NOT NULL,
  `hotp_border_width` int(4) NOT NULL,
  `hotp_border_style` varchar(16) NOT NULL,
  `hotp_border_color` varchar(8) NOT NULL,
  `hotp_border_radius` varchar(32) NOT NULL,
  `hotp_text_position` varchar(6) NOT NULL,
  `google_fonts` int(1) NOT NULL,
  `add_class` varchar(127) NOT NULL,
  `layer_video_loop` tinyint(1) NOT NULL,
  `youtube_rel_layer_video` tinyint(1) NOT NULL,
  `hotspot_animation` tinyint(1) NOT NULL,
  `layer_callback_list` varchar(32) NOT NULL,
  `hotspot_text_display` varchar(8) NOT NULL,
  `hover_color_text` varchar(8) NOT NULL,
  `text_alignment` varchar(8) NOT NULL,
  `link_to_slide` int(4) NOT NULL,
  `align_layer` tinyint(1) NOT NULL,
  `static_layer` tinyint(1) NOT NULL,
  `infinite_in` int(4) NOT NULL,
  `infinite_out` int(4) NOT NULL,
  `min_size` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table monumenthouse.mhdb_wdsslide
CREATE TABLE IF NOT EXISTS `mhdb_wdsslide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slider_id` bigint(20) NOT NULL,
  `title` longtext NOT NULL,
  `type` varchar(128) NOT NULL,
  `image_url` mediumtext NOT NULL,
  `thumb_url` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL,
  `link` mediumtext NOT NULL,
  `order` bigint(20) NOT NULL,
  `target_attr_slide` tinyint(1) NOT NULL,
  `youtube_rel_video` tinyint(1) NOT NULL,
  `video_loop` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table monumenthouse.mhdb_wdsslider
CREATE TABLE IF NOT EXISTS `mhdb_wdsslider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(127) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `full_width` tinyint(1) NOT NULL,
  `width` int(4) NOT NULL,
  `height` int(4) NOT NULL,
  `bg_fit` varchar(16) NOT NULL,
  `align` varchar(8) NOT NULL,
  `effect` varchar(16) NOT NULL,
  `time_intervval` int(4) NOT NULL,
  `autoplay` tinyint(1) NOT NULL,
  `shuffle` tinyint(1) NOT NULL,
  `music` tinyint(1) NOT NULL,
  `music_url` mediumtext NOT NULL,
  `preload_images` tinyint(1) NOT NULL,
  `background_color` varchar(8) NOT NULL,
  `background_transparent` int(4) NOT NULL,
  `glb_border_width` int(4) NOT NULL,
  `glb_border_style` varchar(16) NOT NULL,
  `glb_border_color` varchar(8) NOT NULL,
  `glb_border_radius` varchar(32) NOT NULL,
  `glb_margin` int(4) NOT NULL,
  `glb_box_shadow` varchar(127) NOT NULL,
  `image_right_click` tinyint(1) NOT NULL,
  `layer_out_next` tinyint(1) NOT NULL,
  `prev_next_butt` tinyint(1) NOT NULL,
  `play_paus_butt` tinyint(1) NOT NULL,
  `navigation` varchar(16) NOT NULL,
  `rl_butt_style` varchar(16) NOT NULL,
  `rl_butt_size` int(4) NOT NULL,
  `pp_butt_size` int(4) NOT NULL,
  `butts_color` varchar(8) NOT NULL,
  `butts_transparent` int(4) NOT NULL,
  `hover_color` varchar(8) NOT NULL,
  `nav_border_width` int(4) NOT NULL,
  `nav_border_style` varchar(16) NOT NULL,
  `nav_border_color` varchar(8) NOT NULL,
  `nav_border_radius` varchar(32) NOT NULL,
  `nav_bg_color` varchar(8) NOT NULL,
  `bull_position` varchar(16) NOT NULL,
  `bull_style` varchar(20) NOT NULL,
  `bull_size` int(4) NOT NULL,
  `bull_color` varchar(8) NOT NULL,
  `bull_act_color` varchar(8) NOT NULL,
  `bull_margin` int(4) NOT NULL,
  `film_pos` varchar(16) NOT NULL,
  `film_thumb_width` int(4) NOT NULL,
  `film_thumb_height` int(4) NOT NULL,
  `film_bg_color` varchar(8) NOT NULL,
  `film_tmb_margin` int(4) NOT NULL,
  `film_act_border_width` int(4) NOT NULL,
  `film_act_border_style` varchar(16) NOT NULL,
  `film_act_border_color` varchar(8) NOT NULL,
  `film_dac_transparent` int(4) NOT NULL,
  `built_in_watermark_type` varchar(16) NOT NULL,
  `built_in_watermark_position` varchar(16) NOT NULL,
  `built_in_watermark_size` int(4) NOT NULL,
  `built_in_watermark_url` mediumtext NOT NULL,
  `built_in_watermark_text` mediumtext NOT NULL,
  `built_in_watermark_font_size` int(4) NOT NULL,
  `built_in_watermark_font` varchar(16) NOT NULL,
  `built_in_watermark_color` varchar(8) NOT NULL,
  `built_in_watermark_opacity` int(4) NOT NULL,
  `css` mediumtext NOT NULL,
  `timer_bar_type` varchar(16) NOT NULL,
  `timer_bar_size` int(4) NOT NULL,
  `timer_bar_color` varchar(8) NOT NULL,
  `timer_bar_transparent` int(4) NOT NULL,
  `spider_uploader` tinyint(1) NOT NULL,
  `stop_animation` tinyint(1) NOT NULL,
  `right_butt_url` varchar(255) NOT NULL,
  `left_butt_url` varchar(255) NOT NULL,
  `right_butt_hov_url` varchar(255) NOT NULL,
  `left_butt_hov_url` varchar(255) NOT NULL,
  `rl_butt_img_or_not` varchar(8) NOT NULL,
  `bullets_img_main_url` varchar(255) NOT NULL,
  `bullets_img_hov_url` varchar(255) NOT NULL,
  `bull_butt_img_or_not` varchar(8) NOT NULL,
  `play_paus_butt_img_or_not` varchar(8) NOT NULL,
  `play_butt_url` varchar(255) NOT NULL,
  `play_butt_hov_url` varchar(255) NOT NULL,
  `paus_butt_url` varchar(255) NOT NULL,
  `paus_butt_hov_url` varchar(255) NOT NULL,
  `start_slide_num` int(4) NOT NULL,
  `effect_duration` int(6) NOT NULL,
  `carousel` tinyint(1) NOT NULL,
  `carousel_image_counts` int(4) NOT NULL,
  `carousel_image_parameters` varchar(8) NOT NULL,
  `carousel_fit_containerWidth` tinyint(1) NOT NULL,
  `carousel_width` int(4) NOT NULL,
  `parallax_effect` tinyint(1) NOT NULL,
  `mouse_swipe_nav` tinyint(1) NOT NULL,
  `bull_hover` int(1) NOT NULL,
  `touch_swipe_nav` tinyint(1) NOT NULL,
  `mouse_wheel_nav` tinyint(1) NOT NULL,
  `keyboard_nav` tinyint(1) NOT NULL,
  `possib_add_ffamily` varchar(255) NOT NULL,
  `show_thumbnail` tinyint(1) NOT NULL,
  `thumb_size` varchar(8) NOT NULL,
  `fixed_bg` tinyint(1) NOT NULL,
  `smart_crop` tinyint(1) NOT NULL,
  `crop_image_position` varchar(16) NOT NULL,
  `javascript` text NOT NULL,
  `carousel_degree` int(4) NOT NULL,
  `carousel_grayscale` int(4) NOT NULL,
  `carousel_transparency` int(4) NOT NULL,
  `bull_back_act_color` varchar(8) NOT NULL,
  `bull_back_color` varchar(8) NOT NULL,
  `bull_radius` varchar(32) NOT NULL,
  `possib_add_google_fonts` tinyint(1) NOT NULL,
  `possib_add_ffamily_google` varchar(255) NOT NULL,
  `slider_loop` tinyint(1) NOT NULL,
  `hide_on_mobile` int(4) NOT NULL,
  `twoway_slideshow` tinyint(1) NOT NULL,
  `full_width_for_mobile` int(4) NOT NULL,
  `order_dir` varchar(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table monumenthouse.mhdb_woocommerce_api_keys
CREATE TABLE IF NOT EXISTS `mhdb_woocommerce_api_keys` (
  `key_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  KEY `consumer_key` (`consumer_key`),
  KEY `consumer_secret` (`consumer_secret`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.
-- Dumping structure for table monumenthouse.mhdb_woocommerce_attribute_taxonomies
CREATE TABLE IF NOT EXISTS `mhdb_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`(20))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.
-- Dumping structure for table monumenthouse.mhdb_woocommerce_downloadable_product_permissions
CREATE TABLE IF NOT EXISTS `mhdb_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `download_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.
-- Dumping structure for table monumenthouse.mhdb_woocommerce_log
CREATE TABLE IF NOT EXISTS `mhdb_woocommerce_log` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`log_id`),
  KEY `level` (`level`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.
-- Dumping structure for table monumenthouse.mhdb_woocommerce_order_itemmeta
CREATE TABLE IF NOT EXISTS `mhdb_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.
-- Dumping structure for table monumenthouse.mhdb_woocommerce_order_items
CREATE TABLE IF NOT EXISTS `mhdb_woocommerce_order_items` (
  `order_item_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.
-- Dumping structure for table monumenthouse.mhdb_woocommerce_payment_tokenmeta
CREATE TABLE IF NOT EXISTS `mhdb_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `payment_token_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `payment_token_id` (`payment_token_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.
-- Dumping structure for table monumenthouse.mhdb_woocommerce_payment_tokens
CREATE TABLE IF NOT EXISTS `mhdb_woocommerce_payment_tokens` (
  `token_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`token_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.
-- Dumping structure for table monumenthouse.mhdb_woocommerce_sessions
CREATE TABLE IF NOT EXISTS `mhdb_woocommerce_sessions` (
  `session_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`session_key`),
  UNIQUE KEY `session_id` (`session_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.
-- Dumping structure for table monumenthouse.mhdb_woocommerce_shipping_zones
CREATE TABLE IF NOT EXISTS `mhdb_woocommerce_shipping_zones` (
  `zone_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.
-- Dumping structure for table monumenthouse.mhdb_woocommerce_shipping_zone_locations
CREATE TABLE IF NOT EXISTS `mhdb_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_id` bigint(20) unsigned NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `location_id` (`location_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.
-- Dumping structure for table monumenthouse.mhdb_woocommerce_shipping_zone_methods
CREATE TABLE IF NOT EXISTS `mhdb_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) unsigned NOT NULL,
  `instance_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) unsigned NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`instance_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.
-- Dumping structure for table monumenthouse.mhdb_woocommerce_tax_rates
CREATE TABLE IF NOT EXISTS `mhdb_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) unsigned NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) unsigned NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`),
  KEY `tax_rate_state` (`tax_rate_state`(2)),
  KEY `tax_rate_class` (`tax_rate_class`(10)),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.
-- Dumping structure for table monumenthouse.mhdb_woocommerce_tax_rate_locations
CREATE TABLE IF NOT EXISTS `mhdb_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.
-- Dumping structure for table monumenthouse.mhdb_yoast_seo_links
CREATE TABLE IF NOT EXISTS `mhdb_yoast_seo_links` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL,
  `target_post_id` bigint(20) unsigned NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `link_direction` (`post_id`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.
-- Dumping structure for table monumenthouse.mhdb_yoast_seo_meta
CREATE TABLE IF NOT EXISTS `mhdb_yoast_seo_meta` (
  `object_id` bigint(20) unsigned NOT NULL,
  `internal_link_count` int(10) unsigned NOT NULL DEFAULT '0',
  `incoming_link_count` int(10) unsigned DEFAULT NULL,
  UNIQUE KEY `object_id` (`object_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
