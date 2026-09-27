-- Batch-generated TBC BiS gear templates
-- Phase: 0  Mode: pve
-- 30 specs

-- Idempotency: remove this file's templates first so re-application cannot duplicate rows
-- (the index table has no unique key; without this a re-applied file would append copies).
DELETE FROM `mod_npc_talent_template_index` WHERE `playerSpec` IN ('Balance70PvEP0BiS', 'Cat70PvEP0BiS', 'Bear70PvEP0BiS', 'Restoration70PvEP0BiS', 'Beastmastery70PvEP0BiS', 'Marksmanship70PvEP0BiS', 'Survival70PvEP0BiS', 'Arcane70PvEP0BiS', 'Fire70PvEP0BiS', 'Frost70PvEP0BiS', 'Holy70PvEP0BiS', 'Protection70PvEP0BiS', 'Retribution70PvEP0BiS', 'Discipline70PvEP0BiS', 'Shadow70PvEP0BiS', 'Assassination70PvEP0BiS', 'Combat70PvEP0BiS', 'Elemental70PvEP0BiS', 'Enhancement70PvEP0BiS', 'Affliction70PvEP0BiS', 'Demonology70PvEP0BiS', 'Destruction70PvEP0BiS', 'Arms70PvEP0BiS', 'Fury70PvEP0BiS', 'Blood70PvEP0BiS', 'Unholy70PvEP0BiS');
DELETE FROM `mod_npc_talent_template_gear` WHERE `playerSpec` IN ('Balance70PvEP0BiS', 'Cat70PvEP0BiS', 'Bear70PvEP0BiS', 'Restoration70PvEP0BiS', 'Beastmastery70PvEP0BiS', 'Marksmanship70PvEP0BiS', 'Survival70PvEP0BiS', 'Arcane70PvEP0BiS', 'Fire70PvEP0BiS', 'Frost70PvEP0BiS', 'Holy70PvEP0BiS', 'Protection70PvEP0BiS', 'Retribution70PvEP0BiS', 'Discipline70PvEP0BiS', 'Shadow70PvEP0BiS', 'Assassination70PvEP0BiS', 'Combat70PvEP0BiS', 'Elemental70PvEP0BiS', 'Enhancement70PvEP0BiS', 'Affliction70PvEP0BiS', 'Demonology70PvEP0BiS', 'Destruction70PvEP0BiS', 'Arms70PvEP0BiS', 'Fury70PvEP0BiS', 'Blood70PvEP0BiS', 'Unholy70PvEP0BiS');

