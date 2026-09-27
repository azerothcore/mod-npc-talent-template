-- Batch-generated Classic BiS gear templates
-- Phase: 4  Mode: pve  Level: 60
-- 16 specs

-- Idempotency: remove this file's templates first so re-application cannot duplicate rows
-- (the index table has no unique key; without this a re-applied file would append copies).
DELETE FROM `mod_npc_talent_template_index` WHERE `playerSpec` IN ('Balance60PvEP4BiS', 'Cat60PvEP4BiS', 'Bear60PvEP4BiS', 'Restoration60PvEP4BiS', 'Marksmanship60PvEP4BiS', 'Fire60PvEP4BiS', 'Holy60PvEP4BiS', 'Shadow60PvEP4BiS', 'Combat60PvEP4BiS', 'Elemental60PvEP4BiS', 'Enhancement60PvEP4BiS', 'Affliction60PvEP4BiS', 'Fury60PvEP4BiS', 'Protection60PvEP4BiS');
DELETE FROM `mod_npc_talent_template_gear` WHERE `playerSpec` IN ('Balance60PvEP4BiS', 'Cat60PvEP4BiS', 'Bear60PvEP4BiS', 'Restoration60PvEP4BiS', 'Marksmanship60PvEP4BiS', 'Fire60PvEP4BiS', 'Holy60PvEP4BiS', 'Shadow60PvEP4BiS', 'Combat60PvEP4BiS', 'Elemental60PvEP4BiS', 'Enhancement60PvEP4BiS', 'Affliction60PvEP4BiS', 'Fury60PvEP4BiS', 'Protection60PvEP4BiS');

