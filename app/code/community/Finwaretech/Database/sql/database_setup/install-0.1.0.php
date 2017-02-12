<?php
$installer = $this;
$installer->startSetup();
$installer->run("

-- DROP TABLE IF EXISTS {$this->getTable('finware_index')};
CREATE TABLE {$this->getTable('finware_index')} (
  `id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL,
   `interactivity_id` int(11) NULL,
   `active` enum('Yes','No') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



-- DROP TABLE IF EXISTS {$this->getTable('oc_product_categories')};
CREATE TABLE {$this->getTable('oc_product_categories')} (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('1','2','3','4') COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- DROP TABLE IF EXISTS {$this->getTable('oc_product_color')};
CREATE TABLE {$this->getTable('oc_product_color')} (
  `color_id` int(11) NOT NULL auto_increment,
  `product_id_fromcolor` int(11) NOT NULL,
  `product_id_tocolor` int(11) NOT NULL,
  `product_color` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`color_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- DROP TABLE IF EXISTS {$this->getTable('oc_product_customize')};
CREATE TABLE {$this->getTable('oc_product_customize')} (
  `id` int(11) NOT NULL auto_increment,
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
  `zoom_button` enum('0','1') CHARACTER SET latin1 NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=latin1;

-- DROP TABLE IF EXISTS {$this->getTable('oc_product_hotspot')};
CREATE TABLE {$this->getTable('oc_product_hotspot')} (
  `id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL,
  `map_code` varchar(5120) COLLATE utf8_unicode_ci NOT NULL,
  `number_of_hotspot` int(5) NOT NULL,
  `home_image_link` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `width` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `height` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `audio_for_home_image` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- DROP TABLE IF EXISTS {$this->getTable('oc_product_interactivity')};
CREATE TABLE {$this->getTable('oc_product_interactivity')} (
  `interactivity_id` int(200) NOT NULL auto_increment,
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
  `video_url` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`interactivity_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1620 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- DROP TABLE IF EXISTS {$this->getTable('oc_product_pattern')};
CREATE TABLE {$this->getTable('oc_product_pattern')} (
  `pattern_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_id_frompattern` int(11) NOT NULL,
  `product_id_topattern` int(11) NOT NULL,
  `product_pattern` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pattern_id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- DROP TABLE IF EXISTS {$this->getTable('oc_product_pattern1')};
CREATE TABLE {$this->getTable('oc_product_pattern1')} (
  `pattern_id` int(11) NOT NULL auto_increment,
  `category_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_pattern_url` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `button_visibility` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL,
  `to_product_id` int(11) NOT NULL,
  PRIMARY KEY (`pattern_id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- DROP TABLE IF EXISTS {$this->getTable('oc_product_troubleshoot_type')};
CREATE TABLE {$this->getTable('oc_product_troubleshoot_type')} (
  `id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL,
  `troubleshoot_type` varchar(4000) COLLATE utf8_unicode_ci NOT NULL,
  `troubleshoot_type_description` varchar(4000) COLLATE utf8_unicode_ci NOT NULL,
  `troubleshoot_type_url` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

");
$installer->endSetup();
?>





