-- CreateTable
CREATE TABLE `tabCustomer` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(140) NULL,
    `creation` DATETIME(6) NULL,
    `modified` DATETIME(6) NULL,
    `modified_by` VARCHAR(140) NULL,
    `owner` VARCHAR(140) NULL,
    `docstatus` INTEGER NOT NULL DEFAULT 0,
    `full_name` VARCHAR(140) NULL,
    `first_name` VARCHAR(140) NULL,
    `last_name` VARCHAR(140) NULL,
    `kyc_type` VARCHAR(140) NULL,
    `kyc_mode` VARCHAR(140) NULL,
    `kyc_validity` DATE NULL,
    `date_of_birth` DATE NULL,
    `contact_details` VARCHAR(140) NULL,
    `risk_profile` VARCHAR(140) NULL,
    `transaction_risk_profile` VARCHAR(140) NULL,
    `status` VARCHAR(140) NULL,
    `_user_tags` TEXT NULL,
    `_comments` TEXT NULL,
    `_assign` TEXT NULL,
    `_liked_by` TEXT NULL,

    INDEX `modified`(`modified`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tabAccount` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(140) NULL,
    `creation` DATETIME(6) NULL,
    `modified` DATETIME(6) NULL,
    `modified_by` VARCHAR(140) NULL,
    `owner` VARCHAR(140) NULL,
    `docstatus` INTEGER NOT NULL DEFAULT 0,
    `business` VARCHAR(140) NULL,
    `tsp` VARCHAR(140) NULL,
    `account_number` VARCHAR(140) NULL,
    `account_holder_name` VARCHAR(140) NULL,
    `account_type` VARCHAR(140) NULL,
    `expiry_date` DATE NULL,
    `is_foreign_transactions_allowed` INTEGER NOT NULL DEFAULT 0,
    `enabled` INTEGER NOT NULL DEFAULT 1,
    `_user_tags` TEXT NULL,
    `_comments` TEXT NULL,
    `_assign` TEXT NULL,
    `_liked_by` TEXT NULL,
    `customerId` INTEGER NOT NULL,

    INDEX `modified`(`modified`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tabTransaction Type` (
    `name` VARCHAR(140) NOT NULL,
    `creation` DATETIME(6) NULL,
    `modified` DATETIME(6) NULL,
    `modified_by` VARCHAR(140) NULL,
    `owner` VARCHAR(140) NULL,
    `docstatus` INTEGER NOT NULL DEFAULT 0,
    `idx` INTEGER NOT NULL DEFAULT 0,
    `title` VARCHAR(140) NULL,
    `apply_rules` INTEGER NOT NULL DEFAULT 1,
    `mandatory_fields` TEXT NULL,
    `json` LONGTEXT NULL,
    `_user_tags` TEXT NULL,
    `_comments` TEXT NULL,
    `_assign` TEXT NULL,
    `_liked_by` TEXT NULL,

    UNIQUE INDEX `title`(`title`),
    INDEX `modified`(`modified`),
    PRIMARY KEY (`name`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tabCustomer Transaction Freeze` (
    `name` VARCHAR(140) NOT NULL,
    `creation` DATETIME(6) NULL,
    `modified` DATETIME(6) NULL,
    `modified_by` VARCHAR(140) NULL,
    `owner` VARCHAR(140) NULL,
    `docstatus` INTEGER NOT NULL DEFAULT 0,
    `idx` INTEGER NOT NULL DEFAULT 0,
    `transaction_type` VARCHAR(140) NULL,
    `freezed` INTEGER NOT NULL DEFAULT 0,
    `parent` VARCHAR(140) NULL,
    `parentfield` VARCHAR(140) NULL,
    `parenttype` VARCHAR(140) NULL,

    INDEX `modified`(`modified`),
    PRIMARY KEY (`name`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tabCustomer Identification` (
    `name` VARCHAR(140) NOT NULL,
    `creation` DATETIME(6) NULL,
    `modified` DATETIME(6) NULL,
    `modified_by` VARCHAR(140) NULL,
    `owner` VARCHAR(140) NULL,
    `docstatus` INTEGER NOT NULL DEFAULT 0,
    `idx` INTEGER NOT NULL DEFAULT 0,
    `kyc_type` VARCHAR(140) NULL,
    `primary_identifier` VARCHAR(140) NULL,
    `secondary_identifier` VARCHAR(140) NULL,
    `enabled` INTEGER NOT NULL DEFAULT 1,
    `_user_tags` TEXT NULL,
    `_comments` TEXT NULL,
    `_assign` TEXT NULL,
    `_liked_by` TEXT NULL,

    INDEX `modified`(`modified`),
    PRIMARY KEY (`name`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tabCustomer Account Balance` (
    `name` VARCHAR(140) NOT NULL,
    `creation` DATETIME(6) NULL,
    `modified` DATETIME(6) NULL,
    `modified_by` VARCHAR(140) NULL,
    `owner` VARCHAR(140) NULL,
    `docstatus` INTEGER NOT NULL DEFAULT 0,
    `idx` INTEGER NOT NULL DEFAULT 0,
    `account_type` VARCHAR(140) NULL,
    `account` VARCHAR(140) NULL,
    `balance` DECIMAL(21, 9) NOT NULL DEFAULT 0.000000000,
    `_user_tags` TEXT NULL,
    `_comments` TEXT NULL,
    `_assign` TEXT NULL,
    `_liked_by` TEXT NULL,

    INDEX `modified`(`modified`),
    PRIMARY KEY (`name`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tabCustomer Transaction Limits` (
    `name` VARCHAR(140) NOT NULL,
    `creation` DATETIME(6) NULL,
    `modified` DATETIME(6) NULL,
    `modified_by` VARCHAR(140) NULL,
    `owner` VARCHAR(140) NULL,
    `docstatus` INTEGER NOT NULL DEFAULT 0,
    `idx` INTEGER NOT NULL DEFAULT 0,
    `customer` VARCHAR(140) NULL,
    `rule_name` VARCHAR(140) NULL,
    `beneficiary` VARCHAR(140) NULL,
    `duration` VARCHAR(140) NULL,
    `period_start` DATE NULL,
    `current_limit_value` DECIMAL(21, 9) NOT NULL DEFAULT 0.000000000,
    `limit_value` DECIMAL(21, 9) NOT NULL DEFAULT 0.000000000,
    `remaining_limit_value` DECIMAL(21, 9) NOT NULL DEFAULT 0.000000000,
    `_user_tags` TEXT NULL,
    `_comments` TEXT NULL,
    `_assign` TEXT NULL,
    `_liked_by` TEXT NULL,

    INDEX `modified`(`modified`),
    PRIMARY KEY (`name`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tabCustomer Balance Limits` (
    `name` VARCHAR(140) NOT NULL,
    `creation` DATETIME(6) NULL,
    `modified` DATETIME(6) NULL,
    `modified_by` VARCHAR(140) NULL,
    `owner` VARCHAR(140) NULL,
    `docstatus` INTEGER NOT NULL DEFAULT 0,
    `idx` INTEGER NOT NULL DEFAULT 0,
    `customer` VARCHAR(140) NULL,
    `rule_name` VARCHAR(140) NULL,
    `current_balance` DECIMAL(21, 9) NOT NULL DEFAULT 0.000000000,
    `balance` DECIMAL(21, 9) NOT NULL DEFAULT 0.000000000,
    `remaining_balance` DECIMAL(21, 9) NOT NULL DEFAULT 0.000000000,
    `_user_tags` TEXT NULL,
    `_comments` TEXT NULL,
    `_assign` TEXT NULL,
    `_liked_by` TEXT NULL,

    INDEX `modified`(`modified`),
    PRIMARY KEY (`name`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tabTransaction` (
    `name` VARCHAR(140) NOT NULL,
    `creation` DATETIME(6) NULL,
    `modified` DATETIME(6) NULL,
    `modified_by` VARCHAR(140) NULL,
    `owner` VARCHAR(140) NULL,
    `docstatus` INTEGER NOT NULL DEFAULT 0,
    `idx` INTEGER NOT NULL DEFAULT 0,
    `account` VARCHAR(140) NULL,
    `account_type` VARCHAR(140) NULL,
    `customer` VARCHAR(140) NULL,
    `tsp` VARCHAR(140) NULL,
    `transaction_type` VARCHAR(140) NULL,
    `dr_cr` VARCHAR(140) NULL,
    `beneficiary` VARCHAR(140) NULL,
    `amount` DECIMAL(21, 9) NOT NULL DEFAULT 0.000000000,
    `channel` VARCHAR(140) NULL DEFAULT '0',
    `purpose` VARCHAR(140) NULL,
    `original_transaction_number` VARCHAR(140) NULL,
    `original_transaction_date` VARCHAR(140) NULL,
    `transaction_currency` VARCHAR(140) NULL,
    `exchange_rate` DECIMAL(21, 9) NOT NULL DEFAULT 0.000000000,
    `additional_transaction_number` VARCHAR(140) NULL,
    `_user_tags` TEXT NULL,
    `_comments` TEXT NULL,
    `_assign` TEXT NULL,
    `_liked_by` TEXT NULL,

    INDEX `modified`(`modified`),
    PRIMARY KEY (`name`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tabTransaction Limits` (
    `name` VARCHAR(140) NOT NULL,
    `creation` DATETIME(6) NULL,
    `modified` DATETIME(6) NULL,
    `modified_by` VARCHAR(140) NULL,
    `owner` VARCHAR(140) NOT NULL,
    `docstatus` INTEGER NOT NULL DEFAULT 0,
    `idx` INTEGER NOT NULL DEFAULT 0,
    `limit_type` VARCHAR(140) NULL,
    `enabled` INTEGER NOT NULL DEFAULT 1,
    `kyc_type` VARCHAR(140) NULL,
    `duration` VARCHAR(140) NULL,
    `dr_cr` VARCHAR(140) NULL,
    `limit_value` DECIMAL(21, 9) NOT NULL DEFAULT 0.000000000,
    `per_beneficiary` INTEGER NOT NULL DEFAULT 0,
    `aggregate_field` VARCHAR(140) NULL DEFAULT 'amount',
    `aggregate_function` VARCHAR(140) NULL,
    `rule_json` LONGTEXT NULL,
    `amended_from` VARCHAR(140) NULL,
    `_user_tags` TEXT NULL,
    `_comments` TEXT NULL,
    `_assign` TEXT NULL,
    `_liked_by` TEXT NULL,

    UNIQUE INDEX `limit_type`(`limit_type`),
    INDEX `modified`(`modified`),
    PRIMARY KEY (`name`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tabAccount Balance` (
    `name` VARCHAR(140) NOT NULL,
    `creation` DATETIME(6) NULL,
    `modified` DATETIME(6) NULL,
    `modified_by` VARCHAR(140) NULL,
    `owner` VARCHAR(140) NOT NULL,
    `docstatus` INTEGER NOT NULL DEFAULT 0,
    `idx` INTEGER NOT NULL DEFAULT 0,
    `limit_type` VARCHAR(140) NULL,
    `enabled` INTEGER NOT NULL DEFAULT 1,
    `kyc_type` VARCHAR(140) NULL,
    `balance` DECIMAL(21, 9) NOT NULL DEFAULT 0.000000000,
    `rule_json` LONGTEXT NULL,
    `amended_from` VARCHAR(140) NULL,
    `_user_tags` TEXT NULL,
    `_comments` TEXT NULL,
    `_assign` TEXT NULL,
    `_liked_by` TEXT NULL,

    UNIQUE INDEX `limit_type`(`limit_type`),
    INDEX `modified`(`modified`),
    PRIMARY KEY (`name`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tabTSP List` (
    `name` VARCHAR(140) NOT NULL,
    `creation` DATETIME(6) NULL,
    `modified` DATETIME(6) NULL,
    `modified_by` VARCHAR(140) NULL,
    `owner` VARCHAR(140) NULL,
    `docstatus` INTEGER NOT NULL DEFAULT 0,
    `idx` INTEGER NOT NULL DEFAULT 0,
    `tsp` VARCHAR(140) NULL,
    `parent` VARCHAR(140) NULL,
    `parentfield` VARCHAR(140) NULL,
    `parenttype` VARCHAR(140) NULL,

    INDEX `modified`(`modified`),
    INDEX `parent`(`parent`),
    PRIMARY KEY (`name`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tabKYC Type` (
    `name` VARCHAR(140) NOT NULL,
    `creation` DATETIME(6) NULL,
    `modified` DATETIME(6) NULL,
    `modified_by` VARCHAR(140) NULL,
    `owner` VARCHAR(140) NULL,
    `docstatus` INTEGER NOT NULL DEFAULT 0,
    `idx` INTEGER NOT NULL DEFAULT 0,
    `title` VARCHAR(140) NULL,
    `json` LONGTEXT NULL,
    `_user_tags` TEXT NULL,
    `_comments` TEXT NULL,
    `_assign` TEXT NULL,
    `_liked_by` TEXT NULL,

    UNIQUE INDEX `title`(`title`),
    INDEX `modified`(`modified`),
    PRIMARY KEY (`name`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tabKYC Validity` (
    `name` VARCHAR(140) NOT NULL,
    `creation` DATETIME(6) NULL,
    `modified` DATETIME(6) NULL,
    `modified_by` VARCHAR(140) NULL,
    `owner` VARCHAR(140) NULL,
    `docstatus` INTEGER NOT NULL DEFAULT 0,
    `idx` INTEGER NOT NULL DEFAULT 0,
    `kyc_type` VARCHAR(140) NULL,
    `risk_profile` VARCHAR(140) NULL,
    `validity` DECIMAL(21, 9) NOT NULL DEFAULT 0.000000000,
    `_user_tags` TEXT NULL,
    `_comments` TEXT NULL,
    `_assign` TEXT NULL,
    `_liked_by` TEXT NULL,

    INDEX `modified`(`modified`),
    PRIMARY KEY (`name`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tabKYC Document Type` (
    `name` VARCHAR(140) NOT NULL,
    `creation` DATETIME(6) NULL,
    `modified` DATETIME(6) NULL,
    `modified_by` VARCHAR(140) NULL,
    `owner` VARCHAR(140) NULL,
    `docstatus` INTEGER NOT NULL DEFAULT 0,
    `idx` INTEGER NOT NULL DEFAULT 0,
    `title` VARCHAR(140) NULL,
    `length` INTEGER NOT NULL DEFAULT 0,
    `_user_tags` TEXT NULL,
    `_comments` TEXT NULL,
    `_assign` TEXT NULL,
    `_liked_by` TEXT NULL,

    UNIQUE INDEX `title`(`title`),
    INDEX `modified`(`modified`),
    PRIMARY KEY (`name`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tabKYC Document` (
    `name` VARCHAR(140) NOT NULL,
    `creation` DATETIME(6) NULL,
    `modified` DATETIME(6) NULL,
    `modified_by` VARCHAR(140) NULL,
    `owner` VARCHAR(140) NULL,
    `docstatus` INTEGER NOT NULL DEFAULT 0,
    `idx` INTEGER NOT NULL DEFAULT 0,
    `title` VARCHAR(140) NULL,
    `number` VARCHAR(140) NULL,
    `expiry_date` DATE NULL,
    `parent` VARCHAR(140) NULL,
    `parentfield` VARCHAR(140) NULL,
    `parenttype` VARCHAR(140) NULL,

    INDEX `modified`(`modified`),
    PRIMARY KEY (`name`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `tabAccount` ADD CONSTRAINT `tabAccount_customerId_fkey` FOREIGN KEY (`customerId`) REFERENCES `tabCustomer`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
