CREATE TABLE IF NOT EXISTS `tk_housing_properties` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `apartment_id` INT NULL DEFAULT NULL,
    `doors` JSON NULL DEFAULT NULL,
    `door_links` JSON NULL DEFAULT NULL,
    `house_interior` VARCHAR(64) NULL DEFAULT NULL,
    `garage_interior` VARCHAR(255) NULL DEFAULT NULL,
    `interior` JSON NULL DEFAULT NULL,
    `yard` JSON NULL DEFAULT NULL,
    `price` BIGINT UNSIGNED NULL DEFAULT NULL,
    `listing_price` BIGINT UNSIGNED NULL DEFAULT NULL,
    `rent` BIGINT UNSIGNED NULL DEFAULT NULL,
    `last_rent_time` BIGINT UNSIGNED NULL DEFAULT NULL,
    `name` VARCHAR(255) NULL DEFAULT NULL,
    `property_type` VARCHAR(64) NULL DEFAULT NULL,
    `address` VARCHAR(255) NOT NULL,
    `image` VARCHAR(255) NULL DEFAULT NULL,
    `owner` VARCHAR(60) NULL DEFAULT NULL,
    `permissions` JSON NULL DEFAULT NULL,
    `max_storages` INT NULL DEFAULT NULL,
    `max_furniture` INT NULL DEFAULT NULL,
    `mortgage` JSON NULL DEFAULT NULL,
    `mortgage_terms` JSON NULL DEFAULT NULL,
    `security` JSON NULL DEFAULT NULL,
    `interior_style` JSON NULL DEFAULT NULL,
    `ambience` JSON NULL DEFAULT NULL,
    `key_serial` INT NOT NULL DEFAULT 0,
    `police_lockdown` JSON NULL DEFAULT NULL,
    `business_id` INT NULL DEFAULT NULL,
    `listed_by` VARCHAR(60) NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY (`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `tk_housing_furniture` (
    `property_id` INT NOT NULL,
    `furniture_type` ENUM('house','garage','yard') NOT NULL,
    `furniture_id` VARCHAR(32) NOT NULL,
    `model` BIGINT NOT NULL,
    `position` JSON NOT NULL,
    `rotation` JSON NOT NULL,
    `storage_code` VARCHAR(64) NULL,
    `storage_items` JSON NULL,
    `storage_permissions` JSON NULL,
    `speaker_group` VARCHAR(32) NULL,
    `data` JSON NULL DEFAULT NULL,
    PRIMARY KEY (`property_id`, `furniture_type`, `furniture_id`),
    CONSTRAINT `fk_tk_furniture_property`
        FOREIGN KEY (`property_id`) REFERENCES `tk_housing_properties`(`id`)
        ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `tk_housing_speaker_groups` (
    `property_id` INT NOT NULL,
    `group_id` VARCHAR(32) NOT NULL,
    `name` VARCHAR(64) NOT NULL,
    PRIMARY KEY (`property_id`, `group_id`),
    CONSTRAINT `fk_tk_speaker_group_property`
        FOREIGN KEY (`property_id`) REFERENCES `tk_housing_properties`(`id`)
        ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `tk_housing_vehicles` (
    `property_id` INT NOT NULL,
    `plate` VARCHAR(12) NOT NULL,
    `props` JSON NOT NULL,
    `fuel` FLOAT NOT NULL DEFAULT 60.0,
    `engine_health` FLOAT NOT NULL DEFAULT 1000.0,
    `position` JSON NULL,
    `heading` FLOAT NULL,
    PRIMARY KEY (`property_id`, `plate`),
    CONSTRAINT `fk_tk_vehicle_property`
        FOREIGN KEY (`property_id`) REFERENCES `tk_housing_properties`(`id`)
        ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `tk_housing_bills` (
    `property_id` INT NOT NULL,
    `service` VARCHAR(16) NOT NULL,
    `connected` TINYINT(1) NOT NULL DEFAULT 1,
    `amount_owed` BIGINT NOT NULL DEFAULT 0,
    `last_charge` BIGINT NULL,
    `last_paid` BIGINT NULL,
    `due_at` BIGINT NULL,
    PRIMARY KEY (`property_id`, `service`),
    CONSTRAINT `fk_tk_bill_property`
        FOREIGN KEY (`property_id`) REFERENCES `tk_housing_properties`(`id`)
        ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `tk_housing_bill_history` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `property_id` INT NOT NULL,
    `service` VARCHAR(16) NOT NULL,
    `amount` BIGINT NOT NULL,
    `paid_at` BIGINT NOT NULL,
    PRIMARY KEY (`id`),
    KEY `property_id_paid_at` (`property_id`, `paid_at`),
    KEY `paid_at` (`paid_at`),
    CONSTRAINT `fk_tk_bill_history_property`
        FOREIGN KEY (`property_id`) REFERENCES `tk_housing_properties`(`id`)
        ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `tk_housing_furniture_stock` (
    `owner_kind` ENUM('player','property') NOT NULL,
    `owner_id` VARCHAR(60) NOT NULL,
    `model` BIGINT NOT NULL,
    `quantity` INT NOT NULL DEFAULT 0,
    PRIMARY KEY (`owner_kind`, `owner_id`, `model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `tk_housing_furniture_cart` (
    `property_id` INT NOT NULL,
    `furniture_type` ENUM('house','garage','yard') NOT NULL,
    `furniture_id` VARCHAR(32) NOT NULL,
    `model` BIGINT NOT NULL,
    `position` JSON NOT NULL,
    `rotation` JSON NOT NULL,
    PRIMARY KEY (`property_id`, `furniture_type`, `furniture_id`),
    CONSTRAINT `fk_tk_furniture_cart_property`
        FOREIGN KEY (`property_id`) REFERENCES `tk_housing_properties`(`id`)
        ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `tk_housing_deliveries` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `identifier` VARCHAR(60) NOT NULL,
    `property_id` INT NOT NULL,
    `items` JSON NOT NULL,
    `arrive_at` BIGINT NOT NULL,
    `status` ENUM('pending','collected') NOT NULL DEFAULT 'pending',
    PRIMARY KEY (`id`),
    CONSTRAINT `fk_tk_delivery_property`
        FOREIGN KEY (`property_id`) REFERENCES `tk_housing_properties`(`id`)
        ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `tk_housing_businesses` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(64) NOT NULL,
    `label` VARCHAR(255) NOT NULL,
    `owner` VARCHAR(60) NULL DEFAULT NULL,
    `balance` BIGINT NOT NULL DEFAULT 0,
    `blip` JSON NULL DEFAULT NULL,
    `stash` JSON NULL DEFAULT NULL,
    `wardrobe` JSON NULL DEFAULT NULL,
    `boss_menu` JSON NULL DEFAULT NULL,
    `allowed_types` JSON NULL DEFAULT NULL,
    `max_properties` INT NULL DEFAULT NULL,
    `revenue` JSON NULL DEFAULT NULL,
    `stash_items` JSON NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `tk_housing_business_grades` (
    `business_id` INT NOT NULL,
    `grade` INT NOT NULL,
    `label` VARCHAR(255) NOT NULL,
    `salary` BIGINT NOT NULL DEFAULT 0,
    `permissions` JSON NULL DEFAULT NULL,
    PRIMARY KEY (`business_id`, `grade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `tk_housing_business_employees` (
    `business_id` INT NOT NULL,
    `identifier` VARCHAR(60) NOT NULL,
    `grade` INT NOT NULL DEFAULT 0,
    `hired_at` BIGINT NOT NULL,
    PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `tk_housing_business_transactions` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `business_id` INT NOT NULL,
    `kind` VARCHAR(32) NOT NULL,
    `amount` BIGINT NOT NULL,
    `actor` VARCHAR(60) NULL DEFAULT NULL,
    `note` VARCHAR(255) NULL DEFAULT NULL,
    `breakdown` JSON NULL DEFAULT NULL,
    `created_at` BIGINT NOT NULL,
    PRIMARY KEY (`id`),
    KEY (`business_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