SET @MINLEVEL = 60;
SET @MAXLEVEL = 69;
SET @RACEMASK_ALL = 1791;
-- ===== Druid Balance60PvEP4BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Druid', 'Balance60PvEP4BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_starfall:30|t|r Use Balance PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Balance60PvE', 'Balance60PvE', 'Classic Phase 4', 104),
('Druid', 'Balance60PvEP4BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_starfall:30|t|r Use Balance PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Balance60PvE', 'Balance60PvE', 'Classic Phase 4', 104);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Druid', 'Balance60PvEP4BiS', @RACEMASK_ALL, 0, 19375, 2721, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP4BiS', @RACEMASK_ALL, 1, 18814, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP4BiS', @RACEMASK_ALL, 2, 19370, 2605, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP4BiS', @RACEMASK_ALL, 4, 19145, 1891, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP4BiS', @RACEMASK_ALL, 5, 19400, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP4BiS', @RACEMASK_ALL, 6, 19683, 2721, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP4BiS', @RACEMASK_ALL, 7, 19684, 911, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP4BiS', @RACEMASK_ALL, 8, 19374, 2650, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP4BiS', @RACEMASK_ALL, 9, 19929, 2322, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP4BiS', @RACEMASK_ALL, 10, 19147, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP4BiS', @RACEMASK_ALL, 11, 19403, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP4BiS', @RACEMASK_ALL, 12, 19379, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP4BiS', @RACEMASK_ALL, 13, 19950, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP4BiS', @RACEMASK_ALL, 14, 19857, 1888, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP4BiS', @RACEMASK_ALL, 15, 19360, 2504, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP4BiS', @RACEMASK_ALL, 16, 19308, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP4BiS', @RACEMASK_ALL, 17, 32387, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Druid Cat60PvEP4BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Druid', 'Cat60PvEP4BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_druid_catform:30|t|r Use Cat PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Cat60PvE', 'Cat60PvE', 'Classic Phase 4', 104),
('Druid', 'Cat60PvEP4BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_druid_catform:30|t|r Use Cat PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Cat60PvE', 'Cat60PvE', 'Classic Phase 4', 104);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Druid', 'Cat60PvEP4BiS', @RACEMASK_ALL, 0, 8345, 2717, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP4BiS', @RACEMASK_ALL, 1, 19377, 0, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP4BiS', @RACEMASK_ALL, 2, 12927, 2606, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP4BiS', @RACEMASK_ALL, 4, 16452, 1891, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP4BiS', @RACEMASK_ALL, 5, 19163, 0, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP4BiS', @RACEMASK_ALL, 6, 16450, 2717, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP4BiS', @RACEMASK_ALL, 7, 19381, 1887, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP4BiS', @RACEMASK_ALL, 8, 19587, 1885, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP4BiS', @RACEMASK_ALL, 9, 16448, 2564, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP4BiS', @RACEMASK_ALL, 10, 17063, 0, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP4BiS', @RACEMASK_ALL, 11, 19432, 0, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP4BiS', @RACEMASK_ALL, 12, 19406, 0, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP4BiS', @RACEMASK_ALL, 13, 13965, 0, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP4BiS', @RACEMASK_ALL, 14, 19436, 849, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP4BiS', @RACEMASK_ALL, 15, 9449, 2564, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP4BiS', @RACEMASK_ALL, 17, 32387, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Druid Bear60PvEP4BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Druid', 'Bear60PvEP4BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_racial_bearform:30|t|r Use Bear PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Bear60PvE', 'Bear60PvE', 'Classic Phase 4', 104),
('Druid', 'Bear60PvEP4BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_racial_bearform:30|t|r Use Bear PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Bear60PvE', 'Bear60PvE', 'Classic Phase 4', 104);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Druid', 'Bear60PvEP4BiS', @RACEMASK_ALL, 0, 16451, 2716, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP4BiS', @RACEMASK_ALL, 1, 18404, 0, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP4BiS', @RACEMASK_ALL, 2, 20059, 2606, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP4BiS', @RACEMASK_ALL, 4, 19405, 1891, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP4BiS', @RACEMASK_ALL, 5, 19396, 0, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP4BiS', @RACEMASK_ALL, 6, 16450, 2716, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP4BiS', @RACEMASK_ALL, 7, 19381, 1887, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP4BiS', @RACEMASK_ALL, 8, 19587, 1886, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP4BiS', @RACEMASK_ALL, 9, 16448, 2564, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP4BiS', @RACEMASK_ALL, 10, 17063, 0, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP4BiS', @RACEMASK_ALL, 11, 19384, 0, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP4BiS', @RACEMASK_ALL, 12, 19406, 0, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP4BiS', @RACEMASK_ALL, 13, 13965, 0, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP4BiS', @RACEMASK_ALL, 14, 17107, 1889, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP4BiS', @RACEMASK_ALL, 15, 9449, 1900, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP4BiS', @RACEMASK_ALL, 17, 32387, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Druid Restoration60PvEP4BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Druid', 'Restoration60PvEP4BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_healingtouch:30|t|r Use Restoration PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Restoration60PvE', 'Restoration60PvE', 'Classic Phase 4', 104),
('Druid', 'Restoration60PvEP4BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_healingtouch:30|t|r Use Restoration PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Restoration60PvE', 'Restoration60PvE', 'Classic Phase 4', 104);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Druid', 'Restoration60PvEP4BiS', @RACEMASK_ALL, 0, 19132, 2715, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP4BiS', @RACEMASK_ALL, 1, 19885, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP4BiS', @RACEMASK_ALL, 2, 18810, 2604, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP4BiS', @RACEMASK_ALL, 4, 13346, 1891, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP4BiS', @RACEMASK_ALL, 5, 19162, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP4BiS', @RACEMASK_ALL, 6, 19385, 2715, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP4BiS', @RACEMASK_ALL, 7, 19437, 911, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP4BiS', @RACEMASK_ALL, 8, 16904, 2650, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP4BiS', @RACEMASK_ALL, 9, 16899, 2322, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP4BiS', @RACEMASK_ALL, 10, 19382, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP4BiS', @RACEMASK_ALL, 11, 19140, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP4BiS', @RACEMASK_ALL, 12, 19395, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP4BiS', @RACEMASK_ALL, 13, 20636, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP4BiS', @RACEMASK_ALL, 14, 18510, 1888, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP4BiS', @RACEMASK_ALL, 15, 23454, 2505, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP4BiS', @RACEMASK_ALL, 16, 19312, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP4BiS', @RACEMASK_ALL, 17, 25643, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Hunter Marksmanship60PvEP4BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Hunter', 'Marksmanship60PvEP4BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_marksmanship:30|t|r Use Marksmanship PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Marksmanship60PvE', 'Marksmanship60PvE', 'Classic Phase 4', 104),
('Hunter', 'Marksmanship60PvEP4BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_marksmanship:30|t|r Use Marksmanship PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Marksmanship60PvE', 'Marksmanship60PvE', 'Classic Phase 4', 104);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Hunter', 'Marksmanship60PvEP4BiS', @RACEMASK_ALL, 0, 16465, 2717, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP4BiS', @RACEMASK_ALL, 1, 19377, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP4BiS', @RACEMASK_ALL, 2, 16468, 2606, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP4BiS', @RACEMASK_ALL, 4, 16466, 1891, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP4BiS', @RACEMASK_ALL, 5, 16851, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP4BiS', @RACEMASK_ALL, 6, 16467, 2717, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP4BiS', @RACEMASK_ALL, 7, 16462, 1887, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP4BiS', @RACEMASK_ALL, 8, 18812, 1885, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP4BiS', @RACEMASK_ALL, 9, 16463, 2564, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP4BiS', @RACEMASK_ALL, 10, 17063, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP4BiS', @RACEMASK_ALL, 11, 18821, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP4BiS', @RACEMASK_ALL, 12, 23570, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP4BiS', @RACEMASK_ALL, 13, 21180, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP4BiS', @RACEMASK_ALL, 14, 20073, 849, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP4BiS', @RACEMASK_ALL, 15, 12584, 2646, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP4BiS', @RACEMASK_ALL, 17, 19361, 2523, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Mage Fire60PvEP4BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Mage', 'Fire60PvEP4BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_fire_flamebolt:30|t|r Use Fire PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Fire60PvE', 'Fire60PvE', 'Classic Phase 4', 104),
('Mage', 'Fire60PvEP4BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_fire_flamebolt:30|t|r Use Fire PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Fire60PvE', 'Fire60PvE', 'Classic Phase 4', 104);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Mage', 'Fire60PvEP4BiS', @RACEMASK_ALL, 0, 19375, 2721, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP4BiS', @RACEMASK_ALL, 1, 18814, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP4BiS', @RACEMASK_ALL, 2, 19370, 2605, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP4BiS', @RACEMASK_ALL, 4, 19682, 1891, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP4BiS', @RACEMASK_ALL, 5, 19136, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP4BiS', @RACEMASK_ALL, 6, 19683, 2721, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP4BiS', @RACEMASK_ALL, 7, 19684, 911, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP4BiS', @RACEMASK_ALL, 8, 19374, 2650, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP4BiS', @RACEMASK_ALL, 9, 16913, 2322, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP4BiS', @RACEMASK_ALL, 10, 19147, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP4BiS', @RACEMASK_ALL, 11, 20632, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP4BiS', @RACEMASK_ALL, 12, 19379, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP4BiS', @RACEMASK_ALL, 13, 19339, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP4BiS', @RACEMASK_ALL, 14, 19857, 1888, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP4BiS', @RACEMASK_ALL, 15, 23451, 2504, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP4BiS', @RACEMASK_ALL, 16, 19310, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP4BiS', @RACEMASK_ALL, 17, 19130, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Paladin Holy60PvEP4BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Paladin', 'Holy60PvEP4BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Use Holy PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Holy60PvE', 'Holy60PvE', 'Classic Phase 4', 104),
('Paladin', 'Holy60PvEP4BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Use Holy PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Holy60PvE', 'Holy60PvE', 'Classic Phase 4', 104);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Paladin', 'Holy60PvEP4BiS', @RACEMASK_ALL, 0, 19132, 2715, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP4BiS', @RACEMASK_ALL, 1, 19885, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP4BiS', @RACEMASK_ALL, 2, 18810, 2604, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP4BiS', @RACEMASK_ALL, 4, 13346, 1891, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP4BiS', @RACEMASK_ALL, 5, 19162, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP4BiS', @RACEMASK_ALL, 6, 19385, 2715, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP4BiS', @RACEMASK_ALL, 7, 19437, 911, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP4BiS', @RACEMASK_ALL, 8, 13969, 2650, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP4BiS', @RACEMASK_ALL, 9, 20264, 2322, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP4BiS', @RACEMASK_ALL, 10, 19382, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP4BiS', @RACEMASK_ALL, 11, 19140, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP4BiS', @RACEMASK_ALL, 12, 19395, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP4BiS', @RACEMASK_ALL, 13, 19343, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP4BiS', @RACEMASK_ALL, 14, 18510, 1888, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP4BiS', @RACEMASK_ALL, 15, 23454, 2505, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP4BiS', @RACEMASK_ALL, 16, 19312, 907, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP4BiS', @RACEMASK_ALL, 17, 25644, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Priest Holy60PvEP4BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Priest', 'Holy60PvEP4BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Use Holy PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Holy60PvE', 'Holy60PvE', 'Classic Phase 4', 104),
('Priest', 'Holy60PvEP4BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Use Holy PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Holy60PvE', 'Holy60PvE', 'Classic Phase 4', 104);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Priest', 'Holy60PvEP4BiS', @RACEMASK_ALL, 0, 16921, 2715, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP4BiS', @RACEMASK_ALL, 1, 19885, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP4BiS', @RACEMASK_ALL, 2, 16924, 2604, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP4BiS', @RACEMASK_ALL, 4, 16923, 1891, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP4BiS', @RACEMASK_ALL, 5, 16925, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP4BiS', @RACEMASK_ALL, 6, 16922, 2715, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP4BiS', @RACEMASK_ALL, 7, 16919, 911, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP4BiS', @RACEMASK_ALL, 8, 16926, 2650, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP4BiS', @RACEMASK_ALL, 9, 16920, 2322, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP4BiS', @RACEMASK_ALL, 10, 19382, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP4BiS', @RACEMASK_ALL, 11, 19140, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP4BiS', @RACEMASK_ALL, 12, 19958, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP4BiS', @RACEMASK_ALL, 13, 20636, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP4BiS', @RACEMASK_ALL, 14, 18510, 1888, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP4BiS', @RACEMASK_ALL, 15, 23464, 2505, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP4BiS', @RACEMASK_ALL, 16, 19312, 907, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP4BiS', @RACEMASK_ALL, 17, 19435, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Priest Shadow60PvEP4BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Priest', 'Shadow60PvEP4BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_shadow_shadowwordpain:30|t|r Use Shadow PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Shadow60PvE', 'Shadow60PvE', 'Classic Phase 4', 104),
('Priest', 'Shadow60PvEP4BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_shadow_shadowwordpain:30|t|r Use Shadow PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Shadow60PvE', 'Shadow60PvE', 'Classic Phase 4', 104);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Priest', 'Shadow60PvEP4BiS', @RACEMASK_ALL, 0, 19375, 2721, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP4BiS', @RACEMASK_ALL, 1, 18814, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP4BiS', @RACEMASK_ALL, 2, 19370, 2605, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP4BiS', @RACEMASK_ALL, 4, 19682, 1891, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP4BiS', @RACEMASK_ALL, 5, 19400, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP4BiS', @RACEMASK_ALL, 6, 19133, 2721, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP4BiS', @RACEMASK_ALL, 7, 19131, 911, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP4BiS', @RACEMASK_ALL, 8, 19374, 2650, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP4BiS', @RACEMASK_ALL, 9, 19407, 2322, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP4BiS', @RACEMASK_ALL, 10, 19434, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP4BiS', @RACEMASK_ALL, 11, 19403, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP4BiS', @RACEMASK_ALL, 12, 19379, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP4BiS', @RACEMASK_ALL, 13, 18820, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP4BiS', @RACEMASK_ALL, 14, 19857, 1888, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP4BiS', @RACEMASK_ALL, 15, 19360, 2504, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP4BiS', @RACEMASK_ALL, 16, 19366, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP4BiS', @RACEMASK_ALL, 17, 19861, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Rogue Combat60PvEP4BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Rogue', 'Combat60PvEP4BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_backstab:30|t|r Use Combat PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Combat60PvE', 'Combat60PvE', 'Classic Phase 4', 104),
('Rogue', 'Combat60PvEP4BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_backstab:30|t|r Use Combat PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Combat60PvE', 'Combat60PvE', 'Classic Phase 4', 104);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Rogue', 'Combat60PvEP4BiS', @RACEMASK_ALL, 0, 22005, 2717, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP4BiS', @RACEMASK_ALL, 1, 19377, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP4BiS', @RACEMASK_ALL, 2, 22008, 2606, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP4BiS', @RACEMASK_ALL, 4, 16905, 1891, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP4BiS', @RACEMASK_ALL, 5, 16910, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP4BiS', @RACEMASK_ALL, 6, 16909, 2717, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP4BiS', @RACEMASK_ALL, 7, 22003, 1887, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP4BiS', @RACEMASK_ALL, 8, 22004, 1885, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP4BiS', @RACEMASK_ALL, 9, 18823, 2564, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP4BiS', @RACEMASK_ALL, 10, 17063, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP4BiS', @RACEMASK_ALL, 11, 19384, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP4BiS', @RACEMASK_ALL, 12, 19406, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP4BiS', @RACEMASK_ALL, 13, 19954, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP4BiS', @RACEMASK_ALL, 14, 18541, 849, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP4BiS', @RACEMASK_ALL, 15, 18838, 2564, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP4BiS', @RACEMASK_ALL, 16, 18838, 2564, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP4BiS', @RACEMASK_ALL, 17, 17069, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Shaman Elemental60PvEP4BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Shaman', 'Elemental60PvEP4BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_lightning:30|t|r Use Elemental PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Elemental60PvE', 'Elemental60PvE', 'Classic Phase 4', 104),
('Shaman', 'Elemental60PvEP4BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_lightning:30|t|r Use Elemental PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Elemental60PvE', 'Elemental60PvE', 'Classic Phase 4', 104);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Shaman', 'Elemental60PvEP4BiS', @RACEMASK_ALL, 0, 19375, 2721, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP4BiS', @RACEMASK_ALL, 1, 18814, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP4BiS', @RACEMASK_ALL, 2, 18829, 2605, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP4BiS', @RACEMASK_ALL, 4, 19145, 1891, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP4BiS', @RACEMASK_ALL, 5, 19136, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP4BiS', @RACEMASK_ALL, 6, 19165, 2721, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP4BiS', @RACEMASK_ALL, 7, 19131, 911, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP4BiS', @RACEMASK_ALL, 8, 19374, 2650, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP4BiS', @RACEMASK_ALL, 9, 13253, 2322, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP4BiS', @RACEMASK_ALL, 10, 19147, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP4BiS', @RACEMASK_ALL, 11, 19403, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP4BiS', @RACEMASK_ALL, 12, 19379, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP4BiS', @RACEMASK_ALL, 13, 12930, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP4BiS', @RACEMASK_ALL, 14, 19857, 1888, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP4BiS', @RACEMASK_ALL, 15, 19360, 2504, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP4BiS', @RACEMASK_ALL, 16, 19315, 929, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP4BiS', @RACEMASK_ALL, 17, 23199, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Shaman Enhancement60PvEP4BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Shaman', 'Enhancement60PvEP4BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_lightningshield:30|t|r Use Enhancement PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Enhancement60PvE', 'Enhancement60PvE', 'Classic Phase 4', 104),
('Shaman', 'Enhancement60PvEP4BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_lightningshield:30|t|r Use Enhancement PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Enhancement60PvE', 'Enhancement60PvE', 'Classic Phase 4', 104);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Shaman', 'Enhancement60PvEP4BiS', @RACEMASK_ALL, 0, 18817, 2717, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP4BiS', @RACEMASK_ALL, 1, 18404, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP4BiS', @RACEMASK_ALL, 2, 15051, 2606, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP4BiS', @RACEMASK_ALL, 4, 11726, 1891, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP4BiS', @RACEMASK_ALL, 5, 19380, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP4BiS', @RACEMASK_ALL, 6, 15052, 2717, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP4BiS', @RACEMASK_ALL, 7, 16984, 1887, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP4BiS', @RACEMASK_ALL, 8, 19146, 1885, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP4BiS', @RACEMASK_ALL, 9, 19157, 2564, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP4BiS', @RACEMASK_ALL, 10, 18821, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP4BiS', @RACEMASK_ALL, 11, 19325, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP4BiS', @RACEMASK_ALL, 12, 19406, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP4BiS', @RACEMASK_ALL, 13, 13965, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP4BiS', @RACEMASK_ALL, 14, 19436, 849, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP4BiS', @RACEMASK_ALL, 15, 12798, 2564, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP4BiS', @RACEMASK_ALL, 16, 17106, 2564, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP4BiS', @RACEMASK_ALL, 17, 22395, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Shaman Restoration60PvEP4BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Shaman', 'Restoration60PvEP4BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_magicimmunity:30|t|r Use Restoration PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Restoration60PvE', 'Restoration60PvE', 'Classic Phase 4', 104),
('Shaman', 'Restoration60PvEP4BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_magicimmunity:30|t|r Use Restoration PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Restoration60PvE', 'Restoration60PvE', 'Classic Phase 4', 104);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Shaman', 'Restoration60PvEP4BiS', @RACEMASK_ALL, 0, 19132, 2715, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP4BiS', @RACEMASK_ALL, 1, 19885, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP4BiS', @RACEMASK_ALL, 2, 18810, 2604, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP4BiS', @RACEMASK_ALL, 4, 13346, 1891, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP4BiS', @RACEMASK_ALL, 5, 19162, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP4BiS', @RACEMASK_ALL, 6, 19385, 2715, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP4BiS', @RACEMASK_ALL, 7, 19437, 911, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP4BiS', @RACEMASK_ALL, 8, 16943, 2650, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP4BiS', @RACEMASK_ALL, 9, 16948, 2322, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP4BiS', @RACEMASK_ALL, 10, 19382, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP4BiS', @RACEMASK_ALL, 11, 19140, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP4BiS', @RACEMASK_ALL, 12, 19395, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP4BiS', @RACEMASK_ALL, 13, 17064, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP4BiS', @RACEMASK_ALL, 14, 19430, 1888, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP4BiS', @RACEMASK_ALL, 15, 23454, 2505, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP4BiS', @RACEMASK_ALL, 16, 19312, 907, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP4BiS', @RACEMASK_ALL, 17, 22396, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warlock Affliction60PvEP4BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Warlock', 'Affliction60PvEP4BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_shadow_deathcoil:30|t|r Use Affliction PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Affliction60PvE', 'Affliction60PvE', 'Classic Phase 4', 104),
('Warlock', 'Affliction60PvEP4BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_shadow_deathcoil:30|t|r Use Affliction PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Affliction60PvE', 'Affliction60PvE', 'Classic Phase 4', 104);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warlock', 'Affliction60PvEP4BiS', @RACEMASK_ALL, 0, 19375, 2721, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP4BiS', @RACEMASK_ALL, 1, 18814, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP4BiS', @RACEMASK_ALL, 2, 19370, 2605, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP4BiS', @RACEMASK_ALL, 4, 19682, 1891, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP4BiS', @RACEMASK_ALL, 5, 19136, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP4BiS', @RACEMASK_ALL, 6, 19133, 2721, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP4BiS', @RACEMASK_ALL, 7, 19131, 911, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP4BiS', @RACEMASK_ALL, 8, 19374, 2650, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP4BiS', @RACEMASK_ALL, 9, 19407, 2322, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP4BiS', @RACEMASK_ALL, 10, 19403, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP4BiS', @RACEMASK_ALL, 11, 20632, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP4BiS', @RACEMASK_ALL, 12, 19379, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP4BiS', @RACEMASK_ALL, 13, 18820, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP4BiS', @RACEMASK_ALL, 14, 19857, 1888, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP4BiS', @RACEMASK_ALL, 15, 19356, 2504, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP4BiS', @RACEMASK_ALL, 16, 22329, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP4BiS', @RACEMASK_ALL, 17, 19861, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warrior Fury60PvEP4BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Warrior', 'Fury60PvEP4BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_warrior_innerrage:30|t|r Use Fury PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Fury60PvE', 'Fury60PvE', 'Classic Phase 4', 104),
('Warrior', 'Fury60PvEP4BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_warrior_innerrage:30|t|r Use Fury PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Fury60PvE', 'Fury60PvE', 'Classic Phase 4', 104);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warrior', 'Fury60PvEP4BiS', @RACEMASK_ALL, 0, 12640, 2717, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP4BiS', @RACEMASK_ALL, 1, 19856, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP4BiS', @RACEMASK_ALL, 2, 16480, 2606, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP4BiS', @RACEMASK_ALL, 4, 11726, 1891, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP4BiS', @RACEMASK_ALL, 5, 19137, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP4BiS', @RACEMASK_ALL, 6, 16479, 2717, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP4BiS', @RACEMASK_ALL, 7, 19387, 1887, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP4BiS', @RACEMASK_ALL, 8, 19578, 1885, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP4BiS', @RACEMASK_ALL, 9, 22714, 2564, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP4BiS', @RACEMASK_ALL, 10, 19384, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP4BiS', @RACEMASK_ALL, 11, 18821, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP4BiS', @RACEMASK_ALL, 12, 20130, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP4BiS', @RACEMASK_ALL, 13, 19406, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP4BiS', @RACEMASK_ALL, 14, 19436, 849, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP4BiS', @RACEMASK_ALL, 15, 12584, 1900, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP4BiS', @RACEMASK_ALL, 16, 23456, 1900, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP4BiS', @RACEMASK_ALL, 17, 17069, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warrior Protection60PvEP4BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Warrior', 'Protection60PvEP4BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_warrior_defensivestance:30|t|r Use Protection PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Protection60PvE', 'Protection60PvE', 'Classic Phase 4', 104),
('Warrior', 'Protection60PvEP4BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_warrior_defensivestance:30|t|r Use Protection PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Protection60PvE', 'Protection60PvE', 'Classic Phase 4', 104);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warrior', 'Protection60PvEP4BiS', @RACEMASK_ALL, 0, 16478, 2716, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP4BiS', @RACEMASK_ALL, 1, 18404, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP4BiS', @RACEMASK_ALL, 2, 16480, 2606, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP4BiS', @RACEMASK_ALL, 4, 16477, 1891, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP4BiS', @RACEMASK_ALL, 5, 19137, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP4BiS', @RACEMASK_ALL, 6, 16479, 2716, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP4BiS', @RACEMASK_ALL, 7, 16483, 1887, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP4BiS', @RACEMASK_ALL, 8, 16959, 1886, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP4BiS', @RACEMASK_ALL, 9, 16484, 2564, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP4BiS', @RACEMASK_ALL, 10, 19384, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP4BiS', @RACEMASK_ALL, 11, 19432, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP4BiS', @RACEMASK_ALL, 12, 20130, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP4BiS', @RACEMASK_ALL, 13, 19406, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP4BiS', @RACEMASK_ALL, 14, 19398, 1889, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP4BiS', @RACEMASK_ALL, 15, 23456, 1900, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP4BiS', @RACEMASK_ALL, 16, 23456, 929, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP4BiS', @RACEMASK_ALL, 17, 19368, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

