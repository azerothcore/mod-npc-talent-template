-- Batch-generated TBC BiS gear templates
-- Phase: 5  Mode: pve
-- 27 specs

-- Idempotency: remove this file's templates first so re-application cannot duplicate rows
-- (the index table has no unique key; without this a re-applied file would append copies).
DELETE FROM `mod_npc_talent_template_index` WHERE `playerSpec` IN ('Balance70PvEP5BiS', 'Cat70PvEP5BiS', 'Bear70PvEP5BiS', 'Restoration70PvEP5BiS', 'Beastmastery70PvEP5BiS', 'Marksmanship70PvEP5BiS', 'Survival70PvEP5BiS', 'Arcane70PvEP5BiS', 'Fire70PvEP5BiS', 'Frost70PvEP5BiS', 'Holy70PvEP5BiS', 'Protection70PvEP5BiS', 'Retribution70PvEP5BiS', 'Discipline70PvEP5BiS', 'Shadow70PvEP5BiS', 'Assassination70PvEP5BiS', 'Combat70PvEP5BiS', 'Elemental70PvEP5BiS', 'Enhancement70PvEP5BiS', 'Affliction70PvEP5BiS', 'Demonology70PvEP5BiS', 'Destruction70PvEP5BiS', 'Arms70PvEP5BiS', 'Fury70PvEP5BiS');
DELETE FROM `mod_npc_talent_template_gear` WHERE `playerSpec` IN ('Balance70PvEP5BiS', 'Cat70PvEP5BiS', 'Bear70PvEP5BiS', 'Restoration70PvEP5BiS', 'Beastmastery70PvEP5BiS', 'Marksmanship70PvEP5BiS', 'Survival70PvEP5BiS', 'Arcane70PvEP5BiS', 'Fire70PvEP5BiS', 'Frost70PvEP5BiS', 'Holy70PvEP5BiS', 'Protection70PvEP5BiS', 'Retribution70PvEP5BiS', 'Discipline70PvEP5BiS', 'Shadow70PvEP5BiS', 'Assassination70PvEP5BiS', 'Combat70PvEP5BiS', 'Elemental70PvEP5BiS', 'Enhancement70PvEP5BiS', 'Affliction70PvEP5BiS', 'Demonology70PvEP5BiS', 'Destruction70PvEP5BiS', 'Arms70PvEP5BiS', 'Fury70PvEP5BiS');

