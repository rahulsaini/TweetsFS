CREATE TABLE user (
  twitter_id int(10) unsigned NOT NULL,
  name varchar(140) NOT NULL,
  screen_name varchar(30) NOT NULL,
  location varchar(180) default NULL,
  description varchar(300) default NULL,
  profile_image_url varchar(400) NOT NULL,
  url varchar(400) default NULL,
  protected varchar(5) default NULL,
  followers_count int(10) unsigned NOT NULL,
  profile_background_color varchar(8) default NULL,
  profile_text_color varchar(8) default NULL,
  profile_link_color varchar(8) default NULL,
  profile_sidebar_fill_color varchar(8) default NULL,
  profile_sidebar_border_color varchar(8) default NULL,
  friends_count int(10) unsigned NOT NULL,
  created_at timestamp NOT NULL default '0000-00-00 00:00:00',
  favourites_count int(10) unsigned NOT NULL,
  utc_offset int(10) default NULL,
  time_zone varchar(120) default NULL,
  profile_background_image_url varchar(400) default NULL,
  profile_background_tile varchar(5) default NULL,
  statuses_count int(10) unsigned default '0',
  status_id bigint(20) unsigned default '0',
  status_created_at timestamp NULL default NULL,
  status_text varchar(300) default NULL,
  status_source varchar(200) default NULL,
  status_truncated varchar(5) default NULL,
  status_in_reply_to_status_id bigint(20) unsigned default NULL,
  status_in_reply_to_user_id int(10) unsigned default NULL,
  status_favorited varchar(5) default NULL,
  status_in_reply_to_screen_name varchar(120) default NULL,
  PRIMARY KEY (`twitter_id`),
  UNIQUE KEY screen_name (`screen_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `tweetsfs_user` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `screen_name` varchar(140) NOT NULL,
  `user_name` varchar(255) NOT NULL DEFAULT '?????',
  `full_name` varchar(255) NOT NULL DEFAULT '?????',
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL DEFAULT '?????',
  `active` mediumint(9) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY screen_name (`screen_name`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE `appRegInfo` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `consumer_key` TEXT NOT NULL,
  `consumer_secret` TEXT NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE `user_token` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `screen_name` varchar(140) NOT NULL,
  `oauth_token` TEXT NOT NULL,
  `oauth_token_secret` TEXT NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY screen_name (`screen_name`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `user_favs_timeline` (
  `tweet_id` varchar(160) NOT NULL,
  `created_at` datetime NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `screen_name` char(140) NOT NULL,
  `tweet_text` varchar(140) NOT NULL,
  PRIMARY KEY (`tweet_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

==================================================================

CREATE TABLE IF NOT EXISTS `json_cache` (
  `tweet_id` bigint(20) unsigned NOT NULL,
  `cache_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cache_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `raw_tweet` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `parsed` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cache_id`),
  KEY `tweet_id` (`tweet_id`),
  KEY `cache_date` (`cache_date`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tweets` (
  `tweet_id` bigint(20) unsigned NOT NULL,
  `tweet_text` varchar(160) NOT NULL,
  `entities` text NOT NULL,
  `created_at` datetime NOT NULL,
  `geo_lat` decimal(10,5) DEFAULT NULL,
  `geo_long` decimal(10,5) DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `screen_name` char(20) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `profile_image_url` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`tweet_id`),
  KEY `created_at` (`created_at`),   
  KEY `user_id` (`user_id`),
  KEY `screen_name` (`screen_name`),
  KEY `name` (`name`),
  FULLTEXT KEY `tweet_text` (`tweet_text`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tweet_mentions` (
  `tweet_id` bigint(20) NOT NULL,
  `source_user_id` bigint(20) NOT NULL,
  `target_user_id` bigint(20) NOT NULL,
  KEY `tweet_id` (`tweet_id`),
  KEY `source` (`source_user_id`),
  KEY `target` (`target_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `tweet_tags` (
  `tweet_id` bigint(20) NOT NULL,
  `tag` varchar(100) NOT NULL,
  KEY `tweet_id` (`tweet_id`),
  KEY `tag` (`tag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tweet_urls` (
  `tweet_id` bigint(20) NOT NULL,
  `url` varchar(140) NOT NULL,
  KEY `tweet_id` (`tweet_id`),
  KEY `url` (`url`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` bigint(20) unsigned NOT NULL,
  `screen_name` varchar(20) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `profile_image_url` varchar(200) DEFAULT NULL,
  `location` varchar(30) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `followers_count` int(10) unsigned DEFAULT NULL,
  `friends_count` int(10) unsigned DEFAULT NULL,
  `statuses_count` int(10) unsigned DEFAULT NULL,
  `time_zone` varchar(40) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP 
     ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  KEY `user_name` (`name`),
  KEY `last_update` (`last_update`),
  KEY `screen_name` (`screen_name`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
