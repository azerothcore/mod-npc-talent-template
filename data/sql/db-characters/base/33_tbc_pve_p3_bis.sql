-- Batch-generated TBC BiS gear templates
-- Phase: 3  Mode: pve
-- 30 specs

-- Idempotency: remove this file's templates first so re-application cannot duplicate rows
-- (the index table has no unique key; without this a re-applied file would append copies).
DELETE FROM `mod_npc_talent_template_index` WHERE `playerSpec` IN ('Balance70PvEP3BiS', 'Cat70PvEP3BiS', 'Bear70PvEP3BiS', 'Restoration70PvEP3BiS', 'Beastmastery70PvEP3BiS', 'Marksmanship70PvEP3BiS', 'Survival70PvEP3BiS', 'Arcane70PvEP3BiS', 'Fire70PvEP3BiS', 'Frost70PvEP3BiS', 'Holy70PvEP3BiS', 'Protection70PvEP3BiS', 'Retribution70PvEP3BiS', 'Discipline70PvEP3BiS', 'Shadow70PvEP3BiS', 'Assassination70PvEP3BiS', 'Combat70PvEP3BiS', 'Elemental70PvEP3BiS', 'Enhancement70PvEP3BiS', 'Affliction70PvEP3BiS', 'Demonology70PvEP3BiS', 'Destruction70PvEP3BiS', 'Arms70PvEP3BiS', 'Fury70PvEP3BiS', 'Blood70PvEP3BiS', 'Unholy70PvEP3BiS');
DELETE FROM `mod_npc_talent_template_gear` WHERE `playerSpec` IN ('Balance70PvEP3BiS', 'Cat70PvEP3BiS', 'Bear70PvEP3BiS', 'Restoration70PvEP3BiS', 'Beastmastery70PvEP3BiS', 'Marksmanship70PvEP3BiS', 'Survival70PvEP3BiS', 'Arcane70PvEP3BiS', 'Fire70PvEP3BiS', 'Frost70PvEP3BiS', 'Holy70PvEP3BiS', 'Protection70PvEP3BiS', 'Retribution70PvEP3BiS', 'Discipline70PvEP3BiS', 'Shadow70PvEP3BiS', 'Assassination70PvEP3BiS', 'Combat70PvEP3BiS', 'Elemental70PvEP3BiS', 'Enhancement70PvEP3BiS', 'Affliction70PvEP3BiS', 'Demonology70PvEP3BiS', 'Destruction70PvEP3BiS', 'Arms70PvEP3BiS', 'Fury70PvEP3BiS', 'Blood70PvEP3BiS', 'Unholy70PvEP3BiS');