SET @MINLEVEL = 70;
SET @MAXLEVEL = 79;
SET @RACEMASK_ALL = 1791;
-- ===== Druid Balance70PvEP5BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`) VALUES
('Druid', 'Balance70PvEP5BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_starfall:30|t|r Use Balance PvE P5 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Balance70PvE', 'Balance70PvE', 'TBC Phase 5'),
('Druid', 'Balance70PvEP5BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_starfall:30|t|r Use Balance PvE P5 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Balance70PvE', 'Balance70PvE', 'TBC Phase 5');
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Druid', 'Balance70PvEP5BiS', @RACEMASK_ALL, 0, 34340, 3002, 2828, 2740, 0, 0, 0),
('Druid', 'Balance70PvEP5BiS', @RACEMASK_ALL, 1, 34359, 0, 2736, 0, 0, 0, 0),
('Druid', 'Balance70PvEP5BiS', @RACEMASK_ALL, 2, 34210, 2995, 2728, 2736, 0, 0, 0),
('Druid', 'Balance70PvEP5BiS', @RACEMASK_ALL, 4, 34364, 2661, 2728, 2728, 2728, 0, 0),
('Druid', 'Balance70PvEP5BiS', @RACEMASK_ALL, 5, 34555, 0, 2728, 0, 0, 0, 0),
('Druid', 'Balance70PvEP5BiS', @RACEMASK_ALL, 6, 34181, 2748, 2728, 2728, 2736, 0, 0),
('Druid', 'Balance70PvEP5BiS', @RACEMASK_ALL, 7, 34572, 2656, 2728, 0, 0, 0, 0),
('Druid', 'Balance70PvEP5BiS', @RACEMASK_ALL, 8, 34446, 2650, 2736, 0, 0, 0, 0),
('Druid', 'Balance70PvEP5BiS', @RACEMASK_ALL, 9, 34344, 2322, 2736, 2728, 0, 0, 0),
('Druid', 'Balance70PvEP5BiS', @RACEMASK_ALL, 10, 34362, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance70PvEP5BiS', @RACEMASK_ALL, 11, 34230, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance70PvEP5BiS', @RACEMASK_ALL, 12, 34429, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance70PvEP5BiS', @RACEMASK_ALL, 13, 32483, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance70PvEP5BiS', @RACEMASK_ALL, 14, 34242, 2621, 2728, 0, 0, 0, 0),
('Druid', 'Balance70PvEP5BiS', @RACEMASK_ALL, 15, 34336, 2671, 0, 0, 0, 0, 0),
('Druid', 'Balance70PvEP5BiS', @RACEMASK_ALL, 16, 34179, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance70PvEP5BiS', @RACEMASK_ALL, 17, 32387, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Druid Cat70PvEP5BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`) VALUES
('Druid', 'Cat70PvEP5BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_druid_catform:30|t|r Use Cat PvE P5 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Cat70PvE', 'Cat70PvE', 'TBC Phase 5'),
('Druid', 'Cat70PvEP5BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_druid_catform:30|t|r Use Cat PvE P5 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Cat70PvE', 'Cat70PvE', 'TBC Phase 5');
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Druid', 'Cat70PvEP5BiS', @RACEMASK_ALL, 0, 34244, 3003, 2829, 2726, 0, 0, 0),
('Druid', 'Cat70PvEP5BiS', @RACEMASK_ALL, 1, 34358, 0, 2735, 0, 0, 0, 0),
('Druid', 'Cat70PvEP5BiS', @RACEMASK_ALL, 2, 34392, 2986, 2726, 2731, 0, 0, 0),
('Druid', 'Cat70PvEP5BiS', @RACEMASK_ALL, 4, 34397, 2661, 2731, 2735, 2726, 0, 0),
('Druid', 'Cat70PvEP5BiS', @RACEMASK_ALL, 5, 34556, 0, 2726, 0, 0, 0, 0),
('Druid', 'Cat70PvEP5BiS', @RACEMASK_ALL, 6, 34188, 3012, 2726, 2726, 2726, 0, 0),
('Druid', 'Cat70PvEP5BiS', @RACEMASK_ALL, 7, 33222, 2939, 2731, 2726, 0, 0, 0),
('Druid', 'Cat70PvEP5BiS', @RACEMASK_ALL, 8, 34444, 2647, 2726, 0, 0, 0, 0),
('Druid', 'Cat70PvEP5BiS', @RACEMASK_ALL, 9, 34370, 2564, 2726, 2726, 0, 0, 0),
('Druid', 'Cat70PvEP5BiS', @RACEMASK_ALL, 10, 32497, 0, 0, 0, 0, 0, 0),
('Druid', 'Cat70PvEP5BiS', @RACEMASK_ALL, 11, 34189, 0, 0, 0, 0, 0, 0),
('Druid', 'Cat70PvEP5BiS', @RACEMASK_ALL, 12, 34472, 0, 0, 0, 0, 0, 0),
('Druid', 'Cat70PvEP5BiS', @RACEMASK_ALL, 13, 34427, 0, 0, 0, 0, 0, 0),
('Druid', 'Cat70PvEP5BiS', @RACEMASK_ALL, 14, 34241, 368, 2735, 0, 0, 0, 0),
('Druid', 'Cat70PvEP5BiS', @RACEMASK_ALL, 15, 34198, 2673, 0, 0, 0, 0, 0),
('Druid', 'Cat70PvEP5BiS', @RACEMASK_ALL, 17, 29390, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Druid Bear70PvEP5BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`) VALUES
('Druid', 'Bear70PvEP5BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_racial_bearform:30|t|r Use Bear PvE P5 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Bear70PvE', 'Bear70PvE', 'TBC Phase 5'),
('Druid', 'Bear70PvEP5BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_racial_bearform:30|t|r Use Bear PvE P5 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Bear70PvE', 'Bear70PvE', 'TBC Phase 5');
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Druid', 'Bear70PvEP5BiS', @RACEMASK_ALL, 0, 34404, 2999, 2725, 2833, 0, 0, 0),
('Druid', 'Bear70PvEP5BiS', @RACEMASK_ALL, 1, 34178, 0, 0, 0, 0, 0, 0),
('Druid', 'Bear70PvEP5BiS', @RACEMASK_ALL, 2, 34392, 2991, 2725, 2731, 0, 0, 0),
('Druid', 'Bear70PvEP5BiS', @RACEMASK_ALL, 4, 34211, 2661, 2725, 2737, 2731, 0, 0),
('Druid', 'Bear70PvEP5BiS', @RACEMASK_ALL, 5, 35156, 0, 0, 0, 0, 0, 0),
('Druid', 'Bear70PvEP5BiS', @RACEMASK_ALL, 6, 34385, 3011, 2725, 2725, 2731, 0, 0),
('Druid', 'Bear70PvEP5BiS', @RACEMASK_ALL, 7, 34573, 2940, 2725, 0, 0, 0, 0),
('Druid', 'Bear70PvEP5BiS', @RACEMASK_ALL, 8, 34444, 2648, 2725, 0, 0, 0, 0),
('Druid', 'Bear70PvEP5BiS', @RACEMASK_ALL, 9, 34408, 2564, 2725, 2731, 0, 0, 0),
('Druid', 'Bear70PvEP5BiS', @RACEMASK_ALL, 10, 34213, 0, 0, 0, 0, 0, 0),
('Druid', 'Bear70PvEP5BiS', @RACEMASK_ALL, 11, 34888, 0, 0, 0, 0, 0, 0),
('Druid', 'Bear70PvEP5BiS', @RACEMASK_ALL, 12, 32501, 0, 0, 0, 0, 0, 0),
('Druid', 'Bear70PvEP5BiS', @RACEMASK_ALL, 13, 32658, 0, 0, 0, 0, 0, 0),
('Druid', 'Bear70PvEP5BiS', @RACEMASK_ALL, 14, 34190, 368, 0, 0, 0, 0, 0),
('Druid', 'Bear70PvEP5BiS', @RACEMASK_ALL, 15, 30883, 2673, 0, 0, 0, 0, 0),
('Druid', 'Bear70PvEP5BiS', @RACEMASK_ALL, 17, 33509, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Druid Restoration70PvEP5BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`) VALUES
('Druid', 'Restoration70PvEP5BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_healingtouch:30|t|r Use Restoration PvE P5 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Restoration70PvE', 'Restoration70PvE', 'TBC Phase 5'),
('Druid', 'Restoration70PvEP5BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_healingtouch:30|t|r Use Restoration PvE P5 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Restoration70PvE', 'Restoration70PvE', 'TBC Phase 5');
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Druid', 'Restoration70PvEP5BiS', @RACEMASK_ALL, 0, 34339, 3001, 2835, 2728, 0, 0, 0),
('Druid', 'Restoration70PvEP5BiS', @RACEMASK_ALL, 1, 33281, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration70PvEP5BiS', @RACEMASK_ALL, 2, 34209, 2993, 2740, 2728, 0, 0, 0),
('Druid', 'Restoration70PvEP5BiS', @RACEMASK_ALL, 4, 34212, 2661, 2728, 2740, 2740, 0, 0),
('Druid', 'Restoration70PvEP5BiS', @RACEMASK_ALL, 5, 34554, 0, 2728, 0, 0, 0, 0),
('Druid', 'Restoration70PvEP5BiS', @RACEMASK_ALL, 6, 34384, 2748, 2728, 2728, 2740, 0, 0),
('Druid', 'Restoration70PvEP5BiS', @RACEMASK_ALL, 7, 34571, 2656, 2728, 0, 0, 0, 0),
('Druid', 'Restoration70PvEP5BiS', @RACEMASK_ALL, 8, 34445, 2650, 2740, 0, 0, 0, 0),
('Druid', 'Restoration70PvEP5BiS', @RACEMASK_ALL, 9, 34342, 2322, 2728, 2740, 0, 0, 0),
('Druid', 'Restoration70PvEP5BiS', @RACEMASK_ALL, 10, 32528, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration70PvEP5BiS', @RACEMASK_ALL, 11, 34166, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration70PvEP5BiS', @RACEMASK_ALL, 12, 29376, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration70PvEP5BiS', @RACEMASK_ALL, 13, 38288, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration70PvEP5BiS', @RACEMASK_ALL, 14, 32337, 2621, 0, 0, 0, 0, 0),
('Druid', 'Restoration70PvEP5BiS', @RACEMASK_ALL, 15, 34335, 2505, 2740, 0, 0, 0, 0),
('Druid', 'Restoration70PvEP5BiS', @RACEMASK_ALL, 16, 34206, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration70PvEP5BiS', @RACEMASK_ALL, 17, 27886, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Hunter Beastmastery70PvEP5BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`) VALUES
('Hunter', 'Beastmastery70PvEP5BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_hunter_beasttaming:30|t|r Use Beastmastery PvE P5 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Beastmastery70PvE', 'Beastmastery70PvE', 'TBC Phase 5'),
('Hunter', 'Beastmastery70PvEP5BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_hunter_beasttaming:30|t|r Use Beastmastery PvE P5 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Beastmastery70PvE', 'Beastmastery70PvE', 'TBC Phase 5');
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Hunter', 'Beastmastery70PvEP5BiS', @RACEMASK_ALL, 0, 34333, 3003, 2726, 2829, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP5BiS', @RACEMASK_ALL, 1, 34358, 0, 2764, 0, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP5BiS', @RACEMASK_ALL, 2, 31006, 2986, 2764, 2731, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP5BiS', @RACEMASK_ALL, 4, 34397, 2661, 2731, 2764, 2726, 0, 0),
('Hunter', 'Beastmastery70PvEP5BiS', @RACEMASK_ALL, 5, 34549, 0, 2726, 0, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP5BiS', @RACEMASK_ALL, 6, 34188, 3012, 2726, 2726, 2726, 0, 0),
('Hunter', 'Beastmastery70PvEP5BiS', @RACEMASK_ALL, 7, 34570, 2939, 2764, 0, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP5BiS', @RACEMASK_ALL, 8, 34443, 2647, 2726, 0, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP5BiS', @RACEMASK_ALL, 9, 34370, 2564, 2726, 2726, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP5BiS', @RACEMASK_ALL, 10, 34189, 0, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP5BiS', @RACEMASK_ALL, 11, 34361, 0, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP5BiS', @RACEMASK_ALL, 12, 34427, 0, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP5BiS', @RACEMASK_ALL, 13, 28830, 0, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP5BiS', @RACEMASK_ALL, 14, 34241, 368, 2764, 0, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP5BiS', @RACEMASK_ALL, 15, 34331, 2670, 2764, 2764, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP5BiS', @RACEMASK_ALL, 16, 34329, 0, 2726, 0, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP5BiS', @RACEMASK_ALL, 17, 34334, 2724, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Hunter Marksmanship70PvEP5BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`) VALUES
('Hunter', 'Marksmanship70PvEP5BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_marksmanship:30|t|r Use Marksmanship PvE P5 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Marksmanship70PvE', 'Marksmanship70PvE', 'TBC Phase 5'),
('Hunter', 'Marksmanship70PvEP5BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_marksmanship:30|t|r Use Marksmanship PvE P5 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Marksmanship70PvE', 'Marksmanship70PvE', 'TBC Phase 5');
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Hunter', 'Marksmanship70PvEP5BiS', @RACEMASK_ALL, 0, 34333, 3003, 2726, 2829, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP5BiS', @RACEMASK_ALL, 1, 34358, 0, 2764, 0, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP5BiS', @RACEMASK_ALL, 2, 31006, 2986, 2764, 2731, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP5BiS', @RACEMASK_ALL, 4, 34397, 2661, 2731, 2764, 2726, 0, 0),
('Hunter', 'Marksmanship70PvEP5BiS', @RACEMASK_ALL, 5, 34549, 0, 2726, 0, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP5BiS', @RACEMASK_ALL, 6, 34188, 3012, 2726, 2726, 2726, 0, 0),
('Hunter', 'Marksmanship70PvEP5BiS', @RACEMASK_ALL, 7, 34570, 2939, 2764, 0, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP5BiS', @RACEMASK_ALL, 8, 34443, 2647, 2726, 0, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP5BiS', @RACEMASK_ALL, 9, 34370, 2564, 2726, 2726, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP5BiS', @RACEMASK_ALL, 10, 34189, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP5BiS', @RACEMASK_ALL, 11, 34361, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP5BiS', @RACEMASK_ALL, 12, 34427, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP5BiS', @RACEMASK_ALL, 13, 28830, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP5BiS', @RACEMASK_ALL, 14, 34241, 368, 2764, 0, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP5BiS', @RACEMASK_ALL, 15, 34331, 2670, 2764, 2764, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP5BiS', @RACEMASK_ALL, 16, 34329, 0, 2726, 0, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP5BiS', @RACEMASK_ALL, 17, 34334, 2724, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Hunter Survival70PvEP5BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`) VALUES
('Hunter', 'Survival70PvEP5BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_Hunter_swiftstrike:30|t|r Use Survival PvE P5 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Survival70PvE', 'Survival70PvE', 'TBC Phase 5'),
('Hunter', 'Survival70PvEP5BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_Hunter_swiftstrike:30|t|r Use Survival PvE P5 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Survival70PvE', 'Survival70PvE', 'TBC Phase 5');
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Hunter', 'Survival70PvEP5BiS', @RACEMASK_ALL, 0, 34333, 3003, 2726, 2829, 0, 0, 0),
('Hunter', 'Survival70PvEP5BiS', @RACEMASK_ALL, 1, 34177, 0, 0, 0, 0, 0, 0),
('Hunter', 'Survival70PvEP5BiS', @RACEMASK_ALL, 2, 31006, 2986, 2764, 2731, 0, 0, 0),
('Hunter', 'Survival70PvEP5BiS', @RACEMASK_ALL, 4, 34397, 2661, 2731, 2764, 2726, 0, 0),
('Hunter', 'Survival70PvEP5BiS', @RACEMASK_ALL, 5, 34549, 0, 2726, 0, 0, 0, 0),
('Hunter', 'Survival70PvEP5BiS', @RACEMASK_ALL, 6, 34188, 3012, 2726, 2726, 2726, 0, 0),
('Hunter', 'Survival70PvEP5BiS', @RACEMASK_ALL, 7, 34570, 2939, 2764, 0, 0, 0, 0),
('Hunter', 'Survival70PvEP5BiS', @RACEMASK_ALL, 8, 34443, 2647, 2726, 0, 0, 0, 0),
('Hunter', 'Survival70PvEP5BiS', @RACEMASK_ALL, 9, 34343, 2564, 2726, 2764, 0, 0, 0),
('Hunter', 'Survival70PvEP5BiS', @RACEMASK_ALL, 10, 34361, 0, 0, 0, 0, 0, 0),
('Hunter', 'Survival70PvEP5BiS', @RACEMASK_ALL, 11, 34887, 0, 0, 0, 0, 0, 0),
('Hunter', 'Survival70PvEP5BiS', @RACEMASK_ALL, 12, 34427, 0, 0, 0, 0, 0, 0),
('Hunter', 'Survival70PvEP5BiS', @RACEMASK_ALL, 13, 28830, 0, 0, 0, 0, 0, 0),
('Hunter', 'Survival70PvEP5BiS', @RACEMASK_ALL, 14, 34241, 368, 2764, 0, 0, 0, 0),
('Hunter', 'Survival70PvEP5BiS', @RACEMASK_ALL, 15, 34331, 2670, 2764, 2764, 0, 0, 0),
('Hunter', 'Survival70PvEP5BiS', @RACEMASK_ALL, 16, 34329, 0, 2726, 0, 0, 0, 0),
('Hunter', 'Survival70PvEP5BiS', @RACEMASK_ALL, 17, 34334, 2724, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Mage Arcane70PvEP5BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`) VALUES
('Mage', 'Arcane70PvEP5BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_magicalsentry:30|t|r Use Arcane PvE P5 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Arcane70PvE', 'Arcane70PvE', 'TBC Phase 5'),
('Mage', 'Arcane70PvEP5BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_magicalsentry:30|t|r Use Arcane PvE P5 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Arcane70PvE', 'Arcane70PvE', 'TBC Phase 5');
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Mage', 'Arcane70PvEP5BiS', @RACEMASK_ALL, 0, 30206, 3002, 2828, 2736, 0, 0, 0),
('Mage', 'Arcane70PvEP5BiS', @RACEMASK_ALL, 1, 34204, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane70PvEP5BiS', @RACEMASK_ALL, 2, 30210, 2995, 2736, 2740, 0, 0, 0),
('Mage', 'Arcane70PvEP5BiS', @RACEMASK_ALL, 4, 34399, 2661, 2728, 2728, 2736, 0, 0),
('Mage', 'Arcane70PvEP5BiS', @RACEMASK_ALL, 5, 34557, 0, 2736, 0, 0, 0, 0),
('Mage', 'Arcane70PvEP5BiS', @RACEMASK_ALL, 6, 34181, 2748, 2728, 2728, 2736, 0, 0),
('Mage', 'Arcane70PvEP5BiS', @RACEMASK_ALL, 7, 34574, 2656, 2736, 0, 0, 0, 0),
('Mage', 'Arcane70PvEP5BiS', @RACEMASK_ALL, 8, 34447, 2650, 2728, 0, 0, 0, 0),
('Mage', 'Arcane70PvEP5BiS', @RACEMASK_ALL, 9, 34406, 2322, 2728, 2736, 0, 0, 0),
('Mage', 'Arcane70PvEP5BiS', @RACEMASK_ALL, 10, 29305, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane70PvEP5BiS', @RACEMASK_ALL, 11, 34362, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane70PvEP5BiS', @RACEMASK_ALL, 12, 34429, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane70PvEP5BiS', @RACEMASK_ALL, 13, 32483, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane70PvEP5BiS', @RACEMASK_ALL, 14, 34242, 2621, 2728, 0, 0, 0, 0),
('Mage', 'Arcane70PvEP5BiS', @RACEMASK_ALL, 15, 34336, 2671, 0, 0, 0, 0, 0),
('Mage', 'Arcane70PvEP5BiS', @RACEMASK_ALL, 16, 34179, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane70PvEP5BiS', @RACEMASK_ALL, 17, 34347, 0, 2736, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Mage Fire70PvEP5BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`) VALUES
('Mage', 'Fire70PvEP5BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_fire_flamebolt:30|t|r Use Fire PvE P5 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Fire70PvE', 'Fire70PvE', 'TBC Phase 5'),
('Mage', 'Fire70PvEP5BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_fire_flamebolt:30|t|r Use Fire PvE P5 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Fire70PvE', 'Fire70PvE', 'TBC Phase 5');
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Mage', 'Fire70PvEP5BiS', @RACEMASK_ALL, 0, 34340, 3002, 2828, 2740, 0, 0, 0),
('Mage', 'Fire70PvEP5BiS', @RACEMASK_ALL, 1, 34204, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire70PvEP5BiS', @RACEMASK_ALL, 2, 31059, 2995, 2736, 2740, 0, 0, 0),
('Mage', 'Fire70PvEP5BiS', @RACEMASK_ALL, 4, 34364, 2661, 2728, 2728, 2728, 0, 0),
('Mage', 'Fire70PvEP5BiS', @RACEMASK_ALL, 5, 34557, 0, 2736, 0, 0, 0, 0),
('Mage', 'Fire70PvEP5BiS', @RACEMASK_ALL, 6, 34181, 2748, 2728, 2728, 2736, 0, 0),
('Mage', 'Fire70PvEP5BiS', @RACEMASK_ALL, 7, 34574, 2656, 2736, 0, 0, 0, 0),
('Mage', 'Fire70PvEP5BiS', @RACEMASK_ALL, 8, 34447, 2650, 2728, 0, 0, 0, 0),
('Mage', 'Fire70PvEP5BiS', @RACEMASK_ALL, 9, 34344, 2322, 2736, 2728, 0, 0, 0),
('Mage', 'Fire70PvEP5BiS', @RACEMASK_ALL, 10, 34362, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire70PvEP5BiS', @RACEMASK_ALL, 11, 33497, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire70PvEP5BiS', @RACEMASK_ALL, 12, 34429, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire70PvEP5BiS', @RACEMASK_ALL, 13, 32483, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire70PvEP5BiS', @RACEMASK_ALL, 14, 34242, 2621, 2728, 0, 0, 0, 0),
('Mage', 'Fire70PvEP5BiS', @RACEMASK_ALL, 15, 34336, 2671, 0, 0, 0, 0, 0),
('Mage', 'Fire70PvEP5BiS', @RACEMASK_ALL, 16, 34179, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire70PvEP5BiS', @RACEMASK_ALL, 17, 34347, 0, 2736, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Mage Frost70PvEP5BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`) VALUES
('Mage', 'Frost70PvEP5BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_frost_frostbolt02:30|t|r Use Frost PvE P5 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Frost70PvE', 'Frost70PvE', 'TBC Phase 5'),
('Mage', 'Frost70PvEP5BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_frost_frostbolt02:30|t|r Use Frost PvE P5 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Frost70PvE', 'Frost70PvE', 'TBC Phase 5');
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Mage', 'Frost70PvEP5BiS', @RACEMASK_ALL, 0, 34340, 3002, 2828, 2740, 0, 0, 0),
('Mage', 'Frost70PvEP5BiS', @RACEMASK_ALL, 1, 34204, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost70PvEP5BiS', @RACEMASK_ALL, 2, 31059, 2995, 2736, 2740, 0, 0, 0),
('Mage', 'Frost70PvEP5BiS', @RACEMASK_ALL, 4, 34364, 2661, 2728, 2728, 2728, 0, 0),
('Mage', 'Frost70PvEP5BiS', @RACEMASK_ALL, 5, 34557, 0, 2736, 0, 0, 0, 0),
('Mage', 'Frost70PvEP5BiS', @RACEMASK_ALL, 6, 34181, 2748, 2728, 2728, 2736, 0, 0),
('Mage', 'Frost70PvEP5BiS', @RACEMASK_ALL, 7, 34574, 2656, 2736, 0, 0, 0, 0),
('Mage', 'Frost70PvEP5BiS', @RACEMASK_ALL, 8, 34447, 2650, 2728, 0, 0, 0, 0),
('Mage', 'Frost70PvEP5BiS', @RACEMASK_ALL, 9, 34344, 2322, 2736, 2728, 0, 0, 0),
('Mage', 'Frost70PvEP5BiS', @RACEMASK_ALL, 10, 34362, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost70PvEP5BiS', @RACEMASK_ALL, 11, 34230, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost70PvEP5BiS', @RACEMASK_ALL, 12, 34429, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost70PvEP5BiS', @RACEMASK_ALL, 13, 32483, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost70PvEP5BiS', @RACEMASK_ALL, 14, 34242, 2621, 2728, 0, 0, 0, 0),
('Mage', 'Frost70PvEP5BiS', @RACEMASK_ALL, 15, 34336, 2672, 0, 0, 0, 0, 0),
('Mage', 'Frost70PvEP5BiS', @RACEMASK_ALL, 16, 34179, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost70PvEP5BiS', @RACEMASK_ALL, 17, 34347, 0, 2736, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Paladin Holy70PvEP5BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`) VALUES
('Paladin', 'Holy70PvEP5BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Use Holy PvE P5 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Holy70PvE', 'Holy70PvE', 'TBC Phase 5'),
('Paladin', 'Holy70PvEP5BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Use Holy PvE P5 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Holy70PvE', 'Holy70PvE', 'TBC Phase 5');
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Paladin', 'Holy70PvEP5BiS', @RACEMASK_ALL, 0, 34243, 3001, 2835, 2728, 0, 0, 0),
('Paladin', 'Holy70PvEP5BiS', @RACEMASK_ALL, 1, 32370, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy70PvEP5BiS', @RACEMASK_ALL, 2, 34193, 2993, 2740, 2734, 0, 0, 0),
('Paladin', 'Holy70PvEP5BiS', @RACEMASK_ALL, 4, 34229, 2661, 2728, 2728, 2728, 0, 0),
('Paladin', 'Holy70PvEP5BiS', @RACEMASK_ALL, 5, 34487, 0, 2728, 0, 0, 0, 0),
('Paladin', 'Holy70PvEP5BiS', @RACEMASK_ALL, 6, 34167, 2748, 2728, 2734, 2740, 0, 0),
('Paladin', 'Holy70PvEP5BiS', @RACEMASK_ALL, 7, 34559, 2656, 2740, 0, 0, 0, 0),
('Paladin', 'Holy70PvEP5BiS', @RACEMASK_ALL, 8, 34432, 2650, 2728, 0, 0, 0, 0),
('Paladin', 'Holy70PvEP5BiS', @RACEMASK_ALL, 9, 34380, 2322, 2740, 2728, 0, 0, 0),
('Paladin', 'Holy70PvEP5BiS', @RACEMASK_ALL, 10, 34363, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy70PvEP5BiS', @RACEMASK_ALL, 11, 32528, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy70PvEP5BiS', @RACEMASK_ALL, 12, 34430, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy70PvEP5BiS', @RACEMASK_ALL, 13, 35750, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy70PvEP5BiS', @RACEMASK_ALL, 14, 34205, 2621, 0, 0, 0, 0, 0),
('Paladin', 'Holy70PvEP5BiS', @RACEMASK_ALL, 15, 34335, 2505, 2740, 0, 0, 0, 0),
('Paladin', 'Holy70PvEP5BiS', @RACEMASK_ALL, 16, 34231, 907, 0, 0, 0, 0, 0),
('Paladin', 'Holy70PvEP5BiS', @RACEMASK_ALL, 17, 28592, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Paladin Protection70PvEP5BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`) VALUES
('Paladin', 'Protection70PvEP5BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_devotionaura:30|t|r Use Protection PvE P5 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Protection70PvE', 'Protection70PvE', 'TBC Phase 5'),
('Paladin', 'Protection70PvEP5BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_devotionaura:30|t|r Use Protection PvE P5 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Protection70PvE', 'Protection70PvE', 'TBC Phase 5');
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Paladin', 'Protection70PvEP5BiS', @RACEMASK_ALL, 0, 34401, 2999, 2833, 2731, 0, 0, 0),
('Paladin', 'Protection70PvEP5BiS', @RACEMASK_ALL, 1, 34178, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection70PvEP5BiS', @RACEMASK_ALL, 2, 34389, 2991, 2725, 2731, 0, 0, 0),
('Paladin', 'Protection70PvEP5BiS', @RACEMASK_ALL, 4, 34216, 2661, 2731, 2737, 2737, 0, 0),
('Paladin', 'Protection70PvEP5BiS', @RACEMASK_ALL, 5, 34488, 0, 2731, 0, 0, 0, 0),
('Paladin', 'Protection70PvEP5BiS', @RACEMASK_ALL, 6, 34382, 3011, 2731, 2731, 2725, 0, 0),
('Paladin', 'Protection70PvEP5BiS', @RACEMASK_ALL, 7, 34560, 2940, 2731, 0, 0, 0, 0),
('Paladin', 'Protection70PvEP5BiS', @RACEMASK_ALL, 8, 34433, 2648, 2731, 0, 0, 0, 0),
('Paladin', 'Protection70PvEP5BiS', @RACEMASK_ALL, 9, 34352, 2564, 2725, 2737, 0, 0, 0),
('Paladin', 'Protection70PvEP5BiS', @RACEMASK_ALL, 10, 34213, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection70PvEP5BiS', @RACEMASK_ALL, 11, 34888, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection70PvEP5BiS', @RACEMASK_ALL, 12, 34473, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection70PvEP5BiS', @RACEMASK_ALL, 13, 32501, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection70PvEP5BiS', @RACEMASK_ALL, 14, 34190, 368, 0, 0, 0, 0, 0),
('Paladin', 'Protection70PvEP5BiS', @RACEMASK_ALL, 15, 30910, 2673, 0, 0, 0, 0, 0),
('Paladin', 'Protection70PvEP5BiS', @RACEMASK_ALL, 16, 34185, 929, 2725, 0, 0, 0, 0),
('Paladin', 'Protection70PvEP5BiS', @RACEMASK_ALL, 17, 29388, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Paladin Retribution70PvEP5BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`) VALUES
('Paladin', 'Retribution70PvEP5BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_auraoflight:30|t|r Use Retribution PvE P5 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Retribution70PvE', 'Retribution70PvE', 'TBC Phase 5'),
('Paladin', 'Retribution70PvEP5BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_auraoflight:30|t|r Use Retribution PvE P5 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Retribution70PvE', 'Retribution70PvE', 'TBC Phase 5');
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Paladin', 'Retribution70PvEP5BiS', @RACEMASK_ALL, 0, 34244, 3003, 2834, 2725, 0, 0, 0),
('Paladin', 'Retribution70PvEP5BiS', @RACEMASK_ALL, 1, 34177, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution70PvEP5BiS', @RACEMASK_ALL, 2, 34388, 2986, 2725, 2735, 0, 0, 0),
('Paladin', 'Retribution70PvEP5BiS', @RACEMASK_ALL, 4, 34397, 2661, 2731, 2735, 2725, 0, 0),
('Paladin', 'Retribution70PvEP5BiS', @RACEMASK_ALL, 5, 34485, 0, 2725, 0, 0, 0, 0),
('Paladin', 'Retribution70PvEP5BiS', @RACEMASK_ALL, 6, 34180, 3012, 2731, 2725, 2735, 0, 0),
('Paladin', 'Retribution70PvEP5BiS', @RACEMASK_ALL, 7, 34561, 2939, 2725, 0, 0, 0, 0),
('Paladin', 'Retribution70PvEP5BiS', @RACEMASK_ALL, 8, 34431, 2647, 2735, 0, 0, 0, 0),
('Paladin', 'Retribution70PvEP5BiS', @RACEMASK_ALL, 9, 34343, 684, 2725, 2735, 0, 0, 0),
('Paladin', 'Retribution70PvEP5BiS', @RACEMASK_ALL, 10, 34361, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution70PvEP5BiS', @RACEMASK_ALL, 11, 34189, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution70PvEP5BiS', @RACEMASK_ALL, 12, 34427, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution70PvEP5BiS', @RACEMASK_ALL, 13, 34472, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution70PvEP5BiS', @RACEMASK_ALL, 14, 27878, 368, 0, 0, 0, 0, 0),
('Paladin', 'Retribution70PvEP5BiS', @RACEMASK_ALL, 15, 34247, 2667, 2725, 2725, 2725, 0, 0),
('Paladin', 'Retribution70PvEP5BiS', @RACEMASK_ALL, 17, 27484, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Priest Discipline70PvEP5BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`) VALUES
('Priest', 'Discipline70PvEP5BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_wordfortitude:30|t|r Use Discipline PvE P5 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Discipline70PvE', 'Discipline70PvE', 'TBC Phase 5'),
('Priest', 'Discipline70PvEP5BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_wordfortitude:30|t|r Use Discipline PvE P5 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Discipline70PvE', 'Discipline70PvE', 'TBC Phase 5');
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Priest', 'Discipline70PvEP5BiS', @RACEMASK_ALL, 0, 34339, 3001, 2835, 2728, 0, 0, 0),
('Priest', 'Discipline70PvEP5BiS', @RACEMASK_ALL, 1, 33281, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline70PvEP5BiS', @RACEMASK_ALL, 2, 34202, 2993, 2728, 2740, 0, 0, 0),
('Priest', 'Discipline70PvEP5BiS', @RACEMASK_ALL, 4, 34233, 2661, 2740, 2740, 2734, 0, 0),
('Priest', 'Discipline70PvEP5BiS', @RACEMASK_ALL, 5, 34527, 0, 2740, 0, 0, 0, 0),
('Priest', 'Discipline70PvEP5BiS', @RACEMASK_ALL, 6, 34170, 2748, 2728, 2734, 2740, 0, 0),
('Priest', 'Discipline70PvEP5BiS', @RACEMASK_ALL, 7, 34562, 2656, 2734, 0, 0, 0, 0),
('Priest', 'Discipline70PvEP5BiS', @RACEMASK_ALL, 8, 34435, 2650, 2728, 0, 0, 0, 0),
('Priest', 'Discipline70PvEP5BiS', @RACEMASK_ALL, 9, 34342, 2322, 2728, 2740, 0, 0, 0),
('Priest', 'Discipline70PvEP5BiS', @RACEMASK_ALL, 10, 32528, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline70PvEP5BiS', @RACEMASK_ALL, 11, 34363, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline70PvEP5BiS', @RACEMASK_ALL, 12, 29376, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline70PvEP5BiS', @RACEMASK_ALL, 13, 38288, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline70PvEP5BiS', @RACEMASK_ALL, 14, 32524, 2621, 0, 0, 0, 0, 0),
('Priest', 'Discipline70PvEP5BiS', @RACEMASK_ALL, 15, 34335, 2505, 2740, 0, 0, 0, 0),
('Priest', 'Discipline70PvEP5BiS', @RACEMASK_ALL, 16, 34206, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline70PvEP5BiS', @RACEMASK_ALL, 17, 34348, 0, 2728, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Priest Holy70PvEP5BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`) VALUES
('Priest', 'Holy70PvEP5BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Use Holy PvE P5 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Holy70PvE', 'Holy70PvE', 'TBC Phase 5'),
('Priest', 'Holy70PvEP5BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Use Holy PvE P5 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Holy70PvE', 'Holy70PvE', 'TBC Phase 5');
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Priest', 'Holy70PvEP5BiS', @RACEMASK_ALL, 0, 34339, 3001, 2835, 2728, 0, 0, 0),
('Priest', 'Holy70PvEP5BiS', @RACEMASK_ALL, 1, 33281, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy70PvEP5BiS', @RACEMASK_ALL, 2, 34202, 2993, 2728, 2740, 0, 0, 0),
('Priest', 'Holy70PvEP5BiS', @RACEMASK_ALL, 4, 34233, 2661, 2740, 2740, 2734, 0, 0),
('Priest', 'Holy70PvEP5BiS', @RACEMASK_ALL, 5, 34527, 0, 2740, 0, 0, 0, 0),
('Priest', 'Holy70PvEP5BiS', @RACEMASK_ALL, 6, 34170, 2748, 2728, 2734, 2740, 0, 0),
('Priest', 'Holy70PvEP5BiS', @RACEMASK_ALL, 7, 34562, 2656, 2734, 0, 0, 0, 0),
('Priest', 'Holy70PvEP5BiS', @RACEMASK_ALL, 8, 34435, 2650, 2728, 0, 0, 0, 0),
('Priest', 'Holy70PvEP5BiS', @RACEMASK_ALL, 9, 34342, 2322, 2728, 2740, 0, 0, 0),
('Priest', 'Holy70PvEP5BiS', @RACEMASK_ALL, 10, 32528, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy70PvEP5BiS', @RACEMASK_ALL, 11, 34363, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy70PvEP5BiS', @RACEMASK_ALL, 12, 29376, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy70PvEP5BiS', @RACEMASK_ALL, 13, 38288, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy70PvEP5BiS', @RACEMASK_ALL, 14, 32524, 2621, 0, 0, 0, 0, 0),
('Priest', 'Holy70PvEP5BiS', @RACEMASK_ALL, 15, 34335, 2505, 2740, 0, 0, 0, 0),
('Priest', 'Holy70PvEP5BiS', @RACEMASK_ALL, 16, 34206, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy70PvEP5BiS', @RACEMASK_ALL, 17, 34348, 0, 2728, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Priest Shadow70PvEP5BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`) VALUES
('Priest', 'Shadow70PvEP5BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_shadow_shadowwordpain:30|t|r Use Shadow PvE P5 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Shadow70PvE', 'Shadow70PvE', 'TBC Phase 5'),
('Priest', 'Shadow70PvEP5BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_shadow_shadowwordpain:30|t|r Use Shadow PvE P5 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Shadow70PvE', 'Shadow70PvE', 'TBC Phase 5');
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Priest', 'Shadow70PvEP5BiS', @RACEMASK_ALL, 0, 34340, 3002, 2828, 2740, 0, 0, 0),
('Priest', 'Shadow70PvEP5BiS', @RACEMASK_ALL, 1, 34204, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow70PvEP5BiS', @RACEMASK_ALL, 2, 31070, 2995, 2736, 2740, 0, 0, 0),
('Priest', 'Shadow70PvEP5BiS', @RACEMASK_ALL, 4, 34364, 2661, 2728, 2728, 2728, 0, 0),
('Priest', 'Shadow70PvEP5BiS', @RACEMASK_ALL, 5, 34528, 0, 2736, 0, 0, 0, 0),
('Priest', 'Shadow70PvEP5BiS', @RACEMASK_ALL, 6, 34181, 2748, 2728, 2728, 2736, 0, 0),
('Priest', 'Shadow70PvEP5BiS', @RACEMASK_ALL, 7, 34563, 2656, 2740, 0, 0, 0, 0),
('Priest', 'Shadow70PvEP5BiS', @RACEMASK_ALL, 8, 34434, 2650, 2728, 0, 0, 0, 0),
('Priest', 'Shadow70PvEP5BiS', @RACEMASK_ALL, 9, 34344, 2322, 2736, 2728, 0, 0, 0),
('Priest', 'Shadow70PvEP5BiS', @RACEMASK_ALL, 10, 34230, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow70PvEP5BiS', @RACEMASK_ALL, 11, 32527, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow70PvEP5BiS', @RACEMASK_ALL, 12, 34429, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow70PvEP5BiS', @RACEMASK_ALL, 13, 33829, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow70PvEP5BiS', @RACEMASK_ALL, 14, 34242, 2621, 2728, 0, 0, 0, 0),
('Priest', 'Shadow70PvEP5BiS', @RACEMASK_ALL, 15, 34336, 2672, 0, 0, 0, 0, 0),
('Priest', 'Shadow70PvEP5BiS', @RACEMASK_ALL, 16, 34179, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow70PvEP5BiS', @RACEMASK_ALL, 17, 34347, 0, 2736, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Rogue Assassination70PvEP5BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`) VALUES
('Rogue', 'Assassination70PvEP5BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_rogue_eviscerate:30|t|r Use Assassination PvE P5 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Assassination70PvE', 'Assassination70PvE', 'TBC Phase 5'),
('Rogue', 'Assassination70PvEP5BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_rogue_eviscerate:30|t|r Use Assassination PvE P5 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Assassination70PvE', 'Assassination70PvE', 'TBC Phase 5');
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Rogue', 'Assassination70PvEP5BiS', @RACEMASK_ALL, 0, 34244, 3003, 2829, 2726, 0, 0, 0),
('Rogue', 'Assassination70PvEP5BiS', @RACEMASK_ALL, 1, 34358, 0, 2735, 0, 0, 0, 0),
('Rogue', 'Assassination70PvEP5BiS', @RACEMASK_ALL, 2, 31030, 2986, 2735, 2731, 0, 0, 0),
('Rogue', 'Assassination70PvEP5BiS', @RACEMASK_ALL, 4, 34397, 2661, 2731, 2735, 2726, 0, 0),
('Rogue', 'Assassination70PvEP5BiS', @RACEMASK_ALL, 5, 34558, 0, 2726, 0, 0, 0, 0),
('Rogue', 'Assassination70PvEP5BiS', @RACEMASK_ALL, 6, 34188, 3012, 2726, 2726, 2726, 0, 0),
('Rogue', 'Assassination70PvEP5BiS', @RACEMASK_ALL, 7, 34575, 2939, 2726, 0, 0, 0, 0),
('Rogue', 'Assassination70PvEP5BiS', @RACEMASK_ALL, 8, 34448, 2647, 2726, 0, 0, 0, 0),
('Rogue', 'Assassination70PvEP5BiS', @RACEMASK_ALL, 9, 34370, 2564, 2726, 2726, 0, 0, 0),
('Rogue', 'Assassination70PvEP5BiS', @RACEMASK_ALL, 10, 32497, 0, 0, 0, 0, 0, 0),
('Rogue', 'Assassination70PvEP5BiS', @RACEMASK_ALL, 11, 34189, 0, 0, 0, 0, 0, 0),
('Rogue', 'Assassination70PvEP5BiS', @RACEMASK_ALL, 12, 34427, 0, 0, 0, 0, 0, 0),
('Rogue', 'Assassination70PvEP5BiS', @RACEMASK_ALL, 13, 28830, 0, 0, 0, 0, 0, 0),
('Rogue', 'Assassination70PvEP5BiS', @RACEMASK_ALL, 14, 34241, 368, 2735, 0, 0, 0, 0),
('Rogue', 'Assassination70PvEP5BiS', @RACEMASK_ALL, 15, 32837, 2673, 0, 0, 0, 0, 0),
('Rogue', 'Assassination70PvEP5BiS', @RACEMASK_ALL, 16, 34329, 2673, 2726, 0, 0, 0, 0),
('Rogue', 'Assassination70PvEP5BiS', @RACEMASK_ALL, 17, 34196, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Rogue Combat70PvEP5BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`) VALUES
('Rogue', 'Combat70PvEP5BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_backstab:30|t|r Use Combat PvE P5 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Combat70PvE', 'Combat70PvE', 'TBC Phase 5'),
('Rogue', 'Combat70PvEP5BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_backstab:30|t|r Use Combat PvE P5 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Combat70PvE', 'Combat70PvE', 'TBC Phase 5');
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Rogue', 'Combat70PvEP5BiS', @RACEMASK_ALL, 0, 34244, 3003, 2829, 2726, 0, 0, 0),
('Rogue', 'Combat70PvEP5BiS', @RACEMASK_ALL, 1, 34358, 0, 2735, 0, 0, 0, 0),
('Rogue', 'Combat70PvEP5BiS', @RACEMASK_ALL, 2, 31030, 2986, 2735, 2731, 0, 0, 0),
('Rogue', 'Combat70PvEP5BiS', @RACEMASK_ALL, 4, 34397, 2661, 2731, 2735, 2726, 0, 0),
('Rogue', 'Combat70PvEP5BiS', @RACEMASK_ALL, 5, 34558, 0, 2726, 0, 0, 0, 0),
('Rogue', 'Combat70PvEP5BiS', @RACEMASK_ALL, 6, 34188, 3012, 2726, 2726, 2726, 0, 0),
('Rogue', 'Combat70PvEP5BiS', @RACEMASK_ALL, 7, 34575, 2939, 2726, 0, 0, 0, 0),
('Rogue', 'Combat70PvEP5BiS', @RACEMASK_ALL, 8, 34448, 2647, 2726, 0, 0, 0, 0),
('Rogue', 'Combat70PvEP5BiS', @RACEMASK_ALL, 9, 34370, 2564, 2726, 2726, 0, 0, 0),
('Rogue', 'Combat70PvEP5BiS', @RACEMASK_ALL, 10, 32497, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat70PvEP5BiS', @RACEMASK_ALL, 11, 34189, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat70PvEP5BiS', @RACEMASK_ALL, 12, 34427, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat70PvEP5BiS', @RACEMASK_ALL, 13, 28830, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat70PvEP5BiS', @RACEMASK_ALL, 14, 34241, 368, 2735, 0, 0, 0, 0),
('Rogue', 'Combat70PvEP5BiS', @RACEMASK_ALL, 15, 32837, 2673, 0, 0, 0, 0, 0),
('Rogue', 'Combat70PvEP5BiS', @RACEMASK_ALL, 16, 34329, 2673, 2726, 0, 0, 0, 0),
('Rogue', 'Combat70PvEP5BiS', @RACEMASK_ALL, 17, 34196, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Shaman Elemental70PvEP5BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`) VALUES
('Shaman', 'Elemental70PvEP5BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_lightning:30|t|r Use Elemental PvE P5 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Elemental70PvE', 'Elemental70PvE', 'TBC Phase 5'),
('Shaman', 'Elemental70PvEP5BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_lightning:30|t|r Use Elemental PvE P5 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Elemental70PvE', 'Elemental70PvE', 'TBC Phase 5');
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Shaman', 'Elemental70PvEP5BiS', @RACEMASK_ALL, 0, 34332, 3002, 2736, 2828, 0, 0, 0),
('Shaman', 'Elemental70PvEP5BiS', @RACEMASK_ALL, 1, 34359, 0, 2736, 0, 0, 0, 0),
('Shaman', 'Elemental70PvEP5BiS', @RACEMASK_ALL, 2, 31023, 2995, 2740, 2736, 0, 0, 0),
('Shaman', 'Elemental70PvEP5BiS', @RACEMASK_ALL, 4, 34364, 2661, 2728, 2728, 2728, 0, 0),
('Shaman', 'Elemental70PvEP5BiS', @RACEMASK_ALL, 5, 34542, 0, 2736, 0, 0, 0, 0),
('Shaman', 'Elemental70PvEP5BiS', @RACEMASK_ALL, 6, 34186, 2748, 2736, 2728, 2728, 0, 0),
('Shaman', 'Elemental70PvEP5BiS', @RACEMASK_ALL, 7, 34566, 2656, 2736, 0, 0, 0, 0),
('Shaman', 'Elemental70PvEP5BiS', @RACEMASK_ALL, 8, 34437, 2650, 2736, 0, 0, 0, 0),
('Shaman', 'Elemental70PvEP5BiS', @RACEMASK_ALL, 9, 34350, 2322, 2728, 2740, 0, 0, 0),
('Shaman', 'Elemental70PvEP5BiS', @RACEMASK_ALL, 10, 34230, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental70PvEP5BiS', @RACEMASK_ALL, 11, 34362, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental70PvEP5BiS', @RACEMASK_ALL, 12, 34429, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental70PvEP5BiS', @RACEMASK_ALL, 13, 32483, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental70PvEP5BiS', @RACEMASK_ALL, 14, 34242, 2621, 2728, 0, 0, 0, 0),
('Shaman', 'Elemental70PvEP5BiS', @RACEMASK_ALL, 15, 34336, 2671, 0, 0, 0, 0, 0),
('Shaman', 'Elemental70PvEP5BiS', @RACEMASK_ALL, 16, 34179, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental70PvEP5BiS', @RACEMASK_ALL, 17, 32330, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Shaman Enhancement70PvEP5BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`) VALUES
('Shaman', 'Enhancement70PvEP5BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_lightningshield:30|t|r Use Enhancement PvE P5 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Enhancement70PvE', 'Enhancement70PvE', 'TBC Phase 5'),
('Shaman', 'Enhancement70PvEP5BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_lightningshield:30|t|r Use Enhancement PvE P5 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Enhancement70PvE', 'Enhancement70PvE', 'TBC Phase 5');
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Shaman', 'Enhancement70PvEP5BiS', @RACEMASK_ALL, 0, 34244, 3003, 2829, 2726, 0, 0, 0),
('Shaman', 'Enhancement70PvEP5BiS', @RACEMASK_ALL, 1, 34358, 0, 2735, 0, 0, 0, 0),
('Shaman', 'Enhancement70PvEP5BiS', @RACEMASK_ALL, 2, 34392, 2986, 2726, 2731, 0, 0, 0),
('Shaman', 'Enhancement70PvEP5BiS', @RACEMASK_ALL, 4, 34397, 2661, 2731, 2735, 2726, 0, 0),
('Shaman', 'Enhancement70PvEP5BiS', @RACEMASK_ALL, 5, 34545, 0, 2726, 0, 0, 0, 0),
('Shaman', 'Enhancement70PvEP5BiS', @RACEMASK_ALL, 6, 34188, 3012, 2726, 2726, 2726, 0, 0),
('Shaman', 'Enhancement70PvEP5BiS', @RACEMASK_ALL, 7, 34567, 2939, 2735, 0, 0, 0, 0),
('Shaman', 'Enhancement70PvEP5BiS', @RACEMASK_ALL, 8, 34439, 2647, 2735, 0, 0, 0, 0),
('Shaman', 'Enhancement70PvEP5BiS', @RACEMASK_ALL, 9, 34343, 2564, 2726, 2735, 0, 0, 0),
('Shaman', 'Enhancement70PvEP5BiS', @RACEMASK_ALL, 10, 34189, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement70PvEP5BiS', @RACEMASK_ALL, 11, 32497, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement70PvEP5BiS', @RACEMASK_ALL, 12, 34427, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement70PvEP5BiS', @RACEMASK_ALL, 13, 34472, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement70PvEP5BiS', @RACEMASK_ALL, 14, 34241, 368, 2735, 0, 0, 0, 0),
('Shaman', 'Enhancement70PvEP5BiS', @RACEMASK_ALL, 15, 34331, 2673, 2735, 2735, 0, 0, 0),
('Shaman', 'Enhancement70PvEP5BiS', @RACEMASK_ALL, 16, 34346, 2673, 2735, 2731, 0, 0, 0),
('Shaman', 'Enhancement70PvEP5BiS', @RACEMASK_ALL, 17, 33507, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Shaman Restoration70PvEP5BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`) VALUES
('Shaman', 'Restoration70PvEP5BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_magicimmunity:30|t|r Use Restoration PvE P5 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Restoration70PvE', 'Restoration70PvE', 'TBC Phase 5'),
('Shaman', 'Restoration70PvEP5BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_magicimmunity:30|t|r Use Restoration PvE P5 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Restoration70PvE', 'Restoration70PvE', 'TBC Phase 5');
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Shaman', 'Restoration70PvEP5BiS', @RACEMASK_ALL, 0, 34402, 3001, 2734, 2835, 0, 0, 0),
('Shaman', 'Restoration70PvEP5BiS', @RACEMASK_ALL, 1, 34360, 0, 2728, 0, 0, 0, 0),
('Shaman', 'Restoration70PvEP5BiS', @RACEMASK_ALL, 2, 31022, 2993, 2740, 2734, 0, 0, 0),
('Shaman', 'Restoration70PvEP5BiS', @RACEMASK_ALL, 4, 34375, 2661, 2728, 2728, 2728, 0, 0),
('Shaman', 'Restoration70PvEP5BiS', @RACEMASK_ALL, 5, 34543, 0, 2728, 0, 0, 0, 0),
('Shaman', 'Restoration70PvEP5BiS', @RACEMASK_ALL, 6, 34383, 2748, 2740, 2728, 2728, 0, 0),
('Shaman', 'Restoration70PvEP5BiS', @RACEMASK_ALL, 7, 34565, 2656, 2728, 0, 0, 0, 0),
('Shaman', 'Restoration70PvEP5BiS', @RACEMASK_ALL, 8, 34438, 2650, 2728, 0, 0, 0, 0),
('Shaman', 'Restoration70PvEP5BiS', @RACEMASK_ALL, 9, 32328, 2322, 2734, 2740, 0, 0, 0),
('Shaman', 'Restoration70PvEP5BiS', @RACEMASK_ALL, 10, 32528, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration70PvEP5BiS', @RACEMASK_ALL, 11, 34363, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration70PvEP5BiS', @RACEMASK_ALL, 12, 35750, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration70PvEP5BiS', @RACEMASK_ALL, 13, 28823, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration70PvEP5BiS', @RACEMASK_ALL, 14, 32524, 2621, 0, 0, 0, 0, 0),
('Shaman', 'Restoration70PvEP5BiS', @RACEMASK_ALL, 15, 34335, 2505, 2740, 0, 0, 0, 0),
('Shaman', 'Restoration70PvEP5BiS', @RACEMASK_ALL, 16, 34206, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration70PvEP5BiS', @RACEMASK_ALL, 17, 28523, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warlock Affliction70PvEP5BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`) VALUES
('Warlock', 'Affliction70PvEP5BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_shadow_deathcoil:30|t|r Use Affliction PvE P5 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Affliction70PvE', 'Affliction70PvE', 'TBC Phase 5'),
('Warlock', 'Affliction70PvEP5BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_shadow_deathcoil:30|t|r Use Affliction PvE P5 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Affliction70PvE', 'Affliction70PvE', 'TBC Phase 5');
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warlock', 'Affliction70PvEP5BiS', @RACEMASK_ALL, 0, 34340, 3002, 2828, 2740, 0, 0, 0),
('Warlock', 'Affliction70PvEP5BiS', @RACEMASK_ALL, 1, 34359, 0, 2736, 0, 0, 0, 0),
('Warlock', 'Affliction70PvEP5BiS', @RACEMASK_ALL, 2, 34210, 2995, 2728, 2736, 0, 0, 0),
('Warlock', 'Affliction70PvEP5BiS', @RACEMASK_ALL, 4, 34364, 2661, 2728, 2728, 2728, 0, 0),
('Warlock', 'Affliction70PvEP5BiS', @RACEMASK_ALL, 5, 34541, 0, 2736, 0, 0, 0, 0),
('Warlock', 'Affliction70PvEP5BiS', @RACEMASK_ALL, 6, 34181, 2748, 2728, 2728, 2736, 0, 0),
('Warlock', 'Affliction70PvEP5BiS', @RACEMASK_ALL, 7, 34564, 2656, 2736, 0, 0, 0, 0),
('Warlock', 'Affliction70PvEP5BiS', @RACEMASK_ALL, 8, 34436, 2650, 2736, 0, 0, 0, 0),
('Warlock', 'Affliction70PvEP5BiS', @RACEMASK_ALL, 9, 34344, 2322, 2736, 2728, 0, 0, 0),
('Warlock', 'Affliction70PvEP5BiS', @RACEMASK_ALL, 10, 34230, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction70PvEP5BiS', @RACEMASK_ALL, 11, 34362, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction70PvEP5BiS', @RACEMASK_ALL, 12, 34429, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction70PvEP5BiS', @RACEMASK_ALL, 13, 32483, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction70PvEP5BiS', @RACEMASK_ALL, 14, 34242, 2621, 2728, 0, 0, 0, 0),
('Warlock', 'Affliction70PvEP5BiS', @RACEMASK_ALL, 15, 34336, 2672, 0, 0, 0, 0, 0),
('Warlock', 'Affliction70PvEP5BiS', @RACEMASK_ALL, 16, 34179, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction70PvEP5BiS', @RACEMASK_ALL, 17, 34347, 0, 2736, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warlock Demonology70PvEP5BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`) VALUES
('Warlock', 'Demonology70PvEP5BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_shadow_metamorphosis:30|t|r Use Demonology PvE P5 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Demonology70PvE', 'Demonology70PvE', 'TBC Phase 5'),
('Warlock', 'Demonology70PvEP5BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_shadow_metamorphosis:30|t|r Use Demonology PvE P5 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Demonology70PvE', 'Demonology70PvE', 'TBC Phase 5');
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warlock', 'Demonology70PvEP5BiS', @RACEMASK_ALL, 0, 34340, 3002, 2828, 2740, 0, 0, 0),
('Warlock', 'Demonology70PvEP5BiS', @RACEMASK_ALL, 1, 34359, 0, 2736, 0, 0, 0, 0),
('Warlock', 'Demonology70PvEP5BiS', @RACEMASK_ALL, 2, 34210, 2995, 2728, 2736, 0, 0, 0),
('Warlock', 'Demonology70PvEP5BiS', @RACEMASK_ALL, 4, 34364, 2661, 2728, 2728, 2728, 0, 0),
('Warlock', 'Demonology70PvEP5BiS', @RACEMASK_ALL, 5, 34541, 0, 2736, 0, 0, 0, 0),
('Warlock', 'Demonology70PvEP5BiS', @RACEMASK_ALL, 6, 34181, 2748, 2728, 2728, 2736, 0, 0),
('Warlock', 'Demonology70PvEP5BiS', @RACEMASK_ALL, 7, 34564, 2656, 2736, 0, 0, 0, 0),
('Warlock', 'Demonology70PvEP5BiS', @RACEMASK_ALL, 8, 34436, 2650, 2736, 0, 0, 0, 0),
('Warlock', 'Demonology70PvEP5BiS', @RACEMASK_ALL, 9, 34344, 2322, 2736, 2728, 0, 0, 0),
('Warlock', 'Demonology70PvEP5BiS', @RACEMASK_ALL, 10, 34230, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology70PvEP5BiS', @RACEMASK_ALL, 11, 34362, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology70PvEP5BiS', @RACEMASK_ALL, 12, 34429, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology70PvEP5BiS', @RACEMASK_ALL, 13, 32483, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology70PvEP5BiS', @RACEMASK_ALL, 14, 34242, 2621, 2728, 0, 0, 0, 0),
('Warlock', 'Demonology70PvEP5BiS', @RACEMASK_ALL, 15, 34336, 2672, 0, 0, 0, 0, 0),
('Warlock', 'Demonology70PvEP5BiS', @RACEMASK_ALL, 16, 34179, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology70PvEP5BiS', @RACEMASK_ALL, 17, 34347, 0, 2736, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warlock Destruction70PvEP5BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`) VALUES
('Warlock', 'Destruction70PvEP5BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_shadow_rainoffire:30|t|r Use Destruction PvE P5 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Destruction70PvE', 'Destruction70PvE', 'TBC Phase 5'),
('Warlock', 'Destruction70PvEP5BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_shadow_rainoffire:30|t|r Use Destruction PvE P5 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Destruction70PvE', 'Destruction70PvE', 'TBC Phase 5');
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warlock', 'Destruction70PvEP5BiS', @RACEMASK_ALL, 0, 34340, 3002, 2828, 2740, 0, 0, 0),
('Warlock', 'Destruction70PvEP5BiS', @RACEMASK_ALL, 1, 34359, 0, 2736, 0, 0, 0, 0),
('Warlock', 'Destruction70PvEP5BiS', @RACEMASK_ALL, 2, 34210, 2995, 2728, 2736, 0, 0, 0),
('Warlock', 'Destruction70PvEP5BiS', @RACEMASK_ALL, 4, 34364, 2661, 2728, 2728, 2728, 0, 0),
('Warlock', 'Destruction70PvEP5BiS', @RACEMASK_ALL, 5, 34541, 0, 2736, 0, 0, 0, 0),
('Warlock', 'Destruction70PvEP5BiS', @RACEMASK_ALL, 6, 34181, 2748, 2728, 2728, 2736, 0, 0),
('Warlock', 'Destruction70PvEP5BiS', @RACEMASK_ALL, 7, 34564, 2656, 2736, 0, 0, 0, 0),
('Warlock', 'Destruction70PvEP5BiS', @RACEMASK_ALL, 8, 34436, 2650, 2736, 0, 0, 0, 0),
('Warlock', 'Destruction70PvEP5BiS', @RACEMASK_ALL, 9, 34344, 2322, 2736, 2728, 0, 0, 0),
('Warlock', 'Destruction70PvEP5BiS', @RACEMASK_ALL, 10, 34230, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction70PvEP5BiS', @RACEMASK_ALL, 11, 34362, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction70PvEP5BiS', @RACEMASK_ALL, 12, 34429, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction70PvEP5BiS', @RACEMASK_ALL, 13, 32483, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction70PvEP5BiS', @RACEMASK_ALL, 14, 34242, 2621, 2728, 0, 0, 0, 0),
('Warlock', 'Destruction70PvEP5BiS', @RACEMASK_ALL, 15, 34336, 2671, 0, 0, 0, 0, 0),
('Warlock', 'Destruction70PvEP5BiS', @RACEMASK_ALL, 16, 34179, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction70PvEP5BiS', @RACEMASK_ALL, 17, 34347, 0, 2736, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warrior Arms70PvEP5BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`) VALUES
('Warrior', 'Arms70PvEP5BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_rogue_eviscerate:30|t|r Use Arms PvE P5 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Arms70PvE', 'Arms70PvE', 'TBC Phase 5'),
('Warrior', 'Arms70PvEP5BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_rogue_eviscerate:30|t|r Use Arms PvE P5 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Arms70PvE', 'Arms70PvE', 'TBC Phase 5');
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warrior', 'Arms70PvEP5BiS', @RACEMASK_ALL, 0, 34333, 3003, 2725, 2834, 0, 0, 0),
('Warrior', 'Arms70PvEP5BiS', @RACEMASK_ALL, 1, 34177, 0, 0, 0, 0, 0, 0),
('Warrior', 'Arms70PvEP5BiS', @RACEMASK_ALL, 2, 34388, 2986, 2725, 2735, 0, 0, 0),
('Warrior', 'Arms70PvEP5BiS', @RACEMASK_ALL, 4, 34397, 2661, 2731, 2735, 2725, 0, 0),
('Warrior', 'Arms70PvEP5BiS', @RACEMASK_ALL, 5, 34546, 0, 2735, 0, 0, 0, 0),
('Warrior', 'Arms70PvEP5BiS', @RACEMASK_ALL, 6, 34180, 3012, 2731, 2725, 2735, 0, 0),
('Warrior', 'Arms70PvEP5BiS', @RACEMASK_ALL, 7, 34569, 2939, 2735, 0, 0, 0, 0),
('Warrior', 'Arms70PvEP5BiS', @RACEMASK_ALL, 8, 34441, 2647, 2725, 0, 0, 0, 0),
('Warrior', 'Arms70PvEP5BiS', @RACEMASK_ALL, 9, 34343, 684, 2725, 2735, 0, 0, 0),
('Warrior', 'Arms70PvEP5BiS', @RACEMASK_ALL, 10, 34189, 0, 0, 0, 0, 0, 0),
('Warrior', 'Arms70PvEP5BiS', @RACEMASK_ALL, 11, 34361, 0, 0, 0, 0, 0, 0),
('Warrior', 'Arms70PvEP5BiS', @RACEMASK_ALL, 12, 34427, 0, 0, 0, 0, 0, 0),
('Warrior', 'Arms70PvEP5BiS', @RACEMASK_ALL, 13, 34472, 0, 0, 0, 0, 0, 0),
('Warrior', 'Arms70PvEP5BiS', @RACEMASK_ALL, 14, 34241, 368, 2735, 0, 0, 0, 0),
('Warrior', 'Arms70PvEP5BiS', @RACEMASK_ALL, 15, 34247, 2667, 2725, 2725, 2725, 0, 0),
('Warrior', 'Arms70PvEP5BiS', @RACEMASK_ALL, 17, 34196, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warrior Fury70PvEP5BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`) VALUES
('Warrior', 'Fury70PvEP5BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_warrior_innerrage:30|t|r Use Fury PvE P5 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Fury70PvE', 'Fury70PvE', 'TBC Phase 5'),
('Warrior', 'Fury70PvEP5BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_warrior_innerrage:30|t|r Use Fury PvE P5 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Fury70PvE', 'Fury70PvE', 'TBC Phase 5');
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warrior', 'Fury70PvEP5BiS', @RACEMASK_ALL, 0, 34333, 3003, 2725, 2834, 0, 0, 0),
('Warrior', 'Fury70PvEP5BiS', @RACEMASK_ALL, 1, 34177, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury70PvEP5BiS', @RACEMASK_ALL, 2, 34388, 2986, 2725, 2735, 0, 0, 0),
('Warrior', 'Fury70PvEP5BiS', @RACEMASK_ALL, 4, 34397, 2661, 2731, 2735, 2725, 0, 0),
('Warrior', 'Fury70PvEP5BiS', @RACEMASK_ALL, 5, 34546, 0, 2735, 0, 0, 0, 0),
('Warrior', 'Fury70PvEP5BiS', @RACEMASK_ALL, 6, 34180, 3012, 2731, 2725, 2735, 0, 0),
('Warrior', 'Fury70PvEP5BiS', @RACEMASK_ALL, 7, 34569, 2939, 2735, 0, 0, 0, 0),
('Warrior', 'Fury70PvEP5BiS', @RACEMASK_ALL, 8, 34441, 2647, 2725, 0, 0, 0, 0),
('Warrior', 'Fury70PvEP5BiS', @RACEMASK_ALL, 9, 34343, 684, 2725, 2735, 0, 0, 0),
('Warrior', 'Fury70PvEP5BiS', @RACEMASK_ALL, 10, 34189, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury70PvEP5BiS', @RACEMASK_ALL, 11, 34361, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury70PvEP5BiS', @RACEMASK_ALL, 12, 34427, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury70PvEP5BiS', @RACEMASK_ALL, 13, 34472, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury70PvEP5BiS', @RACEMASK_ALL, 14, 34241, 368, 2735, 0, 0, 0, 0),
('Warrior', 'Fury70PvEP5BiS', @RACEMASK_ALL, 15, 32837, 2673, 0, 0, 0, 0, 0),
('Warrior', 'Fury70PvEP5BiS', @RACEMASK_ALL, 16, 32838, 2673, 0, 0, 0, 0, 0),
('Warrior', 'Fury70PvEP5BiS', @RACEMASK_ALL, 17, 34196, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warrior Protection70PvEP5BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`) VALUES
('Warrior', 'Protection70PvEP5BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_warrior_defensivestance:30|t|r Use Protection PvE P5 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Protection70PvE', 'Protection70PvE', 'TBC Phase 5'),
('Warrior', 'Protection70PvEP5BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_warrior_defensivestance:30|t|r Use Protection PvE P5 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Protection70PvE', 'Protection70PvE', 'TBC Phase 5');
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warrior', 'Protection70PvEP5BiS', @RACEMASK_ALL, 0, 34400, 2999, 2833, 2731, 0, 0, 0),
('Warrior', 'Protection70PvEP5BiS', @RACEMASK_ALL, 1, 34178, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection70PvEP5BiS', @RACEMASK_ALL, 2, 35070, 2991, 2725, 2737, 0, 0, 0),
('Warrior', 'Protection70PvEP5BiS', @RACEMASK_ALL, 4, 35066, 2661, 2725, 2725, 2737, 0, 0),
('Warrior', 'Protection70PvEP5BiS', @RACEMASK_ALL, 5, 34547, 0, 2725, 0, 0, 0, 0),
('Warrior', 'Protection70PvEP5BiS', @RACEMASK_ALL, 6, 34381, 3011, 2731, 2731, 2725, 0, 0),
('Warrior', 'Protection70PvEP5BiS', @RACEMASK_ALL, 7, 34568, 2940, 2725, 0, 0, 0, 0),
('Warrior', 'Protection70PvEP5BiS', @RACEMASK_ALL, 8, 34442, 2648, 2731, 0, 0, 0, 0),
('Warrior', 'Protection70PvEP5BiS', @RACEMASK_ALL, 9, 34352, 2564, 2725, 2737, 0, 0, 0),
('Warrior', 'Protection70PvEP5BiS', @RACEMASK_ALL, 10, 34361, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection70PvEP5BiS', @RACEMASK_ALL, 11, 34213, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection70PvEP5BiS', @RACEMASK_ALL, 12, 33830, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection70PvEP5BiS', @RACEMASK_ALL, 13, 34473, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection70PvEP5BiS', @RACEMASK_ALL, 14, 34190, 368, 0, 0, 0, 0, 0),
('Warrior', 'Protection70PvEP5BiS', @RACEMASK_ALL, 15, 34164, 2673, 0, 0, 0, 0, 0),
('Warrior', 'Protection70PvEP5BiS', @RACEMASK_ALL, 16, 34185, 929, 2725, 0, 0, 0, 0),
('Warrior', 'Protection70PvEP5BiS', @RACEMASK_ALL, 17, 32253, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

