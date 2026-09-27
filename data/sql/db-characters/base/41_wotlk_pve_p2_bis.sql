-- Batch-generated BiS gear templates
-- Expansion: wotlk  Mode: pve  Phase: 2
-- 31 specs

-- Idempotency: remove this file's templates first so re-application cannot duplicate rows
-- (the index table has no unique key; without this a re-applied file would append copies).
DELETE FROM `mod_npc_talent_template_index` WHERE `playerSpec` IN ('Blood80PvEP2BiSTank', 'Frost80PvEP2BiS', 'Unholy80PvEP2BiS', 'Balance80PvEP2BiS', 'Feral80PvEP2BiS', 'Feral80PvEP2BiSTank', 'Restoration80PvEP2BiSHeal', 'Beastmastery80PvEP2BiS', 'Marksmanship80PvEP2BiS', 'Survival80PvEP2BiS', 'Arcane80PvEP2BiS', 'Fire80PvEP2BiS', 'Holy80PvEP2BiSHeal', 'Protection80PvEP2BiSTank', 'Retribution80PvEP2BiS', 'Discipline80PvEP2BiSHeal', 'Shadow80PvEP2BiS', 'Assassination80PvEP2BiS', 'Combat80PvEP2BiS', 'Subtlety80PvEP2BiS', 'Elemental80PvEP2BiS', 'Enhancement80PvEP2BiS', 'Affliction80PvEP2BiS', 'Demonology80PvEP2BiS', 'Destruction80PvEP2BiS', 'Arms80PvEP2BiS', 'Fury80PvEP2BiS');
DELETE FROM `mod_npc_talent_template_gear` WHERE `playerSpec` IN ('Blood80PvEP2BiSTank', 'Frost80PvEP2BiS', 'Unholy80PvEP2BiS', 'Balance80PvEP2BiS', 'Feral80PvEP2BiS', 'Feral80PvEP2BiSTank', 'Restoration80PvEP2BiSHeal', 'Beastmastery80PvEP2BiS', 'Marksmanship80PvEP2BiS', 'Survival80PvEP2BiS', 'Arcane80PvEP2BiS', 'Fire80PvEP2BiS', 'Holy80PvEP2BiSHeal', 'Protection80PvEP2BiSTank', 'Retribution80PvEP2BiS', 'Discipline80PvEP2BiSHeal', 'Shadow80PvEP2BiS', 'Assassination80PvEP2BiS', 'Combat80PvEP2BiS', 'Subtlety80PvEP2BiS', 'Elemental80PvEP2BiS', 'Enhancement80PvEP2BiS', 'Affliction80PvEP2BiS', 'Demonology80PvEP2BiS', 'Destruction80PvEP2BiS', 'Arms80PvEP2BiS', 'Fury80PvEP2BiS');

