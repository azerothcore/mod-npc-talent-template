-- Batch-generated Classic BiS gear templates
-- Phase: 6  Mode: pve  Level: 60
-- 17 specs

-- Idempotency: remove this file's templates first so re-application cannot duplicate rows
-- (the index table has no unique key; without this a re-applied file would append copies).
DELETE FROM `mod_npc_talent_template_index` WHERE `playerSpec` IN ('Balance60PvEP6BiS', 'Cat60PvEP6BiS', 'Bear60PvEP6BiS', 'Restoration60PvEP6BiS', 'Marksmanship60PvEP6BiS', 'Fire60PvEP6BiS', 'Holy60PvEP6BiS', 'Protection60PvEP6BiS', 'Shadow60PvEP6BiS', 'Combat60PvEP6BiS', 'Elemental60PvEP6BiS', 'Enhancement60PvEP6BiS', 'Affliction60PvEP6BiS', 'Fury60PvEP6BiS');
DELETE FROM `mod_npc_talent_template_gear` WHERE `playerSpec` IN ('Balance60PvEP6BiS', 'Cat60PvEP6BiS', 'Bear60PvEP6BiS', 'Restoration60PvEP6BiS', 'Marksmanship60PvEP6BiS', 'Fire60PvEP6BiS', 'Holy60PvEP6BiS', 'Protection60PvEP6BiS', 'Shadow60PvEP6BiS', 'Combat60PvEP6BiS', 'Elemental60PvEP6BiS', 'Enhancement60PvEP6BiS', 'Affliction60PvEP6BiS', 'Fury60PvEP6BiS');

