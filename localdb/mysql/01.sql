-- This script is automatically executed by the 'mysql' service defined in the docker compose files
-- It is meant for local testing purposes

-- tables required for local testing

CREATE TABLE `game` (
    `id` bigint(20) NOT NULL AUTO_INCREMENT,
    `version` bigint(20) NOT NULL,
    `description` varchar(1000) NOT NULL,
    `name` varchar(150) NOT NULL,
    `secret` varchar(255) NOT NULL,
    `type` int(11) NOT NULL,
    `picture_url` varchar(255) DEFAULT NULL,
    `cash_enabled` bit(1) NOT NULL DEFAULT b'1',
    `bot_enabled` bit(1) DEFAULT b'0',
    `store_url` varchar(255) DEFAULT NULL,
    `platform` varchar(255) DEFAULT NULL,
    `tutorial_image_url` varchar(255) DEFAULT NULL,
    `ticketz_enabled` bit(1) DEFAULT NULL,
    `date_created` datetime DEFAULT NULL,
    `last_updated` datetime DEFAULT NULL,
    `earned_offers_enabled` bit(1) NOT NULL DEFAULT b'1',
    `random_number_strategy` varchar(255) NOT NULL DEFAULT 'LEGACY',
    `android_store_url` varchar(255) DEFAULT NULL,
    `ios_store_url` varchar(255) DEFAULT NULL,
    `per_entry_random_seed` bit(1) NOT NULL DEFAULT b'0',
    `virtual_currency_only` bit(1) NOT NULL DEFAULT b'0',
    `game_chat_channel_enabled` bit(1) NOT NULL DEFAULT b'0',
    `android_application_id` varchar(255) DEFAULT NULL,
    `random_seed_entry_type` tinyint(1) NOT NULL DEFAULT '0',
    `publisher_id` varchar(36) DEFAULT NULL,
    `smart_link` varchar(1024) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- data required for local testing

-- - game

-- -- with and without virtual_currency_only active

INSERT INTO `mysql`.`game`
(`id`,`version`,`description`,`name`,`secret`,`type`,`picture_url`,`cash_enabled`,`bot_enabled`,`store_url`,`platform`,
`tutorial_image_url`,`ticketz_enabled`,`date_created`,`last_updated`,`earned_offers_enabled`,`random_number_strategy`,
`android_store_url`,`ios_store_url`,`per_entry_random_seed`,`virtual_currency_only`,`game_chat_channel_enabled`,
`android_application_id`,`random_seed_entry_type`,`publisher_id`,`smart_link`)
VALUES
(1,0,"some descripcion","some_name_1","some_secret",1,"some_url",b'1',b'0',"some_url","IOS","some_url",b'0',
CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,b'1',"LEGACY","some_url","some_url",b'0',b'0',b'0',"android_app_id",0,
"some_publisher_id","smart_link"),
(2,0,"some descripcion","some_name_2","some_secret",1,"some_url",b'1',b'0',"some_url","IOS","some_url",b'0',
CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,b'1',"LEGACY","some_url","some_url",b'0',b'1',b'0',"android_app_id",0,
"some_publisher_id","smart_link")
;