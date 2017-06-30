CREATE TABLE `player` (
  `uid` varchar(32) NOT NULL,
  `name` varchar(64) NOT NULL,
  `damage` varchar(16) NOT NULL DEFAULT '0',
  `direction` varchar(16) DEFAULT '0',
  `position` text,
  `hitpoints` text,
  `cargo` text,
  `weapons` text,
  `current_weapon` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


/*OLD VERSION
CREATE TABLE `player` (
  `uid` varchar(32) NOT NULL,
  `name` varchar(64) NOT NULL,
  `damage` double NOT NULL DEFAULT '0',
  `direction` double DEFAULT '0',
  `position` text,
  `hitpoints` text,
  `body` text,
  `uniform` text,
  `backpack` text,
  `vest` text,
  `weapons` text,
  `current_weapon` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
*/