SET @MINLEVEL = 60;
SET @MAXLEVEL = 69;
SET @RACEMASK_ALL = 1791;
-- ===== Druid Balance60PvEP6BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Druid', 'Balance60PvEP6BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_starfall:30|t|r Use Balance PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Balance60PvE', 'Balance60PvE', 'Classic Phase 6', 106),
('Druid', 'Balance60PvEP6BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_starfall:30|t|r Use Balance PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Balance60PvE', 'Balance60PvE', 'Classic Phase 6', 106);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Druid', 'Balance60PvEP6BiS', @RACEMASK_ALL, 0, 19375, 2721, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP6BiS', @RACEMASK_ALL, 1, 23057, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP6BiS', @RACEMASK_ALL, 2, 22983, 2605, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP6BiS', @RACEMASK_ALL, 4, 21838, 1891, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP6BiS', @RACEMASK_ALL, 5, 22730, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP6BiS', @RACEMASK_ALL, 6, 19683, 2721, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP6BiS', @RACEMASK_ALL, 7, 19684, 911, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP6BiS', @RACEMASK_ALL, 8, 21186, 2650, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP6BiS', @RACEMASK_ALL, 9, 21585, 2322, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP6BiS', @RACEMASK_ALL, 10, 21709, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP6BiS', @RACEMASK_ALL, 11, 23031, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP6BiS', @RACEMASK_ALL, 12, 23207, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP6BiS', @RACEMASK_ALL, 13, 19379, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP6BiS', @RACEMASK_ALL, 14, 23050, 1888, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP6BiS', @RACEMASK_ALL, 15, 22800, 2504, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP6BiS', @RACEMASK_ALL, 16, 23049, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Druid Cat60PvEP6BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Druid', 'Cat60PvEP6BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_druid_catform:30|t|r Use Cat PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Cat60PvE', 'Cat60PvE', 'Classic Phase 6', 106),
('Druid', 'Cat60PvEP6BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_druid_catform:30|t|r Use Cat PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Cat60PvE', 'Cat60PvE', 'Classic Phase 6', 106);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Druid', 'Cat60PvEP6BiS', @RACEMASK_ALL, 0, 8345, 2717, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP6BiS', @RACEMASK_ALL, 1, 19377, 0, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP6BiS', @RACEMASK_ALL, 2, 21665, 2606, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP6BiS', @RACEMASK_ALL, 4, 21680, 1891, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP6BiS', @RACEMASK_ALL, 5, 21586, 0, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP6BiS', @RACEMASK_ALL, 6, 23071, 2717, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP6BiS', @RACEMASK_ALL, 7, 21493, 1887, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP6BiS', @RACEMASK_ALL, 8, 21602, 1885, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP6BiS', @RACEMASK_ALL, 9, 21672, 2564, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP6BiS', @RACEMASK_ALL, 10, 23038, 0, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP6BiS', @RACEMASK_ALL, 11, 21205, 0, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP6BiS', @RACEMASK_ALL, 12, 23041, 0, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP6BiS', @RACEMASK_ALL, 13, 19406, 0, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP6BiS', @RACEMASK_ALL, 14, 21701, 849, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP6BiS', @RACEMASK_ALL, 15, 9449, 2564, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP6BiS', @RACEMASK_ALL, 17, 22397, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Druid Bear60PvEP6BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Druid', 'Bear60PvEP6BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_racial_bearform:30|t|r Use Bear PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Bear60PvE', 'Bear60PvE', 'Classic Phase 6', 106),
('Druid', 'Bear60PvEP6BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_racial_bearform:30|t|r Use Bear PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Bear60PvE', 'Bear60PvE', 'Classic Phase 6', 106);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Druid', 'Bear60PvEP6BiS', @RACEMASK_ALL, 0, 16451, 2716, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP6BiS', @RACEMASK_ALL, 1, 23053, 0, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP6BiS', @RACEMASK_ALL, 2, 21665, 2606, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP6BiS', @RACEMASK_ALL, 4, 23226, 1891, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP6BiS', @RACEMASK_ALL, 5, 21586, 0, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP6BiS', @RACEMASK_ALL, 6, 23071, 2716, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP6BiS', @RACEMASK_ALL, 7, 21493, 1887, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP6BiS', @RACEMASK_ALL, 8, 21602, 1886, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP6BiS', @RACEMASK_ALL, 9, 16448, 2564, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP6BiS', @RACEMASK_ALL, 10, 23038, 0, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP6BiS', @RACEMASK_ALL, 11, 21205, 0, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP6BiS', @RACEMASK_ALL, 12, 22954, 0, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP6BiS', @RACEMASK_ALL, 13, 23041, 0, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP6BiS', @RACEMASK_ALL, 14, 21710, 1889, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP6BiS', @RACEMASK_ALL, 15, 9449, 1900, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP6BiS', @RACEMASK_ALL, 17, 23198, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Druid Restoration60PvEP6BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Druid', 'Restoration60PvEP6BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_healingtouch:30|t|r Use Restoration PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Restoration60PvE', 'Restoration60PvE', 'Classic Phase 6', 106),
('Druid', 'Restoration60PvEP6BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_healingtouch:30|t|r Use Restoration PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Restoration60PvE', 'Restoration60PvE', 'Classic Phase 6', 106);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Druid', 'Restoration60PvEP6BiS', @RACEMASK_ALL, 0, 16900, 2715, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP6BiS', @RACEMASK_ALL, 1, 23036, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP6BiS', @RACEMASK_ALL, 2, 16902, 2604, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP6BiS', @RACEMASK_ALL, 4, 16897, 1891, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP6BiS', @RACEMASK_ALL, 5, 16903, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP6BiS', @RACEMASK_ALL, 6, 16901, 2715, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP6BiS', @RACEMASK_ALL, 7, 16898, 911, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP6BiS', @RACEMASK_ALL, 8, 16904, 2650, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP6BiS', @RACEMASK_ALL, 9, 16899, 2322, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP6BiS', @RACEMASK_ALL, 10, 22939, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP6BiS', @RACEMASK_ALL, 11, 19382, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP6BiS', @RACEMASK_ALL, 12, 19955, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP6BiS', @RACEMASK_ALL, 13, 23047, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP6BiS', @RACEMASK_ALL, 14, 22960, 1888, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP6BiS', @RACEMASK_ALL, 15, 23056, 2505, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP6BiS', @RACEMASK_ALL, 16, 23048, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP6BiS', @RACEMASK_ALL, 17, 22399, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Hunter Marksmanship60PvEP6BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Hunter', 'Marksmanship60PvEP6BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_marksmanship:30|t|r Use Marksmanship PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Marksmanship60PvE', 'Marksmanship60PvE', 'Classic Phase 6', 106),
('Hunter', 'Marksmanship60PvEP6BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_marksmanship:30|t|r Use Marksmanship PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Marksmanship60PvE', 'Marksmanship60PvE', 'Classic Phase 6', 106);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Hunter', 'Marksmanship60PvEP6BiS', @RACEMASK_ALL, 0, 22438, 2717, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP6BiS', @RACEMASK_ALL, 1, 19377, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP6BiS', @RACEMASK_ALL, 2, 22439, 2606, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP6BiS', @RACEMASK_ALL, 4, 22436, 1891, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP6BiS', @RACEMASK_ALL, 5, 22442, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP6BiS', @RACEMASK_ALL, 6, 23071, 2717, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP6BiS', @RACEMASK_ALL, 7, 22440, 1887, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP6BiS', @RACEMASK_ALL, 8, 22443, 1885, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP6BiS', @RACEMASK_ALL, 9, 16463, 2564, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP6BiS', @RACEMASK_ALL, 10, 23038, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP6BiS', @RACEMASK_ALL, 11, 22961, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP6BiS', @RACEMASK_ALL, 12, 23206, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP6BiS', @RACEMASK_ALL, 13, 19953, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP6BiS', @RACEMASK_ALL, 14, 21710, 849, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP6BiS', @RACEMASK_ALL, 15, 23039, 2646, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP6BiS', @RACEMASK_ALL, 16, 23242, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP6BiS', @RACEMASK_ALL, 17, 22812, 2523, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Mage Fire60PvEP6BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Mage', 'Fire60PvEP6BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_fire_flamebolt:30|t|r Use Fire PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Fire60PvE', 'Fire60PvE', 'Classic Phase 6', 106),
('Mage', 'Fire60PvEP6BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_fire_flamebolt:30|t|r Use Fire PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Fire60PvE', 'Fire60PvE', 'Classic Phase 6', 106);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Mage', 'Fire60PvEP6BiS', @RACEMASK_ALL, 0, 22498, 2721, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP6BiS', @RACEMASK_ALL, 1, 21608, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP6BiS', @RACEMASK_ALL, 2, 22983, 2605, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP6BiS', @RACEMASK_ALL, 4, 22496, 1891, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP6BiS', @RACEMASK_ALL, 5, 22730, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP6BiS', @RACEMASK_ALL, 6, 23070, 2721, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP6BiS', @RACEMASK_ALL, 7, 22500, 911, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP6BiS', @RACEMASK_ALL, 8, 23021, 2650, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP6BiS', @RACEMASK_ALL, 9, 21585, 2322, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP6BiS', @RACEMASK_ALL, 10, 23237, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP6BiS', @RACEMASK_ALL, 11, 23062, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP6BiS', @RACEMASK_ALL, 12, 19379, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP6BiS', @RACEMASK_ALL, 13, 23046, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP6BiS', @RACEMASK_ALL, 14, 23050, 1888, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP6BiS', @RACEMASK_ALL, 15, 22589, 2504, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP6BiS', @RACEMASK_ALL, 16, 23049, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP6BiS', @RACEMASK_ALL, 17, 22821, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Paladin Holy60PvEP6BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Paladin', 'Holy60PvEP6BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Use Holy PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Holy60PvE', 'Holy60PvE', 'Classic Phase 6', 106),
('Paladin', 'Holy60PvEP6BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Use Holy PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Holy60PvE', 'Holy60PvE', 'Classic Phase 6', 106);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Paladin', 'Holy60PvEP6BiS', @RACEMASK_ALL, 0, 22428, 2715, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP6BiS', @RACEMASK_ALL, 1, 21712, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP6BiS', @RACEMASK_ALL, 2, 18810, 2604, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP6BiS', @RACEMASK_ALL, 4, 22425, 1891, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP6BiS', @RACEMASK_ALL, 5, 19162, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP6BiS', @RACEMASK_ALL, 6, 19385, 2715, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP6BiS', @RACEMASK_ALL, 7, 19437, 911, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP6BiS', @RACEMASK_ALL, 8, 21604, 2650, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP6BiS', @RACEMASK_ALL, 9, 20264, 2322, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP6BiS', @RACEMASK_ALL, 10, 19382, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP6BiS', @RACEMASK_ALL, 11, 22939, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP6BiS', @RACEMASK_ALL, 12, 23047, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP6BiS', @RACEMASK_ALL, 13, 19395, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP6BiS', @RACEMASK_ALL, 14, 22960, 1888, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP6BiS', @RACEMASK_ALL, 15, 23056, 2505, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP6BiS', @RACEMASK_ALL, 16, 22819, 907, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP6BiS', @RACEMASK_ALL, 17, 23006, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Paladin Protection60PvEP6BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Paladin', 'Protection60PvEP6BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_devotionaura:30|t|r Use Protection PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Protection60PvE', 'Protection60PvE', 'Classic Phase 6', 106),
('Paladin', 'Protection60PvEP6BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_devotionaura:30|t|r Use Protection PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Protection60PvE', 'Protection60PvE', 'Classic Phase 6', 106);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Paladin', 'Protection60PvEP6BiS', @RACEMASK_ALL, 0, 21387, 2716, 0, 0, 0, 0, 0),
('Paladin', 'Protection60PvEP6BiS', @RACEMASK_ALL, 1, 22981, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection60PvEP6BiS', @RACEMASK_ALL, 2, 21391, 2606, 0, 0, 0, 0, 0),
('Paladin', 'Protection60PvEP6BiS', @RACEMASK_ALL, 4, 21389, 1891, 0, 0, 0, 0, 0),
('Paladin', 'Protection60PvEP6BiS', @RACEMASK_ALL, 5, 21598, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection60PvEP6BiS', @RACEMASK_ALL, 6, 21390, 2716, 0, 0, 0, 0, 0),
('Paladin', 'Protection60PvEP6BiS', @RACEMASK_ALL, 7, 21388, 1887, 0, 0, 0, 0, 0),
('Paladin', 'Protection60PvEP6BiS', @RACEMASK_ALL, 8, 18812, 1886, 0, 0, 0, 0, 0),
('Paladin', 'Protection60PvEP6BiS', @RACEMASK_ALL, 9, 21674, 2564, 0, 0, 0, 0, 0),
('Paladin', 'Protection60PvEP6BiS', @RACEMASK_ALL, 10, 21205, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection60PvEP6BiS', @RACEMASK_ALL, 11, 21695, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection60PvEP6BiS', @RACEMASK_ALL, 12, 19431, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection60PvEP6BiS', @RACEMASK_ALL, 13, 21180, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection60PvEP6BiS', @RACEMASK_ALL, 14, 22938, 1889, 0, 0, 0, 0, 0),
('Paladin', 'Protection60PvEP6BiS', @RACEMASK_ALL, 15, 19019, 1900, 0, 0, 0, 0, 0),
('Paladin', 'Protection60PvEP6BiS', @RACEMASK_ALL, 16, 23043, 929, 0, 0, 0, 0, 0),
('Paladin', 'Protection60PvEP6BiS', @RACEMASK_ALL, 17, 23203, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Priest Holy60PvEP6BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Priest', 'Holy60PvEP6BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Use Holy PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Holy60PvE', 'Holy60PvE', 'Classic Phase 6', 106),
('Priest', 'Holy60PvEP6BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Use Holy PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Holy60PvE', 'Holy60PvE', 'Classic Phase 6', 106);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Priest', 'Holy60PvEP6BiS', @RACEMASK_ALL, 0, 16921, 2715, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP6BiS', @RACEMASK_ALL, 1, 23036, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP6BiS', @RACEMASK_ALL, 2, 16924, 2604, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP6BiS', @RACEMASK_ALL, 4, 16923, 1891, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP6BiS', @RACEMASK_ALL, 5, 16925, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP6BiS', @RACEMASK_ALL, 6, 16922, 2715, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP6BiS', @RACEMASK_ALL, 7, 16919, 911, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP6BiS', @RACEMASK_ALL, 8, 16926, 2650, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP6BiS', @RACEMASK_ALL, 9, 16920, 2322, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP6BiS', @RACEMASK_ALL, 10, 23061, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP6BiS', @RACEMASK_ALL, 11, 22939, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP6BiS', @RACEMASK_ALL, 12, 19958, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP6BiS', @RACEMASK_ALL, 13, 23047, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP6BiS', @RACEMASK_ALL, 14, 22960, 1888, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP6BiS', @RACEMASK_ALL, 15, 23056, 2505, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP6BiS', @RACEMASK_ALL, 16, 23048, 907, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP6BiS', @RACEMASK_ALL, 17, 23009, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Priest Shadow60PvEP6BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Priest', 'Shadow60PvEP6BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_shadow_shadowwordpain:30|t|r Use Shadow PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Shadow60PvE', 'Shadow60PvE', 'Classic Phase 6', 106),
('Priest', 'Shadow60PvEP6BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_shadow_shadowwordpain:30|t|r Use Shadow PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Shadow60PvE', 'Shadow60PvE', 'Classic Phase 6', 106);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Priest', 'Shadow60PvEP6BiS', @RACEMASK_ALL, 0, 23035, 2721, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP6BiS', @RACEMASK_ALL, 1, 18814, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP6BiS', @RACEMASK_ALL, 2, 22983, 2605, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP6BiS', @RACEMASK_ALL, 4, 23220, 1891, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP6BiS', @RACEMASK_ALL, 5, 22730, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP6BiS', @RACEMASK_ALL, 6, 19133, 2721, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP6BiS', @RACEMASK_ALL, 7, 21600, 911, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP6BiS', @RACEMASK_ALL, 8, 21611, 2650, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP6BiS', @RACEMASK_ALL, 9, 21585, 2322, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP6BiS', @RACEMASK_ALL, 10, 21709, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP6BiS', @RACEMASK_ALL, 11, 23031, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP6BiS', @RACEMASK_ALL, 12, 19379, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP6BiS', @RACEMASK_ALL, 13, 23046, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP6BiS', @RACEMASK_ALL, 14, 22731, 1888, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP6BiS', @RACEMASK_ALL, 15, 22988, 2504, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP6BiS', @RACEMASK_ALL, 16, 19309, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP6BiS', @RACEMASK_ALL, 17, 21603, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Rogue Combat60PvEP6BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Rogue', 'Combat60PvEP6BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_backstab:30|t|r Use Combat PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Combat60PvE', 'Combat60PvE', 'Classic Phase 6', 106),
('Rogue', 'Combat60PvEP6BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_backstab:30|t|r Use Combat PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Combat60PvE', 'Combat60PvE', 'Classic Phase 6', 106);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Rogue', 'Combat60PvEP6BiS', @RACEMASK_ALL, 0, 22478, 2717, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP6BiS', @RACEMASK_ALL, 1, 19377, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP6BiS', @RACEMASK_ALL, 2, 22479, 2606, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP6BiS', @RACEMASK_ALL, 4, 21364, 1891, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP6BiS', @RACEMASK_ALL, 5, 22482, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP6BiS', @RACEMASK_ALL, 6, 22477, 2717, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP6BiS', @RACEMASK_ALL, 7, 22480, 1887, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP6BiS', @RACEMASK_ALL, 8, 16911, 1885, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP6BiS', @RACEMASK_ALL, 9, 22481, 2564, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP6BiS', @RACEMASK_ALL, 10, 23060, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP6BiS', @RACEMASK_ALL, 11, 23038, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP6BiS', @RACEMASK_ALL, 12, 22954, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP6BiS', @RACEMASK_ALL, 13, 23041, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP6BiS', @RACEMASK_ALL, 14, 21710, 849, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP6BiS', @RACEMASK_ALL, 15, 23054, 2564, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP6BiS', @RACEMASK_ALL, 16, 23014, 2564, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP6BiS', @RACEMASK_ALL, 17, 22812, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Shaman Elemental60PvEP6BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Shaman', 'Elemental60PvEP6BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_lightning:30|t|r Use Elemental PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Elemental60PvE', 'Elemental60PvE', 'Classic Phase 6', 106),
('Shaman', 'Elemental60PvEP6BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_lightning:30|t|r Use Elemental PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Elemental60PvE', 'Elemental60PvE', 'Classic Phase 6', 106);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Shaman', 'Elemental60PvEP6BiS', @RACEMASK_ALL, 0, 19375, 2721, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP6BiS', @RACEMASK_ALL, 1, 21608, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP6BiS', @RACEMASK_ALL, 2, 23664, 2605, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP6BiS', @RACEMASK_ALL, 4, 21838, 1891, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP6BiS', @RACEMASK_ALL, 5, 22730, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP6BiS', @RACEMASK_ALL, 6, 23070, 2721, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP6BiS', @RACEMASK_ALL, 7, 21600, 911, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP6BiS', @RACEMASK_ALL, 8, 21186, 2650, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP6BiS', @RACEMASK_ALL, 9, 21585, 2322, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP6BiS', @RACEMASK_ALL, 10, 21709, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP6BiS', @RACEMASK_ALL, 11, 23031, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP6BiS', @RACEMASK_ALL, 12, 19344, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP6BiS', @RACEMASK_ALL, 13, 23207, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP6BiS', @RACEMASK_ALL, 14, 23050, 1888, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP6BiS', @RACEMASK_ALL, 15, 22800, 2504, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP6BiS', @RACEMASK_ALL, 16, 23049, 929, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP6BiS', @RACEMASK_ALL, 17, 23199, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Shaman Enhancement60PvEP6BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Shaman', 'Enhancement60PvEP6BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_lightningshield:30|t|r Use Enhancement PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Enhancement60PvE', 'Enhancement60PvE', 'Classic Phase 6', 106),
('Shaman', 'Enhancement60PvEP6BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_lightningshield:30|t|r Use Enhancement PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Enhancement60PvE', 'Enhancement60PvE', 'Classic Phase 6', 106);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Shaman', 'Enhancement60PvEP6BiS', @RACEMASK_ALL, 0, 18817, 2717, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP6BiS', @RACEMASK_ALL, 1, 23053, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP6BiS', @RACEMASK_ALL, 2, 21665, 2606, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP6BiS', @RACEMASK_ALL, 4, 23226, 1891, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP6BiS', @RACEMASK_ALL, 5, 21586, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP6BiS', @RACEMASK_ALL, 6, 23071, 2717, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP6BiS', @RACEMASK_ALL, 7, 19381, 1887, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP6BiS', @RACEMASK_ALL, 8, 21602, 1885, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP6BiS', @RACEMASK_ALL, 9, 21672, 2564, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP6BiS', @RACEMASK_ALL, 10, 23038, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP6BiS', @RACEMASK_ALL, 11, 21677, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP6BiS', @RACEMASK_ALL, 12, 23041, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP6BiS', @RACEMASK_ALL, 13, 22954, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP6BiS', @RACEMASK_ALL, 14, 23045, 849, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP6BiS', @RACEMASK_ALL, 15, 22798, 2564, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP6BiS', @RACEMASK_ALL, 17, 22395, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Shaman Restoration60PvEP6BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Shaman', 'Restoration60PvEP6BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_magicimmunity:30|t|r Use Restoration PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Restoration60PvE', 'Restoration60PvE', 'Classic Phase 6', 106),
('Shaman', 'Restoration60PvEP6BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_magicimmunity:30|t|r Use Restoration PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Restoration60PvE', 'Restoration60PvE', 'Classic Phase 6', 106);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Shaman', 'Restoration60PvEP6BiS', @RACEMASK_ALL, 0, 22466, 2715, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP6BiS', @RACEMASK_ALL, 1, 21712, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP6BiS', @RACEMASK_ALL, 2, 22467, 2604, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP6BiS', @RACEMASK_ALL, 4, 22464, 1891, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP6BiS', @RACEMASK_ALL, 5, 21582, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP6BiS', @RACEMASK_ALL, 6, 22465, 2715, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP6BiS', @RACEMASK_ALL, 7, 16949, 911, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP6BiS', @RACEMASK_ALL, 8, 16943, 2650, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP6BiS', @RACEMASK_ALL, 9, 16948, 2322, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP6BiS', @RACEMASK_ALL, 10, 21620, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP6BiS', @RACEMASK_ALL, 11, 23065, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP6BiS', @RACEMASK_ALL, 12, 23047, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP6BiS', @RACEMASK_ALL, 13, 19395, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP6BiS', @RACEMASK_ALL, 14, 21583, 1888, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP6BiS', @RACEMASK_ALL, 15, 23056, 2505, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP6BiS', @RACEMASK_ALL, 16, 22819, 907, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP6BiS', @RACEMASK_ALL, 17, 22396, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warlock Affliction60PvEP6BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Warlock', 'Affliction60PvEP6BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_shadow_deathcoil:30|t|r Use Affliction PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Affliction60PvE', 'Affliction60PvE', 'Classic Phase 6', 106),
('Warlock', 'Affliction60PvEP6BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_shadow_deathcoil:30|t|r Use Affliction PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Affliction60PvE', 'Affliction60PvE', 'Classic Phase 6', 106);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warlock', 'Affliction60PvEP6BiS', @RACEMASK_ALL, 0, 22506, 2721, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP6BiS', @RACEMASK_ALL, 1, 23057, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP6BiS', @RACEMASK_ALL, 2, 22507, 2605, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP6BiS', @RACEMASK_ALL, 4, 22504, 1891, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP6BiS', @RACEMASK_ALL, 5, 22730, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP6BiS', @RACEMASK_ALL, 6, 23070, 2721, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP6BiS', @RACEMASK_ALL, 7, 22508, 911, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP6BiS', @RACEMASK_ALL, 8, 19374, 2650, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP6BiS', @RACEMASK_ALL, 9, 21585, 2322, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP6BiS', @RACEMASK_ALL, 10, 21709, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP6BiS', @RACEMASK_ALL, 11, 23031, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP6BiS', @RACEMASK_ALL, 12, 23207, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP6BiS', @RACEMASK_ALL, 13, 23046, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP6BiS', @RACEMASK_ALL, 14, 23050, 1888, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP6BiS', @RACEMASK_ALL, 15, 22807, 2504, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP6BiS', @RACEMASK_ALL, 16, 23049, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP6BiS', @RACEMASK_ALL, 17, 22820, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warrior Fury60PvEP6BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Warrior', 'Fury60PvEP6BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_warrior_innerrage:30|t|r Use Fury PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Fury60PvE', 'Fury60PvE', 'Classic Phase 6', 106),
('Warrior', 'Fury60PvEP6BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_warrior_innerrage:30|t|r Use Fury PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Fury60PvE', 'Fury60PvE', 'Classic Phase 6', 106);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warrior', 'Fury60PvEP6BiS', @RACEMASK_ALL, 0, 12640, 2717, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP6BiS', @RACEMASK_ALL, 1, 23053, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP6BiS', @RACEMASK_ALL, 2, 21330, 2606, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP6BiS', @RACEMASK_ALL, 4, 23000, 1891, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP6BiS', @RACEMASK_ALL, 5, 23219, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP6BiS', @RACEMASK_ALL, 6, 23068, 2717, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP6BiS', @RACEMASK_ALL, 7, 19387, 1887, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP6BiS', @RACEMASK_ALL, 8, 22936, 1885, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP6BiS', @RACEMASK_ALL, 9, 21581, 2564, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP6BiS', @RACEMASK_ALL, 10, 18821, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP6BiS', @RACEMASK_ALL, 11, 21677, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP6BiS', @RACEMASK_ALL, 12, 23206, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP6BiS', @RACEMASK_ALL, 13, 23041, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP6BiS', @RACEMASK_ALL, 14, 23045, 849, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP6BiS', @RACEMASK_ALL, 15, 23054, 1900, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP6BiS', @RACEMASK_ALL, 16, 23577, 1900, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP6BiS', @RACEMASK_ALL, 17, 22812, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warrior Protection60PvEP6BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Warrior', 'Protection60PvEP6BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_warrior_defensivestance:30|t|r Use Protection PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Protection60PvE', 'Protection60PvE', 'Classic Phase 6', 106),
('Warrior', 'Protection60PvEP6BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_warrior_defensivestance:30|t|r Use Protection PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Protection60PvE', 'Protection60PvE', 'Classic Phase 6', 106);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warrior', 'Protection60PvEP6BiS', @RACEMASK_ALL, 0, 21329, 2716, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP6BiS', @RACEMASK_ALL, 1, 23023, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP6BiS', @RACEMASK_ALL, 2, 21330, 2606, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP6BiS', @RACEMASK_ALL, 4, 21331, 1891, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP6BiS', @RACEMASK_ALL, 5, 23219, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP6BiS', @RACEMASK_ALL, 6, 21332, 2716, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP6BiS', @RACEMASK_ALL, 7, 22420, 1887, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP6BiS', @RACEMASK_ALL, 8, 22423, 1886, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP6BiS', @RACEMASK_ALL, 9, 21581, 2564, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP6BiS', @RACEMASK_ALL, 10, 19384, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP6BiS', @RACEMASK_ALL, 11, 19432, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP6BiS', @RACEMASK_ALL, 12, 22954, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP6BiS', @RACEMASK_ALL, 13, 23206, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP6BiS', @RACEMASK_ALL, 14, 21710, 1889, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP6BiS', @RACEMASK_ALL, 15, 23577, 1900, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP6BiS', @RACEMASK_ALL, 16, 23577, 929, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP6BiS', @RACEMASK_ALL, 17, 21459, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

