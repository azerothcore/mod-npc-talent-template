-- Batch-generated TBC BiS gear templates
-- Phase: 2  Mode: pve
-- 27 specs

-- Idempotency: remove this file's templates first so re-application cannot duplicate rows
-- (the index table has no unique key; without this a re-applied file would append copies).
DELETE FROM `mod_npc_talent_template_index` WHERE `playerSpec` IN ('Balance70PvEP2BiS', 'Cat70PvEP2BiS', 'Bear70PvEP2BiS', 'Restoration70PvEP2BiS', 'Beastmastery70PvEP2BiS', 'Marksmanship70PvEP2BiS', 'Survival70PvEP2BiS', 'Arcane70PvEP2BiS', 'Fire70PvEP2BiS', 'Frost70PvEP2BiS', 'Holy70PvEP2BiS', 'Protection70PvEP2BiS', 'Retribution70PvEP2BiS', 'Discipline70PvEP2BiS', 'Shadow70PvEP2BiS', 'Assassination70PvEP2BiS', 'Combat70PvEP2BiS', 'Elemental70PvEP2BiS', 'Enhancement70PvEP2BiS', 'Affliction70PvEP2BiS', 'Demonology70PvEP2BiS', 'Destruction70PvEP2BiS', 'Arms70PvEP2BiS', 'Fury70PvEP2BiS');
DELETE FROM `mod_npc_talent_template_gear` WHERE `playerSpec` IN ('Balance70PvEP2BiS', 'Cat70PvEP2BiS', 'Bear70PvEP2BiS', 'Restoration70PvEP2BiS', 'Beastmastery70PvEP2BiS', 'Marksmanship70PvEP2BiS', 'Survival70PvEP2BiS', 'Arcane70PvEP2BiS', 'Fire70PvEP2BiS', 'Frost70PvEP2BiS', 'Holy70PvEP2BiS', 'Protection70PvEP2BiS', 'Retribution70PvEP2BiS', 'Discipline70PvEP2BiS', 'Shadow70PvEP2BiS', 'Assassination70PvEP2BiS', 'Combat70PvEP2BiS', 'Elemental70PvEP2BiS', 'Enhancement70PvEP2BiS', 'Affliction70PvEP2BiS', 'Demonology70PvEP2BiS', 'Destruction70PvEP2BiS', 'Arms70PvEP2BiS', 'Fury70PvEP2BiS');

