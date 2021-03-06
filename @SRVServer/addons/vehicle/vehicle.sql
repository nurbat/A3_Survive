CREATE TABLE `vehicle` (
  `id` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `class` varchar(64) NOT NULL,
  `is_locked` varchar(1) NOT NULL DEFAULT '0',
  `fuel` varchar(10) NOT NULL DEFAULT '0',
  `damage` varchar(10) NOT NULL DEFAULT '0',
  `hitpoints` text,
  `position` text,
  `direction` text,
  `cargo` text,
  `ammo` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



/*OLD VERSION
CREATE TABLE `vehicle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `class` varchar(64) NOT NULL,
  `spawned_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_locked` tinyint(1) NOT NULL DEFAULT '0',
  `fuel` double unsigned NOT NULL DEFAULT '0',
  `damage` double unsigned NOT NULL DEFAULT '0',
  `hitpoints` text,
  `position` text,
  `direction` text,
  `up` text,
  `cargo_items` text,
  `cargo_magazines` text,
  `cargo_weapons` text,
  `cargo_container` text,
  `last_updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `vehicle_texture` text,
  `ammo` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;*/
