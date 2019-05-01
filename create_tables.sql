-- ---
-- Table 'admin'
-- 
-- ---
		
CREATE TABLE `admin` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `firstname` VARCHAR(50) NULL DEFAULT NULL,
  `lastname` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) engine=InnoDB Default charset utf8mb4 collate=utf8mb4_unicode_ci;

-- ---
-- Table 'participant'
-- 
-- ---
		
CREATE TABLE `participant` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `firstname` VARCHAR(50) NULL DEFAULT NULL,
  `lastname` VARCHAR(50) NULL DEFAULT NULL,
  `ismember` TINYINT(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) engine=InnoDB Default charset utf8mb4 collate=utf8mb4_unicode_ci;

-- ---
-- Table 'lake'
-- 
-- ---
		
CREATE TABLE `lake` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `lakename` VARCHAR(100) NULL DEFAULT NULL,
  `state` VARCHAR(50) NULL DEFAULT NULL,
  `city` VARCHAR(75) NULL DEFAULT NULL,
  `tournament_id` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) engine=InnoDB Default charset utf8mb4 collate=utf8mb4_unicode_ci;

-- ---
-- Table 'tournament'
-- 
-- ---
		
CREATE TABLE `tournament` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `date` DATE NULL DEFAULT NULL,
  `starttime` TIME NULL DEFAULT NULL,
  `endtime` TIME NULL DEFAULT NULL,
  `participant_id` INTEGER NULL DEFAULT NULL,
  `admin_id` INTEGER NULL DEFAULT NULL,
  `lake_id` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) engine=InnoDB Default charset utf8mb4 collate=utf8mb4_unicode_ci;

-- ---
-- Table 'fish'
-- 
-- ---
		
CREATE TABLE `fish` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `weight` DECIMAL(4,2) NULL DEFAULT NULL,
  `participant_id` INTEGER NULL DEFAULT NULL,
  `tournament_id` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) engine=InnoDB Default charset utf8mb4 collate=utf8mb4_unicode_ci;

-- ---
-- Table 'particpant_tournament_fish'
-- 
-- ---
		
CREATE TABLE `particpant_tournament_fish` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `participant_id` INTEGER NULL DEFAULT NULL,
  `tournament_id` INTEGER NULL DEFAULT NULL,
  `fish_id` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) engine=InnoDB Default charset utf8mb4 collate=utf8mb4_unicode_ci;

-- ---
-- Table 'payment'
-- 
-- ---
		
CREATE TABLE `payment` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `paid_for_tournament` INTEGER NULL DEFAULT NULL,
  `participant_id` INTEGER NULL DEFAULT NULL,
  `tournament_id` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) engine=InnoDB Default charset utf8mb4 collate=utf8mb4_unicode_ci;

-- ---
-- Foreign Keys 
-- ---

ALTER TABLE `lake` ADD FOREIGN KEY (tournament_id) REFERENCES `tournament` (`id`);
ALTER TABLE `tournament` ADD FOREIGN KEY (admin_id) REFERENCES `admin` (`id`);
ALTER TABLE `particpant_tournament_fish` ADD FOREIGN KEY (participant_id) REFERENCES `participant` (`id`);
ALTER TABLE `tournament` ADD FOREIGN KEY (participant_id) REFERENCES `participant` (`id`);
ALTER TABLE `particpant_tournament_fish` ADD FOREIGN KEY (tournament_id) REFERENCES `tournament` (`id`);
ALTER TABLE `particpant_tournament_fish` ADD FOREIGN KEY (fish_id) REFERENCES `fish` (`id`);
ALTER TABLE `payment` ADD FOREIGN KEY (participant_id) REFERENCES `participant` (`id`);
ALTER TABLE `payment` ADD FOREIGN KEY (tournament_id) REFERENCES `tournament` (`id`);
