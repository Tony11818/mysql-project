CREATE TABLE `people` (
  `id` INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  `firstname` VARCHAR(55),
  `lastname` VARCHAR(55),
  `ismember` TINYINT(1) NOT NULL DEFAULT 0
) engine=InnoDB Default charset utf8mb4 collate=utf8mb4_unicode_ci;


CREATE TABLE `lake` (
  `id` INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  `lakename` VARCHAR(55),
  `state` VARCHAR(55),
  `city` VARCHAR(55)
) engine=InnoDB Default charset utf8mb4 collate=utf8mb4_unicode_ci;


CREATE TABLE `tournament` (
  `id` INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  `tournament_date` DATE,
  `starttime` TIME,
	`endtime` TIME,
  `lake_id` INT UNSIGNED
) engine=InnoDB Default charset utf8mb4 collate=utf8mb4_unicode_ci;


CREATE TABLE `fish` (
  `id` INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  `weight` DECIMAL(4,2) NULL DEFAULT NULL,
	`upload_date` DATE
) engine=InnoDB Default charset utf8mb4 collate=utf8mb4_unicode_ci;


CREATE TABLE `people_tournament_fish` (
  `id` INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  `admin_id` INT UNSIGNED,
  `participant_id` INT UNSIGNED,
  `tournament_id` INT UNSIGNED,
  `fish_id` INT UNSIGNED
) engine=InnoDB Default charset utf8mb4 collate=utf8mb4_unicode_ci;


CREATE TABLE `payment` (
  `id` INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  `paid_for_tournament` TINYINT(1) NOT NULL DEFAULT 0,
  `membership_paid` TINYINT(1) NOT NULL DEFAULT 0,
  `participant_id` INT UNSIGNED,
  `tournament_id` INT UNSIGNED
) engine=InnoDB Default charset utf8mb4 collate=utf8mb4_unicode_ci;


CREATE TABLE `results` (
  `id` INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  `tournament_id` INT UNSIGNED,
  `people_id` INT UNSIGNED,
  `winner` VARCHAR(255)
) engine=InnoDB Default charset utf8mb4 collate=utf8mb4_unicode_ci;


ALTER TABLE tournament ADD FOREIGN KEY (lake_id) REFERENCES lake (id);
ALTER TABLE people_tournament_fish ADD FOREIGN KEY (admin_id) REFERENCES people (id);
ALTER TABLE people_tournament_fish ADD FOREIGN KEY (participant_id) REFERENCES people (id);
ALTER TABLE people_tournament_fish ADD FOREIGN KEY (tournament_id) REFERENCES tournament (id);
ALTER TABLE people_tournament_fish ADD FOREIGN KEY (fish_id) REFERENCES fish (id);
ALTER TABLE payment ADD FOREIGN KEY (participant_id) REFERENCES people (id);
ALTER TABLE payment ADD FOREIGN KEY (tournament_id) REFERENCES tournament (id);
ALTER TABLE results ADD FOREIGN KEY (Tournament_id) REFERENCES tournament (id);
ALTER TABLE results ADD FOREIGN KEY (people_id) REFERENCES people (id);
ALTER TABLE results ADD FOREIGN KEY (people_id) REFERENCES people (id);

-- ---
-- Test Data
-- ---


-- INSERT INTO payment (paid_for_tournament,membership_paid,participant_id,tournament_id) VALUES
-- (,,,);
-- INSERT INTO results (Tournament_id,people_id,winner) VALUES
-- (,,'');
