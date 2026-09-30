-- Batch-generated BiS gear templates
-- Expansion: wotlk  Mode: pve  Phase: 1
-- 31 specs

-- Idempotency: remove this file's templates first so re-application cannot duplicate rows
-- (the index table has no unique key; without this a re-applied file would append copies).
DELETE FROM `mod_npc_talent_template_index` WHERE `playerSpec` IN ('Blood80PvEP1BiSTank', 'Frost80PvEP1BiS', 'Unholy80PvEP1BiS', 'Balance80PvEP1BiS', 'Feral80PvEP1BiS', 'Feral80PvEP1BiSTank', 'Restoration80PvEP1BiSHeal', 'Beastmastery80PvEP1BiS', 'Marksmanship80PvEP1BiS', 'Survival80PvEP1BiS', 'Arcane80PvEP1BiS', 'Fire80PvEP1BiS', 'Holy80PvEP1BiSHeal', 'Protection80PvEP1BiSTank', 'Retribution80PvEP1BiS', 'Discipline80PvEP1BiSHeal', 'Shadow80PvEP1BiS', 'Assassination80PvEP1BiS', 'Combat80PvEP1BiS', 'Subtlety80PvEP1BiS', 'Elemental80PvEP1BiS', 'Enhancement80PvEP1BiS', 'Affliction80PvEP1BiS', 'Demonology80PvEP1BiS', 'Destruction80PvEP1BiS', 'Arms80PvEP1BiS', 'Fury80PvEP1BiS');
DELETE FROM `mod_npc_talent_template_gear` WHERE `playerSpec` IN ('Blood80PvEP1BiSTank', 'Frost80PvEP1BiS', 'Unholy80PvEP1BiS', 'Balance80PvEP1BiS', 'Feral80PvEP1BiS', 'Feral80PvEP1BiSTank', 'Restoration80PvEP1BiSHeal', 'Beastmastery80PvEP1BiS', 'Marksmanship80PvEP1BiS', 'Survival80PvEP1BiS', 'Arcane80PvEP1BiS', 'Fire80PvEP1BiS', 'Holy80PvEP1BiSHeal', 'Protection80PvEP1BiSTank', 'Retribution80PvEP1BiS', 'Discipline80PvEP1BiSHeal', 'Shadow80PvEP1BiS', 'Assassination80PvEP1BiS', 'Combat80PvEP1BiS', 'Subtlety80PvEP1BiS', 'Elemental80PvEP1BiS', 'Enhancement80PvEP1BiS', 'Affliction80PvEP1BiS', 'Demonology80PvEP1BiS', 'Destruction80PvEP1BiS', 'Arms80PvEP1BiS', 'Fury80PvEP1BiS');

