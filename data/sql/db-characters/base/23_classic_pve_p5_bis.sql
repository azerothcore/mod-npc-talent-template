-- Batch-generated Classic BiS gear templates
-- Phase: 5  Mode: pve  Level: 60
-- 17 specs

-- Idempotency: remove this file's templates first so re-application cannot duplicate rows
-- (the index table has no unique key; without this a re-applied file would append copies).
DELETE FROM `mod_npc_talent_template_index` WHERE `playerSpec` IN ('Balance60PvEP5BiS', 'Cat60PvEP5BiS', 'Bear60PvEP5BiS', 'Restoration60PvEP5BiS', 'Marksmanship60PvEP5BiS', 'Fire60PvEP5BiS', 'Holy60PvEP5BiS', 'Protection60PvEP5BiS', 'Shadow60PvEP5BiS', 'Combat60PvEP5BiS', 'Elemental60PvEP5BiS', 'Enhancement60PvEP5BiS', 'Affliction60PvEP5BiS', 'Fury60PvEP5BiS');
DELETE FROM `mod_npc_talent_template_gear` WHERE `playerSpec` IN ('Balance60PvEP5BiS', 'Cat60PvEP5BiS', 'Bear60PvEP5BiS', 'Restoration60PvEP5BiS', 'Marksmanship60PvEP5BiS', 'Fire60PvEP5BiS', 'Holy60PvEP5BiS', 'Protection60PvEP5BiS', 'Shadow60PvEP5BiS', 'Combat60PvEP5BiS', 'Elemental60PvEP5BiS', 'Enhancement60PvEP5BiS', 'Affliction60PvEP5BiS', 'Fury60PvEP5BiS');

