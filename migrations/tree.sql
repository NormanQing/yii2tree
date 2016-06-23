CREATE TABLE `tree` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) COLLATE utf8_general_ci NOT NULL COMMENT '���',
  `url` VARCHAR(255) COLLATE utf8_general_ci DEFAULT NULL COMMENT '����',
  `tree_id` INTEGER(11) DEFAULT NULL COMMENT '������',
  `txt` TEXT COLLATE utf8_general_ci COMMENT '���������',
  PRIMARY KEY USING BTREE (`id`),
  UNIQUE KEY `id` USING BTREE (`id`),
  UNIQUE KEY `name` USING BTREE (`name`),
  UNIQUE KEY `url` USING BTREE (`url`),
  KEY `tree_id` USING BTREE (`tree_id`),
  CONSTRAINT `treee_fk1` FOREIGN KEY (`tree_id`) REFERENCES `tree` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB
AUTO_INCREMENT=18 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
;