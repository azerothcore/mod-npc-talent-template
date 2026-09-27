-- DB: characters
-- Upgrade migration: add the `categoryOrder` column to `mod_npc_talent_template_index`.
--
-- The gossip menu lists categories by `categoryOrder` (then by name), so the phase
-- order no longer depends on when each data file was applied (every file assigns
-- `gossipAction = MAX + 1`, which pushed a re-applied file's category to the end).
-- Generated data files use 1xx = Classic, 2xx = TBC, 3xx = WotLK (+ phase number).
--
-- Fresh installs get the column directly from `00_npc_talent_template.sql` (CREATE TABLE);
-- existing installs already have the table without it. Runs as `02_`, after the table
-- creation and the `category` migration and before every data file that writes it.
--
-- Idempotent by design: only alters when the table exists and the column does not.

SET @tbl_exists := (
    SELECT COUNT(*) FROM INFORMATION_SCHEMA.TABLES
    WHERE TABLE_SCHEMA = DATABASE()
      AND TABLE_NAME = 'mod_npc_talent_template_index'
);

SET @col_exists := (
    SELECT COUNT(*) FROM INFORMATION_SCHEMA.COLUMNS
    WHERE TABLE_SCHEMA = DATABASE()
      AND TABLE_NAME = 'mod_npc_talent_template_index'
      AND COLUMN_NAME = 'categoryOrder'
);

SET @ddl := IF(@tbl_exists = 1 AND @col_exists = 0,
    'ALTER TABLE `mod_npc_talent_template_index` ADD COLUMN `categoryOrder` INT UNSIGNED NOT NULL DEFAULT 0 AFTER `category`',
    'DO 0'
);

PREPARE stmt FROM @ddl;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
