CREATE TABLE `vehicle` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `name` varchar(150) NOT NULL,
  `secret` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `picture_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `first`.`vehicle`
(`id`,`version`,`description`,`name`,`secret`,`type`,`picture_url`)
VALUES
(1,0,"some descripcion","some_name_1","some_secret",1,"some_url"),
(2,0,"some descripcion","some_name_2","some_secret",1,"some_url");