SET @MINLEVEL = 70;
SET @MAXLEVEL = 79;
SET @RACEMASK_ALL = 1791;
-- ===== Druid Balance70PvEP2BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`) VALUES
('Druid', 'Balance70PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_starfall:30|t|r Use Balance PvE P2 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Balance70PvE', 'Balance70PvE', 'TBC Phase 2'),
('Druid', 'Balance70PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_starfall:30|t|r Use Balance PvE P2 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Balance70PvE', 'Balance70PvE', 'TBC Phase 2');
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Druid', 'Balance70PvEP2BiS', @RACEMASK_ALL, 0, 30233, 3002, 2736, 2828, 0, 0, 0),
('Druid', 'Balance70PvEP2BiS', @RACEMASK_ALL, 1, 30015, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance70PvEP2BiS', @RACEMASK_ALL, 2, 30235, 2995, 2740, 2736, 0, 0, 0),
('Druid', 'Balance70PvEP2BiS', @RACEMASK_ALL, 4, 30231, 2661, 2740, 2740, 2736, 0, 0),
('Druid', 'Balance70PvEP2BiS', @RACEMASK_ALL, 5, 30038, 0, 2740, 2736, 0, 0, 0),
('Druid', 'Balance70PvEP2BiS', @RACEMASK_ALL, 6, 24262, 2748, 2740, 2736, 2728, 0, 0),
('Druid', 'Balance70PvEP2BiS', @RACEMASK_ALL, 7, 30037, 2656, 0, 0, 0, 0, 0),
('Druid', 'Balance70PvEP2BiS', @RACEMASK_ALL, 8, 29918, 2650, 0, 0, 0, 0, 0),
('Druid', 'Balance70PvEP2BiS', @RACEMASK_ALL, 9, 30232, 2322, 0, 0, 0, 0, 0),
('Druid', 'Balance70PvEP2BiS', @RACEMASK_ALL, 10, 30109, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance70PvEP2BiS', @RACEMASK_ALL, 11, 28753, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance70PvEP2BiS', @RACEMASK_ALL, 12, 29370, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance70PvEP2BiS', @RACEMASK_ALL, 13, 27683, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance70PvEP2BiS', @RACEMASK_ALL, 14, 30735, 2621, 0, 0, 0, 0, 0),
('Druid', 'Balance70PvEP2BiS', @RACEMASK_ALL, 15, 30723, 2671, 2736, 2736, 0, 0, 0),
('Druid', 'Balance70PvEP2BiS', @RACEMASK_ALL, 16, 30049, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance70PvEP2BiS', @RACEMASK_ALL, 17, 27518, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Druid Cat70PvEP2BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`) VALUES
('Druid', 'Cat70PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_druid_catform:30|t|r Use Cat PvE P2 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Cat70PvE', 'Cat70PvE', 'TBC Phase 2'),
('Druid', 'Cat70PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_druid_catform:30|t|r Use Cat PvE P2 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Cat70PvE', 'Cat70PvE', 'TBC Phase 2');
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Druid', 'Cat70PvEP2BiS', @RACEMASK_ALL, 0, 8345, 3003, 0, 0, 0, 0, 0),
('Druid', 'Cat70PvEP2BiS', @RACEMASK_ALL, 1, 24114, 0, 0, 0, 0, 0, 0),
('Druid', 'Cat70PvEP2BiS', @RACEMASK_ALL, 2, 30055, 2986, 2726, 0, 0, 0, 0),
('Druid', 'Cat70PvEP2BiS', @RACEMASK_ALL, 4, 30101, 2661, 2735, 2735, 2731, 0, 0),
('Druid', 'Cat70PvEP2BiS', @RACEMASK_ALL, 5, 30106, 0, 2726, 2731, 0, 0, 0),
('Druid', 'Cat70PvEP2BiS', @RACEMASK_ALL, 6, 28741, 3012, 2726, 2726, 2731, 0, 0),
('Druid', 'Cat70PvEP2BiS', @RACEMASK_ALL, 7, 28545, 2939, 2726, 2735, 0, 0, 0),
('Druid', 'Cat70PvEP2BiS', @RACEMASK_ALL, 8, 29966, 2647, 2731, 0, 0, 0, 0),
('Druid', 'Cat70PvEP2BiS', @RACEMASK_ALL, 9, 29947, 2564, 0, 0, 0, 0, 0),
('Druid', 'Cat70PvEP2BiS', @RACEMASK_ALL, 10, 30052, 0, 0, 0, 0, 0, 0),
('Druid', 'Cat70PvEP2BiS', @RACEMASK_ALL, 11, 29997, 0, 0, 0, 0, 0, 0),
('Druid', 'Cat70PvEP2BiS', @RACEMASK_ALL, 12, 30627, 0, 0, 0, 0, 0, 0),
('Druid', 'Cat70PvEP2BiS', @RACEMASK_ALL, 13, 23206, 0, 0, 0, 0, 0, 0),
('Druid', 'Cat70PvEP2BiS', @RACEMASK_ALL, 14, 28672, 368, 0, 0, 0, 0, 0),
('Druid', 'Cat70PvEP2BiS', @RACEMASK_ALL, 15, 32014, 2673, 0, 0, 0, 0, 0),
('Druid', 'Cat70PvEP2BiS', @RACEMASK_ALL, 17, 29390, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Druid Bear70PvEP2BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`) VALUES
('Druid', 'Bear70PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_racial_bearform:30|t|r Use Bear PvE P2 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Bear70PvE', 'Bear70PvE', 'TBC Phase 2'),
('Druid', 'Bear70PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_racial_bearform:30|t|r Use Bear PvE P2 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Bear70PvE', 'Bear70PvE', 'TBC Phase 2');
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Druid', 'Bear70PvEP2BiS', @RACEMASK_ALL, 0, 30228, 2999, 2725, 2833, 0, 0, 0),
('Druid', 'Bear70PvEP2BiS', @RACEMASK_ALL, 1, 30017, 0, 0, 0, 0, 0, 0),
('Druid', 'Bear70PvEP2BiS', @RACEMASK_ALL, 2, 30230, 2991, 2737, 2731, 0, 0, 0),
('Druid', 'Bear70PvEP2BiS', @RACEMASK_ALL, 4, 30222, 2661, 2731, 2737, 2725, 0, 0),
('Druid', 'Bear70PvEP2BiS', @RACEMASK_ALL, 5, 30106, 0, 2725, 2731, 0, 0, 0),
('Druid', 'Bear70PvEP2BiS', @RACEMASK_ALL, 6, 30229, 3011, 2731, 0, 0, 0, 0),
('Druid', 'Bear70PvEP2BiS', @RACEMASK_ALL, 7, 30041, 2940, 0, 0, 0, 0, 0),
('Druid', 'Bear70PvEP2BiS', @RACEMASK_ALL, 8, 32810, 2648, 2725, 0, 0, 0, 0),
('Druid', 'Bear70PvEP2BiS', @RACEMASK_ALL, 9, 30223, 2564, 0, 0, 0, 0, 0),
('Druid', 'Bear70PvEP2BiS', @RACEMASK_ALL, 10, 29279, 0, 0, 0, 0, 0, 0),
('Druid', 'Bear70PvEP2BiS', @RACEMASK_ALL, 11, 28792, 0, 0, 0, 0, 0, 0),
('Druid', 'Bear70PvEP2BiS', @RACEMASK_ALL, 12, 32658, 0, 0, 0, 0, 0, 0),
('Druid', 'Bear70PvEP2BiS', @RACEMASK_ALL, 13, 28579, 0, 0, 0, 0, 0, 0),
('Druid', 'Bear70PvEP2BiS', @RACEMASK_ALL, 14, 28660, 368, 0, 0, 0, 0, 0),
('Druid', 'Bear70PvEP2BiS', @RACEMASK_ALL, 15, 30021, 2673, 0, 0, 0, 0, 0),
('Druid', 'Bear70PvEP2BiS', @RACEMASK_ALL, 17, 32387, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Druid Restoration70PvEP2BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`) VALUES
('Druid', 'Restoration70PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_healingtouch:30|t|r Use Restoration PvE P2 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Restoration70PvE', 'Restoration70PvE', 'TBC Phase 2'),
('Druid', 'Restoration70PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_healingtouch:30|t|r Use Restoration PvE P2 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Restoration70PvE', 'Restoration70PvE', 'TBC Phase 2');
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Druid', 'Restoration70PvEP2BiS', @RACEMASK_ALL, 0, 30219, 3001, 2734, 2835, 0, 0, 0),
('Druid', 'Restoration70PvEP2BiS', @RACEMASK_ALL, 1, 30018, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration70PvEP2BiS', @RACEMASK_ALL, 2, 30221, 2993, 2740, 2740, 0, 0, 0),
('Druid', 'Restoration70PvEP2BiS', @RACEMASK_ALL, 4, 30216, 2661, 2740, 2740, 2740, 0, 0),
('Druid', 'Restoration70PvEP2BiS', @RACEMASK_ALL, 5, 21873, 0, 2734, 2740, 0, 0, 0),
('Druid', 'Restoration70PvEP2BiS', @RACEMASK_ALL, 6, 30727, 2748, 2734, 2740, 2740, 0, 0),
('Druid', 'Restoration70PvEP2BiS', @RACEMASK_ALL, 7, 30737, 2656, 2734, 2740, 0, 0, 0),
('Druid', 'Restoration70PvEP2BiS', @RACEMASK_ALL, 8, 30062, 2650, 0, 0, 0, 0, 0),
('Druid', 'Restoration70PvEP2BiS', @RACEMASK_ALL, 9, 28521, 2322, 2740, 2734, 0, 0, 0),
('Druid', 'Restoration70PvEP2BiS', @RACEMASK_ALL, 10, 30110, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration70PvEP2BiS', @RACEMASK_ALL, 11, 28763, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration70PvEP2BiS', @RACEMASK_ALL, 12, 29376, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration70PvEP2BiS', @RACEMASK_ALL, 13, 25634, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration70PvEP2BiS', @RACEMASK_ALL, 14, 29989, 2621, 0, 0, 0, 0, 0),
('Druid', 'Restoration70PvEP2BiS', @RACEMASK_ALL, 15, 30108, 2505, 0, 0, 0, 0, 0),
('Druid', 'Restoration70PvEP2BiS', @RACEMASK_ALL, 16, 29274, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration70PvEP2BiS', @RACEMASK_ALL, 17, 27886, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Hunter Beastmastery70PvEP2BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`) VALUES
('Hunter', 'Beastmastery70PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_hunter_beasttaming:30|t|r Use Beastmastery PvE P2 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Beastmastery70PvE', 'Beastmastery70PvE', 'TBC Phase 2'),
('Hunter', 'Beastmastery70PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_hunter_beasttaming:30|t|r Use Beastmastery PvE P2 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Beastmastery70PvE', 'Beastmastery70PvE', 'TBC Phase 2');
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Hunter', 'Beastmastery70PvEP2BiS', @RACEMASK_ALL, 0, 30141, 3003, 2764, 2829, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP2BiS', @RACEMASK_ALL, 1, 30017, 0, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP2BiS', @RACEMASK_ALL, 2, 30143, 2986, 2726, 2726, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP2BiS', @RACEMASK_ALL, 4, 30139, 2661, 2731, 2764, 2764, 0, 0),
('Hunter', 'Beastmastery70PvEP2BiS', @RACEMASK_ALL, 5, 30040, 0, 2731, 2731, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP2BiS', @RACEMASK_ALL, 6, 29995, 3012, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP2BiS', @RACEMASK_ALL, 7, 30104, 2939, 2731, 2726, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP2BiS', @RACEMASK_ALL, 8, 29966, 2647, 2731, 0, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP2BiS', @RACEMASK_ALL, 9, 30140, 2564, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP2BiS', @RACEMASK_ALL, 10, 28791, 0, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP2BiS', @RACEMASK_ALL, 11, 29997, 0, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP2BiS', @RACEMASK_ALL, 12, 28830, 0, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP2BiS', @RACEMASK_ALL, 13, 29383, 0, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP2BiS', @RACEMASK_ALL, 14, 29994, 368, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP2BiS', @RACEMASK_ALL, 15, 32944, 2670, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP2BiS', @RACEMASK_ALL, 16, 29948, 0, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery70PvEP2BiS', @RACEMASK_ALL, 17, 30105, 2724, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Hunter Marksmanship70PvEP2BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`) VALUES
('Hunter', 'Marksmanship70PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_marksmanship:30|t|r Use Marksmanship PvE P2 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Marksmanship70PvE', 'Marksmanship70PvE', 'TBC Phase 2'),
('Hunter', 'Marksmanship70PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_marksmanship:30|t|r Use Marksmanship PvE P2 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Marksmanship70PvE', 'Marksmanship70PvE', 'TBC Phase 2');
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Hunter', 'Marksmanship70PvEP2BiS', @RACEMASK_ALL, 0, 30141, 3003, 2764, 2829, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP2BiS', @RACEMASK_ALL, 1, 30017, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP2BiS', @RACEMASK_ALL, 2, 30143, 2986, 2726, 2726, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP2BiS', @RACEMASK_ALL, 4, 30139, 2661, 2731, 2764, 2764, 0, 0),
('Hunter', 'Marksmanship70PvEP2BiS', @RACEMASK_ALL, 5, 30040, 0, 2731, 2731, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP2BiS', @RACEMASK_ALL, 6, 29995, 3012, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP2BiS', @RACEMASK_ALL, 7, 30104, 2939, 2731, 2726, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP2BiS', @RACEMASK_ALL, 8, 29966, 2647, 2731, 0, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP2BiS', @RACEMASK_ALL, 9, 30140, 2564, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP2BiS', @RACEMASK_ALL, 10, 28791, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP2BiS', @RACEMASK_ALL, 11, 29997, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP2BiS', @RACEMASK_ALL, 12, 28830, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP2BiS', @RACEMASK_ALL, 13, 29383, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP2BiS', @RACEMASK_ALL, 14, 29994, 368, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP2BiS', @RACEMASK_ALL, 15, 32944, 2670, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP2BiS', @RACEMASK_ALL, 16, 29948, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship70PvEP2BiS', @RACEMASK_ALL, 17, 30105, 2724, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Hunter Survival70PvEP2BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`) VALUES
('Hunter', 'Survival70PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_Hunter_swiftstrike:30|t|r Use Survival PvE P2 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Survival70PvE', 'Survival70PvE', 'TBC Phase 2'),
('Hunter', 'Survival70PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_Hunter_swiftstrike:30|t|r Use Survival PvE P2 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Survival70PvE', 'Survival70PvE', 'TBC Phase 2');
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Hunter', 'Survival70PvEP2BiS', @RACEMASK_ALL, 0, 30141, 3003, 2764, 2829, 0, 0, 0),
('Hunter', 'Survival70PvEP2BiS', @RACEMASK_ALL, 1, 30017, 0, 0, 0, 0, 0, 0),
('Hunter', 'Survival70PvEP2BiS', @RACEMASK_ALL, 2, 30143, 2986, 2726, 2726, 0, 0, 0),
('Hunter', 'Survival70PvEP2BiS', @RACEMASK_ALL, 4, 30139, 2661, 2731, 2764, 2764, 0, 0),
('Hunter', 'Survival70PvEP2BiS', @RACEMASK_ALL, 5, 30040, 0, 2731, 2731, 0, 0, 0),
('Hunter', 'Survival70PvEP2BiS', @RACEMASK_ALL, 6, 30142, 3012, 2726, 0, 0, 0, 0),
('Hunter', 'Survival70PvEP2BiS', @RACEMASK_ALL, 7, 30104, 2939, 2731, 2726, 0, 0, 0),
('Hunter', 'Survival70PvEP2BiS', @RACEMASK_ALL, 8, 29966, 2647, 2731, 0, 0, 0, 0),
('Hunter', 'Survival70PvEP2BiS', @RACEMASK_ALL, 9, 28506, 2564, 2726, 2731, 0, 0, 0),
('Hunter', 'Survival70PvEP2BiS', @RACEMASK_ALL, 10, 28791, 0, 0, 0, 0, 0, 0),
('Hunter', 'Survival70PvEP2BiS', @RACEMASK_ALL, 11, 29298, 0, 0, 0, 0, 0, 0),
('Hunter', 'Survival70PvEP2BiS', @RACEMASK_ALL, 12, 28830, 0, 0, 0, 0, 0, 0),
('Hunter', 'Survival70PvEP2BiS', @RACEMASK_ALL, 13, 29383, 0, 0, 0, 0, 0, 0),
('Hunter', 'Survival70PvEP2BiS', @RACEMASK_ALL, 14, 29994, 368, 0, 0, 0, 0, 0),
('Hunter', 'Survival70PvEP2BiS', @RACEMASK_ALL, 15, 29993, 2670, 2726, 2764, 2731, 0, 0),
('Hunter', 'Survival70PvEP2BiS', @RACEMASK_ALL, 17, 30105, 2724, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Mage Arcane70PvEP2BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`) VALUES
('Mage', 'Arcane70PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_magicalsentry:30|t|r Use Arcane PvE P2 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Arcane70PvE', 'Arcane70PvE', 'TBC Phase 2'),
('Mage', 'Arcane70PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_magicalsentry:30|t|r Use Arcane PvE P2 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Arcane70PvE', 'Arcane70PvE', 'TBC Phase 2');
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Mage', 'Arcane70PvEP2BiS', @RACEMASK_ALL, 0, 30206, 3002, 2828, 2736, 0, 0, 0),
('Mage', 'Arcane70PvEP2BiS', @RACEMASK_ALL, 1, 30015, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane70PvEP2BiS', @RACEMASK_ALL, 2, 30210, 2995, 2736, 2740, 0, 0, 0),
('Mage', 'Arcane70PvEP2BiS', @RACEMASK_ALL, 4, 30196, 2661, 2736, 2736, 2740, 0, 0),
('Mage', 'Arcane70PvEP2BiS', @RACEMASK_ALL, 5, 30064, 0, 2736, 2736, 0, 0, 0),
('Mage', 'Arcane70PvEP2BiS', @RACEMASK_ALL, 6, 30207, 2748, 2736, 0, 0, 0, 0),
('Mage', 'Arcane70PvEP2BiS', @RACEMASK_ALL, 7, 30067, 2656, 0, 0, 0, 0, 0),
('Mage', 'Arcane70PvEP2BiS', @RACEMASK_ALL, 8, 29918, 2650, 0, 0, 0, 0, 0),
('Mage', 'Arcane70PvEP2BiS', @RACEMASK_ALL, 9, 29987, 2322, 0, 0, 0, 0, 0),
('Mage', 'Arcane70PvEP2BiS', @RACEMASK_ALL, 10, 29302, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane70PvEP2BiS', @RACEMASK_ALL, 11, 29287, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane70PvEP2BiS', @RACEMASK_ALL, 12, 30720, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane70PvEP2BiS', @RACEMASK_ALL, 13, 29370, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane70PvEP2BiS', @RACEMASK_ALL, 14, 29992, 2621, 0, 0, 0, 0, 0),
('Mage', 'Arcane70PvEP2BiS', @RACEMASK_ALL, 15, 29988, 2671, 0, 0, 0, 0, 0),
('Mage', 'Arcane70PvEP2BiS', @RACEMASK_ALL, 17, 28783, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Mage Fire70PvEP2BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`) VALUES
('Mage', 'Fire70PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_fire_flamebolt:30|t|r Use Fire PvE P2 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Fire70PvE', 'Fire70PvE', 'TBC Phase 2'),
('Mage', 'Fire70PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_fire_flamebolt:30|t|r Use Fire PvE P2 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Fire70PvE', 'Fire70PvE', 'TBC Phase 2');
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Mage', 'Fire70PvEP2BiS', @RACEMASK_ALL, 0, 32494, 3002, 2828, 2740, 0, 0, 0),
('Mage', 'Fire70PvEP2BiS', @RACEMASK_ALL, 1, 30015, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire70PvEP2BiS', @RACEMASK_ALL, 2, 30024, 2995, 0, 0, 0, 0, 0),
('Mage', 'Fire70PvEP2BiS', @RACEMASK_ALL, 4, 30107, 2661, 2736, 2736, 2740, 0, 0),
('Mage', 'Fire70PvEP2BiS', @RACEMASK_ALL, 5, 30038, 0, 2740, 2736, 0, 0, 0),
('Mage', 'Fire70PvEP2BiS', @RACEMASK_ALL, 6, 30207, 2748, 2736, 0, 0, 0, 0),
('Mage', 'Fire70PvEP2BiS', @RACEMASK_ALL, 7, 30067, 2656, 0, 0, 0, 0, 0),
('Mage', 'Fire70PvEP2BiS', @RACEMASK_ALL, 8, 29918, 2650, 0, 0, 0, 0, 0),
('Mage', 'Fire70PvEP2BiS', @RACEMASK_ALL, 9, 29987, 2322, 0, 0, 0, 0, 0),
('Mage', 'Fire70PvEP2BiS', @RACEMASK_ALL, 10, 29302, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire70PvEP2BiS', @RACEMASK_ALL, 11, 28793, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire70PvEP2BiS', @RACEMASK_ALL, 12, 30626, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire70PvEP2BiS', @RACEMASK_ALL, 13, 27683, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire70PvEP2BiS', @RACEMASK_ALL, 14, 28766, 2621, 0, 0, 0, 0, 0),
('Mage', 'Fire70PvEP2BiS', @RACEMASK_ALL, 15, 30095, 2671, 0, 0, 0, 0, 0),
('Mage', 'Fire70PvEP2BiS', @RACEMASK_ALL, 16, 29270, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire70PvEP2BiS', @RACEMASK_ALL, 17, 29982, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Mage Frost70PvEP2BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`) VALUES
('Mage', 'Frost70PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_frost_frostbolt02:30|t|r Use Frost PvE P2 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Frost70PvE', 'Frost70PvE', 'TBC Phase 2'),
('Mage', 'Frost70PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_frost_frostbolt02:30|t|r Use Frost PvE P2 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Frost70PvE', 'Frost70PvE', 'TBC Phase 2');
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Mage', 'Frost70PvEP2BiS', @RACEMASK_ALL, 0, 30206, 3002, 2828, 2736, 0, 0, 0),
('Mage', 'Frost70PvEP2BiS', @RACEMASK_ALL, 1, 30015, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost70PvEP2BiS', @RACEMASK_ALL, 2, 30210, 2995, 2736, 2740, 0, 0, 0),
('Mage', 'Frost70PvEP2BiS', @RACEMASK_ALL, 4, 30107, 2661, 2736, 2736, 2740, 0, 0),
('Mage', 'Frost70PvEP2BiS', @RACEMASK_ALL, 5, 30038, 0, 2740, 2736, 0, 0, 0),
('Mage', 'Frost70PvEP2BiS', @RACEMASK_ALL, 6, 30207, 2748, 2736, 0, 0, 0, 0),
('Mage', 'Frost70PvEP2BiS', @RACEMASK_ALL, 7, 30067, 2656, 0, 0, 0, 0, 0),
('Mage', 'Frost70PvEP2BiS', @RACEMASK_ALL, 8, 29918, 2650, 0, 0, 0, 0, 0),
('Mage', 'Frost70PvEP2BiS', @RACEMASK_ALL, 9, 30205, 2322, 0, 0, 0, 0, 0),
('Mage', 'Frost70PvEP2BiS', @RACEMASK_ALL, 10, 29302, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost70PvEP2BiS', @RACEMASK_ALL, 11, 30109, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost70PvEP2BiS', @RACEMASK_ALL, 12, 30720, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost70PvEP2BiS', @RACEMASK_ALL, 13, 27683, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost70PvEP2BiS', @RACEMASK_ALL, 14, 28766, 2621, 0, 0, 0, 0, 0),
('Mage', 'Frost70PvEP2BiS', @RACEMASK_ALL, 15, 30095, 2672, 0, 0, 0, 0, 0),
('Mage', 'Frost70PvEP2BiS', @RACEMASK_ALL, 16, 30049, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost70PvEP2BiS', @RACEMASK_ALL, 17, 29982, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Paladin Holy70PvEP2BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`) VALUES
('Paladin', 'Holy70PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Use Holy PvE P2 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Holy70PvE', 'Holy70PvE', 'TBC Phase 2'),
('Paladin', 'Holy70PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Use Holy PvE P2 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Holy70PvE', 'Holy70PvE', 'TBC Phase 2');
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Paladin', 'Holy70PvEP2BiS', @RACEMASK_ALL, 0, 30136, 3001, 2734, 2835, 0, 0, 0),
('Paladin', 'Holy70PvEP2BiS', @RACEMASK_ALL, 1, 30018, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy70PvEP2BiS', @RACEMASK_ALL, 2, 30138, 2993, 2734, 2734, 0, 0, 0),
('Paladin', 'Holy70PvEP2BiS', @RACEMASK_ALL, 4, 30134, 2661, 2740, 2734, 2734, 0, 0),
('Paladin', 'Holy70PvEP2BiS', @RACEMASK_ALL, 5, 30030, 0, 2734, 2734, 0, 0, 0),
('Paladin', 'Holy70PvEP2BiS', @RACEMASK_ALL, 6, 29991, 2748, 2740, 2740, 2734, 0, 0),
('Paladin', 'Holy70PvEP2BiS', @RACEMASK_ALL, 7, 30027, 2656, 0, 0, 0, 0, 0),
('Paladin', 'Holy70PvEP2BiS', @RACEMASK_ALL, 8, 30047, 2650, 2740, 0, 0, 0, 0),
('Paladin', 'Holy70PvEP2BiS', @RACEMASK_ALL, 9, 30112, 2322, 2734, 2740, 0, 0, 0),
('Paladin', 'Holy70PvEP2BiS', @RACEMASK_ALL, 10, 30110, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy70PvEP2BiS', @RACEMASK_ALL, 11, 28790, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy70PvEP2BiS', @RACEMASK_ALL, 12, 29376, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy70PvEP2BiS', @RACEMASK_ALL, 13, 28727, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy70PvEP2BiS', @RACEMASK_ALL, 14, 29989, 2621, 0, 0, 0, 0, 0),
('Paladin', 'Holy70PvEP2BiS', @RACEMASK_ALL, 15, 30108, 2505, 0, 0, 0, 0, 0),
('Paladin', 'Holy70PvEP2BiS', @RACEMASK_ALL, 16, 29923, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy70PvEP2BiS', @RACEMASK_ALL, 17, 28592, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Paladin Protection70PvEP2BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`) VALUES
('Paladin', 'Protection70PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_devotionaura:30|t|r Use Protection PvE P2 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Protection70PvE', 'Protection70PvE', 'TBC Phase 2'),
('Paladin', 'Protection70PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_devotionaura:30|t|r Use Protection PvE P2 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Protection70PvE', 'Protection70PvE', 'TBC Phase 2');
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Paladin', 'Protection70PvEP2BiS', @RACEMASK_ALL, 0, 30125, 2999, 2725, 2833, 0, 0, 0),
('Paladin', 'Protection70PvEP2BiS', @RACEMASK_ALL, 1, 30007, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection70PvEP2BiS', @RACEMASK_ALL, 2, 29070, 2991, 2731, 2737, 0, 0, 0),
('Paladin', 'Protection70PvEP2BiS', @RACEMASK_ALL, 4, 29066, 2661, 2725, 2731, 2737, 0, 0),
('Paladin', 'Protection70PvEP2BiS', @RACEMASK_ALL, 5, 30034, 0, 2725, 2737, 0, 0, 0),
('Paladin', 'Protection70PvEP2BiS', @RACEMASK_ALL, 6, 30126, 3011, 2737, 0, 0, 0, 0),
('Paladin', 'Protection70PvEP2BiS', @RACEMASK_ALL, 7, 30033, 2940, 0, 0, 0, 0, 0),
('Paladin', 'Protection70PvEP2BiS', @RACEMASK_ALL, 8, 32515, 2648, 0, 0, 0, 0, 0),
('Paladin', 'Protection70PvEP2BiS', @RACEMASK_ALL, 9, 29998, 2564, 2737, 2731, 0, 0, 0),
('Paladin', 'Protection70PvEP2BiS', @RACEMASK_ALL, 10, 33054, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection70PvEP2BiS', @RACEMASK_ALL, 11, 30083, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection70PvEP2BiS', @RACEMASK_ALL, 12, 27529, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection70PvEP2BiS', @RACEMASK_ALL, 13, 28528, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection70PvEP2BiS', @RACEMASK_ALL, 14, 29925, 368, 0, 0, 0, 0, 0),
('Paladin', 'Protection70PvEP2BiS', @RACEMASK_ALL, 15, 30095, 2673, 0, 0, 0, 0, 0),
('Paladin', 'Protection70PvEP2BiS', @RACEMASK_ALL, 16, 29176, 929, 2731, 2731, 0, 0, 0),
('Paladin', 'Protection70PvEP2BiS', @RACEMASK_ALL, 17, 29388, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Paladin Retribution70PvEP2BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`) VALUES
('Paladin', 'Retribution70PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_auraoflight:30|t|r Use Retribution PvE P2 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Retribution70PvE', 'Retribution70PvE', 'TBC Phase 2'),
('Paladin', 'Retribution70PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_auraoflight:30|t|r Use Retribution PvE P2 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Retribution70PvE', 'Retribution70PvE', 'TBC Phase 2');
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Paladin', 'Retribution70PvEP2BiS', @RACEMASK_ALL, 0, 32461, 3003, 2834, 2731, 0, 0, 0),
('Paladin', 'Retribution70PvEP2BiS', @RACEMASK_ALL, 1, 30022, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution70PvEP2BiS', @RACEMASK_ALL, 2, 30055, 2986, 2725, 0, 0, 0, 0),
('Paladin', 'Retribution70PvEP2BiS', @RACEMASK_ALL, 4, 28485, 2661, 2731, 2735, 2735, 0, 0),
('Paladin', 'Retribution70PvEP2BiS', @RACEMASK_ALL, 5, 30106, 0, 2725, 2731, 0, 0, 0),
('Paladin', 'Retribution70PvEP2BiS', @RACEMASK_ALL, 6, 30257, 3012, 0, 0, 0, 0, 0),
('Paladin', 'Retribution70PvEP2BiS', @RACEMASK_ALL, 7, 30104, 2939, 2731, 2725, 0, 0, 0),
('Paladin', 'Retribution70PvEP2BiS', @RACEMASK_ALL, 8, 28795, 2647, 2731, 2725, 0, 0, 0),
('Paladin', 'Retribution70PvEP2BiS', @RACEMASK_ALL, 9, 29947, 684, 0, 0, 0, 0, 0),
('Paladin', 'Retribution70PvEP2BiS', @RACEMASK_ALL, 10, 30834, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution70PvEP2BiS', @RACEMASK_ALL, 11, 30061, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution70PvEP2BiS', @RACEMASK_ALL, 12, 28830, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution70PvEP2BiS', @RACEMASK_ALL, 13, 29383, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution70PvEP2BiS', @RACEMASK_ALL, 14, 30098, 368, 0, 0, 0, 0, 0),
('Paladin', 'Retribution70PvEP2BiS', @RACEMASK_ALL, 15, 28430, 2667, 0, 0, 0, 0, 0),
('Paladin', 'Retribution70PvEP2BiS', @RACEMASK_ALL, 17, 27484, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Priest Discipline70PvEP2BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`) VALUES
('Priest', 'Discipline70PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_wordfortitude:30|t|r Use Discipline PvE P2 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Discipline70PvE', 'Discipline70PvE', 'TBC Phase 2'),
('Priest', 'Discipline70PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_wordfortitude:30|t|r Use Discipline PvE P2 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Discipline70PvE', 'Discipline70PvE', 'TBC Phase 2');
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Priest', 'Discipline70PvEP2BiS', @RACEMASK_ALL, 0, 30152, 3001, 2835, 2734, 0, 0, 0),
('Priest', 'Discipline70PvEP2BiS', @RACEMASK_ALL, 1, 30018, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline70PvEP2BiS', @RACEMASK_ALL, 2, 30154, 2993, 2740, 2740, 0, 0, 0),
('Priest', 'Discipline70PvEP2BiS', @RACEMASK_ALL, 4, 30150, 2661, 2740, 2734, 2740, 0, 0),
('Priest', 'Discipline70PvEP2BiS', @RACEMASK_ALL, 5, 30036, 0, 2740, 2734, 0, 0, 0),
('Priest', 'Discipline70PvEP2BiS', @RACEMASK_ALL, 6, 30153, 2748, 2740, 0, 0, 0, 0),
('Priest', 'Discipline70PvEP2BiS', @RACEMASK_ALL, 7, 30100, 2656, 2728, 2740, 0, 0, 0),
('Priest', 'Discipline70PvEP2BiS', @RACEMASK_ALL, 8, 32980, 2650, 2734, 0, 0, 0, 0),
('Priest', 'Discipline70PvEP2BiS', @RACEMASK_ALL, 9, 30151, 2322, 0, 0, 0, 0, 0),
('Priest', 'Discipline70PvEP2BiS', @RACEMASK_ALL, 10, 30110, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline70PvEP2BiS', @RACEMASK_ALL, 11, 29290, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline70PvEP2BiS', @RACEMASK_ALL, 12, 29376, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline70PvEP2BiS', @RACEMASK_ALL, 13, 28823, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline70PvEP2BiS', @RACEMASK_ALL, 14, 29989, 2621, 0, 0, 0, 0, 0),
('Priest', 'Discipline70PvEP2BiS', @RACEMASK_ALL, 15, 30108, 2505, 0, 0, 0, 0, 0),
('Priest', 'Discipline70PvEP2BiS', @RACEMASK_ALL, 16, 29923, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline70PvEP2BiS', @RACEMASK_ALL, 17, 30080, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Priest Holy70PvEP2BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`) VALUES
('Priest', 'Holy70PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Use Holy PvE P2 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Holy70PvE', 'Holy70PvE', 'TBC Phase 2'),
('Priest', 'Holy70PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Use Holy PvE P2 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Holy70PvE', 'Holy70PvE', 'TBC Phase 2');
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Priest', 'Holy70PvEP2BiS', @RACEMASK_ALL, 0, 30152, 3001, 2835, 2734, 0, 0, 0),
('Priest', 'Holy70PvEP2BiS', @RACEMASK_ALL, 1, 30018, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy70PvEP2BiS', @RACEMASK_ALL, 2, 30154, 2993, 2740, 2740, 0, 0, 0),
('Priest', 'Holy70PvEP2BiS', @RACEMASK_ALL, 4, 30150, 2661, 2740, 2734, 2740, 0, 0),
('Priest', 'Holy70PvEP2BiS', @RACEMASK_ALL, 5, 30036, 0, 2740, 2734, 0, 0, 0),
('Priest', 'Holy70PvEP2BiS', @RACEMASK_ALL, 6, 30153, 2748, 2740, 0, 0, 0, 0),
('Priest', 'Holy70PvEP2BiS', @RACEMASK_ALL, 7, 30100, 2656, 2728, 2740, 0, 0, 0),
('Priest', 'Holy70PvEP2BiS', @RACEMASK_ALL, 8, 32980, 2650, 2734, 0, 0, 0, 0),
('Priest', 'Holy70PvEP2BiS', @RACEMASK_ALL, 9, 30151, 2322, 0, 0, 0, 0, 0),
('Priest', 'Holy70PvEP2BiS', @RACEMASK_ALL, 10, 30110, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy70PvEP2BiS', @RACEMASK_ALL, 11, 29290, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy70PvEP2BiS', @RACEMASK_ALL, 12, 29376, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy70PvEP2BiS', @RACEMASK_ALL, 13, 28823, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy70PvEP2BiS', @RACEMASK_ALL, 14, 29989, 2621, 0, 0, 0, 0, 0),
('Priest', 'Holy70PvEP2BiS', @RACEMASK_ALL, 15, 30108, 2505, 0, 0, 0, 0, 0),
('Priest', 'Holy70PvEP2BiS', @RACEMASK_ALL, 16, 29923, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy70PvEP2BiS', @RACEMASK_ALL, 17, 30080, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Priest Shadow70PvEP2BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`) VALUES
('Priest', 'Shadow70PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_shadow_shadowwordpain:30|t|r Use Shadow PvE P2 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Shadow70PvE', 'Shadow70PvE', 'TBC Phase 2'),
('Priest', 'Shadow70PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_shadow_shadowwordpain:30|t|r Use Shadow PvE P2 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Shadow70PvE', 'Shadow70PvE', 'TBC Phase 2');
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Priest', 'Shadow70PvEP2BiS', @RACEMASK_ALL, 0, 32494, 3002, 2828, 2740, 0, 0, 0),
('Priest', 'Shadow70PvEP2BiS', @RACEMASK_ALL, 1, 30666, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow70PvEP2BiS', @RACEMASK_ALL, 2, 30163, 2995, 2736, 2740, 0, 0, 0),
('Priest', 'Shadow70PvEP2BiS', @RACEMASK_ALL, 4, 30107, 2661, 2736, 2736, 2740, 0, 0),
('Priest', 'Shadow70PvEP2BiS', @RACEMASK_ALL, 5, 30675, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow70PvEP2BiS', @RACEMASK_ALL, 6, 29972, 2748, 2740, 2736, 2740, 0, 0),
('Priest', 'Shadow70PvEP2BiS', @RACEMASK_ALL, 7, 30680, 2656, 0, 0, 0, 0, 0),
('Priest', 'Shadow70PvEP2BiS', @RACEMASK_ALL, 8, 30684, 2650, 0, 0, 0, 0, 0),
('Priest', 'Shadow70PvEP2BiS', @RACEMASK_ALL, 9, 31166, 2322, 0, 0, 0, 0, 0),
('Priest', 'Shadow70PvEP2BiS', @RACEMASK_ALL, 10, 30109, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow70PvEP2BiS', @RACEMASK_ALL, 11, 29922, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow70PvEP2BiS', @RACEMASK_ALL, 12, 29370, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow70PvEP2BiS', @RACEMASK_ALL, 13, 27683, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow70PvEP2BiS', @RACEMASK_ALL, 14, 31201, 2621, 0, 0, 0, 0, 0),
('Priest', 'Shadow70PvEP2BiS', @RACEMASK_ALL, 15, 28770, 2672, 0, 0, 0, 0, 0),
('Priest', 'Shadow70PvEP2BiS', @RACEMASK_ALL, 16, 29272, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow70PvEP2BiS', @RACEMASK_ALL, 17, 29982, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Rogue Assassination70PvEP2BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`) VALUES
('Rogue', 'Assassination70PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_rogue_eviscerate:30|t|r Use Assassination PvE P2 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Assassination70PvE', 'Assassination70PvE', 'TBC Phase 2'),
('Rogue', 'Assassination70PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_rogue_eviscerate:30|t|r Use Assassination PvE P2 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Assassination70PvE', 'Assassination70PvE', 'TBC Phase 2');
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Rogue', 'Assassination70PvEP2BiS', @RACEMASK_ALL, 0, 30146, 3003, 2829, 2726, 0, 0, 0),
('Rogue', 'Assassination70PvEP2BiS', @RACEMASK_ALL, 1, 29381, 0, 0, 0, 0, 0, 0),
('Rogue', 'Assassination70PvEP2BiS', @RACEMASK_ALL, 2, 30149, 2986, 2726, 2731, 0, 0, 0),
('Rogue', 'Assassination70PvEP2BiS', @RACEMASK_ALL, 4, 30101, 2661, 2735, 2735, 2731, 0, 0),
('Rogue', 'Assassination70PvEP2BiS', @RACEMASK_ALL, 5, 30106, 0, 2726, 2731, 0, 0, 0),
('Rogue', 'Assassination70PvEP2BiS', @RACEMASK_ALL, 6, 30148, 3012, 2731, 0, 0, 0, 0),
('Rogue', 'Assassination70PvEP2BiS', @RACEMASK_ALL, 7, 28545, 2939, 2726, 2735, 0, 0, 0),
('Rogue', 'Assassination70PvEP2BiS', @RACEMASK_ALL, 8, 29966, 2647, 2731, 0, 0, 0, 0),
('Rogue', 'Assassination70PvEP2BiS', @RACEMASK_ALL, 9, 30145, 2564, 0, 0, 0, 0, 0),
('Rogue', 'Assassination70PvEP2BiS', @RACEMASK_ALL, 10, 30052, 0, 0, 0, 0, 0, 0),
('Rogue', 'Assassination70PvEP2BiS', @RACEMASK_ALL, 11, 29997, 0, 0, 0, 0, 0, 0),
('Rogue', 'Assassination70PvEP2BiS', @RACEMASK_ALL, 12, 28830, 0, 0, 0, 0, 0, 0),
('Rogue', 'Assassination70PvEP2BiS', @RACEMASK_ALL, 13, 30450, 0, 0, 0, 0, 0, 0),
('Rogue', 'Assassination70PvEP2BiS', @RACEMASK_ALL, 14, 28672, 368, 0, 0, 0, 0, 0),
('Rogue', 'Assassination70PvEP2BiS', @RACEMASK_ALL, 15, 30082, 2673, 0, 0, 0, 0, 0),
('Rogue', 'Assassination70PvEP2BiS', @RACEMASK_ALL, 16, 32027, 2673, 0, 0, 0, 0, 0),
('Rogue', 'Assassination70PvEP2BiS', @RACEMASK_ALL, 17, 29949, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Rogue Combat70PvEP2BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`) VALUES
('Rogue', 'Combat70PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_backstab:30|t|r Use Combat PvE P2 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Combat70PvE', 'Combat70PvE', 'TBC Phase 2'),
('Rogue', 'Combat70PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_backstab:30|t|r Use Combat PvE P2 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Combat70PvE', 'Combat70PvE', 'TBC Phase 2');
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Rogue', 'Combat70PvEP2BiS', @RACEMASK_ALL, 0, 30146, 3003, 2829, 2726, 0, 0, 0),
('Rogue', 'Combat70PvEP2BiS', @RACEMASK_ALL, 1, 29381, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat70PvEP2BiS', @RACEMASK_ALL, 2, 30149, 2986, 2726, 2731, 0, 0, 0),
('Rogue', 'Combat70PvEP2BiS', @RACEMASK_ALL, 4, 30101, 2661, 2735, 2735, 2731, 0, 0),
('Rogue', 'Combat70PvEP2BiS', @RACEMASK_ALL, 5, 30106, 0, 2726, 2731, 0, 0, 0),
('Rogue', 'Combat70PvEP2BiS', @RACEMASK_ALL, 6, 30148, 3012, 2731, 0, 0, 0, 0),
('Rogue', 'Combat70PvEP2BiS', @RACEMASK_ALL, 7, 28545, 2939, 2726, 2735, 0, 0, 0),
('Rogue', 'Combat70PvEP2BiS', @RACEMASK_ALL, 8, 29966, 2647, 2731, 0, 0, 0, 0),
('Rogue', 'Combat70PvEP2BiS', @RACEMASK_ALL, 9, 30145, 2564, 0, 0, 0, 0, 0),
('Rogue', 'Combat70PvEP2BiS', @RACEMASK_ALL, 10, 30052, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat70PvEP2BiS', @RACEMASK_ALL, 11, 29997, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat70PvEP2BiS', @RACEMASK_ALL, 12, 28830, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat70PvEP2BiS', @RACEMASK_ALL, 13, 30450, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat70PvEP2BiS', @RACEMASK_ALL, 14, 28672, 368, 0, 0, 0, 0, 0),
('Rogue', 'Combat70PvEP2BiS', @RACEMASK_ALL, 15, 30082, 2673, 0, 0, 0, 0, 0),
('Rogue', 'Combat70PvEP2BiS', @RACEMASK_ALL, 16, 32027, 2673, 0, 0, 0, 0, 0),
('Rogue', 'Combat70PvEP2BiS', @RACEMASK_ALL, 17, 29949, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Shaman Elemental70PvEP2BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`) VALUES
('Shaman', 'Elemental70PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_lightning:30|t|r Use Elemental PvE P2 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Elemental70PvE', 'Elemental70PvE', 'TBC Phase 2'),
('Shaman', 'Elemental70PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_lightning:30|t|r Use Elemental PvE P2 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Elemental70PvE', 'Elemental70PvE', 'TBC Phase 2');
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Shaman', 'Elemental70PvEP2BiS', @RACEMASK_ALL, 0, 29035, 3002, 2828, 2736, 0, 0, 0),
('Shaman', 'Elemental70PvEP2BiS', @RACEMASK_ALL, 1, 30015, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental70PvEP2BiS', @RACEMASK_ALL, 2, 29037, 2995, 2736, 2736, 0, 0, 0),
('Shaman', 'Elemental70PvEP2BiS', @RACEMASK_ALL, 4, 30169, 2661, 2740, 2736, 2736, 0, 0),
('Shaman', 'Elemental70PvEP2BiS', @RACEMASK_ALL, 5, 30038, 0, 2740, 2736, 0, 0, 0),
('Shaman', 'Elemental70PvEP2BiS', @RACEMASK_ALL, 6, 30172, 2748, 2736, 0, 0, 0, 0),
('Shaman', 'Elemental70PvEP2BiS', @RACEMASK_ALL, 7, 30067, 2656, 0, 0, 0, 0, 0),
('Shaman', 'Elemental70PvEP2BiS', @RACEMASK_ALL, 8, 29918, 2650, 0, 0, 0, 0, 0),
('Shaman', 'Elemental70PvEP2BiS', @RACEMASK_ALL, 9, 28780, 2322, 2736, 2740, 0, 0, 0),
('Shaman', 'Elemental70PvEP2BiS', @RACEMASK_ALL, 10, 30667, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental70PvEP2BiS', @RACEMASK_ALL, 11, 29302, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental70PvEP2BiS', @RACEMASK_ALL, 12, 28785, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental70PvEP2BiS', @RACEMASK_ALL, 13, 29370, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental70PvEP2BiS', @RACEMASK_ALL, 14, 28797, 2621, 0, 0, 0, 0, 0),
('Shaman', 'Elemental70PvEP2BiS', @RACEMASK_ALL, 15, 29988, 2671, 0, 0, 0, 0, 0),
('Shaman', 'Elemental70PvEP2BiS', @RACEMASK_ALL, 17, 28248, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Shaman Enhancement70PvEP2BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`) VALUES
('Shaman', 'Enhancement70PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_lightningshield:30|t|r Use Enhancement PvE P2 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Enhancement70PvE', 'Enhancement70PvE', 'TBC Phase 2'),
('Shaman', 'Enhancement70PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_lightningshield:30|t|r Use Enhancement PvE P2 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Enhancement70PvE', 'Enhancement70PvE', 'TBC Phase 2');
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Shaman', 'Enhancement70PvEP2BiS', @RACEMASK_ALL, 0, 30190, 3003, 2829, 2735, 0, 0, 0),
('Shaman', 'Enhancement70PvEP2BiS', @RACEMASK_ALL, 1, 30017, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement70PvEP2BiS', @RACEMASK_ALL, 2, 30055, 2986, 2726, 0, 0, 0, 0),
('Shaman', 'Enhancement70PvEP2BiS', @RACEMASK_ALL, 4, 30185, 2661, 2726, 2731, 2735, 0, 0),
('Shaman', 'Enhancement70PvEP2BiS', @RACEMASK_ALL, 5, 30106, 0, 2726, 2731, 0, 0, 0),
('Shaman', 'Enhancement70PvEP2BiS', @RACEMASK_ALL, 6, 30192, 3012, 2726, 0, 0, 0, 0),
('Shaman', 'Enhancement70PvEP2BiS', @RACEMASK_ALL, 7, 30039, 2939, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement70PvEP2BiS', @RACEMASK_ALL, 8, 30091, 2647, 2735, 0, 0, 0, 0),
('Shaman', 'Enhancement70PvEP2BiS', @RACEMASK_ALL, 9, 30189, 2564, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement70PvEP2BiS', @RACEMASK_ALL, 10, 29997, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement70PvEP2BiS', @RACEMASK_ALL, 11, 30052, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement70PvEP2BiS', @RACEMASK_ALL, 12, 28830, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement70PvEP2BiS', @RACEMASK_ALL, 13, 29383, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement70PvEP2BiS', @RACEMASK_ALL, 14, 24259, 368, 2726, 0, 0, 0, 0),
('Shaman', 'Enhancement70PvEP2BiS', @RACEMASK_ALL, 15, 32944, 2673, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement70PvEP2BiS', @RACEMASK_ALL, 16, 31139, 2673, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement70PvEP2BiS', @RACEMASK_ALL, 17, 27815, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Shaman Restoration70PvEP2BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`) VALUES
('Shaman', 'Restoration70PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_magicimmunity:30|t|r Use Restoration PvE P2 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Restoration70PvE', 'Restoration70PvE', 'TBC Phase 2'),
('Shaman', 'Restoration70PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_magicimmunity:30|t|r Use Restoration PvE P2 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Restoration70PvE', 'Restoration70PvE', 'TBC Phase 2');
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Shaman', 'Restoration70PvEP2BiS', @RACEMASK_ALL, 0, 30166, 3001, 2835, 2734, 0, 0, 0),
('Shaman', 'Restoration70PvEP2BiS', @RACEMASK_ALL, 1, 30018, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration70PvEP2BiS', @RACEMASK_ALL, 2, 30168, 2993, 2740, 2740, 0, 0, 0),
('Shaman', 'Restoration70PvEP2BiS', @RACEMASK_ALL, 4, 30164, 2661, 2740, 2740, 2734, 0, 0),
('Shaman', 'Restoration70PvEP2BiS', @RACEMASK_ALL, 5, 30030, 0, 2734, 2734, 0, 0, 0),
('Shaman', 'Restoration70PvEP2BiS', @RACEMASK_ALL, 6, 29991, 2748, 2740, 2740, 2734, 0, 0),
('Shaman', 'Restoration70PvEP2BiS', @RACEMASK_ALL, 7, 30737, 2656, 2734, 2740, 0, 0, 0),
('Shaman', 'Restoration70PvEP2BiS', @RACEMASK_ALL, 8, 30047, 2650, 2740, 0, 0, 0, 0),
('Shaman', 'Restoration70PvEP2BiS', @RACEMASK_ALL, 9, 29976, 2322, 2740, 2734, 0, 0, 0),
('Shaman', 'Restoration70PvEP2BiS', @RACEMASK_ALL, 10, 28763, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration70PvEP2BiS', @RACEMASK_ALL, 11, 29920, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration70PvEP2BiS', @RACEMASK_ALL, 12, 29376, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration70PvEP2BiS', @RACEMASK_ALL, 13, 28190, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration70PvEP2BiS', @RACEMASK_ALL, 14, 29989, 2621, 0, 0, 0, 0, 0),
('Shaman', 'Restoration70PvEP2BiS', @RACEMASK_ALL, 15, 30108, 2505, 0, 0, 0, 0, 0),
('Shaman', 'Restoration70PvEP2BiS', @RACEMASK_ALL, 16, 29274, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration70PvEP2BiS', @RACEMASK_ALL, 17, 28523, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warlock Affliction70PvEP2BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`) VALUES
('Warlock', 'Affliction70PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_shadow_deathcoil:30|t|r Use Affliction PvE P2 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Affliction70PvE', 'Affliction70PvE', 'TBC Phase 2'),
('Warlock', 'Affliction70PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_shadow_deathcoil:30|t|r Use Affliction PvE P2 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Affliction70PvE', 'Affliction70PvE', 'TBC Phase 2');
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warlock', 'Affliction70PvEP2BiS', @RACEMASK_ALL, 0, 32494, 3002, 2828, 2740, 0, 0, 0),
('Warlock', 'Affliction70PvEP2BiS', @RACEMASK_ALL, 1, 30015, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction70PvEP2BiS', @RACEMASK_ALL, 2, 28967, 2995, 2740, 2736, 0, 0, 0),
('Warlock', 'Affliction70PvEP2BiS', @RACEMASK_ALL, 4, 30107, 2661, 2736, 2736, 2740, 0, 0),
('Warlock', 'Affliction70PvEP2BiS', @RACEMASK_ALL, 5, 30038, 0, 2740, 2736, 0, 0, 0),
('Warlock', 'Affliction70PvEP2BiS', @RACEMASK_ALL, 6, 30213, 2748, 2736, 0, 0, 0, 0),
('Warlock', 'Affliction70PvEP2BiS', @RACEMASK_ALL, 7, 30037, 2656, 0, 0, 0, 0, 0),
('Warlock', 'Affliction70PvEP2BiS', @RACEMASK_ALL, 8, 29918, 2650, 0, 0, 0, 0, 0),
('Warlock', 'Affliction70PvEP2BiS', @RACEMASK_ALL, 9, 30725, 2322, 2728, 2728, 0, 0, 0),
('Warlock', 'Affliction70PvEP2BiS', @RACEMASK_ALL, 10, 30109, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction70PvEP2BiS', @RACEMASK_ALL, 11, 29302, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction70PvEP2BiS', @RACEMASK_ALL, 12, 27683, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction70PvEP2BiS', @RACEMASK_ALL, 13, 29370, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction70PvEP2BiS', @RACEMASK_ALL, 14, 28766, 2621, 0, 0, 0, 0, 0),
('Warlock', 'Affliction70PvEP2BiS', @RACEMASK_ALL, 15, 32053, 2672, 0, 0, 0, 0, 0),
('Warlock', 'Affliction70PvEP2BiS', @RACEMASK_ALL, 16, 30049, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction70PvEP2BiS', @RACEMASK_ALL, 17, 29982, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warlock Demonology70PvEP2BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`) VALUES
('Warlock', 'Demonology70PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_shadow_metamorphosis:30|t|r Use Demonology PvE P2 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Demonology70PvE', 'Demonology70PvE', 'TBC Phase 2'),
('Warlock', 'Demonology70PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_shadow_metamorphosis:30|t|r Use Demonology PvE P2 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Demonology70PvE', 'Demonology70PvE', 'TBC Phase 2');
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warlock', 'Demonology70PvEP2BiS', @RACEMASK_ALL, 0, 32494, 3002, 2828, 2740, 0, 0, 0),
('Warlock', 'Demonology70PvEP2BiS', @RACEMASK_ALL, 1, 30015, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology70PvEP2BiS', @RACEMASK_ALL, 2, 28967, 2995, 2740, 2736, 0, 0, 0),
('Warlock', 'Demonology70PvEP2BiS', @RACEMASK_ALL, 4, 30107, 2661, 2736, 2736, 2740, 0, 0),
('Warlock', 'Demonology70PvEP2BiS', @RACEMASK_ALL, 5, 30038, 0, 2740, 2736, 0, 0, 0),
('Warlock', 'Demonology70PvEP2BiS', @RACEMASK_ALL, 6, 30213, 2748, 2736, 0, 0, 0, 0),
('Warlock', 'Demonology70PvEP2BiS', @RACEMASK_ALL, 7, 30050, 2656, 0, 0, 0, 0, 0),
('Warlock', 'Demonology70PvEP2BiS', @RACEMASK_ALL, 8, 30684, 2650, 0, 0, 0, 0, 0),
('Warlock', 'Demonology70PvEP2BiS', @RACEMASK_ALL, 9, 30725, 2322, 2728, 2728, 0, 0, 0),
('Warlock', 'Demonology70PvEP2BiS', @RACEMASK_ALL, 10, 30109, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology70PvEP2BiS', @RACEMASK_ALL, 11, 29302, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology70PvEP2BiS', @RACEMASK_ALL, 12, 29370, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology70PvEP2BiS', @RACEMASK_ALL, 13, 27683, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology70PvEP2BiS', @RACEMASK_ALL, 14, 29992, 2621, 0, 0, 0, 0, 0),
('Warlock', 'Demonology70PvEP2BiS', @RACEMASK_ALL, 15, 32053, 2672, 0, 0, 0, 0, 0),
('Warlock', 'Demonology70PvEP2BiS', @RACEMASK_ALL, 16, 29273, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology70PvEP2BiS', @RACEMASK_ALL, 17, 29982, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warlock Destruction70PvEP2BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`) VALUES
('Warlock', 'Destruction70PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_shadow_rainoffire:30|t|r Use Destruction PvE P2 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Destruction70PvE', 'Destruction70PvE', 'TBC Phase 2'),
('Warlock', 'Destruction70PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_shadow_rainoffire:30|t|r Use Destruction PvE P2 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Destruction70PvE', 'Destruction70PvE', 'TBC Phase 2');
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warlock', 'Destruction70PvEP2BiS', @RACEMASK_ALL, 0, 32494, 3002, 2828, 2740, 0, 0, 0),
('Warlock', 'Destruction70PvEP2BiS', @RACEMASK_ALL, 1, 30015, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction70PvEP2BiS', @RACEMASK_ALL, 2, 28967, 2995, 2740, 2736, 0, 0, 0),
('Warlock', 'Destruction70PvEP2BiS', @RACEMASK_ALL, 4, 30107, 2661, 2736, 2736, 2740, 0, 0),
('Warlock', 'Destruction70PvEP2BiS', @RACEMASK_ALL, 5, 30038, 0, 2740, 2736, 0, 0, 0),
('Warlock', 'Destruction70PvEP2BiS', @RACEMASK_ALL, 6, 30213, 2748, 2736, 0, 0, 0, 0),
('Warlock', 'Destruction70PvEP2BiS', @RACEMASK_ALL, 7, 30037, 2656, 0, 0, 0, 0, 0),
('Warlock', 'Destruction70PvEP2BiS', @RACEMASK_ALL, 8, 29918, 2650, 0, 0, 0, 0, 0),
('Warlock', 'Destruction70PvEP2BiS', @RACEMASK_ALL, 9, 30725, 2322, 2728, 2728, 0, 0, 0),
('Warlock', 'Destruction70PvEP2BiS', @RACEMASK_ALL, 10, 30109, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction70PvEP2BiS', @RACEMASK_ALL, 11, 29302, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction70PvEP2BiS', @RACEMASK_ALL, 12, 27683, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction70PvEP2BiS', @RACEMASK_ALL, 13, 29370, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction70PvEP2BiS', @RACEMASK_ALL, 14, 28766, 2621, 0, 0, 0, 0, 0),
('Warlock', 'Destruction70PvEP2BiS', @RACEMASK_ALL, 15, 32053, 2671, 0, 0, 0, 0, 0),
('Warlock', 'Destruction70PvEP2BiS', @RACEMASK_ALL, 16, 30049, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction70PvEP2BiS', @RACEMASK_ALL, 17, 29982, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warrior Arms70PvEP2BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`) VALUES
('Warrior', 'Arms70PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_rogue_eviscerate:30|t|r Use Arms PvE P2 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Arms70PvE', 'Arms70PvE', 'TBC Phase 2'),
('Warrior', 'Arms70PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_rogue_eviscerate:30|t|r Use Arms PvE P2 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Arms70PvE', 'Arms70PvE', 'TBC Phase 2');
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warrior', 'Arms70PvEP2BiS', @RACEMASK_ALL, 0, 30120, 3003, 2834, 2731, 0, 0, 0),
('Warrior', 'Arms70PvEP2BiS', @RACEMASK_ALL, 1, 30022, 0, 0, 0, 0, 0, 0),
('Warrior', 'Arms70PvEP2BiS', @RACEMASK_ALL, 2, 30055, 2986, 2725, 0, 0, 0, 0),
('Warrior', 'Arms70PvEP2BiS', @RACEMASK_ALL, 4, 30118, 2661, 2735, 2731, 2725, 0, 0),
('Warrior', 'Arms70PvEP2BiS', @RACEMASK_ALL, 5, 30106, 0, 2725, 2731, 0, 0, 0),
('Warrior', 'Arms70PvEP2BiS', @RACEMASK_ALL, 6, 29995, 3012, 0, 0, 0, 0, 0),
('Warrior', 'Arms70PvEP2BiS', @RACEMASK_ALL, 7, 30081, 2939, 0, 0, 0, 0, 0),
('Warrior', 'Arms70PvEP2BiS', @RACEMASK_ALL, 8, 30057, 2647, 2731, 0, 0, 0, 0),
('Warrior', 'Arms70PvEP2BiS', @RACEMASK_ALL, 9, 29947, 684, 0, 0, 0, 0, 0),
('Warrior', 'Arms70PvEP2BiS', @RACEMASK_ALL, 10, 29997, 0, 0, 0, 0, 0, 0),
('Warrior', 'Arms70PvEP2BiS', @RACEMASK_ALL, 11, 30738, 0, 0, 0, 0, 0, 0),
('Warrior', 'Arms70PvEP2BiS', @RACEMASK_ALL, 12, 28830, 0, 0, 0, 0, 0, 0),
('Warrior', 'Arms70PvEP2BiS', @RACEMASK_ALL, 13, 21670, 0, 0, 0, 0, 0, 0),
('Warrior', 'Arms70PvEP2BiS', @RACEMASK_ALL, 14, 30729, 368, 0, 0, 0, 0, 0),
('Warrior', 'Arms70PvEP2BiS', @RACEMASK_ALL, 15, 29993, 2667, 2725, 2735, 2731, 0, 0),
('Warrior', 'Arms70PvEP2BiS', @RACEMASK_ALL, 17, 30105, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warrior Fury70PvEP2BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`) VALUES
('Warrior', 'Fury70PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_warrior_innerrage:30|t|r Use Fury PvE P2 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Fury70PvE', 'Fury70PvE', 'TBC Phase 2'),
('Warrior', 'Fury70PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_warrior_innerrage:30|t|r Use Fury PvE P2 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Fury70PvE', 'Fury70PvE', 'TBC Phase 2');
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warrior', 'Fury70PvEP2BiS', @RACEMASK_ALL, 0, 30120, 3003, 2834, 2731, 0, 0, 0),
('Warrior', 'Fury70PvEP2BiS', @RACEMASK_ALL, 1, 30022, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury70PvEP2BiS', @RACEMASK_ALL, 2, 30122, 2986, 2735, 2731, 0, 0, 0),
('Warrior', 'Fury70PvEP2BiS', @RACEMASK_ALL, 4, 30118, 2661, 2735, 2731, 2725, 0, 0),
('Warrior', 'Fury70PvEP2BiS', @RACEMASK_ALL, 5, 30106, 0, 2725, 2731, 0, 0, 0),
('Warrior', 'Fury70PvEP2BiS', @RACEMASK_ALL, 6, 29995, 3012, 0, 0, 0, 0, 0),
('Warrior', 'Fury70PvEP2BiS', @RACEMASK_ALL, 7, 30081, 2939, 0, 0, 0, 0, 0),
('Warrior', 'Fury70PvEP2BiS', @RACEMASK_ALL, 8, 30057, 2647, 2731, 0, 0, 0, 0),
('Warrior', 'Fury70PvEP2BiS', @RACEMASK_ALL, 9, 30119, 684, 0, 0, 0, 0, 0),
('Warrior', 'Fury70PvEP2BiS', @RACEMASK_ALL, 10, 29997, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury70PvEP2BiS', @RACEMASK_ALL, 11, 30738, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury70PvEP2BiS', @RACEMASK_ALL, 12, 28830, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury70PvEP2BiS', @RACEMASK_ALL, 13, 21670, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury70PvEP2BiS', @RACEMASK_ALL, 14, 30729, 368, 0, 0, 0, 0, 0),
('Warrior', 'Fury70PvEP2BiS', @RACEMASK_ALL, 15, 28439, 2673, 0, 0, 0, 0, 0),
('Warrior', 'Fury70PvEP2BiS', @RACEMASK_ALL, 16, 30082, 2673, 0, 0, 0, 0, 0),
('Warrior', 'Fury70PvEP2BiS', @RACEMASK_ALL, 17, 30105, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warrior Protection70PvEP2BiS =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`) VALUES
('Warrior', 'Protection70PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_warrior_defensivestance:30|t|r Use Protection PvE P2 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Protection70PvE', 'Protection70PvE', 'TBC Phase 2'),
('Warrior', 'Protection70PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_warrior_defensivestance:30|t|r Use Protection PvE P2 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Protection70PvE', 'Protection70PvE', 'TBC Phase 2');
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warrior', 'Protection70PvEP2BiS', @RACEMASK_ALL, 0, 30115, 2999, 2833, 2725, 0, 0, 0),
('Warrior', 'Protection70PvEP2BiS', @RACEMASK_ALL, 1, 30099, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection70PvEP2BiS', @RACEMASK_ALL, 2, 30117, 2991, 2725, 2731, 0, 0, 0),
('Warrior', 'Protection70PvEP2BiS', @RACEMASK_ALL, 4, 30113, 2661, 2731, 2737, 2725, 0, 0),
('Warrior', 'Protection70PvEP2BiS', @RACEMASK_ALL, 5, 30106, 0, 2725, 2731, 0, 0, 0),
('Warrior', 'Protection70PvEP2BiS', @RACEMASK_ALL, 6, 30116, 3011, 2725, 0, 0, 0, 0),
('Warrior', 'Protection70PvEP2BiS', @RACEMASK_ALL, 7, 32793, 2940, 0, 0, 0, 0, 0),
('Warrior', 'Protection70PvEP2BiS', @RACEMASK_ALL, 8, 32818, 2648, 2737, 0, 0, 0, 0),
('Warrior', 'Protection70PvEP2BiS', @RACEMASK_ALL, 9, 29998, 2564, 2737, 2731, 0, 0, 0),
('Warrior', 'Protection70PvEP2BiS', @RACEMASK_ALL, 10, 30834, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection70PvEP2BiS', @RACEMASK_ALL, 11, 29294, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection70PvEP2BiS', @RACEMASK_ALL, 12, 23836, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection70PvEP2BiS', @RACEMASK_ALL, 13, 28121, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection70PvEP2BiS', @RACEMASK_ALL, 14, 29994, 368, 0, 0, 0, 0, 0),
('Warrior', 'Protection70PvEP2BiS', @RACEMASK_ALL, 15, 28439, 2673, 0, 0, 0, 0, 0),
('Warrior', 'Protection70PvEP2BiS', @RACEMASK_ALL, 16, 28825, 929, 2731, 0, 0, 0, 0),
('Warrior', 'Protection70PvEP2BiS', @RACEMASK_ALL, 17, 32756, 0, 2737, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

