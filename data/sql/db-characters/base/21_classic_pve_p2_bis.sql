-- Batch-generated Classic BiS gear templates
-- Phase: 2  Mode: pve  Level: 60
-- 17 specs

-- Idempotency: remove this file's templates first so re-application cannot duplicate rows
-- (the index table has no unique key; without this a re-applied file would append copies).
DELETE FROM `mod_npc_talent_template_index` WHERE `playerSpec` IN ('Balance60PvEP2BiS', 'Cat60PvEP2BiS', 'Bear60PvEP2BiS', 'Restoration60PvEP2BiS', 'Marksmanship60PvEP2BiS', 'Fire60PvEP2BiS', 'Holy60PvEP2BiS', 'Protection60PvEP2BiS', 'Shadow60PvEP2BiS', 'Combat60PvEP2BiS', 'Elemental60PvEP2BiS', 'Enhancement60PvEP2BiS', 'Affliction60PvEP2BiS', 'Fury60PvEP2BiS');
DELETE FROM `mod_npc_talent_template_gear` WHERE `playerSpec` IN ('Balance60PvEP2BiS', 'Cat60PvEP2BiS', 'Bear60PvEP2BiS', 'Restoration60PvEP2BiS', 'Marksmanship60PvEP2BiS', 'Fire60PvEP2BiS', 'Holy60PvEP2BiS', 'Protection60PvEP2BiS', 'Shadow60PvEP2BiS', 'Combat60PvEP2BiS', 'Elemental60PvEP2BiS', 'Enhancement60PvEP2BiS', 'Affliction60PvEP2BiS', 'Fury60PvEP2BiS');

