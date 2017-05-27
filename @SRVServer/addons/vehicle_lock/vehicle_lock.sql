CREATE TABLE `vehicle_lock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key_class` varchar(45) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `idVehicle` int(11) DEFAULT '0',
  `idPlayer` int(11) DEFAULT '0',
  `player_cargo` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