SET @MINLEVEL = 60;
SET @MAXLEVEL = 69;
SET @RACEMASK_ALL = 1791;
-- ===== Druid Balance60PvEP5BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Druid', 'Balance60PvEP5BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_starfall:30|t|r Use Balance PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Balance60PvE', 'Balance60PvE', 'Classic Phase 5', 105),
('Druid', 'Balance60PvEP5BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_starfall:30|t|r Use Balance PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Balance60PvE', 'Balance60PvE', 'Classic Phase 5', 105);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Druid', 'Balance60PvEP5BiS', @RACEMASK_ALL, 0, 19375, 2721, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP5BiS', @RACEMASK_ALL, 1, 21608, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP5BiS', @RACEMASK_ALL, 2, 19370, 2605, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP5BiS', @RACEMASK_ALL, 4, 19682, 1891, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP5BiS', @RACEMASK_ALL, 5, 22730, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP5BiS', @RACEMASK_ALL, 6, 19683, 2721, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP5BiS', @RACEMASK_ALL, 7, 19684, 911, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP5BiS', @RACEMASK_ALL, 8, 21186, 2650, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP5BiS', @RACEMASK_ALL, 9, 21585, 2322, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP5BiS', @RACEMASK_ALL, 10, 21709, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP5BiS', @RACEMASK_ALL, 11, 19147, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP5BiS', @RACEMASK_ALL, 12, 19379, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP5BiS', @RACEMASK_ALL, 13, 19950, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP5BiS', @RACEMASK_ALL, 14, 22731, 1888, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP5BiS', @RACEMASK_ALL, 15, 19360, 2504, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP5BiS', @RACEMASK_ALL, 16, 21597, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP5BiS', @RACEMASK_ALL, 17, 32387, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Druid Cat60PvEP5BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Druid', 'Cat60PvEP5BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_druid_catform:30|t|r Use Cat PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Cat60PvE', 'Cat60PvE', 'Classic Phase 5', 105),
('Druid', 'Cat60PvEP5BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_druid_catform:30|t|r Use Cat PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Cat60PvE', 'Cat60PvE', 'Classic Phase 5', 105);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Druid', 'Cat60PvEP5BiS', @RACEMASK_ALL, 0, 8345, 2717, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP5BiS', @RACEMASK_ALL, 1, 19377, 0, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP5BiS', @RACEMASK_ALL, 2, 21665, 2606, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP5BiS', @RACEMASK_ALL, 4, 21680, 1891, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP5BiS', @RACEMASK_ALL, 5, 21586, 0, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP5BiS', @RACEMASK_ALL, 6, 16450, 2717, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP5BiS', @RACEMASK_ALL, 7, 21493, 1887, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP5BiS', @RACEMASK_ALL, 8, 21602, 1885, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP5BiS', @RACEMASK_ALL, 9, 21672, 2564, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP5BiS', @RACEMASK_ALL, 10, 17063, 0, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP5BiS', @RACEMASK_ALL, 11, 21205, 0, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP5BiS', @RACEMASK_ALL, 12, 19406, 0, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP5BiS', @RACEMASK_ALL, 13, 23570, 0, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP5BiS', @RACEMASK_ALL, 14, 21710, 849, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP5BiS', @RACEMASK_ALL, 15, 9449, 2564, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP5BiS', @RACEMASK_ALL, 17, 32387, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Druid Bear60PvEP5BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Druid', 'Bear60PvEP5BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_racial_bearform:30|t|r Use Bear PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Bear60PvE', 'Bear60PvE', 'Classic Phase 5', 105),
('Druid', 'Bear60PvEP5BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_racial_bearform:30|t|r Use Bear PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Bear60PvE', 'Bear60PvE', 'Classic Phase 5', 105);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Druid', 'Bear60PvEP5BiS', @RACEMASK_ALL, 0, 16451, 2716, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP5BiS', @RACEMASK_ALL, 1, 18404, 0, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP5BiS', @RACEMASK_ALL, 2, 20059, 2606, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP5BiS', @RACEMASK_ALL, 4, 21680, 1891, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP5BiS', @RACEMASK_ALL, 5, 21586, 0, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP5BiS', @RACEMASK_ALL, 6, 16450, 2716, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP5BiS', @RACEMASK_ALL, 7, 21493, 1887, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP5BiS', @RACEMASK_ALL, 8, 21602, 1886, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP5BiS', @RACEMASK_ALL, 9, 21605, 2564, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP5BiS', @RACEMASK_ALL, 10, 17063, 0, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP5BiS', @RACEMASK_ALL, 11, 21205, 0, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP5BiS', @RACEMASK_ALL, 12, 19406, 0, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP5BiS', @RACEMASK_ALL, 13, 21180, 0, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP5BiS', @RACEMASK_ALL, 14, 21710, 1889, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP5BiS', @RACEMASK_ALL, 15, 9449, 1900, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP5BiS', @RACEMASK_ALL, 17, 32387, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Druid Restoration60PvEP5BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Druid', 'Restoration60PvEP5BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_healingtouch:30|t|r Use Restoration PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Restoration60PvE', 'Restoration60PvE', 'Classic Phase 5', 105),
('Druid', 'Restoration60PvEP5BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_healingtouch:30|t|r Use Restoration PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Restoration60PvE', 'Restoration60PvE', 'Classic Phase 5', 105);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Druid', 'Restoration60PvEP5BiS', @RACEMASK_ALL, 0, 19132, 2715, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP5BiS', @RACEMASK_ALL, 1, 21712, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP5BiS', @RACEMASK_ALL, 2, 18810, 2604, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP5BiS', @RACEMASK_ALL, 4, 21663, 1891, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP5BiS', @RACEMASK_ALL, 5, 21582, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP5BiS', @RACEMASK_ALL, 6, 19385, 2715, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP5BiS', @RACEMASK_ALL, 7, 19437, 911, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP5BiS', @RACEMASK_ALL, 8, 21604, 2650, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP5BiS', @RACEMASK_ALL, 9, 21617, 2322, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP5BiS', @RACEMASK_ALL, 10, 19382, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP5BiS', @RACEMASK_ALL, 11, 21620, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP5BiS', @RACEMASK_ALL, 12, 19395, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP5BiS', @RACEMASK_ALL, 13, 20636, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP5BiS', @RACEMASK_ALL, 14, 21583, 1888, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP5BiS', @RACEMASK_ALL, 15, 21839, 2505, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP5BiS', @RACEMASK_ALL, 16, 21666, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP5BiS', @RACEMASK_ALL, 17, 25643, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Hunter Marksmanship60PvEP5BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Hunter', 'Marksmanship60PvEP5BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_marksmanship:30|t|r Use Marksmanship PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Marksmanship60PvE', 'Marksmanship60PvE', 'Classic Phase 5', 105),
('Hunter', 'Marksmanship60PvEP5BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_marksmanship:30|t|r Use Marksmanship PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Marksmanship60PvE', 'Marksmanship60PvE', 'Classic Phase 5', 105);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Hunter', 'Marksmanship60PvEP5BiS', @RACEMASK_ALL, 0, 16465, 2717, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP5BiS', @RACEMASK_ALL, 1, 19377, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP5BiS', @RACEMASK_ALL, 2, 16468, 2606, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP5BiS', @RACEMASK_ALL, 4, 16466, 1891, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP5BiS', @RACEMASK_ALL, 5, 16936, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP5BiS', @RACEMASK_ALL, 6, 16467, 2717, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP5BiS', @RACEMASK_ALL, 7, 16462, 1887, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP5BiS', @RACEMASK_ALL, 8, 16935, 1885, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP5BiS', @RACEMASK_ALL, 9, 16463, 2564, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP5BiS', @RACEMASK_ALL, 10, 21596, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP5BiS', @RACEMASK_ALL, 11, 21205, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP5BiS', @RACEMASK_ALL, 12, 23570, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP5BiS', @RACEMASK_ALL, 13, 19953, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP5BiS', @RACEMASK_ALL, 14, 21710, 849, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP5BiS', @RACEMASK_ALL, 15, 21673, 2646, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP5BiS', @RACEMASK_ALL, 17, 19361, 2523, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Mage Fire60PvEP5BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Mage', 'Fire60PvEP5BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_fire_flamebolt:30|t|r Use Fire PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Fire60PvE', 'Fire60PvE', 'Classic Phase 5', 105),
('Mage', 'Fire60PvEP5BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_fire_flamebolt:30|t|r Use Fire PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Fire60PvE', 'Fire60PvE', 'Classic Phase 5', 105);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Mage', 'Fire60PvEP5BiS', @RACEMASK_ALL, 0, 19375, 2721, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP5BiS', @RACEMASK_ALL, 1, 21608, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP5BiS', @RACEMASK_ALL, 2, 19370, 2605, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP5BiS', @RACEMASK_ALL, 4, 21343, 1891, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP5BiS', @RACEMASK_ALL, 5, 22730, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP5BiS', @RACEMASK_ALL, 6, 21461, 2721, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP5BiS', @RACEMASK_ALL, 7, 21344, 911, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP5BiS', @RACEMASK_ALL, 8, 21186, 2650, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP5BiS', @RACEMASK_ALL, 9, 21585, 2322, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP5BiS', @RACEMASK_ALL, 10, 21709, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP5BiS', @RACEMASK_ALL, 11, 21836, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP5BiS', @RACEMASK_ALL, 12, 18820, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP5BiS', @RACEMASK_ALL, 13, 19379, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP5BiS', @RACEMASK_ALL, 14, 22731, 1888, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP5BiS', @RACEMASK_ALL, 15, 21622, 2504, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP5BiS', @RACEMASK_ALL, 16, 21597, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP5BiS', @RACEMASK_ALL, 17, 21603, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Paladin Holy60PvEP5BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Paladin', 'Holy60PvEP5BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Use Holy PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Holy60PvE', 'Holy60PvE', 'Classic Phase 5', 105),
('Paladin', 'Holy60PvEP5BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Use Holy PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Holy60PvE', 'Holy60PvE', 'Classic Phase 5', 105);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Paladin', 'Holy60PvEP5BiS', @RACEMASK_ALL, 0, 19132, 2715, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP5BiS', @RACEMASK_ALL, 1, 21712, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP5BiS', @RACEMASK_ALL, 2, 18810, 2604, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP5BiS', @RACEMASK_ALL, 4, 21663, 1891, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP5BiS', @RACEMASK_ALL, 5, 19162, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP5BiS', @RACEMASK_ALL, 6, 19385, 2715, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP5BiS', @RACEMASK_ALL, 7, 19437, 911, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP5BiS', @RACEMASK_ALL, 8, 21604, 2650, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP5BiS', @RACEMASK_ALL, 9, 20264, 2322, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP5BiS', @RACEMASK_ALL, 10, 19382, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP5BiS', @RACEMASK_ALL, 11, 21620, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP5BiS', @RACEMASK_ALL, 12, 19395, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP5BiS', @RACEMASK_ALL, 13, 21625, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP5BiS', @RACEMASK_ALL, 14, 18510, 1888, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP5BiS', @RACEMASK_ALL, 15, 21839, 2505, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP5BiS', @RACEMASK_ALL, 16, 19312, 907, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP5BiS', @RACEMASK_ALL, 17, 25644, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Paladin Protection60PvEP5BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Paladin', 'Protection60PvEP5BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_devotionaura:30|t|r Use Protection PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Protection60PvE', 'Protection60PvE', 'Classic Phase 5', 105),
('Paladin', 'Protection60PvEP5BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_devotionaura:30|t|r Use Protection PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Protection60PvE', 'Protection60PvE', 'Classic Phase 5', 105);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Paladin', 'Protection60PvEP5BiS', @RACEMASK_ALL, 0, 21387, 2716, 0, 0, 0, 0, 0),
('Paladin', 'Protection60PvEP5BiS', @RACEMASK_ALL, 1, 22732, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection60PvEP5BiS', @RACEMASK_ALL, 2, 21391, 2606, 0, 0, 0, 0, 0),
('Paladin', 'Protection60PvEP5BiS', @RACEMASK_ALL, 4, 21389, 1891, 0, 0, 0, 0, 0),
('Paladin', 'Protection60PvEP5BiS', @RACEMASK_ALL, 5, 21598, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection60PvEP5BiS', @RACEMASK_ALL, 6, 21390, 2716, 0, 0, 0, 0, 0),
('Paladin', 'Protection60PvEP5BiS', @RACEMASK_ALL, 7, 21388, 1887, 0, 0, 0, 0, 0),
('Paladin', 'Protection60PvEP5BiS', @RACEMASK_ALL, 8, 18812, 1886, 0, 0, 0, 0, 0),
('Paladin', 'Protection60PvEP5BiS', @RACEMASK_ALL, 9, 21674, 2564, 0, 0, 0, 0, 0),
('Paladin', 'Protection60PvEP5BiS', @RACEMASK_ALL, 10, 21205, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection60PvEP5BiS', @RACEMASK_ALL, 11, 21695, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection60PvEP5BiS', @RACEMASK_ALL, 12, 19431, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection60PvEP5BiS', @RACEMASK_ALL, 13, 21180, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection60PvEP5BiS', @RACEMASK_ALL, 14, 21621, 1889, 0, 0, 0, 0, 0),
('Paladin', 'Protection60PvEP5BiS', @RACEMASK_ALL, 15, 19019, 1900, 0, 0, 0, 0, 0),
('Paladin', 'Protection60PvEP5BiS', @RACEMASK_ALL, 16, 21269, 929, 0, 0, 0, 0, 0),
('Paladin', 'Protection60PvEP5BiS', @RACEMASK_ALL, 17, 23203, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Priest Holy60PvEP5BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Priest', 'Holy60PvEP5BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Use Holy PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Holy60PvE', 'Holy60PvE', 'Classic Phase 5', 105),
('Priest', 'Holy60PvEP5BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Use Holy PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Holy60PvE', 'Holy60PvE', 'Classic Phase 5', 105);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Priest', 'Holy60PvEP5BiS', @RACEMASK_ALL, 0, 16921, 2715, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP5BiS', @RACEMASK_ALL, 1, 21712, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP5BiS', @RACEMASK_ALL, 2, 16924, 2604, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP5BiS', @RACEMASK_ALL, 4, 16923, 1891, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP5BiS', @RACEMASK_ALL, 5, 16925, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP5BiS', @RACEMASK_ALL, 6, 16922, 2715, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP5BiS', @RACEMASK_ALL, 7, 16919, 911, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP5BiS', @RACEMASK_ALL, 8, 16926, 2650, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP5BiS', @RACEMASK_ALL, 9, 16920, 2322, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP5BiS', @RACEMASK_ALL, 10, 19382, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP5BiS', @RACEMASK_ALL, 11, 21620, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP5BiS', @RACEMASK_ALL, 12, 19958, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP5BiS', @RACEMASK_ALL, 13, 20636, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP5BiS', @RACEMASK_ALL, 14, 21583, 1888, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP5BiS', @RACEMASK_ALL, 15, 21839, 2505, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP5BiS', @RACEMASK_ALL, 16, 21666, 907, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP5BiS', @RACEMASK_ALL, 17, 21801, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Priest Shadow60PvEP5BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Priest', 'Shadow60PvEP5BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_shadow_shadowwordpain:30|t|r Use Shadow PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Shadow60PvE', 'Shadow60PvE', 'Classic Phase 5', 105),
('Priest', 'Shadow60PvEP5BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_shadow_shadowwordpain:30|t|r Use Shadow PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Shadow60PvE', 'Shadow60PvE', 'Classic Phase 5', 105);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Priest', 'Shadow60PvEP5BiS', @RACEMASK_ALL, 0, 19375, 2721, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP5BiS', @RACEMASK_ALL, 1, 18814, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP5BiS', @RACEMASK_ALL, 2, 19370, 2605, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP5BiS', @RACEMASK_ALL, 4, 21351, 1891, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP5BiS', @RACEMASK_ALL, 5, 22730, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP5BiS', @RACEMASK_ALL, 6, 19133, 2721, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP5BiS', @RACEMASK_ALL, 7, 21600, 911, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP5BiS', @RACEMASK_ALL, 8, 21611, 2650, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP5BiS', @RACEMASK_ALL, 9, 19407, 2322, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP5BiS', @RACEMASK_ALL, 10, 21709, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP5BiS', @RACEMASK_ALL, 11, 19434, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP5BiS', @RACEMASK_ALL, 12, 19379, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP5BiS', @RACEMASK_ALL, 13, 18820, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP5BiS', @RACEMASK_ALL, 14, 22731, 1888, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP5BiS', @RACEMASK_ALL, 15, 19360, 2504, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP5BiS', @RACEMASK_ALL, 16, 19309, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP5BiS', @RACEMASK_ALL, 17, 21603, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Rogue Combat60PvEP5BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Rogue', 'Combat60PvEP5BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_backstab:30|t|r Use Combat PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Combat60PvE', 'Combat60PvE', 'Classic Phase 5', 105),
('Rogue', 'Combat60PvEP5BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_backstab:30|t|r Use Combat PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Combat60PvE', 'Combat60PvE', 'Classic Phase 5', 105);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Rogue', 'Combat60PvEP5BiS', @RACEMASK_ALL, 0, 21360, 2717, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP5BiS', @RACEMASK_ALL, 1, 19377, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP5BiS', @RACEMASK_ALL, 2, 21361, 2606, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP5BiS', @RACEMASK_ALL, 4, 21364, 1891, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP5BiS', @RACEMASK_ALL, 5, 21586, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP5BiS', @RACEMASK_ALL, 6, 21362, 2717, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP5BiS', @RACEMASK_ALL, 7, 21359, 1887, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP5BiS', @RACEMASK_ALL, 8, 21602, 1885, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP5BiS', @RACEMASK_ALL, 9, 21672, 2564, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP5BiS', @RACEMASK_ALL, 10, 17063, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP5BiS', @RACEMASK_ALL, 11, 21205, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP5BiS', @RACEMASK_ALL, 12, 23570, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP5BiS', @RACEMASK_ALL, 13, 21180, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP5BiS', @RACEMASK_ALL, 14, 21710, 849, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP5BiS', @RACEMASK_ALL, 15, 12584, 2564, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP5BiS', @RACEMASK_ALL, 16, 19019, 2564, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP5BiS', @RACEMASK_ALL, 17, 21616, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Shaman Elemental60PvEP5BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Shaman', 'Elemental60PvEP5BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_lightning:30|t|r Use Elemental PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Elemental60PvE', 'Elemental60PvE', 'Classic Phase 5', 105),
('Shaman', 'Elemental60PvEP5BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_lightning:30|t|r Use Elemental PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Elemental60PvE', 'Elemental60PvE', 'Classic Phase 5', 105);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Shaman', 'Elemental60PvEP5BiS', @RACEMASK_ALL, 0, 19375, 2721, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP5BiS', @RACEMASK_ALL, 1, 18814, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP5BiS', @RACEMASK_ALL, 2, 18829, 2605, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP5BiS', @RACEMASK_ALL, 4, 19145, 1891, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP5BiS', @RACEMASK_ALL, 5, 22730, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP5BiS', @RACEMASK_ALL, 6, 19165, 2721, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP5BiS', @RACEMASK_ALL, 7, 21373, 911, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP5BiS', @RACEMASK_ALL, 8, 21186, 2650, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP5BiS', @RACEMASK_ALL, 9, 21585, 2322, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP5BiS', @RACEMASK_ALL, 10, 21709, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP5BiS', @RACEMASK_ALL, 11, 19147, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP5BiS', @RACEMASK_ALL, 12, 19379, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP5BiS', @RACEMASK_ALL, 13, 12930, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP5BiS', @RACEMASK_ALL, 14, 22731, 1888, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP5BiS', @RACEMASK_ALL, 15, 19360, 2504, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP5BiS', @RACEMASK_ALL, 16, 21597, 929, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP5BiS', @RACEMASK_ALL, 17, 23199, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Shaman Enhancement60PvEP5BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Shaman', 'Enhancement60PvEP5BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_lightningshield:30|t|r Use Enhancement PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Enhancement60PvE', 'Enhancement60PvE', 'Classic Phase 5', 105),
('Shaman', 'Enhancement60PvEP5BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_lightningshield:30|t|r Use Enhancement PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Enhancement60PvE', 'Enhancement60PvE', 'Classic Phase 5', 105);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Shaman', 'Enhancement60PvEP5BiS', @RACEMASK_ALL, 0, 18817, 2717, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP5BiS', @RACEMASK_ALL, 1, 19856, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP5BiS', @RACEMASK_ALL, 2, 21665, 2606, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP5BiS', @RACEMASK_ALL, 4, 22191, 1891, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP5BiS', @RACEMASK_ALL, 5, 19380, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP5BiS', @RACEMASK_ALL, 6, 21651, 2717, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP5BiS', @RACEMASK_ALL, 7, 21493, 1887, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP5BiS', @RACEMASK_ALL, 8, 21602, 1885, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP5BiS', @RACEMASK_ALL, 9, 21672, 2564, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP5BiS', @RACEMASK_ALL, 10, 18821, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP5BiS', @RACEMASK_ALL, 11, 19325, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP5BiS', @RACEMASK_ALL, 12, 21180, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP5BiS', @RACEMASK_ALL, 13, 11815, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP5BiS', @RACEMASK_ALL, 14, 21710, 849, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP5BiS', @RACEMASK_ALL, 15, 233640, 2564, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP5BiS', @RACEMASK_ALL, 16, 17106, 2564, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP5BiS', @RACEMASK_ALL, 17, 22395, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Shaman Restoration60PvEP5BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Shaman', 'Restoration60PvEP5BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_magicimmunity:30|t|r Use Restoration PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Restoration60PvE', 'Restoration60PvE', 'Classic Phase 5', 105),
('Shaman', 'Restoration60PvEP5BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_magicimmunity:30|t|r Use Restoration PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Restoration60PvE', 'Restoration60PvE', 'Classic Phase 5', 105);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Shaman', 'Restoration60PvEP5BiS', @RACEMASK_ALL, 0, 21372, 2715, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP5BiS', @RACEMASK_ALL, 1, 21712, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP5BiS', @RACEMASK_ALL, 2, 21376, 2604, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP5BiS', @RACEMASK_ALL, 4, 21374, 1891, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP5BiS', @RACEMASK_ALL, 5, 16944, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP5BiS', @RACEMASK_ALL, 6, 21375, 2715, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP5BiS', @RACEMASK_ALL, 7, 21373, 911, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP5BiS', @RACEMASK_ALL, 8, 16943, 2650, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP5BiS', @RACEMASK_ALL, 9, 16948, 2322, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP5BiS', @RACEMASK_ALL, 10, 19382, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP5BiS', @RACEMASK_ALL, 11, 21620, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP5BiS', @RACEMASK_ALL, 12, 19395, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP5BiS', @RACEMASK_ALL, 13, 17064, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP5BiS', @RACEMASK_ALL, 14, 21583, 1888, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP5BiS', @RACEMASK_ALL, 15, 21839, 2505, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP5BiS', @RACEMASK_ALL, 16, 21666, 907, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP5BiS', @RACEMASK_ALL, 17, 22396, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warlock Affliction60PvEP5BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Warlock', 'Affliction60PvEP5BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_shadow_deathcoil:30|t|r Use Affliction PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Affliction60PvE', 'Affliction60PvE', 'Classic Phase 5', 105),
('Warlock', 'Affliction60PvEP5BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_shadow_deathcoil:30|t|r Use Affliction PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Affliction60PvE', 'Affliction60PvE', 'Classic Phase 5', 105);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warlock', 'Affliction60PvEP5BiS', @RACEMASK_ALL, 0, 21337, 2721, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP5BiS', @RACEMASK_ALL, 1, 21608, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP5BiS', @RACEMASK_ALL, 2, 21335, 2605, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP5BiS', @RACEMASK_ALL, 4, 19682, 1891, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP5BiS', @RACEMASK_ALL, 5, 22730, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP5BiS', @RACEMASK_ALL, 6, 19683, 2721, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP5BiS', @RACEMASK_ALL, 7, 19684, 911, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP5BiS', @RACEMASK_ALL, 8, 21186, 2650, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP5BiS', @RACEMASK_ALL, 9, 21585, 2322, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP5BiS', @RACEMASK_ALL, 10, 21709, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP5BiS', @RACEMASK_ALL, 11, 21417, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP5BiS', @RACEMASK_ALL, 12, 19379, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP5BiS', @RACEMASK_ALL, 13, 18820, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP5BiS', @RACEMASK_ALL, 14, 22731, 1888, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP5BiS', @RACEMASK_ALL, 15, 21273, 2504, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP5BiS', @RACEMASK_ALL, 16, 21597, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP5BiS', @RACEMASK_ALL, 17, 21603, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warrior Fury60PvEP5BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Warrior', 'Fury60PvEP5BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_warrior_innerrage:30|t|r Use Fury PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Fury60PvE', 'Fury60PvE', 'Classic Phase 5', 105),
('Warrior', 'Fury60PvEP5BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_warrior_innerrage:30|t|r Use Fury PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Fury60PvE', 'Fury60PvE', 'Classic Phase 5', 105);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warrior', 'Fury60PvEP5BiS', @RACEMASK_ALL, 0, 12640, 2717, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP5BiS', @RACEMASK_ALL, 1, 21664, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP5BiS', @RACEMASK_ALL, 2, 21330, 2606, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP5BiS', @RACEMASK_ALL, 4, 21814, 1891, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP5BiS', @RACEMASK_ALL, 5, 19137, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP5BiS', @RACEMASK_ALL, 6, 21332, 2717, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP5BiS', @RACEMASK_ALL, 7, 19387, 1887, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP5BiS', @RACEMASK_ALL, 8, 21618, 1885, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP5BiS', @RACEMASK_ALL, 9, 21581, 2564, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP5BiS', @RACEMASK_ALL, 10, 18821, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP5BiS', @RACEMASK_ALL, 11, 21677, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP5BiS', @RACEMASK_ALL, 12, 23570, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP5BiS', @RACEMASK_ALL, 13, 21180, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP5BiS', @RACEMASK_ALL, 14, 21710, 849, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP5BiS', @RACEMASK_ALL, 15, 12584, 1900, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP5BiS', @RACEMASK_ALL, 16, 23456, 1900, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP5BiS', @RACEMASK_ALL, 17, 23557, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warrior Protection60PvEP5BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Warrior', 'Protection60PvEP5BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_warrior_defensivestance:30|t|r Use Protection PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Protection60PvE', 'Protection60PvE', 'Classic Phase 5', 105),
('Warrior', 'Protection60PvEP5BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_warrior_defensivestance:30|t|r Use Protection PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Protection60PvE', 'Protection60PvE', 'Classic Phase 5', 105);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warrior', 'Protection60PvEP5BiS', @RACEMASK_ALL, 0, 21329, 2716, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP5BiS', @RACEMASK_ALL, 1, 21700, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP5BiS', @RACEMASK_ALL, 2, 21330, 2606, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP5BiS', @RACEMASK_ALL, 4, 21331, 1891, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP5BiS', @RACEMASK_ALL, 5, 19137, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP5BiS', @RACEMASK_ALL, 6, 21332, 2716, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP5BiS', @RACEMASK_ALL, 7, 21333, 1887, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP5BiS', @RACEMASK_ALL, 8, 21457, 1886, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP5BiS', @RACEMASK_ALL, 9, 21581, 2564, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP5BiS', @RACEMASK_ALL, 10, 19384, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP5BiS', @RACEMASK_ALL, 11, 19432, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP5BiS', @RACEMASK_ALL, 12, 21180, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP5BiS', @RACEMASK_ALL, 13, 19406, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP5BiS', @RACEMASK_ALL, 14, 21710, 1889, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP5BiS', @RACEMASK_ALL, 15, 23456, 1900, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP5BiS', @RACEMASK_ALL, 16, 23456, 929, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP5BiS', @RACEMASK_ALL, 17, 21459, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