SET @MINLEVEL = 60;
SET @MAXLEVEL = 69;
SET @RACEMASK_ALL = 1791;
-- ===== Druid Balance60PvEP2BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Druid', 'Balance60PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_starfall:30|t|r Use Balance PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Balance60PvE', 'Balance60PvE', 'Classic Phase 2', 102),
('Druid', 'Balance60PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_starfall:30|t|r Use Balance PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Balance60PvE', 'Balance60PvE', 'Classic Phase 2', 102);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Druid', 'Balance60PvEP2BiS', @RACEMASK_ALL, 0, 18727, 2721, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP2BiS', @RACEMASK_ALL, 1, 18814, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP2BiS', @RACEMASK_ALL, 2, 18681, 2605, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP2BiS', @RACEMASK_ALL, 4, 19145, 1891, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP2BiS', @RACEMASK_ALL, 5, 19136, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP2BiS', @RACEMASK_ALL, 6, 19165, 2721, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP2BiS', @RACEMASK_ALL, 7, 19131, 911, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP2BiS', @RACEMASK_ALL, 8, 19595, 2650, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP2BiS', @RACEMASK_ALL, 9, 13253, 2322, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP2BiS', @RACEMASK_ALL, 10, 19147, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP2BiS', @RACEMASK_ALL, 12, 18820, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP2BiS', @RACEMASK_ALL, 14, 17078, 1888, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP2BiS', @RACEMASK_ALL, 15, 17070, 2504, 0, 0, 0, 0, 0),
('Druid', 'Balance60PvEP2BiS', @RACEMASK_ALL, 16, 10796, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Druid Cat60PvEP2BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Druid', 'Cat60PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_druid_catform:30|t|r Use Cat PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Cat60PvE', 'Cat60PvE', 'Classic Phase 2', 102),
('Druid', 'Cat60PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_druid_catform:30|t|r Use Cat PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Cat60PvE', 'Cat60PvE', 'Classic Phase 2', 102);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Druid', 'Cat60PvEP2BiS', @RACEMASK_ALL, 0, 8345, 2717, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP2BiS', @RACEMASK_ALL, 1, 18404, 0, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP2BiS', @RACEMASK_ALL, 2, 12927, 2606, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP2BiS', @RACEMASK_ALL, 4, 14637, 1891, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP2BiS', @RACEMASK_ALL, 5, 13252, 0, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP2BiS', @RACEMASK_ALL, 6, 15062, 2717, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP2BiS', @RACEMASK_ALL, 7, 23281, 1887, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP2BiS', @RACEMASK_ALL, 8, 19587, 1885, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP2BiS', @RACEMASK_ALL, 9, 15063, 2564, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP2BiS', @RACEMASK_ALL, 10, 18821, 0, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP2BiS', @RACEMASK_ALL, 11, 17063, 0, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP2BiS', @RACEMASK_ALL, 12, 11815, 0, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP2BiS', @RACEMASK_ALL, 14, 18541, 849, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP2BiS', @RACEMASK_ALL, 15, 18805, 2564, 0, 0, 0, 0, 0),
('Druid', 'Cat60PvEP2BiS', @RACEMASK_ALL, 16, 13385, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Druid Bear60PvEP2BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Druid', 'Bear60PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_racial_bearform:30|t|r Use Bear PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Bear60PvE', 'Bear60PvE', 'Classic Phase 2', 102),
('Druid', 'Bear60PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_racial_bearform:30|t|r Use Bear PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Bear60PvE', 'Bear60PvE', 'Classic Phase 2', 102);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Druid', 'Bear60PvEP2BiS', @RACEMASK_ALL, 0, 23308, 2716, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP2BiS', @RACEMASK_ALL, 1, 18404, 0, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP2BiS', @RACEMASK_ALL, 2, 23309, 2606, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP2BiS', @RACEMASK_ALL, 4, 23294, 1891, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP2BiS', @RACEMASK_ALL, 5, 14502, 0, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP2BiS', @RACEMASK_ALL, 6, 23295, 2716, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP2BiS', @RACEMASK_ALL, 7, 23281, 1887, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP2BiS', @RACEMASK_ALL, 8, 12966, 1886, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP2BiS', @RACEMASK_ALL, 9, 23280, 2564, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP2BiS', @RACEMASK_ALL, 10, 17063, 0, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP2BiS', @RACEMASK_ALL, 11, 18879, 0, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP2BiS', @RACEMASK_ALL, 12, 11811, 0, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP2BiS', @RACEMASK_ALL, 13, 13966, 0, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP2BiS', @RACEMASK_ALL, 14, 17107, 1889, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP2BiS', @RACEMASK_ALL, 15, 18376, 1900, 0, 0, 0, 0, 0),
('Druid', 'Bear60PvEP2BiS', @RACEMASK_ALL, 16, 13385, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Druid Restoration60PvEP2BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Druid', 'Restoration60PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_healingtouch:30|t|r Use Restoration PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Restoration60PvE', 'Restoration60PvE', 'Classic Phase 2', 102),
('Druid', 'Restoration60PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_healingtouch:30|t|r Use Restoration PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Restoration60PvE', 'Restoration60PvE', 'Classic Phase 2', 102);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Druid', 'Restoration60PvEP2BiS', @RACEMASK_ALL, 0, 19132, 2715, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP2BiS', @RACEMASK_ALL, 1, 18814, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP2BiS', @RACEMASK_ALL, 2, 18810, 2604, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP2BiS', @RACEMASK_ALL, 4, 13346, 1891, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP2BiS', @RACEMASK_ALL, 5, 14553, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP2BiS', @RACEMASK_ALL, 6, 18875, 2715, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP2BiS', @RACEMASK_ALL, 7, 13954, 911, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP2BiS', @RACEMASK_ALL, 8, 18525, 2650, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP2BiS', @RACEMASK_ALL, 9, 18309, 2322, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP2BiS', @RACEMASK_ALL, 10, 19140, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP2BiS', @RACEMASK_ALL, 12, 18470, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP2BiS', @RACEMASK_ALL, 13, 12930, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP2BiS', @RACEMASK_ALL, 14, 18510, 1888, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP2BiS', @RACEMASK_ALL, 15, 17105, 2505, 0, 0, 0, 0, 0),
('Druid', 'Restoration60PvEP2BiS', @RACEMASK_ALL, 16, 19312, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Hunter Marksmanship60PvEP2BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Hunter', 'Marksmanship60PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_marksmanship:30|t|r Use Marksmanship PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Marksmanship60PvE', 'Marksmanship60PvE', 'Classic Phase 2', 102),
('Hunter', 'Marksmanship60PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_marksmanship:30|t|r Use Marksmanship PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Marksmanship60PvE', 'Marksmanship60PvE', 'Classic Phase 2', 102);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Hunter', 'Marksmanship60PvEP2BiS', @RACEMASK_ALL, 0, 23306, 2717, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP2BiS', @RACEMASK_ALL, 1, 18404, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP2BiS', @RACEMASK_ALL, 2, 16848, 2606, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP2BiS', @RACEMASK_ALL, 4, 23292, 1891, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP2BiS', @RACEMASK_ALL, 5, 16851, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP2BiS', @RACEMASK_ALL, 6, 16938, 2717, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP2BiS', @RACEMASK_ALL, 7, 16849, 1887, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP2BiS', @RACEMASK_ALL, 8, 18812, 1885, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP2BiS', @RACEMASK_ALL, 9, 16852, 2564, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP2BiS', @RACEMASK_ALL, 10, 17063, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP2BiS', @RACEMASK_ALL, 11, 19325, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP2BiS', @RACEMASK_ALL, 12, 13965, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP2BiS', @RACEMASK_ALL, 13, 18473, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP2BiS', @RACEMASK_ALL, 14, 18541, 849, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP2BiS', @RACEMASK_ALL, 15, 18520, 2646, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship60PvEP2BiS', @RACEMASK_ALL, 17, 18713, 2523, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Mage Fire60PvEP2BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Mage', 'Fire60PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_fire_flamebolt:30|t|r Use Fire PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Fire60PvE', 'Fire60PvE', 'Classic Phase 2', 102),
('Mage', 'Fire60PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_fire_flamebolt:30|t|r Use Fire PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Fire60PvE', 'Fire60PvE', 'Classic Phase 2', 102);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Mage', 'Fire60PvEP2BiS', @RACEMASK_ALL, 0, 16795, 2721, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP2BiS', @RACEMASK_ALL, 1, 18814, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP2BiS', @RACEMASK_ALL, 2, 16415, 2605, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP2BiS', @RACEMASK_ALL, 4, 14152, 1891, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP2BiS', @RACEMASK_ALL, 5, 19136, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP2BiS', @RACEMASK_ALL, 6, 16915, 2721, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP2BiS', @RACEMASK_ALL, 7, 23291, 911, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP2BiS', @RACEMASK_ALL, 8, 16799, 2650, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP2BiS', @RACEMASK_ALL, 9, 16801, 2322, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP2BiS', @RACEMASK_ALL, 10, 19147, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP2BiS', @RACEMASK_ALL, 12, 18820, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP2BiS', @RACEMASK_ALL, 14, 13386, 1888, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP2BiS', @RACEMASK_ALL, 15, 17103, 2504, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP2BiS', @RACEMASK_ALL, 16, 19310, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire60PvEP2BiS', @RACEMASK_ALL, 17, 19130, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Paladin Holy60PvEP2BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Paladin', 'Holy60PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Use Holy PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Holy60PvE', 'Holy60PvE', 'Classic Phase 2', 102),
('Paladin', 'Holy60PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Use Holy PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Holy60PvE', 'Holy60PvE', 'Classic Phase 2', 102);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Paladin', 'Holy60PvEP2BiS', @RACEMASK_ALL, 0, 19132, 2715, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP2BiS', @RACEMASK_ALL, 1, 18814, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP2BiS', @RACEMASK_ALL, 2, 18810, 2604, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP2BiS', @RACEMASK_ALL, 4, 13346, 1891, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP2BiS', @RACEMASK_ALL, 5, 14553, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP2BiS', @RACEMASK_ALL, 6, 18875, 2715, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP2BiS', @RACEMASK_ALL, 7, 19131, 911, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP2BiS', @RACEMASK_ALL, 8, 13969, 2650, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP2BiS', @RACEMASK_ALL, 9, 18527, 2322, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP2BiS', @RACEMASK_ALL, 10, 19140, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP2BiS', @RACEMASK_ALL, 12, 18820, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP2BiS', @RACEMASK_ALL, 13, 18637, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP2BiS', @RACEMASK_ALL, 14, 18510, 1888, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP2BiS', @RACEMASK_ALL, 15, 17103, 2505, 0, 0, 0, 0, 0),
('Paladin', 'Holy60PvEP2BiS', @RACEMASK_ALL, 16, 19312, 907, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Paladin Protection60PvEP2BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Paladin', 'Protection60PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_devotionaura:30|t|r Use Protection PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Protection60PvE', 'Protection60PvE', 'Classic Phase 2', 102),
('Paladin', 'Protection60PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_devotionaura:30|t|r Use Protection PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Protection60PvE', 'Protection60PvE', 'Classic Phase 2', 102);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Paladin', 'Protection60PvEP2BiS', @RACEMASK_ALL, 0, 16955, 2716, 0, 0, 0, 0, 0),
('Paladin', 'Protection60PvEP2BiS', @RACEMASK_ALL, 1, 17065, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection60PvEP2BiS', @RACEMASK_ALL, 2, 16436, 2606, 0, 0, 0, 0, 0),
('Paladin', 'Protection60PvEP2BiS', @RACEMASK_ALL, 4, 23272, 1891, 0, 0, 0, 0, 0),
('Paladin', 'Protection60PvEP2BiS', @RACEMASK_ALL, 5, 18547, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection60PvEP2BiS', @RACEMASK_ALL, 6, 16954, 2716, 0, 0, 0, 0, 0),
('Paladin', 'Protection60PvEP2BiS', @RACEMASK_ALL, 7, 18806, 1887, 0, 0, 0, 0, 0),
('Paladin', 'Protection60PvEP2BiS', @RACEMASK_ALL, 8, 18812, 1886, 0, 0, 0, 0, 0),
('Paladin', 'Protection60PvEP2BiS', @RACEMASK_ALL, 9, 23274, 2564, 0, 0, 0, 0, 0),
('Paladin', 'Protection60PvEP2BiS', @RACEMASK_ALL, 10, 18879, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection60PvEP2BiS', @RACEMASK_ALL, 12, 18406, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection60PvEP2BiS', @RACEMASK_ALL, 14, 18495, 1889, 0, 0, 0, 0, 0),
('Paladin', 'Protection60PvEP2BiS', @RACEMASK_ALL, 15, 18348, 1900, 0, 0, 0, 0, 0),
('Paladin', 'Protection60PvEP2BiS', @RACEMASK_ALL, 16, 17066, 929, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Priest Holy60PvEP2BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Priest', 'Holy60PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Use Holy PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Holy60PvE', 'Holy60PvE', 'Classic Phase 2', 102),
('Priest', 'Holy60PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Use Holy PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Holy60PvE', 'Holy60PvE', 'Classic Phase 2', 102);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Priest', 'Holy60PvEP2BiS', @RACEMASK_ALL, 0, 19132, 2715, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP2BiS', @RACEMASK_ALL, 1, 18814, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP2BiS', @RACEMASK_ALL, 2, 16816, 2604, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP2BiS', @RACEMASK_ALL, 4, 14154, 1891, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP2BiS', @RACEMASK_ALL, 5, 18327, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP2BiS', @RACEMASK_ALL, 6, 16922, 2715, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP2BiS', @RACEMASK_ALL, 7, 19131, 911, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP2BiS', @RACEMASK_ALL, 8, 16819, 2650, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP2BiS', @RACEMASK_ALL, 9, 16812, 2322, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP2BiS', @RACEMASK_ALL, 10, 19140, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP2BiS', @RACEMASK_ALL, 12, 12930, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP2BiS', @RACEMASK_ALL, 13, 18469, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP2BiS', @RACEMASK_ALL, 14, 18510, 1888, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP2BiS', @RACEMASK_ALL, 15, 18608, 2505, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP2BiS', @RACEMASK_ALL, 16, 19312, 907, 0, 0, 0, 0, 0),
('Priest', 'Holy60PvEP2BiS', @RACEMASK_ALL, 17, 13938, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Priest Shadow60PvEP2BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Priest', 'Shadow60PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_shadow_shadowwordpain:30|t|r Use Shadow PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Shadow60PvE', 'Shadow60PvE', 'Classic Phase 2', 102),
('Priest', 'Shadow60PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_shadow_shadowwordpain:30|t|r Use Shadow PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Shadow60PvE', 'Shadow60PvE', 'Classic Phase 2', 102);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Priest', 'Shadow60PvEP2BiS', @RACEMASK_ALL, 0, 23316, 2721, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP2BiS', @RACEMASK_ALL, 1, 18814, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP2BiS', @RACEMASK_ALL, 2, 14112, 2605, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP2BiS', @RACEMASK_ALL, 4, 14136, 1891, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP2BiS', @RACEMASK_ALL, 5, 18809, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP2BiS', @RACEMASK_ALL, 6, 19133, 2721, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP2BiS', @RACEMASK_ALL, 7, 19131, 911, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP2BiS', @RACEMASK_ALL, 8, 19595, 2650, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP2BiS', @RACEMASK_ALL, 9, 13253, 2322, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP2BiS', @RACEMASK_ALL, 10, 19147, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP2BiS', @RACEMASK_ALL, 12, 18820, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP2BiS', @RACEMASK_ALL, 14, 18350, 1888, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP2BiS', @RACEMASK_ALL, 15, 17070, 2504, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP2BiS', @RACEMASK_ALL, 16, 19309, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow60PvEP2BiS', @RACEMASK_ALL, 17, 13396, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Rogue Combat60PvEP2BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Rogue', 'Combat60PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_backstab:30|t|r Use Combat PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Combat60PvE', 'Combat60PvE', 'Classic Phase 2', 102),
('Rogue', 'Combat60PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_backstab:30|t|r Use Combat PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Combat60PvE', 'Combat60PvE', 'Classic Phase 2', 102);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Rogue', 'Combat60PvEP2BiS', @RACEMASK_ALL, 0, 16908, 2717, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP2BiS', @RACEMASK_ALL, 1, 18404, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP2BiS', @RACEMASK_ALL, 2, 16823, 2606, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP2BiS', @RACEMASK_ALL, 4, 16820, 1891, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP2BiS', @RACEMASK_ALL, 5, 16827, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP2BiS', @RACEMASK_ALL, 6, 16909, 2717, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP2BiS', @RACEMASK_ALL, 7, 16824, 1887, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP2BiS', @RACEMASK_ALL, 8, 16825, 1885, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP2BiS', @RACEMASK_ALL, 9, 18823, 2564, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP2BiS', @RACEMASK_ALL, 10, 17063, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP2BiS', @RACEMASK_ALL, 12, 11815, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP2BiS', @RACEMASK_ALL, 14, 18541, 849, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP2BiS', @RACEMASK_ALL, 15, 17075, 2564, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP2BiS', @RACEMASK_ALL, 16, 18832, 2564, 0, 0, 0, 0, 0),
('Rogue', 'Combat60PvEP2BiS', @RACEMASK_ALL, 17, 17069, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Shaman Elemental60PvEP2BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Shaman', 'Elemental60PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_lightning:30|t|r Use Elemental PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Elemental60PvE', 'Elemental60PvE', 'Classic Phase 2', 102),
('Shaman', 'Elemental60PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_lightning:30|t|r Use Elemental PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Elemental60PvE', 'Elemental60PvE', 'Classic Phase 2', 102);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Shaman', 'Elemental60PvEP2BiS', @RACEMASK_ALL, 0, 19375, 2721, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP2BiS', @RACEMASK_ALL, 1, 18814, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP2BiS', @RACEMASK_ALL, 2, 18829, 2605, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP2BiS', @RACEMASK_ALL, 4, 19145, 1891, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP2BiS', @RACEMASK_ALL, 5, 19400, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP2BiS', @RACEMASK_ALL, 6, 16946, 2721, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP2BiS', @RACEMASK_ALL, 7, 19131, 911, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP2BiS', @RACEMASK_ALL, 8, 19374, 2650, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP2BiS', @RACEMASK_ALL, 9, 16948, 2322, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP2BiS', @RACEMASK_ALL, 10, 19147, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP2BiS', @RACEMASK_ALL, 11, 19403, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP2BiS', @RACEMASK_ALL, 12, 19379, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP2BiS', @RACEMASK_ALL, 13, 18820, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP2BiS', @RACEMASK_ALL, 14, 19378, 1888, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP2BiS', @RACEMASK_ALL, 15, 19360, 2504, 0, 0, 0, 0, 0),
('Shaman', 'Elemental60PvEP2BiS', @RACEMASK_ALL, 16, 19315, 929, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Shaman Enhancement60PvEP2BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Shaman', 'Enhancement60PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_lightningshield:30|t|r Use Enhancement PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Enhancement60PvE', 'Enhancement60PvE', 'Classic Phase 2', 102),
('Shaman', 'Enhancement60PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_lightningshield:30|t|r Use Enhancement PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Enhancement60PvE', 'Enhancement60PvE', 'Classic Phase 2', 102);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Shaman', 'Enhancement60PvEP2BiS', @RACEMASK_ALL, 0, 18817, 2717, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP2BiS', @RACEMASK_ALL, 1, 18404, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP2BiS', @RACEMASK_ALL, 2, 20203, 2606, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP2BiS', @RACEMASK_ALL, 4, 11726, 1891, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP2BiS', @RACEMASK_ALL, 5, 19380, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP2BiS', @RACEMASK_ALL, 6, 15062, 2717, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP2BiS', @RACEMASK_ALL, 7, 19381, 1887, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP2BiS', @RACEMASK_ALL, 8, 18812, 1885, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP2BiS', @RACEMASK_ALL, 9, 19157, 2564, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP2BiS', @RACEMASK_ALL, 10, 19325, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP2BiS', @RACEMASK_ALL, 11, 19384, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP2BiS', @RACEMASK_ALL, 12, 19406, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP2BiS', @RACEMASK_ALL, 13, 13965, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP2BiS', @RACEMASK_ALL, 14, 19436, 849, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP2BiS', @RACEMASK_ALL, 15, 19363, 2564, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement60PvEP2BiS', @RACEMASK_ALL, 16, 17106, 2564, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Shaman Restoration60PvEP2BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Shaman', 'Restoration60PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_magicimmunity:30|t|r Use Restoration PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Restoration60PvE', 'Restoration60PvE', 'Classic Phase 2', 102),
('Shaman', 'Restoration60PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_magicimmunity:30|t|r Use Restoration PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Restoration60PvE', 'Restoration60PvE', 'Classic Phase 2', 102);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Shaman', 'Restoration60PvEP2BiS', @RACEMASK_ALL, 0, 19132, 2715, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP2BiS', @RACEMASK_ALL, 1, 18814, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP2BiS', @RACEMASK_ALL, 2, 18810, 2604, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP2BiS', @RACEMASK_ALL, 4, 13346, 1891, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP2BiS', @RACEMASK_ALL, 5, 19162, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP2BiS', @RACEMASK_ALL, 6, 18875, 2715, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP2BiS', @RACEMASK_ALL, 7, 13954, 911, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP2BiS', @RACEMASK_ALL, 8, 13969, 2650, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP2BiS', @RACEMASK_ALL, 9, 18527, 2322, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP2BiS', @RACEMASK_ALL, 10, 19140, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP2BiS', @RACEMASK_ALL, 12, 17064, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP2BiS', @RACEMASK_ALL, 14, 18510, 1888, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP2BiS', @RACEMASK_ALL, 15, 17105, 2505, 0, 0, 0, 0, 0),
('Shaman', 'Restoration60PvEP2BiS', @RACEMASK_ALL, 16, 19312, 907, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warlock Affliction60PvEP2BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Warlock', 'Affliction60PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_shadow_deathcoil:30|t|r Use Affliction PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Affliction60PvE', 'Affliction60PvE', 'Classic Phase 2', 102),
('Warlock', 'Affliction60PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_shadow_deathcoil:30|t|r Use Affliction PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Affliction60PvE', 'Affliction60PvE', 'Classic Phase 2', 102);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warlock', 'Affliction60PvEP2BiS', @RACEMASK_ALL, 0, 23310, 2721, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP2BiS', @RACEMASK_ALL, 1, 18814, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP2BiS', @RACEMASK_ALL, 2, 23311, 2605, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP2BiS', @RACEMASK_ALL, 4, 19145, 1891, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP2BiS', @RACEMASK_ALL, 5, 19136, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP2BiS', @RACEMASK_ALL, 6, 19133, 2721, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP2BiS', @RACEMASK_ALL, 7, 19131, 911, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP2BiS', @RACEMASK_ALL, 8, 13409, 2650, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP2BiS', @RACEMASK_ALL, 9, 13253, 2322, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP2BiS', @RACEMASK_ALL, 10, 19147, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP2BiS', @RACEMASK_ALL, 12, 18820, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP2BiS', @RACEMASK_ALL, 14, 13386, 1888, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP2BiS', @RACEMASK_ALL, 15, 17103, 2504, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP2BiS', @RACEMASK_ALL, 16, 19309, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction60PvEP2BiS', @RACEMASK_ALL, 17, 13396, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warrior Fury60PvEP2BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Warrior', 'Fury60PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_warrior_innerrage:30|t|r Use Fury PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Fury60PvE', 'Fury60PvE', 'Classic Phase 2', 102),
('Warrior', 'Fury60PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_warrior_innerrage:30|t|r Use Fury PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Fury60PvE', 'Fury60PvE', 'Classic Phase 2', 102);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warrior', 'Fury60PvEP2BiS', @RACEMASK_ALL, 0, 12640, 2717, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP2BiS', @RACEMASK_ALL, 1, 18404, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP2BiS', @RACEMASK_ALL, 2, 23315, 2606, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP2BiS', @RACEMASK_ALL, 4, 11726, 1891, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP2BiS', @RACEMASK_ALL, 5, 19137, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP2BiS', @RACEMASK_ALL, 6, 23301, 2717, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP2BiS', @RACEMASK_ALL, 7, 14616, 1887, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP2BiS', @RACEMASK_ALL, 8, 19578, 1885, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP2BiS', @RACEMASK_ALL, 9, 19143, 2564, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP2BiS', @RACEMASK_ALL, 10, 18821, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP2BiS', @RACEMASK_ALL, 11, 19325, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP2BiS', @RACEMASK_ALL, 12, 11815, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP2BiS', @RACEMASK_ALL, 14, 18541, 849, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP2BiS', @RACEMASK_ALL, 15, 17068, 1900, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP2BiS', @RACEMASK_ALL, 16, 18832, 1900, 0, 0, 0, 0, 0),
('Warrior', 'Fury60PvEP2BiS', @RACEMASK_ALL, 17, 17069, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warrior Protection60PvEP2BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Warrior', 'Protection60PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_warrior_defensivestance:30|t|r Use Protection PvE BiS', 7, @MINLEVEL, @MAXLEVEL, 'Protection60PvE', 'Protection60PvE', 'Classic Phase 2', 102),
('Warrior', 'Protection60PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_warrior_defensivestance:30|t|r Use Protection PvE BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Protection60PvE', 'Protection60PvE', 'Classic Phase 2', 102);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warrior', 'Protection60PvEP2BiS', @RACEMASK_ALL, 0, 23314, 2716, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP2BiS', @RACEMASK_ALL, 1, 18404, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP2BiS', @RACEMASK_ALL, 2, 23315, 2606, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP2BiS', @RACEMASK_ALL, 4, 12895, 1891, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP2BiS', @RACEMASK_ALL, 5, 19137, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP2BiS', @RACEMASK_ALL, 6, 23301, 2716, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP2BiS', @RACEMASK_ALL, 7, 16862, 1887, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP2BiS', @RACEMASK_ALL, 8, 19578, 1886, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP2BiS', @RACEMASK_ALL, 9, 19143, 2564, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP2BiS', @RACEMASK_ALL, 10, 17063, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP2BiS', @RACEMASK_ALL, 11, 18821, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP2BiS', @RACEMASK_ALL, 12, 11815, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP2BiS', @RACEMASK_ALL, 14, 18541, 1889, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP2BiS', @RACEMASK_ALL, 15, 11684, 1900, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP2BiS', @RACEMASK_ALL, 16, 18832, 929, 0, 0, 0, 0, 0),
('Warrior', 'Protection60PvEP2BiS', @RACEMASK_ALL, 17, 17072, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