SET @MINLEVEL = 80;
SET @MAXLEVEL = 80;
SET @RACEMASK_HUMAN = 1;
SET @RACEMASK_A = 1100; -- Alliance without Human
SET @RACEMASK_H = 690;  -- Horde
-- ===== Death Knight Blood 80PvEP2BiSTank (tank) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Death Knight', 'Blood80PvEP2BiSTank', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_deathknight_bloodpresence:30|t|r Use Blood PvE P2 BiS Tank', 7, @MINLEVEL, @MAXLEVEL, 'Blood80PvE', 'Blood80PvE', 'WotLK Phase 2', 302),
('Death Knight', 'Blood80PvEP2BiSTank', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_deathknight_bloodpresence:30|t|r Use Blood PvE P2 BiS Tank (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Blood80PvE', 'Blood80PvE', 'WotLK Phase 2', 302);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Death Knight', 'Blood80PvEP2BiSTank', @RACEMASK_HUMAN, 0, 46120, 3878, 3637, 3293, 0, 0, 0),
('Death Knight', 'Blood80PvEP2BiSTank', @RACEMASK_HUMAN, 1, 45485, 0, 3454, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP2BiSTank', @RACEMASK_HUMAN, 2, 46122, 3852, 3454, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP2BiSTank', @RACEMASK_HUMAN, 4, 46118, 3297, 3293, 3293, 0, 0, 0),
('Death Knight', 'Blood80PvEP2BiSTank', @RACEMASK_HUMAN, 5, 45551, 3599, 3454, 3454, 0, 0, 3454),
('Death Knight', 'Blood80PvEP2BiSTank', @RACEMASK_HUMAN, 6, 45594, 3822, 3454, 3454, 3454, 0, 0),
('Death Knight', 'Blood80PvEP2BiSTank', @RACEMASK_HUMAN, 7, 45988, 3606, 3454, 3454, 0, 0, 0),
('Death Knight', 'Blood80PvEP2BiSTank', @RACEMASK_HUMAN, 8, 45111, 3850, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP2BiSTank', @RACEMASK_HUMAN, 9, 46119, 3860, 3454, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP2BiSTank', @RACEMASK_HUMAN, 10, 45471, 0, 3454, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP2BiSTank', @RACEMASK_HUMAN, 11, 45871, 0, 3863, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP2BiSTank', @RACEMASK_HUMAN, 12, 45158, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP2BiSTank', @RACEMASK_HUMAN, 13, 46021, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP2BiSTank', @RACEMASK_HUMAN, 14, 45496, 3294, 3464, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP2BiSTank', @RACEMASK_HUMAN, 15, 45533, 3847, 3454, 3454, 0, 0, 0),
('Death Knight', 'Blood80PvEP2BiSTank', @RACEMASK_HUMAN, 17, 45144, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP2BiSTank', @RACEMASK_A, 0, 46120, 3878, 3637, 3293, 0, 0, 0),
('Death Knight', 'Blood80PvEP2BiSTank', @RACEMASK_A, 1, 45485, 0, 3454, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP2BiSTank', @RACEMASK_A, 2, 46122, 3852, 3454, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP2BiSTank', @RACEMASK_A, 4, 46118, 3297, 3293, 3293, 0, 0, 0),
('Death Knight', 'Blood80PvEP2BiSTank', @RACEMASK_A, 5, 45551, 3599, 3454, 3454, 0, 0, 3454),
('Death Knight', 'Blood80PvEP2BiSTank', @RACEMASK_A, 6, 45594, 3822, 3454, 3454, 3454, 0, 0),
('Death Knight', 'Blood80PvEP2BiSTank', @RACEMASK_A, 7, 45988, 3606, 3454, 3454, 0, 0, 0),
('Death Knight', 'Blood80PvEP2BiSTank', @RACEMASK_A, 8, 45111, 3850, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP2BiSTank', @RACEMASK_A, 9, 46119, 3860, 3454, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP2BiSTank', @RACEMASK_A, 10, 45471, 0, 3454, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP2BiSTank', @RACEMASK_A, 11, 45871, 0, 3863, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP2BiSTank', @RACEMASK_A, 12, 45158, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP2BiSTank', @RACEMASK_A, 13, 46021, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP2BiSTank', @RACEMASK_A, 14, 45496, 3294, 3464, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP2BiSTank', @RACEMASK_A, 15, 45533, 3847, 3454, 3454, 0, 0, 0),
('Death Knight', 'Blood80PvEP2BiSTank', @RACEMASK_A, 17, 45144, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP2BiSTank', @RACEMASK_H, 0, 46120, 3878, 3637, 3293, 0, 0, 0),
('Death Knight', 'Blood80PvEP2BiSTank', @RACEMASK_H, 1, 45485, 0, 3454, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP2BiSTank', @RACEMASK_H, 2, 46122, 3852, 3454, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP2BiSTank', @RACEMASK_H, 4, 46118, 3297, 3293, 3293, 0, 0, 0),
('Death Knight', 'Blood80PvEP2BiSTank', @RACEMASK_H, 5, 45551, 3599, 3454, 3454, 0, 0, 3454),
('Death Knight', 'Blood80PvEP2BiSTank', @RACEMASK_H, 6, 45594, 3822, 3454, 3454, 3454, 0, 0),
('Death Knight', 'Blood80PvEP2BiSTank', @RACEMASK_H, 7, 45988, 3606, 3454, 3454, 0, 0, 0),
('Death Knight', 'Blood80PvEP2BiSTank', @RACEMASK_H, 8, 45111, 3850, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP2BiSTank', @RACEMASK_H, 9, 46119, 3860, 3454, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP2BiSTank', @RACEMASK_H, 10, 45471, 0, 3454, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP2BiSTank', @RACEMASK_H, 11, 45871, 0, 3863, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP2BiSTank', @RACEMASK_H, 12, 45158, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP2BiSTank', @RACEMASK_H, 13, 46021, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP2BiSTank', @RACEMASK_H, 14, 45496, 3294, 3464, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP2BiSTank', @RACEMASK_H, 15, 45533, 3847, 3454, 3454, 0, 0, 0),
('Death Knight', 'Blood80PvEP2BiSTank', @RACEMASK_H, 17, 45144, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Death Knight Frost 80PvEP2BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Death Knight', 'Frost80PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_deathknight_frostpresence:30|t|r Use Frost PvE P2 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Frost80PvE', 'Frost80PvE', 'WotLK Phase 2', 302),
('Death Knight', 'Frost80PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_deathknight_frostpresence:30|t|r Use Frost PvE P2 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Frost80PvE', 'Frost80PvE', 'WotLK Phase 2', 302);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Death Knight', 'Frost80PvEP2BiS', @RACEMASK_HUMAN, 0, 46115, 3817, 3628, 3750, 0, 0, 0),
('Death Knight', 'Frost80PvEP2BiS', @RACEMASK_HUMAN, 1, 45459, 0, 3446, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP2BiS', @RACEMASK_HUMAN, 2, 46117, 3808, 3446, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP2BiS', @RACEMASK_HUMAN, 4, 46111, 3832, 3446, 3446, 0, 0, 0),
('Death Knight', 'Frost80PvEP2BiS', @RACEMASK_HUMAN, 5, 45241, 3601, 3732, 3732, 0, 0, 3732),
('Death Knight', 'Frost80PvEP2BiS', @RACEMASK_HUMAN, 6, 45134, 3823, 3446, 3446, 3446, 0, 0),
('Death Knight', 'Frost80PvEP2BiS', @RACEMASK_HUMAN, 7, 45599, 3606, 3446, 3446, 0, 0, 0),
('Death Knight', 'Frost80PvEP2BiS', @RACEMASK_HUMAN, 8, 45663, 3845, 3446, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP2BiS', @RACEMASK_HUMAN, 9, 46113, 3604, 3446, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP2BiS', @RACEMASK_HUMAN, 10, 45608, 0, 3446, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP2BiS', @RACEMASK_HUMAN, 11, 45534, 0, 3446, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP2BiS', @RACEMASK_HUMAN, 12, 42987, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP2BiS', @RACEMASK_HUMAN, 13, 45931, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP2BiS', @RACEMASK_HUMAN, 14, 46032, 3831, 3446, 3446, 0, 0, 0),
('Death Knight', 'Frost80PvEP2BiS', @RACEMASK_HUMAN, 15, 46097, 3370, 3446, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP2BiS', @RACEMASK_HUMAN, 16, 46097, 3368, 3446, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP2BiS', @RACEMASK_HUMAN, 17, 40207, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP2BiS', @RACEMASK_A, 0, 46115, 3817, 3628, 3750, 0, 0, 0),
('Death Knight', 'Frost80PvEP2BiS', @RACEMASK_A, 1, 45459, 0, 3446, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP2BiS', @RACEMASK_A, 2, 46117, 3808, 3446, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP2BiS', @RACEMASK_A, 4, 46111, 3832, 3446, 3446, 0, 0, 0),
('Death Knight', 'Frost80PvEP2BiS', @RACEMASK_A, 5, 45241, 3601, 3732, 3732, 0, 0, 3732),
('Death Knight', 'Frost80PvEP2BiS', @RACEMASK_A, 6, 45134, 3823, 3446, 3446, 3446, 0, 0),
('Death Knight', 'Frost80PvEP2BiS', @RACEMASK_A, 7, 45599, 3606, 3446, 3446, 0, 0, 0),
('Death Knight', 'Frost80PvEP2BiS', @RACEMASK_A, 8, 45663, 3845, 3446, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP2BiS', @RACEMASK_A, 9, 46113, 3604, 3446, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP2BiS', @RACEMASK_A, 10, 45608, 0, 3446, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP2BiS', @RACEMASK_A, 11, 45534, 0, 3446, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP2BiS', @RACEMASK_A, 12, 42987, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP2BiS', @RACEMASK_A, 13, 45931, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP2BiS', @RACEMASK_A, 14, 46032, 3831, 3446, 3446, 0, 0, 0),
('Death Knight', 'Frost80PvEP2BiS', @RACEMASK_A, 15, 46097, 3370, 3446, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP2BiS', @RACEMASK_A, 16, 46097, 3368, 3446, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP2BiS', @RACEMASK_A, 17, 40207, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP2BiS', @RACEMASK_H, 0, 46115, 3817, 3628, 3750, 0, 0, 0),
('Death Knight', 'Frost80PvEP2BiS', @RACEMASK_H, 1, 45459, 0, 3446, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP2BiS', @RACEMASK_H, 2, 46117, 3808, 3446, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP2BiS', @RACEMASK_H, 4, 46111, 3832, 3446, 3446, 0, 0, 0),
('Death Knight', 'Frost80PvEP2BiS', @RACEMASK_H, 5, 45241, 3601, 3732, 3732, 0, 0, 3732),
('Death Knight', 'Frost80PvEP2BiS', @RACEMASK_H, 6, 45134, 3823, 3446, 3446, 3446, 0, 0),
('Death Knight', 'Frost80PvEP2BiS', @RACEMASK_H, 7, 45599, 3606, 3446, 3446, 0, 0, 0),
('Death Knight', 'Frost80PvEP2BiS', @RACEMASK_H, 8, 45663, 3845, 3446, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP2BiS', @RACEMASK_H, 9, 46113, 3604, 3446, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP2BiS', @RACEMASK_H, 10, 45608, 0, 3446, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP2BiS', @RACEMASK_H, 11, 45534, 0, 3446, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP2BiS', @RACEMASK_H, 12, 42987, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP2BiS', @RACEMASK_H, 13, 45931, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP2BiS', @RACEMASK_H, 14, 46032, 3831, 3446, 3446, 0, 0, 0),
('Death Knight', 'Frost80PvEP2BiS', @RACEMASK_H, 15, 46097, 3370, 3446, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP2BiS', @RACEMASK_H, 16, 46097, 3368, 3446, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP2BiS', @RACEMASK_H, 17, 40207, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Death Knight Unholy 80PvEP2BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Death Knight', 'Unholy80PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_deathknight_unholypresence:30|t|r Use Unholy PvE P2 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Unholy80PvE', 'Unholy80PvE', 'WotLK Phase 2', 302),
('Death Knight', 'Unholy80PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_deathknight_unholypresence:30|t|r Use Unholy PvE P2 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Unholy80PvE', 'Unholy80PvE', 'WotLK Phase 2', 302);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Death Knight', 'Unholy80PvEP2BiS', @RACEMASK_HUMAN, 0, 45472, 3817, 3628, 3481, 0, 0, 0),
('Death Knight', 'Unholy80PvEP2BiS', @RACEMASK_HUMAN, 1, 46040, 0, 3446, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP2BiS', @RACEMASK_HUMAN, 2, 46117, 3808, 3446, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP2BiS', @RACEMASK_HUMAN, 4, 46111, 3832, 3446, 3446, 0, 0, 0),
('Death Knight', 'Unholy80PvEP2BiS', @RACEMASK_HUMAN, 5, 45241, 3601, 3732, 3732, 0, 0, 3732),
('Death Knight', 'Unholy80PvEP2BiS', @RACEMASK_HUMAN, 6, 45134, 3823, 3481, 3861, 3464, 0, 0),
('Death Knight', 'Unholy80PvEP2BiS', @RACEMASK_HUMAN, 7, 45599, 3606, 3446, 3446, 0, 0, 0),
('Death Knight', 'Unholy80PvEP2BiS', @RACEMASK_HUMAN, 8, 45663, 3845, 3446, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP2BiS', @RACEMASK_HUMAN, 9, 45481, 3604, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP2BiS', @RACEMASK_HUMAN, 10, 45250, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP2BiS', @RACEMASK_HUMAN, 11, 45534, 0, 3446, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP2BiS', @RACEMASK_HUMAN, 12, 42987, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP2BiS', @RACEMASK_HUMAN, 13, 45609, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP2BiS', @RACEMASK_HUMAN, 14, 45588, 3831, 3446, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP2BiS', @RACEMASK_HUMAN, 15, 46097, 3368, 3446, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP2BiS', @RACEMASK_HUMAN, 16, 46036, 3368, 3446, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP2BiS', @RACEMASK_HUMAN, 17, 45254, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP2BiS', @RACEMASK_A, 0, 45472, 3817, 3628, 3481, 0, 0, 0),
('Death Knight', 'Unholy80PvEP2BiS', @RACEMASK_A, 1, 46040, 0, 3446, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP2BiS', @RACEMASK_A, 2, 46117, 3808, 3446, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP2BiS', @RACEMASK_A, 4, 46111, 3832, 3446, 3446, 0, 0, 0),
('Death Knight', 'Unholy80PvEP2BiS', @RACEMASK_A, 5, 45241, 3601, 3732, 3732, 0, 0, 3732),
('Death Knight', 'Unholy80PvEP2BiS', @RACEMASK_A, 6, 45134, 3823, 3481, 3861, 3464, 0, 0),
('Death Knight', 'Unholy80PvEP2BiS', @RACEMASK_A, 7, 45599, 3606, 3446, 3446, 0, 0, 0),
('Death Knight', 'Unholy80PvEP2BiS', @RACEMASK_A, 8, 45663, 3845, 3446, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP2BiS', @RACEMASK_A, 9, 45481, 3604, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP2BiS', @RACEMASK_A, 10, 45250, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP2BiS', @RACEMASK_A, 11, 45534, 0, 3446, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP2BiS', @RACEMASK_A, 12, 42987, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP2BiS', @RACEMASK_A, 13, 45609, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP2BiS', @RACEMASK_A, 14, 45588, 3831, 3446, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP2BiS', @RACEMASK_A, 15, 46097, 3368, 3446, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP2BiS', @RACEMASK_A, 16, 46036, 3368, 3446, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP2BiS', @RACEMASK_A, 17, 45254, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP2BiS', @RACEMASK_H, 0, 45472, 3817, 3628, 3481, 0, 0, 0),
('Death Knight', 'Unholy80PvEP2BiS', @RACEMASK_H, 1, 46040, 0, 3446, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP2BiS', @RACEMASK_H, 2, 46117, 3808, 3446, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP2BiS', @RACEMASK_H, 4, 46111, 3832, 3446, 3446, 0, 0, 0),
('Death Knight', 'Unholy80PvEP2BiS', @RACEMASK_H, 5, 45241, 3601, 3732, 3732, 0, 0, 3732),
('Death Knight', 'Unholy80PvEP2BiS', @RACEMASK_H, 6, 45134, 3823, 3481, 3861, 3464, 0, 0),
('Death Knight', 'Unholy80PvEP2BiS', @RACEMASK_H, 7, 45599, 3606, 3446, 3446, 0, 0, 0),
('Death Knight', 'Unholy80PvEP2BiS', @RACEMASK_H, 8, 45663, 3845, 3446, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP2BiS', @RACEMASK_H, 9, 45481, 3604, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP2BiS', @RACEMASK_H, 10, 45250, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP2BiS', @RACEMASK_H, 11, 45534, 0, 3446, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP2BiS', @RACEMASK_H, 12, 42987, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP2BiS', @RACEMASK_H, 13, 45609, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP2BiS', @RACEMASK_H, 14, 45588, 3831, 3446, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP2BiS', @RACEMASK_H, 15, 46097, 3368, 3446, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP2BiS', @RACEMASK_H, 16, 46036, 3368, 3446, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP2BiS', @RACEMASK_H, 17, 45254, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Druid Balance 80PvEP2BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Druid', 'Balance80PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_starfall:30|t|r Use Balance PvE P2 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Balance80PvE', 'Balance80PvE', 'WotLK Phase 2', 302),
('Druid', 'Balance80PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_starfall:30|t|r Use Balance PvE P2 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Balance80PvE', 'Balance80PvE', 'WotLK Phase 2', 302);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Druid', 'Balance80PvEP2BiS', @RACEMASK_HUMAN, 0, 45497, 3820, 3621, 3866, 0, 0, 0),
('Druid', 'Balance80PvEP2BiS', @RACEMASK_HUMAN, 1, 45133, 0, 3487, 0, 0, 0, 0),
('Druid', 'Balance80PvEP2BiS', @RACEMASK_HUMAN, 2, 46196, 3810, 3448, 0, 0, 0, 0),
('Druid', 'Balance80PvEP2BiS', @RACEMASK_HUMAN, 4, 45519, 3832, 3487, 3448, 3472, 0, 0),
('Druid', 'Balance80PvEP2BiS', @RACEMASK_HUMAN, 5, 45619, 0, 3448, 3448, 0, 0, 3448),
('Druid', 'Balance80PvEP2BiS', @RACEMASK_HUMAN, 6, 46192, 3719, 3448, 3448, 0, 0, 0),
('Druid', 'Balance80PvEP2BiS', @RACEMASK_HUMAN, 7, 45537, 3606, 3448, 3472, 0, 0, 0),
('Druid', 'Balance80PvEP2BiS', @RACEMASK_HUMAN, 8, 45446, 2332, 3448, 0, 0, 0, 0),
('Druid', 'Balance80PvEP2BiS', @RACEMASK_HUMAN, 9, 45665, 3604, 3448, 3448, 0, 0, 0),
('Druid', 'Balance80PvEP2BiS', @RACEMASK_HUMAN, 10, 46046, 0, 3448, 0, 0, 0, 0),
('Druid', 'Balance80PvEP2BiS', @RACEMASK_HUMAN, 11, 45495, 0, 3448, 0, 0, 0, 0),
('Druid', 'Balance80PvEP2BiS', @RACEMASK_HUMAN, 12, 45466, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP2BiS', @RACEMASK_HUMAN, 13, 45518, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP2BiS', @RACEMASK_HUMAN, 14, 45242, 3859, 3487, 0, 0, 0, 0),
('Druid', 'Balance80PvEP2BiS', @RACEMASK_HUMAN, 15, 45620, 3834, 3448, 0, 0, 0, 0),
('Druid', 'Balance80PvEP2BiS', @RACEMASK_HUMAN, 16, 45617, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP2BiS', @RACEMASK_HUMAN, 17, 40321, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP2BiS', @RACEMASK_A, 0, 45497, 3820, 3621, 3866, 0, 0, 0),
('Druid', 'Balance80PvEP2BiS', @RACEMASK_A, 1, 45133, 0, 3487, 0, 0, 0, 0),
('Druid', 'Balance80PvEP2BiS', @RACEMASK_A, 2, 46196, 3810, 3448, 0, 0, 0, 0),
('Druid', 'Balance80PvEP2BiS', @RACEMASK_A, 4, 45519, 3832, 3487, 3448, 3472, 0, 0),
('Druid', 'Balance80PvEP2BiS', @RACEMASK_A, 5, 45619, 0, 3448, 3448, 0, 0, 3448),
('Druid', 'Balance80PvEP2BiS', @RACEMASK_A, 6, 46192, 3719, 3448, 3448, 0, 0, 0),
('Druid', 'Balance80PvEP2BiS', @RACEMASK_A, 7, 45537, 3606, 3448, 3472, 0, 0, 0),
('Druid', 'Balance80PvEP2BiS', @RACEMASK_A, 8, 45446, 2332, 3448, 0, 0, 0, 0),
('Druid', 'Balance80PvEP2BiS', @RACEMASK_A, 9, 45665, 3604, 3448, 3448, 0, 0, 0),
('Druid', 'Balance80PvEP2BiS', @RACEMASK_A, 10, 46046, 0, 3448, 0, 0, 0, 0),
('Druid', 'Balance80PvEP2BiS', @RACEMASK_A, 11, 45495, 0, 3448, 0, 0, 0, 0),
('Druid', 'Balance80PvEP2BiS', @RACEMASK_A, 12, 45466, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP2BiS', @RACEMASK_A, 13, 45518, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP2BiS', @RACEMASK_A, 14, 45242, 3859, 3487, 0, 0, 0, 0),
('Druid', 'Balance80PvEP2BiS', @RACEMASK_A, 15, 45620, 3834, 3448, 0, 0, 0, 0),
('Druid', 'Balance80PvEP2BiS', @RACEMASK_A, 16, 45617, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP2BiS', @RACEMASK_A, 17, 40321, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP2BiS', @RACEMASK_H, 0, 45497, 3820, 3621, 3866, 0, 0, 0),
('Druid', 'Balance80PvEP2BiS', @RACEMASK_H, 1, 45133, 0, 3487, 0, 0, 0, 0),
('Druid', 'Balance80PvEP2BiS', @RACEMASK_H, 2, 46196, 3810, 3448, 0, 0, 0, 0),
('Druid', 'Balance80PvEP2BiS', @RACEMASK_H, 4, 45519, 3832, 3487, 3448, 3472, 0, 0),
('Druid', 'Balance80PvEP2BiS', @RACEMASK_H, 5, 45619, 0, 3448, 3448, 0, 0, 3448),
('Druid', 'Balance80PvEP2BiS', @RACEMASK_H, 6, 46192, 3719, 3448, 3448, 0, 0, 0),
('Druid', 'Balance80PvEP2BiS', @RACEMASK_H, 7, 45537, 3606, 3448, 3472, 0, 0, 0),
('Druid', 'Balance80PvEP2BiS', @RACEMASK_H, 8, 45446, 2332, 3448, 0, 0, 0, 0),
('Druid', 'Balance80PvEP2BiS', @RACEMASK_H, 9, 45665, 3604, 3448, 3448, 0, 0, 0),
('Druid', 'Balance80PvEP2BiS', @RACEMASK_H, 10, 46046, 0, 3448, 0, 0, 0, 0),
('Druid', 'Balance80PvEP2BiS', @RACEMASK_H, 11, 45495, 0, 3448, 0, 0, 0, 0),
('Druid', 'Balance80PvEP2BiS', @RACEMASK_H, 12, 45466, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP2BiS', @RACEMASK_H, 13, 45518, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP2BiS', @RACEMASK_H, 14, 45242, 3859, 3487, 0, 0, 0, 0),
('Druid', 'Balance80PvEP2BiS', @RACEMASK_H, 15, 45620, 3834, 3448, 0, 0, 0, 0),
('Druid', 'Balance80PvEP2BiS', @RACEMASK_H, 16, 45617, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP2BiS', @RACEMASK_H, 17, 40321, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Druid Feral 80PvEP2BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Druid', 'Feral80PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_druid_catform:30|t|r Use Feral PvE P2 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Feral80PvE', 'Feral80PvE', 'WotLK Phase 2', 302),
('Druid', 'Feral80PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_druid_catform:30|t|r Use Feral PvE P2 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Feral80PvE', 'Feral80PvE', 'WotLK Phase 2', 302);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Druid', 'Feral80PvEP2BiS', @RACEMASK_HUMAN, 0, 46161, 3817, 3628, 3452, 0, 0, 0),
('Druid', 'Feral80PvEP2BiS', @RACEMASK_HUMAN, 1, 45517, 0, 3452, 0, 0, 0, 0),
('Druid', 'Feral80PvEP2BiS', @RACEMASK_HUMAN, 2, 45245, 3808, 3452, 3452, 0, 0, 0),
('Druid', 'Feral80PvEP2BiS', @RACEMASK_HUMAN, 4, 45473, 3832, 3452, 3452, 3452, 0, 0),
('Druid', 'Feral80PvEP2BiS', @RACEMASK_HUMAN, 5, 46095, 0, 3452, 3452, 0, 0, 3452),
('Druid', 'Feral80PvEP2BiS', @RACEMASK_HUMAN, 6, 45536, 3823, 3446, 3446, 3446, 0, 0),
('Druid', 'Feral80PvEP2BiS', @RACEMASK_HUMAN, 7, 45564, 3606, 3446, 3446, 0, 0, 0),
('Druid', 'Feral80PvEP2BiS', @RACEMASK_HUMAN, 8, 45869, 3845, 3460, 0, 0, 0, 0),
('Druid', 'Feral80PvEP2BiS', @RACEMASK_HUMAN, 9, 46158, 3604, 3452, 0, 0, 0, 0),
('Druid', 'Feral80PvEP2BiS', @RACEMASK_HUMAN, 10, 46048, 0, 3861, 0, 0, 0, 0),
('Druid', 'Feral80PvEP2BiS', @RACEMASK_HUMAN, 11, 45608, 0, 3446, 0, 0, 0, 0),
('Druid', 'Feral80PvEP2BiS', @RACEMASK_HUMAN, 12, 45931, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP2BiS', @RACEMASK_HUMAN, 13, 45609, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP2BiS', @RACEMASK_HUMAN, 14, 46032, 3605, 3452, 3497, 0, 0, 0),
('Druid', 'Feral80PvEP2BiS', @RACEMASK_HUMAN, 15, 45613, 3789, 3460, 3750, 0, 0, 0),
('Druid', 'Feral80PvEP2BiS', @RACEMASK_HUMAN, 17, 40713, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP2BiS', @RACEMASK_A, 0, 46161, 3817, 3628, 3452, 0, 0, 0),
('Druid', 'Feral80PvEP2BiS', @RACEMASK_A, 1, 45517, 0, 3452, 0, 0, 0, 0),
('Druid', 'Feral80PvEP2BiS', @RACEMASK_A, 2, 45245, 3808, 3452, 3452, 0, 0, 0),
('Druid', 'Feral80PvEP2BiS', @RACEMASK_A, 4, 45473, 3832, 3452, 3452, 3452, 0, 0),
('Druid', 'Feral80PvEP2BiS', @RACEMASK_A, 5, 46095, 0, 3452, 3452, 0, 0, 3452),
('Druid', 'Feral80PvEP2BiS', @RACEMASK_A, 6, 45536, 3823, 3446, 3446, 3446, 0, 0),
('Druid', 'Feral80PvEP2BiS', @RACEMASK_A, 7, 45564, 3606, 3446, 3446, 0, 0, 0),
('Druid', 'Feral80PvEP2BiS', @RACEMASK_A, 8, 45869, 3845, 3460, 0, 0, 0, 0),
('Druid', 'Feral80PvEP2BiS', @RACEMASK_A, 9, 46158, 3604, 3452, 0, 0, 0, 0),
('Druid', 'Feral80PvEP2BiS', @RACEMASK_A, 10, 46048, 0, 3861, 0, 0, 0, 0),
('Druid', 'Feral80PvEP2BiS', @RACEMASK_A, 11, 45608, 0, 3446, 0, 0, 0, 0),
('Druid', 'Feral80PvEP2BiS', @RACEMASK_A, 12, 45931, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP2BiS', @RACEMASK_A, 13, 45609, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP2BiS', @RACEMASK_A, 14, 46032, 3605, 3452, 3497, 0, 0, 0),
('Druid', 'Feral80PvEP2BiS', @RACEMASK_A, 15, 45613, 3789, 3460, 3750, 0, 0, 0),
('Druid', 'Feral80PvEP2BiS', @RACEMASK_A, 17, 40713, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP2BiS', @RACEMASK_H, 0, 46161, 3817, 3628, 3452, 0, 0, 0),
('Druid', 'Feral80PvEP2BiS', @RACEMASK_H, 1, 45517, 0, 3452, 0, 0, 0, 0),
('Druid', 'Feral80PvEP2BiS', @RACEMASK_H, 2, 45245, 3808, 3452, 3452, 0, 0, 0),
('Druid', 'Feral80PvEP2BiS', @RACEMASK_H, 4, 45473, 3832, 3452, 3452, 3452, 0, 0),
('Druid', 'Feral80PvEP2BiS', @RACEMASK_H, 5, 46095, 0, 3452, 3452, 0, 0, 3452),
('Druid', 'Feral80PvEP2BiS', @RACEMASK_H, 6, 45536, 3823, 3446, 3446, 3446, 0, 0),
('Druid', 'Feral80PvEP2BiS', @RACEMASK_H, 7, 45564, 3606, 3446, 3446, 0, 0, 0),
('Druid', 'Feral80PvEP2BiS', @RACEMASK_H, 8, 45869, 3845, 3460, 0, 0, 0, 0),
('Druid', 'Feral80PvEP2BiS', @RACEMASK_H, 9, 46158, 3604, 3452, 0, 0, 0, 0),
('Druid', 'Feral80PvEP2BiS', @RACEMASK_H, 10, 46048, 0, 3861, 0, 0, 0, 0),
('Druid', 'Feral80PvEP2BiS', @RACEMASK_H, 11, 45608, 0, 3446, 0, 0, 0, 0),
('Druid', 'Feral80PvEP2BiS', @RACEMASK_H, 12, 45931, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP2BiS', @RACEMASK_H, 13, 45609, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP2BiS', @RACEMASK_H, 14, 46032, 3605, 3452, 3497, 0, 0, 0),
('Druid', 'Feral80PvEP2BiS', @RACEMASK_H, 15, 45613, 3789, 3460, 3750, 0, 0, 0),
('Druid', 'Feral80PvEP2BiS', @RACEMASK_H, 17, 40713, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Druid Feral 80PvEP2BiSTank (tank) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Druid', 'Feral80PvEP2BiSTank', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_racial_bearform:30|t|r Use Feral PvE P2 BiS Tank', 7, @MINLEVEL, @MAXLEVEL, 'FeralTank80PvE', 'FeralTank80PvE', 'WotLK Phase 2', 302),
('Druid', 'Feral80PvEP2BiSTank', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_racial_bearform:30|t|r Use Feral PvE P2 BiS Tank (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'FeralTank80PvE', 'FeralTank80PvE', 'WotLK Phase 2', 302);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Druid', 'Feral80PvEP2BiSTank', @RACEMASK_HUMAN, 0, 41678, 3878, 3625, 3863, 0, 0, 0),
('Druid', 'Feral80PvEP2BiSTank', @RACEMASK_HUMAN, 1, 45517, 0, 3454, 0, 0, 0, 0),
('Druid', 'Feral80PvEP2BiSTank', @RACEMASK_HUMAN, 2, 45245, 3852, 3454, 3454, 0, 0, 0),
('Druid', 'Feral80PvEP2BiSTank', @RACEMASK_HUMAN, 4, 45473, 3832, 3454, 3454, 3454, 0, 0),
('Druid', 'Feral80PvEP2BiSTank', @RACEMASK_HUMAN, 5, 46095, 0, 3454, 3454, 0, 0, 3454),
('Druid', 'Feral80PvEP2BiSTank', @RACEMASK_HUMAN, 6, 45536, 3822, 3454, 3454, 3454, 0, 0),
('Druid', 'Feral80PvEP2BiSTank', @RACEMASK_HUMAN, 7, 45232, 3606, 3454, 0, 0, 0, 0),
('Druid', 'Feral80PvEP2BiSTank', @RACEMASK_HUMAN, 8, 45611, 3850, 3454, 0, 0, 0, 0),
('Druid', 'Feral80PvEP2BiSTank', @RACEMASK_HUMAN, 9, 46043, 3860, 3454, 3454, 0, 0, 0),
('Druid', 'Feral80PvEP2BiSTank', @RACEMASK_HUMAN, 10, 45471, 0, 3501, 0, 0, 0, 0),
('Druid', 'Feral80PvEP2BiSTank', @RACEMASK_HUMAN, 11, 45608, 0, 3454, 0, 0, 0, 0),
('Druid', 'Feral80PvEP2BiSTank', @RACEMASK_HUMAN, 12, 45158, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP2BiSTank', @RACEMASK_HUMAN, 13, 46021, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP2BiSTank', @RACEMASK_HUMAN, 14, 45496, 3294, 3750, 0, 0, 0, 0),
('Druid', 'Feral80PvEP2BiSTank', @RACEMASK_HUMAN, 15, 45533, 3870, 3454, 3454, 0, 0, 0),
('Druid', 'Feral80PvEP2BiSTank', @RACEMASK_HUMAN, 17, 45509, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP2BiSTank', @RACEMASK_A, 0, 41678, 3878, 3625, 3863, 0, 0, 0),
('Druid', 'Feral80PvEP2BiSTank', @RACEMASK_A, 1, 45517, 0, 3454, 0, 0, 0, 0),
('Druid', 'Feral80PvEP2BiSTank', @RACEMASK_A, 2, 45245, 3852, 3454, 3454, 0, 0, 0),
('Druid', 'Feral80PvEP2BiSTank', @RACEMASK_A, 4, 45473, 3832, 3454, 3454, 3454, 0, 0),
('Druid', 'Feral80PvEP2BiSTank', @RACEMASK_A, 5, 46095, 0, 3454, 3454, 0, 0, 3454),
('Druid', 'Feral80PvEP2BiSTank', @RACEMASK_A, 6, 45536, 3822, 3454, 3454, 3454, 0, 0),
('Druid', 'Feral80PvEP2BiSTank', @RACEMASK_A, 7, 45232, 3606, 3454, 0, 0, 0, 0),
('Druid', 'Feral80PvEP2BiSTank', @RACEMASK_A, 8, 45611, 3850, 3454, 0, 0, 0, 0),
('Druid', 'Feral80PvEP2BiSTank', @RACEMASK_A, 9, 46043, 3860, 3454, 3454, 0, 0, 0),
('Druid', 'Feral80PvEP2BiSTank', @RACEMASK_A, 10, 45471, 0, 3501, 0, 0, 0, 0),
('Druid', 'Feral80PvEP2BiSTank', @RACEMASK_A, 11, 45608, 0, 3454, 0, 0, 0, 0),
('Druid', 'Feral80PvEP2BiSTank', @RACEMASK_A, 12, 45158, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP2BiSTank', @RACEMASK_A, 13, 46021, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP2BiSTank', @RACEMASK_A, 14, 45496, 3294, 3750, 0, 0, 0, 0),
('Druid', 'Feral80PvEP2BiSTank', @RACEMASK_A, 15, 45533, 3870, 3454, 3454, 0, 0, 0),
('Druid', 'Feral80PvEP2BiSTank', @RACEMASK_A, 17, 45509, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP2BiSTank', @RACEMASK_H, 0, 41678, 3878, 3625, 3863, 0, 0, 0),
('Druid', 'Feral80PvEP2BiSTank', @RACEMASK_H, 1, 45517, 0, 3454, 0, 0, 0, 0),
('Druid', 'Feral80PvEP2BiSTank', @RACEMASK_H, 2, 45245, 3852, 3454, 3454, 0, 0, 0),
('Druid', 'Feral80PvEP2BiSTank', @RACEMASK_H, 4, 45473, 3832, 3454, 3454, 3454, 0, 0),
('Druid', 'Feral80PvEP2BiSTank', @RACEMASK_H, 5, 46095, 0, 3454, 3454, 0, 0, 3454),
('Druid', 'Feral80PvEP2BiSTank', @RACEMASK_H, 6, 45536, 3822, 3454, 3454, 3454, 0, 0),
('Druid', 'Feral80PvEP2BiSTank', @RACEMASK_H, 7, 45232, 3606, 3454, 0, 0, 0, 0),
('Druid', 'Feral80PvEP2BiSTank', @RACEMASK_H, 8, 45611, 3850, 3454, 0, 0, 0, 0),
('Druid', 'Feral80PvEP2BiSTank', @RACEMASK_H, 9, 46043, 3860, 3454, 3454, 0, 0, 0),
('Druid', 'Feral80PvEP2BiSTank', @RACEMASK_H, 10, 45471, 0, 3501, 0, 0, 0, 0),
('Druid', 'Feral80PvEP2BiSTank', @RACEMASK_H, 11, 45608, 0, 3454, 0, 0, 0, 0),
('Druid', 'Feral80PvEP2BiSTank', @RACEMASK_H, 12, 45158, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP2BiSTank', @RACEMASK_H, 13, 46021, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP2BiSTank', @RACEMASK_H, 14, 45496, 3294, 3750, 0, 0, 0, 0),
('Druid', 'Feral80PvEP2BiSTank', @RACEMASK_H, 15, 45533, 3870, 3454, 3454, 0, 0, 0),
('Druid', 'Feral80PvEP2BiSTank', @RACEMASK_H, 17, 45509, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Druid Restoration 80PvEP2BiSHeal (healer) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Druid', 'Restoration80PvEP2BiSHeal', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_healingtouch:30|t|r Use Restoration PvE P2 BiS Heal', 7, @MINLEVEL, @MAXLEVEL, 'Restoration80PvE', 'Restoration80PvE', 'WotLK Phase 2', 302),
('Druid', 'Restoration80PvEP2BiSHeal', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_healingtouch:30|t|r Use Restoration PvE P2 BiS Heal (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Restoration80PvE', 'Restoration80PvE', 'WotLK Phase 2', 302);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Druid', 'Restoration80PvEP2BiSHeal', @RACEMASK_HUMAN, 0, 46184, 3819, 3627, 3448, 0, 0, 0),
('Druid', 'Restoration80PvEP2BiSHeal', @RACEMASK_HUMAN, 1, 45243, 0, 3448, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP2BiSHeal', @RACEMASK_HUMAN, 2, 46187, 3809, 3448, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP2BiSHeal', @RACEMASK_HUMAN, 4, 45519, 3832, 3463, 3448, 3472, 0, 0),
('Druid', 'Restoration80PvEP2BiSHeal', @RACEMASK_HUMAN, 5, 45616, 0, 3448, 3448, 0, 0, 3448),
('Druid', 'Restoration80PvEP2BiSHeal', @RACEMASK_HUMAN, 6, 46185, 3719, 3472, 3448, 0, 0, 0),
('Druid', 'Restoration80PvEP2BiSHeal', @RACEMASK_HUMAN, 7, 45135, 3606, 3448, 3463, 0, 0, 0),
('Druid', 'Restoration80PvEP2BiSHeal', @RACEMASK_HUMAN, 8, 45446, 2332, 3448, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP2BiSHeal', @RACEMASK_HUMAN, 9, 46183, 3246, 3448, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP2BiSHeal', @RACEMASK_HUMAN, 10, 45495, 0, 3463, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP2BiSHeal', @RACEMASK_HUMAN, 11, 45946, 0, 3463, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP2BiSHeal', @RACEMASK_HUMAN, 12, 45703, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP2BiSHeal', @RACEMASK_HUMAN, 13, 45535, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP2BiSHeal', @RACEMASK_HUMAN, 14, 45618, 3831, 3448, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP2BiSHeal', @RACEMASK_HUMAN, 15, 46017, 3834, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP2BiSHeal', @RACEMASK_HUMAN, 16, 45271, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP2BiSHeal', @RACEMASK_HUMAN, 17, 40342, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP2BiSHeal', @RACEMASK_A, 0, 46184, 3819, 3627, 3448, 0, 0, 0),
('Druid', 'Restoration80PvEP2BiSHeal', @RACEMASK_A, 1, 45243, 0, 3448, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP2BiSHeal', @RACEMASK_A, 2, 46187, 3809, 3448, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP2BiSHeal', @RACEMASK_A, 4, 45519, 3832, 3463, 3448, 3472, 0, 0),
('Druid', 'Restoration80PvEP2BiSHeal', @RACEMASK_A, 5, 45616, 0, 3448, 3448, 0, 0, 3448),
('Druid', 'Restoration80PvEP2BiSHeal', @RACEMASK_A, 6, 46185, 3719, 3472, 3448, 0, 0, 0),
('Druid', 'Restoration80PvEP2BiSHeal', @RACEMASK_A, 7, 45135, 3606, 3448, 3463, 0, 0, 0),
('Druid', 'Restoration80PvEP2BiSHeal', @RACEMASK_A, 8, 45446, 2332, 3448, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP2BiSHeal', @RACEMASK_A, 9, 46183, 3246, 3448, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP2BiSHeal', @RACEMASK_A, 10, 45495, 0, 3463, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP2BiSHeal', @RACEMASK_A, 11, 45946, 0, 3463, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP2BiSHeal', @RACEMASK_A, 12, 45703, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP2BiSHeal', @RACEMASK_A, 13, 45535, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP2BiSHeal', @RACEMASK_A, 14, 45618, 3831, 3448, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP2BiSHeal', @RACEMASK_A, 15, 46017, 3834, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP2BiSHeal', @RACEMASK_A, 16, 45271, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP2BiSHeal', @RACEMASK_A, 17, 40342, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP2BiSHeal', @RACEMASK_H, 0, 46184, 3819, 3627, 3448, 0, 0, 0),
('Druid', 'Restoration80PvEP2BiSHeal', @RACEMASK_H, 1, 45243, 0, 3448, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP2BiSHeal', @RACEMASK_H, 2, 46187, 3809, 3448, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP2BiSHeal', @RACEMASK_H, 4, 45519, 3832, 3463, 3448, 3472, 0, 0),
('Druid', 'Restoration80PvEP2BiSHeal', @RACEMASK_H, 5, 45616, 0, 3448, 3448, 0, 0, 3448),
('Druid', 'Restoration80PvEP2BiSHeal', @RACEMASK_H, 6, 46185, 3719, 3472, 3448, 0, 0, 0),
('Druid', 'Restoration80PvEP2BiSHeal', @RACEMASK_H, 7, 45135, 3606, 3448, 3463, 0, 0, 0),
('Druid', 'Restoration80PvEP2BiSHeal', @RACEMASK_H, 8, 45446, 2332, 3448, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP2BiSHeal', @RACEMASK_H, 9, 46183, 3246, 3448, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP2BiSHeal', @RACEMASK_H, 10, 45495, 0, 3463, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP2BiSHeal', @RACEMASK_H, 11, 45946, 0, 3463, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP2BiSHeal', @RACEMASK_H, 12, 45703, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP2BiSHeal', @RACEMASK_H, 13, 45535, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP2BiSHeal', @RACEMASK_H, 14, 45618, 3831, 3448, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP2BiSHeal', @RACEMASK_H, 15, 46017, 3834, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP2BiSHeal', @RACEMASK_H, 16, 45271, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP2BiSHeal', @RACEMASK_H, 17, 40342, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Hunter Beastmastery 80PvEP2BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Hunter', 'Beastmastery80PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_hunter_beasttaming:30|t|r Use Beastmastery PvE P2 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Beastmastery80PvE', 'Beastmastery80PvE', 'WotLK Phase 2', 302),
('Hunter', 'Beastmastery80PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_hunter_beasttaming:30|t|r Use Beastmastery PvE P2 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Beastmastery80PvE', 'Beastmastery80PvE', 'WotLK Phase 2', 302);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Hunter', 'Beastmastery80PvEP2BiS', @RACEMASK_HUMAN, 0, 45610, 3817, 3628, 3750, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP2BiS', @RACEMASK_HUMAN, 1, 45517, 0, 3862, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP2BiS', @RACEMASK_HUMAN, 2, 45300, 3808, 3447, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP2BiS', @RACEMASK_HUMAN, 4, 45473, 3832, 3447, 3447, 3447, 0, 0),
('Hunter', 'Beastmastery80PvEP2BiS', @RACEMASK_HUMAN, 5, 45467, 0, 3447, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP2BiS', @RACEMASK_HUMAN, 6, 45536, 3823, 3733, 3447, 3447, 0, 0),
('Hunter', 'Beastmastery80PvEP2BiS', @RACEMASK_HUMAN, 7, 45562, 3606, 3447, 3447, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP2BiS', @RACEMASK_HUMAN, 8, 45454, 3845, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP2BiS', @RACEMASK_HUMAN, 9, 45444, 3604, 3733, 3447, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP2BiS', @RACEMASK_HUMAN, 10, 45608, 0, 3447, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP2BiS', @RACEMASK_HUMAN, 11, 46322, 0, 3447, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP2BiS', @RACEMASK_HUMAN, 12, 45931, 0, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP2BiS', @RACEMASK_HUMAN, 13, 46038, 0, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP2BiS', @RACEMASK_HUMAN, 14, 46032, 3605, 3733, 3483, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP2BiS', @RACEMASK_HUMAN, 15, 45613, 3827, 3447, 3447, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP2BiS', @RACEMASK_HUMAN, 17, 45570, 3608, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP2BiS', @RACEMASK_A, 0, 45610, 3817, 3628, 3750, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP2BiS', @RACEMASK_A, 1, 45517, 0, 3862, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP2BiS', @RACEMASK_A, 2, 45300, 3808, 3447, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP2BiS', @RACEMASK_A, 4, 45473, 3832, 3447, 3447, 3447, 0, 0),
('Hunter', 'Beastmastery80PvEP2BiS', @RACEMASK_A, 5, 45467, 0, 3447, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP2BiS', @RACEMASK_A, 6, 45536, 3823, 3733, 3447, 3447, 0, 0),
('Hunter', 'Beastmastery80PvEP2BiS', @RACEMASK_A, 7, 45562, 3606, 3447, 3447, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP2BiS', @RACEMASK_A, 8, 45454, 3845, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP2BiS', @RACEMASK_A, 9, 45444, 3604, 3733, 3447, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP2BiS', @RACEMASK_A, 10, 45608, 0, 3447, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP2BiS', @RACEMASK_A, 11, 46322, 0, 3447, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP2BiS', @RACEMASK_A, 12, 45931, 0, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP2BiS', @RACEMASK_A, 13, 46038, 0, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP2BiS', @RACEMASK_A, 14, 46032, 3605, 3733, 3483, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP2BiS', @RACEMASK_A, 15, 45613, 3827, 3447, 3447, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP2BiS', @RACEMASK_A, 17, 45570, 3608, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP2BiS', @RACEMASK_H, 0, 45610, 3817, 3628, 3750, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP2BiS', @RACEMASK_H, 1, 45517, 0, 3862, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP2BiS', @RACEMASK_H, 2, 45300, 3808, 3447, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP2BiS', @RACEMASK_H, 4, 45473, 3832, 3447, 3447, 3447, 0, 0),
('Hunter', 'Beastmastery80PvEP2BiS', @RACEMASK_H, 5, 45467, 0, 3447, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP2BiS', @RACEMASK_H, 6, 45536, 3823, 3733, 3447, 3447, 0, 0),
('Hunter', 'Beastmastery80PvEP2BiS', @RACEMASK_H, 7, 45562, 3606, 3447, 3447, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP2BiS', @RACEMASK_H, 8, 45454, 3845, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP2BiS', @RACEMASK_H, 9, 45444, 3604, 3733, 3447, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP2BiS', @RACEMASK_H, 10, 45608, 0, 3447, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP2BiS', @RACEMASK_H, 11, 46322, 0, 3447, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP2BiS', @RACEMASK_H, 12, 45931, 0, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP2BiS', @RACEMASK_H, 13, 46038, 0, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP2BiS', @RACEMASK_H, 14, 46032, 3605, 3733, 3483, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP2BiS', @RACEMASK_H, 15, 45613, 3827, 3447, 3447, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP2BiS', @RACEMASK_H, 17, 45570, 3608, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Hunter Marksmanship 80PvEP2BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Hunter', 'Marksmanship80PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_marksmanship:30|t|r Use Marksmanship PvE P2 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Marksmanship80PvE', 'Marksmanship80PvE', 'WotLK Phase 2', 302),
('Hunter', 'Marksmanship80PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_marksmanship:30|t|r Use Marksmanship PvE P2 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Marksmanship80PvE', 'Marksmanship80PvE', 'WotLK Phase 2', 302);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Hunter', 'Marksmanship80PvEP2BiS', @RACEMASK_HUMAN, 0, 45610, 3817, 3628, 3750, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP2BiS', @RACEMASK_HUMAN, 1, 45517, 0, 3733, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP2BiS', @RACEMASK_HUMAN, 2, 45300, 3808, 3482, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP2BiS', @RACEMASK_HUMAN, 4, 45473, 3832, 3447, 3447, 3447, 0, 0),
('Hunter', 'Marksmanship80PvEP2BiS', @RACEMASK_HUMAN, 5, 45467, 0, 3447, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP2BiS', @RACEMASK_HUMAN, 6, 45536, 3823, 3447, 3447, 3447, 0, 0),
('Hunter', 'Marksmanship80PvEP2BiS', @RACEMASK_HUMAN, 7, 45244, 3606, 3447, 3447, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP2BiS', @RACEMASK_HUMAN, 8, 45869, 3845, 3483, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP2BiS', @RACEMASK_HUMAN, 9, 45444, 3604, 3733, 3447, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP2BiS', @RACEMASK_HUMAN, 10, 45608, 0, 3447, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP2BiS', @RACEMASK_HUMAN, 11, 46322, 0, 3447, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP2BiS', @RACEMASK_HUMAN, 12, 45931, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP2BiS', @RACEMASK_HUMAN, 13, 46038, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP2BiS', @RACEMASK_HUMAN, 14, 46032, 3605, 3733, 3482, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP2BiS', @RACEMASK_HUMAN, 15, 45613, 3827, 3862, 3447, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP2BiS', @RACEMASK_HUMAN, 17, 45570, 3608, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP2BiS', @RACEMASK_A, 0, 45610, 3817, 3628, 3750, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP2BiS', @RACEMASK_A, 1, 45517, 0, 3733, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP2BiS', @RACEMASK_A, 2, 45300, 3808, 3482, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP2BiS', @RACEMASK_A, 4, 45473, 3832, 3447, 3447, 3447, 0, 0),
('Hunter', 'Marksmanship80PvEP2BiS', @RACEMASK_A, 5, 45467, 0, 3447, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP2BiS', @RACEMASK_A, 6, 45536, 3823, 3447, 3447, 3447, 0, 0),
('Hunter', 'Marksmanship80PvEP2BiS', @RACEMASK_A, 7, 45244, 3606, 3447, 3447, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP2BiS', @RACEMASK_A, 8, 45869, 3845, 3483, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP2BiS', @RACEMASK_A, 9, 45444, 3604, 3733, 3447, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP2BiS', @RACEMASK_A, 10, 45608, 0, 3447, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP2BiS', @RACEMASK_A, 11, 46322, 0, 3447, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP2BiS', @RACEMASK_A, 12, 45931, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP2BiS', @RACEMASK_A, 13, 46038, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP2BiS', @RACEMASK_A, 14, 46032, 3605, 3733, 3482, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP2BiS', @RACEMASK_A, 15, 45613, 3827, 3862, 3447, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP2BiS', @RACEMASK_A, 17, 45570, 3608, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP2BiS', @RACEMASK_H, 0, 45610, 3817, 3628, 3750, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP2BiS', @RACEMASK_H, 1, 45517, 0, 3733, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP2BiS', @RACEMASK_H, 2, 45300, 3808, 3482, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP2BiS', @RACEMASK_H, 4, 45473, 3832, 3447, 3447, 3447, 0, 0),
('Hunter', 'Marksmanship80PvEP2BiS', @RACEMASK_H, 5, 45467, 0, 3447, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP2BiS', @RACEMASK_H, 6, 45536, 3823, 3447, 3447, 3447, 0, 0),
('Hunter', 'Marksmanship80PvEP2BiS', @RACEMASK_H, 7, 45244, 3606, 3447, 3447, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP2BiS', @RACEMASK_H, 8, 45869, 3845, 3483, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP2BiS', @RACEMASK_H, 9, 45444, 3604, 3733, 3447, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP2BiS', @RACEMASK_H, 10, 45608, 0, 3447, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP2BiS', @RACEMASK_H, 11, 46322, 0, 3447, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP2BiS', @RACEMASK_H, 12, 45931, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP2BiS', @RACEMASK_H, 13, 46038, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP2BiS', @RACEMASK_H, 14, 46032, 3605, 3733, 3482, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP2BiS', @RACEMASK_H, 15, 45613, 3827, 3862, 3447, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP2BiS', @RACEMASK_H, 17, 45570, 3608, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Hunter Survival 80PvEP2BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Hunter', 'Survival80PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_Hunter_swiftstrike:30|t|r Use Survival PvE P2 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Survival80PvE', 'Survival80PvE', 'WotLK Phase 2', 302),
('Hunter', 'Survival80PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_Hunter_swiftstrike:30|t|r Use Survival PvE P2 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Survival80PvE', 'Survival80PvE', 'WotLK Phase 2', 302);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Hunter', 'Survival80PvEP2BiS', @RACEMASK_HUMAN, 0, 45610, 3817, 3628, 3465, 0, 0, 0),
('Hunter', 'Survival80PvEP2BiS', @RACEMASK_HUMAN, 1, 45517, 0, 3447, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP2BiS', @RACEMASK_HUMAN, 2, 45300, 3808, 3447, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP2BiS', @RACEMASK_HUMAN, 4, 45473, 3832, 3447, 3447, 3862, 0, 0),
('Hunter', 'Survival80PvEP2BiS', @RACEMASK_HUMAN, 5, 46095, 0, 3733, 3733, 0, 0, 3733),
('Hunter', 'Survival80PvEP2BiS', @RACEMASK_HUMAN, 6, 45536, 3823, 3447, 3447, 3447, 0, 0),
('Hunter', 'Survival80PvEP2BiS', @RACEMASK_HUMAN, 7, 45244, 3606, 3447, 3465, 0, 0, 0),
('Hunter', 'Survival80PvEP2BiS', @RACEMASK_HUMAN, 8, 45869, 3845, 3447, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP2BiS', @RACEMASK_HUMAN, 9, 45444, 3604, 3447, 3465, 0, 0, 0),
('Hunter', 'Survival80PvEP2BiS', @RACEMASK_HUMAN, 10, 45608, 0, 3447, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP2BiS', @RACEMASK_HUMAN, 11, 46322, 0, 3447, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP2BiS', @RACEMASK_HUMAN, 12, 44253, 0, 0, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP2BiS', @RACEMASK_HUMAN, 13, 46038, 0, 0, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP2BiS', @RACEMASK_HUMAN, 14, 46032, 3605, 3447, 3483, 0, 0, 0),
('Hunter', 'Survival80PvEP2BiS', @RACEMASK_HUMAN, 15, 45613, 3827, 3447, 3447, 0, 0, 0),
('Hunter', 'Survival80PvEP2BiS', @RACEMASK_HUMAN, 17, 45570, 3608, 0, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP2BiS', @RACEMASK_A, 0, 45610, 3817, 3628, 3465, 0, 0, 0),
('Hunter', 'Survival80PvEP2BiS', @RACEMASK_A, 1, 45517, 0, 3447, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP2BiS', @RACEMASK_A, 2, 45300, 3808, 3447, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP2BiS', @RACEMASK_A, 4, 45473, 3832, 3447, 3447, 3862, 0, 0),
('Hunter', 'Survival80PvEP2BiS', @RACEMASK_A, 5, 46095, 0, 3733, 3733, 0, 0, 3733),
('Hunter', 'Survival80PvEP2BiS', @RACEMASK_A, 6, 45536, 3823, 3447, 3447, 3447, 0, 0),
('Hunter', 'Survival80PvEP2BiS', @RACEMASK_A, 7, 45244, 3606, 3447, 3465, 0, 0, 0),
('Hunter', 'Survival80PvEP2BiS', @RACEMASK_A, 8, 45869, 3845, 3447, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP2BiS', @RACEMASK_A, 9, 45444, 3604, 3447, 3465, 0, 0, 0),
('Hunter', 'Survival80PvEP2BiS', @RACEMASK_A, 10, 45608, 0, 3447, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP2BiS', @RACEMASK_A, 11, 46322, 0, 3447, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP2BiS', @RACEMASK_A, 12, 44253, 0, 0, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP2BiS', @RACEMASK_A, 13, 46038, 0, 0, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP2BiS', @RACEMASK_A, 14, 46032, 3605, 3447, 3483, 0, 0, 0),
('Hunter', 'Survival80PvEP2BiS', @RACEMASK_A, 15, 45613, 3827, 3447, 3447, 0, 0, 0),
('Hunter', 'Survival80PvEP2BiS', @RACEMASK_A, 17, 45570, 3608, 0, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP2BiS', @RACEMASK_H, 0, 45610, 3817, 3628, 3465, 0, 0, 0),
('Hunter', 'Survival80PvEP2BiS', @RACEMASK_H, 1, 45517, 0, 3447, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP2BiS', @RACEMASK_H, 2, 45300, 3808, 3447, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP2BiS', @RACEMASK_H, 4, 45473, 3832, 3447, 3447, 3862, 0, 0),
('Hunter', 'Survival80PvEP2BiS', @RACEMASK_H, 5, 46095, 0, 3733, 3733, 0, 0, 3733),
('Hunter', 'Survival80PvEP2BiS', @RACEMASK_H, 6, 45536, 3823, 3447, 3447, 3447, 0, 0),
('Hunter', 'Survival80PvEP2BiS', @RACEMASK_H, 7, 45244, 3606, 3447, 3465, 0, 0, 0),
('Hunter', 'Survival80PvEP2BiS', @RACEMASK_H, 8, 45869, 3845, 3447, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP2BiS', @RACEMASK_H, 9, 45444, 3604, 3447, 3465, 0, 0, 0),
('Hunter', 'Survival80PvEP2BiS', @RACEMASK_H, 10, 45608, 0, 3447, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP2BiS', @RACEMASK_H, 11, 46322, 0, 3447, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP2BiS', @RACEMASK_H, 12, 44253, 0, 0, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP2BiS', @RACEMASK_H, 13, 46038, 0, 0, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP2BiS', @RACEMASK_H, 14, 46032, 3605, 3447, 3483, 0, 0, 0),
('Hunter', 'Survival80PvEP2BiS', @RACEMASK_H, 15, 45613, 3827, 3447, 3447, 0, 0, 0),
('Hunter', 'Survival80PvEP2BiS', @RACEMASK_H, 17, 45570, 3608, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Mage Arcane 80PvEP2BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Mage', 'Arcane80PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_magicalsentry:30|t|r Use Arcane PvE P2 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Arcane80PvE', 'Arcane80PvE', 'WotLK Phase 2', 302),
('Mage', 'Arcane80PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_magicalsentry:30|t|r Use Arcane PvE P2 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Arcane80PvE', 'Arcane80PvE', 'WotLK Phase 2', 302);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Mage', 'Arcane80PvEP2BiS', @RACEMASK_HUMAN, 0, 45497, 3820, 3621, 3866, 0, 0, 0),
('Mage', 'Arcane80PvEP2BiS', @RACEMASK_HUMAN, 1, 45243, 0, 3448, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP2BiS', @RACEMASK_HUMAN, 2, 46134, 3810, 3448, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP2BiS', @RACEMASK_HUMAN, 4, 46130, 3832, 3448, 3448, 0, 0, 0),
('Mage', 'Arcane80PvEP2BiS', @RACEMASK_HUMAN, 5, 45619, 0, 3448, 3448, 0, 0, 3448),
('Mage', 'Arcane80PvEP2BiS', @RACEMASK_HUMAN, 6, 45488, 3719, 3448, 3490, 3472, 0, 0),
('Mage', 'Arcane80PvEP2BiS', @RACEMASK_HUMAN, 7, 45135, 3606, 3448, 3448, 0, 0, 0),
('Mage', 'Arcane80PvEP2BiS', @RACEMASK_HUMAN, 8, 45446, 2332, 3448, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP2BiS', @RACEMASK_HUMAN, 9, 45665, 3604, 3448, 3448, 0, 0, 0),
('Mage', 'Arcane80PvEP2BiS', @RACEMASK_HUMAN, 10, 46046, 0, 3448, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP2BiS', @RACEMASK_HUMAN, 11, 45495, 0, 3448, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP2BiS', @RACEMASK_HUMAN, 12, 45466, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP2BiS', @RACEMASK_HUMAN, 13, 45518, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP2BiS', @RACEMASK_HUMAN, 14, 45618, 3722, 3472, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP2BiS', @RACEMASK_HUMAN, 15, 45620, 3834, 3448, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP2BiS', @RACEMASK_HUMAN, 16, 45617, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP2BiS', @RACEMASK_HUMAN, 17, 45294, 0, 3448, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP2BiS', @RACEMASK_A, 0, 45497, 3820, 3621, 3866, 0, 0, 0),
('Mage', 'Arcane80PvEP2BiS', @RACEMASK_A, 1, 45243, 0, 3448, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP2BiS', @RACEMASK_A, 2, 46134, 3810, 3448, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP2BiS', @RACEMASK_A, 4, 46130, 3832, 3448, 3448, 0, 0, 0),
('Mage', 'Arcane80PvEP2BiS', @RACEMASK_A, 5, 45619, 0, 3448, 3448, 0, 0, 3448),
('Mage', 'Arcane80PvEP2BiS', @RACEMASK_A, 6, 45488, 3719, 3448, 3490, 3472, 0, 0),
('Mage', 'Arcane80PvEP2BiS', @RACEMASK_A, 7, 45135, 3606, 3448, 3448, 0, 0, 0),
('Mage', 'Arcane80PvEP2BiS', @RACEMASK_A, 8, 45446, 2332, 3448, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP2BiS', @RACEMASK_A, 9, 45665, 3604, 3448, 3448, 0, 0, 0),
('Mage', 'Arcane80PvEP2BiS', @RACEMASK_A, 10, 46046, 0, 3448, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP2BiS', @RACEMASK_A, 11, 45495, 0, 3448, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP2BiS', @RACEMASK_A, 12, 45466, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP2BiS', @RACEMASK_A, 13, 45518, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP2BiS', @RACEMASK_A, 14, 45618, 3722, 3472, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP2BiS', @RACEMASK_A, 15, 45620, 3834, 3448, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP2BiS', @RACEMASK_A, 16, 45617, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP2BiS', @RACEMASK_A, 17, 45294, 0, 3448, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP2BiS', @RACEMASK_H, 0, 45497, 3820, 3621, 3866, 0, 0, 0),
('Mage', 'Arcane80PvEP2BiS', @RACEMASK_H, 1, 45243, 0, 3448, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP2BiS', @RACEMASK_H, 2, 46134, 3810, 3448, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP2BiS', @RACEMASK_H, 4, 46130, 3832, 3448, 3448, 0, 0, 0),
('Mage', 'Arcane80PvEP2BiS', @RACEMASK_H, 5, 45619, 0, 3448, 3448, 0, 0, 3448),
('Mage', 'Arcane80PvEP2BiS', @RACEMASK_H, 6, 45488, 3719, 3448, 3490, 3472, 0, 0),
('Mage', 'Arcane80PvEP2BiS', @RACEMASK_H, 7, 45135, 3606, 3448, 3448, 0, 0, 0),
('Mage', 'Arcane80PvEP2BiS', @RACEMASK_H, 8, 45446, 2332, 3448, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP2BiS', @RACEMASK_H, 9, 45665, 3604, 3448, 3448, 0, 0, 0),
('Mage', 'Arcane80PvEP2BiS', @RACEMASK_H, 10, 46046, 0, 3448, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP2BiS', @RACEMASK_H, 11, 45495, 0, 3448, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP2BiS', @RACEMASK_H, 12, 45466, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP2BiS', @RACEMASK_H, 13, 45518, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP2BiS', @RACEMASK_H, 14, 45618, 3722, 3472, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP2BiS', @RACEMASK_H, 15, 45620, 3834, 3448, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP2BiS', @RACEMASK_H, 16, 45617, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP2BiS', @RACEMASK_H, 17, 45294, 0, 3448, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Mage Fire 80PvEP2BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Mage', 'Fire80PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_fire_flamebolt:30|t|r Use Fire PvE P2 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Fire80PvE', 'Fire80PvE', 'WotLK Phase 2', 302),
('Mage', 'Fire80PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_fire_flamebolt:30|t|r Use Fire PvE P2 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Fire80PvE', 'Fire80PvE', 'WotLK Phase 2', 302);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Mage', 'Fire80PvEP2BiS', @RACEMASK_HUMAN, 0, 46129, 3820, 3621, 3866, 0, 0, 0),
('Mage', 'Fire80PvEP2BiS', @RACEMASK_HUMAN, 1, 45133, 0, 3487, 0, 0, 0, 0),
('Mage', 'Fire80PvEP2BiS', @RACEMASK_HUMAN, 2, 46134, 3810, 3448, 0, 0, 0, 0),
('Mage', 'Fire80PvEP2BiS', @RACEMASK_HUMAN, 4, 46130, 3832, 3448, 3448, 0, 0, 0),
('Mage', 'Fire80PvEP2BiS', @RACEMASK_HUMAN, 5, 45619, 0, 3487, 3487, 0, 0, 3448),
('Mage', 'Fire80PvEP2BiS', @RACEMASK_HUMAN, 6, 46133, 3719, 3448, 3448, 0, 0, 0),
('Mage', 'Fire80PvEP2BiS', @RACEMASK_HUMAN, 7, 45537, 3606, 3448, 3472, 0, 0, 0),
('Mage', 'Fire80PvEP2BiS', @RACEMASK_HUMAN, 8, 45446, 2332, 3448, 0, 0, 0, 0),
('Mage', 'Fire80PvEP2BiS', @RACEMASK_HUMAN, 9, 45665, 3604, 3472, 3487, 0, 0, 0),
('Mage', 'Fire80PvEP2BiS', @RACEMASK_HUMAN, 10, 45495, 0, 3448, 0, 0, 0, 0),
('Mage', 'Fire80PvEP2BiS', @RACEMASK_HUMAN, 11, 46046, 0, 3448, 0, 0, 0, 0),
('Mage', 'Fire80PvEP2BiS', @RACEMASK_HUMAN, 12, 45466, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire80PvEP2BiS', @RACEMASK_HUMAN, 13, 45518, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire80PvEP2BiS', @RACEMASK_HUMAN, 14, 45242, 3722, 3448, 0, 0, 0, 0),
('Mage', 'Fire80PvEP2BiS', @RACEMASK_HUMAN, 15, 45620, 3834, 3448, 0, 0, 0, 0),
('Mage', 'Fire80PvEP2BiS', @RACEMASK_HUMAN, 16, 45617, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire80PvEP2BiS', @RACEMASK_HUMAN, 17, 45294, 0, 3448, 0, 0, 0, 0),
('Mage', 'Fire80PvEP2BiS', @RACEMASK_A, 0, 46129, 3820, 3621, 3866, 0, 0, 0),
('Mage', 'Fire80PvEP2BiS', @RACEMASK_A, 1, 45133, 0, 3487, 0, 0, 0, 0),
('Mage', 'Fire80PvEP2BiS', @RACEMASK_A, 2, 46134, 3810, 3448, 0, 0, 0, 0),
('Mage', 'Fire80PvEP2BiS', @RACEMASK_A, 4, 46130, 3832, 3448, 3448, 0, 0, 0),
('Mage', 'Fire80PvEP2BiS', @RACEMASK_A, 5, 45619, 0, 3487, 3487, 0, 0, 3448),
('Mage', 'Fire80PvEP2BiS', @RACEMASK_A, 6, 46133, 3719, 3448, 3448, 0, 0, 0),
('Mage', 'Fire80PvEP2BiS', @RACEMASK_A, 7, 45537, 3606, 3448, 3472, 0, 0, 0),
('Mage', 'Fire80PvEP2BiS', @RACEMASK_A, 8, 45446, 2332, 3448, 0, 0, 0, 0),
('Mage', 'Fire80PvEP2BiS', @RACEMASK_A, 9, 45665, 3604, 3472, 3487, 0, 0, 0),
('Mage', 'Fire80PvEP2BiS', @RACEMASK_A, 10, 45495, 0, 3448, 0, 0, 0, 0),
('Mage', 'Fire80PvEP2BiS', @RACEMASK_A, 11, 46046, 0, 3448, 0, 0, 0, 0),
('Mage', 'Fire80PvEP2BiS', @RACEMASK_A, 12, 45466, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire80PvEP2BiS', @RACEMASK_A, 13, 45518, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire80PvEP2BiS', @RACEMASK_A, 14, 45242, 3722, 3448, 0, 0, 0, 0),
('Mage', 'Fire80PvEP2BiS', @RACEMASK_A, 15, 45620, 3834, 3448, 0, 0, 0, 0),
('Mage', 'Fire80PvEP2BiS', @RACEMASK_A, 16, 45617, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire80PvEP2BiS', @RACEMASK_A, 17, 45294, 0, 3448, 0, 0, 0, 0),
('Mage', 'Fire80PvEP2BiS', @RACEMASK_H, 0, 46129, 3820, 3621, 3866, 0, 0, 0),
('Mage', 'Fire80PvEP2BiS', @RACEMASK_H, 1, 45133, 0, 3487, 0, 0, 0, 0),
('Mage', 'Fire80PvEP2BiS', @RACEMASK_H, 2, 46134, 3810, 3448, 0, 0, 0, 0),
('Mage', 'Fire80PvEP2BiS', @RACEMASK_H, 4, 46130, 3832, 3448, 3448, 0, 0, 0),
('Mage', 'Fire80PvEP2BiS', @RACEMASK_H, 5, 45619, 0, 3487, 3487, 0, 0, 3448),
('Mage', 'Fire80PvEP2BiS', @RACEMASK_H, 6, 46133, 3719, 3448, 3448, 0, 0, 0),
('Mage', 'Fire80PvEP2BiS', @RACEMASK_H, 7, 45537, 3606, 3448, 3472, 0, 0, 0),
('Mage', 'Fire80PvEP2BiS', @RACEMASK_H, 8, 45446, 2332, 3448, 0, 0, 0, 0),
('Mage', 'Fire80PvEP2BiS', @RACEMASK_H, 9, 45665, 3604, 3472, 3487, 0, 0, 0),
('Mage', 'Fire80PvEP2BiS', @RACEMASK_H, 10, 45495, 0, 3448, 0, 0, 0, 0),
('Mage', 'Fire80PvEP2BiS', @RACEMASK_H, 11, 46046, 0, 3448, 0, 0, 0, 0),
('Mage', 'Fire80PvEP2BiS', @RACEMASK_H, 12, 45466, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire80PvEP2BiS', @RACEMASK_H, 13, 45518, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire80PvEP2BiS', @RACEMASK_H, 14, 45242, 3722, 3448, 0, 0, 0, 0),
('Mage', 'Fire80PvEP2BiS', @RACEMASK_H, 15, 45620, 3834, 3448, 0, 0, 0, 0),
('Mage', 'Fire80PvEP2BiS', @RACEMASK_H, 16, 45617, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire80PvEP2BiS', @RACEMASK_H, 17, 45294, 0, 3448, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Mage Frost 80PvEP2BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Mage', 'Frost80PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_frost_frostbolt02:30|t|r Use Frost PvE P2 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Frost80PvE', 'Frost80PvE', 'WotLK Phase 2', 302),
('Mage', 'Frost80PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_frost_frostbolt02:30|t|r Use Frost PvE P2 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Frost80PvE', 'Frost80PvE', 'WotLK Phase 2', 302);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Mage', 'Frost80PvEP2BiS', @RACEMASK_HUMAN, 0, 45497, 3820, 3621, 3866, 0, 0, 0),
('Mage', 'Frost80PvEP2BiS', @RACEMASK_HUMAN, 1, 45133, 0, 3490, 0, 0, 0, 0),
('Mage', 'Frost80PvEP2BiS', @RACEMASK_HUMAN, 2, 46134, 3810, 3448, 0, 0, 0, 0),
('Mage', 'Frost80PvEP2BiS', @RACEMASK_HUMAN, 4, 46130, 3832, 3448, 3448, 0, 0, 0),
('Mage', 'Frost80PvEP2BiS', @RACEMASK_HUMAN, 5, 45619, 0, 3488, 3488, 0, 0, 3448),
('Mage', 'Frost80PvEP2BiS', @RACEMASK_HUMAN, 6, 45488, 3719, 3448, 3490, 3472, 0, 0),
('Mage', 'Frost80PvEP2BiS', @RACEMASK_HUMAN, 7, 45135, 3606, 3448, 3488, 0, 0, 0),
('Mage', 'Frost80PvEP2BiS', @RACEMASK_HUMAN, 8, 45446, 2332, 3448, 0, 0, 0, 0),
('Mage', 'Frost80PvEP2BiS', @RACEMASK_HUMAN, 9, 45665, 3604, 3448, 3448, 0, 0, 0),
('Mage', 'Frost80PvEP2BiS', @RACEMASK_HUMAN, 10, 46046, 0, 3448, 0, 0, 0, 0),
('Mage', 'Frost80PvEP2BiS', @RACEMASK_HUMAN, 11, 45495, 0, 3448, 0, 0, 0, 0),
('Mage', 'Frost80PvEP2BiS', @RACEMASK_HUMAN, 12, 45466, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost80PvEP2BiS', @RACEMASK_HUMAN, 13, 45518, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost80PvEP2BiS', @RACEMASK_HUMAN, 14, 45618, 3722, 3472, 0, 0, 0, 0),
('Mage', 'Frost80PvEP2BiS', @RACEMASK_HUMAN, 15, 45620, 3834, 3472, 0, 0, 0, 0),
('Mage', 'Frost80PvEP2BiS', @RACEMASK_HUMAN, 16, 45617, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost80PvEP2BiS', @RACEMASK_HUMAN, 17, 45294, 0, 3448, 0, 0, 0, 0),
('Mage', 'Frost80PvEP2BiS', @RACEMASK_A, 0, 45497, 3820, 3621, 3866, 0, 0, 0),
('Mage', 'Frost80PvEP2BiS', @RACEMASK_A, 1, 45133, 0, 3490, 0, 0, 0, 0),
('Mage', 'Frost80PvEP2BiS', @RACEMASK_A, 2, 46134, 3810, 3448, 0, 0, 0, 0),
('Mage', 'Frost80PvEP2BiS', @RACEMASK_A, 4, 46130, 3832, 3448, 3448, 0, 0, 0),
('Mage', 'Frost80PvEP2BiS', @RACEMASK_A, 5, 45619, 0, 3488, 3488, 0, 0, 3448),
('Mage', 'Frost80PvEP2BiS', @RACEMASK_A, 6, 45488, 3719, 3448, 3490, 3472, 0, 0),
('Mage', 'Frost80PvEP2BiS', @RACEMASK_A, 7, 45135, 3606, 3448, 3488, 0, 0, 0),
('Mage', 'Frost80PvEP2BiS', @RACEMASK_A, 8, 45446, 2332, 3448, 0, 0, 0, 0),
('Mage', 'Frost80PvEP2BiS', @RACEMASK_A, 9, 45665, 3604, 3448, 3448, 0, 0, 0),
('Mage', 'Frost80PvEP2BiS', @RACEMASK_A, 10, 46046, 0, 3448, 0, 0, 0, 0),
('Mage', 'Frost80PvEP2BiS', @RACEMASK_A, 11, 45495, 0, 3448, 0, 0, 0, 0),
('Mage', 'Frost80PvEP2BiS', @RACEMASK_A, 12, 45466, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost80PvEP2BiS', @RACEMASK_A, 13, 45518, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost80PvEP2BiS', @RACEMASK_A, 14, 45618, 3722, 3472, 0, 0, 0, 0),
('Mage', 'Frost80PvEP2BiS', @RACEMASK_A, 15, 45620, 3834, 3472, 0, 0, 0, 0),
('Mage', 'Frost80PvEP2BiS', @RACEMASK_A, 16, 45617, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost80PvEP2BiS', @RACEMASK_A, 17, 45294, 0, 3448, 0, 0, 0, 0),
('Mage', 'Frost80PvEP2BiS', @RACEMASK_H, 0, 45497, 3820, 3621, 3866, 0, 0, 0),
('Mage', 'Frost80PvEP2BiS', @RACEMASK_H, 1, 45133, 0, 3490, 0, 0, 0, 0),
('Mage', 'Frost80PvEP2BiS', @RACEMASK_H, 2, 46134, 3810, 3448, 0, 0, 0, 0),
('Mage', 'Frost80PvEP2BiS', @RACEMASK_H, 4, 46130, 3832, 3448, 3448, 0, 0, 0),
('Mage', 'Frost80PvEP2BiS', @RACEMASK_H, 5, 45619, 0, 3488, 3488, 0, 0, 3448),
('Mage', 'Frost80PvEP2BiS', @RACEMASK_H, 6, 45488, 3719, 3448, 3490, 3472, 0, 0),
('Mage', 'Frost80PvEP2BiS', @RACEMASK_H, 7, 45135, 3606, 3448, 3488, 0, 0, 0),
('Mage', 'Frost80PvEP2BiS', @RACEMASK_H, 8, 45446, 2332, 3448, 0, 0, 0, 0),
('Mage', 'Frost80PvEP2BiS', @RACEMASK_H, 9, 45665, 3604, 3448, 3448, 0, 0, 0),
('Mage', 'Frost80PvEP2BiS', @RACEMASK_H, 10, 46046, 0, 3448, 0, 0, 0, 0),
('Mage', 'Frost80PvEP2BiS', @RACEMASK_H, 11, 45495, 0, 3448, 0, 0, 0, 0),
('Mage', 'Frost80PvEP2BiS', @RACEMASK_H, 12, 45466, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost80PvEP2BiS', @RACEMASK_H, 13, 45518, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost80PvEP2BiS', @RACEMASK_H, 14, 45618, 3722, 3472, 0, 0, 0, 0),
('Mage', 'Frost80PvEP2BiS', @RACEMASK_H, 15, 45620, 3834, 3472, 0, 0, 0, 0),
('Mage', 'Frost80PvEP2BiS', @RACEMASK_H, 16, 45617, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost80PvEP2BiS', @RACEMASK_H, 17, 45294, 0, 3448, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Paladin Holy 80PvEP2BiSHeal (healer) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Paladin', 'Holy80PvEP2BiSHeal', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Use Holy PvE P2 BiS Heal', 7, @MINLEVEL, @MAXLEVEL, 'Holy80PvE', 'Holy80PvE', 'WotLK Phase 2', 302),
('Paladin', 'Holy80PvEP2BiSHeal', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Use Holy PvE P2 BiS Heal (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Holy80PvE', 'Holy80PvE', 'WotLK Phase 2', 302);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Paladin', 'Holy80PvEP2BiSHeal', @RACEMASK_HUMAN, 0, 46180, 3820, 3627, 3510, 0, 0, 0),
('Paladin', 'Holy80PvEP2BiSHeal', @RACEMASK_HUMAN, 1, 45443, 0, 3458, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP2BiSHeal', @RACEMASK_HUMAN, 2, 46182, 3810, 3458, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP2BiSHeal', @RACEMASK_HUMAN, 4, 45445, 3832, 3737, 3737, 3737, 0, 0),
('Paladin', 'Holy80PvEP2BiSHeal', @RACEMASK_HUMAN, 5, 45616, 0, 3458, 3458, 0, 0, 3458),
('Paladin', 'Holy80PvEP2BiSHeal', @RACEMASK_HUMAN, 6, 46181, 3721, 3458, 3458, 0, 0, 0),
('Paladin', 'Holy80PvEP2BiSHeal', @RACEMASK_HUMAN, 7, 45537, 3606, 3458, 3458, 0, 0, 0),
('Paladin', 'Holy80PvEP2BiSHeal', @RACEMASK_HUMAN, 8, 45460, 1119, 3458, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP2BiSHeal', @RACEMASK_HUMAN, 9, 46179, 3604, 3486, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP2BiSHeal', @RACEMASK_HUMAN, 10, 45614, 0, 3865, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP2BiSHeal', @RACEMASK_HUMAN, 11, 45946, 0, 3458, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP2BiSHeal', @RACEMASK_HUMAN, 12, 46051, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP2BiSHeal', @RACEMASK_HUMAN, 13, 37111, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP2BiSHeal', @RACEMASK_HUMAN, 14, 45486, 3831, 3458, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP2BiSHeal', @RACEMASK_HUMAN, 15, 46017, 2666, 0, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP2BiSHeal', @RACEMASK_HUMAN, 16, 45470, 1128, 3458, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP2BiSHeal', @RACEMASK_HUMAN, 17, 40705, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP2BiSHeal', @RACEMASK_A, 0, 46180, 3820, 3627, 3510, 0, 0, 0),
('Paladin', 'Holy80PvEP2BiSHeal', @RACEMASK_A, 1, 45443, 0, 3458, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP2BiSHeal', @RACEMASK_A, 2, 46182, 3810, 3458, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP2BiSHeal', @RACEMASK_A, 4, 45445, 3832, 3737, 3737, 3737, 0, 0),
('Paladin', 'Holy80PvEP2BiSHeal', @RACEMASK_A, 5, 45616, 0, 3458, 3458, 0, 0, 3458),
('Paladin', 'Holy80PvEP2BiSHeal', @RACEMASK_A, 6, 46181, 3721, 3458, 3458, 0, 0, 0),
('Paladin', 'Holy80PvEP2BiSHeal', @RACEMASK_A, 7, 45537, 3606, 3458, 3458, 0, 0, 0),
('Paladin', 'Holy80PvEP2BiSHeal', @RACEMASK_A, 8, 45460, 1119, 3458, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP2BiSHeal', @RACEMASK_A, 9, 46179, 3604, 3486, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP2BiSHeal', @RACEMASK_A, 10, 45614, 0, 3865, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP2BiSHeal', @RACEMASK_A, 11, 45946, 0, 3458, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP2BiSHeal', @RACEMASK_A, 12, 46051, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP2BiSHeal', @RACEMASK_A, 13, 37111, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP2BiSHeal', @RACEMASK_A, 14, 45486, 3831, 3458, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP2BiSHeal', @RACEMASK_A, 15, 46017, 2666, 0, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP2BiSHeal', @RACEMASK_A, 16, 45470, 1128, 3458, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP2BiSHeal', @RACEMASK_A, 17, 40705, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP2BiSHeal', @RACEMASK_H, 0, 46180, 3820, 3627, 3510, 0, 0, 0),
('Paladin', 'Holy80PvEP2BiSHeal', @RACEMASK_H, 1, 45443, 0, 3458, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP2BiSHeal', @RACEMASK_H, 2, 46182, 3810, 3458, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP2BiSHeal', @RACEMASK_H, 4, 45445, 3832, 3737, 3737, 3737, 0, 0),
('Paladin', 'Holy80PvEP2BiSHeal', @RACEMASK_H, 5, 45616, 0, 3458, 3458, 0, 0, 3458),
('Paladin', 'Holy80PvEP2BiSHeal', @RACEMASK_H, 6, 46181, 3721, 3458, 3458, 0, 0, 0),
('Paladin', 'Holy80PvEP2BiSHeal', @RACEMASK_H, 7, 45537, 3606, 3458, 3458, 0, 0, 0),
('Paladin', 'Holy80PvEP2BiSHeal', @RACEMASK_H, 8, 45460, 1119, 3458, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP2BiSHeal', @RACEMASK_H, 9, 46179, 3604, 3486, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP2BiSHeal', @RACEMASK_H, 10, 45614, 0, 3865, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP2BiSHeal', @RACEMASK_H, 11, 45946, 0, 3458, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP2BiSHeal', @RACEMASK_H, 12, 46051, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP2BiSHeal', @RACEMASK_H, 13, 37111, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP2BiSHeal', @RACEMASK_H, 14, 45486, 3831, 3458, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP2BiSHeal', @RACEMASK_H, 15, 46017, 2666, 0, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP2BiSHeal', @RACEMASK_H, 16, 45470, 1128, 3458, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP2BiSHeal', @RACEMASK_H, 17, 40705, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Paladin Protection 80PvEP2BiSTank (tank) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Paladin', 'Protection80PvEP2BiSTank', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_devotionaura:30|t|r Use Protection PvE P2 BiS Tank', 7, @MINLEVEL, @MAXLEVEL, 'Protection80PvE', 'Protection80PvE', 'WotLK Phase 2', 302),
('Paladin', 'Protection80PvEP2BiSTank', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_devotionaura:30|t|r Use Protection PvE P2 BiS Tank (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Protection80PvE', 'Protection80PvE', 'WotLK Phase 2', 302);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Paladin', 'Protection80PvEP2BiSTank', @RACEMASK_HUMAN, 0, 46175, 3878, 3637, 3501, 0, 0, 0),
('Paladin', 'Protection80PvEP2BiSTank', @RACEMASK_HUMAN, 1, 45485, 0, 3501, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP2BiSTank', @RACEMASK_HUMAN, 2, 46177, 3852, 3471, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP2BiSTank', @RACEMASK_HUMAN, 4, 46039, 3832, 3293, 3454, 0, 0, 0),
('Paladin', 'Protection80PvEP2BiSTank', @RACEMASK_HUMAN, 5, 45825, 0, 3471, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP2BiSTank', @RACEMASK_HUMAN, 6, 45594, 3822, 3471, 3863, 3501, 0, 0),
('Paladin', 'Protection80PvEP2BiSTank', @RACEMASK_HUMAN, 7, 45988, 3606, 3293, 3454, 0, 0, 0),
('Paladin', 'Protection80PvEP2BiSTank', @RACEMASK_HUMAN, 8, 45111, 3850, 0, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP2BiSTank', @RACEMASK_HUMAN, 9, 45487, 3860, 3454, 3454, 0, 0, 0),
('Paladin', 'Protection80PvEP2BiSTank', @RACEMASK_HUMAN, 10, 45326, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP2BiSTank', @RACEMASK_HUMAN, 11, 45471, 0, 3501, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP2BiSTank', @RACEMASK_HUMAN, 12, 45158, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP2BiSTank', @RACEMASK_HUMAN, 13, 46021, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP2BiSTank', @RACEMASK_HUMAN, 14, 45496, 3294, 3471, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP2BiSTank', @RACEMASK_HUMAN, 15, 45947, 3788, 3501, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP2BiSTank', @RACEMASK_HUMAN, 16, 45587, 3849, 3293, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP2BiSTank', @RACEMASK_HUMAN, 17, 45145, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP2BiSTank', @RACEMASK_A, 0, 46175, 3878, 3637, 3501, 0, 0, 0),
('Paladin', 'Protection80PvEP2BiSTank', @RACEMASK_A, 1, 45485, 0, 3501, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP2BiSTank', @RACEMASK_A, 2, 46177, 3852, 3471, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP2BiSTank', @RACEMASK_A, 4, 46039, 3832, 3293, 3454, 0, 0, 0),
('Paladin', 'Protection80PvEP2BiSTank', @RACEMASK_A, 5, 45825, 0, 3471, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP2BiSTank', @RACEMASK_A, 6, 45594, 3822, 3471, 3863, 3501, 0, 0),
('Paladin', 'Protection80PvEP2BiSTank', @RACEMASK_A, 7, 45988, 3606, 3293, 3454, 0, 0, 0),
('Paladin', 'Protection80PvEP2BiSTank', @RACEMASK_A, 8, 45111, 3850, 0, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP2BiSTank', @RACEMASK_A, 9, 45487, 3860, 3454, 3454, 0, 0, 0),
('Paladin', 'Protection80PvEP2BiSTank', @RACEMASK_A, 10, 45326, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP2BiSTank', @RACEMASK_A, 11, 45471, 0, 3501, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP2BiSTank', @RACEMASK_A, 12, 45158, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP2BiSTank', @RACEMASK_A, 13, 46021, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP2BiSTank', @RACEMASK_A, 14, 45496, 3294, 3471, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP2BiSTank', @RACEMASK_A, 15, 45947, 3788, 3501, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP2BiSTank', @RACEMASK_A, 16, 45587, 3849, 3293, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP2BiSTank', @RACEMASK_A, 17, 45145, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP2BiSTank', @RACEMASK_H, 0, 46175, 3878, 3637, 3501, 0, 0, 0),
('Paladin', 'Protection80PvEP2BiSTank', @RACEMASK_H, 1, 45485, 0, 3501, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP2BiSTank', @RACEMASK_H, 2, 46177, 3852, 3471, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP2BiSTank', @RACEMASK_H, 4, 46039, 3832, 3293, 3454, 0, 0, 0),
('Paladin', 'Protection80PvEP2BiSTank', @RACEMASK_H, 5, 45825, 0, 3471, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP2BiSTank', @RACEMASK_H, 6, 45594, 3822, 3471, 3863, 3501, 0, 0),
('Paladin', 'Protection80PvEP2BiSTank', @RACEMASK_H, 7, 45988, 3606, 3293, 3454, 0, 0, 0),
('Paladin', 'Protection80PvEP2BiSTank', @RACEMASK_H, 8, 45111, 3850, 0, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP2BiSTank', @RACEMASK_H, 9, 45487, 3860, 3454, 3454, 0, 0, 0),
('Paladin', 'Protection80PvEP2BiSTank', @RACEMASK_H, 10, 45326, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP2BiSTank', @RACEMASK_H, 11, 45471, 0, 3501, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP2BiSTank', @RACEMASK_H, 12, 45158, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP2BiSTank', @RACEMASK_H, 13, 46021, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP2BiSTank', @RACEMASK_H, 14, 45496, 3294, 3471, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP2BiSTank', @RACEMASK_H, 15, 45947, 3788, 3501, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP2BiSTank', @RACEMASK_H, 16, 45587, 3849, 3293, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP2BiSTank', @RACEMASK_H, 17, 45145, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Paladin Retribution 80PvEP2BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Paladin', 'Retribution80PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_auraoflight:30|t|r Use Retribution PvE P2 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Retribution80PvE', 'Retribution80PvE', 'WotLK Phase 2', 302),
('Paladin', 'Retribution80PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_auraoflight:30|t|r Use Retribution PvE P2 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Retribution80PvE', 'Retribution80PvE', 'WotLK Phase 2', 302);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Paladin', 'Retribution80PvEP2BiS', @RACEMASK_HUMAN, 0, 45993, 3817, 3628, 3446, 0, 0, 0),
('Paladin', 'Retribution80PvEP2BiS', @RACEMASK_HUMAN, 1, 46040, 0, 3446, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP2BiS', @RACEMASK_HUMAN, 2, 46152, 3808, 3446, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP2BiS', @RACEMASK_HUMAN, 4, 46154, 3832, 3446, 3446, 0, 0, 0),
('Paladin', 'Retribution80PvEP2BiS', @RACEMASK_HUMAN, 5, 46095, 0, 3732, 3732, 0, 0, 3732),
('Paladin', 'Retribution80PvEP2BiS', @RACEMASK_HUMAN, 6, 46153, 3823, 3446, 3750, 0, 0, 0),
('Paladin', 'Retribution80PvEP2BiS', @RACEMASK_HUMAN, 7, 45989, 3606, 3446, 3446, 0, 0, 0),
('Paladin', 'Retribution80PvEP2BiS', @RACEMASK_HUMAN, 8, 45888, 3845, 3446, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP2BiS', @RACEMASK_HUMAN, 9, 46155, 3604, 3446, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP2BiS', @RACEMASK_HUMAN, 10, 45525, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP2BiS', @RACEMASK_HUMAN, 11, 46048, 0, 3446, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP2BiS', @RACEMASK_HUMAN, 12, 46038, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP2BiS', @RACEMASK_HUMAN, 13, 42987, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP2BiS', @RACEMASK_HUMAN, 14, 46032, 3605, 3446, 3446, 0, 0, 0),
('Paladin', 'Retribution80PvEP2BiS', @RACEMASK_HUMAN, 15, 45868, 3789, 3446, 3446, 0, 0, 0),
('Paladin', 'Retribution80PvEP2BiS', @RACEMASK_HUMAN, 17, 42853, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP2BiS', @RACEMASK_A, 0, 45993, 3817, 3628, 3446, 0, 0, 0),
('Paladin', 'Retribution80PvEP2BiS', @RACEMASK_A, 1, 46040, 0, 3446, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP2BiS', @RACEMASK_A, 2, 46152, 3808, 3446, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP2BiS', @RACEMASK_A, 4, 46154, 3832, 3446, 3446, 0, 0, 0),
('Paladin', 'Retribution80PvEP2BiS', @RACEMASK_A, 5, 46095, 0, 3732, 3732, 0, 0, 3732),
('Paladin', 'Retribution80PvEP2BiS', @RACEMASK_A, 6, 46153, 3823, 3446, 3750, 0, 0, 0),
('Paladin', 'Retribution80PvEP2BiS', @RACEMASK_A, 7, 45989, 3606, 3446, 3446, 0, 0, 0),
('Paladin', 'Retribution80PvEP2BiS', @RACEMASK_A, 8, 45888, 3845, 3446, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP2BiS', @RACEMASK_A, 9, 46155, 3604, 3446, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP2BiS', @RACEMASK_A, 10, 45525, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP2BiS', @RACEMASK_A, 11, 46048, 0, 3446, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP2BiS', @RACEMASK_A, 12, 46038, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP2BiS', @RACEMASK_A, 13, 42987, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP2BiS', @RACEMASK_A, 14, 46032, 3605, 3446, 3446, 0, 0, 0),
('Paladin', 'Retribution80PvEP2BiS', @RACEMASK_A, 15, 45868, 3789, 3446, 3446, 0, 0, 0),
('Paladin', 'Retribution80PvEP2BiS', @RACEMASK_A, 17, 42853, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP2BiS', @RACEMASK_H, 0, 45993, 3817, 3628, 3446, 0, 0, 0),
('Paladin', 'Retribution80PvEP2BiS', @RACEMASK_H, 1, 46040, 0, 3446, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP2BiS', @RACEMASK_H, 2, 46152, 3808, 3446, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP2BiS', @RACEMASK_H, 4, 46154, 3832, 3446, 3446, 0, 0, 0),
('Paladin', 'Retribution80PvEP2BiS', @RACEMASK_H, 5, 46095, 0, 3732, 3732, 0, 0, 3732),
('Paladin', 'Retribution80PvEP2BiS', @RACEMASK_H, 6, 46153, 3823, 3446, 3750, 0, 0, 0),
('Paladin', 'Retribution80PvEP2BiS', @RACEMASK_H, 7, 45989, 3606, 3446, 3446, 0, 0, 0),
('Paladin', 'Retribution80PvEP2BiS', @RACEMASK_H, 8, 45888, 3845, 3446, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP2BiS', @RACEMASK_H, 9, 46155, 3604, 3446, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP2BiS', @RACEMASK_H, 10, 45525, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP2BiS', @RACEMASK_H, 11, 46048, 0, 3446, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP2BiS', @RACEMASK_H, 12, 46038, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP2BiS', @RACEMASK_H, 13, 42987, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP2BiS', @RACEMASK_H, 14, 46032, 3605, 3446, 3446, 0, 0, 0),
('Paladin', 'Retribution80PvEP2BiS', @RACEMASK_H, 15, 45868, 3789, 3446, 3446, 0, 0, 0),
('Paladin', 'Retribution80PvEP2BiS', @RACEMASK_H, 17, 42853, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Priest Discipline 80PvEP2BiSHeal (healer) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Priest', 'Discipline80PvEP2BiSHeal', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_wordfortitude:30|t|r Use Discipline PvE P2 BiS Heal', 7, @MINLEVEL, @MAXLEVEL, 'Discipline80PvE', 'Discipline80PvE', 'WotLK Phase 2', 302),
('Priest', 'Discipline80PvEP2BiSHeal', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_wordfortitude:30|t|r Use Discipline PvE P2 BiS Heal (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Discipline80PvE', 'Discipline80PvE', 'WotLK Phase 2', 302);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Priest', 'Discipline80PvEP2BiSHeal', @RACEMASK_HUMAN, 0, 46197, 3819, 3627, 3866, 0, 0, 0),
('Priest', 'Discipline80PvEP2BiSHeal', @RACEMASK_HUMAN, 1, 45933, 0, 3448, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP2BiSHeal', @RACEMASK_HUMAN, 2, 45390, 3809, 3448, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP2BiSHeal', @RACEMASK_HUMAN, 4, 46193, 3832, 3448, 3448, 0, 0, 0),
('Priest', 'Discipline80PvEP2BiSHeal', @RACEMASK_HUMAN, 5, 45558, 0, 3448, 3486, 0, 0, 0),
('Priest', 'Discipline80PvEP2BiSHeal', @RACEMASK_HUMAN, 6, 45388, 3721, 3448, 3448, 0, 0, 0),
('Priest', 'Discipline80PvEP2BiSHeal', @RACEMASK_HUMAN, 7, 46050, 3606, 3448, 3448, 0, 0, 0),
('Priest', 'Discipline80PvEP2BiSHeal', @RACEMASK_HUMAN, 8, 45146, 3758, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP2BiSHeal', @RACEMASK_HUMAN, 9, 45520, 3246, 3448, 3448, 0, 0, 0),
('Priest', 'Discipline80PvEP2BiSHeal', @RACEMASK_HUMAN, 10, 45946, 0, 3448, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP2BiSHeal', @RACEMASK_HUMAN, 11, 46096, 0, 3448, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP2BiSHeal', @RACEMASK_HUMAN, 12, 40432, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP2BiSHeal', @RACEMASK_HUMAN, 13, 45535, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP2BiSHeal', @RACEMASK_HUMAN, 14, 45486, 3859, 3448, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP2BiSHeal', @RACEMASK_HUMAN, 15, 45612, 3834, 3473, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP2BiSHeal', @RACEMASK_HUMAN, 16, 45314, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP2BiSHeal', @RACEMASK_HUMAN, 17, 45294, 0, 3448, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP2BiSHeal', @RACEMASK_A, 0, 46197, 3819, 3627, 3866, 0, 0, 0),
('Priest', 'Discipline80PvEP2BiSHeal', @RACEMASK_A, 1, 45933, 0, 3448, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP2BiSHeal', @RACEMASK_A, 2, 45390, 3809, 3448, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP2BiSHeal', @RACEMASK_A, 4, 46193, 3832, 3448, 3448, 0, 0, 0),
('Priest', 'Discipline80PvEP2BiSHeal', @RACEMASK_A, 5, 45558, 0, 3448, 3486, 0, 0, 0),
('Priest', 'Discipline80PvEP2BiSHeal', @RACEMASK_A, 6, 45388, 3721, 3448, 3448, 0, 0, 0),
('Priest', 'Discipline80PvEP2BiSHeal', @RACEMASK_A, 7, 46050, 3606, 3448, 3448, 0, 0, 0),
('Priest', 'Discipline80PvEP2BiSHeal', @RACEMASK_A, 8, 45146, 3758, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP2BiSHeal', @RACEMASK_A, 9, 45520, 3246, 3448, 3448, 0, 0, 0),
('Priest', 'Discipline80PvEP2BiSHeal', @RACEMASK_A, 10, 45946, 0, 3448, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP2BiSHeal', @RACEMASK_A, 11, 46096, 0, 3448, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP2BiSHeal', @RACEMASK_A, 12, 40432, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP2BiSHeal', @RACEMASK_A, 13, 45535, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP2BiSHeal', @RACEMASK_A, 14, 45486, 3859, 3448, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP2BiSHeal', @RACEMASK_A, 15, 45612, 3834, 3473, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP2BiSHeal', @RACEMASK_A, 16, 45314, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP2BiSHeal', @RACEMASK_A, 17, 45294, 0, 3448, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP2BiSHeal', @RACEMASK_H, 0, 46197, 3819, 3627, 3866, 0, 0, 0),
('Priest', 'Discipline80PvEP2BiSHeal', @RACEMASK_H, 1, 45933, 0, 3448, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP2BiSHeal', @RACEMASK_H, 2, 45390, 3809, 3448, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP2BiSHeal', @RACEMASK_H, 4, 46193, 3832, 3448, 3448, 0, 0, 0),
('Priest', 'Discipline80PvEP2BiSHeal', @RACEMASK_H, 5, 45558, 0, 3448, 3486, 0, 0, 0),
('Priest', 'Discipline80PvEP2BiSHeal', @RACEMASK_H, 6, 45388, 3721, 3448, 3448, 0, 0, 0),
('Priest', 'Discipline80PvEP2BiSHeal', @RACEMASK_H, 7, 46050, 3606, 3448, 3448, 0, 0, 0),
('Priest', 'Discipline80PvEP2BiSHeal', @RACEMASK_H, 8, 45146, 3758, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP2BiSHeal', @RACEMASK_H, 9, 45520, 3246, 3448, 3448, 0, 0, 0),
('Priest', 'Discipline80PvEP2BiSHeal', @RACEMASK_H, 10, 45946, 0, 3448, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP2BiSHeal', @RACEMASK_H, 11, 46096, 0, 3448, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP2BiSHeal', @RACEMASK_H, 12, 40432, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP2BiSHeal', @RACEMASK_H, 13, 45535, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP2BiSHeal', @RACEMASK_H, 14, 45486, 3859, 3448, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP2BiSHeal', @RACEMASK_H, 15, 45612, 3834, 3473, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP2BiSHeal', @RACEMASK_H, 16, 45314, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP2BiSHeal', @RACEMASK_H, 17, 45294, 0, 3448, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Priest Holy 80PvEP2BiSHeal (healer) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Priest', 'Holy80PvEP2BiSHeal', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Use Holy PvE P2 BiS Heal', 7, @MINLEVEL, @MAXLEVEL, 'Holy80PvE', 'Holy80PvE', 'WotLK Phase 2', 302),
('Priest', 'Holy80PvEP2BiSHeal', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Use Holy PvE P2 BiS Heal (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Holy80PvE', 'Holy80PvE', 'WotLK Phase 2', 302);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Priest', 'Holy80PvEP2BiSHeal', @RACEMASK_HUMAN, 0, 46197, 3819, 3627, 3866, 0, 0, 0),
('Priest', 'Holy80PvEP2BiSHeal', @RACEMASK_HUMAN, 1, 45447, 0, 3463, 0, 0, 0, 0),
('Priest', 'Holy80PvEP2BiSHeal', @RACEMASK_HUMAN, 2, 45390, 3809, 3490, 0, 0, 0, 0),
('Priest', 'Holy80PvEP2BiSHeal', @RACEMASK_HUMAN, 4, 46193, 3832, 3490, 3463, 0, 0, 0),
('Priest', 'Holy80PvEP2BiSHeal', @RACEMASK_HUMAN, 5, 45558, 0, 3490, 3463, 0, 0, 0),
('Priest', 'Holy80PvEP2BiSHeal', @RACEMASK_HUMAN, 6, 45388, 3721, 3472, 3463, 0, 0, 0),
('Priest', 'Holy80PvEP2BiSHeal', @RACEMASK_HUMAN, 7, 46050, 3606, 3472, 3463, 0, 0, 0),
('Priest', 'Holy80PvEP2BiSHeal', @RACEMASK_HUMAN, 8, 44008, 3758, 3490, 0, 0, 0, 0),
('Priest', 'Holy80PvEP2BiSHeal', @RACEMASK_HUMAN, 9, 45520, 3246, 3463, 3463, 0, 0, 0),
('Priest', 'Holy80PvEP2BiSHeal', @RACEMASK_HUMAN, 10, 45946, 0, 3463, 0, 0, 0, 0),
('Priest', 'Holy80PvEP2BiSHeal', @RACEMASK_HUMAN, 11, 46323, 0, 3463, 0, 0, 0, 0),
('Priest', 'Holy80PvEP2BiSHeal', @RACEMASK_HUMAN, 12, 46051, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP2BiSHeal', @RACEMASK_HUMAN, 13, 45535, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP2BiSHeal', @RACEMASK_HUMAN, 14, 45486, 3859, 3463, 0, 0, 0, 0),
('Priest', 'Holy80PvEP2BiSHeal', @RACEMASK_HUMAN, 15, 46035, 3834, 3463, 0, 0, 0, 0),
('Priest', 'Holy80PvEP2BiSHeal', @RACEMASK_HUMAN, 16, 45271, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP2BiSHeal', @RACEMASK_HUMAN, 17, 45511, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP2BiSHeal', @RACEMASK_A, 0, 46197, 3819, 3627, 3866, 0, 0, 0),
('Priest', 'Holy80PvEP2BiSHeal', @RACEMASK_A, 1, 45447, 0, 3463, 0, 0, 0, 0),
('Priest', 'Holy80PvEP2BiSHeal', @RACEMASK_A, 2, 45390, 3809, 3490, 0, 0, 0, 0),
('Priest', 'Holy80PvEP2BiSHeal', @RACEMASK_A, 4, 46193, 3832, 3490, 3463, 0, 0, 0),
('Priest', 'Holy80PvEP2BiSHeal', @RACEMASK_A, 5, 45558, 0, 3490, 3463, 0, 0, 0),
('Priest', 'Holy80PvEP2BiSHeal', @RACEMASK_A, 6, 45388, 3721, 3472, 3463, 0, 0, 0),
('Priest', 'Holy80PvEP2BiSHeal', @RACEMASK_A, 7, 46050, 3606, 3472, 3463, 0, 0, 0),
('Priest', 'Holy80PvEP2BiSHeal', @RACEMASK_A, 8, 44008, 3758, 3490, 0, 0, 0, 0),
('Priest', 'Holy80PvEP2BiSHeal', @RACEMASK_A, 9, 45520, 3246, 3463, 3463, 0, 0, 0),
('Priest', 'Holy80PvEP2BiSHeal', @RACEMASK_A, 10, 45946, 0, 3463, 0, 0, 0, 0),
('Priest', 'Holy80PvEP2BiSHeal', @RACEMASK_A, 11, 46323, 0, 3463, 0, 0, 0, 0),
('Priest', 'Holy80PvEP2BiSHeal', @RACEMASK_A, 12, 46051, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP2BiSHeal', @RACEMASK_A, 13, 45535, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP2BiSHeal', @RACEMASK_A, 14, 45486, 3859, 3463, 0, 0, 0, 0),
('Priest', 'Holy80PvEP2BiSHeal', @RACEMASK_A, 15, 46035, 3834, 3463, 0, 0, 0, 0),
('Priest', 'Holy80PvEP2BiSHeal', @RACEMASK_A, 16, 45271, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP2BiSHeal', @RACEMASK_A, 17, 45511, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP2BiSHeal', @RACEMASK_H, 0, 46197, 3819, 3627, 3866, 0, 0, 0),
('Priest', 'Holy80PvEP2BiSHeal', @RACEMASK_H, 1, 45447, 0, 3463, 0, 0, 0, 0),
('Priest', 'Holy80PvEP2BiSHeal', @RACEMASK_H, 2, 45390, 3809, 3490, 0, 0, 0, 0),
('Priest', 'Holy80PvEP2BiSHeal', @RACEMASK_H, 4, 46193, 3832, 3490, 3463, 0, 0, 0),
('Priest', 'Holy80PvEP2BiSHeal', @RACEMASK_H, 5, 45558, 0, 3490, 3463, 0, 0, 0),
('Priest', 'Holy80PvEP2BiSHeal', @RACEMASK_H, 6, 45388, 3721, 3472, 3463, 0, 0, 0),
('Priest', 'Holy80PvEP2BiSHeal', @RACEMASK_H, 7, 46050, 3606, 3472, 3463, 0, 0, 0),
('Priest', 'Holy80PvEP2BiSHeal', @RACEMASK_H, 8, 44008, 3758, 3490, 0, 0, 0, 0),
('Priest', 'Holy80PvEP2BiSHeal', @RACEMASK_H, 9, 45520, 3246, 3463, 3463, 0, 0, 0),
('Priest', 'Holy80PvEP2BiSHeal', @RACEMASK_H, 10, 45946, 0, 3463, 0, 0, 0, 0),
('Priest', 'Holy80PvEP2BiSHeal', @RACEMASK_H, 11, 46323, 0, 3463, 0, 0, 0, 0),
('Priest', 'Holy80PvEP2BiSHeal', @RACEMASK_H, 12, 46051, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP2BiSHeal', @RACEMASK_H, 13, 45535, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP2BiSHeal', @RACEMASK_H, 14, 45486, 3859, 3463, 0, 0, 0, 0),
('Priest', 'Holy80PvEP2BiSHeal', @RACEMASK_H, 15, 46035, 3834, 3463, 0, 0, 0, 0),
('Priest', 'Holy80PvEP2BiSHeal', @RACEMASK_H, 16, 45271, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP2BiSHeal', @RACEMASK_H, 17, 45511, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Priest Shadow 80PvEP2BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Priest', 'Shadow80PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_shadow_shadowwordpain:30|t|r Use Shadow PvE P2 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Shadow80PvE', 'Shadow80PvE', 'WotLK Phase 2', 302),
('Priest', 'Shadow80PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_shadow_shadowwordpain:30|t|r Use Shadow PvE P2 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Shadow80PvE', 'Shadow80PvE', 'WotLK Phase 2', 302);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Priest', 'Shadow80PvEP2BiS', @RACEMASK_HUMAN, 0, 46172, 3820, 3621, 3866, 0, 0, 0),
('Priest', 'Shadow80PvEP2BiS', @RACEMASK_HUMAN, 1, 45243, 0, 3448, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP2BiS', @RACEMASK_HUMAN, 2, 46165, 3810, 3448, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP2BiS', @RACEMASK_HUMAN, 4, 46168, 1144, 3448, 3448, 0, 0, 0),
('Priest', 'Shadow80PvEP2BiS', @RACEMASK_HUMAN, 5, 45619, 3601, 3448, 3448, 0, 0, 3448),
('Priest', 'Shadow80PvEP2BiS', @RACEMASK_HUMAN, 6, 46170, 3872, 3448, 3488, 0, 0, 0),
('Priest', 'Shadow80PvEP2BiS', @RACEMASK_HUMAN, 7, 45135, 3606, 3448, 3488, 0, 0, 0),
('Priest', 'Shadow80PvEP2BiS', @RACEMASK_HUMAN, 8, 45446, 2332, 3448, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP2BiS', @RACEMASK_HUMAN, 9, 45665, 3604, 3448, 3448, 0, 0, 0),
('Priest', 'Shadow80PvEP2BiS', @RACEMASK_HUMAN, 10, 46046, 0, 3448, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP2BiS', @RACEMASK_HUMAN, 11, 45495, 0, 3472, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP2BiS', @RACEMASK_HUMAN, 12, 45518, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP2BiS', @RACEMASK_HUMAN, 13, 45466, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP2BiS', @RACEMASK_HUMAN, 14, 45242, 3722, 3488, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP2BiS', @RACEMASK_HUMAN, 15, 45620, 3834, 3472, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP2BiS', @RACEMASK_HUMAN, 16, 45617, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP2BiS', @RACEMASK_HUMAN, 17, 45294, 0, 3448, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP2BiS', @RACEMASK_A, 0, 46172, 3820, 3621, 3866, 0, 0, 0),
('Priest', 'Shadow80PvEP2BiS', @RACEMASK_A, 1, 45243, 0, 3448, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP2BiS', @RACEMASK_A, 2, 46165, 3810, 3448, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP2BiS', @RACEMASK_A, 4, 46168, 1144, 3448, 3448, 0, 0, 0),
('Priest', 'Shadow80PvEP2BiS', @RACEMASK_A, 5, 45619, 3601, 3448, 3448, 0, 0, 3448),
('Priest', 'Shadow80PvEP2BiS', @RACEMASK_A, 6, 46170, 3872, 3448, 3488, 0, 0, 0),
('Priest', 'Shadow80PvEP2BiS', @RACEMASK_A, 7, 45135, 3606, 3448, 3488, 0, 0, 0),
('Priest', 'Shadow80PvEP2BiS', @RACEMASK_A, 8, 45446, 2332, 3448, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP2BiS', @RACEMASK_A, 9, 45665, 3604, 3448, 3448, 0, 0, 0),
('Priest', 'Shadow80PvEP2BiS', @RACEMASK_A, 10, 46046, 0, 3448, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP2BiS', @RACEMASK_A, 11, 45495, 0, 3472, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP2BiS', @RACEMASK_A, 12, 45518, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP2BiS', @RACEMASK_A, 13, 45466, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP2BiS', @RACEMASK_A, 14, 45242, 3722, 3488, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP2BiS', @RACEMASK_A, 15, 45620, 3834, 3472, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP2BiS', @RACEMASK_A, 16, 45617, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP2BiS', @RACEMASK_A, 17, 45294, 0, 3448, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP2BiS', @RACEMASK_H, 0, 46172, 3820, 3621, 3866, 0, 0, 0),
('Priest', 'Shadow80PvEP2BiS', @RACEMASK_H, 1, 45243, 0, 3448, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP2BiS', @RACEMASK_H, 2, 46165, 3810, 3448, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP2BiS', @RACEMASK_H, 4, 46168, 1144, 3448, 3448, 0, 0, 0),
('Priest', 'Shadow80PvEP2BiS', @RACEMASK_H, 5, 45619, 3601, 3448, 3448, 0, 0, 3448),
('Priest', 'Shadow80PvEP2BiS', @RACEMASK_H, 6, 46170, 3872, 3448, 3488, 0, 0, 0),
('Priest', 'Shadow80PvEP2BiS', @RACEMASK_H, 7, 45135, 3606, 3448, 3488, 0, 0, 0),
('Priest', 'Shadow80PvEP2BiS', @RACEMASK_H, 8, 45446, 2332, 3448, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP2BiS', @RACEMASK_H, 9, 45665, 3604, 3448, 3448, 0, 0, 0),
('Priest', 'Shadow80PvEP2BiS', @RACEMASK_H, 10, 46046, 0, 3448, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP2BiS', @RACEMASK_H, 11, 45495, 0, 3472, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP2BiS', @RACEMASK_H, 12, 45518, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP2BiS', @RACEMASK_H, 13, 45466, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP2BiS', @RACEMASK_H, 14, 45242, 3722, 3488, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP2BiS', @RACEMASK_H, 15, 45620, 3834, 3472, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP2BiS', @RACEMASK_H, 16, 45617, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP2BiS', @RACEMASK_H, 17, 45294, 0, 3448, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Rogue Assassination 80PvEP2BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Rogue', 'Assassination80PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_rogue_eviscerate:30|t|r Use Assassination PvE P2 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Assassination80PvE', 'Assassination80PvE', 'WotLK Phase 2', 302),
('Rogue', 'Assassination80PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_rogue_eviscerate:30|t|r Use Assassination PvE P2 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Assassination80PvE', 'Assassination80PvE', 'WotLK Phase 2', 302);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Rogue', 'Assassination80PvEP2BiS', @RACEMASK_HUMAN, 0, 46125, 3817, 3628, 3862, 0, 0, 0),
('Rogue', 'Assassination80PvEP2BiS', @RACEMASK_HUMAN, 1, 45517, 0, 3449, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP2BiS', @RACEMASK_HUMAN, 2, 45245, 3808, 3449, 3449, 0, 0, 0),
('Rogue', 'Assassination80PvEP2BiS', @RACEMASK_HUMAN, 4, 45473, 3832, 3492, 3750, 3449, 0, 0),
('Rogue', 'Assassination80PvEP2BiS', @RACEMASK_HUMAN, 5, 46095, 0, 3453, 3453, 0, 0, 3453),
('Rogue', 'Assassination80PvEP2BiS', @RACEMASK_HUMAN, 6, 45536, 3823, 3449, 3449, 3449, 0, 0),
('Rogue', 'Assassination80PvEP2BiS', @RACEMASK_HUMAN, 7, 45564, 3606, 3449, 3449, 0, 0, 0),
('Rogue', 'Assassination80PvEP2BiS', @RACEMASK_HUMAN, 8, 45611, 3845, 3492, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP2BiS', @RACEMASK_HUMAN, 9, 46124, 3604, 3449, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP2BiS', @RACEMASK_HUMAN, 10, 46048, 0, 3449, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP2BiS', @RACEMASK_HUMAN, 11, 45608, 0, 3449, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP2BiS', @RACEMASK_HUMAN, 12, 45609, 0, 0, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP2BiS', @RACEMASK_HUMAN, 13, 46038, 0, 0, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP2BiS', @RACEMASK_HUMAN, 14, 45461, 3605, 3492, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP2BiS', @RACEMASK_HUMAN, 15, 45484, 3789, 3449, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP2BiS', @RACEMASK_HUMAN, 16, 45484, 3789, 3449, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP2BiS', @RACEMASK_HUMAN, 17, 45570, 0, 0, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP2BiS', @RACEMASK_A, 0, 46125, 3817, 3628, 3862, 0, 0, 0),
('Rogue', 'Assassination80PvEP2BiS', @RACEMASK_A, 1, 45517, 0, 3449, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP2BiS', @RACEMASK_A, 2, 45245, 3808, 3449, 3449, 0, 0, 0),
('Rogue', 'Assassination80PvEP2BiS', @RACEMASK_A, 4, 45473, 3832, 3492, 3750, 3449, 0, 0),
('Rogue', 'Assassination80PvEP2BiS', @RACEMASK_A, 5, 46095, 0, 3453, 3453, 0, 0, 3453),
('Rogue', 'Assassination80PvEP2BiS', @RACEMASK_A, 6, 45536, 3823, 3449, 3449, 3449, 0, 0),
('Rogue', 'Assassination80PvEP2BiS', @RACEMASK_A, 7, 45564, 3606, 3449, 3449, 0, 0, 0),
('Rogue', 'Assassination80PvEP2BiS', @RACEMASK_A, 8, 45611, 3845, 3492, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP2BiS', @RACEMASK_A, 9, 46124, 3604, 3449, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP2BiS', @RACEMASK_A, 10, 46048, 0, 3449, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP2BiS', @RACEMASK_A, 11, 45608, 0, 3449, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP2BiS', @RACEMASK_A, 12, 45609, 0, 0, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP2BiS', @RACEMASK_A, 13, 46038, 0, 0, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP2BiS', @RACEMASK_A, 14, 45461, 3605, 3492, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP2BiS', @RACEMASK_A, 15, 45484, 3789, 3449, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP2BiS', @RACEMASK_A, 16, 45484, 3789, 3449, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP2BiS', @RACEMASK_A, 17, 45570, 0, 0, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP2BiS', @RACEMASK_H, 0, 46125, 3817, 3628, 3862, 0, 0, 0),
('Rogue', 'Assassination80PvEP2BiS', @RACEMASK_H, 1, 45517, 0, 3449, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP2BiS', @RACEMASK_H, 2, 45245, 3808, 3449, 3449, 0, 0, 0),
('Rogue', 'Assassination80PvEP2BiS', @RACEMASK_H, 4, 45473, 3832, 3492, 3750, 3449, 0, 0),
('Rogue', 'Assassination80PvEP2BiS', @RACEMASK_H, 5, 46095, 0, 3453, 3453, 0, 0, 3453),
('Rogue', 'Assassination80PvEP2BiS', @RACEMASK_H, 6, 45536, 3823, 3449, 3449, 3449, 0, 0),
('Rogue', 'Assassination80PvEP2BiS', @RACEMASK_H, 7, 45564, 3606, 3449, 3449, 0, 0, 0),
('Rogue', 'Assassination80PvEP2BiS', @RACEMASK_H, 8, 45611, 3845, 3492, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP2BiS', @RACEMASK_H, 9, 46124, 3604, 3449, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP2BiS', @RACEMASK_H, 10, 46048, 0, 3449, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP2BiS', @RACEMASK_H, 11, 45608, 0, 3449, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP2BiS', @RACEMASK_H, 12, 45609, 0, 0, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP2BiS', @RACEMASK_H, 13, 46038, 0, 0, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP2BiS', @RACEMASK_H, 14, 45461, 3605, 3492, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP2BiS', @RACEMASK_H, 15, 45484, 3789, 3449, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP2BiS', @RACEMASK_H, 16, 45484, 3789, 3449, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP2BiS', @RACEMASK_H, 17, 45570, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Rogue Combat 80PvEP2BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Rogue', 'Combat80PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_backstab:30|t|r Use Combat PvE P2 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Combat80PvE', 'Combat80PvE', 'WotLK Phase 2', 302),
('Rogue', 'Combat80PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_backstab:30|t|r Use Combat PvE P2 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Combat80PvE', 'Combat80PvE', 'WotLK Phase 2', 302);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Rogue', 'Combat80PvEP2BiS', @RACEMASK_HUMAN, 0, 45993, 3817, 3628, 3449, 0, 0, 0),
('Rogue', 'Combat80PvEP2BiS', @RACEMASK_HUMAN, 1, 45517, 0, 3449, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP2BiS', @RACEMASK_HUMAN, 2, 45245, 3808, 3449, 3449, 0, 0, 0),
('Rogue', 'Combat80PvEP2BiS', @RACEMASK_HUMAN, 4, 45473, 3832, 3492, 3750, 3449, 0, 0),
('Rogue', 'Combat80PvEP2BiS', @RACEMASK_HUMAN, 5, 46095, 0, 3449, 3449, 0, 0, 3449),
('Rogue', 'Combat80PvEP2BiS', @RACEMASK_HUMAN, 6, 45536, 3823, 3449, 3449, 3449, 0, 0),
('Rogue', 'Combat80PvEP2BiS', @RACEMASK_HUMAN, 7, 45564, 3606, 3449, 3449, 0, 0, 0),
('Rogue', 'Combat80PvEP2BiS', @RACEMASK_HUMAN, 8, 45869, 3845, 3492, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP2BiS', @RACEMASK_HUMAN, 9, 46043, 3604, 3449, 3492, 0, 0, 0),
('Rogue', 'Combat80PvEP2BiS', @RACEMASK_HUMAN, 10, 46048, 0, 3862, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP2BiS', @RACEMASK_HUMAN, 11, 45608, 0, 3453, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP2BiS', @RACEMASK_HUMAN, 12, 45609, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP2BiS', @RACEMASK_HUMAN, 13, 45931, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP2BiS', @RACEMASK_HUMAN, 14, 45461, 3605, 3492, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP2BiS', @RACEMASK_HUMAN, 15, 45132, 3789, 3492, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP2BiS', @RACEMASK_HUMAN, 16, 45484, 3789, 3449, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP2BiS', @RACEMASK_HUMAN, 17, 45296, 0, 3449, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP2BiS', @RACEMASK_A, 0, 45993, 3817, 3628, 3449, 0, 0, 0),
('Rogue', 'Combat80PvEP2BiS', @RACEMASK_A, 1, 45517, 0, 3449, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP2BiS', @RACEMASK_A, 2, 45245, 3808, 3449, 3449, 0, 0, 0),
('Rogue', 'Combat80PvEP2BiS', @RACEMASK_A, 4, 45473, 3832, 3492, 3750, 3449, 0, 0),
('Rogue', 'Combat80PvEP2BiS', @RACEMASK_A, 5, 46095, 0, 3449, 3449, 0, 0, 3449),
('Rogue', 'Combat80PvEP2BiS', @RACEMASK_A, 6, 45536, 3823, 3449, 3449, 3449, 0, 0),
('Rogue', 'Combat80PvEP2BiS', @RACEMASK_A, 7, 45564, 3606, 3449, 3449, 0, 0, 0),
('Rogue', 'Combat80PvEP2BiS', @RACEMASK_A, 8, 45869, 3845, 3492, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP2BiS', @RACEMASK_A, 9, 46043, 3604, 3449, 3492, 0, 0, 0),
('Rogue', 'Combat80PvEP2BiS', @RACEMASK_A, 10, 46048, 0, 3862, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP2BiS', @RACEMASK_A, 11, 45608, 0, 3453, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP2BiS', @RACEMASK_A, 12, 45609, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP2BiS', @RACEMASK_A, 13, 45931, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP2BiS', @RACEMASK_A, 14, 45461, 3605, 3492, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP2BiS', @RACEMASK_A, 15, 45132, 3789, 3492, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP2BiS', @RACEMASK_A, 16, 45484, 3789, 3449, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP2BiS', @RACEMASK_A, 17, 45296, 0, 3449, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP2BiS', @RACEMASK_H, 0, 45993, 3817, 3628, 3449, 0, 0, 0),
('Rogue', 'Combat80PvEP2BiS', @RACEMASK_H, 1, 45517, 0, 3449, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP2BiS', @RACEMASK_H, 2, 45245, 3808, 3449, 3449, 0, 0, 0),
('Rogue', 'Combat80PvEP2BiS', @RACEMASK_H, 4, 45473, 3832, 3492, 3750, 3449, 0, 0),
('Rogue', 'Combat80PvEP2BiS', @RACEMASK_H, 5, 46095, 0, 3449, 3449, 0, 0, 3449),
('Rogue', 'Combat80PvEP2BiS', @RACEMASK_H, 6, 45536, 3823, 3449, 3449, 3449, 0, 0),
('Rogue', 'Combat80PvEP2BiS', @RACEMASK_H, 7, 45564, 3606, 3449, 3449, 0, 0, 0),
('Rogue', 'Combat80PvEP2BiS', @RACEMASK_H, 8, 45869, 3845, 3492, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP2BiS', @RACEMASK_H, 9, 46043, 3604, 3449, 3492, 0, 0, 0),
('Rogue', 'Combat80PvEP2BiS', @RACEMASK_H, 10, 46048, 0, 3862, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP2BiS', @RACEMASK_H, 11, 45608, 0, 3453, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP2BiS', @RACEMASK_H, 12, 45609, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP2BiS', @RACEMASK_H, 13, 45931, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP2BiS', @RACEMASK_H, 14, 45461, 3605, 3492, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP2BiS', @RACEMASK_H, 15, 45132, 3789, 3492, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP2BiS', @RACEMASK_H, 16, 45484, 3789, 3449, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP2BiS', @RACEMASK_H, 17, 45296, 0, 3449, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Rogue Subtlety 80PvEP2BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Rogue', 'Subtlety80PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_stealth:30|t|r Use Subtlety PvE P2 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Subtlety80PvE', 'Subtlety80PvE', 'WotLK Phase 2', 302),
('Rogue', 'Subtlety80PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_stealth:30|t|r Use Subtlety PvE P2 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Subtlety80PvE', 'Subtlety80PvE', 'WotLK Phase 2', 302);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Rogue', 'Subtlety80PvEP2BiS', @RACEMASK_HUMAN, 0, 46125, 3817, 3628, 3862, 0, 0, 0),
('Rogue', 'Subtlety80PvEP2BiS', @RACEMASK_HUMAN, 1, 45945, 0, 3447, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP2BiS', @RACEMASK_HUMAN, 2, 45245, 3808, 3447, 3447, 0, 0, 0),
('Rogue', 'Subtlety80PvEP2BiS', @RACEMASK_HUMAN, 4, 45473, 3832, 3483, 3750, 3447, 0, 0),
('Rogue', 'Subtlety80PvEP2BiS', @RACEMASK_HUMAN, 5, 46095, 0, 3447, 3447, 0, 0, 3447),
('Rogue', 'Subtlety80PvEP2BiS', @RACEMASK_HUMAN, 6, 45536, 3823, 3447, 3447, 3447, 0, 0),
('Rogue', 'Subtlety80PvEP2BiS', @RACEMASK_HUMAN, 7, 45564, 3606, 3483, 3453, 0, 0, 0),
('Rogue', 'Subtlety80PvEP2BiS', @RACEMASK_HUMAN, 8, 45611, 3845, 3483, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP2BiS', @RACEMASK_HUMAN, 9, 46124, 3604, 3483, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP2BiS', @RACEMASK_HUMAN, 10, 46048, 0, 3453, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP2BiS', @RACEMASK_HUMAN, 11, 45608, 0, 3453, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP2BiS', @RACEMASK_HUMAN, 12, 45609, 0, 0, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP2BiS', @RACEMASK_HUMAN, 13, 45931, 0, 0, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP2BiS', @RACEMASK_HUMAN, 14, 45461, 3605, 3483, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP2BiS', @RACEMASK_HUMAN, 15, 45607, 3789, 3483, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP2BiS', @RACEMASK_HUMAN, 16, 45484, 3789, 3447, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP2BiS', @RACEMASK_HUMAN, 17, 45296, 0, 3447, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP2BiS', @RACEMASK_A, 0, 46125, 3817, 3628, 3862, 0, 0, 0),
('Rogue', 'Subtlety80PvEP2BiS', @RACEMASK_A, 1, 45945, 0, 3447, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP2BiS', @RACEMASK_A, 2, 45245, 3808, 3447, 3447, 0, 0, 0),
('Rogue', 'Subtlety80PvEP2BiS', @RACEMASK_A, 4, 45473, 3832, 3483, 3750, 3447, 0, 0),
('Rogue', 'Subtlety80PvEP2BiS', @RACEMASK_A, 5, 46095, 0, 3447, 3447, 0, 0, 3447),
('Rogue', 'Subtlety80PvEP2BiS', @RACEMASK_A, 6, 45536, 3823, 3447, 3447, 3447, 0, 0),
('Rogue', 'Subtlety80PvEP2BiS', @RACEMASK_A, 7, 45564, 3606, 3483, 3453, 0, 0, 0),
('Rogue', 'Subtlety80PvEP2BiS', @RACEMASK_A, 8, 45611, 3845, 3483, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP2BiS', @RACEMASK_A, 9, 46124, 3604, 3483, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP2BiS', @RACEMASK_A, 10, 46048, 0, 3453, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP2BiS', @RACEMASK_A, 11, 45608, 0, 3453, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP2BiS', @RACEMASK_A, 12, 45609, 0, 0, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP2BiS', @RACEMASK_A, 13, 45931, 0, 0, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP2BiS', @RACEMASK_A, 14, 45461, 3605, 3483, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP2BiS', @RACEMASK_A, 15, 45607, 3789, 3483, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP2BiS', @RACEMASK_A, 16, 45484, 3789, 3447, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP2BiS', @RACEMASK_A, 17, 45296, 0, 3447, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP2BiS', @RACEMASK_H, 0, 46125, 3817, 3628, 3862, 0, 0, 0),
('Rogue', 'Subtlety80PvEP2BiS', @RACEMASK_H, 1, 45945, 0, 3447, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP2BiS', @RACEMASK_H, 2, 45245, 3808, 3447, 3447, 0, 0, 0),
('Rogue', 'Subtlety80PvEP2BiS', @RACEMASK_H, 4, 45473, 3832, 3483, 3750, 3447, 0, 0),
('Rogue', 'Subtlety80PvEP2BiS', @RACEMASK_H, 5, 46095, 0, 3447, 3447, 0, 0, 3447),
('Rogue', 'Subtlety80PvEP2BiS', @RACEMASK_H, 6, 45536, 3823, 3447, 3447, 3447, 0, 0),
('Rogue', 'Subtlety80PvEP2BiS', @RACEMASK_H, 7, 45564, 3606, 3483, 3453, 0, 0, 0),
('Rogue', 'Subtlety80PvEP2BiS', @RACEMASK_H, 8, 45611, 3845, 3483, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP2BiS', @RACEMASK_H, 9, 46124, 3604, 3483, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP2BiS', @RACEMASK_H, 10, 46048, 0, 3453, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP2BiS', @RACEMASK_H, 11, 45608, 0, 3453, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP2BiS', @RACEMASK_H, 12, 45609, 0, 0, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP2BiS', @RACEMASK_H, 13, 45931, 0, 0, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP2BiS', @RACEMASK_H, 14, 45461, 3605, 3483, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP2BiS', @RACEMASK_H, 15, 45607, 3789, 3483, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP2BiS', @RACEMASK_H, 16, 45484, 3789, 3447, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP2BiS', @RACEMASK_H, 17, 45296, 0, 3447, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Shaman Elemental 80PvEP2BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Shaman', 'Elemental80PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_lightning:30|t|r Use Elemental PvE P2 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Elemental80PvE', 'Elemental80PvE', 'WotLK Phase 2', 302),
('Shaman', 'Elemental80PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_lightning:30|t|r Use Elemental PvE P2 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Elemental80PvE', 'Elemental80PvE', 'WotLK Phase 2', 302);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Shaman', 'Elemental80PvEP2BiS', @RACEMASK_HUMAN, 0, 46209, 3820, 3621, 3490, 0, 0, 0),
('Shaman', 'Elemental80PvEP2BiS', @RACEMASK_HUMAN, 1, 45933, 0, 3490, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP2BiS', @RACEMASK_HUMAN, 2, 46211, 3810, 3866, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP2BiS', @RACEMASK_HUMAN, 4, 46206, 3832, 3448, 3448, 0, 0, 0),
('Shaman', 'Elemental80PvEP2BiS', @RACEMASK_HUMAN, 5, 45616, 0, 3448, 3448, 0, 0, 3448),
('Shaman', 'Elemental80PvEP2BiS', @RACEMASK_HUMAN, 6, 46210, 3721, 3448, 3473, 0, 0, 0),
('Shaman', 'Elemental80PvEP2BiS', @RACEMASK_HUMAN, 7, 45537, 3606, 3448, 3473, 0, 0, 0),
('Shaman', 'Elemental80PvEP2BiS', @RACEMASK_HUMAN, 8, 45460, 2332, 3448, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP2BiS', @RACEMASK_HUMAN, 9, 45665, 3604, 3448, 3448, 0, 0, 0),
('Shaman', 'Elemental80PvEP2BiS', @RACEMASK_HUMAN, 10, 45495, 0, 3448, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP2BiS', @RACEMASK_HUMAN, 11, 46046, 0, 3490, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP2BiS', @RACEMASK_HUMAN, 12, 40255, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP2BiS', @RACEMASK_HUMAN, 13, 45518, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP2BiS', @RACEMASK_HUMAN, 14, 45242, 3831, 3490, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP2BiS', @RACEMASK_HUMAN, 15, 45612, 3834, 3448, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP2BiS', @RACEMASK_HUMAN, 16, 45470, 1128, 3448, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP2BiS', @RACEMASK_HUMAN, 17, 40267, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP2BiS', @RACEMASK_A, 0, 46209, 3820, 3621, 3490, 0, 0, 0),
('Shaman', 'Elemental80PvEP2BiS', @RACEMASK_A, 1, 45933, 0, 3490, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP2BiS', @RACEMASK_A, 2, 46211, 3810, 3866, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP2BiS', @RACEMASK_A, 4, 46206, 3832, 3448, 3448, 0, 0, 0),
('Shaman', 'Elemental80PvEP2BiS', @RACEMASK_A, 5, 45616, 0, 3448, 3448, 0, 0, 3448),
('Shaman', 'Elemental80PvEP2BiS', @RACEMASK_A, 6, 46210, 3721, 3448, 3473, 0, 0, 0),
('Shaman', 'Elemental80PvEP2BiS', @RACEMASK_A, 7, 45537, 3606, 3448, 3473, 0, 0, 0),
('Shaman', 'Elemental80PvEP2BiS', @RACEMASK_A, 8, 45460, 2332, 3448, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP2BiS', @RACEMASK_A, 9, 45665, 3604, 3448, 3448, 0, 0, 0),
('Shaman', 'Elemental80PvEP2BiS', @RACEMASK_A, 10, 45495, 0, 3448, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP2BiS', @RACEMASK_A, 11, 46046, 0, 3490, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP2BiS', @RACEMASK_A, 12, 40255, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP2BiS', @RACEMASK_A, 13, 45518, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP2BiS', @RACEMASK_A, 14, 45242, 3831, 3490, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP2BiS', @RACEMASK_A, 15, 45612, 3834, 3448, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP2BiS', @RACEMASK_A, 16, 45470, 1128, 3448, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP2BiS', @RACEMASK_A, 17, 40267, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP2BiS', @RACEMASK_H, 0, 46209, 3820, 3621, 3490, 0, 0, 0),
('Shaman', 'Elemental80PvEP2BiS', @RACEMASK_H, 1, 45933, 0, 3490, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP2BiS', @RACEMASK_H, 2, 46211, 3810, 3866, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP2BiS', @RACEMASK_H, 4, 46206, 3832, 3448, 3448, 0, 0, 0),
('Shaman', 'Elemental80PvEP2BiS', @RACEMASK_H, 5, 45616, 0, 3448, 3448, 0, 0, 3448),
('Shaman', 'Elemental80PvEP2BiS', @RACEMASK_H, 6, 46210, 3721, 3448, 3473, 0, 0, 0),
('Shaman', 'Elemental80PvEP2BiS', @RACEMASK_H, 7, 45537, 3606, 3448, 3473, 0, 0, 0),
('Shaman', 'Elemental80PvEP2BiS', @RACEMASK_H, 8, 45460, 2332, 3448, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP2BiS', @RACEMASK_H, 9, 45665, 3604, 3448, 3448, 0, 0, 0),
('Shaman', 'Elemental80PvEP2BiS', @RACEMASK_H, 10, 45495, 0, 3448, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP2BiS', @RACEMASK_H, 11, 46046, 0, 3490, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP2BiS', @RACEMASK_H, 12, 40255, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP2BiS', @RACEMASK_H, 13, 45518, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP2BiS', @RACEMASK_H, 14, 45242, 3831, 3490, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP2BiS', @RACEMASK_H, 15, 45612, 3834, 3448, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP2BiS', @RACEMASK_H, 16, 45470, 1128, 3448, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP2BiS', @RACEMASK_H, 17, 40267, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Shaman Enhancement 80PvEP2BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Shaman', 'Enhancement80PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_lightningshield:30|t|r Use Enhancement PvE P2 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Enhancement80PvE', 'Enhancement80PvE', 'WotLK Phase 2', 302),
('Shaman', 'Enhancement80PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_lightningshield:30|t|r Use Enhancement PvE P2 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Enhancement80PvE', 'Enhancement80PvE', 'WotLK Phase 2', 302);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Shaman', 'Enhancement80PvEP2BiS', @RACEMASK_HUMAN, 0, 45610, 3817, 3628, 3750, 0, 0, 0),
('Shaman', 'Enhancement80PvEP2BiS', @RACEMASK_HUMAN, 1, 45517, 0, 3449, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP2BiS', @RACEMASK_HUMAN, 2, 46203, 3808, 3449, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP2BiS', @RACEMASK_HUMAN, 4, 46205, 3832, 3449, 3449, 0, 0, 0),
('Shaman', 'Enhancement80PvEP2BiS', @RACEMASK_HUMAN, 5, 45553, 0, 3449, 3449, 0, 0, 3449),
('Shaman', 'Enhancement80PvEP2BiS', @RACEMASK_HUMAN, 6, 46208, 3823, 3449, 3449, 0, 0, 0),
('Shaman', 'Enhancement80PvEP2BiS', @RACEMASK_HUMAN, 7, 45989, 3606, 3497, 3449, 0, 0, 0),
('Shaman', 'Enhancement80PvEP2BiS', @RACEMASK_HUMAN, 8, 45460, 3845, 3453, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP2BiS', @RACEMASK_HUMAN, 9, 46200, 3604, 3492, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP2BiS', @RACEMASK_HUMAN, 10, 45456, 0, 3449, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP2BiS', @RACEMASK_HUMAN, 11, 46046, 0, 3449, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP2BiS', @RACEMASK_HUMAN, 12, 46038, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP2BiS', @RACEMASK_HUMAN, 13, 45609, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP2BiS', @RACEMASK_HUMAN, 14, 45461, 3831, 3449, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP2BiS', @RACEMASK_HUMAN, 15, 45620, 3789, 3449, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP2BiS', @RACEMASK_HUMAN, 16, 46097, 3789, 3449, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP2BiS', @RACEMASK_HUMAN, 17, 42608, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP2BiS', @RACEMASK_A, 0, 45610, 3817, 3628, 3750, 0, 0, 0),
('Shaman', 'Enhancement80PvEP2BiS', @RACEMASK_A, 1, 45517, 0, 3449, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP2BiS', @RACEMASK_A, 2, 46203, 3808, 3449, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP2BiS', @RACEMASK_A, 4, 46205, 3832, 3449, 3449, 0, 0, 0),
('Shaman', 'Enhancement80PvEP2BiS', @RACEMASK_A, 5, 45553, 0, 3449, 3449, 0, 0, 3449),
('Shaman', 'Enhancement80PvEP2BiS', @RACEMASK_A, 6, 46208, 3823, 3449, 3449, 0, 0, 0),
('Shaman', 'Enhancement80PvEP2BiS', @RACEMASK_A, 7, 45989, 3606, 3497, 3449, 0, 0, 0),
('Shaman', 'Enhancement80PvEP2BiS', @RACEMASK_A, 8, 45460, 3845, 3453, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP2BiS', @RACEMASK_A, 9, 46200, 3604, 3492, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP2BiS', @RACEMASK_A, 10, 45456, 0, 3449, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP2BiS', @RACEMASK_A, 11, 46046, 0, 3449, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP2BiS', @RACEMASK_A, 12, 46038, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP2BiS', @RACEMASK_A, 13, 45609, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP2BiS', @RACEMASK_A, 14, 45461, 3831, 3449, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP2BiS', @RACEMASK_A, 15, 45620, 3789, 3449, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP2BiS', @RACEMASK_A, 16, 46097, 3789, 3449, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP2BiS', @RACEMASK_A, 17, 42608, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP2BiS', @RACEMASK_H, 0, 45610, 3817, 3628, 3750, 0, 0, 0),
('Shaman', 'Enhancement80PvEP2BiS', @RACEMASK_H, 1, 45517, 0, 3449, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP2BiS', @RACEMASK_H, 2, 46203, 3808, 3449, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP2BiS', @RACEMASK_H, 4, 46205, 3832, 3449, 3449, 0, 0, 0),
('Shaman', 'Enhancement80PvEP2BiS', @RACEMASK_H, 5, 45553, 0, 3449, 3449, 0, 0, 3449),
('Shaman', 'Enhancement80PvEP2BiS', @RACEMASK_H, 6, 46208, 3823, 3449, 3449, 0, 0, 0),
('Shaman', 'Enhancement80PvEP2BiS', @RACEMASK_H, 7, 45989, 3606, 3497, 3449, 0, 0, 0),
('Shaman', 'Enhancement80PvEP2BiS', @RACEMASK_H, 8, 45460, 3845, 3453, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP2BiS', @RACEMASK_H, 9, 46200, 3604, 3492, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP2BiS', @RACEMASK_H, 10, 45456, 0, 3449, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP2BiS', @RACEMASK_H, 11, 46046, 0, 3449, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP2BiS', @RACEMASK_H, 12, 46038, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP2BiS', @RACEMASK_H, 13, 45609, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP2BiS', @RACEMASK_H, 14, 45461, 3831, 3449, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP2BiS', @RACEMASK_H, 15, 45620, 3789, 3449, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP2BiS', @RACEMASK_H, 16, 46097, 3789, 3449, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP2BiS', @RACEMASK_H, 17, 42608, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Shaman Restoration 80PvEP2BiSHeal (healer) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Shaman', 'Restoration80PvEP2BiSHeal', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_magicimmunity:30|t|r Use Restoration PvE P2 BiS Heal', 7, @MINLEVEL, @MAXLEVEL, 'Restoration80PvE', 'Restoration80PvE', 'WotLK Phase 2', 302),
('Shaman', 'Restoration80PvEP2BiSHeal', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_magicimmunity:30|t|r Use Restoration PvE P2 BiS Heal (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Restoration80PvE', 'Restoration80PvE', 'WotLK Phase 2', 302);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Shaman', 'Restoration80PvEP2BiSHeal', @RACEMASK_HUMAN, 0, 46201, 3820, 3627, 3473, 0, 0, 0),
('Shaman', 'Restoration80PvEP2BiSHeal', @RACEMASK_HUMAN, 1, 45443, 0, 3473, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP2BiSHeal', @RACEMASK_HUMAN, 2, 46204, 3810, 3866, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP2BiSHeal', @RACEMASK_HUMAN, 4, 45867, 2381, 3490, 3448, 0, 0, 0),
('Shaman', 'Restoration80PvEP2BiSHeal', @RACEMASK_HUMAN, 5, 45151, 0, 3448, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP2BiSHeal', @RACEMASK_HUMAN, 6, 46202, 3721, 3448, 3473, 0, 0, 0),
('Shaman', 'Restoration80PvEP2BiSHeal', @RACEMASK_HUMAN, 7, 45615, 3232, 3448, 3473, 0, 0, 0),
('Shaman', 'Restoration80PvEP2BiSHeal', @RACEMASK_HUMAN, 8, 45460, 2332, 3473, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP2BiSHeal', @RACEMASK_HUMAN, 9, 46199, 3246, 3490, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP2BiSHeal', @RACEMASK_HUMAN, 10, 45614, 0, 3490, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP2BiSHeal', @RACEMASK_HUMAN, 11, 46046, 0, 3490, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP2BiSHeal', @RACEMASK_HUMAN, 12, 45535, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP2BiSHeal', @RACEMASK_HUMAN, 13, 45466, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP2BiSHeal', @RACEMASK_HUMAN, 14, 45486, 3831, 3490, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP2BiSHeal', @RACEMASK_HUMAN, 15, 46017, 3834, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP2BiSHeal', @RACEMASK_HUMAN, 16, 45470, 1128, 3473, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP2BiSHeal', @RACEMASK_HUMAN, 17, 45114, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP2BiSHeal', @RACEMASK_A, 0, 46201, 3820, 3627, 3473, 0, 0, 0),
('Shaman', 'Restoration80PvEP2BiSHeal', @RACEMASK_A, 1, 45443, 0, 3473, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP2BiSHeal', @RACEMASK_A, 2, 46204, 3810, 3866, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP2BiSHeal', @RACEMASK_A, 4, 45867, 2381, 3490, 3448, 0, 0, 0),
('Shaman', 'Restoration80PvEP2BiSHeal', @RACEMASK_A, 5, 45151, 0, 3448, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP2BiSHeal', @RACEMASK_A, 6, 46202, 3721, 3448, 3473, 0, 0, 0),
('Shaman', 'Restoration80PvEP2BiSHeal', @RACEMASK_A, 7, 45615, 3232, 3448, 3473, 0, 0, 0),
('Shaman', 'Restoration80PvEP2BiSHeal', @RACEMASK_A, 8, 45460, 2332, 3473, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP2BiSHeal', @RACEMASK_A, 9, 46199, 3246, 3490, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP2BiSHeal', @RACEMASK_A, 10, 45614, 0, 3490, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP2BiSHeal', @RACEMASK_A, 11, 46046, 0, 3490, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP2BiSHeal', @RACEMASK_A, 12, 45535, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP2BiSHeal', @RACEMASK_A, 13, 45466, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP2BiSHeal', @RACEMASK_A, 14, 45486, 3831, 3490, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP2BiSHeal', @RACEMASK_A, 15, 46017, 3834, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP2BiSHeal', @RACEMASK_A, 16, 45470, 1128, 3473, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP2BiSHeal', @RACEMASK_A, 17, 45114, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP2BiSHeal', @RACEMASK_H, 0, 46201, 3820, 3627, 3473, 0, 0, 0),
('Shaman', 'Restoration80PvEP2BiSHeal', @RACEMASK_H, 1, 45443, 0, 3473, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP2BiSHeal', @RACEMASK_H, 2, 46204, 3810, 3866, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP2BiSHeal', @RACEMASK_H, 4, 45867, 2381, 3490, 3448, 0, 0, 0),
('Shaman', 'Restoration80PvEP2BiSHeal', @RACEMASK_H, 5, 45151, 0, 3448, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP2BiSHeal', @RACEMASK_H, 6, 46202, 3721, 3448, 3473, 0, 0, 0),
('Shaman', 'Restoration80PvEP2BiSHeal', @RACEMASK_H, 7, 45615, 3232, 3448, 3473, 0, 0, 0),
('Shaman', 'Restoration80PvEP2BiSHeal', @RACEMASK_H, 8, 45460, 2332, 3473, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP2BiSHeal', @RACEMASK_H, 9, 46199, 3246, 3490, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP2BiSHeal', @RACEMASK_H, 10, 45614, 0, 3490, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP2BiSHeal', @RACEMASK_H, 11, 46046, 0, 3490, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP2BiSHeal', @RACEMASK_H, 12, 45535, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP2BiSHeal', @RACEMASK_H, 13, 45466, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP2BiSHeal', @RACEMASK_H, 14, 45486, 3831, 3490, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP2BiSHeal', @RACEMASK_H, 15, 46017, 3834, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP2BiSHeal', @RACEMASK_H, 16, 45470, 1128, 3473, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP2BiSHeal', @RACEMASK_H, 17, 45114, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warlock Affliction 80PvEP2BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Warlock', 'Affliction80PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_shadow_deathcoil:30|t|r Use Affliction PvE P2 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Affliction80PvE', 'Affliction80PvE', 'WotLK Phase 2', 302),
('Warlock', 'Affliction80PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_shadow_deathcoil:30|t|r Use Affliction PvE P2 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Affliction80PvE', 'Affliction80PvE', 'WotLK Phase 2', 302);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warlock', 'Affliction80PvEP2BiS', @RACEMASK_HUMAN, 0, 45497, 3820, 3621, 3866, 0, 0, 0),
('Warlock', 'Affliction80PvEP2BiS', @RACEMASK_HUMAN, 1, 45133, 0, 3490, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP2BiS', @RACEMASK_HUMAN, 2, 46068, 3810, 3448, 3490, 0, 0, 0),
('Warlock', 'Affliction80PvEP2BiS', @RACEMASK_HUMAN, 4, 46137, 1144, 3448, 3490, 0, 0, 0),
('Warlock', 'Affliction80PvEP2BiS', @RACEMASK_HUMAN, 5, 45619, 3601, 3490, 3490, 0, 0, 3448),
('Warlock', 'Affliction80PvEP2BiS', @RACEMASK_HUMAN, 6, 46139, 3719, 3448, 3448, 0, 0, 0),
('Warlock', 'Affliction80PvEP2BiS', @RACEMASK_HUMAN, 7, 45135, 3606, 3448, 3490, 0, 0, 0),
('Warlock', 'Affliction80PvEP2BiS', @RACEMASK_HUMAN, 8, 45446, 2332, 3448, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP2BiS', @RACEMASK_HUMAN, 9, 45665, 3604, 3448, 3448, 0, 0, 0),
('Warlock', 'Affliction80PvEP2BiS', @RACEMASK_HUMAN, 10, 45495, 0, 3472, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP2BiS', @RACEMASK_HUMAN, 11, 46046, 0, 3448, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP2BiS', @RACEMASK_HUMAN, 12, 45518, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP2BiS', @RACEMASK_HUMAN, 13, 45466, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP2BiS', @RACEMASK_HUMAN, 14, 45618, 3722, 3448, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP2BiS', @RACEMASK_HUMAN, 15, 45620, 3834, 3472, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP2BiS', @RACEMASK_HUMAN, 16, 45617, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP2BiS', @RACEMASK_HUMAN, 17, 45294, 0, 3490, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP2BiS', @RACEMASK_A, 0, 45497, 3820, 3621, 3866, 0, 0, 0),
('Warlock', 'Affliction80PvEP2BiS', @RACEMASK_A, 1, 45133, 0, 3490, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP2BiS', @RACEMASK_A, 2, 46068, 3810, 3448, 3490, 0, 0, 0),
('Warlock', 'Affliction80PvEP2BiS', @RACEMASK_A, 4, 46137, 1144, 3448, 3490, 0, 0, 0),
('Warlock', 'Affliction80PvEP2BiS', @RACEMASK_A, 5, 45619, 3601, 3490, 3490, 0, 0, 3448),
('Warlock', 'Affliction80PvEP2BiS', @RACEMASK_A, 6, 46139, 3719, 3448, 3448, 0, 0, 0),
('Warlock', 'Affliction80PvEP2BiS', @RACEMASK_A, 7, 45135, 3606, 3448, 3490, 0, 0, 0),
('Warlock', 'Affliction80PvEP2BiS', @RACEMASK_A, 8, 45446, 2332, 3448, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP2BiS', @RACEMASK_A, 9, 45665, 3604, 3448, 3448, 0, 0, 0),
('Warlock', 'Affliction80PvEP2BiS', @RACEMASK_A, 10, 45495, 0, 3472, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP2BiS', @RACEMASK_A, 11, 46046, 0, 3448, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP2BiS', @RACEMASK_A, 12, 45518, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP2BiS', @RACEMASK_A, 13, 45466, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP2BiS', @RACEMASK_A, 14, 45618, 3722, 3448, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP2BiS', @RACEMASK_A, 15, 45620, 3834, 3472, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP2BiS', @RACEMASK_A, 16, 45617, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP2BiS', @RACEMASK_A, 17, 45294, 0, 3490, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP2BiS', @RACEMASK_H, 0, 45497, 3820, 3621, 3866, 0, 0, 0),
('Warlock', 'Affliction80PvEP2BiS', @RACEMASK_H, 1, 45133, 0, 3488, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP2BiS', @RACEMASK_H, 2, 46068, 3810, 3448, 3488, 0, 0, 0),
('Warlock', 'Affliction80PvEP2BiS', @RACEMASK_H, 4, 46137, 1144, 3448, 3488, 0, 0, 0),
('Warlock', 'Affliction80PvEP2BiS', @RACEMASK_H, 5, 45619, 3601, 3490, 3490, 0, 0, 3448),
('Warlock', 'Affliction80PvEP2BiS', @RACEMASK_H, 6, 46139, 3719, 3448, 3448, 0, 0, 0),
('Warlock', 'Affliction80PvEP2BiS', @RACEMASK_H, 7, 45135, 3606, 3448, 3490, 0, 0, 0),
('Warlock', 'Affliction80PvEP2BiS', @RACEMASK_H, 8, 45446, 2332, 3448, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP2BiS', @RACEMASK_H, 9, 45665, 3604, 3448, 3448, 0, 0, 0),
('Warlock', 'Affliction80PvEP2BiS', @RACEMASK_H, 10, 45495, 0, 3472, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP2BiS', @RACEMASK_H, 11, 46046, 0, 3448, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP2BiS', @RACEMASK_H, 12, 45518, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP2BiS', @RACEMASK_H, 13, 45466, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP2BiS', @RACEMASK_H, 14, 45618, 3722, 3448, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP2BiS', @RACEMASK_H, 15, 45620, 3834, 3472, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP2BiS', @RACEMASK_H, 16, 45617, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP2BiS', @RACEMASK_H, 17, 45294, 0, 3490, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warlock Demonology 80PvEP2BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Warlock', 'Demonology80PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_shadow_metamorphosis:30|t|r Use Demonology PvE P2 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Demonology80PvE', 'Demonology80PvE', 'WotLK Phase 2', 302),
('Warlock', 'Demonology80PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_shadow_metamorphosis:30|t|r Use Demonology PvE P2 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Demonology80PvE', 'Demonology80PvE', 'WotLK Phase 2', 302);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warlock', 'Demonology80PvEP2BiS', @RACEMASK_HUMAN, 0, 45497, 3820, 3621, 3866, 0, 0, 0),
('Warlock', 'Demonology80PvEP2BiS', @RACEMASK_HUMAN, 1, 45133, 0, 3490, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP2BiS', @RACEMASK_HUMAN, 2, 46136, 3810, 3448, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP2BiS', @RACEMASK_HUMAN, 4, 46137, 3832, 3448, 3490, 0, 0, 0),
('Warlock', 'Demonology80PvEP2BiS', @RACEMASK_HUMAN, 5, 45619, 3601, 3490, 3490, 0, 0, 3448),
('Warlock', 'Demonology80PvEP2BiS', @RACEMASK_HUMAN, 6, 45488, 3719, 3448, 3490, 3472, 0, 0),
('Warlock', 'Demonology80PvEP2BiS', @RACEMASK_HUMAN, 7, 45135, 3606, 3448, 3490, 0, 0, 0),
('Warlock', 'Demonology80PvEP2BiS', @RACEMASK_HUMAN, 8, 45446, 2332, 3448, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP2BiS', @RACEMASK_HUMAN, 9, 45665, 3604, 3448, 3448, 0, 0, 0),
('Warlock', 'Demonology80PvEP2BiS', @RACEMASK_HUMAN, 10, 45495, 0, 3472, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP2BiS', @RACEMASK_HUMAN, 11, 46046, 0, 3448, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP2BiS', @RACEMASK_HUMAN, 12, 45518, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP2BiS', @RACEMASK_HUMAN, 13, 45466, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP2BiS', @RACEMASK_HUMAN, 14, 45618, 3722, 3472, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP2BiS', @RACEMASK_HUMAN, 15, 45620, 3834, 3472, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP2BiS', @RACEMASK_HUMAN, 16, 45617, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP2BiS', @RACEMASK_HUMAN, 17, 45294, 0, 3448, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP2BiS', @RACEMASK_A, 0, 45497, 3820, 3621, 3866, 0, 0, 0),
('Warlock', 'Demonology80PvEP2BiS', @RACEMASK_A, 1, 45133, 0, 3490, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP2BiS', @RACEMASK_A, 2, 46136, 3810, 3448, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP2BiS', @RACEMASK_A, 4, 46137, 3832, 3448, 3490, 0, 0, 0),
('Warlock', 'Demonology80PvEP2BiS', @RACEMASK_A, 5, 45619, 3601, 3490, 3490, 0, 0, 3448),
('Warlock', 'Demonology80PvEP2BiS', @RACEMASK_A, 6, 45488, 3719, 3448, 3490, 3472, 0, 0),
('Warlock', 'Demonology80PvEP2BiS', @RACEMASK_A, 7, 45135, 3606, 3448, 3490, 0, 0, 0),
('Warlock', 'Demonology80PvEP2BiS', @RACEMASK_A, 8, 45446, 2332, 3448, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP2BiS', @RACEMASK_A, 9, 45665, 3604, 3448, 3448, 0, 0, 0),
('Warlock', 'Demonology80PvEP2BiS', @RACEMASK_A, 10, 45495, 0, 3472, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP2BiS', @RACEMASK_A, 11, 46046, 0, 3448, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP2BiS', @RACEMASK_A, 12, 45518, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP2BiS', @RACEMASK_A, 13, 45466, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP2BiS', @RACEMASK_A, 14, 45618, 3722, 3472, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP2BiS', @RACEMASK_A, 15, 45620, 3834, 3472, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP2BiS', @RACEMASK_A, 16, 45617, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP2BiS', @RACEMASK_A, 17, 45294, 0, 3448, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP2BiS', @RACEMASK_H, 0, 45497, 3820, 3621, 3866, 0, 0, 0),
('Warlock', 'Demonology80PvEP2BiS', @RACEMASK_H, 1, 45133, 0, 3488, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP2BiS', @RACEMASK_H, 2, 46136, 3810, 3488, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP2BiS', @RACEMASK_H, 4, 46137, 1144, 3448, 3490, 0, 0, 0),
('Warlock', 'Demonology80PvEP2BiS', @RACEMASK_H, 5, 45619, 3601, 3448, 3448, 0, 0, 3448),
('Warlock', 'Demonology80PvEP2BiS', @RACEMASK_H, 6, 45488, 3719, 3448, 3490, 3472, 0, 0),
('Warlock', 'Demonology80PvEP2BiS', @RACEMASK_H, 7, 45135, 3606, 3448, 3490, 0, 0, 0),
('Warlock', 'Demonology80PvEP2BiS', @RACEMASK_H, 8, 45446, 2332, 3448, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP2BiS', @RACEMASK_H, 9, 45665, 3604, 3448, 3448, 0, 0, 0),
('Warlock', 'Demonology80PvEP2BiS', @RACEMASK_H, 10, 45495, 0, 3472, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP2BiS', @RACEMASK_H, 11, 46046, 0, 3448, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP2BiS', @RACEMASK_H, 12, 45518, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP2BiS', @RACEMASK_H, 13, 45466, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP2BiS', @RACEMASK_H, 14, 45618, 3722, 3448, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP2BiS', @RACEMASK_H, 15, 45620, 3834, 3472, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP2BiS', @RACEMASK_H, 16, 45617, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP2BiS', @RACEMASK_H, 17, 45294, 0, 3490, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warlock Destruction 80PvEP2BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Warlock', 'Destruction80PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_shadow_rainoffire:30|t|r Use Destruction PvE P2 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Destruction80PvE', 'Destruction80PvE', 'WotLK Phase 2', 302),
('Warlock', 'Destruction80PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_shadow_rainoffire:30|t|r Use Destruction PvE P2 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Destruction80PvE', 'Destruction80PvE', 'WotLK Phase 2', 302);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warlock', 'Destruction80PvEP2BiS', @RACEMASK_HUMAN, 0, 45497, 3820, 3621, 3866, 0, 0, 0),
('Warlock', 'Destruction80PvEP2BiS', @RACEMASK_HUMAN, 1, 45243, 0, 3448, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP2BiS', @RACEMASK_HUMAN, 2, 46136, 3810, 3487, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP2BiS', @RACEMASK_HUMAN, 4, 46137, 3832, 3448, 3487, 0, 0, 0),
('Warlock', 'Destruction80PvEP2BiS', @RACEMASK_HUMAN, 5, 45619, 3601, 3448, 3448, 0, 0, 3448),
('Warlock', 'Destruction80PvEP2BiS', @RACEMASK_HUMAN, 6, 45488, 3719, 3448, 3448, 3448, 0, 0),
('Warlock', 'Destruction80PvEP2BiS', @RACEMASK_HUMAN, 7, 45135, 3606, 3448, 3490, 0, 0, 0),
('Warlock', 'Destruction80PvEP2BiS', @RACEMASK_HUMAN, 8, 45446, 2332, 3448, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP2BiS', @RACEMASK_HUMAN, 9, 45665, 3604, 3448, 3448, 0, 0, 0),
('Warlock', 'Destruction80PvEP2BiS', @RACEMASK_HUMAN, 10, 45495, 0, 3472, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP2BiS', @RACEMASK_HUMAN, 11, 46046, 0, 3448, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP2BiS', @RACEMASK_HUMAN, 12, 45518, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP2BiS', @RACEMASK_HUMAN, 13, 40432, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP2BiS', @RACEMASK_HUMAN, 14, 45242, 3722, 3448, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP2BiS', @RACEMASK_HUMAN, 15, 45620, 3834, 3472, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP2BiS', @RACEMASK_HUMAN, 16, 45617, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP2BiS', @RACEMASK_HUMAN, 17, 45294, 0, 3448, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP2BiS', @RACEMASK_A, 0, 45497, 3820, 3621, 3866, 0, 0, 0),
('Warlock', 'Destruction80PvEP2BiS', @RACEMASK_A, 1, 45243, 0, 3448, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP2BiS', @RACEMASK_A, 2, 46136, 3810, 3487, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP2BiS', @RACEMASK_A, 4, 46137, 3832, 3448, 3487, 0, 0, 0),
('Warlock', 'Destruction80PvEP2BiS', @RACEMASK_A, 5, 45619, 3601, 3448, 3448, 0, 0, 3448),
('Warlock', 'Destruction80PvEP2BiS', @RACEMASK_A, 6, 45488, 3719, 3448, 3448, 3448, 0, 0),
('Warlock', 'Destruction80PvEP2BiS', @RACEMASK_A, 7, 45135, 3606, 3448, 3490, 0, 0, 0),
('Warlock', 'Destruction80PvEP2BiS', @RACEMASK_A, 8, 45446, 2332, 3448, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP2BiS', @RACEMASK_A, 9, 45665, 3604, 3448, 3448, 0, 0, 0),
('Warlock', 'Destruction80PvEP2BiS', @RACEMASK_A, 10, 45495, 0, 3472, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP2BiS', @RACEMASK_A, 11, 46046, 0, 3448, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP2BiS', @RACEMASK_A, 12, 45518, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP2BiS', @RACEMASK_A, 13, 40432, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP2BiS', @RACEMASK_A, 14, 45242, 3722, 3448, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP2BiS', @RACEMASK_A, 15, 45620, 3834, 3472, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP2BiS', @RACEMASK_A, 16, 45617, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP2BiS', @RACEMASK_A, 17, 45294, 0, 3448, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP2BiS', @RACEMASK_H, 0, 45497, 3820, 3621, 3866, 0, 0, 0),
('Warlock', 'Destruction80PvEP2BiS', @RACEMASK_H, 1, 45133, 0, 3460, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP2BiS', @RACEMASK_H, 2, 46136, 3810, 3490, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP2BiS', @RACEMASK_H, 4, 46137, 3832, 3448, 3490, 0, 0, 0),
('Warlock', 'Destruction80PvEP2BiS', @RACEMASK_H, 5, 45619, 3601, 3490, 3490, 0, 0, 3448),
('Warlock', 'Destruction80PvEP2BiS', @RACEMASK_H, 6, 45488, 3719, 3448, 3490, 3472, 0, 0),
('Warlock', 'Destruction80PvEP2BiS', @RACEMASK_H, 7, 45135, 3606, 3448, 3490, 0, 0, 0),
('Warlock', 'Destruction80PvEP2BiS', @RACEMASK_H, 8, 45446, 2332, 3448, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP2BiS', @RACEMASK_H, 9, 45665, 3604, 3448, 3448, 0, 0, 0),
('Warlock', 'Destruction80PvEP2BiS', @RACEMASK_H, 10, 45495, 0, 3472, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP2BiS', @RACEMASK_H, 11, 46046, 0, 3448, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP2BiS', @RACEMASK_H, 12, 45518, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP2BiS', @RACEMASK_H, 13, 45466, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP2BiS', @RACEMASK_H, 14, 45618, 3722, 3448, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP2BiS', @RACEMASK_H, 15, 45620, 3834, 3448, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP2BiS', @RACEMASK_H, 16, 45617, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP2BiS', @RACEMASK_H, 17, 45294, 0, 3448, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warrior Arms 80PvEP2BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Warrior', 'Arms80PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_rogue_eviscerate:30|t|r Use Arms PvE P2 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Arms80PvE', 'Arms80PvE', 'WotLK Phase 2', 302),
('Warrior', 'Arms80PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_rogue_eviscerate:30|t|r Use Arms PvE P2 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Arms80PvE', 'Arms80PvE', 'WotLK Phase 2', 302);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warrior', 'Arms80PvEP2BiS', @RACEMASK_HUMAN, 0, 46151, 3817, 3628, 3732, 0, 0, 0),
('Warrior', 'Arms80PvEP2BiS', @RACEMASK_HUMAN, 1, 45459, 0, 3861, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP2BiS', @RACEMASK_HUMAN, 2, 46037, 3808, 3477, 3446, 0, 0, 0),
('Warrior', 'Arms80PvEP2BiS', @RACEMASK_HUMAN, 4, 46146, 3832, 3732, 3750, 0, 0, 0),
('Warrior', 'Arms80PvEP2BiS', @RACEMASK_HUMAN, 5, 45241, 3601, 3732, 3446, 0, 0, 3446),
('Warrior', 'Arms80PvEP2BiS', @RACEMASK_HUMAN, 6, 45536, 3823, 3446, 3446, 3446, 0, 0),
('Warrior', 'Arms80PvEP2BiS', @RACEMASK_HUMAN, 7, 45599, 3606, 3446, 3446, 0, 0, 0),
('Warrior', 'Arms80PvEP2BiS', @RACEMASK_HUMAN, 8, 45663, 3845, 3477, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP2BiS', @RACEMASK_HUMAN, 9, 45444, 3604, 3478, 3477, 0, 0, 0),
('Warrior', 'Arms80PvEP2BiS', @RACEMASK_HUMAN, 10, 45534, 0, 3446, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP2BiS', @RACEMASK_HUMAN, 11, 45608, 0, 3446, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP2BiS', @RACEMASK_HUMAN, 12, 42987, 0, 0, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP2BiS', @RACEMASK_HUMAN, 13, 45931, 0, 0, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP2BiS', @RACEMASK_HUMAN, 14, 46032, 3605, 3446, 3478, 0, 0, 0),
('Warrior', 'Arms80PvEP2BiS', @RACEMASK_HUMAN, 15, 45516, 3789, 3446, 3446, 0, 0, 0),
('Warrior', 'Arms80PvEP2BiS', @RACEMASK_HUMAN, 17, 45296, 2724, 3446, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP2BiS', @RACEMASK_A, 0, 46151, 3817, 3628, 3732, 0, 0, 0),
('Warrior', 'Arms80PvEP2BiS', @RACEMASK_A, 1, 45459, 0, 3861, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP2BiS', @RACEMASK_A, 2, 46037, 3808, 3477, 3446, 0, 0, 0),
('Warrior', 'Arms80PvEP2BiS', @RACEMASK_A, 4, 46146, 3832, 3732, 3750, 0, 0, 0),
('Warrior', 'Arms80PvEP2BiS', @RACEMASK_A, 5, 45241, 3601, 3732, 3446, 0, 0, 3446),
('Warrior', 'Arms80PvEP2BiS', @RACEMASK_A, 6, 45536, 3823, 3446, 3446, 3446, 0, 0),
('Warrior', 'Arms80PvEP2BiS', @RACEMASK_A, 7, 45599, 3606, 3446, 3446, 0, 0, 0),
('Warrior', 'Arms80PvEP2BiS', @RACEMASK_A, 8, 45663, 3845, 3477, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP2BiS', @RACEMASK_A, 9, 45444, 3604, 3478, 3477, 0, 0, 0),
('Warrior', 'Arms80PvEP2BiS', @RACEMASK_A, 10, 45534, 0, 3446, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP2BiS', @RACEMASK_A, 11, 45608, 0, 3446, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP2BiS', @RACEMASK_A, 12, 42987, 0, 0, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP2BiS', @RACEMASK_A, 13, 45931, 0, 0, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP2BiS', @RACEMASK_A, 14, 46032, 3605, 3446, 3478, 0, 0, 0),
('Warrior', 'Arms80PvEP2BiS', @RACEMASK_A, 15, 45516, 3789, 3446, 3446, 0, 0, 0),
('Warrior', 'Arms80PvEP2BiS', @RACEMASK_A, 17, 45296, 2724, 3446, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP2BiS', @RACEMASK_H, 0, 46151, 3817, 3628, 3732, 0, 0, 0),
('Warrior', 'Arms80PvEP2BiS', @RACEMASK_H, 1, 45459, 0, 3861, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP2BiS', @RACEMASK_H, 2, 46037, 3808, 3477, 3446, 0, 0, 0),
('Warrior', 'Arms80PvEP2BiS', @RACEMASK_H, 4, 46146, 3832, 3732, 3750, 0, 0, 0),
('Warrior', 'Arms80PvEP2BiS', @RACEMASK_H, 5, 45241, 3601, 3732, 3446, 0, 0, 3446),
('Warrior', 'Arms80PvEP2BiS', @RACEMASK_H, 6, 45536, 3823, 3446, 3446, 3446, 0, 0),
('Warrior', 'Arms80PvEP2BiS', @RACEMASK_H, 7, 45599, 3606, 3446, 3446, 0, 0, 0),
('Warrior', 'Arms80PvEP2BiS', @RACEMASK_H, 8, 45663, 3845, 3477, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP2BiS', @RACEMASK_H, 9, 45444, 3604, 3478, 3477, 0, 0, 0),
('Warrior', 'Arms80PvEP2BiS', @RACEMASK_H, 10, 45534, 0, 3446, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP2BiS', @RACEMASK_H, 11, 45608, 0, 3446, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP2BiS', @RACEMASK_H, 12, 42987, 0, 0, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP2BiS', @RACEMASK_H, 13, 45931, 0, 0, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP2BiS', @RACEMASK_H, 14, 46032, 3605, 3446, 3478, 0, 0, 0),
('Warrior', 'Arms80PvEP2BiS', @RACEMASK_H, 15, 45516, 3789, 3446, 3446, 0, 0, 0),
('Warrior', 'Arms80PvEP2BiS', @RACEMASK_H, 17, 45296, 2724, 3446, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warrior Fury 80PvEP2BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Warrior', 'Fury80PvEP2BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_warrior_innerrage:30|t|r Use Fury PvE P2 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Fury80PvE', 'Fury80PvE', 'WotLK Phase 2', 302),
('Warrior', 'Fury80PvEP2BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_warrior_innerrage:30|t|r Use Fury PvE P2 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Fury80PvE', 'Fury80PvE', 'WotLK Phase 2', 302);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warrior', 'Fury80PvEP2BiS', @RACEMASK_HUMAN, 0, 46151, 3817, 3628, 3732, 0, 0, 0),
('Warrior', 'Fury80PvEP2BiS', @RACEMASK_HUMAN, 1, 45517, 0, 3861, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP2BiS', @RACEMASK_HUMAN, 2, 46149, 3808, 3446, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP2BiS', @RACEMASK_HUMAN, 4, 46146, 3832, 3732, 3750, 0, 0, 0),
('Warrior', 'Fury80PvEP2BiS', @RACEMASK_HUMAN, 5, 46095, 3601, 3732, 3446, 0, 0, 3446),
('Warrior', 'Fury80PvEP2BiS', @RACEMASK_HUMAN, 6, 45536, 3823, 3446, 3446, 3446, 0, 0),
('Warrior', 'Fury80PvEP2BiS', @RACEMASK_HUMAN, 7, 45599, 3606, 3446, 3446, 0, 0, 0),
('Warrior', 'Fury80PvEP2BiS', @RACEMASK_HUMAN, 8, 45611, 3845, 3477, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP2BiS', @RACEMASK_HUMAN, 9, 46148, 3604, 3478, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP2BiS', @RACEMASK_HUMAN, 10, 46322, 0, 3446, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP2BiS', @RACEMASK_HUMAN, 11, 45608, 0, 3446, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP2BiS', @RACEMASK_HUMAN, 12, 42987, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP2BiS', @RACEMASK_HUMAN, 13, 45931, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP2BiS', @RACEMASK_HUMAN, 14, 46032, 3605, 3446, 3478, 0, 0, 0),
('Warrior', 'Fury80PvEP2BiS', @RACEMASK_HUMAN, 15, 45516, 3789, 3446, 3446, 0, 0, 0),
('Warrior', 'Fury80PvEP2BiS', @RACEMASK_HUMAN, 16, 45516, 0, 3446, 3446, 0, 0, 0),
('Warrior', 'Fury80PvEP2BiS', @RACEMASK_HUMAN, 17, 45296, 2724, 3446, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP2BiS', @RACEMASK_A, 0, 46151, 3817, 3628, 3732, 0, 0, 0),
('Warrior', 'Fury80PvEP2BiS', @RACEMASK_A, 1, 45517, 0, 3861, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP2BiS', @RACEMASK_A, 2, 46149, 3808, 3446, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP2BiS', @RACEMASK_A, 4, 46146, 3832, 3732, 3750, 0, 0, 0),
('Warrior', 'Fury80PvEP2BiS', @RACEMASK_A, 5, 46095, 3601, 3732, 3446, 0, 0, 3446),
('Warrior', 'Fury80PvEP2BiS', @RACEMASK_A, 6, 45536, 3823, 3446, 3446, 3446, 0, 0),
('Warrior', 'Fury80PvEP2BiS', @RACEMASK_A, 7, 45599, 3606, 3446, 3446, 0, 0, 0),
('Warrior', 'Fury80PvEP2BiS', @RACEMASK_A, 8, 45611, 3845, 3477, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP2BiS', @RACEMASK_A, 9, 46148, 3604, 3478, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP2BiS', @RACEMASK_A, 10, 46322, 0, 3446, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP2BiS', @RACEMASK_A, 11, 45608, 0, 3446, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP2BiS', @RACEMASK_A, 12, 42987, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP2BiS', @RACEMASK_A, 13, 45931, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP2BiS', @RACEMASK_A, 14, 46032, 3605, 3446, 3478, 0, 0, 0),
('Warrior', 'Fury80PvEP2BiS', @RACEMASK_A, 15, 45516, 3789, 3446, 3446, 0, 0, 0),
('Warrior', 'Fury80PvEP2BiS', @RACEMASK_A, 16, 45516, 0, 3446, 3446, 0, 0, 0),
('Warrior', 'Fury80PvEP2BiS', @RACEMASK_A, 17, 45296, 2724, 3446, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP2BiS', @RACEMASK_H, 0, 46151, 3817, 3628, 3732, 0, 0, 0),
('Warrior', 'Fury80PvEP2BiS', @RACEMASK_H, 1, 45517, 0, 3861, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP2BiS', @RACEMASK_H, 2, 46149, 3808, 3446, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP2BiS', @RACEMASK_H, 4, 46146, 3832, 3732, 3750, 0, 0, 0),
('Warrior', 'Fury80PvEP2BiS', @RACEMASK_H, 5, 46095, 3601, 3732, 3446, 0, 0, 3446),
('Warrior', 'Fury80PvEP2BiS', @RACEMASK_H, 6, 45536, 3823, 3446, 3446, 3446, 0, 0),
('Warrior', 'Fury80PvEP2BiS', @RACEMASK_H, 7, 45599, 3606, 3446, 3446, 0, 0, 0),
('Warrior', 'Fury80PvEP2BiS', @RACEMASK_H, 8, 45611, 3845, 3477, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP2BiS', @RACEMASK_H, 9, 46148, 3604, 3478, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP2BiS', @RACEMASK_H, 10, 46322, 0, 3446, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP2BiS', @RACEMASK_H, 11, 45608, 0, 3446, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP2BiS', @RACEMASK_H, 12, 42987, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP2BiS', @RACEMASK_H, 13, 45931, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP2BiS', @RACEMASK_H, 14, 46032, 3605, 3446, 3478, 0, 0, 0),
('Warrior', 'Fury80PvEP2BiS', @RACEMASK_H, 15, 45516, 3789, 3446, 3446, 0, 0, 0),
('Warrior', 'Fury80PvEP2BiS', @RACEMASK_H, 16, 45516, 0, 3446, 3446, 0, 0, 0),
('Warrior', 'Fury80PvEP2BiS', @RACEMASK_H, 17, 45296, 2724, 3446, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warrior Protection 80PvEP2BiSTank (tank) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Warrior', 'Protection80PvEP2BiSTank', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_warrior_defensivestance:30|t|r Use Protection PvE P2 BiS Tank', 7, @MINLEVEL, @MAXLEVEL, 'Protection80PvE', 'Protection80PvE', 'WotLK Phase 2', 302),
('Warrior', 'Protection80PvEP2BiSTank', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_warrior_defensivestance:30|t|r Use Protection PvE P2 BiS Tank (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Protection80PvE', 'Protection80PvE', 'WotLK Phase 2', 302);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warrior', 'Protection80PvEP2BiSTank', @RACEMASK_HUMAN, 0, 46166, 3818, 3637, 3502, 0, 0, 0),
('Warrior', 'Protection80PvEP2BiSTank', @RACEMASK_HUMAN, 1, 45485, 0, 3502, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP2BiSTank', @RACEMASK_HUMAN, 2, 46167, 3852, 3454, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP2BiSTank', @RACEMASK_HUMAN, 4, 46162, 3832, 3454, 3502, 0, 0, 0),
('Warrior', 'Protection80PvEP2BiSTank', @RACEMASK_HUMAN, 5, 45139, 3601, 3863, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP2BiSTank', @RACEMASK_HUMAN, 6, 45594, 3822, 3468, 3454, 3502, 0, 0),
('Warrior', 'Protection80PvEP2BiSTank', @RACEMASK_HUMAN, 7, 45988, 3232, 3293, 3293, 0, 0, 0),
('Warrior', 'Protection80PvEP2BiSTank', @RACEMASK_HUMAN, 8, 45111, 3850, 0, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP2BiSTank', @RACEMASK_HUMAN, 9, 45487, 3860, 3468, 3502, 0, 0, 0),
('Warrior', 'Protection80PvEP2BiSTank', @RACEMASK_HUMAN, 10, 45471, 0, 3502, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP2BiSTank', @RACEMASK_HUMAN, 11, 45247, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP2BiSTank', @RACEMASK_HUMAN, 12, 45158, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP2BiSTank', @RACEMASK_HUMAN, 13, 46021, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP2BiSTank', @RACEMASK_HUMAN, 14, 45496, 3605, 3468, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP2BiSTank', @RACEMASK_HUMAN, 15, 45442, 2673, 3468, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP2BiSTank', @RACEMASK_HUMAN, 16, 45587, 3849, 3293, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP2BiSTank', @RACEMASK_HUMAN, 17, 45137, 3608, 0, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP2BiSTank', @RACEMASK_A, 0, 46166, 3818, 3637, 3502, 0, 0, 0),
('Warrior', 'Protection80PvEP2BiSTank', @RACEMASK_A, 1, 45485, 0, 3502, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP2BiSTank', @RACEMASK_A, 2, 46167, 3852, 3454, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP2BiSTank', @RACEMASK_A, 4, 46162, 3832, 3454, 3502, 0, 0, 0),
('Warrior', 'Protection80PvEP2BiSTank', @RACEMASK_A, 5, 45139, 3601, 3863, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP2BiSTank', @RACEMASK_A, 6, 45594, 3822, 3468, 3454, 3502, 0, 0),
('Warrior', 'Protection80PvEP2BiSTank', @RACEMASK_A, 7, 45988, 3232, 3293, 3293, 0, 0, 0),
('Warrior', 'Protection80PvEP2BiSTank', @RACEMASK_A, 8, 45111, 3850, 0, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP2BiSTank', @RACEMASK_A, 9, 45487, 3860, 3468, 3502, 0, 0, 0),
('Warrior', 'Protection80PvEP2BiSTank', @RACEMASK_A, 10, 45471, 0, 3502, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP2BiSTank', @RACEMASK_A, 11, 45247, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP2BiSTank', @RACEMASK_A, 12, 45158, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP2BiSTank', @RACEMASK_A, 13, 46021, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP2BiSTank', @RACEMASK_A, 14, 45496, 3605, 3468, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP2BiSTank', @RACEMASK_A, 15, 45442, 2673, 3468, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP2BiSTank', @RACEMASK_A, 16, 45587, 3849, 3293, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP2BiSTank', @RACEMASK_A, 17, 45137, 3608, 0, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP2BiSTank', @RACEMASK_H, 0, 46166, 3818, 3637, 3502, 0, 0, 0),
('Warrior', 'Protection80PvEP2BiSTank', @RACEMASK_H, 1, 45485, 0, 3502, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP2BiSTank', @RACEMASK_H, 2, 46167, 3852, 3454, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP2BiSTank', @RACEMASK_H, 4, 46162, 3832, 3454, 3502, 0, 0, 0),
('Warrior', 'Protection80PvEP2BiSTank', @RACEMASK_H, 5, 45139, 3601, 3863, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP2BiSTank', @RACEMASK_H, 6, 45594, 3822, 3468, 3454, 3502, 0, 0),
('Warrior', 'Protection80PvEP2BiSTank', @RACEMASK_H, 7, 45988, 3232, 3293, 3293, 0, 0, 0),
('Warrior', 'Protection80PvEP2BiSTank', @RACEMASK_H, 8, 45111, 3850, 0, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP2BiSTank', @RACEMASK_H, 9, 45487, 3860, 3468, 3502, 0, 0, 0),
('Warrior', 'Protection80PvEP2BiSTank', @RACEMASK_H, 10, 45471, 0, 3502, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP2BiSTank', @RACEMASK_H, 11, 45247, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP2BiSTank', @RACEMASK_H, 12, 45158, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP2BiSTank', @RACEMASK_H, 13, 46021, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP2BiSTank', @RACEMASK_H, 14, 45496, 3605, 3468, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP2BiSTank', @RACEMASK_H, 15, 45442, 2673, 3468, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP2BiSTank', @RACEMASK_H, 16, 45587, 3849, 3293, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP2BiSTank', @RACEMASK_H, 17, 45137, 3608, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