SET @MINLEVEL = 80;
SET @MAXLEVEL = 80;
SET @RACEMASK_HUMAN = 1;
SET @RACEMASK_A = 1100; -- Alliance without Human
SET @RACEMASK_H = 690;  -- Horde
-- ===== Death Knight Blood 80PvEP1BiSTank (tank) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Death Knight', 'Blood80PvEP1BiSTank', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_deathknight_bloodpresence:30|t|r Use Blood PvE P1 BiS Tank', 7, @MINLEVEL, @MAXLEVEL, 'Blood80PvE', 'Blood80PvE', 'WotLK Phase 1', 301),
('Death Knight', 'Blood80PvEP1BiSTank', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_deathknight_bloodpresence:30|t|r Use Blood PvE P1 BiS Tank (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Blood80PvE', 'Blood80PvE', 'WotLK Phase 1', 301);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Death Knight', 'Blood80PvEP1BiSTank', @RACEMASK_HUMAN, 0, 40565, 3878, 3637, 3454, 0, 0, 0),
('Death Knight', 'Blood80PvEP1BiSTank', @RACEMASK_HUMAN, 1, 40387, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP1BiSTank', @RACEMASK_HUMAN, 2, 40568, 3852, 3464, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP1BiSTank', @RACEMASK_HUMAN, 4, 40559, 3297, 3454, 3454, 0, 0, 0),
('Death Knight', 'Blood80PvEP1BiSTank', @RACEMASK_HUMAN, 5, 39759, 3601, 3454, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP1BiSTank', @RACEMASK_HUMAN, 6, 40589, 3822, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP1BiSTank', @RACEMASK_HUMAN, 7, 40297, 3232, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP1BiSTank', @RACEMASK_HUMAN, 8, 40306, 3850, 3454, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP1BiSTank', @RACEMASK_HUMAN, 9, 40563, 3860, 3454, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP1BiSTank', @RACEMASK_HUMAN, 10, 40107, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP1BiSTank', @RACEMASK_HUMAN, 11, 40718, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP1BiSTank', @RACEMASK_HUMAN, 12, 37220, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP1BiSTank', @RACEMASK_HUMAN, 13, 44063, 0, 3454, 3454, 0, 0, 0),
('Death Knight', 'Blood80PvEP1BiSTank', @RACEMASK_HUMAN, 14, 40252, 3294, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP1BiSTank', @RACEMASK_HUMAN, 15, 40402, 3883, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP1BiSTank', @RACEMASK_HUMAN, 16, 40402, 3883, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP1BiSTank', @RACEMASK_HUMAN, 17, 40822, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP1BiSTank', @RACEMASK_A, 0, 40565, 3878, 3637, 3454, 0, 0, 0),
('Death Knight', 'Blood80PvEP1BiSTank', @RACEMASK_A, 1, 40387, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP1BiSTank', @RACEMASK_A, 2, 40568, 3852, 3464, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP1BiSTank', @RACEMASK_A, 4, 40559, 3297, 3454, 3454, 0, 0, 0),
('Death Knight', 'Blood80PvEP1BiSTank', @RACEMASK_A, 5, 39759, 3601, 3454, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP1BiSTank', @RACEMASK_A, 6, 40589, 3822, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP1BiSTank', @RACEMASK_A, 7, 40297, 3232, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP1BiSTank', @RACEMASK_A, 8, 40306, 3850, 3454, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP1BiSTank', @RACEMASK_A, 9, 40563, 3860, 3454, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP1BiSTank', @RACEMASK_A, 10, 40107, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP1BiSTank', @RACEMASK_A, 11, 40718, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP1BiSTank', @RACEMASK_A, 12, 37220, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP1BiSTank', @RACEMASK_A, 13, 44063, 0, 3454, 3454, 0, 0, 0),
('Death Knight', 'Blood80PvEP1BiSTank', @RACEMASK_A, 14, 40252, 3294, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP1BiSTank', @RACEMASK_A, 15, 40402, 3883, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP1BiSTank', @RACEMASK_A, 16, 40402, 3883, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP1BiSTank', @RACEMASK_A, 17, 40822, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP1BiSTank', @RACEMASK_H, 0, 40565, 3878, 3637, 3454, 0, 0, 0),
('Death Knight', 'Blood80PvEP1BiSTank', @RACEMASK_H, 1, 40387, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP1BiSTank', @RACEMASK_H, 2, 40568, 3852, 3464, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP1BiSTank', @RACEMASK_H, 4, 40559, 3297, 3454, 3454, 0, 0, 0),
('Death Knight', 'Blood80PvEP1BiSTank', @RACEMASK_H, 5, 39759, 3601, 3454, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP1BiSTank', @RACEMASK_H, 6, 40589, 3822, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP1BiSTank', @RACEMASK_H, 7, 40297, 3232, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP1BiSTank', @RACEMASK_H, 8, 40306, 3850, 3454, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP1BiSTank', @RACEMASK_H, 9, 40563, 3860, 3454, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP1BiSTank', @RACEMASK_H, 10, 40107, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP1BiSTank', @RACEMASK_H, 11, 40718, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP1BiSTank', @RACEMASK_H, 12, 37220, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP1BiSTank', @RACEMASK_H, 13, 44063, 0, 3454, 3454, 0, 0, 0),
('Death Knight', 'Blood80PvEP1BiSTank', @RACEMASK_H, 14, 40252, 3294, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP1BiSTank', @RACEMASK_H, 15, 40402, 3883, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP1BiSTank', @RACEMASK_H, 16, 40402, 3883, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP1BiSTank', @RACEMASK_H, 17, 40822, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Death Knight Frost 80PvEP1BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Death Knight', 'Frost80PvEP1BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_deathknight_frostpresence:30|t|r Use Frost PvE P1 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Frost80PvE', 'Frost80PvE', 'WotLK Phase 1', 301),
('Death Knight', 'Frost80PvEP1BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_deathknight_frostpresence:30|t|r Use Frost PvE P1 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Frost80PvE', 'Frost80PvE', 'WotLK Phase 1', 301);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Death Knight', 'Frost80PvEP1BiS', @RACEMASK_HUMAN, 0, 44006, 3817, 3628, 3750, 0, 0, 0),
('Death Knight', 'Frost80PvEP1BiS', @RACEMASK_HUMAN, 1, 44664, 0, 3446, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP1BiS', @RACEMASK_HUMAN, 2, 40557, 3808, 3446, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP1BiS', @RACEMASK_HUMAN, 4, 40550, 3832, 3446, 3446, 0, 0, 0),
('Death Knight', 'Frost80PvEP1BiS', @RACEMASK_HUMAN, 5, 40278, 3601, 3446, 3446, 0, 0, 0),
('Death Knight', 'Frost80PvEP1BiS', @RACEMASK_HUMAN, 6, 40556, 3823, 3446, 3446, 0, 0, 0),
('Death Knight', 'Frost80PvEP1BiS', @RACEMASK_HUMAN, 7, 40591, 3606, 0, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP1BiS', @RACEMASK_HUMAN, 8, 40330, 3845, 3446, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP1BiS', @RACEMASK_HUMAN, 9, 40552, 3604, 3446, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP1BiS', @RACEMASK_HUMAN, 10, 40075, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP1BiS', @RACEMASK_HUMAN, 11, 43993, 0, 3446, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP1BiS', @RACEMASK_HUMAN, 12, 42987, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP1BiS', @RACEMASK_HUMAN, 13, 40256, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP1BiS', @RACEMASK_HUMAN, 14, 40403, 3831, 0, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP1BiS', @RACEMASK_HUMAN, 15, 40189, 3370, 0, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP1BiS', @RACEMASK_HUMAN, 16, 40189, 3368, 0, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP1BiS', @RACEMASK_HUMAN, 17, 40207, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP1BiS', @RACEMASK_A, 0, 44006, 3817, 3628, 3750, 0, 0, 0),
('Death Knight', 'Frost80PvEP1BiS', @RACEMASK_A, 1, 44664, 0, 3446, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP1BiS', @RACEMASK_A, 2, 40557, 3808, 3446, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP1BiS', @RACEMASK_A, 4, 40550, 3832, 3446, 3446, 0, 0, 0),
('Death Knight', 'Frost80PvEP1BiS', @RACEMASK_A, 5, 40278, 3601, 3446, 3446, 0, 0, 0),
('Death Knight', 'Frost80PvEP1BiS', @RACEMASK_A, 6, 40556, 3823, 3446, 3446, 0, 0, 0),
('Death Knight', 'Frost80PvEP1BiS', @RACEMASK_A, 7, 40591, 3606, 0, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP1BiS', @RACEMASK_A, 8, 40330, 3845, 3446, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP1BiS', @RACEMASK_A, 9, 40552, 3604, 3446, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP1BiS', @RACEMASK_A, 10, 40075, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP1BiS', @RACEMASK_A, 11, 43993, 0, 3446, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP1BiS', @RACEMASK_A, 12, 42987, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP1BiS', @RACEMASK_A, 13, 40256, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP1BiS', @RACEMASK_A, 14, 40403, 3831, 0, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP1BiS', @RACEMASK_A, 15, 40189, 3370, 0, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP1BiS', @RACEMASK_A, 16, 40189, 3368, 0, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP1BiS', @RACEMASK_A, 17, 40207, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP1BiS', @RACEMASK_H, 0, 44006, 3817, 3628, 3750, 0, 0, 0),
('Death Knight', 'Frost80PvEP1BiS', @RACEMASK_H, 1, 44664, 0, 3446, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP1BiS', @RACEMASK_H, 2, 40557, 3808, 3446, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP1BiS', @RACEMASK_H, 4, 40550, 3832, 3446, 3446, 0, 0, 0),
('Death Knight', 'Frost80PvEP1BiS', @RACEMASK_H, 5, 40278, 3601, 3446, 3446, 0, 0, 0),
('Death Knight', 'Frost80PvEP1BiS', @RACEMASK_H, 6, 40556, 3823, 3446, 3446, 0, 0, 0),
('Death Knight', 'Frost80PvEP1BiS', @RACEMASK_H, 7, 40591, 3606, 0, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP1BiS', @RACEMASK_H, 8, 40330, 3845, 3446, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP1BiS', @RACEMASK_H, 9, 40552, 3604, 3446, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP1BiS', @RACEMASK_H, 10, 40075, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP1BiS', @RACEMASK_H, 11, 43993, 0, 3446, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP1BiS', @RACEMASK_H, 12, 42987, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP1BiS', @RACEMASK_H, 13, 40256, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP1BiS', @RACEMASK_H, 14, 40403, 3831, 0, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP1BiS', @RACEMASK_H, 15, 40189, 3370, 0, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP1BiS', @RACEMASK_H, 16, 40189, 3368, 0, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP1BiS', @RACEMASK_H, 17, 40207, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Death Knight Unholy 80PvEP1BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Death Knight', 'Unholy80PvEP1BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_deathknight_unholypresence:30|t|r Use Unholy PvE P1 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Unholy80PvE', 'Unholy80PvE', 'WotLK Phase 1', 301),
('Death Knight', 'Unholy80PvEP1BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_deathknight_unholypresence:30|t|r Use Unholy PvE P1 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Unholy80PvE', 'Unholy80PvE', 'WotLK Phase 1', 301);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Death Knight', 'Unholy80PvEP1BiS', @RACEMASK_HUMAN, 0, 44006, 3817, 3628, 3750, 0, 0, 0),
('Death Knight', 'Unholy80PvEP1BiS', @RACEMASK_HUMAN, 1, 44664, 0, 3446, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP1BiS', @RACEMASK_HUMAN, 2, 40557, 3808, 3446, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP1BiS', @RACEMASK_HUMAN, 4, 40550, 3832, 3446, 3446, 0, 0, 0),
('Death Knight', 'Unholy80PvEP1BiS', @RACEMASK_HUMAN, 5, 40278, 3601, 3732, 3732, 0, 0, 0),
('Death Knight', 'Unholy80PvEP1BiS', @RACEMASK_HUMAN, 6, 40294, 3823, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP1BiS', @RACEMASK_HUMAN, 7, 39706, 3606, 3446, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP1BiS', @RACEMASK_HUMAN, 8, 40330, 3845, 3446, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP1BiS', @RACEMASK_HUMAN, 9, 40347, 3604, 3732, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP1BiS', @RACEMASK_HUMAN, 10, 40075, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP1BiS', @RACEMASK_HUMAN, 11, 39401, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP1BiS', @RACEMASK_HUMAN, 12, 42987, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP1BiS', @RACEMASK_HUMAN, 13, 37390, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP1BiS', @RACEMASK_HUMAN, 14, 40403, 3831, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP1BiS', @RACEMASK_HUMAN, 15, 40402, 3368, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP1BiS', @RACEMASK_HUMAN, 16, 40491, 3368, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP1BiS', @RACEMASK_HUMAN, 17, 42620, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP1BiS', @RACEMASK_A, 0, 44006, 3817, 3628, 3750, 0, 0, 0),
('Death Knight', 'Unholy80PvEP1BiS', @RACEMASK_A, 1, 44664, 0, 3446, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP1BiS', @RACEMASK_A, 2, 40557, 3808, 3446, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP1BiS', @RACEMASK_A, 4, 40550, 3832, 3446, 3446, 0, 0, 0),
('Death Knight', 'Unholy80PvEP1BiS', @RACEMASK_A, 5, 40278, 3601, 3732, 3732, 0, 0, 0),
('Death Knight', 'Unholy80PvEP1BiS', @RACEMASK_A, 6, 40294, 3823, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP1BiS', @RACEMASK_A, 7, 39706, 3606, 3446, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP1BiS', @RACEMASK_A, 8, 40330, 3845, 3446, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP1BiS', @RACEMASK_A, 9, 40347, 3604, 3732, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP1BiS', @RACEMASK_A, 10, 40075, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP1BiS', @RACEMASK_A, 11, 39401, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP1BiS', @RACEMASK_A, 12, 42987, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP1BiS', @RACEMASK_A, 13, 37390, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP1BiS', @RACEMASK_A, 14, 40403, 3831, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP1BiS', @RACEMASK_A, 15, 40402, 3368, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP1BiS', @RACEMASK_A, 16, 40491, 3368, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP1BiS', @RACEMASK_A, 17, 42620, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP1BiS', @RACEMASK_H, 0, 44006, 3817, 3628, 3750, 0, 0, 0),
('Death Knight', 'Unholy80PvEP1BiS', @RACEMASK_H, 1, 44664, 0, 3446, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP1BiS', @RACEMASK_H, 2, 40557, 3808, 3446, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP1BiS', @RACEMASK_H, 4, 40550, 3832, 3446, 3446, 0, 0, 0),
('Death Knight', 'Unholy80PvEP1BiS', @RACEMASK_H, 5, 40278, 3601, 3732, 3732, 0, 0, 0),
('Death Knight', 'Unholy80PvEP1BiS', @RACEMASK_H, 6, 40294, 3823, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP1BiS', @RACEMASK_H, 7, 39706, 3606, 3446, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP1BiS', @RACEMASK_H, 8, 40330, 3845, 3446, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP1BiS', @RACEMASK_H, 9, 40347, 3604, 3732, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP1BiS', @RACEMASK_H, 10, 40075, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP1BiS', @RACEMASK_H, 11, 39401, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP1BiS', @RACEMASK_H, 12, 42987, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP1BiS', @RACEMASK_H, 13, 37390, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP1BiS', @RACEMASK_H, 14, 40403, 3831, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP1BiS', @RACEMASK_H, 15, 40402, 3368, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP1BiS', @RACEMASK_H, 16, 40491, 3368, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP1BiS', @RACEMASK_H, 17, 42620, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Druid Balance 80PvEP1BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Druid', 'Balance80PvEP1BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_starfall:30|t|r Use Balance PvE P1 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Balance80PvE', 'Balance80PvE', 'WotLK Phase 1', 301),
('Druid', 'Balance80PvEP1BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_starfall:30|t|r Use Balance PvE P1 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Balance80PvE', 'Balance80PvE', 'WotLK Phase 1', 301);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Druid', 'Balance80PvEP1BiS', @RACEMASK_HUMAN, 0, 40467, 3820, 3621, 3448, 0, 0, 0),
('Druid', 'Balance80PvEP1BiS', @RACEMASK_HUMAN, 1, 44661, 0, 3472, 0, 0, 0, 0),
('Druid', 'Balance80PvEP1BiS', @RACEMASK_HUMAN, 2, 40470, 3810, 3448, 0, 0, 0, 0),
('Druid', 'Balance80PvEP1BiS', @RACEMASK_HUMAN, 4, 40469, 3832, 3448, 3448, 0, 0, 0),
('Druid', 'Balance80PvEP1BiS', @RACEMASK_HUMAN, 5, 40561, 0, 3448, 0, 0, 0, 0),
('Druid', 'Balance80PvEP1BiS', @RACEMASK_HUMAN, 6, 40560, 3719, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP1BiS', @RACEMASK_HUMAN, 7, 40519, 3606, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP1BiS', @RACEMASK_HUMAN, 8, 44008, 2332, 3448, 0, 0, 0, 0),
('Druid', 'Balance80PvEP1BiS', @RACEMASK_HUMAN, 9, 40466, 3604, 3448, 0, 0, 0, 0),
('Druid', 'Balance80PvEP1BiS', @RACEMASK_HUMAN, 10, 40399, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP1BiS', @RACEMASK_HUMAN, 11, 40080, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP1BiS', @RACEMASK_HUMAN, 12, 40255, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP1BiS', @RACEMASK_HUMAN, 13, 40682, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP1BiS', @RACEMASK_HUMAN, 14, 44005, 3859, 3472, 0, 0, 0, 0),
('Druid', 'Balance80PvEP1BiS', @RACEMASK_HUMAN, 15, 40395, 3834, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP1BiS', @RACEMASK_HUMAN, 16, 40192, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP1BiS', @RACEMASK_HUMAN, 17, 40321, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP1BiS', @RACEMASK_A, 0, 40467, 3820, 3621, 3448, 0, 0, 0),
('Druid', 'Balance80PvEP1BiS', @RACEMASK_A, 1, 44661, 0, 3472, 0, 0, 0, 0),
('Druid', 'Balance80PvEP1BiS', @RACEMASK_A, 2, 40470, 3810, 3448, 0, 0, 0, 0),
('Druid', 'Balance80PvEP1BiS', @RACEMASK_A, 4, 40469, 3832, 3448, 3448, 0, 0, 0),
('Druid', 'Balance80PvEP1BiS', @RACEMASK_A, 5, 40561, 0, 3448, 0, 0, 0, 0),
('Druid', 'Balance80PvEP1BiS', @RACEMASK_A, 6, 40560, 3719, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP1BiS', @RACEMASK_A, 7, 40519, 3606, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP1BiS', @RACEMASK_A, 8, 44008, 2332, 3448, 0, 0, 0, 0),
('Druid', 'Balance80PvEP1BiS', @RACEMASK_A, 9, 40466, 3604, 3448, 0, 0, 0, 0),
('Druid', 'Balance80PvEP1BiS', @RACEMASK_A, 10, 40399, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP1BiS', @RACEMASK_A, 11, 40080, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP1BiS', @RACEMASK_A, 12, 40255, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP1BiS', @RACEMASK_A, 13, 40682, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP1BiS', @RACEMASK_A, 14, 44005, 3859, 3472, 0, 0, 0, 0),
('Druid', 'Balance80PvEP1BiS', @RACEMASK_A, 15, 40395, 3834, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP1BiS', @RACEMASK_A, 16, 40192, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP1BiS', @RACEMASK_A, 17, 40321, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP1BiS', @RACEMASK_H, 0, 40467, 3820, 3621, 3448, 0, 0, 0),
('Druid', 'Balance80PvEP1BiS', @RACEMASK_H, 1, 44661, 0, 3472, 0, 0, 0, 0),
('Druid', 'Balance80PvEP1BiS', @RACEMASK_H, 2, 40470, 3810, 3448, 0, 0, 0, 0),
('Druid', 'Balance80PvEP1BiS', @RACEMASK_H, 4, 40469, 3832, 3448, 3448, 0, 0, 0),
('Druid', 'Balance80PvEP1BiS', @RACEMASK_H, 5, 40561, 0, 3448, 0, 0, 0, 0),
('Druid', 'Balance80PvEP1BiS', @RACEMASK_H, 6, 40560, 3719, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP1BiS', @RACEMASK_H, 7, 40519, 3606, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP1BiS', @RACEMASK_H, 8, 44008, 2332, 3448, 0, 0, 0, 0),
('Druid', 'Balance80PvEP1BiS', @RACEMASK_H, 9, 40466, 3604, 3448, 0, 0, 0, 0),
('Druid', 'Balance80PvEP1BiS', @RACEMASK_H, 10, 40399, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP1BiS', @RACEMASK_H, 11, 40080, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP1BiS', @RACEMASK_H, 12, 40255, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP1BiS', @RACEMASK_H, 13, 40682, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP1BiS', @RACEMASK_H, 14, 44005, 3859, 3472, 0, 0, 0, 0),
('Druid', 'Balance80PvEP1BiS', @RACEMASK_H, 15, 40395, 3834, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP1BiS', @RACEMASK_H, 16, 40192, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP1BiS', @RACEMASK_H, 17, 40321, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Druid Feral 80PvEP1BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Druid', 'Feral80PvEP1BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_druid_catform:30|t|r Use Feral PvE P1 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Feral80PvE', 'Feral80PvE', 'WotLK Phase 1', 301),
('Druid', 'Feral80PvEP1BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_druid_catform:30|t|r Use Feral PvE P1 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Feral80PvE', 'Feral80PvE', 'WotLK Phase 1', 301);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Druid', 'Feral80PvEP1BiS', @RACEMASK_HUMAN, 0, 40473, 3817, 3628, 3446, 0, 0, 0),
('Druid', 'Feral80PvEP1BiS', @RACEMASK_HUMAN, 1, 44664, 0, 3446, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiS', @RACEMASK_HUMAN, 2, 40494, 3808, 3446, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiS', @RACEMASK_HUMAN, 4, 40539, 3832, 3446, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiS', @RACEMASK_HUMAN, 5, 40205, 0, 3446, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiS', @RACEMASK_HUMAN, 6, 44011, 3823, 3446, 3750, 0, 0, 0),
('Druid', 'Feral80PvEP1BiS', @RACEMASK_HUMAN, 7, 40243, 3606, 3460, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiS', @RACEMASK_HUMAN, 8, 39765, 3845, 3446, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiS', @RACEMASK_HUMAN, 9, 40541, 3604, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiS', @RACEMASK_HUMAN, 10, 40474, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiS', @RACEMASK_HUMAN, 11, 40717, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiS', @RACEMASK_HUMAN, 12, 42987, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiS', @RACEMASK_HUMAN, 13, 40256, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiS', @RACEMASK_HUMAN, 14, 40403, 3605, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiS', @RACEMASK_HUMAN, 15, 40388, 3789, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiS', @RACEMASK_HUMAN, 17, 39757, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiS', @RACEMASK_A, 0, 40473, 3817, 3628, 3446, 0, 0, 0),
('Druid', 'Feral80PvEP1BiS', @RACEMASK_A, 1, 44664, 0, 3446, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiS', @RACEMASK_A, 2, 40494, 3808, 3446, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiS', @RACEMASK_A, 4, 40539, 3832, 3446, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiS', @RACEMASK_A, 5, 40205, 0, 3446, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiS', @RACEMASK_A, 6, 44011, 3823, 3446, 3750, 0, 0, 0),
('Druid', 'Feral80PvEP1BiS', @RACEMASK_A, 7, 40243, 3606, 3460, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiS', @RACEMASK_A, 8, 39765, 3845, 3446, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiS', @RACEMASK_A, 9, 40541, 3604, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiS', @RACEMASK_A, 10, 40474, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiS', @RACEMASK_A, 11, 40717, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiS', @RACEMASK_A, 12, 42987, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiS', @RACEMASK_A, 13, 40256, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiS', @RACEMASK_A, 14, 40403, 3605, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiS', @RACEMASK_A, 15, 40388, 3789, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiS', @RACEMASK_A, 17, 39757, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiS', @RACEMASK_H, 0, 40473, 3817, 3628, 3446, 0, 0, 0),
('Druid', 'Feral80PvEP1BiS', @RACEMASK_H, 1, 44664, 0, 3446, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiS', @RACEMASK_H, 2, 40494, 3808, 3446, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiS', @RACEMASK_H, 4, 40539, 3832, 3446, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiS', @RACEMASK_H, 5, 40205, 0, 3446, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiS', @RACEMASK_H, 6, 44011, 3823, 3446, 3750, 0, 0, 0),
('Druid', 'Feral80PvEP1BiS', @RACEMASK_H, 7, 40243, 3606, 3460, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiS', @RACEMASK_H, 8, 39765, 3845, 3446, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiS', @RACEMASK_H, 9, 40541, 3604, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiS', @RACEMASK_H, 10, 40474, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiS', @RACEMASK_H, 11, 40717, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiS', @RACEMASK_H, 12, 42987, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiS', @RACEMASK_H, 13, 40256, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiS', @RACEMASK_H, 14, 40403, 3605, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiS', @RACEMASK_H, 15, 40388, 3789, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiS', @RACEMASK_H, 17, 39757, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Druid Feral 80PvEP1BiSTank (tank) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Druid', 'Feral80PvEP1BiSTank', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_racial_bearform:30|t|r Use Feral PvE P1 BiS Tank', 7, @MINLEVEL, @MAXLEVEL, 'FeralTank80PvE', 'FeralTank80PvE', 'WotLK Phase 1', 301),
('Druid', 'Feral80PvEP1BiSTank', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_racial_bearform:30|t|r Use Feral PvE P1 BiS Tank (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'FeralTank80PvE', 'FeralTank80PvE', 'WotLK Phase 1', 301);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Druid', 'Feral80PvEP1BiSTank', @RACEMASK_HUMAN, 0, 40329, 3878, 3625, 3454, 0, 0, 0),
('Druid', 'Feral80PvEP1BiSTank', @RACEMASK_HUMAN, 1, 40387, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiSTank', @RACEMASK_HUMAN, 2, 40494, 3852, 3454, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiSTank', @RACEMASK_HUMAN, 4, 40471, 3832, 3750, 3501, 0, 0, 0),
('Druid', 'Feral80PvEP1BiSTank', @RACEMASK_HUMAN, 5, 43591, 0, 3454, 3454, 0, 0, 3454),
('Druid', 'Feral80PvEP1BiSTank', @RACEMASK_HUMAN, 6, 44011, 3822, 3454, 3454, 0, 0, 0),
('Druid', 'Feral80PvEP1BiSTank', @RACEMASK_HUMAN, 7, 40243, 3606, 3454, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiSTank', @RACEMASK_HUMAN, 8, 40186, 3850, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiSTank', @RACEMASK_HUMAN, 9, 40472, 3860, 3454, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiSTank', @RACEMASK_HUMAN, 10, 40370, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiSTank', @RACEMASK_HUMAN, 11, 37784, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiSTank', @RACEMASK_HUMAN, 12, 44253, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiSTank', @RACEMASK_HUMAN, 13, 37220, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiSTank', @RACEMASK_HUMAN, 14, 40252, 3294, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiSTank', @RACEMASK_HUMAN, 15, 40280, 2673, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiSTank', @RACEMASK_HUMAN, 17, 38365, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiSTank', @RACEMASK_A, 0, 40329, 3878, 3625, 3454, 0, 0, 0),
('Druid', 'Feral80PvEP1BiSTank', @RACEMASK_A, 1, 40387, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiSTank', @RACEMASK_A, 2, 40494, 3852, 3454, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiSTank', @RACEMASK_A, 4, 40471, 3832, 3750, 3501, 0, 0, 0),
('Druid', 'Feral80PvEP1BiSTank', @RACEMASK_A, 5, 43591, 0, 3454, 3454, 0, 0, 3454),
('Druid', 'Feral80PvEP1BiSTank', @RACEMASK_A, 6, 44011, 3822, 3454, 3454, 0, 0, 0),
('Druid', 'Feral80PvEP1BiSTank', @RACEMASK_A, 7, 40243, 3606, 3454, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiSTank', @RACEMASK_A, 8, 40186, 3850, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiSTank', @RACEMASK_A, 9, 40472, 3860, 3454, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiSTank', @RACEMASK_A, 10, 40370, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiSTank', @RACEMASK_A, 11, 37784, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiSTank', @RACEMASK_A, 12, 44253, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiSTank', @RACEMASK_A, 13, 37220, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiSTank', @RACEMASK_A, 14, 40252, 3294, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiSTank', @RACEMASK_A, 15, 40280, 2673, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiSTank', @RACEMASK_A, 17, 38365, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiSTank', @RACEMASK_H, 0, 40329, 3878, 3625, 3454, 0, 0, 0),
('Druid', 'Feral80PvEP1BiSTank', @RACEMASK_H, 1, 40387, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiSTank', @RACEMASK_H, 2, 40494, 3852, 3454, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiSTank', @RACEMASK_H, 4, 40471, 3832, 3750, 3501, 0, 0, 0),
('Druid', 'Feral80PvEP1BiSTank', @RACEMASK_H, 5, 43591, 0, 3454, 3454, 0, 0, 3454),
('Druid', 'Feral80PvEP1BiSTank', @RACEMASK_H, 6, 44011, 3822, 3454, 3454, 0, 0, 0),
('Druid', 'Feral80PvEP1BiSTank', @RACEMASK_H, 7, 40243, 3606, 3454, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiSTank', @RACEMASK_H, 8, 40186, 3850, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiSTank', @RACEMASK_H, 9, 40472, 3860, 3454, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiSTank', @RACEMASK_H, 10, 40370, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiSTank', @RACEMASK_H, 11, 37784, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiSTank', @RACEMASK_H, 12, 44253, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiSTank', @RACEMASK_H, 13, 37220, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiSTank', @RACEMASK_H, 14, 40252, 3294, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiSTank', @RACEMASK_H, 15, 40280, 2673, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP1BiSTank', @RACEMASK_H, 17, 38365, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Druid Restoration 80PvEP1BiSHeal (healer) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Druid', 'Restoration80PvEP1BiSHeal', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_healingtouch:30|t|r Use Restoration PvE P1 BiS Heal', 7, @MINLEVEL, @MAXLEVEL, 'Restoration80PvE', 'Restoration80PvE', 'WotLK Phase 1', 301),
('Druid', 'Restoration80PvEP1BiSHeal', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_healingtouch:30|t|r Use Restoration PvE P1 BiS Heal (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Restoration80PvE', 'Restoration80PvE', 'WotLK Phase 1', 301);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Druid', 'Restoration80PvEP1BiSHeal', @RACEMASK_HUMAN, 0, 44007, 3819, 3627, 3463, 0, 0, 0),
('Druid', 'Restoration80PvEP1BiSHeal', @RACEMASK_HUMAN, 1, 40071, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP1BiSHeal', @RACEMASK_HUMAN, 2, 39719, 3809, 3448, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP1BiSHeal', @RACEMASK_HUMAN, 4, 44002, 3832, 3448, 3472, 0, 0, 0),
('Druid', 'Restoration80PvEP1BiSHeal', @RACEMASK_HUMAN, 5, 40561, 0, 3448, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP1BiSHeal', @RACEMASK_HUMAN, 6, 40379, 3719, 3448, 3463, 0, 0, 0),
('Druid', 'Restoration80PvEP1BiSHeal', @RACEMASK_HUMAN, 7, 40558, 3606, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP1BiSHeal', @RACEMASK_HUMAN, 8, 44008, 2332, 3448, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP1BiSHeal', @RACEMASK_HUMAN, 9, 40460, 3246, 3463, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP1BiSHeal', @RACEMASK_HUMAN, 10, 40719, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP1BiSHeal', @RACEMASK_HUMAN, 11, 40375, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP1BiSHeal', @RACEMASK_HUMAN, 12, 37111, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP1BiSHeal', @RACEMASK_HUMAN, 13, 40432, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP1BiSHeal', @RACEMASK_HUMAN, 14, 40723, 3859, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP1BiSHeal', @RACEMASK_HUMAN, 15, 40395, 3834, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP1BiSHeal', @RACEMASK_HUMAN, 16, 39766, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP1BiSHeal', @RACEMASK_HUMAN, 17, 40342, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP1BiSHeal', @RACEMASK_A, 0, 44007, 3819, 3627, 3463, 0, 0, 0),
('Druid', 'Restoration80PvEP1BiSHeal', @RACEMASK_A, 1, 40071, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP1BiSHeal', @RACEMASK_A, 2, 39719, 3809, 3448, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP1BiSHeal', @RACEMASK_A, 4, 44002, 3832, 3448, 3472, 0, 0, 0),
('Druid', 'Restoration80PvEP1BiSHeal', @RACEMASK_A, 5, 40561, 0, 3448, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP1BiSHeal', @RACEMASK_A, 6, 40379, 3719, 3448, 3463, 0, 0, 0),
('Druid', 'Restoration80PvEP1BiSHeal', @RACEMASK_A, 7, 40558, 3606, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP1BiSHeal', @RACEMASK_A, 8, 44008, 2332, 3448, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP1BiSHeal', @RACEMASK_A, 9, 40460, 3246, 3463, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP1BiSHeal', @RACEMASK_A, 10, 40719, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP1BiSHeal', @RACEMASK_A, 11, 40375, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP1BiSHeal', @RACEMASK_A, 12, 37111, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP1BiSHeal', @RACEMASK_A, 13, 40432, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP1BiSHeal', @RACEMASK_A, 14, 40723, 3859, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP1BiSHeal', @RACEMASK_A, 15, 40395, 3834, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP1BiSHeal', @RACEMASK_A, 16, 39766, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP1BiSHeal', @RACEMASK_A, 17, 40342, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP1BiSHeal', @RACEMASK_H, 0, 44007, 3819, 3627, 3463, 0, 0, 0),
('Druid', 'Restoration80PvEP1BiSHeal', @RACEMASK_H, 1, 40071, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP1BiSHeal', @RACEMASK_H, 2, 39719, 3809, 3448, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP1BiSHeal', @RACEMASK_H, 4, 44002, 3832, 3448, 3472, 0, 0, 0),
('Druid', 'Restoration80PvEP1BiSHeal', @RACEMASK_H, 5, 40561, 0, 3448, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP1BiSHeal', @RACEMASK_H, 6, 40379, 3719, 3448, 3463, 0, 0, 0),
('Druid', 'Restoration80PvEP1BiSHeal', @RACEMASK_H, 7, 40558, 3606, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP1BiSHeal', @RACEMASK_H, 8, 44008, 2332, 3448, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP1BiSHeal', @RACEMASK_H, 9, 40460, 3246, 3463, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP1BiSHeal', @RACEMASK_H, 10, 40719, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP1BiSHeal', @RACEMASK_H, 11, 40375, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP1BiSHeal', @RACEMASK_H, 12, 37111, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP1BiSHeal', @RACEMASK_H, 13, 40432, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP1BiSHeal', @RACEMASK_H, 14, 40723, 3859, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP1BiSHeal', @RACEMASK_H, 15, 40395, 3834, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP1BiSHeal', @RACEMASK_H, 16, 39766, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP1BiSHeal', @RACEMASK_H, 17, 40342, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Hunter Beastmastery 80PvEP1BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Hunter', 'Beastmastery80PvEP1BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_hunter_beasttaming:30|t|r Use Beastmastery PvE P1 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Beastmastery80PvE', 'Beastmastery80PvE', 'WotLK Phase 1', 301),
('Hunter', 'Beastmastery80PvEP1BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_hunter_beasttaming:30|t|r Use Beastmastery PvE P1 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Beastmastery80PvE', 'Beastmastery80PvE', 'WotLK Phase 1', 301);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Hunter', 'Beastmastery80PvEP1BiS', @RACEMASK_HUMAN, 0, 40505, 3817, 3628, 3733, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP1BiS', @RACEMASK_HUMAN, 1, 44664, 0, 3733, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP1BiS', @RACEMASK_HUMAN, 2, 40507, 3808, 3447, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP1BiS', @RACEMASK_HUMAN, 4, 43998, 3832, 3733, 3879, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP1BiS', @RACEMASK_HUMAN, 5, 39762, 3601, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP1BiS', @RACEMASK_HUMAN, 6, 40331, 3823, 3447, 3447, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP1BiS', @RACEMASK_HUMAN, 7, 40549, 3606, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP1BiS', @RACEMASK_HUMAN, 8, 40282, 3845, 3447, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP1BiS', @RACEMASK_HUMAN, 9, 40541, 3604, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP1BiS', @RACEMASK_HUMAN, 10, 40074, 0, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP1BiS', @RACEMASK_HUMAN, 11, 40474, 0, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP1BiS', @RACEMASK_HUMAN, 12, 44253, 0, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP1BiS', @RACEMASK_HUMAN, 13, 40684, 0, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP1BiS', @RACEMASK_HUMAN, 14, 40403, 1099, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP1BiS', @RACEMASK_HUMAN, 15, 40388, 3827, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP1BiS', @RACEMASK_HUMAN, 17, 40385, 3608, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP1BiS', @RACEMASK_A, 0, 40505, 3817, 3628, 3733, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP1BiS', @RACEMASK_A, 1, 44664, 0, 3733, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP1BiS', @RACEMASK_A, 2, 40507, 3808, 3447, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP1BiS', @RACEMASK_A, 4, 43998, 3832, 3733, 3879, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP1BiS', @RACEMASK_A, 5, 39762, 3601, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP1BiS', @RACEMASK_A, 6, 40331, 3823, 3447, 3447, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP1BiS', @RACEMASK_A, 7, 40549, 3606, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP1BiS', @RACEMASK_A, 8, 40282, 3845, 3447, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP1BiS', @RACEMASK_A, 9, 40541, 3604, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP1BiS', @RACEMASK_A, 10, 40074, 0, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP1BiS', @RACEMASK_A, 11, 40474, 0, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP1BiS', @RACEMASK_A, 12, 44253, 0, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP1BiS', @RACEMASK_A, 13, 40684, 0, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP1BiS', @RACEMASK_A, 14, 40403, 1099, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP1BiS', @RACEMASK_A, 15, 40388, 3827, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP1BiS', @RACEMASK_A, 17, 40385, 3608, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP1BiS', @RACEMASK_H, 0, 40505, 3817, 3628, 3733, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP1BiS', @RACEMASK_H, 1, 44664, 0, 3733, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP1BiS', @RACEMASK_H, 2, 40507, 3808, 3447, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP1BiS', @RACEMASK_H, 4, 43998, 3832, 3733, 3879, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP1BiS', @RACEMASK_H, 5, 39762, 3601, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP1BiS', @RACEMASK_H, 6, 40331, 3823, 3447, 3447, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP1BiS', @RACEMASK_H, 7, 40549, 3606, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP1BiS', @RACEMASK_H, 8, 40282, 3845, 3447, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP1BiS', @RACEMASK_H, 9, 40541, 3604, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP1BiS', @RACEMASK_H, 10, 40074, 0, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP1BiS', @RACEMASK_H, 11, 40474, 0, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP1BiS', @RACEMASK_H, 12, 44253, 0, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP1BiS', @RACEMASK_H, 13, 40684, 0, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP1BiS', @RACEMASK_H, 14, 40403, 1099, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP1BiS', @RACEMASK_H, 15, 40388, 3827, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP1BiS', @RACEMASK_H, 17, 40385, 3608, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Hunter Marksmanship 80PvEP1BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Hunter', 'Marksmanship80PvEP1BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_marksmanship:30|t|r Use Marksmanship PvE P1 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Marksmanship80PvE', 'Marksmanship80PvE', 'WotLK Phase 1', 301),
('Hunter', 'Marksmanship80PvEP1BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_marksmanship:30|t|r Use Marksmanship PvE P1 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Marksmanship80PvE', 'Marksmanship80PvE', 'WotLK Phase 1', 301);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Hunter', 'Marksmanship80PvEP1BiS', @RACEMASK_HUMAN, 0, 40543, 3817, 3628, 3733, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP1BiS', @RACEMASK_HUMAN, 1, 44664, 0, 3733, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP1BiS', @RACEMASK_HUMAN, 2, 40507, 3808, 3447, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP1BiS', @RACEMASK_HUMAN, 4, 43998, 3832, 3733, 3447, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP1BiS', @RACEMASK_HUMAN, 5, 40275, 3601, 3447, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP1BiS', @RACEMASK_HUMAN, 6, 40506, 3823, 3447, 3750, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP1BiS', @RACEMASK_HUMAN, 7, 40549, 3606, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP1BiS', @RACEMASK_HUMAN, 8, 40282, 3845, 3447, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP1BiS', @RACEMASK_HUMAN, 9, 40541, 3604, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP1BiS', @RACEMASK_HUMAN, 10, 40074, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP1BiS', @RACEMASK_HUMAN, 11, 40474, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP1BiS', @RACEMASK_HUMAN, 12, 44253, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP1BiS', @RACEMASK_HUMAN, 13, 40684, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP1BiS', @RACEMASK_HUMAN, 14, 40403, 3605, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP1BiS', @RACEMASK_HUMAN, 15, 40388, 3827, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP1BiS', @RACEMASK_HUMAN, 17, 40385, 3608, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP1BiS', @RACEMASK_A, 0, 40543, 3817, 3628, 3733, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP1BiS', @RACEMASK_A, 1, 44664, 0, 3733, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP1BiS', @RACEMASK_A, 2, 40507, 3808, 3447, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP1BiS', @RACEMASK_A, 4, 43998, 3832, 3733, 3447, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP1BiS', @RACEMASK_A, 5, 40275, 3601, 3447, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP1BiS', @RACEMASK_A, 6, 40506, 3823, 3447, 3750, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP1BiS', @RACEMASK_A, 7, 40549, 3606, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP1BiS', @RACEMASK_A, 8, 40282, 3845, 3447, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP1BiS', @RACEMASK_A, 9, 40541, 3604, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP1BiS', @RACEMASK_A, 10, 40074, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP1BiS', @RACEMASK_A, 11, 40474, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP1BiS', @RACEMASK_A, 12, 44253, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP1BiS', @RACEMASK_A, 13, 40684, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP1BiS', @RACEMASK_A, 14, 40403, 3605, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP1BiS', @RACEMASK_A, 15, 40388, 3827, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP1BiS', @RACEMASK_A, 17, 40385, 3608, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP1BiS', @RACEMASK_H, 0, 40543, 3817, 3628, 3733, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP1BiS', @RACEMASK_H, 1, 44664, 0, 3733, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP1BiS', @RACEMASK_H, 2, 40507, 3808, 3447, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP1BiS', @RACEMASK_H, 4, 43998, 3832, 3733, 3447, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP1BiS', @RACEMASK_H, 5, 40275, 3601, 3447, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP1BiS', @RACEMASK_H, 6, 40506, 3823, 3447, 3750, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP1BiS', @RACEMASK_H, 7, 40549, 3606, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP1BiS', @RACEMASK_H, 8, 40282, 3845, 3447, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP1BiS', @RACEMASK_H, 9, 40541, 3604, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP1BiS', @RACEMASK_H, 10, 40074, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP1BiS', @RACEMASK_H, 11, 40474, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP1BiS', @RACEMASK_H, 12, 44253, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP1BiS', @RACEMASK_H, 13, 40684, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP1BiS', @RACEMASK_H, 14, 40403, 3605, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP1BiS', @RACEMASK_H, 15, 40388, 3827, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP1BiS', @RACEMASK_H, 17, 40385, 3608, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Hunter Survival 80PvEP1BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Hunter', 'Survival80PvEP1BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_Hunter_swiftstrike:30|t|r Use Survival PvE P1 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Survival80PvE', 'Survival80PvE', 'WotLK Phase 1', 301),
('Hunter', 'Survival80PvEP1BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_Hunter_swiftstrike:30|t|r Use Survival PvE P1 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Survival80PvE', 'Survival80PvE', 'WotLK Phase 1', 301);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Hunter', 'Survival80PvEP1BiS', @RACEMASK_HUMAN, 0, 40543, 3817, 3628, 3733, 0, 0, 0),
('Hunter', 'Survival80PvEP1BiS', @RACEMASK_HUMAN, 1, 44664, 0, 3733, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP1BiS', @RACEMASK_HUMAN, 2, 40507, 3808, 3447, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP1BiS', @RACEMASK_HUMAN, 4, 43998, 3832, 3733, 3750, 0, 0, 0),
('Hunter', 'Survival80PvEP1BiS', @RACEMASK_HUMAN, 5, 39762, 3601, 3447, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP1BiS', @RACEMASK_HUMAN, 6, 40331, 3823, 3447, 3447, 0, 0, 0),
('Hunter', 'Survival80PvEP1BiS', @RACEMASK_HUMAN, 7, 40549, 3606, 0, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP1BiS', @RACEMASK_HUMAN, 8, 40282, 3845, 3447, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP1BiS', @RACEMASK_HUMAN, 9, 40504, 3604, 3447, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP1BiS', @RACEMASK_HUMAN, 10, 40074, 0, 0, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP1BiS', @RACEMASK_HUMAN, 11, 40474, 0, 0, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP1BiS', @RACEMASK_HUMAN, 12, 44253, 0, 0, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP1BiS', @RACEMASK_HUMAN, 13, 40256, 0, 0, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP1BiS', @RACEMASK_HUMAN, 14, 40403, 3605, 0, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP1BiS', @RACEMASK_HUMAN, 15, 40388, 3827, 0, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP1BiS', @RACEMASK_HUMAN, 17, 40385, 3608, 0, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP1BiS', @RACEMASK_A, 0, 40543, 3817, 3628, 3733, 0, 0, 0),
('Hunter', 'Survival80PvEP1BiS', @RACEMASK_A, 1, 44664, 0, 3733, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP1BiS', @RACEMASK_A, 2, 40507, 3808, 3447, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP1BiS', @RACEMASK_A, 4, 43998, 3832, 3733, 3750, 0, 0, 0),
('Hunter', 'Survival80PvEP1BiS', @RACEMASK_A, 5, 39762, 3601, 3447, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP1BiS', @RACEMASK_A, 6, 40331, 3823, 3447, 3447, 0, 0, 0),
('Hunter', 'Survival80PvEP1BiS', @RACEMASK_A, 7, 40549, 3606, 0, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP1BiS', @RACEMASK_A, 8, 40282, 3845, 3447, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP1BiS', @RACEMASK_A, 9, 40504, 3604, 3447, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP1BiS', @RACEMASK_A, 10, 40074, 0, 0, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP1BiS', @RACEMASK_A, 11, 40474, 0, 0, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP1BiS', @RACEMASK_A, 12, 44253, 0, 0, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP1BiS', @RACEMASK_A, 13, 40256, 0, 0, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP1BiS', @RACEMASK_A, 14, 40403, 3605, 0, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP1BiS', @RACEMASK_A, 15, 40388, 3827, 0, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP1BiS', @RACEMASK_A, 17, 40385, 3608, 0, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP1BiS', @RACEMASK_H, 0, 40543, 3817, 3628, 3733, 0, 0, 0),
('Hunter', 'Survival80PvEP1BiS', @RACEMASK_H, 1, 44664, 0, 3733, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP1BiS', @RACEMASK_H, 2, 40507, 3808, 3447, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP1BiS', @RACEMASK_H, 4, 43998, 3832, 3733, 3750, 0, 0, 0),
('Hunter', 'Survival80PvEP1BiS', @RACEMASK_H, 5, 39762, 3601, 3447, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP1BiS', @RACEMASK_H, 6, 40331, 3823, 3447, 3447, 0, 0, 0),
('Hunter', 'Survival80PvEP1BiS', @RACEMASK_H, 7, 40549, 3606, 0, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP1BiS', @RACEMASK_H, 8, 40282, 3845, 3447, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP1BiS', @RACEMASK_H, 9, 40504, 3604, 3447, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP1BiS', @RACEMASK_H, 10, 40074, 0, 0, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP1BiS', @RACEMASK_H, 11, 40474, 0, 0, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP1BiS', @RACEMASK_H, 12, 44253, 0, 0, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP1BiS', @RACEMASK_H, 13, 40256, 0, 0, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP1BiS', @RACEMASK_H, 14, 40403, 3605, 0, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP1BiS', @RACEMASK_H, 15, 40388, 3827, 0, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP1BiS', @RACEMASK_H, 17, 40385, 3608, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Mage Arcane 80PvEP1BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Mage', 'Arcane80PvEP1BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_magicalsentry:30|t|r Use Arcane PvE P1 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Arcane80PvE', 'Arcane80PvE', 'WotLK Phase 1', 301),
('Mage', 'Arcane80PvEP1BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_magicalsentry:30|t|r Use Arcane PvE P1 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Arcane80PvE', 'Arcane80PvE', 'WotLK Phase 1', 301);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Mage', 'Arcane80PvEP1BiS', @RACEMASK_HUMAN, 0, 40416, 3820, 3621, 3448, 0, 0, 0),
('Mage', 'Arcane80PvEP1BiS', @RACEMASK_HUMAN, 1, 44661, 0, 3472, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP1BiS', @RACEMASK_HUMAN, 2, 40419, 3810, 3490, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP1BiS', @RACEMASK_HUMAN, 4, 40418, 3832, 3448, 3490, 0, 0, 0),
('Mage', 'Arcane80PvEP1BiS', @RACEMASK_HUMAN, 5, 40561, 3601, 3448, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP1BiS', @RACEMASK_HUMAN, 6, 40417, 3719, 3448, 3490, 0, 0, 0),
('Mage', 'Arcane80PvEP1BiS', @RACEMASK_HUMAN, 7, 40558, 3606, 0, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP1BiS', @RACEMASK_HUMAN, 8, 44008, 2332, 3448, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP1BiS', @RACEMASK_HUMAN, 9, 39733, 3604, 0, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP1BiS', @RACEMASK_HUMAN, 10, 40719, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP1BiS', @RACEMASK_HUMAN, 11, 40399, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP1BiS', @RACEMASK_HUMAN, 12, 40255, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP1BiS', @RACEMASK_HUMAN, 13, 39229, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP1BiS', @RACEMASK_HUMAN, 14, 44005, 3722, 3472, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP1BiS', @RACEMASK_HUMAN, 15, 40396, 3834, 0, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP1BiS', @RACEMASK_HUMAN, 16, 40273, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP1BiS', @RACEMASK_HUMAN, 17, 39712, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP1BiS', @RACEMASK_A, 0, 40416, 3820, 3621, 3448, 0, 0, 0),
('Mage', 'Arcane80PvEP1BiS', @RACEMASK_A, 1, 44661, 0, 3472, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP1BiS', @RACEMASK_A, 2, 40419, 3810, 3490, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP1BiS', @RACEMASK_A, 4, 40418, 3832, 3448, 3490, 0, 0, 0),
('Mage', 'Arcane80PvEP1BiS', @RACEMASK_A, 5, 40561, 3601, 3448, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP1BiS', @RACEMASK_A, 6, 40417, 3719, 3448, 3490, 0, 0, 0),
('Mage', 'Arcane80PvEP1BiS', @RACEMASK_A, 7, 40558, 3606, 0, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP1BiS', @RACEMASK_A, 8, 44008, 2332, 3448, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP1BiS', @RACEMASK_A, 9, 39733, 3604, 0, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP1BiS', @RACEMASK_A, 10, 40719, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP1BiS', @RACEMASK_A, 11, 40399, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP1BiS', @RACEMASK_A, 12, 40255, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP1BiS', @RACEMASK_A, 13, 39229, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP1BiS', @RACEMASK_A, 14, 44005, 3722, 3472, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP1BiS', @RACEMASK_A, 15, 40396, 3834, 0, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP1BiS', @RACEMASK_A, 16, 40273, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP1BiS', @RACEMASK_A, 17, 39712, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP1BiS', @RACEMASK_H, 0, 40416, 3820, 3621, 3448, 0, 0, 0),
('Mage', 'Arcane80PvEP1BiS', @RACEMASK_H, 1, 44661, 0, 3472, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP1BiS', @RACEMASK_H, 2, 40419, 3810, 3490, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP1BiS', @RACEMASK_H, 4, 40418, 3832, 3448, 3490, 0, 0, 0),
('Mage', 'Arcane80PvEP1BiS', @RACEMASK_H, 5, 40561, 3601, 3448, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP1BiS', @RACEMASK_H, 6, 40417, 3719, 3448, 3490, 0, 0, 0),
('Mage', 'Arcane80PvEP1BiS', @RACEMASK_H, 7, 40558, 3606, 0, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP1BiS', @RACEMASK_H, 8, 44008, 2332, 3448, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP1BiS', @RACEMASK_H, 9, 39733, 3604, 0, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP1BiS', @RACEMASK_H, 10, 40719, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP1BiS', @RACEMASK_H, 11, 40399, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP1BiS', @RACEMASK_H, 12, 40255, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP1BiS', @RACEMASK_H, 13, 39229, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP1BiS', @RACEMASK_H, 14, 44005, 3722, 3472, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP1BiS', @RACEMASK_H, 15, 40396, 3834, 0, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP1BiS', @RACEMASK_H, 16, 40273, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP1BiS', @RACEMASK_H, 17, 39712, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Mage Fire 80PvEP1BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Mage', 'Fire80PvEP1BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_fire_flamebolt:30|t|r Use Fire PvE P1 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Fire80PvE', 'Fire80PvE', 'WotLK Phase 1', 301),
('Mage', 'Fire80PvEP1BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_fire_flamebolt:30|t|r Use Fire PvE P1 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Fire80PvE', 'Fire80PvE', 'WotLK Phase 1', 301);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Mage', 'Fire80PvEP1BiS', @RACEMASK_HUMAN, 0, 40416, 3820, 3621, 3448, 0, 0, 0),
('Mage', 'Fire80PvEP1BiS', @RACEMASK_HUMAN, 1, 44661, 0, 3472, 0, 0, 0, 0),
('Mage', 'Fire80PvEP1BiS', @RACEMASK_HUMAN, 2, 40419, 3810, 3488, 0, 0, 0, 0),
('Mage', 'Fire80PvEP1BiS', @RACEMASK_HUMAN, 4, 40418, 3832, 3448, 3487, 0, 0, 0),
('Mage', 'Fire80PvEP1BiS', @RACEMASK_HUMAN, 5, 40301, 3601, 3448, 0, 0, 0, 0),
('Mage', 'Fire80PvEP1BiS', @RACEMASK_HUMAN, 6, 40560, 3719, 0, 0, 0, 0, 0),
('Mage', 'Fire80PvEP1BiS', @RACEMASK_HUMAN, 7, 40246, 3606, 0, 0, 0, 0, 0),
('Mage', 'Fire80PvEP1BiS', @RACEMASK_HUMAN, 8, 44008, 2332, 3448, 0, 0, 0, 0),
('Mage', 'Fire80PvEP1BiS', @RACEMASK_HUMAN, 9, 40415, 3604, 3448, 0, 0, 0, 0),
('Mage', 'Fire80PvEP1BiS', @RACEMASK_HUMAN, 10, 40719, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire80PvEP1BiS', @RACEMASK_HUMAN, 11, 40399, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire80PvEP1BiS', @RACEMASK_HUMAN, 12, 40255, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire80PvEP1BiS', @RACEMASK_HUMAN, 13, 40432, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire80PvEP1BiS', @RACEMASK_HUMAN, 14, 44005, 3722, 3472, 0, 0, 0, 0),
('Mage', 'Fire80PvEP1BiS', @RACEMASK_HUMAN, 15, 40396, 3834, 0, 0, 0, 0, 0),
('Mage', 'Fire80PvEP1BiS', @RACEMASK_HUMAN, 16, 40273, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire80PvEP1BiS', @RACEMASK_HUMAN, 17, 39712, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire80PvEP1BiS', @RACEMASK_A, 0, 40416, 3820, 3621, 3448, 0, 0, 0),
('Mage', 'Fire80PvEP1BiS', @RACEMASK_A, 1, 44661, 0, 3472, 0, 0, 0, 0),
('Mage', 'Fire80PvEP1BiS', @RACEMASK_A, 2, 40419, 3810, 3488, 0, 0, 0, 0),
('Mage', 'Fire80PvEP1BiS', @RACEMASK_A, 4, 40418, 3832, 3448, 3487, 0, 0, 0),
('Mage', 'Fire80PvEP1BiS', @RACEMASK_A, 5, 40301, 3601, 3448, 0, 0, 0, 0),
('Mage', 'Fire80PvEP1BiS', @RACEMASK_A, 6, 40560, 3719, 0, 0, 0, 0, 0),
('Mage', 'Fire80PvEP1BiS', @RACEMASK_A, 7, 40246, 3606, 0, 0, 0, 0, 0),
('Mage', 'Fire80PvEP1BiS', @RACEMASK_A, 8, 44008, 2332, 3448, 0, 0, 0, 0),
('Mage', 'Fire80PvEP1BiS', @RACEMASK_A, 9, 40415, 3604, 3448, 0, 0, 0, 0),
('Mage', 'Fire80PvEP1BiS', @RACEMASK_A, 10, 40719, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire80PvEP1BiS', @RACEMASK_A, 11, 40399, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire80PvEP1BiS', @RACEMASK_A, 12, 40255, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire80PvEP1BiS', @RACEMASK_A, 13, 40432, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire80PvEP1BiS', @RACEMASK_A, 14, 44005, 3722, 3472, 0, 0, 0, 0),
('Mage', 'Fire80PvEP1BiS', @RACEMASK_A, 15, 40396, 3834, 0, 0, 0, 0, 0),
('Mage', 'Fire80PvEP1BiS', @RACEMASK_A, 16, 40273, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire80PvEP1BiS', @RACEMASK_A, 17, 39712, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire80PvEP1BiS', @RACEMASK_H, 0, 40416, 3820, 3621, 3448, 0, 0, 0),
('Mage', 'Fire80PvEP1BiS', @RACEMASK_H, 1, 44661, 0, 3472, 0, 0, 0, 0),
('Mage', 'Fire80PvEP1BiS', @RACEMASK_H, 2, 40419, 3810, 3488, 0, 0, 0, 0),
('Mage', 'Fire80PvEP1BiS', @RACEMASK_H, 4, 40418, 3832, 3448, 3487, 0, 0, 0),
('Mage', 'Fire80PvEP1BiS', @RACEMASK_H, 5, 40301, 3601, 3448, 0, 0, 0, 0),
('Mage', 'Fire80PvEP1BiS', @RACEMASK_H, 6, 40560, 3719, 0, 0, 0, 0, 0),
('Mage', 'Fire80PvEP1BiS', @RACEMASK_H, 7, 40246, 3606, 0, 0, 0, 0, 0),
('Mage', 'Fire80PvEP1BiS', @RACEMASK_H, 8, 44008, 2332, 3448, 0, 0, 0, 0),
('Mage', 'Fire80PvEP1BiS', @RACEMASK_H, 9, 40415, 3604, 3448, 0, 0, 0, 0),
('Mage', 'Fire80PvEP1BiS', @RACEMASK_H, 10, 40719, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire80PvEP1BiS', @RACEMASK_H, 11, 40399, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire80PvEP1BiS', @RACEMASK_H, 12, 40255, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire80PvEP1BiS', @RACEMASK_H, 13, 40432, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire80PvEP1BiS', @RACEMASK_H, 14, 44005, 3722, 3472, 0, 0, 0, 0),
('Mage', 'Fire80PvEP1BiS', @RACEMASK_H, 15, 40396, 3834, 0, 0, 0, 0, 0),
('Mage', 'Fire80PvEP1BiS', @RACEMASK_H, 16, 40273, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire80PvEP1BiS', @RACEMASK_H, 17, 39712, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Mage Frost 80PvEP1BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Mage', 'Frost80PvEP1BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_frost_frostbolt02:30|t|r Use Frost PvE P1 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Frost80PvE', 'Frost80PvE', 'WotLK Phase 1', 301),
('Mage', 'Frost80PvEP1BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_frost_frostbolt02:30|t|r Use Frost PvE P1 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Frost80PvE', 'Frost80PvE', 'WotLK Phase 1', 301);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Mage', 'Frost80PvEP1BiS', @RACEMASK_HUMAN, 0, 40416, 3820, 3621, 3448, 0, 0, 0),
('Mage', 'Frost80PvEP1BiS', @RACEMASK_HUMAN, 1, 44661, 0, 3472, 0, 0, 0, 0),
('Mage', 'Frost80PvEP1BiS', @RACEMASK_HUMAN, 2, 40419, 3810, 3488, 0, 0, 0, 0),
('Mage', 'Frost80PvEP1BiS', @RACEMASK_HUMAN, 4, 40418, 3832, 3448, 3487, 0, 0, 0),
('Mage', 'Frost80PvEP1BiS', @RACEMASK_HUMAN, 5, 40561, 3601, 3448, 0, 0, 0, 0),
('Mage', 'Frost80PvEP1BiS', @RACEMASK_HUMAN, 6, 40560, 3719, 0, 0, 0, 0, 0),
('Mage', 'Frost80PvEP1BiS', @RACEMASK_HUMAN, 7, 40558, 3606, 0, 0, 0, 0, 0),
('Mage', 'Frost80PvEP1BiS', @RACEMASK_HUMAN, 8, 44008, 2332, 3448, 0, 0, 0, 0),
('Mage', 'Frost80PvEP1BiS', @RACEMASK_HUMAN, 9, 40415, 3604, 3448, 0, 0, 0, 0),
('Mage', 'Frost80PvEP1BiS', @RACEMASK_HUMAN, 10, 40719, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost80PvEP1BiS', @RACEMASK_HUMAN, 11, 40399, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost80PvEP1BiS', @RACEMASK_HUMAN, 12, 40255, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost80PvEP1BiS', @RACEMASK_HUMAN, 13, 39229, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost80PvEP1BiS', @RACEMASK_HUMAN, 14, 44005, 3722, 3472, 0, 0, 0, 0),
('Mage', 'Frost80PvEP1BiS', @RACEMASK_HUMAN, 15, 40396, 3834, 0, 0, 0, 0, 0),
('Mage', 'Frost80PvEP1BiS', @RACEMASK_HUMAN, 16, 40273, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost80PvEP1BiS', @RACEMASK_HUMAN, 17, 39712, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost80PvEP1BiS', @RACEMASK_A, 0, 40416, 3820, 3621, 3448, 0, 0, 0),
('Mage', 'Frost80PvEP1BiS', @RACEMASK_A, 1, 44661, 0, 3472, 0, 0, 0, 0),
('Mage', 'Frost80PvEP1BiS', @RACEMASK_A, 2, 40419, 3810, 3488, 0, 0, 0, 0),
('Mage', 'Frost80PvEP1BiS', @RACEMASK_A, 4, 40418, 3832, 3448, 3487, 0, 0, 0),
('Mage', 'Frost80PvEP1BiS', @RACEMASK_A, 5, 40561, 3601, 3448, 0, 0, 0, 0),
('Mage', 'Frost80PvEP1BiS', @RACEMASK_A, 6, 40560, 3719, 0, 0, 0, 0, 0),
('Mage', 'Frost80PvEP1BiS', @RACEMASK_A, 7, 40558, 3606, 0, 0, 0, 0, 0),
('Mage', 'Frost80PvEP1BiS', @RACEMASK_A, 8, 44008, 2332, 3448, 0, 0, 0, 0),
('Mage', 'Frost80PvEP1BiS', @RACEMASK_A, 9, 40415, 3604, 3448, 0, 0, 0, 0),
('Mage', 'Frost80PvEP1BiS', @RACEMASK_A, 10, 40719, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost80PvEP1BiS', @RACEMASK_A, 11, 40399, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost80PvEP1BiS', @RACEMASK_A, 12, 40255, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost80PvEP1BiS', @RACEMASK_A, 13, 39229, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost80PvEP1BiS', @RACEMASK_A, 14, 44005, 3722, 3472, 0, 0, 0, 0),
('Mage', 'Frost80PvEP1BiS', @RACEMASK_A, 15, 40396, 3834, 0, 0, 0, 0, 0),
('Mage', 'Frost80PvEP1BiS', @RACEMASK_A, 16, 40273, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost80PvEP1BiS', @RACEMASK_A, 17, 39712, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost80PvEP1BiS', @RACEMASK_H, 0, 40416, 3820, 3621, 3448, 0, 0, 0),
('Mage', 'Frost80PvEP1BiS', @RACEMASK_H, 1, 44661, 0, 3472, 0, 0, 0, 0),
('Mage', 'Frost80PvEP1BiS', @RACEMASK_H, 2, 40419, 3810, 3488, 0, 0, 0, 0),
('Mage', 'Frost80PvEP1BiS', @RACEMASK_H, 4, 40418, 3832, 3448, 3487, 0, 0, 0),
('Mage', 'Frost80PvEP1BiS', @RACEMASK_H, 5, 40561, 3601, 3448, 0, 0, 0, 0),
('Mage', 'Frost80PvEP1BiS', @RACEMASK_H, 6, 40560, 3719, 0, 0, 0, 0, 0),
('Mage', 'Frost80PvEP1BiS', @RACEMASK_H, 7, 40558, 3606, 0, 0, 0, 0, 0),
('Mage', 'Frost80PvEP1BiS', @RACEMASK_H, 8, 44008, 2332, 3448, 0, 0, 0, 0),
('Mage', 'Frost80PvEP1BiS', @RACEMASK_H, 9, 40415, 3604, 3448, 0, 0, 0, 0),
('Mage', 'Frost80PvEP1BiS', @RACEMASK_H, 10, 40719, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost80PvEP1BiS', @RACEMASK_H, 11, 40399, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost80PvEP1BiS', @RACEMASK_H, 12, 40255, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost80PvEP1BiS', @RACEMASK_H, 13, 39229, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost80PvEP1BiS', @RACEMASK_H, 14, 44005, 3722, 3472, 0, 0, 0, 0),
('Mage', 'Frost80PvEP1BiS', @RACEMASK_H, 15, 40396, 3834, 0, 0, 0, 0, 0),
('Mage', 'Frost80PvEP1BiS', @RACEMASK_H, 16, 40273, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost80PvEP1BiS', @RACEMASK_H, 17, 39712, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Paladin Holy 80PvEP1BiSHeal (healer) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Paladin', 'Holy80PvEP1BiSHeal', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Use Holy PvE P1 BiS Heal', 7, @MINLEVEL, @MAXLEVEL, 'Holy80PvE', 'Holy80PvE', 'WotLK Phase 1', 301),
('Paladin', 'Holy80PvEP1BiSHeal', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Use Holy PvE P1 BiS Heal (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Holy80PvE', 'Holy80PvE', 'WotLK Phase 1', 301);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Paladin', 'Holy80PvEP1BiSHeal', @RACEMASK_HUMAN, 0, 40298, 3819, 3627, 3458, 0, 0, 0),
('Paladin', 'Holy80PvEP1BiSHeal', @RACEMASK_HUMAN, 1, 44657, 0, 3458, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP1BiSHeal', @RACEMASK_HUMAN, 2, 40573, 3809, 3458, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP1BiSHeal', @RACEMASK_HUMAN, 4, 39629, 3832, 3458, 3458, 0, 0, 0),
('Paladin', 'Holy80PvEP1BiSHeal', @RACEMASK_HUMAN, 5, 40259, 0, 3458, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP1BiSHeal', @RACEMASK_HUMAN, 6, 40572, 3721, 3473, 3458, 0, 0, 0),
('Paladin', 'Holy80PvEP1BiSHeal', @RACEMASK_HUMAN, 7, 40592, 3606, 0, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP1BiSHeal', @RACEMASK_HUMAN, 8, 40332, 1119, 3458, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP1BiSHeal', @RACEMASK_HUMAN, 9, 39632, 3604, 3458, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP1BiSHeal', @RACEMASK_HUMAN, 10, 40433, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP1BiSHeal', @RACEMASK_HUMAN, 11, 44283, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP1BiSHeal', @RACEMASK_HUMAN, 12, 42413, 0, 3458, 3458, 0, 0, 0),
('Paladin', 'Holy80PvEP1BiSHeal', @RACEMASK_HUMAN, 13, 37111, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP1BiSHeal', @RACEMASK_HUMAN, 14, 40724, 3831, 0, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP1BiSHeal', @RACEMASK_HUMAN, 15, 40395, 2666, 0, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP1BiSHeal', @RACEMASK_HUMAN, 16, 40401, 1128, 0, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP1BiSHeal', @RACEMASK_HUMAN, 17, 40705, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP1BiSHeal', @RACEMASK_A, 0, 40298, 3819, 3627, 3458, 0, 0, 0),
('Paladin', 'Holy80PvEP1BiSHeal', @RACEMASK_A, 1, 44657, 0, 3458, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP1BiSHeal', @RACEMASK_A, 2, 40573, 3809, 3458, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP1BiSHeal', @RACEMASK_A, 4, 39629, 3832, 3458, 3458, 0, 0, 0),
('Paladin', 'Holy80PvEP1BiSHeal', @RACEMASK_A, 5, 40259, 0, 3458, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP1BiSHeal', @RACEMASK_A, 6, 40572, 3721, 3473, 3458, 0, 0, 0),
('Paladin', 'Holy80PvEP1BiSHeal', @RACEMASK_A, 7, 40592, 3606, 0, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP1BiSHeal', @RACEMASK_A, 8, 40332, 1119, 3458, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP1BiSHeal', @RACEMASK_A, 9, 39632, 3604, 3458, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP1BiSHeal', @RACEMASK_A, 10, 40433, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP1BiSHeal', @RACEMASK_A, 11, 44283, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP1BiSHeal', @RACEMASK_A, 12, 42413, 0, 3458, 3458, 0, 0, 0),
('Paladin', 'Holy80PvEP1BiSHeal', @RACEMASK_A, 13, 37111, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP1BiSHeal', @RACEMASK_A, 14, 40724, 3831, 0, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP1BiSHeal', @RACEMASK_A, 15, 40395, 2666, 0, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP1BiSHeal', @RACEMASK_A, 16, 40401, 1128, 0, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP1BiSHeal', @RACEMASK_A, 17, 40705, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP1BiSHeal', @RACEMASK_H, 0, 40298, 3819, 3627, 3458, 0, 0, 0),
('Paladin', 'Holy80PvEP1BiSHeal', @RACEMASK_H, 1, 44657, 0, 3458, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP1BiSHeal', @RACEMASK_H, 2, 40573, 3809, 3458, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP1BiSHeal', @RACEMASK_H, 4, 39629, 3832, 3458, 3458, 0, 0, 0),
('Paladin', 'Holy80PvEP1BiSHeal', @RACEMASK_H, 5, 40259, 0, 3458, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP1BiSHeal', @RACEMASK_H, 6, 40572, 3721, 3473, 3458, 0, 0, 0),
('Paladin', 'Holy80PvEP1BiSHeal', @RACEMASK_H, 7, 40592, 3606, 0, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP1BiSHeal', @RACEMASK_H, 8, 40332, 1119, 3458, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP1BiSHeal', @RACEMASK_H, 9, 39632, 3604, 3458, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP1BiSHeal', @RACEMASK_H, 10, 40433, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP1BiSHeal', @RACEMASK_H, 11, 44283, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP1BiSHeal', @RACEMASK_H, 12, 42413, 0, 3458, 3458, 0, 0, 0),
('Paladin', 'Holy80PvEP1BiSHeal', @RACEMASK_H, 13, 37111, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP1BiSHeal', @RACEMASK_H, 14, 40724, 3831, 0, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP1BiSHeal', @RACEMASK_H, 15, 40395, 2666, 0, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP1BiSHeal', @RACEMASK_H, 16, 40401, 1128, 0, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP1BiSHeal', @RACEMASK_H, 17, 40705, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Paladin Protection 80PvEP1BiSTank (tank) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Paladin', 'Protection80PvEP1BiSTank', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_devotionaura:30|t|r Use Protection PvE P1 BiS Tank', 7, @MINLEVEL, @MAXLEVEL, 'Protection80PvE', 'Protection80PvE', 'WotLK Phase 1', 301),
('Paladin', 'Protection80PvEP1BiSTank', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_devotionaura:30|t|r Use Protection PvE P1 BiS Tank (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Protection80PvE', 'Protection80PvE', 'WotLK Phase 1', 301);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Paladin', 'Protection80PvEP1BiSTank', @RACEMASK_HUMAN, 0, 40581, 3818, 3637, 3454, 0, 0, 0),
('Paladin', 'Protection80PvEP1BiSTank', @RACEMASK_HUMAN, 1, 44665, 0, 3468, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP1BiSTank', @RACEMASK_HUMAN, 2, 40584, 3852, 3502, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP1BiSTank', @RACEMASK_HUMAN, 4, 40579, 3297, 3454, 3454, 0, 0, 0),
('Paladin', 'Protection80PvEP1BiSTank', @RACEMASK_HUMAN, 5, 39759, 0, 3454, 3293, 0, 0, 0),
('Paladin', 'Protection80PvEP1BiSTank', @RACEMASK_HUMAN, 6, 40589, 3822, 0, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP1BiSTank', @RACEMASK_HUMAN, 7, 39717, 3606, 3502, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP1BiSTank', @RACEMASK_HUMAN, 8, 39764, 3850, 0, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP1BiSTank', @RACEMASK_HUMAN, 9, 40580, 3860, 3454, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP1BiSTank', @RACEMASK_HUMAN, 10, 40107, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP1BiSTank', @RACEMASK_HUMAN, 11, 40718, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP1BiSTank', @RACEMASK_HUMAN, 12, 44063, 0, 3293, 3502, 0, 0, 0),
('Paladin', 'Protection80PvEP1BiSTank', @RACEMASK_HUMAN, 13, 42341, 0, 3293, 3454, 0, 0, 0),
('Paladin', 'Protection80PvEP1BiSTank', @RACEMASK_HUMAN, 14, 40722, 3605, 0, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP1BiSTank', @RACEMASK_HUMAN, 15, 40345, 2673, 0, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP1BiSTank', @RACEMASK_HUMAN, 16, 40400, 3849, 0, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP1BiSTank', @RACEMASK_HUMAN, 17, 40707, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP1BiSTank', @RACEMASK_A, 0, 40581, 3818, 3637, 3454, 0, 0, 0),
('Paladin', 'Protection80PvEP1BiSTank', @RACEMASK_A, 1, 44665, 0, 3468, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP1BiSTank', @RACEMASK_A, 2, 40584, 3852, 3502, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP1BiSTank', @RACEMASK_A, 4, 40579, 3297, 3454, 3454, 0, 0, 0),
('Paladin', 'Protection80PvEP1BiSTank', @RACEMASK_A, 5, 39759, 0, 3454, 3293, 0, 0, 0),
('Paladin', 'Protection80PvEP1BiSTank', @RACEMASK_A, 6, 40589, 3822, 0, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP1BiSTank', @RACEMASK_A, 7, 39717, 3606, 3502, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP1BiSTank', @RACEMASK_A, 8, 39764, 3850, 0, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP1BiSTank', @RACEMASK_A, 9, 40580, 3860, 3454, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP1BiSTank', @RACEMASK_A, 10, 40107, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP1BiSTank', @RACEMASK_A, 11, 40718, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP1BiSTank', @RACEMASK_A, 12, 44063, 0, 3293, 3502, 0, 0, 0),
('Paladin', 'Protection80PvEP1BiSTank', @RACEMASK_A, 13, 42341, 0, 3293, 3454, 0, 0, 0),
('Paladin', 'Protection80PvEP1BiSTank', @RACEMASK_A, 14, 40722, 3605, 0, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP1BiSTank', @RACEMASK_A, 15, 40345, 2673, 0, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP1BiSTank', @RACEMASK_A, 16, 40400, 3849, 0, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP1BiSTank', @RACEMASK_A, 17, 40707, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP1BiSTank', @RACEMASK_H, 0, 40581, 3818, 3637, 3454, 0, 0, 0),
('Paladin', 'Protection80PvEP1BiSTank', @RACEMASK_H, 1, 44665, 0, 3468, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP1BiSTank', @RACEMASK_H, 2, 40584, 3852, 3502, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP1BiSTank', @RACEMASK_H, 4, 40579, 3297, 3454, 3454, 0, 0, 0),
('Paladin', 'Protection80PvEP1BiSTank', @RACEMASK_H, 5, 39759, 0, 3454, 3293, 0, 0, 0),
('Paladin', 'Protection80PvEP1BiSTank', @RACEMASK_H, 6, 40589, 3822, 0, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP1BiSTank', @RACEMASK_H, 7, 39717, 3606, 3502, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP1BiSTank', @RACEMASK_H, 8, 39764, 3850, 0, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP1BiSTank', @RACEMASK_H, 9, 40580, 3860, 3454, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP1BiSTank', @RACEMASK_H, 10, 40107, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP1BiSTank', @RACEMASK_H, 11, 40718, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP1BiSTank', @RACEMASK_H, 12, 44063, 0, 3293, 3502, 0, 0, 0),
('Paladin', 'Protection80PvEP1BiSTank', @RACEMASK_H, 13, 42341, 0, 3293, 3454, 0, 0, 0),
('Paladin', 'Protection80PvEP1BiSTank', @RACEMASK_H, 14, 40722, 3605, 0, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP1BiSTank', @RACEMASK_H, 15, 40345, 2673, 0, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP1BiSTank', @RACEMASK_H, 16, 40400, 3849, 0, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP1BiSTank', @RACEMASK_H, 17, 40707, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Paladin Retribution 80PvEP1BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Paladin', 'Retribution80PvEP1BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_auraoflight:30|t|r Use Retribution PvE P1 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Retribution80PvE', 'Retribution80PvE', 'WotLK Phase 1', 301),
('Paladin', 'Retribution80PvEP1BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_auraoflight:30|t|r Use Retribution PvE P1 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Retribution80PvE', 'Retribution80PvE', 'WotLK Phase 1', 301);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Paladin', 'Retribution80PvEP1BiS', @RACEMASK_HUMAN, 0, 40576, 3817, 3628, 3477, 0, 0, 0),
('Paladin', 'Retribution80PvEP1BiS', @RACEMASK_HUMAN, 1, 44664, 0, 3732, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP1BiS', @RACEMASK_HUMAN, 2, 40578, 3808, 3750, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP1BiS', @RACEMASK_HUMAN, 4, 40574, 3832, 3732, 3446, 0, 0, 0),
('Paladin', 'Retribution80PvEP1BiS', @RACEMASK_HUMAN, 5, 40260, 0, 3446, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP1BiS', @RACEMASK_HUMAN, 6, 40577, 3823, 3732, 3478, 0, 0, 0),
('Paladin', 'Retribution80PvEP1BiS', @RACEMASK_HUMAN, 7, 40591, 3606, 0, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP1BiS', @RACEMASK_HUMAN, 8, 40186, 3845, 0, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP1BiS', @RACEMASK_HUMAN, 9, 40541, 3604, 0, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP1BiS', @RACEMASK_HUMAN, 10, 40075, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP1BiS', @RACEMASK_HUMAN, 11, 40474, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP1BiS', @RACEMASK_HUMAN, 12, 42987, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP1BiS', @RACEMASK_HUMAN, 13, 40431, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP1BiS', @RACEMASK_HUMAN, 14, 40403, 3605, 0, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP1BiS', @RACEMASK_HUMAN, 15, 40384, 3789, 0, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP1BiS', @RACEMASK_HUMAN, 17, 42852, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP1BiS', @RACEMASK_A, 0, 40576, 3817, 3628, 3477, 0, 0, 0),
('Paladin', 'Retribution80PvEP1BiS', @RACEMASK_A, 1, 44664, 0, 3732, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP1BiS', @RACEMASK_A, 2, 40578, 3808, 3750, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP1BiS', @RACEMASK_A, 4, 40574, 3832, 3732, 3446, 0, 0, 0),
('Paladin', 'Retribution80PvEP1BiS', @RACEMASK_A, 5, 40260, 0, 3446, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP1BiS', @RACEMASK_A, 6, 40577, 3823, 3732, 3478, 0, 0, 0),
('Paladin', 'Retribution80PvEP1BiS', @RACEMASK_A, 7, 40591, 3606, 0, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP1BiS', @RACEMASK_A, 8, 40186, 3845, 0, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP1BiS', @RACEMASK_A, 9, 40541, 3604, 0, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP1BiS', @RACEMASK_A, 10, 40075, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP1BiS', @RACEMASK_A, 11, 40474, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP1BiS', @RACEMASK_A, 12, 42987, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP1BiS', @RACEMASK_A, 13, 40431, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP1BiS', @RACEMASK_A, 14, 40403, 3605, 0, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP1BiS', @RACEMASK_A, 15, 40384, 3789, 0, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP1BiS', @RACEMASK_A, 17, 42852, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP1BiS', @RACEMASK_H, 0, 40576, 3817, 3628, 3477, 0, 0, 0),
('Paladin', 'Retribution80PvEP1BiS', @RACEMASK_H, 1, 44664, 0, 3732, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP1BiS', @RACEMASK_H, 2, 40578, 3808, 3750, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP1BiS', @RACEMASK_H, 4, 40574, 3832, 3732, 3446, 0, 0, 0),
('Paladin', 'Retribution80PvEP1BiS', @RACEMASK_H, 5, 40260, 0, 3446, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP1BiS', @RACEMASK_H, 6, 40577, 3823, 3732, 3478, 0, 0, 0),
('Paladin', 'Retribution80PvEP1BiS', @RACEMASK_H, 7, 40591, 3606, 0, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP1BiS', @RACEMASK_H, 8, 40186, 3845, 0, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP1BiS', @RACEMASK_H, 9, 40541, 3604, 0, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP1BiS', @RACEMASK_H, 10, 40075, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP1BiS', @RACEMASK_H, 11, 40474, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP1BiS', @RACEMASK_H, 12, 42987, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP1BiS', @RACEMASK_H, 13, 40431, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP1BiS', @RACEMASK_H, 14, 40403, 3605, 0, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP1BiS', @RACEMASK_H, 15, 40384, 3789, 0, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP1BiS', @RACEMASK_H, 17, 42852, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Priest Discipline 80PvEP1BiSHeal (healer) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Priest', 'Discipline80PvEP1BiSHeal', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_wordfortitude:30|t|r Use Discipline PvE P1 BiS Heal', 7, @MINLEVEL, @MAXLEVEL, 'Discipline80PvE', 'Discipline80PvE', 'WotLK Phase 1', 301),
('Priest', 'Discipline80PvEP1BiSHeal', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_wordfortitude:30|t|r Use Discipline PvE P1 BiS Heal (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Discipline80PvE', 'Discipline80PvE', 'WotLK Phase 1', 301);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Priest', 'Discipline80PvEP1BiSHeal', @RACEMASK_HUMAN, 0, 40456, 3819, 3627, 3448, 0, 0, 0),
('Priest', 'Discipline80PvEP1BiSHeal', @RACEMASK_HUMAN, 1, 44657, 0, 3486, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP1BiSHeal', @RACEMASK_HUMAN, 2, 40450, 3809, 3734, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP1BiSHeal', @RACEMASK_HUMAN, 4, 40194, 3832, 3734, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP1BiSHeal', @RACEMASK_HUMAN, 5, 40271, 3601, 3473, 3448, 0, 0, 0),
('Priest', 'Discipline80PvEP1BiSHeal', @RACEMASK_HUMAN, 6, 40398, 3719, 3448, 3448, 0, 0, 0),
('Priest', 'Discipline80PvEP1BiSHeal', @RACEMASK_HUMAN, 7, 40236, 3606, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP1BiSHeal', @RACEMASK_HUMAN, 8, 40741, 2332, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP1BiSHeal', @RACEMASK_HUMAN, 9, 40445, 3246, 3734, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP1BiSHeal', @RACEMASK_HUMAN, 10, 40108, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP1BiSHeal', @RACEMASK_HUMAN, 11, 40433, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP1BiSHeal', @RACEMASK_HUMAN, 12, 42988, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP1BiSHeal', @RACEMASK_HUMAN, 13, 42132, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP1BiSHeal', @RACEMASK_HUMAN, 14, 40724, 3859, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP1BiSHeal', @RACEMASK_HUMAN, 15, 40395, 3834, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP1BiSHeal', @RACEMASK_HUMAN, 16, 40350, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP1BiSHeal', @RACEMASK_HUMAN, 17, 40245, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP1BiSHeal', @RACEMASK_A, 0, 40456, 3819, 3627, 3448, 0, 0, 0),
('Priest', 'Discipline80PvEP1BiSHeal', @RACEMASK_A, 1, 44657, 0, 3486, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP1BiSHeal', @RACEMASK_A, 2, 40450, 3809, 3734, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP1BiSHeal', @RACEMASK_A, 4, 40194, 3832, 3734, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP1BiSHeal', @RACEMASK_A, 5, 40271, 3601, 3473, 3448, 0, 0, 0),
('Priest', 'Discipline80PvEP1BiSHeal', @RACEMASK_A, 6, 40398, 3719, 3448, 3448, 0, 0, 0),
('Priest', 'Discipline80PvEP1BiSHeal', @RACEMASK_A, 7, 40236, 3606, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP1BiSHeal', @RACEMASK_A, 8, 40741, 2332, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP1BiSHeal', @RACEMASK_A, 9, 40445, 3246, 3734, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP1BiSHeal', @RACEMASK_A, 10, 40108, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP1BiSHeal', @RACEMASK_A, 11, 40433, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP1BiSHeal', @RACEMASK_A, 12, 42988, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP1BiSHeal', @RACEMASK_A, 13, 42132, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP1BiSHeal', @RACEMASK_A, 14, 40724, 3859, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP1BiSHeal', @RACEMASK_A, 15, 40395, 3834, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP1BiSHeal', @RACEMASK_A, 16, 40350, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP1BiSHeal', @RACEMASK_A, 17, 40245, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP1BiSHeal', @RACEMASK_H, 0, 40456, 3819, 3627, 3448, 0, 0, 0),
('Priest', 'Discipline80PvEP1BiSHeal', @RACEMASK_H, 1, 44657, 0, 3486, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP1BiSHeal', @RACEMASK_H, 2, 40450, 3809, 3734, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP1BiSHeal', @RACEMASK_H, 4, 40194, 3832, 3734, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP1BiSHeal', @RACEMASK_H, 5, 40271, 3601, 3473, 3448, 0, 0, 0),
('Priest', 'Discipline80PvEP1BiSHeal', @RACEMASK_H, 6, 40398, 3719, 3448, 3448, 0, 0, 0),
('Priest', 'Discipline80PvEP1BiSHeal', @RACEMASK_H, 7, 40236, 3606, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP1BiSHeal', @RACEMASK_H, 8, 40741, 2332, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP1BiSHeal', @RACEMASK_H, 9, 40445, 3246, 3734, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP1BiSHeal', @RACEMASK_H, 10, 40108, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP1BiSHeal', @RACEMASK_H, 11, 40433, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP1BiSHeal', @RACEMASK_H, 12, 42988, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP1BiSHeal', @RACEMASK_H, 13, 42132, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP1BiSHeal', @RACEMASK_H, 14, 40724, 3859, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP1BiSHeal', @RACEMASK_H, 15, 40395, 3834, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP1BiSHeal', @RACEMASK_H, 16, 40350, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP1BiSHeal', @RACEMASK_H, 17, 40245, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Priest Holy 80PvEP1BiSHeal (healer) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Priest', 'Holy80PvEP1BiSHeal', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Use Holy PvE P1 BiS Heal', 7, @MINLEVEL, @MAXLEVEL, 'Holy80PvE', 'Holy80PvE', 'WotLK Phase 1', 301),
('Priest', 'Holy80PvEP1BiSHeal', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Use Holy PvE P1 BiS Heal (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Holy80PvE', 'Holy80PvE', 'WotLK Phase 1', 301);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Priest', 'Holy80PvEP1BiSHeal', @RACEMASK_HUMAN, 0, 40447, 3819, 3627, 3486, 0, 0, 0),
('Priest', 'Holy80PvEP1BiSHeal', @RACEMASK_HUMAN, 1, 44657, 0, 3458, 0, 0, 0, 0),
('Priest', 'Holy80PvEP1BiSHeal', @RACEMASK_HUMAN, 2, 40450, 3809, 3458, 0, 0, 0, 0),
('Priest', 'Holy80PvEP1BiSHeal', @RACEMASK_HUMAN, 4, 40381, 3832, 3458, 3505, 0, 0, 0),
('Priest', 'Holy80PvEP1BiSHeal', @RACEMASK_HUMAN, 5, 40271, 3601, 3458, 3458, 0, 0, 0),
('Priest', 'Holy80PvEP1BiSHeal', @RACEMASK_HUMAN, 6, 40398, 3719, 3737, 3737, 0, 0, 0),
('Priest', 'Holy80PvEP1BiSHeal', @RACEMASK_HUMAN, 7, 40326, 3606, 3737, 0, 0, 0, 0),
('Priest', 'Holy80PvEP1BiSHeal', @RACEMASK_HUMAN, 8, 40741, 1119, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP1BiSHeal', @RACEMASK_HUMAN, 9, 40454, 3604, 3458, 0, 0, 0, 0),
('Priest', 'Holy80PvEP1BiSHeal', @RACEMASK_HUMAN, 10, 40719, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP1BiSHeal', @RACEMASK_HUMAN, 11, 40375, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP1BiSHeal', @RACEMASK_HUMAN, 12, 37111, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP1BiSHeal', @RACEMASK_HUMAN, 13, 42413, 0, 3458, 3458, 0, 0, 0),
('Priest', 'Holy80PvEP1BiSHeal', @RACEMASK_HUMAN, 14, 40723, 3831, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP1BiSHeal', @RACEMASK_HUMAN, 15, 40300, 3854, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP1BiSHeal', @RACEMASK_HUMAN, 17, 40245, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP1BiSHeal', @RACEMASK_A, 0, 40447, 3819, 3627, 3486, 0, 0, 0),
('Priest', 'Holy80PvEP1BiSHeal', @RACEMASK_A, 1, 44657, 0, 3458, 0, 0, 0, 0),
('Priest', 'Holy80PvEP1BiSHeal', @RACEMASK_A, 2, 40450, 3809, 3458, 0, 0, 0, 0),
('Priest', 'Holy80PvEP1BiSHeal', @RACEMASK_A, 4, 40381, 3832, 3458, 3505, 0, 0, 0),
('Priest', 'Holy80PvEP1BiSHeal', @RACEMASK_A, 5, 40271, 3601, 3458, 3458, 0, 0, 0),
('Priest', 'Holy80PvEP1BiSHeal', @RACEMASK_A, 6, 40398, 3719, 3737, 3737, 0, 0, 0),
('Priest', 'Holy80PvEP1BiSHeal', @RACEMASK_A, 7, 40326, 3606, 3737, 0, 0, 0, 0),
('Priest', 'Holy80PvEP1BiSHeal', @RACEMASK_A, 8, 40741, 1119, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP1BiSHeal', @RACEMASK_A, 9, 40454, 3604, 3458, 0, 0, 0, 0),
('Priest', 'Holy80PvEP1BiSHeal', @RACEMASK_A, 10, 40719, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP1BiSHeal', @RACEMASK_A, 11, 40375, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP1BiSHeal', @RACEMASK_A, 12, 37111, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP1BiSHeal', @RACEMASK_A, 13, 42413, 0, 3458, 3458, 0, 0, 0),
('Priest', 'Holy80PvEP1BiSHeal', @RACEMASK_A, 14, 40723, 3831, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP1BiSHeal', @RACEMASK_A, 15, 40300, 3854, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP1BiSHeal', @RACEMASK_A, 17, 40245, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP1BiSHeal', @RACEMASK_H, 0, 40447, 3819, 3627, 3486, 0, 0, 0),
('Priest', 'Holy80PvEP1BiSHeal', @RACEMASK_H, 1, 44657, 0, 3458, 0, 0, 0, 0),
('Priest', 'Holy80PvEP1BiSHeal', @RACEMASK_H, 2, 40450, 3809, 3458, 0, 0, 0, 0),
('Priest', 'Holy80PvEP1BiSHeal', @RACEMASK_H, 4, 40381, 3832, 3458, 3505, 0, 0, 0),
('Priest', 'Holy80PvEP1BiSHeal', @RACEMASK_H, 5, 40271, 3601, 3458, 3458, 0, 0, 0),
('Priest', 'Holy80PvEP1BiSHeal', @RACEMASK_H, 6, 40398, 3719, 3737, 3737, 0, 0, 0),
('Priest', 'Holy80PvEP1BiSHeal', @RACEMASK_H, 7, 40326, 3606, 3737, 0, 0, 0, 0),
('Priest', 'Holy80PvEP1BiSHeal', @RACEMASK_H, 8, 40741, 1119, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP1BiSHeal', @RACEMASK_H, 9, 40454, 3604, 3458, 0, 0, 0, 0),
('Priest', 'Holy80PvEP1BiSHeal', @RACEMASK_H, 10, 40719, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP1BiSHeal', @RACEMASK_H, 11, 40375, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP1BiSHeal', @RACEMASK_H, 12, 37111, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP1BiSHeal', @RACEMASK_H, 13, 42413, 0, 3458, 3458, 0, 0, 0),
('Priest', 'Holy80PvEP1BiSHeal', @RACEMASK_H, 14, 40723, 3831, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP1BiSHeal', @RACEMASK_H, 15, 40300, 3854, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP1BiSHeal', @RACEMASK_H, 17, 40245, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Priest Shadow 80PvEP1BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Priest', 'Shadow80PvEP1BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_shadow_shadowwordpain:30|t|r Use Shadow PvE P1 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Shadow80PvE', 'Shadow80PvE', 'WotLK Phase 1', 301),
('Priest', 'Shadow80PvEP1BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_shadow_shadowwordpain:30|t|r Use Shadow PvE P1 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Shadow80PvE', 'Shadow80PvE', 'WotLK Phase 1', 301);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Priest', 'Shadow80PvEP1BiS', @RACEMASK_HUMAN, 0, 40562, 3820, 3621, 3448, 0, 0, 0),
('Priest', 'Shadow80PvEP1BiS', @RACEMASK_HUMAN, 1, 44661, 0, 3472, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP1BiS', @RACEMASK_HUMAN, 2, 40555, 3810, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP1BiS', @RACEMASK_HUMAN, 4, 40234, 3832, 3448, 3448, 0, 0, 0),
('Priest', 'Shadow80PvEP1BiS', @RACEMASK_HUMAN, 5, 40561, 3601, 3448, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP1BiS', @RACEMASK_HUMAN, 6, 40560, 3872, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP1BiS', @RACEMASK_HUMAN, 7, 40558, 3606, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP1BiS', @RACEMASK_HUMAN, 8, 44008, 2332, 3448, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP1BiS', @RACEMASK_HUMAN, 9, 40454, 3604, 3448, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP1BiS', @RACEMASK_HUMAN, 10, 40719, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP1BiS', @RACEMASK_HUMAN, 11, 40399, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP1BiS', @RACEMASK_HUMAN, 12, 40255, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP1BiS', @RACEMASK_HUMAN, 13, 40432, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP1BiS', @RACEMASK_HUMAN, 14, 44005, 3722, 3472, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP1BiS', @RACEMASK_HUMAN, 15, 40395, 3834, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP1BiS', @RACEMASK_HUMAN, 16, 40273, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP1BiS', @RACEMASK_HUMAN, 17, 39712, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP1BiS', @RACEMASK_A, 0, 40562, 3820, 3621, 3448, 0, 0, 0),
('Priest', 'Shadow80PvEP1BiS', @RACEMASK_A, 1, 44661, 0, 3472, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP1BiS', @RACEMASK_A, 2, 40555, 3810, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP1BiS', @RACEMASK_A, 4, 40234, 3832, 3448, 3448, 0, 0, 0),
('Priest', 'Shadow80PvEP1BiS', @RACEMASK_A, 5, 40561, 3601, 3448, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP1BiS', @RACEMASK_A, 6, 40560, 3872, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP1BiS', @RACEMASK_A, 7, 40558, 3606, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP1BiS', @RACEMASK_A, 8, 44008, 2332, 3448, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP1BiS', @RACEMASK_A, 9, 40454, 3604, 3448, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP1BiS', @RACEMASK_A, 10, 40719, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP1BiS', @RACEMASK_A, 11, 40399, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP1BiS', @RACEMASK_A, 12, 40255, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP1BiS', @RACEMASK_A, 13, 40432, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP1BiS', @RACEMASK_A, 14, 44005, 3722, 3472, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP1BiS', @RACEMASK_A, 15, 40395, 3834, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP1BiS', @RACEMASK_A, 16, 40273, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP1BiS', @RACEMASK_A, 17, 39712, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP1BiS', @RACEMASK_H, 0, 40562, 3820, 3621, 3448, 0, 0, 0),
('Priest', 'Shadow80PvEP1BiS', @RACEMASK_H, 1, 44661, 0, 3472, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP1BiS', @RACEMASK_H, 2, 40555, 3810, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP1BiS', @RACEMASK_H, 4, 40234, 3832, 3448, 3448, 0, 0, 0),
('Priest', 'Shadow80PvEP1BiS', @RACEMASK_H, 5, 40561, 3601, 3448, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP1BiS', @RACEMASK_H, 6, 40560, 3872, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP1BiS', @RACEMASK_H, 7, 40558, 3606, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP1BiS', @RACEMASK_H, 8, 44008, 2332, 3448, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP1BiS', @RACEMASK_H, 9, 40454, 3604, 3448, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP1BiS', @RACEMASK_H, 10, 40719, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP1BiS', @RACEMASK_H, 11, 40399, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP1BiS', @RACEMASK_H, 12, 40255, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP1BiS', @RACEMASK_H, 13, 40432, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP1BiS', @RACEMASK_H, 14, 44005, 3722, 3472, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP1BiS', @RACEMASK_H, 15, 40395, 3834, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP1BiS', @RACEMASK_H, 16, 40273, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP1BiS', @RACEMASK_H, 17, 39712, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Rogue Assassination 80PvEP1BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Rogue', 'Assassination80PvEP1BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_rogue_eviscerate:30|t|r Use Assassination PvE P1 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Assassination80PvE', 'Assassination80PvE', 'WotLK Phase 1', 301),
('Rogue', 'Assassination80PvEP1BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_rogue_eviscerate:30|t|r Use Assassination PvE P1 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Assassination80PvE', 'Assassination80PvE', 'WotLK Phase 1', 301);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Rogue', 'Assassination80PvEP1BiS', @RACEMASK_HUMAN, 0, 40499, 3817, 3628, 3750, 0, 0, 0),
('Rogue', 'Assassination80PvEP1BiS', @RACEMASK_HUMAN, 1, 44664, 0, 3453, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP1BiS', @RACEMASK_HUMAN, 2, 40502, 3808, 3453, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP1BiS', @RACEMASK_HUMAN, 4, 40539, 3832, 3453, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP1BiS', @RACEMASK_HUMAN, 5, 40260, 0, 3449, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP1BiS', @RACEMASK_HUMAN, 6, 40500, 3823, 3453, 3453, 0, 0, 0),
('Rogue', 'Assassination80PvEP1BiS', @RACEMASK_HUMAN, 7, 39701, 3606, 0, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP1BiS', @RACEMASK_HUMAN, 8, 39765, 3845, 3453, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP1BiS', @RACEMASK_HUMAN, 9, 40496, 3604, 3492, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP1BiS', @RACEMASK_HUMAN, 10, 40074, 0, 0, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP1BiS', @RACEMASK_HUMAN, 11, 40474, 0, 0, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP1BiS', @RACEMASK_HUMAN, 12, 40684, 0, 0, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP1BiS', @RACEMASK_HUMAN, 13, 44253, 0, 0, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP1BiS', @RACEMASK_HUMAN, 14, 40403, 3605, 0, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP1BiS', @RACEMASK_HUMAN, 15, 39714, 3789, 0, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP1BiS', @RACEMASK_HUMAN, 16, 40386, 3789, 0, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP1BiS', @RACEMASK_HUMAN, 17, 40385, 0, 0, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP1BiS', @RACEMASK_A, 0, 40499, 3817, 3628, 3750, 0, 0, 0),
('Rogue', 'Assassination80PvEP1BiS', @RACEMASK_A, 1, 44664, 0, 3453, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP1BiS', @RACEMASK_A, 2, 40502, 3808, 3453, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP1BiS', @RACEMASK_A, 4, 40539, 3832, 3453, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP1BiS', @RACEMASK_A, 5, 40260, 0, 3449, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP1BiS', @RACEMASK_A, 6, 40500, 3823, 3453, 3453, 0, 0, 0),
('Rogue', 'Assassination80PvEP1BiS', @RACEMASK_A, 7, 39701, 3606, 0, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP1BiS', @RACEMASK_A, 8, 39765, 3845, 3453, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP1BiS', @RACEMASK_A, 9, 40496, 3604, 3492, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP1BiS', @RACEMASK_A, 10, 40074, 0, 0, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP1BiS', @RACEMASK_A, 11, 40474, 0, 0, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP1BiS', @RACEMASK_A, 12, 40684, 0, 0, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP1BiS', @RACEMASK_A, 13, 44253, 0, 0, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP1BiS', @RACEMASK_A, 14, 40403, 3605, 0, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP1BiS', @RACEMASK_A, 15, 39714, 3789, 0, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP1BiS', @RACEMASK_A, 16, 40386, 3789, 0, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP1BiS', @RACEMASK_A, 17, 40385, 0, 0, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP1BiS', @RACEMASK_H, 0, 40499, 3817, 3628, 3750, 0, 0, 0),
('Rogue', 'Assassination80PvEP1BiS', @RACEMASK_H, 1, 44664, 0, 3453, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP1BiS', @RACEMASK_H, 2, 40502, 3808, 3453, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP1BiS', @RACEMASK_H, 4, 40539, 3832, 3453, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP1BiS', @RACEMASK_H, 5, 40260, 0, 3449, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP1BiS', @RACEMASK_H, 6, 40500, 3823, 3453, 3453, 0, 0, 0),
('Rogue', 'Assassination80PvEP1BiS', @RACEMASK_H, 7, 39701, 3606, 0, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP1BiS', @RACEMASK_H, 8, 39765, 3845, 3453, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP1BiS', @RACEMASK_H, 9, 40496, 3604, 3492, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP1BiS', @RACEMASK_H, 10, 40074, 0, 0, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP1BiS', @RACEMASK_H, 11, 40474, 0, 0, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP1BiS', @RACEMASK_H, 12, 40684, 0, 0, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP1BiS', @RACEMASK_H, 13, 44253, 0, 0, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP1BiS', @RACEMASK_H, 14, 40403, 3605, 0, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP1BiS', @RACEMASK_H, 15, 39714, 3789, 0, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP1BiS', @RACEMASK_H, 16, 40386, 3789, 0, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP1BiS', @RACEMASK_H, 17, 40385, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Rogue Combat 80PvEP1BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Rogue', 'Combat80PvEP1BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_backstab:30|t|r Use Combat PvE P1 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Combat80PvE', 'Combat80PvE', 'WotLK Phase 1', 301),
('Rogue', 'Combat80PvEP1BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_backstab:30|t|r Use Combat PvE P1 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Combat80PvE', 'Combat80PvE', 'WotLK Phase 1', 301);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Rogue', 'Combat80PvEP1BiS', @RACEMASK_HUMAN, 0, 40499, 3817, 3628, 3750, 0, 0, 0),
('Rogue', 'Combat80PvEP1BiS', @RACEMASK_HUMAN, 1, 44664, 0, 3449, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP1BiS', @RACEMASK_HUMAN, 2, 40502, 3808, 3497, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP1BiS', @RACEMASK_HUMAN, 4, 40539, 3832, 3449, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP1BiS', @RACEMASK_HUMAN, 5, 40205, 0, 3449, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP1BiS', @RACEMASK_HUMAN, 6, 44011, 3823, 3449, 3449, 0, 0, 0),
('Rogue', 'Combat80PvEP1BiS', @RACEMASK_HUMAN, 7, 39701, 3606, 0, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP1BiS', @RACEMASK_HUMAN, 8, 39765, 3845, 3449, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP1BiS', @RACEMASK_HUMAN, 9, 40541, 3604, 0, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP1BiS', @RACEMASK_HUMAN, 10, 40074, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP1BiS', @RACEMASK_HUMAN, 11, 40474, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP1BiS', @RACEMASK_HUMAN, 12, 40684, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP1BiS', @RACEMASK_HUMAN, 13, 44253, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP1BiS', @RACEMASK_HUMAN, 14, 40403, 3605, 0, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP1BiS', @RACEMASK_HUMAN, 15, 40383, 3789, 0, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP1BiS', @RACEMASK_HUMAN, 16, 39714, 3789, 0, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP1BiS', @RACEMASK_HUMAN, 17, 40385, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP1BiS', @RACEMASK_A, 0, 40499, 3817, 3628, 3750, 0, 0, 0),
('Rogue', 'Combat80PvEP1BiS', @RACEMASK_A, 1, 44664, 0, 3449, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP1BiS', @RACEMASK_A, 2, 40502, 3808, 3497, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP1BiS', @RACEMASK_A, 4, 40539, 3832, 3449, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP1BiS', @RACEMASK_A, 5, 40205, 0, 3449, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP1BiS', @RACEMASK_A, 6, 44011, 3823, 3449, 3449, 0, 0, 0),
('Rogue', 'Combat80PvEP1BiS', @RACEMASK_A, 7, 39701, 3606, 0, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP1BiS', @RACEMASK_A, 8, 39765, 3845, 3449, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP1BiS', @RACEMASK_A, 9, 40541, 3604, 0, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP1BiS', @RACEMASK_A, 10, 40074, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP1BiS', @RACEMASK_A, 11, 40474, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP1BiS', @RACEMASK_A, 12, 40684, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP1BiS', @RACEMASK_A, 13, 44253, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP1BiS', @RACEMASK_A, 14, 40403, 3605, 0, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP1BiS', @RACEMASK_A, 15, 40383, 3789, 0, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP1BiS', @RACEMASK_A, 16, 39714, 3789, 0, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP1BiS', @RACEMASK_A, 17, 40385, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP1BiS', @RACEMASK_H, 0, 40499, 3817, 3628, 3750, 0, 0, 0),
('Rogue', 'Combat80PvEP1BiS', @RACEMASK_H, 1, 44664, 0, 3449, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP1BiS', @RACEMASK_H, 2, 40502, 3808, 3497, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP1BiS', @RACEMASK_H, 4, 40539, 3832, 3449, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP1BiS', @RACEMASK_H, 5, 40205, 0, 3449, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP1BiS', @RACEMASK_H, 6, 44011, 3823, 3449, 3449, 0, 0, 0),
('Rogue', 'Combat80PvEP1BiS', @RACEMASK_H, 7, 39701, 3606, 0, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP1BiS', @RACEMASK_H, 8, 39765, 3845, 3449, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP1BiS', @RACEMASK_H, 9, 40541, 3604, 0, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP1BiS', @RACEMASK_H, 10, 40074, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP1BiS', @RACEMASK_H, 11, 40474, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP1BiS', @RACEMASK_H, 12, 40684, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP1BiS', @RACEMASK_H, 13, 44253, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP1BiS', @RACEMASK_H, 14, 40403, 3605, 0, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP1BiS', @RACEMASK_H, 15, 40383, 3789, 0, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP1BiS', @RACEMASK_H, 16, 39714, 3789, 0, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP1BiS', @RACEMASK_H, 17, 40385, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Rogue Subtlety 80PvEP1BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Rogue', 'Subtlety80PvEP1BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_stealth:30|t|r Use Subtlety PvE P1 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Subtlety80PvE', 'Subtlety80PvE', 'WotLK Phase 1', 301),
('Rogue', 'Subtlety80PvEP1BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_stealth:30|t|r Use Subtlety PvE P1 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Subtlety80PvE', 'Subtlety80PvE', 'WotLK Phase 1', 301);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Rogue', 'Subtlety80PvEP1BiS', @RACEMASK_HUMAN, 0, 40499, 3817, 3628, 3750, 0, 0, 0),
('Rogue', 'Subtlety80PvEP1BiS', @RACEMASK_HUMAN, 1, 44664, 0, 3453, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP1BiS', @RACEMASK_HUMAN, 2, 40502, 3808, 3453, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP1BiS', @RACEMASK_HUMAN, 4, 40539, 3832, 3453, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP1BiS', @RACEMASK_HUMAN, 5, 40260, 0, 3447, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP1BiS', @RACEMASK_HUMAN, 6, 40500, 3823, 3453, 3453, 0, 0, 0),
('Rogue', 'Subtlety80PvEP1BiS', @RACEMASK_HUMAN, 7, 39701, 3606, 0, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP1BiS', @RACEMASK_HUMAN, 8, 39765, 3845, 3453, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP1BiS', @RACEMASK_HUMAN, 9, 40496, 3604, 3483, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP1BiS', @RACEMASK_HUMAN, 10, 40074, 0, 0, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP1BiS', @RACEMASK_HUMAN, 11, 40474, 0, 0, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP1BiS', @RACEMASK_HUMAN, 12, 40684, 0, 0, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP1BiS', @RACEMASK_HUMAN, 13, 44253, 0, 0, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP1BiS', @RACEMASK_HUMAN, 14, 40403, 3605, 0, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP1BiS', @RACEMASK_HUMAN, 15, 40386, 3789, 0, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP1BiS', @RACEMASK_HUMAN, 16, 39714, 3789, 0, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP1BiS', @RACEMASK_HUMAN, 17, 40385, 0, 0, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP1BiS', @RACEMASK_A, 0, 40499, 3817, 3628, 3750, 0, 0, 0),
('Rogue', 'Subtlety80PvEP1BiS', @RACEMASK_A, 1, 44664, 0, 3453, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP1BiS', @RACEMASK_A, 2, 40502, 3808, 3453, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP1BiS', @RACEMASK_A, 4, 40539, 3832, 3453, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP1BiS', @RACEMASK_A, 5, 40260, 0, 3447, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP1BiS', @RACEMASK_A, 6, 40500, 3823, 3453, 3453, 0, 0, 0),
('Rogue', 'Subtlety80PvEP1BiS', @RACEMASK_A, 7, 39701, 3606, 0, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP1BiS', @RACEMASK_A, 8, 39765, 3845, 3453, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP1BiS', @RACEMASK_A, 9, 40496, 3604, 3483, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP1BiS', @RACEMASK_A, 10, 40074, 0, 0, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP1BiS', @RACEMASK_A, 11, 40474, 0, 0, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP1BiS', @RACEMASK_A, 12, 40684, 0, 0, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP1BiS', @RACEMASK_A, 13, 44253, 0, 0, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP1BiS', @RACEMASK_A, 14, 40403, 3605, 0, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP1BiS', @RACEMASK_A, 15, 40386, 3789, 0, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP1BiS', @RACEMASK_A, 16, 39714, 3789, 0, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP1BiS', @RACEMASK_A, 17, 40385, 0, 0, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP1BiS', @RACEMASK_H, 0, 40499, 3817, 3628, 3750, 0, 0, 0),
('Rogue', 'Subtlety80PvEP1BiS', @RACEMASK_H, 1, 44664, 0, 3453, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP1BiS', @RACEMASK_H, 2, 40502, 3808, 3453, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP1BiS', @RACEMASK_H, 4, 40539, 3832, 3453, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP1BiS', @RACEMASK_H, 5, 40260, 0, 3447, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP1BiS', @RACEMASK_H, 6, 40500, 3823, 3453, 3453, 0, 0, 0),
('Rogue', 'Subtlety80PvEP1BiS', @RACEMASK_H, 7, 39701, 3606, 0, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP1BiS', @RACEMASK_H, 8, 39765, 3845, 3453, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP1BiS', @RACEMASK_H, 9, 40496, 3604, 3483, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP1BiS', @RACEMASK_H, 10, 40074, 0, 0, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP1BiS', @RACEMASK_H, 11, 40474, 0, 0, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP1BiS', @RACEMASK_H, 12, 40684, 0, 0, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP1BiS', @RACEMASK_H, 13, 44253, 0, 0, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP1BiS', @RACEMASK_H, 14, 40403, 3605, 0, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP1BiS', @RACEMASK_H, 15, 40386, 3789, 0, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP1BiS', @RACEMASK_H, 16, 39714, 3789, 0, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP1BiS', @RACEMASK_H, 17, 40385, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Shaman Elemental 80PvEP1BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Shaman', 'Elemental80PvEP1BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_lightning:30|t|r Use Elemental PvE P1 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Elemental80PvE', 'Elemental80PvE', 'WotLK Phase 1', 301),
('Shaman', 'Elemental80PvEP1BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_lightning:30|t|r Use Elemental PvE P1 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Elemental80PvE', 'Elemental80PvE', 'WotLK Phase 1', 301);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Shaman', 'Elemental80PvEP1BiS', @RACEMASK_HUMAN, 0, 40516, 3820, 3621, 3512, 0, 0, 0),
('Shaman', 'Elemental80PvEP1BiS', @RACEMASK_HUMAN, 1, 44661, 0, 3512, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP1BiS', @RACEMASK_HUMAN, 2, 40286, 3810, 0, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP1BiS', @RACEMASK_HUMAN, 4, 40514, 3832, 3448, 3448, 0, 0, 0),
('Shaman', 'Elemental80PvEP1BiS', @RACEMASK_HUMAN, 5, 40301, 0, 3448, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP1BiS', @RACEMASK_HUMAN, 6, 40560, 3721, 0, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP1BiS', @RACEMASK_HUMAN, 7, 40519, 3826, 0, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP1BiS', @RACEMASK_HUMAN, 8, 40324, 2332, 3448, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP1BiS', @RACEMASK_HUMAN, 9, 40302, 3246, 0, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP1BiS', @RACEMASK_HUMAN, 10, 40399, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP1BiS', @RACEMASK_HUMAN, 11, 37694, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP1BiS', @RACEMASK_HUMAN, 12, 40432, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP1BiS', @RACEMASK_HUMAN, 13, 40255, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP1BiS', @RACEMASK_HUMAN, 14, 44005, 3831, 3448, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP1BiS', @RACEMASK_HUMAN, 15, 40395, 3834, 0, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP1BiS', @RACEMASK_HUMAN, 16, 40401, 1128, 0, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP1BiS', @RACEMASK_HUMAN, 17, 40267, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP1BiS', @RACEMASK_A, 0, 40516, 3820, 3621, 3512, 0, 0, 0),
('Shaman', 'Elemental80PvEP1BiS', @RACEMASK_A, 1, 44661, 0, 3512, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP1BiS', @RACEMASK_A, 2, 40286, 3810, 0, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP1BiS', @RACEMASK_A, 4, 40514, 3832, 3448, 3448, 0, 0, 0),
('Shaman', 'Elemental80PvEP1BiS', @RACEMASK_A, 5, 40301, 0, 3448, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP1BiS', @RACEMASK_A, 6, 40560, 3721, 0, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP1BiS', @RACEMASK_A, 7, 40519, 3826, 0, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP1BiS', @RACEMASK_A, 8, 40324, 2332, 3448, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP1BiS', @RACEMASK_A, 9, 40302, 3246, 0, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP1BiS', @RACEMASK_A, 10, 40399, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP1BiS', @RACEMASK_A, 11, 37694, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP1BiS', @RACEMASK_A, 12, 40432, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP1BiS', @RACEMASK_A, 13, 40255, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP1BiS', @RACEMASK_A, 14, 44005, 3831, 3448, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP1BiS', @RACEMASK_A, 15, 40395, 3834, 0, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP1BiS', @RACEMASK_A, 16, 40401, 1128, 0, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP1BiS', @RACEMASK_A, 17, 40267, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP1BiS', @RACEMASK_H, 0, 40516, 3820, 3621, 3512, 0, 0, 0),
('Shaman', 'Elemental80PvEP1BiS', @RACEMASK_H, 1, 44661, 0, 3512, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP1BiS', @RACEMASK_H, 2, 40286, 3810, 0, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP1BiS', @RACEMASK_H, 4, 40514, 3832, 3448, 3448, 0, 0, 0),
('Shaman', 'Elemental80PvEP1BiS', @RACEMASK_H, 5, 40301, 0, 3448, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP1BiS', @RACEMASK_H, 6, 40560, 3721, 0, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP1BiS', @RACEMASK_H, 7, 40519, 3826, 0, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP1BiS', @RACEMASK_H, 8, 40324, 2332, 3448, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP1BiS', @RACEMASK_H, 9, 40302, 3246, 0, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP1BiS', @RACEMASK_H, 10, 40399, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP1BiS', @RACEMASK_H, 11, 37694, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP1BiS', @RACEMASK_H, 12, 40432, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP1BiS', @RACEMASK_H, 13, 40255, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP1BiS', @RACEMASK_H, 14, 44005, 3831, 3448, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP1BiS', @RACEMASK_H, 15, 40395, 3834, 0, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP1BiS', @RACEMASK_H, 16, 40401, 1128, 0, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP1BiS', @RACEMASK_H, 17, 40267, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Shaman Enhancement 80PvEP1BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Shaman', 'Enhancement80PvEP1BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_lightningshield:30|t|r Use Enhancement PvE P1 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Enhancement80PvE', 'Enhancement80PvE', 'WotLK Phase 1', 301),
('Shaman', 'Enhancement80PvEP1BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_lightningshield:30|t|r Use Enhancement PvE P1 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Enhancement80PvE', 'Enhancement80PvE', 'WotLK Phase 1', 301);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Shaman', 'Enhancement80PvEP1BiS', @RACEMASK_HUMAN, 0, 40543, 3817, 3628, 3460, 0, 0, 0),
('Shaman', 'Enhancement80PvEP1BiS', @RACEMASK_HUMAN, 1, 44661, 0, 3460, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP1BiS', @RACEMASK_HUMAN, 2, 40524, 3808, 3453, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP1BiS', @RACEMASK_HUMAN, 4, 40523, 3832, 3453, 3471, 0, 0, 0),
('Shaman', 'Enhancement80PvEP1BiS', @RACEMASK_HUMAN, 5, 39762, 0, 3460, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP1BiS', @RACEMASK_HUMAN, 6, 40522, 3823, 3497, 3460, 0, 0, 0),
('Shaman', 'Enhancement80PvEP1BiS', @RACEMASK_HUMAN, 7, 40367, 3826, 3460, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP1BiS', @RACEMASK_HUMAN, 8, 40736, 3845, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP1BiS', @RACEMASK_HUMAN, 9, 40520, 1603, 3453, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP1BiS', @RACEMASK_HUMAN, 10, 40474, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP1BiS', @RACEMASK_HUMAN, 11, 40074, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP1BiS', @RACEMASK_HUMAN, 12, 40684, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP1BiS', @RACEMASK_HUMAN, 13, 37390, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP1BiS', @RACEMASK_HUMAN, 14, 40403, 1099, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP1BiS', @RACEMASK_HUMAN, 15, 39763, 3789, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP1BiS', @RACEMASK_HUMAN, 16, 39468, 3789, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP1BiS', @RACEMASK_HUMAN, 17, 40322, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP1BiS', @RACEMASK_A, 0, 40543, 3817, 3628, 3460, 0, 0, 0),
('Shaman', 'Enhancement80PvEP1BiS', @RACEMASK_A, 1, 44661, 0, 3460, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP1BiS', @RACEMASK_A, 2, 40524, 3808, 3453, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP1BiS', @RACEMASK_A, 4, 40523, 3832, 3453, 3471, 0, 0, 0),
('Shaman', 'Enhancement80PvEP1BiS', @RACEMASK_A, 5, 39762, 0, 3460, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP1BiS', @RACEMASK_A, 6, 40522, 3823, 3497, 3460, 0, 0, 0),
('Shaman', 'Enhancement80PvEP1BiS', @RACEMASK_A, 7, 40367, 3826, 3460, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP1BiS', @RACEMASK_A, 8, 40736, 3845, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP1BiS', @RACEMASK_A, 9, 40520, 1603, 3453, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP1BiS', @RACEMASK_A, 10, 40474, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP1BiS', @RACEMASK_A, 11, 40074, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP1BiS', @RACEMASK_A, 12, 40684, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP1BiS', @RACEMASK_A, 13, 37390, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP1BiS', @RACEMASK_A, 14, 40403, 1099, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP1BiS', @RACEMASK_A, 15, 39763, 3789, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP1BiS', @RACEMASK_A, 16, 39468, 3789, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP1BiS', @RACEMASK_A, 17, 40322, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP1BiS', @RACEMASK_H, 0, 40543, 3817, 3628, 3460, 0, 0, 0),
('Shaman', 'Enhancement80PvEP1BiS', @RACEMASK_H, 1, 44661, 0, 3460, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP1BiS', @RACEMASK_H, 2, 40524, 3808, 3453, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP1BiS', @RACEMASK_H, 4, 40523, 3832, 3453, 3471, 0, 0, 0),
('Shaman', 'Enhancement80PvEP1BiS', @RACEMASK_H, 5, 39762, 0, 3460, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP1BiS', @RACEMASK_H, 6, 40522, 3823, 3497, 3460, 0, 0, 0),
('Shaman', 'Enhancement80PvEP1BiS', @RACEMASK_H, 7, 40367, 3826, 3460, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP1BiS', @RACEMASK_H, 8, 40736, 3845, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP1BiS', @RACEMASK_H, 9, 40520, 1603, 3453, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP1BiS', @RACEMASK_H, 10, 40474, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP1BiS', @RACEMASK_H, 11, 40074, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP1BiS', @RACEMASK_H, 12, 40684, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP1BiS', @RACEMASK_H, 13, 37390, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP1BiS', @RACEMASK_H, 14, 40403, 1099, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP1BiS', @RACEMASK_H, 15, 39763, 3789, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP1BiS', @RACEMASK_H, 16, 39468, 3789, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP1BiS', @RACEMASK_H, 17, 40322, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Shaman Restoration 80PvEP1BiSHeal (healer) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Shaman', 'Restoration80PvEP1BiSHeal', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_magicimmunity:30|t|r Use Restoration PvE P1 BiS Heal', 7, @MINLEVEL, @MAXLEVEL, 'Restoration80PvE', 'Restoration80PvE', 'WotLK Phase 1', 301),
('Shaman', 'Restoration80PvEP1BiSHeal', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_magicimmunity:30|t|r Use Restoration PvE P1 BiS Heal (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Restoration80PvE', 'Restoration80PvE', 'WotLK Phase 1', 301);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Shaman', 'Restoration80PvEP1BiSHeal', @RACEMASK_HUMAN, 0, 40510, 3820, 3627, 3448, 0, 0, 0),
('Shaman', 'Restoration80PvEP1BiSHeal', @RACEMASK_HUMAN, 1, 44662, 0, 3490, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP1BiSHeal', @RACEMASK_HUMAN, 2, 40513, 3810, 3448, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP1BiSHeal', @RACEMASK_HUMAN, 4, 40508, 2381, 3448, 3490, 0, 0, 0),
('Shaman', 'Restoration80PvEP1BiSHeal', @RACEMASK_HUMAN, 5, 40327, 0, 3448, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP1BiSHeal', @RACEMASK_HUMAN, 6, 40512, 3721, 3448, 3473, 0, 0, 0),
('Shaman', 'Restoration80PvEP1BiSHeal', @RACEMASK_HUMAN, 7, 39734, 3244, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP1BiSHeal', @RACEMASK_HUMAN, 8, 40209, 2332, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP1BiSHeal', @RACEMASK_HUMAN, 9, 40564, 3246, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP1BiSHeal', @RACEMASK_HUMAN, 10, 40399, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP1BiSHeal', @RACEMASK_HUMAN, 11, 40375, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP1BiSHeal', @RACEMASK_HUMAN, 12, 37111, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP1BiSHeal', @RACEMASK_HUMAN, 13, 40685, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP1BiSHeal', @RACEMASK_HUMAN, 14, 44005, 3831, 3473, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP1BiSHeal', @RACEMASK_HUMAN, 15, 40395, 3834, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP1BiSHeal', @RACEMASK_HUMAN, 16, 40401, 1128, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP1BiSHeal', @RACEMASK_HUMAN, 17, 40709, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP1BiSHeal', @RACEMASK_A, 0, 40510, 3820, 3627, 3448, 0, 0, 0),
('Shaman', 'Restoration80PvEP1BiSHeal', @RACEMASK_A, 1, 44662, 0, 3490, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP1BiSHeal', @RACEMASK_A, 2, 40513, 3810, 3448, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP1BiSHeal', @RACEMASK_A, 4, 40508, 2381, 3448, 3490, 0, 0, 0),
('Shaman', 'Restoration80PvEP1BiSHeal', @RACEMASK_A, 5, 40327, 0, 3448, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP1BiSHeal', @RACEMASK_A, 6, 40512, 3721, 3448, 3473, 0, 0, 0),
('Shaman', 'Restoration80PvEP1BiSHeal', @RACEMASK_A, 7, 39734, 3244, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP1BiSHeal', @RACEMASK_A, 8, 40209, 2332, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP1BiSHeal', @RACEMASK_A, 9, 40564, 3246, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP1BiSHeal', @RACEMASK_A, 10, 40399, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP1BiSHeal', @RACEMASK_A, 11, 40375, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP1BiSHeal', @RACEMASK_A, 12, 37111, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP1BiSHeal', @RACEMASK_A, 13, 40685, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP1BiSHeal', @RACEMASK_A, 14, 44005, 3831, 3473, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP1BiSHeal', @RACEMASK_A, 15, 40395, 3834, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP1BiSHeal', @RACEMASK_A, 16, 40401, 1128, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP1BiSHeal', @RACEMASK_A, 17, 40709, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP1BiSHeal', @RACEMASK_H, 0, 40510, 3820, 3627, 3448, 0, 0, 0),
('Shaman', 'Restoration80PvEP1BiSHeal', @RACEMASK_H, 1, 44662, 0, 3490, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP1BiSHeal', @RACEMASK_H, 2, 40513, 3810, 3448, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP1BiSHeal', @RACEMASK_H, 4, 40508, 2381, 3448, 3490, 0, 0, 0),
('Shaman', 'Restoration80PvEP1BiSHeal', @RACEMASK_H, 5, 40327, 0, 3448, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP1BiSHeal', @RACEMASK_H, 6, 40512, 3721, 3448, 3473, 0, 0, 0),
('Shaman', 'Restoration80PvEP1BiSHeal', @RACEMASK_H, 7, 39734, 3244, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP1BiSHeal', @RACEMASK_H, 8, 40209, 2332, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP1BiSHeal', @RACEMASK_H, 9, 40564, 3246, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP1BiSHeal', @RACEMASK_H, 10, 40399, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP1BiSHeal', @RACEMASK_H, 11, 40375, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP1BiSHeal', @RACEMASK_H, 12, 37111, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP1BiSHeal', @RACEMASK_H, 13, 40685, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP1BiSHeal', @RACEMASK_H, 14, 44005, 3831, 3473, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP1BiSHeal', @RACEMASK_H, 15, 40395, 3834, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP1BiSHeal', @RACEMASK_H, 16, 40401, 1128, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP1BiSHeal', @RACEMASK_H, 17, 40709, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warlock Affliction 80PvEP1BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Warlock', 'Affliction80PvEP1BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_shadow_deathcoil:30|t|r Use Affliction PvE P1 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Affliction80PvE', 'Affliction80PvE', 'WotLK Phase 1', 301),
('Warlock', 'Affliction80PvEP1BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_shadow_deathcoil:30|t|r Use Affliction PvE P1 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Affliction80PvE', 'Affliction80PvE', 'WotLK Phase 1', 301);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warlock', 'Affliction80PvEP1BiS', @RACEMASK_HUMAN, 0, 40421, 3820, 3621, 3490, 0, 0, 0),
('Warlock', 'Affliction80PvEP1BiS', @RACEMASK_HUMAN, 1, 44661, 0, 3472, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP1BiS', @RACEMASK_HUMAN, 2, 40424, 3810, 3448, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP1BiS', @RACEMASK_HUMAN, 4, 40423, 1144, 3448, 3448, 0, 0, 0),
('Warlock', 'Affliction80PvEP1BiS', @RACEMASK_HUMAN, 5, 40561, 3601, 3448, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP1BiS', @RACEMASK_HUMAN, 6, 40560, 3719, 0, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP1BiS', @RACEMASK_HUMAN, 7, 40558, 3606, 0, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP1BiS', @RACEMASK_HUMAN, 8, 44008, 2332, 3448, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP1BiS', @RACEMASK_HUMAN, 9, 40420, 3604, 3448, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP1BiS', @RACEMASK_HUMAN, 10, 40719, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP1BiS', @RACEMASK_HUMAN, 11, 40399, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP1BiS', @RACEMASK_HUMAN, 12, 40255, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP1BiS', @RACEMASK_HUMAN, 13, 40432, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP1BiS', @RACEMASK_HUMAN, 14, 44005, 3722, 3472, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP1BiS', @RACEMASK_HUMAN, 15, 40396, 3834, 0, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP1BiS', @RACEMASK_HUMAN, 16, 39766, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP1BiS', @RACEMASK_HUMAN, 17, 39426, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP1BiS', @RACEMASK_A, 0, 40421, 3820, 3621, 3490, 0, 0, 0),
('Warlock', 'Affliction80PvEP1BiS', @RACEMASK_A, 1, 44661, 0, 3472, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP1BiS', @RACEMASK_A, 2, 40424, 3810, 3448, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP1BiS', @RACEMASK_A, 4, 40423, 1144, 3448, 3448, 0, 0, 0),
('Warlock', 'Affliction80PvEP1BiS', @RACEMASK_A, 5, 40561, 3601, 3448, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP1BiS', @RACEMASK_A, 6, 40560, 3719, 0, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP1BiS', @RACEMASK_A, 7, 40558, 3606, 0, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP1BiS', @RACEMASK_A, 8, 44008, 2332, 3448, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP1BiS', @RACEMASK_A, 9, 40420, 3604, 3448, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP1BiS', @RACEMASK_A, 10, 40719, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP1BiS', @RACEMASK_A, 11, 40399, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP1BiS', @RACEMASK_A, 12, 40255, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP1BiS', @RACEMASK_A, 13, 40432, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP1BiS', @RACEMASK_A, 14, 44005, 3722, 3472, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP1BiS', @RACEMASK_A, 15, 40396, 3834, 0, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP1BiS', @RACEMASK_A, 16, 39766, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP1BiS', @RACEMASK_A, 17, 39426, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP1BiS', @RACEMASK_H, 0, 40421, 3820, 3621, 3490, 0, 0, 0),
('Warlock', 'Affliction80PvEP1BiS', @RACEMASK_H, 1, 44661, 0, 3472, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP1BiS', @RACEMASK_H, 2, 40424, 3810, 3448, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP1BiS', @RACEMASK_H, 4, 40423, 1144, 3448, 3448, 0, 0, 0),
('Warlock', 'Affliction80PvEP1BiS', @RACEMASK_H, 5, 40561, 3601, 3448, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP1BiS', @RACEMASK_H, 6, 40560, 3719, 0, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP1BiS', @RACEMASK_H, 7, 40558, 3606, 0, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP1BiS', @RACEMASK_H, 8, 44008, 2332, 3448, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP1BiS', @RACEMASK_H, 9, 40420, 3604, 3448, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP1BiS', @RACEMASK_H, 10, 40719, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP1BiS', @RACEMASK_H, 11, 40399, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP1BiS', @RACEMASK_H, 12, 40255, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP1BiS', @RACEMASK_H, 13, 40432, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP1BiS', @RACEMASK_H, 14, 44005, 3722, 3472, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP1BiS', @RACEMASK_H, 15, 40396, 3834, 0, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP1BiS', @RACEMASK_H, 16, 39766, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP1BiS', @RACEMASK_H, 17, 39712, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warlock Demonology 80PvEP1BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Warlock', 'Demonology80PvEP1BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_shadow_metamorphosis:30|t|r Use Demonology PvE P1 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Demonology80PvE', 'Demonology80PvE', 'WotLK Phase 1', 301),
('Warlock', 'Demonology80PvEP1BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_shadow_metamorphosis:30|t|r Use Demonology PvE P1 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Demonology80PvE', 'Demonology80PvE', 'WotLK Phase 1', 301);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warlock', 'Demonology80PvEP1BiS', @RACEMASK_HUMAN, 0, 40421, 3820, 3621, 3488, 0, 0, 0),
('Warlock', 'Demonology80PvEP1BiS', @RACEMASK_HUMAN, 1, 44661, 0, 3472, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP1BiS', @RACEMASK_HUMAN, 2, 40424, 3810, 3448, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP1BiS', @RACEMASK_HUMAN, 4, 40423, 1144, 3448, 3488, 0, 0, 0),
('Warlock', 'Demonology80PvEP1BiS', @RACEMASK_HUMAN, 5, 40561, 3601, 3448, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP1BiS', @RACEMASK_HUMAN, 6, 40398, 3719, 3448, 3472, 0, 0, 0),
('Warlock', 'Demonology80PvEP1BiS', @RACEMASK_HUMAN, 7, 40558, 3606, 0, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP1BiS', @RACEMASK_HUMAN, 8, 44008, 2332, 3448, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP1BiS', @RACEMASK_HUMAN, 9, 40420, 3246, 3448, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP1BiS', @RACEMASK_HUMAN, 10, 40080, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP1BiS', @RACEMASK_HUMAN, 11, 40719, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP1BiS', @RACEMASK_HUMAN, 12, 40255, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP1BiS', @RACEMASK_HUMAN, 13, 40682, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP1BiS', @RACEMASK_HUMAN, 14, 40405, 3722, 0, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP1BiS', @RACEMASK_HUMAN, 15, 40396, 3834, 0, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP1BiS', @RACEMASK_HUMAN, 16, 39766, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP1BiS', @RACEMASK_HUMAN, 17, 39426, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP1BiS', @RACEMASK_A, 0, 40421, 3820, 3621, 3488, 0, 0, 0),
('Warlock', 'Demonology80PvEP1BiS', @RACEMASK_A, 1, 44661, 0, 3472, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP1BiS', @RACEMASK_A, 2, 40424, 3810, 3448, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP1BiS', @RACEMASK_A, 4, 40423, 1144, 3448, 3488, 0, 0, 0),
('Warlock', 'Demonology80PvEP1BiS', @RACEMASK_A, 5, 40561, 3601, 3448, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP1BiS', @RACEMASK_A, 6, 40398, 3719, 3448, 3472, 0, 0, 0),
('Warlock', 'Demonology80PvEP1BiS', @RACEMASK_A, 7, 40558, 3606, 0, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP1BiS', @RACEMASK_A, 8, 44008, 2332, 3448, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP1BiS', @RACEMASK_A, 9, 40420, 3246, 3448, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP1BiS', @RACEMASK_A, 10, 40080, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP1BiS', @RACEMASK_A, 11, 40719, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP1BiS', @RACEMASK_A, 12, 40255, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP1BiS', @RACEMASK_A, 13, 40682, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP1BiS', @RACEMASK_A, 14, 40405, 3722, 0, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP1BiS', @RACEMASK_A, 15, 40396, 3834, 0, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP1BiS', @RACEMASK_A, 16, 39766, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP1BiS', @RACEMASK_A, 17, 39426, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP1BiS', @RACEMASK_H, 0, 40421, 3820, 3621, 3488, 0, 0, 0),
('Warlock', 'Demonology80PvEP1BiS', @RACEMASK_H, 1, 44661, 0, 3472, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP1BiS', @RACEMASK_H, 2, 40424, 3810, 3448, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP1BiS', @RACEMASK_H, 4, 40423, 1144, 3448, 3488, 0, 0, 0),
('Warlock', 'Demonology80PvEP1BiS', @RACEMASK_H, 5, 40561, 3601, 3448, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP1BiS', @RACEMASK_H, 6, 40398, 3719, 3448, 3472, 0, 0, 0),
('Warlock', 'Demonology80PvEP1BiS', @RACEMASK_H, 7, 40558, 3606, 0, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP1BiS', @RACEMASK_H, 8, 44008, 2332, 3448, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP1BiS', @RACEMASK_H, 9, 40420, 3246, 3448, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP1BiS', @RACEMASK_H, 10, 40080, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP1BiS', @RACEMASK_H, 11, 40719, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP1BiS', @RACEMASK_H, 12, 40255, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP1BiS', @RACEMASK_H, 13, 40682, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP1BiS', @RACEMASK_H, 14, 40405, 3722, 0, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP1BiS', @RACEMASK_H, 15, 40396, 3834, 0, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP1BiS', @RACEMASK_H, 16, 39766, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP1BiS', @RACEMASK_H, 17, 39426, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warlock Destruction 80PvEP1BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Warlock', 'Destruction80PvEP1BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_shadow_rainoffire:30|t|r Use Destruction PvE P1 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Destruction80PvE', 'Destruction80PvE', 'WotLK Phase 1', 301),
('Warlock', 'Destruction80PvEP1BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_shadow_rainoffire:30|t|r Use Destruction PvE P1 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Destruction80PvE', 'Destruction80PvE', 'WotLK Phase 1', 301);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warlock', 'Destruction80PvEP1BiS', @RACEMASK_HUMAN, 0, 40562, 3820, 3621, 3472, 0, 0, 0),
('Warlock', 'Destruction80PvEP1BiS', @RACEMASK_HUMAN, 1, 44661, 0, 3472, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP1BiS', @RACEMASK_HUMAN, 2, 40424, 3810, 3448, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP1BiS', @RACEMASK_HUMAN, 4, 40423, 1144, 3448, 3448, 0, 0, 0),
('Warlock', 'Destruction80PvEP1BiS', @RACEMASK_HUMAN, 5, 40561, 3601, 3448, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP1BiS', @RACEMASK_HUMAN, 6, 40560, 3719, 0, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP1BiS', @RACEMASK_HUMAN, 7, 40558, 3606, 0, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP1BiS', @RACEMASK_HUMAN, 8, 44008, 2332, 3448, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP1BiS', @RACEMASK_HUMAN, 9, 40197, 3604, 3448, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP1BiS', @RACEMASK_HUMAN, 10, 40080, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP1BiS', @RACEMASK_HUMAN, 11, 40399, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP1BiS', @RACEMASK_HUMAN, 12, 40255, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP1BiS', @RACEMASK_HUMAN, 13, 40432, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP1BiS', @RACEMASK_HUMAN, 14, 40405, 3722, 0, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP1BiS', @RACEMASK_HUMAN, 15, 40396, 3834, 0, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP1BiS', @RACEMASK_HUMAN, 16, 40192, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP1BiS', @RACEMASK_HUMAN, 17, 39712, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP1BiS', @RACEMASK_A, 0, 40562, 3820, 3621, 3472, 0, 0, 0),
('Warlock', 'Destruction80PvEP1BiS', @RACEMASK_A, 1, 44661, 0, 3472, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP1BiS', @RACEMASK_A, 2, 40424, 3810, 3448, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP1BiS', @RACEMASK_A, 4, 40423, 1144, 3448, 3448, 0, 0, 0),
('Warlock', 'Destruction80PvEP1BiS', @RACEMASK_A, 5, 40561, 3601, 3448, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP1BiS', @RACEMASK_A, 6, 40560, 3719, 0, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP1BiS', @RACEMASK_A, 7, 40558, 3606, 0, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP1BiS', @RACEMASK_A, 8, 44008, 2332, 3448, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP1BiS', @RACEMASK_A, 9, 40197, 3604, 3448, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP1BiS', @RACEMASK_A, 10, 40080, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP1BiS', @RACEMASK_A, 11, 40399, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP1BiS', @RACEMASK_A, 12, 40255, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP1BiS', @RACEMASK_A, 13, 40432, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP1BiS', @RACEMASK_A, 14, 40405, 3722, 0, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP1BiS', @RACEMASK_A, 15, 40396, 3834, 0, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP1BiS', @RACEMASK_A, 16, 40192, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP1BiS', @RACEMASK_A, 17, 39712, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP1BiS', @RACEMASK_H, 0, 40562, 3820, 3621, 3448, 0, 0, 0),
('Warlock', 'Destruction80PvEP1BiS', @RACEMASK_H, 1, 44661, 0, 3472, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP1BiS', @RACEMASK_H, 2, 40351, 3810, 3472, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP1BiS', @RACEMASK_H, 4, 40526, 1144, 3448, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP1BiS', @RACEMASK_H, 5, 40561, 3601, 3448, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP1BiS', @RACEMASK_H, 6, 40560, 3719, 0, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP1BiS', @RACEMASK_H, 7, 40558, 3606, 0, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP1BiS', @RACEMASK_H, 8, 44008, 2332, 3448, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP1BiS', @RACEMASK_H, 9, 40197, 3604, 3448, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP1BiS', @RACEMASK_H, 10, 40080, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP1BiS', @RACEMASK_H, 11, 40399, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP1BiS', @RACEMASK_H, 12, 40255, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP1BiS', @RACEMASK_H, 13, 40432, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP1BiS', @RACEMASK_H, 14, 40405, 3722, 0, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP1BiS', @RACEMASK_H, 15, 40396, 3834, 0, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP1BiS', @RACEMASK_H, 16, 40273, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP1BiS', @RACEMASK_H, 17, 39712, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warrior Arms 80PvEP1BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Warrior', 'Arms80PvEP1BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_rogue_eviscerate:30|t|r Use Arms PvE P1 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Arms80PvE', 'Arms80PvE', 'WotLK Phase 1', 301),
('Warrior', 'Arms80PvEP1BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_rogue_eviscerate:30|t|r Use Arms PvE P1 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Arms80PvE', 'Arms80PvE', 'WotLK Phase 1', 301);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warrior', 'Arms80PvEP1BiS', @RACEMASK_HUMAN, 0, 40528, 3817, 3628, 3732, 0, 0, 0),
('Warrior', 'Arms80PvEP1BiS', @RACEMASK_HUMAN, 1, 44664, 0, 3446, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP1BiS', @RACEMASK_HUMAN, 2, 40530, 3808, 3478, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP1BiS', @RACEMASK_HUMAN, 4, 40539, 3832, 3732, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP1BiS', @RACEMASK_HUMAN, 5, 40205, 3601, 3732, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP1BiS', @RACEMASK_HUMAN, 6, 40318, 3823, 3750, 3478, 0, 0, 0),
('Warrior', 'Arms80PvEP1BiS', @RACEMASK_HUMAN, 7, 40591, 3606, 0, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP1BiS', @RACEMASK_HUMAN, 8, 40330, 3845, 3446, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP1BiS', @RACEMASK_HUMAN, 9, 40541, 3604, 0, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP1BiS', @RACEMASK_HUMAN, 10, 43993, 0, 3446, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP1BiS', @RACEMASK_HUMAN, 11, 40474, 0, 0, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP1BiS', @RACEMASK_HUMAN, 12, 42987, 0, 0, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP1BiS', @RACEMASK_HUMAN, 13, 40256, 0, 0, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP1BiS', @RACEMASK_HUMAN, 14, 40403, 3605, 0, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP1BiS', @RACEMASK_HUMAN, 15, 40384, 3789, 0, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP1BiS', @RACEMASK_HUMAN, 17, 40385, 2724, 0, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP1BiS', @RACEMASK_A, 0, 40528, 3817, 3628, 3732, 0, 0, 0),
('Warrior', 'Arms80PvEP1BiS', @RACEMASK_A, 1, 44664, 0, 3446, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP1BiS', @RACEMASK_A, 2, 40530, 3808, 3478, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP1BiS', @RACEMASK_A, 4, 40539, 3832, 3732, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP1BiS', @RACEMASK_A, 5, 40205, 3601, 3732, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP1BiS', @RACEMASK_A, 6, 40318, 3823, 3750, 3478, 0, 0, 0),
('Warrior', 'Arms80PvEP1BiS', @RACEMASK_A, 7, 40591, 3606, 0, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP1BiS', @RACEMASK_A, 8, 40330, 3845, 3446, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP1BiS', @RACEMASK_A, 9, 40541, 3604, 0, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP1BiS', @RACEMASK_A, 10, 43993, 0, 3446, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP1BiS', @RACEMASK_A, 11, 40474, 0, 0, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP1BiS', @RACEMASK_A, 12, 42987, 0, 0, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP1BiS', @RACEMASK_A, 13, 40256, 0, 0, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP1BiS', @RACEMASK_A, 14, 40403, 3605, 0, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP1BiS', @RACEMASK_A, 15, 40384, 3789, 0, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP1BiS', @RACEMASK_A, 17, 40385, 2724, 0, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP1BiS', @RACEMASK_H, 0, 40528, 3817, 3628, 3732, 0, 0, 0),
('Warrior', 'Arms80PvEP1BiS', @RACEMASK_H, 1, 44664, 0, 3446, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP1BiS', @RACEMASK_H, 2, 40530, 3808, 3478, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP1BiS', @RACEMASK_H, 4, 40539, 3832, 3732, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP1BiS', @RACEMASK_H, 5, 40205, 3601, 3732, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP1BiS', @RACEMASK_H, 6, 40318, 3823, 3750, 3478, 0, 0, 0),
('Warrior', 'Arms80PvEP1BiS', @RACEMASK_H, 7, 40591, 3606, 0, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP1BiS', @RACEMASK_H, 8, 40330, 3845, 3446, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP1BiS', @RACEMASK_H, 9, 40541, 3604, 0, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP1BiS', @RACEMASK_H, 10, 43993, 0, 3446, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP1BiS', @RACEMASK_H, 11, 40474, 0, 0, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP1BiS', @RACEMASK_H, 12, 42987, 0, 0, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP1BiS', @RACEMASK_H, 13, 40256, 0, 0, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP1BiS', @RACEMASK_H, 14, 40403, 3605, 0, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP1BiS', @RACEMASK_H, 15, 40384, 3789, 0, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP1BiS', @RACEMASK_H, 17, 40385, 2724, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warrior Fury 80PvEP1BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Warrior', 'Fury80PvEP1BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_warrior_innerrage:30|t|r Use Fury PvE P1 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Fury80PvE', 'Fury80PvE', 'WotLK Phase 1', 301),
('Warrior', 'Fury80PvEP1BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_warrior_innerrage:30|t|r Use Fury PvE P1 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Fury80PvE', 'Fury80PvE', 'WotLK Phase 1', 301);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warrior', 'Fury80PvEP1BiS', @RACEMASK_HUMAN, 0, 44006, 3817, 3621, 3750, 0, 0, 0),
('Warrior', 'Fury80PvEP1BiS', @RACEMASK_HUMAN, 1, 44664, 0, 3477, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP1BiS', @RACEMASK_HUMAN, 2, 40530, 3808, 3477, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP1BiS', @RACEMASK_HUMAN, 4, 40539, 3832, 3477, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP1BiS', @RACEMASK_HUMAN, 5, 40205, 3601, 3477, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP1BiS', @RACEMASK_HUMAN, 6, 40529, 3823, 3477, 3500, 0, 0, 0),
('Warrior', 'Fury80PvEP1BiS', @RACEMASK_HUMAN, 7, 40591, 3606, 0, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP1BiS', @RACEMASK_HUMAN, 8, 39765, 3845, 3477, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP1BiS', @RACEMASK_HUMAN, 9, 40541, 3604, 3477, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP1BiS', @RACEMASK_HUMAN, 10, 43993, 0, 3477, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP1BiS', @RACEMASK_HUMAN, 11, 40717, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP1BiS', @RACEMASK_HUMAN, 12, 42987, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP1BiS', @RACEMASK_HUMAN, 13, 40256, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP1BiS', @RACEMASK_HUMAN, 14, 40403, 3605, 0, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP1BiS', @RACEMASK_HUMAN, 15, 40384, 3789, 0, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP1BiS', @RACEMASK_HUMAN, 16, 40384, 3789, 0, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP1BiS', @RACEMASK_HUMAN, 17, 40385, 2724, 0, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP1BiS', @RACEMASK_A, 0, 44006, 3817, 3621, 3750, 0, 0, 0),
('Warrior', 'Fury80PvEP1BiS', @RACEMASK_A, 1, 44664, 0, 3477, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP1BiS', @RACEMASK_A, 2, 40530, 3808, 3477, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP1BiS', @RACEMASK_A, 4, 40539, 3832, 3477, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP1BiS', @RACEMASK_A, 5, 40205, 3601, 3477, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP1BiS', @RACEMASK_A, 6, 40529, 3823, 3477, 3500, 0, 0, 0),
('Warrior', 'Fury80PvEP1BiS', @RACEMASK_A, 7, 40591, 3606, 0, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP1BiS', @RACEMASK_A, 8, 39765, 3845, 3477, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP1BiS', @RACEMASK_A, 9, 40541, 3604, 3477, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP1BiS', @RACEMASK_A, 10, 43993, 0, 3477, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP1BiS', @RACEMASK_A, 11, 40717, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP1BiS', @RACEMASK_A, 12, 42987, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP1BiS', @RACEMASK_A, 13, 40256, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP1BiS', @RACEMASK_A, 14, 40403, 3605, 0, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP1BiS', @RACEMASK_A, 15, 40384, 3789, 0, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP1BiS', @RACEMASK_A, 16, 40384, 3789, 0, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP1BiS', @RACEMASK_A, 17, 40385, 2724, 0, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP1BiS', @RACEMASK_H, 0, 44006, 3817, 3621, 3750, 0, 0, 0),
('Warrior', 'Fury80PvEP1BiS', @RACEMASK_H, 1, 44664, 0, 3477, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP1BiS', @RACEMASK_H, 2, 40530, 3808, 3477, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP1BiS', @RACEMASK_H, 4, 40539, 3832, 3477, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP1BiS', @RACEMASK_H, 5, 40205, 3601, 3477, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP1BiS', @RACEMASK_H, 6, 40529, 3823, 3477, 3500, 0, 0, 0),
('Warrior', 'Fury80PvEP1BiS', @RACEMASK_H, 7, 40591, 3606, 0, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP1BiS', @RACEMASK_H, 8, 39765, 3845, 3477, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP1BiS', @RACEMASK_H, 9, 40541, 3604, 3477, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP1BiS', @RACEMASK_H, 10, 43993, 0, 3477, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP1BiS', @RACEMASK_H, 11, 40717, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP1BiS', @RACEMASK_H, 12, 42987, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP1BiS', @RACEMASK_H, 13, 40256, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP1BiS', @RACEMASK_H, 14, 40403, 3605, 0, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP1BiS', @RACEMASK_H, 15, 40384, 3789, 0, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP1BiS', @RACEMASK_H, 16, 40384, 3789, 0, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP1BiS', @RACEMASK_H, 17, 40385, 2724, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warrior Protection 80PvEP1BiSTank (tank) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Warrior', 'Protection80PvEP1BiSTank', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_warrior_defensivestance:30|t|r Use Protection PvE P1 BiS Tank', 7, @MINLEVEL, @MAXLEVEL, 'Protection80PvE', 'Protection80PvE', 'WotLK Phase 1', 301),
('Warrior', 'Protection80PvEP1BiSTank', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_warrior_defensivestance:30|t|r Use Protection PvE P1 BiS Tank (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Protection80PvE', 'Protection80PvE', 'WotLK Phase 1', 301);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warrior', 'Protection80PvEP1BiSTank', @RACEMASK_HUMAN, 0, 40546, 3818, 3637, 3471, 0, 0, 0),
('Warrior', 'Protection80PvEP1BiSTank', @RACEMASK_HUMAN, 1, 40387, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP1BiSTank', @RACEMASK_HUMAN, 2, 39704, 3852, 3471, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP1BiSTank', @RACEMASK_HUMAN, 4, 44000, 3832, 3471, 3461, 0, 0, 0),
('Warrior', 'Protection80PvEP1BiSTank', @RACEMASK_HUMAN, 5, 39759, 3601, 3454, 3293, 0, 0, 0),
('Warrior', 'Protection80PvEP1BiSTank', @RACEMASK_HUMAN, 6, 40589, 3822, 0, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP1BiSTank', @RACEMASK_HUMAN, 7, 39717, 3232, 3502, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP1BiSTank', @RACEMASK_HUMAN, 8, 39764, 3850, 0, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP1BiSTank', @RACEMASK_HUMAN, 9, 40545, 3860, 3471, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP1BiSTank', @RACEMASK_HUMAN, 10, 40370, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP1BiSTank', @RACEMASK_HUMAN, 11, 40718, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP1BiSTank', @RACEMASK_HUMAN, 12, 40257, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP1BiSTank', @RACEMASK_HUMAN, 13, 44063, 0, 3293, 3502, 0, 0, 0),
('Warrior', 'Protection80PvEP1BiSTank', @RACEMASK_HUMAN, 14, 40722, 3605, 0, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP1BiSTank', @RACEMASK_HUMAN, 15, 40402, 3788, 0, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP1BiSTank', @RACEMASK_HUMAN, 16, 40400, 3849, 0, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP1BiSTank', @RACEMASK_HUMAN, 17, 41168, 3608, 3293, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP1BiSTank', @RACEMASK_A, 0, 40546, 3818, 3637, 3471, 0, 0, 0),
('Warrior', 'Protection80PvEP1BiSTank', @RACEMASK_A, 1, 40387, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP1BiSTank', @RACEMASK_A, 2, 39704, 3852, 3471, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP1BiSTank', @RACEMASK_A, 4, 44000, 3832, 3471, 3461, 0, 0, 0),
('Warrior', 'Protection80PvEP1BiSTank', @RACEMASK_A, 5, 39759, 3601, 3454, 3293, 0, 0, 0),
('Warrior', 'Protection80PvEP1BiSTank', @RACEMASK_A, 6, 40589, 3822, 0, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP1BiSTank', @RACEMASK_A, 7, 39717, 3232, 3502, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP1BiSTank', @RACEMASK_A, 8, 39764, 3850, 0, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP1BiSTank', @RACEMASK_A, 9, 40545, 3860, 3471, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP1BiSTank', @RACEMASK_A, 10, 40370, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP1BiSTank', @RACEMASK_A, 11, 40718, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP1BiSTank', @RACEMASK_A, 12, 40257, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP1BiSTank', @RACEMASK_A, 13, 44063, 0, 3293, 3502, 0, 0, 0),
('Warrior', 'Protection80PvEP1BiSTank', @RACEMASK_A, 14, 40722, 3605, 0, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP1BiSTank', @RACEMASK_A, 15, 40402, 3788, 0, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP1BiSTank', @RACEMASK_A, 16, 40400, 3849, 0, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP1BiSTank', @RACEMASK_A, 17, 41168, 3608, 3293, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP1BiSTank', @RACEMASK_H, 0, 40546, 3818, 3637, 3471, 0, 0, 0),
('Warrior', 'Protection80PvEP1BiSTank', @RACEMASK_H, 1, 40387, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP1BiSTank', @RACEMASK_H, 2, 39704, 3852, 3471, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP1BiSTank', @RACEMASK_H, 4, 44000, 3832, 3471, 3461, 0, 0, 0),
('Warrior', 'Protection80PvEP1BiSTank', @RACEMASK_H, 5, 39759, 3601, 3454, 3293, 0, 0, 0),
('Warrior', 'Protection80PvEP1BiSTank', @RACEMASK_H, 6, 40589, 3822, 0, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP1BiSTank', @RACEMASK_H, 7, 39717, 3232, 3502, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP1BiSTank', @RACEMASK_H, 8, 39764, 3850, 0, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP1BiSTank', @RACEMASK_H, 9, 40545, 3860, 3471, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP1BiSTank', @RACEMASK_H, 10, 40370, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP1BiSTank', @RACEMASK_H, 11, 40718, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP1BiSTank', @RACEMASK_H, 12, 40257, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP1BiSTank', @RACEMASK_H, 13, 44063, 0, 3293, 3502, 0, 0, 0),
('Warrior', 'Protection80PvEP1BiSTank', @RACEMASK_H, 14, 40722, 3605, 0, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP1BiSTank', @RACEMASK_H, 15, 40402, 3788, 0, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP1BiSTank', @RACEMASK_H, 16, 40400, 3849, 0, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP1BiSTank', @RACEMASK_H, 17, 41168, 3608, 3293, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