SET @MINLEVEL = 70;
SET @MAXLEVEL = 79;
SET @RACEMASK_ALL = 1791;
-- ===== Druid Balance70PvEP0BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Druid', 'Balance70PvEP0BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_starfall:30|t|r Use Balance PvE P0 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Balance70PvE', 'Balance70PvE', 'TBC Pre-Raid', 200),
('Druid', 'Balance70PvEP0BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_starfall:30|t|r Use Balance PvE P0 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Balance70PvE', 'Balance70PvE', 'TBC Pre-Raid', 200);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Druid', 'Balance70PvEP0BiS', @RACEMASK_ALL, 0, 24266, 3002, 2740, 2736, 2728, 0, 0),
('Druid', 'Balance70PvEP0BiS', @RACEMASK_ALL, 1, 28134, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance70PvEP0BiS', @RACEMASK_ALL, 2, 27796, 2995, 2736, 2728, 0, 0, 0),
('Druid', 'Balance70PvEP0BiS', @RACEMASK_ALL, 4, 21848, 2661, 2736, 2740, 0, 0, 0),
('Druid', 'Balance70PvEP0BiS', @RACEMASK_ALL, 5, 21846, 0, 2736, 2740, 0, 0, 0),
('Druid', 'Balance70PvEP0BiS', @RACEMASK_ALL, 6, 24262, 2748, 2740, 2736, 2728, 0, 0),
('Druid', 'Balance70PvEP0BiS', @RACEMASK_ALL, 7, 27821, 2656, 0, 0, 0, 0, 0),
('Druid', 'Balance70PvEP0BiS', @RACEMASK_ALL, 8, 29523, 2650, 2736, 0, 0, 0, 0),
('Druid', 'Balance70PvEP0BiS', @RACEMASK_ALL, 9, 21847, 2322, 2736, 2740, 0, 0, 0),
('Druid', 'Balance70PvEP0BiS', @RACEMASK_ALL, 10, 29172, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance70PvEP0BiS', @RACEMASK_ALL, 11, 28227, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance70PvEP0BiS', @RACEMASK_ALL, 12, 29370, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance70PvEP0BiS', @RACEMASK_ALL, 13, 27683, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance70PvEP0BiS', @RACEMASK_ALL, 14, 27981, 2621, 0, 0, 0, 0, 0),
('Druid', 'Balance70PvEP0BiS', @RACEMASK_ALL, 15, 23554, 2671, 0, 0, 0, 0, 0),
('Druid', 'Balance70PvEP0BiS', @RACEMASK_ALL, 16, 29271, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance70PvEP0BiS', @RACEMASK_ALL, 17, 27518, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Druid Cat70PvEP0BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Druid', 'Cat70PvEP0BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_druid_catform:30|t|r Use Cat PvE P0 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Cat70PvE', 'Cat70PvE', 'TBC Pre-Raid', 200),
('Druid', 'Cat70PvEP0BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_druid_catform:30|t|r Use Cat PvE P0 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Cat70PvE', 'Cat70PvE', 'TBC Pre-Raid', 200);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Druid', 'Cat70PvEP0BiS', @RACEMASK_ALL, 0, 8345, 3003, 0, 0, 0, 0, 0),
('Druid', 'Cat70PvEP0BiS', @RACEMASK_ALL, 1, 24114, 0, 0, 0, 0, 0, 0),
('Druid', 'Cat70PvEP0BiS', @RACEMASK_ALL, 2, 27797, 2986, 2726, 2731, 0, 0, 0),
('Druid', 'Cat70PvEP0BiS', @RACEMASK_ALL, 4, 29525, 2661, 0, 0, 0, 0, 0),
('Druid', 'Cat70PvEP0BiS', @RACEMASK_ALL, 5, 29247, 0, 0, 0, 0, 0, 0),
('Druid', 'Cat70PvEP0BiS', @RACEMASK_ALL, 6, 31544, 3012, 0, 0, 0, 0, 0),
('Druid', 'Cat70PvEP0BiS', @RACEMASK_ALL, 7, 25686, 2939, 2735, 2726, 0, 0, 0),
('Druid', 'Cat70PvEP0BiS', @RACEMASK_ALL, 8, 29246, 2647, 0, 0, 0, 0, 0),
('Druid', 'Cat70PvEP0BiS', @RACEMASK_ALL, 9, 28396, 2564, 2726, 2731, 0, 0, 0),
('Druid', 'Cat70PvEP0BiS', @RACEMASK_ALL, 10, 30834, 0, 0, 0, 0, 0, 0),
('Druid', 'Cat70PvEP0BiS', @RACEMASK_ALL, 11, 31920, 0, 0, 0, 0, 0, 0),
('Druid', 'Cat70PvEP0BiS', @RACEMASK_ALL, 12, 23206, 0, 0, 0, 0, 0, 0),
('Druid', 'Cat70PvEP0BiS', @RACEMASK_ALL, 13, 29383, 0, 0, 0, 0, 0, 0),
('Druid', 'Cat70PvEP0BiS', @RACEMASK_ALL, 14, 31255, 368, 0, 0, 0, 0, 0),
('Druid', 'Cat70PvEP0BiS', @RACEMASK_ALL, 15, 31334, 2673, 0, 0, 0, 0, 0),
('Druid', 'Cat70PvEP0BiS', @RACEMASK_ALL, 17, 29390, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Druid Bear70PvEP0BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Druid', 'Bear70PvEP0BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_racial_bearform:30|t|r Use Bear PvE P0 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Bear70PvE', 'Bear70PvE', 'TBC Pre-Raid', 200),
('Druid', 'Bear70PvEP0BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_racial_bearform:30|t|r Use Bear PvE P0 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Bear70PvE', 'Bear70PvE', 'TBC Pre-Raid', 200);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Druid', 'Bear70PvEP0BiS', @RACEMASK_ALL, 0, 29502, 2999, 0, 0, 0, 0, 0),
('Druid', 'Bear70PvEP0BiS', @RACEMASK_ALL, 1, 29815, 0, 0, 0, 0, 0, 0),
('Druid', 'Bear70PvEP0BiS', @RACEMASK_ALL, 2, 27434, 2991, 2725, 2725, 0, 0, 0),
('Druid', 'Bear70PvEP0BiS', @RACEMASK_ALL, 4, 25689, 2661, 2737, 2737, 2731, 0, 0),
('Druid', 'Bear70PvEP0BiS', @RACEMASK_ALL, 5, 30942, 0, 0, 0, 0, 0, 0),
('Druid', 'Bear70PvEP0BiS', @RACEMASK_ALL, 6, 25690, 3011, 2731, 2737, 2731, 0, 0),
('Druid', 'Bear70PvEP0BiS', @RACEMASK_ALL, 7, 28987, 2940, 0, 0, 0, 0, 0),
('Druid', 'Bear70PvEP0BiS', @RACEMASK_ALL, 8, 30944, 2648, 0, 0, 0, 0, 0),
('Druid', 'Bear70PvEP0BiS', @RACEMASK_ALL, 9, 30943, 2564, 0, 0, 0, 0, 0),
('Druid', 'Bear70PvEP0BiS', @RACEMASK_ALL, 10, 30834, 0, 0, 0, 0, 0, 0),
('Druid', 'Bear70PvEP0BiS', @RACEMASK_ALL, 11, 29384, 0, 0, 0, 0, 0, 0),
('Druid', 'Bear70PvEP0BiS', @RACEMASK_ALL, 12, 23206, 0, 0, 0, 0, 0, 0),
('Druid', 'Bear70PvEP0BiS', @RACEMASK_ALL, 13, 29383, 0, 0, 0, 0, 0, 0),
('Druid', 'Bear70PvEP0BiS', @RACEMASK_ALL, 14, 28256, 368, 0, 0, 0, 0, 0),
('Druid', 'Bear70PvEP0BiS', @RACEMASK_ALL, 15, 29171, 2673, 0, 0, 0, 0, 0),
('Druid', 'Bear70PvEP0BiS', @RACEMASK_ALL, 17, 23198, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Druid Restoration70PvEP0BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Druid', 'Restoration70PvEP0BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_healingtouch:30|t|r Use Restoration PvE P0 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Restoration70PvE', 'Restoration70PvE', 'TBC Pre-Raid', 200),
('Druid', 'Restoration70PvEP0BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_healingtouch:30|t|r Use Restoration PvE P0 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Restoration70PvE', 'Restoration70PvE', 'TBC Pre-Raid', 200);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Druid', 'Restoration70PvEP0BiS', @RACEMASK_ALL, 0, 32479, 3001, 2835, 2740, 0, 0, 0),
('Druid', 'Restoration70PvEP0BiS', @RACEMASK_ALL, 1, 33922, 0, 2734, 0, 0, 0, 0),
('Druid', 'Restoration70PvEP0BiS', @RACEMASK_ALL, 2, 32583, 2993, 0, 0, 0, 0, 0),
('Druid', 'Restoration70PvEP0BiS', @RACEMASK_ALL, 4, 21875, 2661, 2734, 2740, 0, 0, 0),
('Druid', 'Restoration70PvEP0BiS', @RACEMASK_ALL, 5, 21873, 0, 2734, 2740, 0, 0, 0),
('Druid', 'Restoration70PvEP0BiS', @RACEMASK_ALL, 6, 30543, 2748, 2728, 2734, 2740, 0, 0),
('Druid', 'Restoration70PvEP0BiS', @RACEMASK_ALL, 7, 27411, 2656, 2728, 2740, 0, 0, 0),
('Druid', 'Restoration70PvEP0BiS', @RACEMASK_ALL, 8, 32584, 2650, 0, 0, 0, 0, 0),
('Druid', 'Restoration70PvEP0BiS', @RACEMASK_ALL, 9, 29506, 2322, 0, 0, 0, 0, 0),
('Druid', 'Restoration70PvEP0BiS', @RACEMASK_ALL, 10, 27780, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration70PvEP0BiS', @RACEMASK_ALL, 11, 31383, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration70PvEP0BiS', @RACEMASK_ALL, 12, 29376, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration70PvEP0BiS', @RACEMASK_ALL, 13, 25634, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration70PvEP0BiS', @RACEMASK_ALL, 14, 31329, 2621, 0, 0, 0, 0, 0),
('Druid', 'Restoration70PvEP0BiS', @RACEMASK_ALL, 15, 32451, 2505, 0, 0, 0, 0, 0),
('Druid', 'Restoration70PvEP0BiS', @RACEMASK_ALL, 16, 29274, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration70PvEP0BiS', @RACEMASK_ALL, 17, 27886, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Hunter Beastmastery70PvEP0BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Hunter', 'Beastmastery70PvEP0BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_hunter_beasttaming:30|t|r Use Beastmastery PvE P0 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Beastmastery70PvE', 'Beastmastery70PvE', 'TBC Pre-Raid', 200),
('Hunter', 'Beastmastery70PvEP0BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_hunter_beasttaming:30|t|r Use Beastmastery PvE P0 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Beastmastery70PvE', 'Beastmastery70PvE', 'TBC Pre-Raid', 200);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Hunter', 'Beastmastery70PvEP0BiS', @RACEMASK_ALL, 0, 28275, 3003, 2726, 2829, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP0BiS', @RACEMASK_ALL, 1, 29381, 0, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP0BiS', @RACEMASK_ALL, 2, 27801, 2986, 2764, 2726, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP0BiS', @RACEMASK_ALL, 4, 28228, 2661, 2726, 2726, 2731, 0, 0),
('Hunter', 'Beastmastery70PvEP0BiS', @RACEMASK_ALL, 5, 30040, 0, 2731, 2731, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP0BiS', @RACEMASK_ALL, 6, 27874, 3012, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP0BiS', @RACEMASK_ALL, 7, 25686, 2939, 2764, 2726, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP0BiS', @RACEMASK_ALL, 8, 29527, 2647, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP0BiS', @RACEMASK_ALL, 9, 27474, 2564, 2726, 2731, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP0BiS', @RACEMASK_ALL, 10, 30860, 0, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP0BiS', @RACEMASK_ALL, 11, 31077, 0, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP0BiS', @RACEMASK_ALL, 12, 29383, 0, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP0BiS', @RACEMASK_ALL, 13, 28288, 0, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP0BiS', @RACEMASK_ALL, 14, 24259, 368, 2726, 0, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP0BiS', @RACEMASK_ALL, 15, 27846, 2670, 2731, 2726, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP0BiS', @RACEMASK_ALL, 16, 28315, 0, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP0BiS', @RACEMASK_ALL, 17, 31986, 2724, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Hunter Marksmanship70PvEP0BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Hunter', 'Marksmanship70PvEP0BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_marksmanship:30|t|r Use Marksmanship PvE P0 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Marksmanship70PvE', 'Marksmanship70PvE', 'TBC Pre-Raid', 200),
('Hunter', 'Marksmanship70PvEP0BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_marksmanship:30|t|r Use Marksmanship PvE P0 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Marksmanship70PvE', 'Marksmanship70PvE', 'TBC Pre-Raid', 200);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Hunter', 'Marksmanship70PvEP0BiS', @RACEMASK_ALL, 0, 28275, 3003, 2726, 2829, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP0BiS', @RACEMASK_ALL, 1, 29381, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP0BiS', @RACEMASK_ALL, 2, 27801, 2986, 2764, 2726, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP0BiS', @RACEMASK_ALL, 4, 28228, 2661, 2726, 2726, 2731, 0, 0),
('Hunter', 'Marksmanship70PvEP0BiS', @RACEMASK_ALL, 5, 30040, 0, 2731, 2731, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP0BiS', @RACEMASK_ALL, 6, 27874, 3012, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP0BiS', @RACEMASK_ALL, 7, 25686, 2939, 2764, 2726, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP0BiS', @RACEMASK_ALL, 8, 29527, 2647, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP0BiS', @RACEMASK_ALL, 9, 27474, 2564, 2726, 2731, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP0BiS', @RACEMASK_ALL, 10, 30860, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP0BiS', @RACEMASK_ALL, 11, 31077, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP0BiS', @RACEMASK_ALL, 12, 29383, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP0BiS', @RACEMASK_ALL, 13, 28288, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP0BiS', @RACEMASK_ALL, 14, 24259, 368, 2726, 0, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP0BiS', @RACEMASK_ALL, 15, 27846, 2670, 2731, 2726, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP0BiS', @RACEMASK_ALL, 16, 28315, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP0BiS', @RACEMASK_ALL, 17, 31986, 2724, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Hunter Survival70PvEP0BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Hunter', 'Survival70PvEP0BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_Hunter_swiftstrike:30|t|r Use Survival PvE P0 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Survival70PvE', 'Survival70PvE', 'TBC Pre-Raid', 200),
('Hunter', 'Survival70PvEP0BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_Hunter_swiftstrike:30|t|r Use Survival PvE P0 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Survival70PvE', 'Survival70PvE', 'TBC Pre-Raid', 200);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Hunter', 'Survival70PvEP0BiS', @RACEMASK_ALL, 0, 28275, 3003, 2726, 2829, 0, 0, 0),
('Hunter', 'Survival70PvEP0BiS', @RACEMASK_ALL, 1, 28343, 0, 0, 0, 0, 0, 0),
('Hunter', 'Survival70PvEP0BiS', @RACEMASK_ALL, 2, 27801, 2986, 2764, 2726, 0, 0, 0),
('Hunter', 'Survival70PvEP0BiS', @RACEMASK_ALL, 4, 28228, 2661, 2726, 2726, 2731, 0, 0),
('Hunter', 'Survival70PvEP0BiS', @RACEMASK_ALL, 5, 29526, 0, 0, 0, 0, 0, 0),
('Hunter', 'Survival70PvEP0BiS', @RACEMASK_ALL, 6, 27837, 3012, 2726, 2726, 2731, 0, 0),
('Hunter', 'Survival70PvEP0BiS', @RACEMASK_ALL, 7, 29262, 2939, 0, 0, 0, 0, 0),
('Hunter', 'Survival70PvEP0BiS', @RACEMASK_ALL, 8, 25697, 2647, 2731, 0, 0, 0, 0),
('Hunter', 'Survival70PvEP0BiS', @RACEMASK_ALL, 9, 27474, 2564, 2726, 2731, 0, 0, 0),
('Hunter', 'Survival70PvEP0BiS', @RACEMASK_ALL, 10, 31326, 0, 0, 0, 0, 0, 0),
('Hunter', 'Survival70PvEP0BiS', @RACEMASK_ALL, 11, 22961, 0, 0, 0, 0, 0, 0),
('Hunter', 'Survival70PvEP0BiS', @RACEMASK_ALL, 12, 29383, 0, 0, 0, 0, 0, 0),
('Hunter', 'Survival70PvEP0BiS', @RACEMASK_ALL, 13, 28034, 0, 0, 0, 0, 0, 0),
('Hunter', 'Survival70PvEP0BiS', @RACEMASK_ALL, 14, 29382, 368, 0, 0, 0, 0, 0),
('Hunter', 'Survival70PvEP0BiS', @RACEMASK_ALL, 15, 27846, 2670, 2731, 2726, 0, 0, 0),
('Hunter', 'Survival70PvEP0BiS', @RACEMASK_ALL, 16, 29372, 0, 0, 0, 0, 0, 0),
('Hunter', 'Survival70PvEP0BiS', @RACEMASK_ALL, 17, 31986, 2724, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Mage Arcane70PvEP0BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Mage', 'Arcane70PvEP0BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_magicalsentry:30|t|r Use Arcane PvE P0 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Arcane70PvE', 'Arcane70PvE', 'TBC Pre-Raid', 200),
('Mage', 'Arcane70PvEP0BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_magicalsentry:30|t|r Use Arcane PvE P0 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Arcane70PvE', 'Arcane70PvE', 'TBC Pre-Raid', 200);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Mage', 'Arcane70PvEP0BiS', @RACEMASK_ALL, 0, 32089, 3002, 2736, 2828, 0, 0, 0),
('Mage', 'Arcane70PvEP0BiS', @RACEMASK_ALL, 1, 28134, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane70PvEP0BiS', @RACEMASK_ALL, 2, 35343, 2995, 2740, 2736, 0, 0, 0),
('Mage', 'Arcane70PvEP0BiS', @RACEMASK_ALL, 4, 21848, 2661, 2736, 2740, 0, 0, 0),
('Mage', 'Arcane70PvEP0BiS', @RACEMASK_ALL, 5, 21846, 0, 2736, 2740, 0, 0, 0),
('Mage', 'Arcane70PvEP0BiS', @RACEMASK_ALL, 6, 24262, 2748, 2740, 2736, 2728, 0, 0),
('Mage', 'Arcane70PvEP0BiS', @RACEMASK_ALL, 7, 28410, 2656, 0, 0, 0, 0, 0),
('Mage', 'Arcane70PvEP0BiS', @RACEMASK_ALL, 8, 28411, 2650, 2736, 0, 0, 0, 0),
('Mage', 'Arcane70PvEP0BiS', @RACEMASK_ALL, 9, 21847, 2322, 2736, 2740, 0, 0, 0),
('Mage', 'Arcane70PvEP0BiS', @RACEMASK_ALL, 10, 28227, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane70PvEP0BiS', @RACEMASK_ALL, 11, 29172, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane70PvEP0BiS', @RACEMASK_ALL, 12, 29370, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane70PvEP0BiS', @RACEMASK_ALL, 13, 27683, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane70PvEP0BiS', @RACEMASK_ALL, 14, 25777, 2621, 0, 0, 0, 0, 0),
('Mage', 'Arcane70PvEP0BiS', @RACEMASK_ALL, 15, 29155, 2671, 0, 0, 0, 0, 0),
('Mage', 'Arcane70PvEP0BiS', @RACEMASK_ALL, 16, 29271, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane70PvEP0BiS', @RACEMASK_ALL, 17, 29350, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Mage Fire70PvEP0BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Mage', 'Fire70PvEP0BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_fire_flamebolt:30|t|r Use Fire PvE P0 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Fire70PvE', 'Fire70PvE', 'TBC Pre-Raid', 200),
('Mage', 'Fire70PvEP0BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_fire_flamebolt:30|t|r Use Fire PvE P0 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Fire70PvE', 'Fire70PvE', 'TBC Pre-Raid', 200);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Mage', 'Fire70PvEP0BiS', @RACEMASK_ALL, 0, 28193, 3002, 2728, 2828, 0, 0, 0),
('Mage', 'Fire70PvEP0BiS', @RACEMASK_ALL, 1, 28134, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire70PvEP0BiS', @RACEMASK_ALL, 2, 27796, 2995, 2736, 2728, 0, 0, 0),
('Mage', 'Fire70PvEP0BiS', @RACEMASK_ALL, 4, 21848, 2661, 2736, 2740, 0, 0, 0),
('Mage', 'Fire70PvEP0BiS', @RACEMASK_ALL, 5, 21846, 0, 2736, 2740, 0, 0, 0),
('Mage', 'Fire70PvEP0BiS', @RACEMASK_ALL, 6, 24262, 2748, 2740, 2736, 2728, 0, 0),
('Mage', 'Fire70PvEP0BiS', @RACEMASK_ALL, 7, 28406, 2656, 2728, 2736, 0, 0, 0),
('Mage', 'Fire70PvEP0BiS', @RACEMASK_ALL, 8, 28411, 2650, 2736, 0, 0, 0, 0),
('Mage', 'Fire70PvEP0BiS', @RACEMASK_ALL, 9, 21847, 2322, 2736, 2740, 0, 0, 0),
('Mage', 'Fire70PvEP0BiS', @RACEMASK_ALL, 10, 28555, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire70PvEP0BiS', @RACEMASK_ALL, 11, 29172, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire70PvEP0BiS', @RACEMASK_ALL, 12, 27683, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire70PvEP0BiS', @RACEMASK_ALL, 13, 29370, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire70PvEP0BiS', @RACEMASK_ALL, 14, 23050, 2621, 0, 0, 0, 0, 0),
('Mage', 'Fire70PvEP0BiS', @RACEMASK_ALL, 15, 23554, 2671, 0, 0, 0, 0, 0),
('Mage', 'Fire70PvEP0BiS', @RACEMASK_ALL, 16, 29270, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire70PvEP0BiS', @RACEMASK_ALL, 17, 28386, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Mage Frost70PvEP0BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Mage', 'Frost70PvEP0BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_frost_frostbolt02:30|t|r Use Frost PvE P0 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Frost70PvE', 'Frost70PvE', 'TBC Pre-Raid', 200),
('Mage', 'Frost70PvEP0BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_frost_frostbolt02:30|t|r Use Frost PvE P0 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Frost70PvE', 'Frost70PvE', 'TBC Pre-Raid', 200);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Mage', 'Frost70PvEP0BiS', @RACEMASK_ALL, 0, 28193, 3002, 2728, 2828, 0, 0, 0),
('Mage', 'Frost70PvEP0BiS', @RACEMASK_ALL, 1, 28134, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost70PvEP0BiS', @RACEMASK_ALL, 2, 21869, 2995, 2736, 2740, 0, 0, 0),
('Mage', 'Frost70PvEP0BiS', @RACEMASK_ALL, 4, 21871, 2661, 2736, 2740, 0, 0, 0),
('Mage', 'Frost70PvEP0BiS', @RACEMASK_ALL, 5, 24256, 0, 2728, 2736, 0, 0, 0),
('Mage', 'Frost70PvEP0BiS', @RACEMASK_ALL, 6, 24262, 2748, 2740, 2736, 2728, 0, 0),
('Mage', 'Frost70PvEP0BiS', @RACEMASK_ALL, 7, 21870, 2656, 2736, 2740, 0, 0, 0),
('Mage', 'Frost70PvEP0BiS', @RACEMASK_ALL, 8, 28411, 2650, 2736, 0, 0, 0, 0),
('Mage', 'Frost70PvEP0BiS', @RACEMASK_ALL, 9, 27465, 2322, 2728, 2736, 0, 0, 0),
('Mage', 'Frost70PvEP0BiS', @RACEMASK_ALL, 10, 29172, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost70PvEP0BiS', @RACEMASK_ALL, 11, 29126, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost70PvEP0BiS', @RACEMASK_ALL, 12, 27683, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost70PvEP0BiS', @RACEMASK_ALL, 13, 29370, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost70PvEP0BiS', @RACEMASK_ALL, 14, 23050, 2621, 0, 0, 0, 0, 0),
('Mage', 'Frost70PvEP0BiS', @RACEMASK_ALL, 15, 23554, 2672, 0, 0, 0, 0, 0),
('Mage', 'Frost70PvEP0BiS', @RACEMASK_ALL, 16, 29269, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost70PvEP0BiS', @RACEMASK_ALL, 17, 22821, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Paladin Holy70PvEP0BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Paladin', 'Holy70PvEP0BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Use Holy PvE P0 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Holy70PvE', 'Holy70PvE', 'TBC Pre-Raid', 200),
('Paladin', 'Holy70PvEP0BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Use Holy PvE P0 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Holy70PvE', 'Holy70PvE', 'TBC Pre-Raid', 200);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Paladin', 'Holy70PvEP0BiS', @RACEMASK_ALL, 0, 32084, 3001, 2835, 2734, 0, 0, 0),
('Paladin', 'Holy70PvEP0BiS', @RACEMASK_ALL, 1, 29374, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy70PvEP0BiS', @RACEMASK_ALL, 2, 27775, 2993, 2728, 2740, 0, 0, 0),
('Paladin', 'Holy70PvEP0BiS', @RACEMASK_ALL, 4, 29522, 2661, 2740, 2734, 2740, 0, 0),
('Paladin', 'Holy70PvEP0BiS', @RACEMASK_ALL, 5, 29524, 0, 2740, 2734, 0, 0, 0),
('Paladin', 'Holy70PvEP0BiS', @RACEMASK_ALL, 6, 30543, 2748, 2728, 2734, 2740, 0, 0),
('Paladin', 'Holy70PvEP0BiS', @RACEMASK_ALL, 7, 27411, 2656, 2728, 2740, 0, 0, 0),
('Paladin', 'Holy70PvEP0BiS', @RACEMASK_ALL, 8, 29523, 2650, 2734, 0, 0, 0, 0),
('Paladin', 'Holy70PvEP0BiS', @RACEMASK_ALL, 9, 27457, 2322, 0, 0, 0, 0, 0),
('Paladin', 'Holy70PvEP0BiS', @RACEMASK_ALL, 10, 29373, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy70PvEP0BiS', @RACEMASK_ALL, 11, 29169, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy70PvEP0BiS', @RACEMASK_ALL, 12, 29376, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy70PvEP0BiS', @RACEMASK_ALL, 13, 30841, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy70PvEP0BiS', @RACEMASK_ALL, 14, 29354, 2621, 0, 0, 0, 0, 0),
('Paladin', 'Holy70PvEP0BiS', @RACEMASK_ALL, 15, 32451, 2505, 0, 0, 0, 0, 0),
('Paladin', 'Holy70PvEP0BiS', @RACEMASK_ALL, 16, 29267, 907, 0, 0, 0, 0, 0),
('Paladin', 'Holy70PvEP0BiS', @RACEMASK_ALL, 17, 28296, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Paladin Protection70PvEP0BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Paladin', 'Protection70PvEP0BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_devotionaura:30|t|r Use Protection PvE P0 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Protection70PvE', 'Protection70PvE', 'TBC Pre-Raid', 200),
('Paladin', 'Protection70PvEP0BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_devotionaura:30|t|r Use Protection PvE P0 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Protection70PvE', 'Protection70PvE', 'TBC Pre-Raid', 200);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Paladin', 'Protection70PvEP0BiS', @RACEMASK_ALL, 0, 32473, 2999, 2833, 2737, 0, 0, 0),
('Paladin', 'Protection70PvEP0BiS', @RACEMASK_ALL, 1, 33921, 0, 2737, 0, 0, 0, 0),
('Paladin', 'Protection70PvEP0BiS', @RACEMASK_ALL, 2, 27847, 2991, 2725, 2731, 0, 0, 0),
('Paladin', 'Protection70PvEP0BiS', @RACEMASK_ALL, 4, 28203, 2661, 2725, 2737, 2731, 0, 0),
('Paladin', 'Protection70PvEP0BiS', @RACEMASK_ALL, 5, 30034, 0, 2725, 2737, 0, 0, 0),
('Paladin', 'Protection70PvEP0BiS', @RACEMASK_ALL, 6, 29184, 3011, 2725, 2737, 2731, 0, 0),
('Paladin', 'Protection70PvEP0BiS', @RACEMASK_ALL, 7, 29254, 2940, 0, 0, 0, 0, 0),
('Paladin', 'Protection70PvEP0BiS', @RACEMASK_ALL, 8, 29252, 2648, 0, 0, 0, 0, 0),
('Paladin', 'Protection70PvEP0BiS', @RACEMASK_ALL, 9, 30741, 2564, 2737, 2731, 0, 0, 0),
('Paladin', 'Protection70PvEP0BiS', @RACEMASK_ALL, 10, 28407, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection70PvEP0BiS', @RACEMASK_ALL, 11, 29172, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection70PvEP0BiS', @RACEMASK_ALL, 12, 27529, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection70PvEP0BiS', @RACEMASK_ALL, 13, 23836, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection70PvEP0BiS', @RACEMASK_ALL, 14, 27804, 368, 0, 0, 0, 0, 0),
('Paladin', 'Protection70PvEP0BiS', @RACEMASK_ALL, 15, 30832, 2673, 0, 0, 0, 0, 0),
('Paladin', 'Protection70PvEP0BiS', @RACEMASK_ALL, 16, 29176, 929, 2731, 2731, 0, 0, 0),
('Paladin', 'Protection70PvEP0BiS', @RACEMASK_ALL, 17, 29388, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Paladin Retribution70PvEP0BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Paladin', 'Retribution70PvEP0BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_auraoflight:30|t|r Use Retribution PvE P0 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Retribution70PvE', 'Retribution70PvE', 'TBC Pre-Raid', 200),
('Paladin', 'Retribution70PvEP0BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_auraoflight:30|t|r Use Retribution PvE P0 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Retribution70PvE', 'Retribution70PvE', 'TBC Pre-Raid', 200);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Paladin', 'Retribution70PvEP0BiS', @RACEMASK_ALL, 0, 32461, 3003, 2834, 2731, 0, 0, 0),
('Paladin', 'Retribution70PvEP0BiS', @RACEMASK_ALL, 1, 29381, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution70PvEP0BiS', @RACEMASK_ALL, 2, 32581, 2986, 0, 0, 0, 0, 0),
('Paladin', 'Retribution70PvEP0BiS', @RACEMASK_ALL, 4, 28484, 2661, 2731, 2735, 2735, 0, 0),
('Paladin', 'Retribution70PvEP0BiS', @RACEMASK_ALL, 5, 30032, 0, 2731, 2735, 0, 0, 0),
('Paladin', 'Retribution70PvEP0BiS', @RACEMASK_ALL, 6, 30257, 3012, 0, 0, 0, 0, 0),
('Paladin', 'Retribution70PvEP0BiS', @RACEMASK_ALL, 7, 33911, 2939, 0, 0, 0, 0, 0),
('Paladin', 'Retribution70PvEP0BiS', @RACEMASK_ALL, 8, 32574, 2647, 0, 0, 0, 0, 0),
('Paladin', 'Retribution70PvEP0BiS', @RACEMASK_ALL, 9, 30341, 684, 0, 0, 0, 0, 0),
('Paladin', 'Retribution70PvEP0BiS', @RACEMASK_ALL, 10, 30834, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution70PvEP0BiS', @RACEMASK_ALL, 11, 29177, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution70PvEP0BiS', @RACEMASK_ALL, 12, 19343, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution70PvEP0BiS', @RACEMASK_ALL, 13, 29383, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution70PvEP0BiS', @RACEMASK_ALL, 14, 33122, 368, 2731, 0, 0, 0, 0),
('Paladin', 'Retribution70PvEP0BiS', @RACEMASK_ALL, 15, 33688, 2667, 0, 0, 0, 0, 0),
('Paladin', 'Retribution70PvEP0BiS', @RACEMASK_ALL, 17, 27484, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Priest Discipline70PvEP0BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Priest', 'Discipline70PvEP0BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_wordfortitude:30|t|r Use Discipline PvE P0 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Discipline70PvE', 'Discipline70PvE', 'TBC Pre-Raid', 200),
('Priest', 'Discipline70PvEP0BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_wordfortitude:30|t|r Use Discipline PvE P0 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Discipline70PvE', 'Discipline70PvE', 'TBC Pre-Raid', 200);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Priest', 'Discipline70PvEP0BiS', @RACEMASK_ALL, 0, 32090, 3001, 2740, 2835, 0, 0, 0),
('Priest', 'Discipline70PvEP0BiS', @RACEMASK_ALL, 1, 30377, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline70PvEP0BiS', @RACEMASK_ALL, 2, 21874, 2993, 0, 0, 0, 0, 0),
('Priest', 'Discipline70PvEP0BiS', @RACEMASK_ALL, 4, 21875, 2661, 2734, 2740, 0, 0, 0),
('Priest', 'Discipline70PvEP0BiS', @RACEMASK_ALL, 5, 21873, 0, 2734, 2740, 0, 0, 0),
('Priest', 'Discipline70PvEP0BiS', @RACEMASK_ALL, 6, 24261, 2748, 2740, 2734, 2728, 0, 0),
('Priest', 'Discipline70PvEP0BiS', @RACEMASK_ALL, 7, 29251, 2656, 0, 0, 0, 0, 0),
('Priest', 'Discipline70PvEP0BiS', @RACEMASK_ALL, 8, 29183, 2650, 0, 0, 0, 0, 0),
('Priest', 'Discipline70PvEP0BiS', @RACEMASK_ALL, 9, 27536, 2322, 0, 0, 0, 0, 0),
('Priest', 'Discipline70PvEP0BiS', @RACEMASK_ALL, 10, 29373, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline70PvEP0BiS', @RACEMASK_ALL, 11, 29168, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline70PvEP0BiS', @RACEMASK_ALL, 12, 29376, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline70PvEP0BiS', @RACEMASK_ALL, 13, 21625, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline70PvEP0BiS', @RACEMASK_ALL, 14, 29354, 2621, 0, 0, 0, 0, 0),
('Priest', 'Discipline70PvEP0BiS', @RACEMASK_ALL, 15, 23556, 2505, 0, 0, 0, 0, 0),
('Priest', 'Discipline70PvEP0BiS', @RACEMASK_ALL, 16, 29170, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline70PvEP0BiS', @RACEMASK_ALL, 17, 27885, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Priest Holy70PvEP0BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Priest', 'Holy70PvEP0BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Use Holy PvE P0 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Holy70PvE', 'Holy70PvE', 'TBC Pre-Raid', 200),
('Priest', 'Holy70PvEP0BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Use Holy PvE P0 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Holy70PvE', 'Holy70PvE', 'TBC Pre-Raid', 200);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Priest', 'Holy70PvEP0BiS', @RACEMASK_ALL, 0, 32090, 3001, 2740, 2835, 0, 0, 0),
('Priest', 'Holy70PvEP0BiS', @RACEMASK_ALL, 1, 30377, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy70PvEP0BiS', @RACEMASK_ALL, 2, 21874, 2993, 0, 0, 0, 0, 0),
('Priest', 'Holy70PvEP0BiS', @RACEMASK_ALL, 4, 21875, 2661, 2734, 2740, 0, 0, 0),
('Priest', 'Holy70PvEP0BiS', @RACEMASK_ALL, 5, 21873, 0, 2734, 2740, 0, 0, 0),
('Priest', 'Holy70PvEP0BiS', @RACEMASK_ALL, 6, 24261, 2748, 2740, 2734, 2728, 0, 0),
('Priest', 'Holy70PvEP0BiS', @RACEMASK_ALL, 7, 29251, 2656, 0, 0, 0, 0, 0),
('Priest', 'Holy70PvEP0BiS', @RACEMASK_ALL, 8, 29183, 2650, 0, 0, 0, 0, 0),
('Priest', 'Holy70PvEP0BiS', @RACEMASK_ALL, 9, 27536, 2322, 0, 0, 0, 0, 0),
('Priest', 'Holy70PvEP0BiS', @RACEMASK_ALL, 10, 29373, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy70PvEP0BiS', @RACEMASK_ALL, 11, 29168, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy70PvEP0BiS', @RACEMASK_ALL, 12, 29376, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy70PvEP0BiS', @RACEMASK_ALL, 13, 21625, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy70PvEP0BiS', @RACEMASK_ALL, 14, 29354, 2621, 0, 0, 0, 0, 0),
('Priest', 'Holy70PvEP0BiS', @RACEMASK_ALL, 15, 23556, 2505, 0, 0, 0, 0, 0),
('Priest', 'Holy70PvEP0BiS', @RACEMASK_ALL, 16, 29170, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy70PvEP0BiS', @RACEMASK_ALL, 17, 27885, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Priest Shadow70PvEP0BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Priest', 'Shadow70PvEP0BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_shadow_shadowwordpain:30|t|r Use Shadow PvE P0 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Shadow70PvE', 'Shadow70PvE', 'TBC Pre-Raid', 200),
('Priest', 'Shadow70PvEP0BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_shadow_shadowwordpain:30|t|r Use Shadow PvE P0 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Shadow70PvE', 'Shadow70PvE', 'TBC Pre-Raid', 200);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Priest', 'Shadow70PvEP0BiS', @RACEMASK_ALL, 0, 24266, 3002, 2740, 2736, 2728, 0, 0),
('Priest', 'Shadow70PvEP0BiS', @RACEMASK_ALL, 1, 28245, 0, 2736, 0, 0, 0, 0),
('Priest', 'Shadow70PvEP0BiS', @RACEMASK_ALL, 2, 21869, 2995, 2736, 2740, 0, 0, 0),
('Priest', 'Shadow70PvEP0BiS', @RACEMASK_ALL, 4, 21871, 2661, 2736, 2740, 0, 0, 0),
('Priest', 'Shadow70PvEP0BiS', @RACEMASK_ALL, 5, 24256, 0, 2728, 2736, 0, 0, 0),
('Priest', 'Shadow70PvEP0BiS', @RACEMASK_ALL, 6, 24262, 2748, 2740, 2736, 2728, 0, 0),
('Priest', 'Shadow70PvEP0BiS', @RACEMASK_ALL, 7, 21870, 2656, 2736, 2740, 0, 0, 0),
('Priest', 'Shadow70PvEP0BiS', @RACEMASK_ALL, 8, 24250, 2650, 2736, 0, 0, 0, 0),
('Priest', 'Shadow70PvEP0BiS', @RACEMASK_ALL, 9, 29317, 2322, 2740, 2740, 0, 0, 0),
('Priest', 'Shadow70PvEP0BiS', @RACEMASK_ALL, 10, 21709, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow70PvEP0BiS', @RACEMASK_ALL, 11, 23031, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow70PvEP0BiS', @RACEMASK_ALL, 12, 29370, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow70PvEP0BiS', @RACEMASK_ALL, 13, 27683, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow70PvEP0BiS', @RACEMASK_ALL, 14, 24252, 2621, 0, 0, 0, 0, 0),
('Priest', 'Shadow70PvEP0BiS', @RACEMASK_ALL, 15, 30832, 2672, 0, 0, 0, 0, 0),
('Priest', 'Shadow70PvEP0BiS', @RACEMASK_ALL, 16, 29272, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow70PvEP0BiS', @RACEMASK_ALL, 17, 29350, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Rogue Assassination70PvEP0BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Rogue', 'Assassination70PvEP0BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_rogue_eviscerate:30|t|r Use Assassination PvE P0 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Assassination70PvE', 'Assassination70PvE', 'TBC Pre-Raid', 200),
('Rogue', 'Assassination70PvEP0BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_rogue_eviscerate:30|t|r Use Assassination PvE P0 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Assassination70PvE', 'Assassination70PvE', 'TBC Pre-Raid', 200);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Rogue', 'Assassination70PvEP0BiS', @RACEMASK_ALL, 0, 32478, 3003, 2829, 2731, 0, 0, 0),
('Rogue', 'Assassination70PvEP0BiS', @RACEMASK_ALL, 1, 29381, 0, 0, 0, 0, 0, 0),
('Rogue', 'Assassination70PvEP0BiS', @RACEMASK_ALL, 2, 32581, 2986, 0, 0, 0, 0, 0),
('Rogue', 'Assassination70PvEP0BiS', @RACEMASK_ALL, 4, 28264, 2661, 2735, 2735, 2735, 0, 0),
('Rogue', 'Assassination70PvEP0BiS', @RACEMASK_ALL, 5, 30040, 0, 2731, 2731, 0, 0, 0),
('Rogue', 'Assassination70PvEP0BiS', @RACEMASK_ALL, 6, 27837, 3012, 2726, 2726, 2731, 0, 0),
('Rogue', 'Assassination70PvEP0BiS', @RACEMASK_ALL, 7, 25686, 2939, 2735, 2726, 0, 0, 0),
('Rogue', 'Assassination70PvEP0BiS', @RACEMASK_ALL, 8, 32580, 2647, 0, 0, 0, 0, 0),
('Rogue', 'Assassination70PvEP0BiS', @RACEMASK_ALL, 9, 27531, 2564, 2726, 2735, 0, 0, 0),
('Rogue', 'Assassination70PvEP0BiS', @RACEMASK_ALL, 10, 31920, 0, 0, 0, 0, 0, 0),
('Rogue', 'Assassination70PvEP0BiS', @RACEMASK_ALL, 11, 30834, 0, 0, 0, 0, 0, 0),
('Rogue', 'Assassination70PvEP0BiS', @RACEMASK_ALL, 12, 23206, 0, 0, 0, 0, 0, 0),
('Rogue', 'Assassination70PvEP0BiS', @RACEMASK_ALL, 13, 29383, 0, 0, 0, 0, 0, 0),
('Rogue', 'Assassination70PvEP0BiS', @RACEMASK_ALL, 14, 24259, 368, 2726, 0, 0, 0, 0),
('Rogue', 'Assassination70PvEP0BiS', @RACEMASK_ALL, 15, 32052, 2673, 0, 0, 0, 0, 0),
('Rogue', 'Assassination70PvEP0BiS', @RACEMASK_ALL, 16, 31331, 2673, 0, 0, 0, 0, 0),
('Rogue', 'Assassination70PvEP0BiS', @RACEMASK_ALL, 17, 29151, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Rogue Combat70PvEP0BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Rogue', 'Combat70PvEP0BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_backstab:30|t|r Use Combat PvE P0 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Combat70PvE', 'Combat70PvE', 'TBC Pre-Raid', 200),
('Rogue', 'Combat70PvEP0BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_backstab:30|t|r Use Combat PvE P0 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Combat70PvE', 'Combat70PvE', 'TBC Pre-Raid', 200);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Rogue', 'Combat70PvEP0BiS', @RACEMASK_ALL, 0, 32478, 3003, 2829, 2731, 0, 0, 0),
('Rogue', 'Combat70PvEP0BiS', @RACEMASK_ALL, 1, 29381, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat70PvEP0BiS', @RACEMASK_ALL, 2, 32581, 2986, 0, 0, 0, 0, 0),
('Rogue', 'Combat70PvEP0BiS', @RACEMASK_ALL, 4, 28264, 2661, 2735, 2735, 2735, 0, 0),
('Rogue', 'Combat70PvEP0BiS', @RACEMASK_ALL, 5, 30040, 0, 2731, 2731, 0, 0, 0),
('Rogue', 'Combat70PvEP0BiS', @RACEMASK_ALL, 6, 27837, 3012, 2726, 2726, 2731, 0, 0),
('Rogue', 'Combat70PvEP0BiS', @RACEMASK_ALL, 7, 25686, 2939, 2735, 2726, 0, 0, 0),
('Rogue', 'Combat70PvEP0BiS', @RACEMASK_ALL, 8, 32580, 2647, 0, 0, 0, 0, 0),
('Rogue', 'Combat70PvEP0BiS', @RACEMASK_ALL, 9, 27531, 2564, 2726, 2735, 0, 0, 0),
('Rogue', 'Combat70PvEP0BiS', @RACEMASK_ALL, 10, 31920, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat70PvEP0BiS', @RACEMASK_ALL, 11, 30834, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat70PvEP0BiS', @RACEMASK_ALL, 12, 23206, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat70PvEP0BiS', @RACEMASK_ALL, 13, 29383, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat70PvEP0BiS', @RACEMASK_ALL, 14, 24259, 368, 2726, 0, 0, 0, 0),
('Rogue', 'Combat70PvEP0BiS', @RACEMASK_ALL, 15, 32052, 2673, 0, 0, 0, 0, 0),
('Rogue', 'Combat70PvEP0BiS', @RACEMASK_ALL, 16, 31331, 2673, 0, 0, 0, 0, 0),
('Rogue', 'Combat70PvEP0BiS', @RACEMASK_ALL, 17, 29151, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Shaman Elemental70PvEP0BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Shaman', 'Elemental70PvEP0BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_lightning:30|t|r Use Elemental PvE P0 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Elemental70PvE', 'Elemental70PvE', 'TBC Pre-Raid', 200),
('Shaman', 'Elemental70PvEP0BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_lightning:30|t|r Use Elemental PvE P0 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Elemental70PvE', 'Elemental70PvE', 'TBC Pre-Raid', 200);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Shaman', 'Elemental70PvEP0BiS', @RACEMASK_ALL, 0, 32476, 3002, 2828, 2740, 0, 0, 0),
('Shaman', 'Elemental70PvEP0BiS', @RACEMASK_ALL, 1, 24116, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental70PvEP0BiS', @RACEMASK_ALL, 2, 32078, 2995, 0, 0, 0, 0, 0),
('Shaman', 'Elemental70PvEP0BiS', @RACEMASK_ALL, 4, 29519, 2661, 2740, 2736, 2740, 0, 0),
('Shaman', 'Elemental70PvEP0BiS', @RACEMASK_ALL, 5, 30038, 0, 2740, 2736, 0, 0, 0),
('Shaman', 'Elemental70PvEP0BiS', @RACEMASK_ALL, 6, 24262, 2748, 2740, 2736, 2728, 0, 0),
('Shaman', 'Elemental70PvEP0BiS', @RACEMASK_ALL, 7, 28406, 2656, 2728, 2736, 0, 0, 0),
('Shaman', 'Elemental70PvEP0BiS', @RACEMASK_ALL, 8, 29521, 2650, 2736, 0, 0, 0, 0),
('Shaman', 'Elemental70PvEP0BiS', @RACEMASK_ALL, 9, 27465, 2322, 2728, 2736, 0, 0, 0),
('Shaman', 'Elemental70PvEP0BiS', @RACEMASK_ALL, 10, 29126, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental70PvEP0BiS', @RACEMASK_ALL, 11, 29367, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental70PvEP0BiS', @RACEMASK_ALL, 12, 29370, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental70PvEP0BiS', @RACEMASK_ALL, 13, 38287, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental70PvEP0BiS', @RACEMASK_ALL, 14, 29369, 2621, 0, 0, 0, 0, 0),
('Shaman', 'Elemental70PvEP0BiS', @RACEMASK_ALL, 15, 32963, 2671, 0, 0, 0, 0, 0),
('Shaman', 'Elemental70PvEP0BiS', @RACEMASK_ALL, 16, 29273, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental70PvEP0BiS', @RACEMASK_ALL, 17, 28248, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Shaman Enhancement70PvEP0BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Shaman', 'Enhancement70PvEP0BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_lightningshield:30|t|r Use Enhancement PvE P0 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Enhancement70PvE', 'Enhancement70PvE', 'TBC Pre-Raid', 200),
('Shaman', 'Enhancement70PvEP0BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_lightningshield:30|t|r Use Enhancement PvE P0 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Enhancement70PvE', 'Enhancement70PvE', 'TBC Pre-Raid', 200);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Shaman', 'Enhancement70PvEP0BiS', @RACEMASK_ALL, 0, 28224, 3003, 2731, 2829, 0, 0, 0),
('Shaman', 'Enhancement70PvEP0BiS', @RACEMASK_ALL, 1, 29381, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement70PvEP0BiS', @RACEMASK_ALL, 2, 27797, 2986, 2726, 2731, 0, 0, 0),
('Shaman', 'Enhancement70PvEP0BiS', @RACEMASK_ALL, 4, 29515, 2661, 2731, 2735, 2731, 0, 0),
('Shaman', 'Enhancement70PvEP0BiS', @RACEMASK_ALL, 5, 30040, 0, 2731, 2731, 0, 0, 0),
('Shaman', 'Enhancement70PvEP0BiS', @RACEMASK_ALL, 6, 31544, 3012, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement70PvEP0BiS', @RACEMASK_ALL, 7, 25686, 2939, 2735, 2726, 0, 0, 0),
('Shaman', 'Enhancement70PvEP0BiS', @RACEMASK_ALL, 8, 29527, 2647, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement70PvEP0BiS', @RACEMASK_ALL, 9, 25685, 2564, 2735, 2726, 0, 0, 0),
('Shaman', 'Enhancement70PvEP0BiS', @RACEMASK_ALL, 10, 30834, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement70PvEP0BiS', @RACEMASK_ALL, 11, 31920, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement70PvEP0BiS', @RACEMASK_ALL, 12, 29383, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement70PvEP0BiS', @RACEMASK_ALL, 13, 38287, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement70PvEP0BiS', @RACEMASK_ALL, 14, 24259, 368, 2726, 0, 0, 0, 0),
('Shaman', 'Enhancement70PvEP0BiS', @RACEMASK_ALL, 15, 32028, 2673, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement70PvEP0BiS', @RACEMASK_ALL, 16, 31965, 2673, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement70PvEP0BiS', @RACEMASK_ALL, 17, 27815, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Shaman Restoration70PvEP0BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Shaman', 'Restoration70PvEP0BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_magicimmunity:30|t|r Use Restoration PvE P0 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Restoration70PvE', 'Restoration70PvE', 'TBC Pre-Raid', 200),
('Shaman', 'Restoration70PvEP0BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_magicimmunity:30|t|r Use Restoration PvE P0 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Restoration70PvE', 'Restoration70PvE', 'TBC Pre-Raid', 200);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Shaman', 'Restoration70PvEP0BiS', @RACEMASK_ALL, 0, 32475, 3001, 2835, 2740, 0, 0, 0),
('Shaman', 'Restoration70PvEP0BiS', @RACEMASK_ALL, 1, 33922, 0, 2734, 0, 0, 0, 0),
('Shaman', 'Restoration70PvEP0BiS', @RACEMASK_ALL, 2, 32579, 2993, 0, 0, 0, 0, 0),
('Shaman', 'Restoration70PvEP0BiS', @RACEMASK_ALL, 4, 29522, 2661, 2740, 2734, 2740, 0, 0),
('Shaman', 'Restoration70PvEP0BiS', @RACEMASK_ALL, 5, 29524, 0, 2740, 2734, 0, 0, 0),
('Shaman', 'Restoration70PvEP0BiS', @RACEMASK_ALL, 6, 30543, 2748, 2728, 2734, 2740, 0, 0),
('Shaman', 'Restoration70PvEP0BiS', @RACEMASK_ALL, 7, 33908, 2656, 0, 0, 0, 0, 0),
('Shaman', 'Restoration70PvEP0BiS', @RACEMASK_ALL, 8, 32577, 2650, 0, 0, 0, 0, 0),
('Shaman', 'Restoration70PvEP0BiS', @RACEMASK_ALL, 9, 29506, 2322, 0, 0, 0, 0, 0),
('Shaman', 'Restoration70PvEP0BiS', @RACEMASK_ALL, 10, 29168, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration70PvEP0BiS', @RACEMASK_ALL, 11, 32535, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration70PvEP0BiS', @RACEMASK_ALL, 12, 28190, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration70PvEP0BiS', @RACEMASK_ALL, 13, 29376, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration70PvEP0BiS', @RACEMASK_ALL, 14, 31329, 2621, 0, 0, 0, 0, 0),
('Shaman', 'Restoration70PvEP0BiS', @RACEMASK_ALL, 15, 32451, 2505, 0, 0, 0, 0, 0),
('Shaman', 'Restoration70PvEP0BiS', @RACEMASK_ALL, 16, 29267, 907, 0, 0, 0, 0, 0),
('Shaman', 'Restoration70PvEP0BiS', @RACEMASK_ALL, 17, 27544, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warlock Affliction70PvEP0BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Warlock', 'Affliction70PvEP0BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_shadow_deathcoil:30|t|r Use Affliction PvE P0 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Affliction70PvE', 'Affliction70PvE', 'TBC Pre-Raid', 200),
('Warlock', 'Affliction70PvEP0BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_shadow_deathcoil:30|t|r Use Affliction PvE P0 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Affliction70PvE', 'Affliction70PvE', 'TBC Pre-Raid', 200);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warlock', 'Affliction70PvEP0BiS', @RACEMASK_ALL, 0, 32494, 3002, 2828, 2740, 0, 0, 0),
('Warlock', 'Affliction70PvEP0BiS', @RACEMASK_ALL, 1, 28134, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction70PvEP0BiS', @RACEMASK_ALL, 2, 21869, 2995, 2736, 2740, 0, 0, 0),
('Warlock', 'Affliction70PvEP0BiS', @RACEMASK_ALL, 4, 21871, 2661, 2736, 2740, 0, 0, 0),
('Warlock', 'Affliction70PvEP0BiS', @RACEMASK_ALL, 5, 30038, 0, 2740, 2736, 0, 0, 0),
('Warlock', 'Affliction70PvEP0BiS', @RACEMASK_ALL, 6, 24262, 2748, 2740, 2736, 2728, 0, 0),
('Warlock', 'Affliction70PvEP0BiS', @RACEMASK_ALL, 7, 21870, 2656, 2736, 2740, 0, 0, 0),
('Warlock', 'Affliction70PvEP0BiS', @RACEMASK_ALL, 8, 24250, 2650, 2736, 0, 0, 0, 0),
('Warlock', 'Affliction70PvEP0BiS', @RACEMASK_ALL, 9, 31149, 2322, 0, 0, 0, 0, 0),
('Warlock', 'Affliction70PvEP0BiS', @RACEMASK_ALL, 10, 29172, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction70PvEP0BiS', @RACEMASK_ALL, 11, 28227, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction70PvEP0BiS', @RACEMASK_ALL, 12, 29370, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction70PvEP0BiS', @RACEMASK_ALL, 13, 38290, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction70PvEP0BiS', @RACEMASK_ALL, 14, 27981, 2621, 0, 0, 0, 0, 0),
('Warlock', 'Affliction70PvEP0BiS', @RACEMASK_ALL, 15, 32053, 2672, 0, 0, 0, 0, 0),
('Warlock', 'Affliction70PvEP0BiS', @RACEMASK_ALL, 16, 29273, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction70PvEP0BiS', @RACEMASK_ALL, 17, 29350, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warlock Demonology70PvEP0BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Warlock', 'Demonology70PvEP0BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_shadow_metamorphosis:30|t|r Use Demonology PvE P0 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Demonology70PvE', 'Demonology70PvE', 'TBC Pre-Raid', 200),
('Warlock', 'Demonology70PvEP0BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_shadow_metamorphosis:30|t|r Use Demonology PvE P0 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Demonology70PvE', 'Demonology70PvE', 'TBC Pre-Raid', 200);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warlock', 'Demonology70PvEP0BiS', @RACEMASK_ALL, 0, 32494, 3002, 2828, 2740, 0, 0, 0),
('Warlock', 'Demonology70PvEP0BiS', @RACEMASK_ALL, 1, 28134, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology70PvEP0BiS', @RACEMASK_ALL, 2, 21869, 2995, 2736, 2740, 0, 0, 0),
('Warlock', 'Demonology70PvEP0BiS', @RACEMASK_ALL, 4, 21871, 2661, 2736, 2740, 0, 0, 0),
('Warlock', 'Demonology70PvEP0BiS', @RACEMASK_ALL, 5, 30038, 0, 2740, 2736, 0, 0, 0),
('Warlock', 'Demonology70PvEP0BiS', @RACEMASK_ALL, 6, 24262, 2748, 2740, 2736, 2728, 0, 0),
('Warlock', 'Demonology70PvEP0BiS', @RACEMASK_ALL, 7, 21870, 2656, 2736, 2740, 0, 0, 0),
('Warlock', 'Demonology70PvEP0BiS', @RACEMASK_ALL, 8, 24250, 2650, 2736, 0, 0, 0, 0),
('Warlock', 'Demonology70PvEP0BiS', @RACEMASK_ALL, 9, 21585, 2322, 0, 0, 0, 0, 0),
('Warlock', 'Demonology70PvEP0BiS', @RACEMASK_ALL, 10, 29172, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology70PvEP0BiS', @RACEMASK_ALL, 11, 28227, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology70PvEP0BiS', @RACEMASK_ALL, 12, 29370, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology70PvEP0BiS', @RACEMASK_ALL, 13, 38290, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology70PvEP0BiS', @RACEMASK_ALL, 14, 23050, 2621, 0, 0, 0, 0, 0),
('Warlock', 'Demonology70PvEP0BiS', @RACEMASK_ALL, 15, 32053, 2672, 0, 0, 0, 0, 0),
('Warlock', 'Demonology70PvEP0BiS', @RACEMASK_ALL, 16, 29273, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology70PvEP0BiS', @RACEMASK_ALL, 17, 28386, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warlock Destruction70PvEP0BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Warlock', 'Destruction70PvEP0BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_shadow_rainoffire:30|t|r Use Destruction PvE P0 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Destruction70PvE', 'Destruction70PvE', 'TBC Pre-Raid', 200),
('Warlock', 'Destruction70PvEP0BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_shadow_rainoffire:30|t|r Use Destruction PvE P0 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Destruction70PvE', 'Destruction70PvE', 'TBC Pre-Raid', 200);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warlock', 'Destruction70PvEP0BiS', @RACEMASK_ALL, 0, 32494, 3002, 2828, 2740, 0, 0, 0),
('Warlock', 'Destruction70PvEP0BiS', @RACEMASK_ALL, 1, 28134, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction70PvEP0BiS', @RACEMASK_ALL, 2, 21869, 2995, 2736, 2740, 0, 0, 0),
('Warlock', 'Destruction70PvEP0BiS', @RACEMASK_ALL, 4, 21871, 2661, 2736, 2740, 0, 0, 0),
('Warlock', 'Destruction70PvEP0BiS', @RACEMASK_ALL, 5, 30038, 0, 2740, 2736, 0, 0, 0),
('Warlock', 'Destruction70PvEP0BiS', @RACEMASK_ALL, 6, 24262, 2748, 2740, 2736, 2728, 0, 0),
('Warlock', 'Destruction70PvEP0BiS', @RACEMASK_ALL, 7, 21870, 2656, 2736, 2740, 0, 0, 0),
('Warlock', 'Destruction70PvEP0BiS', @RACEMASK_ALL, 8, 24250, 2650, 2736, 0, 0, 0, 0),
('Warlock', 'Destruction70PvEP0BiS', @RACEMASK_ALL, 9, 31149, 2322, 0, 0, 0, 0, 0),
('Warlock', 'Destruction70PvEP0BiS', @RACEMASK_ALL, 10, 29172, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction70PvEP0BiS', @RACEMASK_ALL, 11, 28227, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction70PvEP0BiS', @RACEMASK_ALL, 12, 29370, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction70PvEP0BiS', @RACEMASK_ALL, 13, 38290, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction70PvEP0BiS', @RACEMASK_ALL, 14, 27981, 2621, 0, 0, 0, 0, 0),
('Warlock', 'Destruction70PvEP0BiS', @RACEMASK_ALL, 15, 32053, 2671, 0, 0, 0, 0, 0),
('Warlock', 'Destruction70PvEP0BiS', @RACEMASK_ALL, 16, 29273, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction70PvEP0BiS', @RACEMASK_ALL, 17, 29350, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warrior Arms70PvEP0BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Warrior', 'Arms70PvEP0BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_rogue_eviscerate:30|t|r Use Arms PvE P0 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Arms70PvE', 'Arms70PvE', 'TBC Pre-Raid', 200),
('Warrior', 'Arms70PvEP0BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_rogue_eviscerate:30|t|r Use Arms PvE P0 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Arms70PvE', 'Arms70PvE', 'TBC Pre-Raid', 200);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warrior', 'Arms70PvEP0BiS', @RACEMASK_ALL, 0, 32087, 3003, 2735, 2834, 0, 0, 0),
('Warrior', 'Arms70PvEP0BiS', @RACEMASK_ALL, 1, 29349, 0, 0, 0, 0, 0, 0),
('Warrior', 'Arms70PvEP0BiS', @RACEMASK_ALL, 2, 33173, 2986, 2735, 2735, 0, 0, 0),
('Warrior', 'Arms70PvEP0BiS', @RACEMASK_ALL, 4, 31320, 2661, 0, 0, 0, 0, 0),
('Warrior', 'Arms70PvEP0BiS', @RACEMASK_ALL, 5, 27985, 0, 2725, 2731, 0, 0, 0),
('Warrior', 'Arms70PvEP0BiS', @RACEMASK_ALL, 6, 30538, 3012, 2725, 2725, 2731, 0, 0),
('Warrior', 'Arms70PvEP0BiS', @RACEMASK_ALL, 7, 25686, 2939, 2735, 2725, 0, 0, 0),
('Warrior', 'Arms70PvEP0BiS', @RACEMASK_ALL, 8, 23537, 2647, 0, 0, 0, 0, 0),
('Warrior', 'Arms70PvEP0BiS', @RACEMASK_ALL, 9, 25685, 684, 2735, 2725, 0, 0, 0),
('Warrior', 'Arms70PvEP0BiS', @RACEMASK_ALL, 10, 29379, 0, 0, 0, 0, 0, 0),
('Warrior', 'Arms70PvEP0BiS', @RACEMASK_ALL, 11, 31920, 0, 0, 0, 0, 0, 0),
('Warrior', 'Arms70PvEP0BiS', @RACEMASK_ALL, 12, 21670, 0, 0, 0, 0, 0, 0),
('Warrior', 'Arms70PvEP0BiS', @RACEMASK_ALL, 13, 29383, 0, 0, 0, 0, 0, 0),
('Warrior', 'Arms70PvEP0BiS', @RACEMASK_ALL, 14, 24259, 368, 2725, 0, 0, 0, 0),
('Warrior', 'Arms70PvEP0BiS', @RACEMASK_ALL, 15, 28429, 2667, 0, 0, 0, 0, 0),
('Warrior', 'Arms70PvEP0BiS', @RACEMASK_ALL, 17, 30279, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warrior Fury70PvEP0BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Warrior', 'Fury70PvEP0BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_warrior_innerrage:30|t|r Use Fury PvE P0 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Fury70PvE', 'Fury70PvE', 'TBC Pre-Raid', 200),
('Warrior', 'Fury70PvEP0BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_warrior_innerrage:30|t|r Use Fury PvE P0 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Fury70PvE', 'Fury70PvE', 'TBC Pre-Raid', 200);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warrior', 'Fury70PvEP0BiS', @RACEMASK_ALL, 0, 32087, 3003, 2735, 2834, 0, 0, 0),
('Warrior', 'Fury70PvEP0BiS', @RACEMASK_ALL, 1, 29349, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury70PvEP0BiS', @RACEMASK_ALL, 2, 33173, 2986, 2735, 2735, 0, 0, 0),
('Warrior', 'Fury70PvEP0BiS', @RACEMASK_ALL, 4, 31320, 2661, 0, 0, 0, 0, 0),
('Warrior', 'Fury70PvEP0BiS', @RACEMASK_ALL, 5, 27985, 0, 2725, 2731, 0, 0, 0),
('Warrior', 'Fury70PvEP0BiS', @RACEMASK_ALL, 6, 30538, 3012, 2725, 2725, 2731, 0, 0),
('Warrior', 'Fury70PvEP0BiS', @RACEMASK_ALL, 7, 25686, 2939, 2735, 2725, 0, 0, 0),
('Warrior', 'Fury70PvEP0BiS', @RACEMASK_ALL, 8, 23537, 2647, 0, 0, 0, 0, 0),
('Warrior', 'Fury70PvEP0BiS', @RACEMASK_ALL, 9, 25685, 684, 2735, 2725, 0, 0, 0),
('Warrior', 'Fury70PvEP0BiS', @RACEMASK_ALL, 10, 29379, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury70PvEP0BiS', @RACEMASK_ALL, 11, 31920, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury70PvEP0BiS', @RACEMASK_ALL, 12, 21670, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury70PvEP0BiS', @RACEMASK_ALL, 13, 29383, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury70PvEP0BiS', @RACEMASK_ALL, 14, 24259, 368, 2725, 0, 0, 0, 0),
('Warrior', 'Fury70PvEP0BiS', @RACEMASK_ALL, 15, 28438, 2673, 0, 0, 0, 0, 0),
('Warrior', 'Fury70PvEP0BiS', @RACEMASK_ALL, 16, 31332, 2673, 0, 0, 0, 0, 0),
('Warrior', 'Fury70PvEP0BiS', @RACEMASK_ALL, 17, 30279, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warrior Protection70PvEP0BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Warrior', 'Protection70PvEP0BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_warrior_defensivestance:30|t|r Use Protection PvE P0 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Protection70PvE', 'Protection70PvE', 'TBC Pre-Raid', 200),
('Warrior', 'Protection70PvEP0BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_warrior_defensivestance:30|t|r Use Protection PvE P0 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Protection70PvE', 'Protection70PvE', 'TBC Pre-Raid', 200);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warrior', 'Protection70PvEP0BiS', @RACEMASK_ALL, 0, 32083, 2999, 2731, 2833, 0, 0, 0),
('Warrior', 'Protection70PvEP0BiS', @RACEMASK_ALL, 1, 29386, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection70PvEP0BiS', @RACEMASK_ALL, 2, 32073, 2991, 0, 0, 0, 0, 0),
('Warrior', 'Protection70PvEP0BiS', @RACEMASK_ALL, 4, 28205, 2661, 2725, 2725, 2731, 0, 0),
('Warrior', 'Protection70PvEP0BiS', @RACEMASK_ALL, 5, 28995, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection70PvEP0BiS', @RACEMASK_ALL, 6, 29184, 3011, 2725, 2737, 2731, 0, 0),
('Warrior', 'Protection70PvEP0BiS', @RACEMASK_ALL, 7, 28997, 2940, 0, 0, 0, 0, 0),
('Warrior', 'Protection70PvEP0BiS', @RACEMASK_ALL, 8, 28996, 2648, 2737, 0, 0, 0, 0),
('Warrior', 'Protection70PvEP0BiS', @RACEMASK_ALL, 9, 27475, 2564, 2725, 2737, 0, 0, 0),
('Warrior', 'Protection70PvEP0BiS', @RACEMASK_ALL, 10, 30834, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection70PvEP0BiS', @RACEMASK_ALL, 11, 29384, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection70PvEP0BiS', @RACEMASK_ALL, 12, 23836, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection70PvEP0BiS', @RACEMASK_ALL, 13, 23835, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection70PvEP0BiS', @RACEMASK_ALL, 14, 27804, 368, 0, 0, 0, 0, 0),
('Warrior', 'Protection70PvEP0BiS', @RACEMASK_ALL, 15, 28438, 2673, 0, 0, 0, 0, 0),
('Warrior', 'Protection70PvEP0BiS', @RACEMASK_ALL, 16, 29266, 929, 0, 0, 0, 0, 0),
('Warrior', 'Protection70PvEP0BiS', @RACEMASK_ALL, 17, 34622, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Death Knight Blood70PvEP0BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Death Knight', 'Blood70PvEP0BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_deathknight_bloodpresence:30|t|r Use Blood PvE P0 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Blood70PvE', 'Blood70PvE', 'TBC Pre-Raid', 200),
('Death Knight', 'Blood70PvEP0BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_deathknight_bloodpresence:30|t|r Use Blood PvE P0 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Blood70PvE', 'Blood70PvE', 'TBC Pre-Raid', 200);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Death Knight', 'Blood70PvEP0BiS', @RACEMASK_ALL, 0, 32083, 2999, 2731, 2833, 0, 0, 0),
('Death Knight', 'Blood70PvEP0BiS', @RACEMASK_ALL, 1, 29386, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Blood70PvEP0BiS', @RACEMASK_ALL, 2, 32073, 2991, 0, 0, 0, 0, 0),
('Death Knight', 'Blood70PvEP0BiS', @RACEMASK_ALL, 4, 28205, 2661, 2725, 2725, 2731, 0, 0),
('Death Knight', 'Blood70PvEP0BiS', @RACEMASK_ALL, 5, 28995, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Blood70PvEP0BiS', @RACEMASK_ALL, 6, 29184, 3011, 2725, 2737, 2731, 0, 0),
('Death Knight', 'Blood70PvEP0BiS', @RACEMASK_ALL, 7, 28997, 2940, 0, 0, 0, 0, 0),
('Death Knight', 'Blood70PvEP0BiS', @RACEMASK_ALL, 8, 28996, 2648, 2737, 0, 0, 0, 0),
('Death Knight', 'Blood70PvEP0BiS', @RACEMASK_ALL, 9, 27475, 2564, 2725, 2737, 0, 0, 0),
('Death Knight', 'Blood70PvEP0BiS', @RACEMASK_ALL, 10, 30834, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Blood70PvEP0BiS', @RACEMASK_ALL, 11, 29384, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Blood70PvEP0BiS', @RACEMASK_ALL, 12, 23836, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Blood70PvEP0BiS', @RACEMASK_ALL, 13, 23835, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Blood70PvEP0BiS', @RACEMASK_ALL, 14, 27804, 368, 0, 0, 0, 0, 0),
('Death Knight', 'Blood70PvEP0BiS', @RACEMASK_ALL, 15, 28429, 2673, 0, 0, 0, 0, 0),
('Death Knight', 'Blood70PvEP0BiS', @RACEMASK_ALL, 17, 39208, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Death Knight Frost70PvEP0BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Death Knight', 'Frost70PvEP0BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_deathknight_frostpresence:30|t|r Use Frost PvE P0 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Frost70PvE', 'Frost70PvE', 'TBC Pre-Raid', 200),
('Death Knight', 'Frost70PvEP0BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_deathknight_frostpresence:30|t|r Use Frost PvE P0 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Frost70PvE', 'Frost70PvE', 'TBC Pre-Raid', 200);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Death Knight', 'Frost70PvEP0BiS', @RACEMASK_ALL, 0, 32087, 3003, 2735, 2834, 0, 0, 0),
('Death Knight', 'Frost70PvEP0BiS', @RACEMASK_ALL, 1, 29349, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Frost70PvEP0BiS', @RACEMASK_ALL, 2, 33173, 2986, 2735, 2735, 0, 0, 0),
('Death Knight', 'Frost70PvEP0BiS', @RACEMASK_ALL, 4, 31320, 2661, 0, 0, 0, 0, 0),
('Death Knight', 'Frost70PvEP0BiS', @RACEMASK_ALL, 5, 27985, 0, 2725, 2731, 0, 0, 0),
('Death Knight', 'Frost70PvEP0BiS', @RACEMASK_ALL, 6, 30538, 3012, 2725, 2725, 2731, 0, 0),
('Death Knight', 'Frost70PvEP0BiS', @RACEMASK_ALL, 7, 25686, 2939, 2735, 2725, 0, 0, 0),
('Death Knight', 'Frost70PvEP0BiS', @RACEMASK_ALL, 8, 23537, 2647, 0, 0, 0, 0, 0),
('Death Knight', 'Frost70PvEP0BiS', @RACEMASK_ALL, 9, 25685, 684, 2735, 2725, 0, 0, 0),
('Death Knight', 'Frost70PvEP0BiS', @RACEMASK_ALL, 10, 29379, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Frost70PvEP0BiS', @RACEMASK_ALL, 11, 31920, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Frost70PvEP0BiS', @RACEMASK_ALL, 12, 21670, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Frost70PvEP0BiS', @RACEMASK_ALL, 13, 29383, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Frost70PvEP0BiS', @RACEMASK_ALL, 14, 24259, 368, 2725, 0, 0, 0, 0),
('Death Knight', 'Frost70PvEP0BiS', @RACEMASK_ALL, 15, 28438, 2673, 0, 0, 0, 0, 0),
('Death Knight', 'Frost70PvEP0BiS', @RACEMASK_ALL, 16, 31332, 2673, 0, 0, 0, 0, 0),
('Death Knight', 'Frost70PvEP0BiS', @RACEMASK_ALL, 17, 39208, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Death Knight Unholy70PvEP0BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Death Knight', 'Unholy70PvEP0BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_deathknight_unholypresence:30|t|r Use Unholy PvE P0 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Unholy70PvE', 'Unholy70PvE', 'TBC Pre-Raid', 200),
('Death Knight', 'Unholy70PvEP0BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_deathknight_unholypresence:30|t|r Use Unholy PvE P0 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Unholy70PvE', 'Unholy70PvE', 'TBC Pre-Raid', 200);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Death Knight', 'Unholy70PvEP0BiS', @RACEMASK_ALL, 0, 32087, 3003, 2735, 2834, 0, 0, 0),
('Death Knight', 'Unholy70PvEP0BiS', @RACEMASK_ALL, 1, 29349, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy70PvEP0BiS', @RACEMASK_ALL, 2, 33173, 2986, 2735, 2735, 0, 0, 0),
('Death Knight', 'Unholy70PvEP0BiS', @RACEMASK_ALL, 4, 31320, 2661, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy70PvEP0BiS', @RACEMASK_ALL, 5, 27985, 0, 2725, 2731, 0, 0, 0),
('Death Knight', 'Unholy70PvEP0BiS', @RACEMASK_ALL, 6, 30538, 3012, 2725, 2725, 2731, 0, 0),
('Death Knight', 'Unholy70PvEP0BiS', @RACEMASK_ALL, 7, 25686, 2939, 2735, 2725, 0, 0, 0),
('Death Knight', 'Unholy70PvEP0BiS', @RACEMASK_ALL, 8, 23537, 2647, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy70PvEP0BiS', @RACEMASK_ALL, 9, 25685, 684, 2735, 2725, 0, 0, 0),
('Death Knight', 'Unholy70PvEP0BiS', @RACEMASK_ALL, 10, 29379, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy70PvEP0BiS', @RACEMASK_ALL, 11, 31920, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy70PvEP0BiS', @RACEMASK_ALL, 12, 21670, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy70PvEP0BiS', @RACEMASK_ALL, 13, 29383, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy70PvEP0BiS', @RACEMASK_ALL, 14, 24259, 368, 2725, 0, 0, 0, 0),
('Death Knight', 'Unholy70PvEP0BiS', @RACEMASK_ALL, 15, 28429, 2667, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy70PvEP0BiS', @RACEMASK_ALL, 17, 39208, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