SET @MINLEVEL = 70;
SET @MAXLEVEL = 79;
SET @RACEMASK_ALL = 1791;
-- ===== Druid Balance70PvEP3BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Druid', 'Balance70PvEP3BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_starfall:30|t|r Use Balance PvE P3 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Balance70PvE', 'Balance70PvE', 'TBC Phase 3', 203),
('Druid', 'Balance70PvEP3BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_starfall:30|t|r Use Balance PvE P3 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Balance70PvE', 'Balance70PvE', 'TBC Phase 3', 203);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Druid', 'Balance70PvEP3BiS', @RACEMASK_ALL, 0, 31040, 3002, 2736, 2828, 0, 0, 0),
('Druid', 'Balance70PvEP3BiS', @RACEMASK_ALL, 1, 30015, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance70PvEP3BiS', @RACEMASK_ALL, 2, 31049, 2995, 2740, 2736, 0, 0, 0),
('Druid', 'Balance70PvEP3BiS', @RACEMASK_ALL, 4, 31043, 2661, 2740, 2740, 2736, 0, 0),
('Druid', 'Balance70PvEP3BiS', @RACEMASK_ALL, 5, 30914, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance70PvEP3BiS', @RACEMASK_ALL, 6, 30916, 2748, 2736, 2736, 2740, 0, 0),
('Druid', 'Balance70PvEP3BiS', @RACEMASK_ALL, 7, 32239, 2656, 2736, 2740, 0, 0, 0),
('Druid', 'Balance70PvEP3BiS', @RACEMASK_ALL, 8, 32586, 2650, 0, 0, 0, 0, 0),
('Druid', 'Balance70PvEP3BiS', @RACEMASK_ALL, 9, 31035, 2322, 2736, 0, 0, 0, 0),
('Druid', 'Balance70PvEP3BiS', @RACEMASK_ALL, 10, 32527, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance70PvEP3BiS', @RACEMASK_ALL, 11, 29305, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance70PvEP3BiS', @RACEMASK_ALL, 12, 32483, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance70PvEP3BiS', @RACEMASK_ALL, 13, 32486, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance70PvEP3BiS', @RACEMASK_ALL, 14, 32524, 2621, 0, 0, 0, 0, 0),
('Druid', 'Balance70PvEP3BiS', @RACEMASK_ALL, 15, 32237, 2671, 0, 0, 0, 0, 0),
('Druid', 'Balance70PvEP3BiS', @RACEMASK_ALL, 16, 30872, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance70PvEP3BiS', @RACEMASK_ALL, 17, 32387, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Druid Cat70PvEP3BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Druid', 'Cat70PvEP3BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_druid_catform:30|t|r Use Cat PvE P3 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Cat70PvE', 'Cat70PvE', 'TBC Phase 3', 203),
('Druid', 'Cat70PvEP3BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_druid_catform:30|t|r Use Cat PvE P3 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Cat70PvE', 'Cat70PvE', 'TBC Phase 3', 203);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Druid', 'Cat70PvEP3BiS', @RACEMASK_ALL, 0, 8345, 3003, 0, 0, 0, 0, 0),
('Druid', 'Cat70PvEP3BiS', @RACEMASK_ALL, 1, 32260, 0, 0, 0, 0, 0, 0),
('Druid', 'Cat70PvEP3BiS', @RACEMASK_ALL, 2, 31048, 2986, 2735, 2731, 0, 0, 0),
('Druid', 'Cat70PvEP3BiS', @RACEMASK_ALL, 4, 32252, 2661, 2726, 2735, 2731, 0, 0),
('Druid', 'Cat70PvEP3BiS', @RACEMASK_ALL, 5, 30106, 0, 2726, 2731, 0, 0, 0),
('Druid', 'Cat70PvEP3BiS', @RACEMASK_ALL, 6, 31044, 3012, 2731, 0, 0, 0, 0),
('Druid', 'Cat70PvEP3BiS', @RACEMASK_ALL, 7, 32366, 2939, 2726, 2735, 0, 0, 0),
('Druid', 'Cat70PvEP3BiS', @RACEMASK_ALL, 8, 32324, 2647, 2735, 0, 0, 0, 0),
('Druid', 'Cat70PvEP3BiS', @RACEMASK_ALL, 9, 29947, 2564, 0, 0, 0, 0, 0),
('Druid', 'Cat70PvEP3BiS', @RACEMASK_ALL, 10, 32497, 0, 0, 0, 0, 0, 0),
('Druid', 'Cat70PvEP3BiS', @RACEMASK_ALL, 11, 29301, 0, 0, 0, 0, 0, 0),
('Druid', 'Cat70PvEP3BiS', @RACEMASK_ALL, 12, 30627, 0, 0, 0, 0, 0, 0),
('Druid', 'Cat70PvEP3BiS', @RACEMASK_ALL, 13, 32505, 0, 0, 0, 0, 0, 0),
('Druid', 'Cat70PvEP3BiS', @RACEMASK_ALL, 14, 32323, 368, 0, 0, 0, 0, 0),
('Druid', 'Cat70PvEP3BiS', @RACEMASK_ALL, 15, 33716, 2673, 0, 0, 0, 0, 0),
('Druid', 'Cat70PvEP3BiS', @RACEMASK_ALL, 17, 29390, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Druid Bear70PvEP3BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Druid', 'Bear70PvEP3BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_racial_bearform:30|t|r Use Bear PvE P3 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Bear70PvE', 'Bear70PvE', 'TBC Phase 3', 203),
('Druid', 'Bear70PvEP3BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_racial_bearform:30|t|r Use Bear PvE P3 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Bear70PvE', 'Bear70PvE', 'TBC Phase 3', 203);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Druid', 'Bear70PvEP3BiS', @RACEMASK_ALL, 0, 31039, 2999, 2731, 2833, 0, 0, 0),
('Druid', 'Bear70PvEP3BiS', @RACEMASK_ALL, 1, 30017, 0, 0, 0, 0, 0, 0),
('Druid', 'Bear70PvEP3BiS', @RACEMASK_ALL, 2, 31048, 2991, 2737, 2731, 0, 0, 0),
('Druid', 'Bear70PvEP3BiS', @RACEMASK_ALL, 4, 31042, 2661, 2731, 2737, 2725, 0, 0),
('Druid', 'Bear70PvEP3BiS', @RACEMASK_ALL, 5, 30106, 0, 2725, 2731, 0, 0, 0),
('Druid', 'Bear70PvEP3BiS', @RACEMASK_ALL, 6, 31044, 3011, 2731, 0, 0, 0, 0),
('Druid', 'Bear70PvEP3BiS', @RACEMASK_ALL, 7, 32593, 2940, 0, 0, 0, 0, 0),
('Druid', 'Bear70PvEP3BiS', @RACEMASK_ALL, 8, 32324, 2648, 2737, 0, 0, 0, 0),
('Druid', 'Bear70PvEP3BiS', @RACEMASK_ALL, 9, 31034, 2564, 2731, 0, 0, 0, 0),
('Druid', 'Bear70PvEP3BiS', @RACEMASK_ALL, 10, 29279, 0, 0, 0, 0, 0, 0),
('Druid', 'Bear70PvEP3BiS', @RACEMASK_ALL, 11, 32266, 0, 0, 0, 0, 0, 0),
('Druid', 'Bear70PvEP3BiS', @RACEMASK_ALL, 12, 32501, 0, 0, 0, 0, 0, 0),
('Druid', 'Bear70PvEP3BiS', @RACEMASK_ALL, 13, 34578, 0, 0, 0, 0, 0, 0),
('Druid', 'Bear70PvEP3BiS', @RACEMASK_ALL, 14, 28660, 368, 0, 0, 0, 0, 0),
('Druid', 'Bear70PvEP3BiS', @RACEMASK_ALL, 15, 30883, 2673, 0, 0, 0, 0, 0),
('Druid', 'Bear70PvEP3BiS', @RACEMASK_ALL, 17, 32387, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Druid Restoration70PvEP3BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Druid', 'Restoration70PvEP3BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_healingtouch:30|t|r Use Restoration PvE P3 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Restoration70PvE', 'Restoration70PvE', 'TBC Phase 3', 203),
('Druid', 'Restoration70PvEP3BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_healingtouch:30|t|r Use Restoration PvE P3 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Restoration70PvE', 'Restoration70PvE', 'TBC Phase 3', 203);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Druid', 'Restoration70PvEP3BiS', @RACEMASK_ALL, 0, 31037, 3001, 2740, 2835, 0, 0, 0),
('Druid', 'Restoration70PvEP3BiS', @RACEMASK_ALL, 1, 30018, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration70PvEP3BiS', @RACEMASK_ALL, 2, 31047, 2993, 2740, 2740, 0, 0, 0),
('Druid', 'Restoration70PvEP3BiS', @RACEMASK_ALL, 4, 31041, 2661, 2734, 2740, 2740, 0, 0),
('Druid', 'Restoration70PvEP3BiS', @RACEMASK_ALL, 5, 30895, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration70PvEP3BiS', @RACEMASK_ALL, 6, 30912, 2748, 2740, 2740, 2740, 0, 0),
('Druid', 'Restoration70PvEP3BiS', @RACEMASK_ALL, 7, 30737, 2656, 2734, 2740, 0, 0, 0),
('Druid', 'Restoration70PvEP3BiS', @RACEMASK_ALL, 8, 32584, 2650, 0, 0, 0, 0, 0),
('Druid', 'Restoration70PvEP3BiS', @RACEMASK_ALL, 9, 32328, 2322, 2734, 2740, 0, 0, 0),
('Druid', 'Restoration70PvEP3BiS', @RACEMASK_ALL, 10, 32528, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration70PvEP3BiS', @RACEMASK_ALL, 11, 30110, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration70PvEP3BiS', @RACEMASK_ALL, 12, 29376, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration70PvEP3BiS', @RACEMASK_ALL, 13, 32496, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration70PvEP3BiS', @RACEMASK_ALL, 14, 32524, 2621, 0, 0, 0, 0, 0),
('Druid', 'Restoration70PvEP3BiS', @RACEMASK_ALL, 15, 32500, 2505, 0, 0, 0, 0, 0),
('Druid', 'Restoration70PvEP3BiS', @RACEMASK_ALL, 16, 30911, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration70PvEP3BiS', @RACEMASK_ALL, 17, 27886, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Hunter Beastmastery70PvEP3BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Hunter', 'Beastmastery70PvEP3BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_hunter_beasttaming:30|t|r Use Beastmastery PvE P3 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Beastmastery70PvE', 'Beastmastery70PvE', 'TBC Phase 3', 203),
('Hunter', 'Beastmastery70PvEP3BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_hunter_beasttaming:30|t|r Use Beastmastery PvE P3 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Beastmastery70PvE', 'Beastmastery70PvE', 'TBC Phase 3', 203);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Hunter', 'Beastmastery70PvEP3BiS', @RACEMASK_ALL, 0, 32235, 3003, 2829, 2764, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP3BiS', @RACEMASK_ALL, 1, 32591, 0, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP3BiS', @RACEMASK_ALL, 2, 31006, 2986, 2764, 2731, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP3BiS', @RACEMASK_ALL, 4, 31004, 2661, 2726, 2764, 2764, 0, 0),
('Hunter', 'Beastmastery70PvEP3BiS', @RACEMASK_ALL, 5, 30879, 0, 2726, 2764, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP3BiS', @RACEMASK_ALL, 6, 31005, 3012, 2726, 0, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP3BiS', @RACEMASK_ALL, 7, 32366, 2939, 2726, 2764, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP3BiS', @RACEMASK_ALL, 8, 32324, 2647, 2764, 0, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP3BiS', @RACEMASK_ALL, 9, 31001, 2564, 2726, 0, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP3BiS', @RACEMASK_ALL, 10, 32497, 0, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP3BiS', @RACEMASK_ALL, 11, 29301, 0, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP3BiS', @RACEMASK_ALL, 12, 28830, 0, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP3BiS', @RACEMASK_ALL, 13, 32505, 0, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP3BiS', @RACEMASK_ALL, 14, 29994, 368, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP3BiS', @RACEMASK_ALL, 15, 30901, 2670, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP3BiS', @RACEMASK_ALL, 16, 30881, 0, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP3BiS', @RACEMASK_ALL, 17, 30906, 2724, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Hunter Marksmanship70PvEP3BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Hunter', 'Marksmanship70PvEP3BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_marksmanship:30|t|r Use Marksmanship PvE P3 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Marksmanship70PvE', 'Marksmanship70PvE', 'TBC Phase 3', 203),
('Hunter', 'Marksmanship70PvEP3BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_marksmanship:30|t|r Use Marksmanship PvE P3 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Marksmanship70PvE', 'Marksmanship70PvE', 'TBC Phase 3', 203);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Hunter', 'Marksmanship70PvEP3BiS', @RACEMASK_ALL, 0, 32235, 3003, 2829, 2764, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP3BiS', @RACEMASK_ALL, 1, 32591, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP3BiS', @RACEMASK_ALL, 2, 31006, 2986, 2764, 2731, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP3BiS', @RACEMASK_ALL, 4, 31004, 2661, 2726, 2764, 2764, 0, 0),
('Hunter', 'Marksmanship70PvEP3BiS', @RACEMASK_ALL, 5, 30879, 0, 2726, 2764, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP3BiS', @RACEMASK_ALL, 6, 31005, 3012, 2726, 0, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP3BiS', @RACEMASK_ALL, 7, 32366, 2939, 2726, 2764, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP3BiS', @RACEMASK_ALL, 8, 32324, 2647, 2764, 0, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP3BiS', @RACEMASK_ALL, 9, 31001, 2564, 2726, 0, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP3BiS', @RACEMASK_ALL, 10, 32497, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP3BiS', @RACEMASK_ALL, 11, 29301, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP3BiS', @RACEMASK_ALL, 12, 28830, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP3BiS', @RACEMASK_ALL, 13, 32505, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP3BiS', @RACEMASK_ALL, 14, 29994, 368, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP3BiS', @RACEMASK_ALL, 15, 30901, 2670, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP3BiS', @RACEMASK_ALL, 16, 30881, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP3BiS', @RACEMASK_ALL, 17, 30906, 2724, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Hunter Survival70PvEP3BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Hunter', 'Survival70PvEP3BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_Hunter_swiftstrike:30|t|r Use Survival PvE P3 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Survival70PvE', 'Survival70PvE', 'TBC Phase 3', 203),
('Hunter', 'Survival70PvEP3BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_Hunter_swiftstrike:30|t|r Use Survival PvE P3 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Survival70PvE', 'Survival70PvE', 'TBC Phase 3', 203);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Hunter', 'Survival70PvEP3BiS', @RACEMASK_ALL, 0, 31003, 3003, 2726, 2829, 0, 0, 0),
('Hunter', 'Survival70PvEP3BiS', @RACEMASK_ALL, 1, 30017, 0, 0, 0, 0, 0, 0),
('Hunter', 'Survival70PvEP3BiS', @RACEMASK_ALL, 2, 31006, 2986, 2764, 2731, 0, 0, 0),
('Hunter', 'Survival70PvEP3BiS', @RACEMASK_ALL, 4, 31004, 2661, 2726, 2764, 2764, 0, 0),
('Hunter', 'Survival70PvEP3BiS', @RACEMASK_ALL, 5, 30879, 0, 2726, 2764, 0, 0, 0),
('Hunter', 'Survival70PvEP3BiS', @RACEMASK_ALL, 6, 30900, 3012, 2726, 2764, 2731, 0, 0),
('Hunter', 'Survival70PvEP3BiS', @RACEMASK_ALL, 7, 32366, 2939, 2726, 2764, 0, 0, 0),
('Hunter', 'Survival70PvEP3BiS', @RACEMASK_ALL, 8, 32324, 2647, 2764, 0, 0, 0, 0),
('Hunter', 'Survival70PvEP3BiS', @RACEMASK_ALL, 9, 31001, 2564, 2726, 0, 0, 0, 0),
('Hunter', 'Survival70PvEP3BiS', @RACEMASK_ALL, 10, 28791, 0, 0, 0, 0, 0, 0),
('Hunter', 'Survival70PvEP3BiS', @RACEMASK_ALL, 11, 29301, 0, 0, 0, 0, 0, 0),
('Hunter', 'Survival70PvEP3BiS', @RACEMASK_ALL, 12, 28830, 0, 0, 0, 0, 0, 0),
('Hunter', 'Survival70PvEP3BiS', @RACEMASK_ALL, 13, 32505, 0, 0, 0, 0, 0, 0),
('Hunter', 'Survival70PvEP3BiS', @RACEMASK_ALL, 14, 29994, 368, 0, 0, 0, 0, 0),
('Hunter', 'Survival70PvEP3BiS', @RACEMASK_ALL, 15, 30881, 2670, 0, 0, 0, 0, 0),
('Hunter', 'Survival70PvEP3BiS', @RACEMASK_ALL, 16, 29924, 0, 0, 0, 0, 0, 0),
('Hunter', 'Survival70PvEP3BiS', @RACEMASK_ALL, 17, 30906, 2724, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Mage Arcane70PvEP3BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Mage', 'Arcane70PvEP3BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_magicalsentry:30|t|r Use Arcane PvE P3 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Arcane70PvE', 'Arcane70PvE', 'TBC Phase 3', 203),
('Mage', 'Arcane70PvEP3BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_magicalsentry:30|t|r Use Arcane PvE P3 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Arcane70PvE', 'Arcane70PvE', 'TBC Phase 3', 203);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Mage', 'Arcane70PvEP3BiS', @RACEMASK_ALL, 0, 30206, 3002, 2828, 2736, 0, 0, 0),
('Mage', 'Arcane70PvEP3BiS', @RACEMASK_ALL, 1, 30015, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane70PvEP3BiS', @RACEMASK_ALL, 2, 30210, 2995, 2736, 2740, 0, 0, 0),
('Mage', 'Arcane70PvEP3BiS', @RACEMASK_ALL, 4, 30196, 2661, 2736, 2736, 2740, 0, 0),
('Mage', 'Arcane70PvEP3BiS', @RACEMASK_ALL, 5, 30888, 0, 2736, 2740, 0, 0, 0),
('Mage', 'Arcane70PvEP3BiS', @RACEMASK_ALL, 6, 31058, 2748, 2740, 0, 0, 0, 0),
('Mage', 'Arcane70PvEP3BiS', @RACEMASK_ALL, 7, 32239, 2656, 2736, 2740, 0, 0, 0),
('Mage', 'Arcane70PvEP3BiS', @RACEMASK_ALL, 8, 30870, 2650, 2736, 0, 0, 0, 0),
('Mage', 'Arcane70PvEP3BiS', @RACEMASK_ALL, 9, 30205, 2322, 0, 0, 0, 0, 0),
('Mage', 'Arcane70PvEP3BiS', @RACEMASK_ALL, 10, 29305, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane70PvEP3BiS', @RACEMASK_ALL, 11, 32527, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane70PvEP3BiS', @RACEMASK_ALL, 12, 30720, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane70PvEP3BiS', @RACEMASK_ALL, 13, 32483, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane70PvEP3BiS', @RACEMASK_ALL, 14, 32331, 2621, 0, 0, 0, 0, 0),
('Mage', 'Arcane70PvEP3BiS', @RACEMASK_ALL, 15, 32374, 2671, 0, 0, 0, 0, 0),
('Mage', 'Arcane70PvEP3BiS', @RACEMASK_ALL, 17, 28783, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Mage Fire70PvEP3BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Mage', 'Fire70PvEP3BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_fire_flamebolt:30|t|r Use Fire PvE P3 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Fire70PvE', 'Fire70PvE', 'TBC Phase 3', 203),
('Mage', 'Fire70PvEP3BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_fire_flamebolt:30|t|r Use Fire PvE P3 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Fire70PvE', 'Fire70PvE', 'TBC Phase 3', 203);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Mage', 'Fire70PvEP3BiS', @RACEMASK_ALL, 0, 32525, 3002, 2828, 2740, 0, 0, 0),
('Mage', 'Fire70PvEP3BiS', @RACEMASK_ALL, 1, 32589, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire70PvEP3BiS', @RACEMASK_ALL, 2, 31059, 2995, 2736, 2740, 0, 0, 0),
('Mage', 'Fire70PvEP3BiS', @RACEMASK_ALL, 4, 31057, 2661, 2736, 2736, 2740, 0, 0),
('Mage', 'Fire70PvEP3BiS', @RACEMASK_ALL, 5, 30038, 0, 2740, 2736, 0, 0, 0),
('Mage', 'Fire70PvEP3BiS', @RACEMASK_ALL, 6, 31058, 2748, 2740, 0, 0, 0, 0),
('Mage', 'Fire70PvEP3BiS', @RACEMASK_ALL, 7, 32239, 2656, 2736, 2740, 0, 0, 0),
('Mage', 'Fire70PvEP3BiS', @RACEMASK_ALL, 8, 32586, 2650, 0, 0, 0, 0, 0),
('Mage', 'Fire70PvEP3BiS', @RACEMASK_ALL, 9, 31055, 2322, 2736, 0, 0, 0, 0),
('Mage', 'Fire70PvEP3BiS', @RACEMASK_ALL, 10, 32527, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire70PvEP3BiS', @RACEMASK_ALL, 11, 32247, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire70PvEP3BiS', @RACEMASK_ALL, 12, 32483, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire70PvEP3BiS', @RACEMASK_ALL, 13, 30720, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire70PvEP3BiS', @RACEMASK_ALL, 14, 32524, 2621, 0, 0, 0, 0, 0),
('Mage', 'Fire70PvEP3BiS', @RACEMASK_ALL, 15, 32374, 2671, 0, 0, 0, 0, 0),
('Mage', 'Fire70PvEP3BiS', @RACEMASK_ALL, 17, 29982, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Mage Frost70PvEP3BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Mage', 'Frost70PvEP3BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_frost_frostbolt02:30|t|r Use Frost PvE P3 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Frost70PvE', 'Frost70PvE', 'TBC Phase 3', 203),
('Mage', 'Frost70PvEP3BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_frost_frostbolt02:30|t|r Use Frost PvE P3 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Frost70PvE', 'Frost70PvE', 'TBC Phase 3', 203);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Mage', 'Frost70PvEP3BiS', @RACEMASK_ALL, 0, 32525, 3002, 2828, 2740, 0, 0, 0),
('Mage', 'Frost70PvEP3BiS', @RACEMASK_ALL, 1, 30015, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost70PvEP3BiS', @RACEMASK_ALL, 2, 31059, 2995, 2736, 2740, 0, 0, 0),
('Mage', 'Frost70PvEP3BiS', @RACEMASK_ALL, 4, 31057, 2661, 2736, 2736, 2740, 0, 0),
('Mage', 'Frost70PvEP3BiS', @RACEMASK_ALL, 5, 32256, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost70PvEP3BiS', @RACEMASK_ALL, 6, 31058, 2748, 2740, 0, 0, 0, 0),
('Mage', 'Frost70PvEP3BiS', @RACEMASK_ALL, 7, 32239, 2656, 2736, 2740, 0, 0, 0),
('Mage', 'Frost70PvEP3BiS', @RACEMASK_ALL, 8, 32586, 2650, 0, 0, 0, 0, 0),
('Mage', 'Frost70PvEP3BiS', @RACEMASK_ALL, 9, 31055, 2322, 2736, 0, 0, 0, 0),
('Mage', 'Frost70PvEP3BiS', @RACEMASK_ALL, 10, 32527, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost70PvEP3BiS', @RACEMASK_ALL, 11, 32247, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost70PvEP3BiS', @RACEMASK_ALL, 12, 32483, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost70PvEP3BiS', @RACEMASK_ALL, 13, 32488, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost70PvEP3BiS', @RACEMASK_ALL, 14, 32524, 2621, 0, 0, 0, 0, 0),
('Mage', 'Frost70PvEP3BiS', @RACEMASK_ALL, 15, 32374, 2672, 0, 0, 0, 0, 0),
('Mage', 'Frost70PvEP3BiS', @RACEMASK_ALL, 17, 29982, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Paladin Holy70PvEP3BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Paladin', 'Holy70PvEP3BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Use Holy PvE P3 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Holy70PvE', 'Holy70PvE', 'TBC Phase 3', 203),
('Paladin', 'Holy70PvEP3BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Use Holy PvE P3 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Holy70PvE', 'Holy70PvE', 'TBC Phase 3', 203);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Paladin', 'Holy70PvEP3BiS', @RACEMASK_ALL, 0, 30988, 3001, 2734, 2835, 0, 0, 0),
('Paladin', 'Holy70PvEP3BiS', @RACEMASK_ALL, 1, 32370, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy70PvEP3BiS', @RACEMASK_ALL, 2, 30996, 2993, 2734, 2740, 0, 0, 0),
('Paladin', 'Holy70PvEP3BiS', @RACEMASK_ALL, 4, 30992, 2661, 2740, 2734, 2734, 0, 0),
('Paladin', 'Holy70PvEP3BiS', @RACEMASK_ALL, 5, 30897, 0, 2734, 2734, 0, 0, 0),
('Paladin', 'Holy70PvEP3BiS', @RACEMASK_ALL, 6, 30994, 2748, 2740, 0, 0, 0, 0),
('Paladin', 'Holy70PvEP3BiS', @RACEMASK_ALL, 7, 32243, 2656, 0, 0, 0, 0, 0),
('Paladin', 'Holy70PvEP3BiS', @RACEMASK_ALL, 8, 30862, 2650, 2734, 0, 0, 0, 0),
('Paladin', 'Holy70PvEP3BiS', @RACEMASK_ALL, 9, 30112, 2322, 2734, 2740, 0, 0, 0),
('Paladin', 'Holy70PvEP3BiS', @RACEMASK_ALL, 10, 32528, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy70PvEP3BiS', @RACEMASK_ALL, 11, 32238, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy70PvEP3BiS', @RACEMASK_ALL, 12, 32496, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy70PvEP3BiS', @RACEMASK_ALL, 13, 29376, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy70PvEP3BiS', @RACEMASK_ALL, 14, 32524, 2621, 0, 0, 0, 0, 0),
('Paladin', 'Holy70PvEP3BiS', @RACEMASK_ALL, 15, 32500, 2505, 0, 0, 0, 0, 0),
('Paladin', 'Holy70PvEP3BiS', @RACEMASK_ALL, 16, 32255, 907, 0, 0, 0, 0, 0),
('Paladin', 'Holy70PvEP3BiS', @RACEMASK_ALL, 17, 28592, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Paladin Protection70PvEP3BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Paladin', 'Protection70PvEP3BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_devotionaura:30|t|r Use Protection PvE P3 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Protection70PvE', 'Protection70PvE', 'TBC Phase 3', 203),
('Paladin', 'Protection70PvEP3BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_devotionaura:30|t|r Use Protection PvE P3 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Protection70PvE', 'Protection70PvE', 'TBC Phase 3', 203);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Paladin', 'Protection70PvEP3BiS', @RACEMASK_ALL, 0, 32521, 2999, 2833, 2725, 0, 0, 0),
('Paladin', 'Protection70PvEP3BiS', @RACEMASK_ALL, 1, 32362, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection70PvEP3BiS', @RACEMASK_ALL, 2, 30998, 2991, 2737, 2737, 0, 0, 0),
('Paladin', 'Protection70PvEP3BiS', @RACEMASK_ALL, 4, 30991, 2661, 2725, 2725, 2737, 0, 0),
('Paladin', 'Protection70PvEP3BiS', @RACEMASK_ALL, 5, 32342, 0, 2737, 2731, 0, 0, 0),
('Paladin', 'Protection70PvEP3BiS', @RACEMASK_ALL, 6, 30995, 3011, 2737, 0, 0, 0, 0),
('Paladin', 'Protection70PvEP3BiS', @RACEMASK_ALL, 7, 32245, 2940, 2725, 2737, 0, 0, 0),
('Paladin', 'Protection70PvEP3BiS', @RACEMASK_ALL, 8, 32279, 2648, 0, 0, 0, 0, 0),
('Paladin', 'Protection70PvEP3BiS', @RACEMASK_ALL, 9, 30985, 2564, 2725, 0, 0, 0, 0),
('Paladin', 'Protection70PvEP3BiS', @RACEMASK_ALL, 10, 30083, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection70PvEP3BiS', @RACEMASK_ALL, 11, 29172, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection70PvEP3BiS', @RACEMASK_ALL, 12, 31858, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection70PvEP3BiS', @RACEMASK_ALL, 13, 32501, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection70PvEP3BiS', @RACEMASK_ALL, 14, 34010, 368, 0, 0, 0, 0, 0),
('Paladin', 'Protection70PvEP3BiS', @RACEMASK_ALL, 15, 30910, 2673, 0, 0, 0, 0, 0),
('Paladin', 'Protection70PvEP3BiS', @RACEMASK_ALL, 16, 32375, 929, 0, 0, 0, 0, 0),
('Paladin', 'Protection70PvEP3BiS', @RACEMASK_ALL, 17, 29388, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Paladin Retribution70PvEP3BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Paladin', 'Retribution70PvEP3BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_auraoflight:30|t|r Use Retribution PvE P3 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Retribution70PvE', 'Retribution70PvE', 'TBC Phase 3', 203),
('Paladin', 'Retribution70PvEP3BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_auraoflight:30|t|r Use Retribution PvE P3 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Retribution70PvE', 'Retribution70PvE', 'TBC Phase 3', 203);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Paladin', 'Retribution70PvEP3BiS', @RACEMASK_ALL, 0, 32235, 3003, 2834, 2735, 0, 0, 0),
('Paladin', 'Retribution70PvEP3BiS', @RACEMASK_ALL, 1, 32260, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution70PvEP3BiS', @RACEMASK_ALL, 2, 30055, 2986, 2725, 0, 0, 0, 0),
('Paladin', 'Retribution70PvEP3BiS', @RACEMASK_ALL, 4, 28485, 2661, 2731, 2735, 2735, 0, 0),
('Paladin', 'Retribution70PvEP3BiS', @RACEMASK_ALL, 5, 30106, 0, 2725, 2731, 0, 0, 0),
('Paladin', 'Retribution70PvEP3BiS', @RACEMASK_ALL, 6, 30900, 3012, 2725, 2735, 2731, 0, 0),
('Paladin', 'Retribution70PvEP3BiS', @RACEMASK_ALL, 7, 32366, 2939, 2725, 2735, 0, 0, 0),
('Paladin', 'Retribution70PvEP3BiS', @RACEMASK_ALL, 8, 32574, 2647, 0, 0, 0, 0, 0),
('Paladin', 'Retribution70PvEP3BiS', @RACEMASK_ALL, 9, 29947, 684, 0, 0, 0, 0, 0),
('Paladin', 'Retribution70PvEP3BiS', @RACEMASK_ALL, 10, 30834, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution70PvEP3BiS', @RACEMASK_ALL, 11, 32526, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution70PvEP3BiS', @RACEMASK_ALL, 12, 28830, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution70PvEP3BiS', @RACEMASK_ALL, 13, 29383, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution70PvEP3BiS', @RACEMASK_ALL, 14, 32323, 368, 0, 0, 0, 0, 0),
('Paladin', 'Retribution70PvEP3BiS', @RACEMASK_ALL, 15, 32332, 2667, 0, 0, 0, 0, 0),
('Paladin', 'Retribution70PvEP3BiS', @RACEMASK_ALL, 17, 27484, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Priest Discipline70PvEP3BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Priest', 'Discipline70PvEP3BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_wordfortitude:30|t|r Use Discipline PvE P3 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Discipline70PvE', 'Discipline70PvE', 'TBC Phase 3', 203),
('Priest', 'Discipline70PvEP3BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_wordfortitude:30|t|r Use Discipline PvE P3 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Discipline70PvE', 'Discipline70PvE', 'TBC Phase 3', 203);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Priest', 'Discipline70PvEP3BiS', @RACEMASK_ALL, 0, 31063, 3001, 2835, 2740, 0, 0, 0),
('Priest', 'Discipline70PvEP3BiS', @RACEMASK_ALL, 1, 32370, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline70PvEP3BiS', @RACEMASK_ALL, 2, 31069, 2993, 2740, 2740, 0, 0, 0),
('Priest', 'Discipline70PvEP3BiS', @RACEMASK_ALL, 4, 31066, 2661, 2740, 2734, 2740, 0, 0),
('Priest', 'Discipline70PvEP3BiS', @RACEMASK_ALL, 5, 30895, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline70PvEP3BiS', @RACEMASK_ALL, 6, 30912, 2748, 2740, 2740, 2740, 0, 0),
('Priest', 'Discipline70PvEP3BiS', @RACEMASK_ALL, 7, 32609, 2656, 2734, 2740, 0, 0, 0),
('Priest', 'Discipline70PvEP3BiS', @RACEMASK_ALL, 8, 32584, 2650, 0, 0, 0, 0, 0),
('Priest', 'Discipline70PvEP3BiS', @RACEMASK_ALL, 9, 31060, 2322, 2740, 0, 0, 0, 0),
('Priest', 'Discipline70PvEP3BiS', @RACEMASK_ALL, 10, 32528, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline70PvEP3BiS', @RACEMASK_ALL, 11, 29309, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline70PvEP3BiS', @RACEMASK_ALL, 12, 29376, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline70PvEP3BiS', @RACEMASK_ALL, 13, 38288, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline70PvEP3BiS', @RACEMASK_ALL, 14, 32524, 2621, 0, 0, 0, 0, 0),
('Priest', 'Discipline70PvEP3BiS', @RACEMASK_ALL, 15, 32500, 2505, 0, 0, 0, 0, 0),
('Priest', 'Discipline70PvEP3BiS', @RACEMASK_ALL, 16, 30911, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline70PvEP3BiS', @RACEMASK_ALL, 17, 32363, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Priest Holy70PvEP3BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Priest', 'Holy70PvEP3BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Use Holy PvE P3 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Holy70PvE', 'Holy70PvE', 'TBC Phase 3', 203),
('Priest', 'Holy70PvEP3BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Use Holy PvE P3 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Holy70PvE', 'Holy70PvE', 'TBC Phase 3', 203);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Priest', 'Holy70PvEP3BiS', @RACEMASK_ALL, 0, 31063, 3001, 2835, 2740, 0, 0, 0),
('Priest', 'Holy70PvEP3BiS', @RACEMASK_ALL, 1, 32370, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy70PvEP3BiS', @RACEMASK_ALL, 2, 31069, 2993, 2740, 2740, 0, 0, 0),
('Priest', 'Holy70PvEP3BiS', @RACEMASK_ALL, 4, 31066, 2661, 2740, 2734, 2740, 0, 0),
('Priest', 'Holy70PvEP3BiS', @RACEMASK_ALL, 5, 30895, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy70PvEP3BiS', @RACEMASK_ALL, 6, 30912, 2748, 2740, 2740, 2740, 0, 0),
('Priest', 'Holy70PvEP3BiS', @RACEMASK_ALL, 7, 32609, 2656, 2734, 2740, 0, 0, 0),
('Priest', 'Holy70PvEP3BiS', @RACEMASK_ALL, 8, 32584, 2650, 0, 0, 0, 0, 0),
('Priest', 'Holy70PvEP3BiS', @RACEMASK_ALL, 9, 31060, 2322, 2740, 0, 0, 0, 0),
('Priest', 'Holy70PvEP3BiS', @RACEMASK_ALL, 10, 32528, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy70PvEP3BiS', @RACEMASK_ALL, 11, 29309, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy70PvEP3BiS', @RACEMASK_ALL, 12, 29376, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy70PvEP3BiS', @RACEMASK_ALL, 13, 38288, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy70PvEP3BiS', @RACEMASK_ALL, 14, 32524, 2621, 0, 0, 0, 0, 0),
('Priest', 'Holy70PvEP3BiS', @RACEMASK_ALL, 15, 32500, 2505, 0, 0, 0, 0, 0),
('Priest', 'Holy70PvEP3BiS', @RACEMASK_ALL, 16, 30911, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy70PvEP3BiS', @RACEMASK_ALL, 17, 32363, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Priest Shadow70PvEP3BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Priest', 'Shadow70PvEP3BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_shadow_shadowwordpain:30|t|r Use Shadow PvE P3 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Shadow70PvE', 'Shadow70PvE', 'TBC Phase 3', 203),
('Priest', 'Shadow70PvEP3BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_shadow_shadowwordpain:30|t|r Use Shadow PvE P3 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Shadow70PvE', 'Shadow70PvE', 'TBC Phase 3', 203);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Priest', 'Shadow70PvEP3BiS', @RACEMASK_ALL, 0, 31064, 3002, 2828, 2740, 0, 0, 0),
('Priest', 'Shadow70PvEP3BiS', @RACEMASK_ALL, 1, 32349, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow70PvEP3BiS', @RACEMASK_ALL, 2, 31070, 2995, 2736, 2740, 0, 0, 0),
('Priest', 'Shadow70PvEP3BiS', @RACEMASK_ALL, 4, 31065, 2661, 2736, 2736, 2740, 0, 0),
('Priest', 'Shadow70PvEP3BiS', @RACEMASK_ALL, 5, 32256, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow70PvEP3BiS', @RACEMASK_ALL, 6, 30916, 2748, 2736, 2736, 2740, 0, 0),
('Priest', 'Shadow70PvEP3BiS', @RACEMASK_ALL, 7, 32239, 2656, 2736, 2740, 0, 0, 0),
('Priest', 'Shadow70PvEP3BiS', @RACEMASK_ALL, 8, 32586, 2650, 0, 0, 0, 0, 0),
('Priest', 'Shadow70PvEP3BiS', @RACEMASK_ALL, 9, 31061, 2322, 2736, 0, 0, 0, 0),
('Priest', 'Shadow70PvEP3BiS', @RACEMASK_ALL, 10, 32527, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow70PvEP3BiS', @RACEMASK_ALL, 11, 32528, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow70PvEP3BiS', @RACEMASK_ALL, 12, 32483, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow70PvEP3BiS', @RACEMASK_ALL, 13, 31856, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow70PvEP3BiS', @RACEMASK_ALL, 14, 32590, 2621, 0, 0, 0, 0, 0),
('Priest', 'Shadow70PvEP3BiS', @RACEMASK_ALL, 15, 32374, 2672, 0, 0, 0, 0, 0),
('Priest', 'Shadow70PvEP3BiS', @RACEMASK_ALL, 17, 29982, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Rogue Assassination70PvEP3BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Rogue', 'Assassination70PvEP3BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_rogue_eviscerate:30|t|r Use Assassination PvE P3 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Assassination70PvE', 'Assassination70PvE', 'TBC Phase 3', 203),
('Rogue', 'Assassination70PvEP3BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_rogue_eviscerate:30|t|r Use Assassination PvE P3 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Assassination70PvE', 'Assassination70PvE', 'TBC Phase 3', 203);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Rogue', 'Assassination70PvEP3BiS', @RACEMASK_ALL, 0, 32235, 3003, 2829, 2735, 0, 0, 0),
('Rogue', 'Assassination70PvEP3BiS', @RACEMASK_ALL, 1, 32260, 0, 0, 0, 0, 0, 0),
('Rogue', 'Assassination70PvEP3BiS', @RACEMASK_ALL, 2, 31030, 2986, 2735, 2731, 0, 0, 0),
('Rogue', 'Assassination70PvEP3BiS', @RACEMASK_ALL, 4, 31028, 2661, 2735, 2735, 2731, 0, 0),
('Rogue', 'Assassination70PvEP3BiS', @RACEMASK_ALL, 5, 30106, 0, 2726, 2731, 0, 0, 0),
('Rogue', 'Assassination70PvEP3BiS', @RACEMASK_ALL, 6, 31029, 3012, 2731, 0, 0, 0, 0),
('Rogue', 'Assassination70PvEP3BiS', @RACEMASK_ALL, 7, 32366, 2939, 2726, 2735, 0, 0, 0),
('Rogue', 'Assassination70PvEP3BiS', @RACEMASK_ALL, 8, 32324, 2647, 2735, 0, 0, 0, 0),
('Rogue', 'Assassination70PvEP3BiS', @RACEMASK_ALL, 9, 31026, 2564, 2731, 0, 0, 0, 0),
('Rogue', 'Assassination70PvEP3BiS', @RACEMASK_ALL, 10, 32497, 0, 0, 0, 0, 0, 0),
('Rogue', 'Assassination70PvEP3BiS', @RACEMASK_ALL, 11, 29301, 0, 0, 0, 0, 0, 0),
('Rogue', 'Assassination70PvEP3BiS', @RACEMASK_ALL, 12, 28830, 0, 0, 0, 0, 0, 0),
('Rogue', 'Assassination70PvEP3BiS', @RACEMASK_ALL, 13, 30450, 0, 0, 0, 0, 0, 0),
('Rogue', 'Assassination70PvEP3BiS', @RACEMASK_ALL, 14, 32323, 368, 0, 0, 0, 0, 0),
('Rogue', 'Assassination70PvEP3BiS', @RACEMASK_ALL, 15, 32837, 2673, 0, 0, 0, 0, 0),
('Rogue', 'Assassination70PvEP3BiS', @RACEMASK_ALL, 16, 32838, 2673, 0, 0, 0, 0, 0),
('Rogue', 'Assassination70PvEP3BiS', @RACEMASK_ALL, 17, 29949, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Rogue Combat70PvEP3BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Rogue', 'Combat70PvEP3BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_backstab:30|t|r Use Combat PvE P3 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Combat70PvE', 'Combat70PvE', 'TBC Phase 3', 203),
('Rogue', 'Combat70PvEP3BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_backstab:30|t|r Use Combat PvE P3 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Combat70PvE', 'Combat70PvE', 'TBC Phase 3', 203);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Rogue', 'Combat70PvEP3BiS', @RACEMASK_ALL, 0, 32235, 3003, 2829, 2735, 0, 0, 0),
('Rogue', 'Combat70PvEP3BiS', @RACEMASK_ALL, 1, 32260, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat70PvEP3BiS', @RACEMASK_ALL, 2, 31030, 2986, 2735, 2731, 0, 0, 0),
('Rogue', 'Combat70PvEP3BiS', @RACEMASK_ALL, 4, 31028, 2661, 2735, 2735, 2731, 0, 0),
('Rogue', 'Combat70PvEP3BiS', @RACEMASK_ALL, 5, 30106, 0, 2726, 2731, 0, 0, 0),
('Rogue', 'Combat70PvEP3BiS', @RACEMASK_ALL, 6, 31029, 3012, 2731, 0, 0, 0, 0),
('Rogue', 'Combat70PvEP3BiS', @RACEMASK_ALL, 7, 32366, 2939, 2726, 2735, 0, 0, 0),
('Rogue', 'Combat70PvEP3BiS', @RACEMASK_ALL, 8, 32324, 2647, 2735, 0, 0, 0, 0),
('Rogue', 'Combat70PvEP3BiS', @RACEMASK_ALL, 9, 31026, 2564, 2731, 0, 0, 0, 0),
('Rogue', 'Combat70PvEP3BiS', @RACEMASK_ALL, 10, 32497, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat70PvEP3BiS', @RACEMASK_ALL, 11, 29301, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat70PvEP3BiS', @RACEMASK_ALL, 12, 28830, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat70PvEP3BiS', @RACEMASK_ALL, 13, 30450, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat70PvEP3BiS', @RACEMASK_ALL, 14, 32323, 368, 0, 0, 0, 0, 0),
('Rogue', 'Combat70PvEP3BiS', @RACEMASK_ALL, 15, 32837, 2673, 0, 0, 0, 0, 0),
('Rogue', 'Combat70PvEP3BiS', @RACEMASK_ALL, 16, 32838, 2673, 0, 0, 0, 0, 0),
('Rogue', 'Combat70PvEP3BiS', @RACEMASK_ALL, 17, 29949, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Shaman Elemental70PvEP3BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Shaman', 'Elemental70PvEP3BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_lightning:30|t|r Use Elemental PvE P3 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Elemental70PvE', 'Elemental70PvE', 'TBC Phase 3', 203),
('Shaman', 'Elemental70PvEP3BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_lightning:30|t|r Use Elemental PvE P3 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Elemental70PvE', 'Elemental70PvE', 'TBC Phase 3', 203);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Shaman', 'Elemental70PvEP3BiS', @RACEMASK_ALL, 0, 31014, 3002, 2828, 2740, 0, 0, 0),
('Shaman', 'Elemental70PvEP3BiS', @RACEMASK_ALL, 1, 30015, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental70PvEP3BiS', @RACEMASK_ALL, 2, 31023, 2995, 2740, 2736, 0, 0, 0),
('Shaman', 'Elemental70PvEP3BiS', @RACEMASK_ALL, 4, 31017, 2661, 2740, 2736, 2736, 0, 0),
('Shaman', 'Elemental70PvEP3BiS', @RACEMASK_ALL, 5, 32276, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental70PvEP3BiS', @RACEMASK_ALL, 6, 30916, 2748, 2736, 2736, 2740, 0, 0),
('Shaman', 'Elemental70PvEP3BiS', @RACEMASK_ALL, 7, 32239, 2656, 2736, 2740, 0, 0, 0),
('Shaman', 'Elemental70PvEP3BiS', @RACEMASK_ALL, 8, 32586, 2650, 0, 0, 0, 0, 0),
('Shaman', 'Elemental70PvEP3BiS', @RACEMASK_ALL, 9, 31008, 2322, 2736, 0, 0, 0, 0),
('Shaman', 'Elemental70PvEP3BiS', @RACEMASK_ALL, 10, 32527, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental70PvEP3BiS', @RACEMASK_ALL, 11, 29305, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental70PvEP3BiS', @RACEMASK_ALL, 12, 23207, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental70PvEP3BiS', @RACEMASK_ALL, 13, 32483, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental70PvEP3BiS', @RACEMASK_ALL, 14, 32524, 2621, 0, 0, 0, 0, 0),
('Shaman', 'Elemental70PvEP3BiS', @RACEMASK_ALL, 15, 32374, 2671, 0, 0, 0, 0, 0),
('Shaman', 'Elemental70PvEP3BiS', @RACEMASK_ALL, 17, 32330, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Shaman Enhancement70PvEP3BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Shaman', 'Enhancement70PvEP3BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_lightningshield:30|t|r Use Enhancement PvE P3 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Enhancement70PvE', 'Enhancement70PvE', 'TBC Phase 3', 203),
('Shaman', 'Enhancement70PvEP3BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_lightningshield:30|t|r Use Enhancement PvE P3 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Enhancement70PvE', 'Enhancement70PvE', 'TBC Phase 3', 203);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Shaman', 'Enhancement70PvEP3BiS', @RACEMASK_ALL, 0, 32235, 3003, 2829, 2735, 0, 0, 0),
('Shaman', 'Enhancement70PvEP3BiS', @RACEMASK_ALL, 1, 32260, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement70PvEP3BiS', @RACEMASK_ALL, 2, 32575, 2986, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement70PvEP3BiS', @RACEMASK_ALL, 4, 30905, 2661, 2731, 2726, 2735, 0, 0),
('Shaman', 'Enhancement70PvEP3BiS', @RACEMASK_ALL, 5, 30106, 0, 2726, 2731, 0, 0, 0),
('Shaman', 'Enhancement70PvEP3BiS', @RACEMASK_ALL, 6, 30900, 3012, 2726, 2735, 2731, 0, 0),
('Shaman', 'Enhancement70PvEP3BiS', @RACEMASK_ALL, 7, 32510, 2939, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement70PvEP3BiS', @RACEMASK_ALL, 8, 32574, 2647, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement70PvEP3BiS', @RACEMASK_ALL, 9, 32234, 2564, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement70PvEP3BiS', @RACEMASK_ALL, 10, 32497, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement70PvEP3BiS', @RACEMASK_ALL, 11, 29301, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement70PvEP3BiS', @RACEMASK_ALL, 12, 28830, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement70PvEP3BiS', @RACEMASK_ALL, 13, 32505, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement70PvEP3BiS', @RACEMASK_ALL, 14, 32323, 368, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement70PvEP3BiS', @RACEMASK_ALL, 15, 33669, 2673, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement70PvEP3BiS', @RACEMASK_ALL, 16, 32262, 2673, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement70PvEP3BiS', @RACEMASK_ALL, 17, 27815, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Shaman Restoration70PvEP3BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Shaman', 'Restoration70PvEP3BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_magicimmunity:30|t|r Use Restoration PvE P3 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Restoration70PvE', 'Restoration70PvE', 'TBC Phase 3', 203),
('Shaman', 'Restoration70PvEP3BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_magicimmunity:30|t|r Use Restoration PvE P3 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Restoration70PvE', 'Restoration70PvE', 'TBC Phase 3', 203);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Shaman', 'Restoration70PvEP3BiS', @RACEMASK_ALL, 0, 31012, 3001, 2835, 2734, 0, 0, 0),
('Shaman', 'Restoration70PvEP3BiS', @RACEMASK_ALL, 1, 32370, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration70PvEP3BiS', @RACEMASK_ALL, 2, 31022, 2993, 2740, 2734, 0, 0, 0),
('Shaman', 'Restoration70PvEP3BiS', @RACEMASK_ALL, 4, 31016, 2661, 2740, 2740, 2734, 0, 0),
('Shaman', 'Restoration70PvEP3BiS', @RACEMASK_ALL, 5, 32258, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration70PvEP3BiS', @RACEMASK_ALL, 6, 31019, 2748, 2728, 0, 0, 0, 0),
('Shaman', 'Restoration70PvEP3BiS', @RACEMASK_ALL, 7, 32609, 2656, 2734, 2740, 0, 0, 0),
('Shaman', 'Restoration70PvEP3BiS', @RACEMASK_ALL, 8, 32577, 2650, 0, 0, 0, 0, 0),
('Shaman', 'Restoration70PvEP3BiS', @RACEMASK_ALL, 9, 32328, 2322, 2734, 2740, 0, 0, 0),
('Shaman', 'Restoration70PvEP3BiS', @RACEMASK_ALL, 10, 32528, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration70PvEP3BiS', @RACEMASK_ALL, 11, 29309, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration70PvEP3BiS', @RACEMASK_ALL, 12, 32496, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration70PvEP3BiS', @RACEMASK_ALL, 13, 29376, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration70PvEP3BiS', @RACEMASK_ALL, 14, 32524, 2621, 0, 0, 0, 0, 0),
('Shaman', 'Restoration70PvEP3BiS', @RACEMASK_ALL, 15, 32500, 2505, 0, 0, 0, 0, 0),
('Shaman', 'Restoration70PvEP3BiS', @RACEMASK_ALL, 16, 30882, 907, 2728, 0, 0, 0, 0),
('Shaman', 'Restoration70PvEP3BiS', @RACEMASK_ALL, 17, 28523, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warlock Affliction70PvEP3BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Warlock', 'Affliction70PvEP3BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_shadow_deathcoil:30|t|r Use Affliction PvE P3 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Affliction70PvE', 'Affliction70PvE', 'TBC Phase 3', 203),
('Warlock', 'Affliction70PvEP3BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_shadow_deathcoil:30|t|r Use Affliction PvE P3 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Affliction70PvE', 'Affliction70PvE', 'TBC Phase 3', 203);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warlock', 'Affliction70PvEP3BiS', @RACEMASK_ALL, 0, 31051, 3002, 2828, 2736, 0, 0, 0),
('Warlock', 'Affliction70PvEP3BiS', @RACEMASK_ALL, 1, 32349, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction70PvEP3BiS', @RACEMASK_ALL, 2, 31054, 2995, 2740, 2736, 0, 0, 0),
('Warlock', 'Affliction70PvEP3BiS', @RACEMASK_ALL, 4, 30107, 2661, 2736, 2736, 2740, 0, 0),
('Warlock', 'Affliction70PvEP3BiS', @RACEMASK_ALL, 5, 30038, 0, 2740, 2736, 0, 0, 0),
('Warlock', 'Affliction70PvEP3BiS', @RACEMASK_ALL, 6, 30916, 2748, 2736, 2736, 2740, 0, 0),
('Warlock', 'Affliction70PvEP3BiS', @RACEMASK_ALL, 7, 32239, 2656, 2736, 2740, 0, 0, 0),
('Warlock', 'Affliction70PvEP3BiS', @RACEMASK_ALL, 8, 32586, 2650, 0, 0, 0, 0, 0),
('Warlock', 'Affliction70PvEP3BiS', @RACEMASK_ALL, 9, 31050, 2322, 2736, 0, 0, 0, 0),
('Warlock', 'Affliction70PvEP3BiS', @RACEMASK_ALL, 10, 32527, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction70PvEP3BiS', @RACEMASK_ALL, 11, 32247, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction70PvEP3BiS', @RACEMASK_ALL, 12, 27683, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction70PvEP3BiS', @RACEMASK_ALL, 13, 29370, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction70PvEP3BiS', @RACEMASK_ALL, 14, 32590, 2621, 0, 0, 0, 0, 0),
('Warlock', 'Affliction70PvEP3BiS', @RACEMASK_ALL, 15, 30910, 2672, 0, 0, 0, 0, 0),
('Warlock', 'Affliction70PvEP3BiS', @RACEMASK_ALL, 16, 30872, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction70PvEP3BiS', @RACEMASK_ALL, 17, 29982, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warlock Demonology70PvEP3BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Warlock', 'Demonology70PvEP3BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_shadow_metamorphosis:30|t|r Use Demonology PvE P3 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Demonology70PvE', 'Demonology70PvE', 'TBC Phase 3', 203),
('Warlock', 'Demonology70PvEP3BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_shadow_metamorphosis:30|t|r Use Demonology PvE P3 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Demonology70PvE', 'Demonology70PvE', 'TBC Phase 3', 203);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warlock', 'Demonology70PvEP3BiS', @RACEMASK_ALL, 0, 31051, 3002, 2828, 2736, 0, 0, 0),
('Warlock', 'Demonology70PvEP3BiS', @RACEMASK_ALL, 1, 32349, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology70PvEP3BiS', @RACEMASK_ALL, 2, 31054, 2995, 2740, 2736, 0, 0, 0),
('Warlock', 'Demonology70PvEP3BiS', @RACEMASK_ALL, 4, 30107, 2661, 2736, 2736, 2740, 0, 0),
('Warlock', 'Demonology70PvEP3BiS', @RACEMASK_ALL, 5, 30038, 0, 2740, 2736, 0, 0, 0),
('Warlock', 'Demonology70PvEP3BiS', @RACEMASK_ALL, 6, 30916, 2748, 2736, 2736, 2740, 0, 0),
('Warlock', 'Demonology70PvEP3BiS', @RACEMASK_ALL, 7, 32239, 2656, 2736, 2740, 0, 0, 0),
('Warlock', 'Demonology70PvEP3BiS', @RACEMASK_ALL, 8, 32586, 2650, 0, 0, 0, 0, 0),
('Warlock', 'Demonology70PvEP3BiS', @RACEMASK_ALL, 9, 31050, 2322, 2736, 0, 0, 0, 0),
('Warlock', 'Demonology70PvEP3BiS', @RACEMASK_ALL, 10, 32527, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology70PvEP3BiS', @RACEMASK_ALL, 11, 32247, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology70PvEP3BiS', @RACEMASK_ALL, 12, 32483, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology70PvEP3BiS', @RACEMASK_ALL, 13, 27683, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology70PvEP3BiS', @RACEMASK_ALL, 14, 32590, 2621, 0, 0, 0, 0, 0),
('Warlock', 'Demonology70PvEP3BiS', @RACEMASK_ALL, 15, 30910, 2672, 0, 0, 0, 0, 0),
('Warlock', 'Demonology70PvEP3BiS', @RACEMASK_ALL, 16, 30872, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology70PvEP3BiS', @RACEMASK_ALL, 17, 29982, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warlock Destruction70PvEP3BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Warlock', 'Destruction70PvEP3BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_shadow_rainoffire:30|t|r Use Destruction PvE P3 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Destruction70PvE', 'Destruction70PvE', 'TBC Phase 3', 203),
('Warlock', 'Destruction70PvEP3BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_shadow_rainoffire:30|t|r Use Destruction PvE P3 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Destruction70PvE', 'Destruction70PvE', 'TBC Phase 3', 203);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warlock', 'Destruction70PvEP3BiS', @RACEMASK_ALL, 0, 31051, 3002, 2828, 2736, 0, 0, 0),
('Warlock', 'Destruction70PvEP3BiS', @RACEMASK_ALL, 1, 32349, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction70PvEP3BiS', @RACEMASK_ALL, 2, 31054, 2995, 2740, 2736, 0, 0, 0),
('Warlock', 'Destruction70PvEP3BiS', @RACEMASK_ALL, 4, 30107, 2661, 2736, 2736, 2740, 0, 0),
('Warlock', 'Destruction70PvEP3BiS', @RACEMASK_ALL, 5, 30038, 0, 2740, 2736, 0, 0, 0),
('Warlock', 'Destruction70PvEP3BiS', @RACEMASK_ALL, 6, 30916, 2748, 2736, 2736, 2740, 0, 0),
('Warlock', 'Destruction70PvEP3BiS', @RACEMASK_ALL, 7, 32239, 2656, 2736, 2740, 0, 0, 0),
('Warlock', 'Destruction70PvEP3BiS', @RACEMASK_ALL, 8, 32586, 2650, 0, 0, 0, 0, 0),
('Warlock', 'Destruction70PvEP3BiS', @RACEMASK_ALL, 9, 31050, 2322, 2736, 0, 0, 0, 0),
('Warlock', 'Destruction70PvEP3BiS', @RACEMASK_ALL, 10, 32527, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction70PvEP3BiS', @RACEMASK_ALL, 11, 32247, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction70PvEP3BiS', @RACEMASK_ALL, 12, 27683, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction70PvEP3BiS', @RACEMASK_ALL, 13, 29370, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction70PvEP3BiS', @RACEMASK_ALL, 14, 32590, 2621, 0, 0, 0, 0, 0),
('Warlock', 'Destruction70PvEP3BiS', @RACEMASK_ALL, 15, 30910, 2671, 0, 0, 0, 0, 0),
('Warlock', 'Destruction70PvEP3BiS', @RACEMASK_ALL, 16, 30872, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction70PvEP3BiS', @RACEMASK_ALL, 17, 29982, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warrior Arms70PvEP3BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Warrior', 'Arms70PvEP3BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_rogue_eviscerate:30|t|r Use Arms PvE P3 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Arms70PvE', 'Arms70PvE', 'TBC Phase 3', 203),
('Warrior', 'Arms70PvEP3BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_rogue_eviscerate:30|t|r Use Arms PvE P3 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Arms70PvE', 'Arms70PvE', 'TBC Phase 3', 203);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warrior', 'Arms70PvEP3BiS', @RACEMASK_ALL, 0, 30972, 3003, 2834, 2725, 0, 0, 0),
('Warrior', 'Arms70PvEP3BiS', @RACEMASK_ALL, 1, 32591, 0, 0, 0, 0, 0, 0),
('Warrior', 'Arms70PvEP3BiS', @RACEMASK_ALL, 2, 30979, 2986, 2735, 2731, 0, 0, 0),
('Warrior', 'Arms70PvEP3BiS', @RACEMASK_ALL, 4, 30975, 2661, 2725, 2731, 2731, 0, 0),
('Warrior', 'Arms70PvEP3BiS', @RACEMASK_ALL, 5, 30106, 0, 2725, 2731, 0, 0, 0),
('Warrior', 'Arms70PvEP3BiS', @RACEMASK_ALL, 6, 32341, 3012, 0, 0, 0, 0, 0),
('Warrior', 'Arms70PvEP3BiS', @RACEMASK_ALL, 7, 32345, 2939, 2735, 2735, 0, 0, 0),
('Warrior', 'Arms70PvEP3BiS', @RACEMASK_ALL, 8, 30863, 2647, 2735, 0, 0, 0, 0),
('Warrior', 'Arms70PvEP3BiS', @RACEMASK_ALL, 9, 30969, 684, 2725, 0, 0, 0, 0),
('Warrior', 'Arms70PvEP3BiS', @RACEMASK_ALL, 10, 32497, 0, 0, 0, 0, 0, 0),
('Warrior', 'Arms70PvEP3BiS', @RACEMASK_ALL, 11, 32335, 0, 0, 0, 0, 0, 0),
('Warrior', 'Arms70PvEP3BiS', @RACEMASK_ALL, 12, 28830, 0, 0, 0, 0, 0, 0),
('Warrior', 'Arms70PvEP3BiS', @RACEMASK_ALL, 13, 21670, 0, 0, 0, 0, 0, 0),
('Warrior', 'Arms70PvEP3BiS', @RACEMASK_ALL, 14, 33122, 368, 2731, 0, 0, 0, 0),
('Warrior', 'Arms70PvEP3BiS', @RACEMASK_ALL, 15, 30902, 2667, 0, 0, 0, 0, 0),
('Warrior', 'Arms70PvEP3BiS', @RACEMASK_ALL, 17, 30724, 0, 2725, 2725, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warrior Fury70PvEP3BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Warrior', 'Fury70PvEP3BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_warrior_innerrage:30|t|r Use Fury PvE P3 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Fury70PvE', 'Fury70PvE', 'TBC Phase 3', 203),
('Warrior', 'Fury70PvEP3BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_warrior_innerrage:30|t|r Use Fury PvE P3 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Fury70PvE', 'Fury70PvE', 'TBC Phase 3', 203);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warrior', 'Fury70PvEP3BiS', @RACEMASK_ALL, 0, 32235, 3003, 2834, 2735, 0, 0, 0),
('Warrior', 'Fury70PvEP3BiS', @RACEMASK_ALL, 1, 32260, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury70PvEP3BiS', @RACEMASK_ALL, 2, 30979, 2986, 2735, 2731, 0, 0, 0),
('Warrior', 'Fury70PvEP3BiS', @RACEMASK_ALL, 4, 30975, 2661, 2725, 2731, 2731, 0, 0),
('Warrior', 'Fury70PvEP3BiS', @RACEMASK_ALL, 5, 30106, 0, 2725, 2731, 0, 0, 0),
('Warrior', 'Fury70PvEP3BiS', @RACEMASK_ALL, 6, 32341, 3012, 0, 0, 0, 0, 0),
('Warrior', 'Fury70PvEP3BiS', @RACEMASK_ALL, 7, 32345, 2939, 2735, 2735, 0, 0, 0),
('Warrior', 'Fury70PvEP3BiS', @RACEMASK_ALL, 8, 30863, 2647, 2735, 0, 0, 0, 0),
('Warrior', 'Fury70PvEP3BiS', @RACEMASK_ALL, 9, 32278, 684, 2725, 2725, 0, 0, 0),
('Warrior', 'Fury70PvEP3BiS', @RACEMASK_ALL, 10, 32497, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury70PvEP3BiS', @RACEMASK_ALL, 11, 32335, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury70PvEP3BiS', @RACEMASK_ALL, 12, 28830, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury70PvEP3BiS', @RACEMASK_ALL, 13, 21670, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury70PvEP3BiS', @RACEMASK_ALL, 14, 32323, 368, 0, 0, 0, 0, 0),
('Warrior', 'Fury70PvEP3BiS', @RACEMASK_ALL, 15, 32837, 2673, 0, 0, 0, 0, 0),
('Warrior', 'Fury70PvEP3BiS', @RACEMASK_ALL, 16, 32838, 2673, 0, 0, 0, 0, 0),
('Warrior', 'Fury70PvEP3BiS', @RACEMASK_ALL, 17, 30724, 0, 2725, 2725, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warrior Protection70PvEP3BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Warrior', 'Protection70PvEP3BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_warrior_defensivestance:30|t|r Use Protection PvE P3 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Protection70PvE', 'Protection70PvE', 'TBC Phase 3', 203),
('Warrior', 'Protection70PvEP3BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_warrior_defensivestance:30|t|r Use Protection PvE P3 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Protection70PvE', 'Protection70PvE', 'TBC Phase 3', 203);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warrior', 'Protection70PvEP3BiS', @RACEMASK_ALL, 0, 33730, 2999, 2833, 2737, 0, 0, 0),
('Warrior', 'Protection70PvEP3BiS', @RACEMASK_ALL, 1, 32362, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection70PvEP3BiS', @RACEMASK_ALL, 2, 30979, 2991, 2737, 2731, 0, 0, 0),
('Warrior', 'Protection70PvEP3BiS', @RACEMASK_ALL, 4, 33728, 2661, 2725, 2725, 2737, 0, 0),
('Warrior', 'Protection70PvEP3BiS', @RACEMASK_ALL, 5, 30106, 0, 2725, 2731, 0, 0, 0),
('Warrior', 'Protection70PvEP3BiS', @RACEMASK_ALL, 6, 33731, 3011, 0, 0, 0, 0, 0),
('Warrior', 'Protection70PvEP3BiS', @RACEMASK_ALL, 7, 33812, 2940, 0, 0, 0, 0, 0),
('Warrior', 'Protection70PvEP3BiS', @RACEMASK_ALL, 8, 33813, 2648, 2737, 0, 0, 0, 0),
('Warrior', 'Protection70PvEP3BiS', @RACEMASK_ALL, 9, 32280, 2564, 0, 0, 0, 0, 0),
('Warrior', 'Protection70PvEP3BiS', @RACEMASK_ALL, 10, 30834, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection70PvEP3BiS', @RACEMASK_ALL, 11, 29296, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection70PvEP3BiS', @RACEMASK_ALL, 12, 31858, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection70PvEP3BiS', @RACEMASK_ALL, 13, 31859, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection70PvEP3BiS', @RACEMASK_ALL, 14, 34010, 368, 0, 0, 0, 0, 0),
('Warrior', 'Protection70PvEP3BiS', @RACEMASK_ALL, 15, 32254, 2673, 0, 0, 0, 0, 0),
('Warrior', 'Protection70PvEP3BiS', @RACEMASK_ALL, 16, 32375, 929, 0, 0, 0, 0, 0),
('Warrior', 'Protection70PvEP3BiS', @RACEMASK_ALL, 17, 32253, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Death Knight Blood70PvEP3BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Death Knight', 'Blood70PvEP3BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_deathknight_bloodpresence:30|t|r Use Blood PvE P3 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Blood70PvE', 'Blood70PvE', 'TBC Phase 3', 203),
('Death Knight', 'Blood70PvEP3BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_deathknight_bloodpresence:30|t|r Use Blood PvE P3 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Blood70PvE', 'Blood70PvE', 'TBC Phase 3', 203);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Death Knight', 'Blood70PvEP3BiS', @RACEMASK_ALL, 0, 32521, 2999, 2833, 2725, 0, 0, 0),
('Death Knight', 'Blood70PvEP3BiS', @RACEMASK_ALL, 1, 32362, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Blood70PvEP3BiS', @RACEMASK_ALL, 2, 32250, 2991, 0, 0, 0, 0, 0),
('Death Knight', 'Blood70PvEP3BiS', @RACEMASK_ALL, 4, 30896, 2661, 0, 0, 0, 0, 0),
('Death Knight', 'Blood70PvEP3BiS', @RACEMASK_ALL, 5, 30106, 0, 2725, 2731, 0, 0, 0),
('Death Knight', 'Blood70PvEP3BiS', @RACEMASK_ALL, 6, 32263, 3011, 2737, 2737, 2725, 0, 0),
('Death Knight', 'Blood70PvEP3BiS', @RACEMASK_ALL, 7, 32345, 2940, 2737, 2737, 0, 0, 0),
('Death Knight', 'Blood70PvEP3BiS', @RACEMASK_ALL, 8, 32232, 2648, 0, 0, 0, 0, 0),
('Death Knight', 'Blood70PvEP3BiS', @RACEMASK_ALL, 9, 32280, 2564, 0, 0, 0, 0, 0),
('Death Knight', 'Blood70PvEP3BiS', @RACEMASK_ALL, 10, 30834, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Blood70PvEP3BiS', @RACEMASK_ALL, 11, 29296, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Blood70PvEP3BiS', @RACEMASK_ALL, 12, 31858, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Blood70PvEP3BiS', @RACEMASK_ALL, 13, 31859, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Blood70PvEP3BiS', @RACEMASK_ALL, 14, 34010, 368, 0, 0, 0, 0, 0),
('Death Knight', 'Blood70PvEP3BiS', @RACEMASK_ALL, 15, 30902, 2673, 0, 0, 0, 0, 0),
('Death Knight', 'Blood70PvEP3BiS', @RACEMASK_ALL, 17, 39208, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Death Knight Frost70PvEP3BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Death Knight', 'Frost70PvEP3BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_deathknight_frostpresence:30|t|r Use Frost PvE P3 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Frost70PvE', 'Frost70PvE', 'TBC Phase 3', 203),
('Death Knight', 'Frost70PvEP3BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_deathknight_frostpresence:30|t|r Use Frost PvE P3 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Frost70PvE', 'Frost70PvE', 'TBC Phase 3', 203);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Death Knight', 'Frost70PvEP3BiS', @RACEMASK_ALL, 0, 32235, 3003, 2834, 2735, 0, 0, 0),
('Death Knight', 'Frost70PvEP3BiS', @RACEMASK_ALL, 1, 32260, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Frost70PvEP3BiS', @RACEMASK_ALL, 2, 30055, 2986, 2725, 0, 0, 0, 0),
('Death Knight', 'Frost70PvEP3BiS', @RACEMASK_ALL, 4, 30905, 2661, 2731, 2725, 2735, 0, 0),
('Death Knight', 'Frost70PvEP3BiS', @RACEMASK_ALL, 5, 30106, 0, 2725, 2731, 0, 0, 0),
('Death Knight', 'Frost70PvEP3BiS', @RACEMASK_ALL, 6, 32341, 3012, 0, 0, 0, 0, 0),
('Death Knight', 'Frost70PvEP3BiS', @RACEMASK_ALL, 7, 32345, 2939, 2735, 2735, 0, 0, 0),
('Death Knight', 'Frost70PvEP3BiS', @RACEMASK_ALL, 8, 30863, 2647, 2735, 0, 0, 0, 0),
('Death Knight', 'Frost70PvEP3BiS', @RACEMASK_ALL, 9, 32278, 684, 2725, 2725, 0, 0, 0),
('Death Knight', 'Frost70PvEP3BiS', @RACEMASK_ALL, 10, 32497, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Frost70PvEP3BiS', @RACEMASK_ALL, 11, 32335, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Frost70PvEP3BiS', @RACEMASK_ALL, 12, 28830, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Frost70PvEP3BiS', @RACEMASK_ALL, 13, 21670, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Frost70PvEP3BiS', @RACEMASK_ALL, 14, 32323, 368, 0, 0, 0, 0, 0),
('Death Knight', 'Frost70PvEP3BiS', @RACEMASK_ALL, 15, 33669, 2673, 0, 0, 0, 0, 0),
('Death Knight', 'Frost70PvEP3BiS', @RACEMASK_ALL, 16, 34015, 2673, 0, 0, 0, 0, 0),
('Death Knight', 'Frost70PvEP3BiS', @RACEMASK_ALL, 17, 39208, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Death Knight Unholy70PvEP3BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Death Knight', 'Unholy70PvEP3BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_deathknight_unholypresence:30|t|r Use Unholy PvE P3 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Unholy70PvE', 'Unholy70PvE', 'TBC Phase 3', 203),
('Death Knight', 'Unholy70PvEP3BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_deathknight_unholypresence:30|t|r Use Unholy PvE P3 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Unholy70PvE', 'Unholy70PvE', 'TBC Phase 3', 203);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Death Knight', 'Unholy70PvEP3BiS', @RACEMASK_ALL, 0, 32235, 3003, 2834, 2735, 0, 0, 0),
('Death Knight', 'Unholy70PvEP3BiS', @RACEMASK_ALL, 1, 32591, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy70PvEP3BiS', @RACEMASK_ALL, 2, 30055, 2986, 2725, 0, 0, 0, 0),
('Death Knight', 'Unholy70PvEP3BiS', @RACEMASK_ALL, 4, 30905, 2661, 2731, 2725, 2735, 0, 0),
('Death Knight', 'Unholy70PvEP3BiS', @RACEMASK_ALL, 5, 30106, 0, 2725, 2731, 0, 0, 0),
('Death Knight', 'Unholy70PvEP3BiS', @RACEMASK_ALL, 6, 32341, 3012, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy70PvEP3BiS', @RACEMASK_ALL, 7, 32345, 2939, 2735, 2735, 0, 0, 0),
('Death Knight', 'Unholy70PvEP3BiS', @RACEMASK_ALL, 8, 30863, 2647, 2735, 0, 0, 0, 0),
('Death Knight', 'Unholy70PvEP3BiS', @RACEMASK_ALL, 9, 32278, 684, 2725, 2725, 0, 0, 0),
('Death Knight', 'Unholy70PvEP3BiS', @RACEMASK_ALL, 10, 32497, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy70PvEP3BiS', @RACEMASK_ALL, 11, 32335, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy70PvEP3BiS', @RACEMASK_ALL, 12, 28830, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy70PvEP3BiS', @RACEMASK_ALL, 13, 21670, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy70PvEP3BiS', @RACEMASK_ALL, 14, 33122, 368, 2731, 0, 0, 0, 0),
('Death Knight', 'Unholy70PvEP3BiS', @RACEMASK_ALL, 15, 30902, 2667, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy70PvEP3BiS', @RACEMASK_ALL, 17, 39208, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

