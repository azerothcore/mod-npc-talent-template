-- Batch-generated BiS gear templates
-- Expansion: wotlk  Mode: pve  Phase: 3
-- 31 specs

-- Idempotency: remove this file's templates first so re-application cannot duplicate rows
-- (the index table has no unique key; without this a re-applied file would append copies).
DELETE FROM `mod_npc_talent_template_index` WHERE `playerSpec` IN ('Blood80PvEP3BiSTank', 'Frost80PvEP3BiS', 'Unholy80PvEP3BiS', 'Balance80PvEP3BiS', 'Feral80PvEP3BiS', 'Feral80PvEP3BiSTank', 'Restoration80PvEP3BiSHeal', 'Beastmastery80PvEP3BiS', 'Marksmanship80PvEP3BiS', 'Survival80PvEP3BiS', 'Arcane80PvEP3BiS', 'Fire80PvEP3BiS', 'Holy80PvEP3BiSHeal', 'Protection80PvEP3BiSTank', 'Retribution80PvEP3BiS', 'Discipline80PvEP3BiSHeal', 'Shadow80PvEP3BiS', 'Assassination80PvEP3BiS', 'Combat80PvEP3BiS', 'Subtlety80PvEP3BiS', 'Elemental80PvEP3BiS', 'Enhancement80PvEP3BiS', 'Affliction80PvEP3BiS', 'Demonology80PvEP3BiS', 'Destruction80PvEP3BiS', 'Arms80PvEP3BiS', 'Fury80PvEP3BiS');
DELETE FROM `mod_npc_talent_template_gear` WHERE `playerSpec` IN ('Blood80PvEP3BiSTank', 'Frost80PvEP3BiS', 'Unholy80PvEP3BiS', 'Balance80PvEP3BiS', 'Feral80PvEP3BiS', 'Feral80PvEP3BiSTank', 'Restoration80PvEP3BiSHeal', 'Beastmastery80PvEP3BiS', 'Marksmanship80PvEP3BiS', 'Survival80PvEP3BiS', 'Arcane80PvEP3BiS', 'Fire80PvEP3BiS', 'Holy80PvEP3BiSHeal', 'Protection80PvEP3BiSTank', 'Retribution80PvEP3BiS', 'Discipline80PvEP3BiSHeal', 'Shadow80PvEP3BiS', 'Assassination80PvEP3BiS', 'Combat80PvEP3BiS', 'Subtlety80PvEP3BiS', 'Elemental80PvEP3BiS', 'Enhancement80PvEP3BiS', 'Affliction80PvEP3BiS', 'Demonology80PvEP3BiS', 'Destruction80PvEP3BiS', 'Arms80PvEP3BiS', 'Fury80PvEP3BiS');

SET @MINLEVEL = 80;
SET @MAXLEVEL = 80;
SET @RACEMASK_HUMAN = 1;
SET @RACEMASK_A = 1100; -- Alliance without Human
SET @RACEMASK_H = 690;  -- Horde
-- ===== Death Knight Blood 80PvEP3BiSTank (tank) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Death Knight', 'Blood80PvEP3BiSTank', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_deathknight_bloodpresence:30|t|r Use Blood PvE P3 BiS Tank', 7, @MINLEVEL, @MAXLEVEL, 'Blood80PvE', 'Blood80PvE', 'WotLK Phase 3', 303),
('Death Knight', 'Blood80PvEP3BiSTank', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_deathknight_bloodpresence:30|t|r Use Blood PvE P3 BiS Tank (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Blood80PvE', 'Blood80PvE', 'WotLK Phase 3', 303);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Death Knight', 'Blood80PvEP3BiSTank', @RACEMASK_HUMAN, 0, 49467, 3878, 3637, 3532, 0, 0, 0),
('Death Knight', 'Blood80PvEP3BiSTank', @RACEMASK_HUMAN, 1, 47133, 0, 3532, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP3BiSTank', @RACEMASK_HUMAN, 2, 47698, 3852, 3532, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP3BiSTank', @RACEMASK_HUMAN, 4, 46968, 3297, 3532, 3532, 3532, 0, 0),
('Death Knight', 'Blood80PvEP3BiSTank', @RACEMASK_HUMAN, 5, 47076, 0, 3537, 3293, 0, 0, 3293),
('Death Knight', 'Blood80PvEP3BiSTank', @RACEMASK_HUMAN, 6, 47061, 3327, 3532, 3532, 3532, 0, 0),
('Death Knight', 'Blood80PvEP3BiSTank', @RACEMASK_HUMAN, 7, 47003, 3606, 3532, 3532, 0, 0, 0),
('Death Knight', 'Blood80PvEP3BiSTank', @RACEMASK_HUMAN, 8, 47111, 3850, 3532, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP3BiSTank', @RACEMASK_HUMAN, 9, 45487, 3860, 3532, 3532, 0, 0, 0),
('Death Knight', 'Blood80PvEP3BiSTank', @RACEMASK_HUMAN, 10, 49489, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP3BiSTank', @RACEMASK_HUMAN, 11, 47955, 0, 3293, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP3BiSTank', @RACEMASK_HUMAN, 12, 47088, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP3BiSTank', @RACEMASK_HUMAN, 13, 45158, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP3BiSTank', @RACEMASK_HUMAN, 14, 47549, 3294, 3532, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP3BiSTank', @RACEMASK_HUMAN, 15, 47515, 3847, 3532, 3532, 0, 0, 0),
('Death Knight', 'Blood80PvEP3BiSTank', @RACEMASK_HUMAN, 17, 47672, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP3BiSTank', @RACEMASK_A, 0, 49467, 3878, 3637, 3532, 0, 0, 0),
('Death Knight', 'Blood80PvEP3BiSTank', @RACEMASK_A, 1, 47133, 0, 3532, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP3BiSTank', @RACEMASK_A, 2, 47698, 3852, 3532, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP3BiSTank', @RACEMASK_A, 4, 46968, 3297, 3532, 3532, 3532, 0, 0),
('Death Knight', 'Blood80PvEP3BiSTank', @RACEMASK_A, 5, 47076, 0, 3537, 3293, 0, 0, 3293),
('Death Knight', 'Blood80PvEP3BiSTank', @RACEMASK_A, 6, 47061, 3327, 3532, 3532, 3532, 0, 0),
('Death Knight', 'Blood80PvEP3BiSTank', @RACEMASK_A, 7, 47003, 3606, 3532, 3532, 0, 0, 0),
('Death Knight', 'Blood80PvEP3BiSTank', @RACEMASK_A, 8, 47111, 3850, 3532, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP3BiSTank', @RACEMASK_A, 9, 45487, 3860, 3532, 3532, 0, 0, 0),
('Death Knight', 'Blood80PvEP3BiSTank', @RACEMASK_A, 10, 49489, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP3BiSTank', @RACEMASK_A, 11, 47955, 0, 3293, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP3BiSTank', @RACEMASK_A, 12, 47088, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP3BiSTank', @RACEMASK_A, 13, 45158, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP3BiSTank', @RACEMASK_A, 14, 47549, 3294, 3532, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP3BiSTank', @RACEMASK_A, 15, 47515, 3847, 3532, 3532, 0, 0, 0),
('Death Knight', 'Blood80PvEP3BiSTank', @RACEMASK_A, 17, 47672, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP3BiSTank', @RACEMASK_H, 0, 49467, 3878, 3637, 3532, 0, 0, 0),
('Death Knight', 'Blood80PvEP3BiSTank', @RACEMASK_H, 1, 47468, 0, 3532, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP3BiSTank', @RACEMASK_H, 2, 47699, 3852, 3532, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP3BiSTank', @RACEMASK_H, 4, 47415, 3297, 3532, 3532, 3532, 0, 0),
('Death Knight', 'Blood80PvEP3BiSTank', @RACEMASK_H, 5, 47444, 0, 3537, 3293, 0, 0, 3293),
('Death Knight', 'Blood80PvEP3BiSTank', @RACEMASK_H, 6, 47434, 3327, 3532, 3532, 3532, 0, 0),
('Death Knight', 'Blood80PvEP3BiSTank', @RACEMASK_H, 7, 47430, 3606, 3532, 3532, 0, 0, 0),
('Death Knight', 'Blood80PvEP3BiSTank', @RACEMASK_H, 8, 47459, 3850, 3532, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP3BiSTank', @RACEMASK_H, 9, 45487, 3860, 3532, 3532, 0, 0, 0),
('Death Knight', 'Blood80PvEP3BiSTank', @RACEMASK_H, 10, 49489, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP3BiSTank', @RACEMASK_H, 11, 48027, 0, 3293, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP3BiSTank', @RACEMASK_H, 12, 47432, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP3BiSTank', @RACEMASK_H, 13, 45158, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP3BiSTank', @RACEMASK_H, 14, 47550, 3294, 3532, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP3BiSTank', @RACEMASK_H, 15, 47516, 3847, 3532, 3532, 0, 0, 0),
('Death Knight', 'Blood80PvEP3BiSTank', @RACEMASK_H, 17, 47672, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Death Knight Frost 80PvEP3BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Death Knight', 'Frost80PvEP3BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_deathknight_frostpresence:30|t|r Use Frost PvE P3 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Frost80PvE', 'Frost80PvE', 'WotLK Phase 3', 303),
('Death Knight', 'Frost80PvEP3BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_deathknight_frostpresence:30|t|r Use Frost PvE P3 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Frost80PvE', 'Frost80PvE', 'WotLK Phase 3', 303);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Death Knight', 'Frost80PvEP3BiS', @RACEMASK_HUMAN, 0, 48493, 3817, 3628, 3549, 0, 0, 0),
('Death Knight', 'Frost80PvEP3BiS', @RACEMASK_HUMAN, 1, 47458, 0, 3549, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP3BiS', @RACEMASK_HUMAN, 2, 48495, 3808, 3732, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP3BiS', @RACEMASK_HUMAN, 4, 48491, 3832, 3879, 3732, 0, 0, 0),
('Death Knight', 'Frost80PvEP3BiS', @RACEMASK_HUMAN, 5, 45241, 0, 3518, 3518, 0, 0, 3518),
('Death Knight', 'Frost80PvEP3BiS', @RACEMASK_HUMAN, 6, 48494, 3823, 3549, 3518, 0, 0, 0),
('Death Knight', 'Frost80PvEP3BiS', @RACEMASK_HUMAN, 7, 45599, 3606, 3518, 3518, 0, 0, 0),
('Death Knight', 'Frost80PvEP3BiS', @RACEMASK_HUMAN, 8, 45663, 3845, 3518, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP3BiS', @RACEMASK_HUMAN, 9, 47492, 3604, 3518, 3518, 0, 0, 0),
('Death Knight', 'Frost80PvEP3BiS', @RACEMASK_HUMAN, 10, 47413, 0, 3549, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP3BiS', @RACEMASK_HUMAN, 11, 45534, 0, 3518, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP3BiS', @RACEMASK_HUMAN, 12, 45931, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP3BiS', @RACEMASK_HUMAN, 13, 47464, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP3BiS', @RACEMASK_HUMAN, 14, 47548, 3605, 3732, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP3BiS', @RACEMASK_HUMAN, 15, 47475, 3370, 3518, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP3BiS', @RACEMASK_HUMAN, 16, 47475, 3368, 3518, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP3BiS', @RACEMASK_HUMAN, 17, 40207, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP3BiS', @RACEMASK_A, 0, 48493, 3817, 3628, 3549, 0, 0, 0),
('Death Knight', 'Frost80PvEP3BiS', @RACEMASK_A, 1, 47458, 0, 3549, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP3BiS', @RACEMASK_A, 2, 48495, 3808, 3732, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP3BiS', @RACEMASK_A, 4, 48491, 3832, 3879, 3732, 0, 0, 0),
('Death Knight', 'Frost80PvEP3BiS', @RACEMASK_A, 5, 45241, 0, 3518, 3518, 0, 0, 3518),
('Death Knight', 'Frost80PvEP3BiS', @RACEMASK_A, 6, 48494, 3823, 3549, 3518, 0, 0, 0),
('Death Knight', 'Frost80PvEP3BiS', @RACEMASK_A, 7, 45599, 3606, 3518, 3518, 0, 0, 0),
('Death Knight', 'Frost80PvEP3BiS', @RACEMASK_A, 8, 45663, 3845, 3518, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP3BiS', @RACEMASK_A, 9, 47492, 3604, 3518, 3518, 0, 0, 0),
('Death Knight', 'Frost80PvEP3BiS', @RACEMASK_A, 10, 47413, 0, 3549, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP3BiS', @RACEMASK_A, 11, 45534, 0, 3518, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP3BiS', @RACEMASK_A, 12, 45931, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP3BiS', @RACEMASK_A, 13, 47464, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP3BiS', @RACEMASK_A, 14, 47548, 3605, 3732, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP3BiS', @RACEMASK_A, 15, 47475, 3370, 3518, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP3BiS', @RACEMASK_A, 16, 47475, 3368, 3518, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP3BiS', @RACEMASK_A, 17, 40207, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP3BiS', @RACEMASK_H, 0, 48493, 3817, 3628, 3549, 0, 0, 0),
('Death Knight', 'Frost80PvEP3BiS', @RACEMASK_H, 1, 47458, 0, 3549, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP3BiS', @RACEMASK_H, 2, 48495, 3808, 3732, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP3BiS', @RACEMASK_H, 4, 48491, 3832, 3879, 3732, 0, 0, 0),
('Death Knight', 'Frost80PvEP3BiS', @RACEMASK_H, 5, 45241, 0, 3518, 3518, 0, 0, 3518),
('Death Knight', 'Frost80PvEP3BiS', @RACEMASK_H, 6, 48494, 3823, 3549, 3518, 0, 0, 0),
('Death Knight', 'Frost80PvEP3BiS', @RACEMASK_H, 7, 45599, 3606, 3518, 3518, 0, 0, 0),
('Death Knight', 'Frost80PvEP3BiS', @RACEMASK_H, 8, 45663, 3845, 3518, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP3BiS', @RACEMASK_H, 9, 47492, 3604, 3518, 3518, 0, 0, 0),
('Death Knight', 'Frost80PvEP3BiS', @RACEMASK_H, 10, 47413, 0, 3549, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP3BiS', @RACEMASK_H, 11, 45534, 0, 3518, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP3BiS', @RACEMASK_H, 12, 45931, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP3BiS', @RACEMASK_H, 13, 47464, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP3BiS', @RACEMASK_H, 14, 47548, 3605, 3732, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP3BiS', @RACEMASK_H, 15, 47475, 3370, 3518, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP3BiS', @RACEMASK_H, 16, 47475, 3368, 3518, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP3BiS', @RACEMASK_H, 17, 40207, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Death Knight Unholy 80PvEP3BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Death Knight', 'Unholy80PvEP3BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_deathknight_unholypresence:30|t|r Use Unholy PvE P3 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Unholy80PvE', 'Unholy80PvE', 'WotLK Phase 3', 303),
('Death Knight', 'Unholy80PvEP3BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_deathknight_unholypresence:30|t|r Use Unholy PvE P3 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Unholy80PvE', 'Unholy80PvE', 'WotLK Phase 3', 303);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Death Knight', 'Unholy80PvEP3BiS', @RACEMASK_HUMAN, 0, 48493, 3817, 3621, 3553, 0, 0, 0),
('Death Knight', 'Unholy80PvEP3BiS', @RACEMASK_HUMAN, 1, 47458, 0, 3553, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP3BiS', @RACEMASK_HUMAN, 2, 48495, 3808, 3518, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP3BiS', @RACEMASK_HUMAN, 4, 48491, 3832, 3879, 3732, 0, 0, 0),
('Death Knight', 'Unholy80PvEP3BiS', @RACEMASK_HUMAN, 5, 47429, 0, 3553, 3553, 0, 0, 3732),
('Death Knight', 'Unholy80PvEP3BiS', @RACEMASK_HUMAN, 6, 47465, 3823, 3536, 3732, 3553, 0, 0),
('Death Knight', 'Unholy80PvEP3BiS', @RACEMASK_HUMAN, 7, 45599, 3606, 3518, 3518, 0, 0, 0),
('Death Knight', 'Unholy80PvEP3BiS', @RACEMASK_HUMAN, 8, 45663, 3845, 3518, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP3BiS', @RACEMASK_HUMAN, 9, 48492, 3604, 3553, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP3BiS', @RACEMASK_HUMAN, 10, 47413, 0, 3553, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP3BiS', @RACEMASK_HUMAN, 11, 47993, 0, 3518, 3518, 0, 0, 0),
('Death Knight', 'Unholy80PvEP3BiS', @RACEMASK_HUMAN, 12, 45609, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP3BiS', @RACEMASK_HUMAN, 13, 47464, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP3BiS', @RACEMASK_HUMAN, 14, 47548, 3831, 3518, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP3BiS', @RACEMASK_HUMAN, 15, 47475, 3368, 3518, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP3BiS', @RACEMASK_HUMAN, 16, 47528, 3368, 3518, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP3BiS', @RACEMASK_HUMAN, 17, 47673, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP3BiS', @RACEMASK_A, 0, 48493, 3817, 3621, 3553, 0, 0, 0),
('Death Knight', 'Unholy80PvEP3BiS', @RACEMASK_A, 1, 47458, 0, 3553, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP3BiS', @RACEMASK_A, 2, 48495, 3808, 3518, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP3BiS', @RACEMASK_A, 4, 48491, 3832, 3879, 3732, 0, 0, 0),
('Death Knight', 'Unholy80PvEP3BiS', @RACEMASK_A, 5, 47429, 0, 3553, 3553, 0, 0, 3732),
('Death Knight', 'Unholy80PvEP3BiS', @RACEMASK_A, 6, 47465, 3823, 3536, 3732, 3553, 0, 0),
('Death Knight', 'Unholy80PvEP3BiS', @RACEMASK_A, 7, 45599, 3606, 3518, 3518, 0, 0, 0),
('Death Knight', 'Unholy80PvEP3BiS', @RACEMASK_A, 8, 45663, 3845, 3518, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP3BiS', @RACEMASK_A, 9, 48492, 3604, 3553, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP3BiS', @RACEMASK_A, 10, 47413, 0, 3553, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP3BiS', @RACEMASK_A, 11, 47993, 0, 3518, 3518, 0, 0, 0),
('Death Knight', 'Unholy80PvEP3BiS', @RACEMASK_A, 12, 45609, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP3BiS', @RACEMASK_A, 13, 47464, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP3BiS', @RACEMASK_A, 14, 47548, 3831, 3518, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP3BiS', @RACEMASK_A, 15, 47475, 3368, 3518, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP3BiS', @RACEMASK_A, 16, 47528, 3368, 3518, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP3BiS', @RACEMASK_A, 17, 47673, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP3BiS', @RACEMASK_H, 0, 48493, 3817, 3621, 3553, 0, 0, 0),
('Death Knight', 'Unholy80PvEP3BiS', @RACEMASK_H, 1, 47458, 0, 3553, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP3BiS', @RACEMASK_H, 2, 48495, 3808, 3518, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP3BiS', @RACEMASK_H, 4, 48491, 3832, 3879, 3732, 0, 0, 0),
('Death Knight', 'Unholy80PvEP3BiS', @RACEMASK_H, 5, 47429, 0, 3553, 3553, 0, 0, 3732),
('Death Knight', 'Unholy80PvEP3BiS', @RACEMASK_H, 6, 47465, 3823, 3536, 3732, 3553, 0, 0),
('Death Knight', 'Unholy80PvEP3BiS', @RACEMASK_H, 7, 45599, 3606, 3518, 3518, 0, 0, 0),
('Death Knight', 'Unholy80PvEP3BiS', @RACEMASK_H, 8, 45663, 3845, 3518, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP3BiS', @RACEMASK_H, 9, 48492, 3604, 3553, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP3BiS', @RACEMASK_H, 10, 47413, 0, 3553, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP3BiS', @RACEMASK_H, 11, 47993, 0, 3518, 3518, 0, 0, 0),
('Death Knight', 'Unholy80PvEP3BiS', @RACEMASK_H, 12, 45609, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP3BiS', @RACEMASK_H, 13, 47464, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP3BiS', @RACEMASK_H, 14, 47548, 3831, 3518, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP3BiS', @RACEMASK_H, 15, 47475, 3368, 3518, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP3BiS', @RACEMASK_H, 16, 47528, 3368, 3518, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP3BiS', @RACEMASK_H, 17, 47673, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Druid Balance 80PvEP3BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Druid', 'Balance80PvEP3BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_starfall:30|t|r Use Balance PvE P3 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Balance80PvE', 'Balance80PvE', 'WotLK Phase 3', 303),
('Druid', 'Balance80PvEP3BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_starfall:30|t|r Use Balance PvE P3 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Balance80PvE', 'Balance80PvE', 'WotLK Phase 3', 303);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Druid', 'Balance80PvEP3BiS', @RACEMASK_HUMAN, 0, 19375, 2544, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP3BiS', @RACEMASK_HUMAN, 1, 18814, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP3BiS', @RACEMASK_HUMAN, 2, 19370, 2605, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP3BiS', @RACEMASK_HUMAN, 4, 19682, 1891, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP3BiS', @RACEMASK_HUMAN, 5, 19400, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP3BiS', @RACEMASK_HUMAN, 6, 19683, 2544, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP3BiS', @RACEMASK_HUMAN, 7, 19684, 911, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP3BiS', @RACEMASK_HUMAN, 8, 19374, 1883, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP3BiS', @RACEMASK_HUMAN, 9, 19929, 930, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP3BiS', @RACEMASK_HUMAN, 10, 19147, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP3BiS', @RACEMASK_HUMAN, 11, 19403, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP3BiS', @RACEMASK_HUMAN, 12, 19379, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP3BiS', @RACEMASK_HUMAN, 13, 19950, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP3BiS', @RACEMASK_HUMAN, 14, 19857, 1888, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP3BiS', @RACEMASK_HUMAN, 15, 19360, 2504, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP3BiS', @RACEMASK_HUMAN, 16, 19308, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP3BiS', @RACEMASK_HUMAN, 17, 23197, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP3BiS', @RACEMASK_A, 0, 19375, 2544, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP3BiS', @RACEMASK_A, 1, 18814, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP3BiS', @RACEMASK_A, 2, 19370, 2605, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP3BiS', @RACEMASK_A, 4, 19682, 1891, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP3BiS', @RACEMASK_A, 5, 19400, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP3BiS', @RACEMASK_A, 6, 19683, 2544, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP3BiS', @RACEMASK_A, 7, 19684, 911, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP3BiS', @RACEMASK_A, 8, 19374, 1883, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP3BiS', @RACEMASK_A, 9, 19929, 930, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP3BiS', @RACEMASK_A, 10, 19147, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP3BiS', @RACEMASK_A, 11, 19403, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP3BiS', @RACEMASK_A, 12, 19379, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP3BiS', @RACEMASK_A, 13, 19950, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP3BiS', @RACEMASK_A, 14, 19857, 1888, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP3BiS', @RACEMASK_A, 15, 19360, 2504, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP3BiS', @RACEMASK_A, 16, 19308, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP3BiS', @RACEMASK_A, 17, 23197, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP3BiS', @RACEMASK_H, 0, 19375, 2544, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP3BiS', @RACEMASK_H, 1, 18814, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP3BiS', @RACEMASK_H, 2, 19370, 2605, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP3BiS', @RACEMASK_H, 4, 19682, 1891, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP3BiS', @RACEMASK_H, 5, 19400, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP3BiS', @RACEMASK_H, 6, 19683, 2544, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP3BiS', @RACEMASK_H, 7, 19684, 911, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP3BiS', @RACEMASK_H, 8, 19374, 1883, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP3BiS', @RACEMASK_H, 9, 19929, 930, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP3BiS', @RACEMASK_H, 10, 19147, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP3BiS', @RACEMASK_H, 11, 19403, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP3BiS', @RACEMASK_H, 12, 19379, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP3BiS', @RACEMASK_H, 13, 19950, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP3BiS', @RACEMASK_H, 14, 19857, 1888, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP3BiS', @RACEMASK_H, 15, 19360, 2504, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP3BiS', @RACEMASK_H, 16, 19308, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP3BiS', @RACEMASK_H, 17, 23197, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Druid Feral 80PvEP3BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Druid', 'Feral80PvEP3BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_druid_catform:30|t|r Use Feral PvE P3 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Feral80PvE', 'Feral80PvE', 'WotLK Phase 3', 303),
('Druid', 'Feral80PvEP3BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_druid_catform:30|t|r Use Feral PvE P3 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Feral80PvE', 'Feral80PvE', 'WotLK Phase 3', 303);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Druid', 'Feral80PvEP3BiS', @RACEMASK_HUMAN, 0, 48204, 3817, 3628, 3549, 0, 0, 0),
('Druid', 'Feral80PvEP3BiS', @RACEMASK_HUMAN, 1, 47060, 0, 3525, 0, 0, 0, 0),
('Druid', 'Feral80PvEP3BiS', @RACEMASK_HUMAN, 2, 48207, 3808, 3553, 0, 0, 0, 0),
('Druid', 'Feral80PvEP3BiS', @RACEMASK_HUMAN, 4, 48206, 3832, 3525, 3553, 0, 0, 0),
('Druid', 'Feral80PvEP3BiS', @RACEMASK_HUMAN, 5, 47112, 0, 3553, 3525, 0, 0, 3525),
('Druid', 'Feral80PvEP3BiS', @RACEMASK_HUMAN, 6, 48205, 3823, 3525, 3879, 0, 0, 0),
('Druid', 'Feral80PvEP3BiS', @RACEMASK_HUMAN, 7, 47077, 3606, 3553, 3525, 0, 0, 0),
('Druid', 'Feral80PvEP3BiS', @RACEMASK_HUMAN, 8, 45611, 3845, 3553, 0, 0, 0, 0),
('Druid', 'Feral80PvEP3BiS', @RACEMASK_HUMAN, 9, 47945, 3604, 3525, 3525, 0, 0, 0),
('Druid', 'Feral80PvEP3BiS', @RACEMASK_HUMAN, 10, 47075, 0, 3525, 0, 0, 0, 0),
('Druid', 'Feral80PvEP3BiS', @RACEMASK_HUMAN, 11, 45608, 0, 3525, 0, 0, 0, 0),
('Druid', 'Feral80PvEP3BiS', @RACEMASK_HUMAN, 12, 45931, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP3BiS', @RACEMASK_HUMAN, 13, 47131, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP3BiS', @RACEMASK_HUMAN, 14, 47545, 3605, 3525, 0, 0, 0, 0),
('Druid', 'Feral80PvEP3BiS', @RACEMASK_HUMAN, 15, 47239, 3789, 3553, 3519, 0, 0, 0),
('Druid', 'Feral80PvEP3BiS', @RACEMASK_HUMAN, 17, 47668, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP3BiS', @RACEMASK_A, 0, 48204, 3817, 3628, 3549, 0, 0, 0),
('Druid', 'Feral80PvEP3BiS', @RACEMASK_A, 1, 47060, 0, 3525, 0, 0, 0, 0),
('Druid', 'Feral80PvEP3BiS', @RACEMASK_A, 2, 48207, 3808, 3553, 0, 0, 0, 0),
('Druid', 'Feral80PvEP3BiS', @RACEMASK_A, 4, 48206, 3832, 3525, 3553, 0, 0, 0),
('Druid', 'Feral80PvEP3BiS', @RACEMASK_A, 5, 47112, 0, 3553, 3525, 0, 0, 3525),
('Druid', 'Feral80PvEP3BiS', @RACEMASK_A, 6, 48205, 3823, 3525, 3879, 0, 0, 0),
('Druid', 'Feral80PvEP3BiS', @RACEMASK_A, 7, 47077, 3606, 3553, 3525, 0, 0, 0),
('Druid', 'Feral80PvEP3BiS', @RACEMASK_A, 8, 45611, 3845, 3553, 0, 0, 0, 0),
('Druid', 'Feral80PvEP3BiS', @RACEMASK_A, 9, 47945, 3604, 3525, 3525, 0, 0, 0),
('Druid', 'Feral80PvEP3BiS', @RACEMASK_A, 10, 47075, 0, 3525, 0, 0, 0, 0),
('Druid', 'Feral80PvEP3BiS', @RACEMASK_A, 11, 45608, 0, 3525, 0, 0, 0, 0),
('Druid', 'Feral80PvEP3BiS', @RACEMASK_A, 12, 45931, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP3BiS', @RACEMASK_A, 13, 47131, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP3BiS', @RACEMASK_A, 14, 47545, 3605, 3525, 0, 0, 0, 0),
('Druid', 'Feral80PvEP3BiS', @RACEMASK_A, 15, 47239, 3789, 3553, 3519, 0, 0, 0),
('Druid', 'Feral80PvEP3BiS', @RACEMASK_A, 17, 47668, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP3BiS', @RACEMASK_H, 0, 48201, 3817, 3628, 3549, 0, 0, 0),
('Druid', 'Feral80PvEP3BiS', @RACEMASK_H, 1, 47433, 0, 3525, 0, 0, 0, 0),
('Druid', 'Feral80PvEP3BiS', @RACEMASK_H, 2, 48198, 3808, 3553, 0, 0, 0, 0),
('Druid', 'Feral80PvEP3BiS', @RACEMASK_H, 4, 48199, 3832, 3525, 3553, 0, 0, 0),
('Druid', 'Feral80PvEP3BiS', @RACEMASK_H, 5, 47460, 0, 3553, 3525, 0, 0, 3525),
('Druid', 'Feral80PvEP3BiS', @RACEMASK_H, 6, 48200, 3823, 3525, 3879, 0, 0, 0),
('Druid', 'Feral80PvEP3BiS', @RACEMASK_H, 7, 47445, 3606, 3553, 3525, 0, 0, 0),
('Druid', 'Feral80PvEP3BiS', @RACEMASK_H, 8, 45611, 3845, 3553, 0, 0, 0, 0),
('Druid', 'Feral80PvEP3BiS', @RACEMASK_H, 9, 48017, 3604, 3525, 3525, 0, 0, 0),
('Druid', 'Feral80PvEP3BiS', @RACEMASK_H, 10, 47443, 0, 3525, 0, 0, 0, 0),
('Druid', 'Feral80PvEP3BiS', @RACEMASK_H, 11, 45608, 0, 3525, 0, 0, 0, 0),
('Druid', 'Feral80PvEP3BiS', @RACEMASK_H, 12, 45931, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP3BiS', @RACEMASK_H, 13, 47464, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP3BiS', @RACEMASK_H, 14, 47546, 3605, 3525, 0, 0, 0, 0),
('Druid', 'Feral80PvEP3BiS', @RACEMASK_H, 15, 47491, 3789, 3553, 3519, 0, 0, 0),
('Druid', 'Feral80PvEP3BiS', @RACEMASK_H, 17, 47668, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Druid Feral 80PvEP3BiSTank (tank) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Druid', 'Feral80PvEP3BiSTank', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_racial_bearform:30|t|r Use Feral PvE P3 BiS Tank', 7, @MINLEVEL, @MAXLEVEL, 'FeralTank80PvE', 'FeralTank80PvE', 'WotLK Phase 3', 303),
('Druid', 'Feral80PvEP3BiSTank', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_racial_bearform:30|t|r Use Feral PvE P3 BiS Tank (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'FeralTank80PvE', 'FeralTank80PvE', 'WotLK Phase 3', 303);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Druid', 'Feral80PvEP3BiSTank', @RACEMASK_HUMAN, 0, 48204, 3878, 3625, 3577, 0, 0, 0),
('Druid', 'Feral80PvEP3BiSTank', @RACEMASK_HUMAN, 1, 47133, 0, 3879, 0, 0, 0, 0),
('Druid', 'Feral80PvEP3BiSTank', @RACEMASK_HUMAN, 2, 48207, 3852, 3532, 0, 0, 0, 0),
('Druid', 'Feral80PvEP3BiSTank', @RACEMASK_HUMAN, 4, 47004, 3832, 3532, 3532, 3532, 0, 0),
('Druid', 'Feral80PvEP3BiSTank', @RACEMASK_HUMAN, 5, 47112, 0, 3532, 3532, 0, 0, 3532),
('Druid', 'Feral80PvEP3BiSTank', @RACEMASK_HUMAN, 6, 46975, 3822, 3532, 3532, 3532, 0, 0),
('Druid', 'Feral80PvEP3BiSTank', @RACEMASK_HUMAN, 7, 47077, 3606, 3532, 3532, 0, 0, 0),
('Druid', 'Feral80PvEP3BiSTank', @RACEMASK_HUMAN, 8, 45611, 3850, 3532, 0, 0, 0, 0),
('Druid', 'Feral80PvEP3BiSTank', @RACEMASK_HUMAN, 9, 48203, 3860, 3532, 0, 0, 0, 0),
('Druid', 'Feral80PvEP3BiSTank', @RACEMASK_HUMAN, 10, 47955, 0, 3532, 0, 0, 0, 0),
('Druid', 'Feral80PvEP3BiSTank', @RACEMASK_HUMAN, 11, 47075, 0, 3532, 0, 0, 0, 0),
('Druid', 'Feral80PvEP3BiSTank', @RACEMASK_HUMAN, 12, 47088, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP3BiSTank', @RACEMASK_HUMAN, 13, 47131, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP3BiSTank', @RACEMASK_HUMAN, 14, 47545, 3294, 3532, 0, 0, 0, 0),
('Druid', 'Feral80PvEP3BiSTank', @RACEMASK_HUMAN, 15, 47130, 3870, 3532, 3532, 0, 0, 0),
('Druid', 'Feral80PvEP3BiSTank', @RACEMASK_HUMAN, 17, 45509, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP3BiSTank', @RACEMASK_A, 0, 48204, 3878, 3625, 3577, 0, 0, 0),
('Druid', 'Feral80PvEP3BiSTank', @RACEMASK_A, 1, 47133, 0, 3879, 0, 0, 0, 0),
('Druid', 'Feral80PvEP3BiSTank', @RACEMASK_A, 2, 48207, 3852, 3532, 0, 0, 0, 0),
('Druid', 'Feral80PvEP3BiSTank', @RACEMASK_A, 4, 47004, 3832, 3532, 3532, 3532, 0, 0),
('Druid', 'Feral80PvEP3BiSTank', @RACEMASK_A, 5, 47112, 0, 3532, 3532, 0, 0, 3532),
('Druid', 'Feral80PvEP3BiSTank', @RACEMASK_A, 6, 46975, 3822, 3532, 3532, 3532, 0, 0),
('Druid', 'Feral80PvEP3BiSTank', @RACEMASK_A, 7, 47077, 3606, 3532, 3532, 0, 0, 0),
('Druid', 'Feral80PvEP3BiSTank', @RACEMASK_A, 8, 45611, 3850, 3532, 0, 0, 0, 0),
('Druid', 'Feral80PvEP3BiSTank', @RACEMASK_A, 9, 48203, 3860, 3532, 0, 0, 0, 0),
('Druid', 'Feral80PvEP3BiSTank', @RACEMASK_A, 10, 47955, 0, 3532, 0, 0, 0, 0),
('Druid', 'Feral80PvEP3BiSTank', @RACEMASK_A, 11, 47075, 0, 3532, 0, 0, 0, 0),
('Druid', 'Feral80PvEP3BiSTank', @RACEMASK_A, 12, 47088, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP3BiSTank', @RACEMASK_A, 13, 47131, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP3BiSTank', @RACEMASK_A, 14, 47545, 3294, 3532, 0, 0, 0, 0),
('Druid', 'Feral80PvEP3BiSTank', @RACEMASK_A, 15, 47130, 3870, 3532, 3532, 0, 0, 0),
('Druid', 'Feral80PvEP3BiSTank', @RACEMASK_A, 17, 45509, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP3BiSTank', @RACEMASK_H, 0, 48201, 3878, 3625, 3577, 0, 0, 0),
('Druid', 'Feral80PvEP3BiSTank', @RACEMASK_H, 1, 47468, 0, 3879, 0, 0, 0, 0),
('Druid', 'Feral80PvEP3BiSTank', @RACEMASK_H, 2, 48198, 3852, 3532, 0, 0, 0, 0),
('Druid', 'Feral80PvEP3BiSTank', @RACEMASK_H, 4, 47431, 3832, 3532, 3532, 3532, 0, 0),
('Druid', 'Feral80PvEP3BiSTank', @RACEMASK_H, 5, 47460, 0, 3532, 3532, 0, 0, 3532),
('Druid', 'Feral80PvEP3BiSTank', @RACEMASK_H, 6, 47420, 3822, 3532, 3532, 3532, 0, 0),
('Druid', 'Feral80PvEP3BiSTank', @RACEMASK_H, 7, 47445, 3606, 3532, 3532, 0, 0, 0),
('Druid', 'Feral80PvEP3BiSTank', @RACEMASK_H, 8, 45611, 3850, 3532, 0, 0, 0, 0),
('Druid', 'Feral80PvEP3BiSTank', @RACEMASK_H, 9, 48202, 3860, 3532, 0, 0, 0, 0),
('Druid', 'Feral80PvEP3BiSTank', @RACEMASK_H, 10, 48027, 0, 3532, 0, 0, 0, 0),
('Druid', 'Feral80PvEP3BiSTank', @RACEMASK_H, 11, 47443, 0, 3532, 0, 0, 0, 0),
('Druid', 'Feral80PvEP3BiSTank', @RACEMASK_H, 12, 47432, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP3BiSTank', @RACEMASK_H, 13, 47464, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP3BiSTank', @RACEMASK_H, 14, 47546, 3294, 3532, 0, 0, 0, 0),
('Druid', 'Feral80PvEP3BiSTank', @RACEMASK_H, 15, 47463, 3870, 3532, 3532, 0, 0, 0),
('Druid', 'Feral80PvEP3BiSTank', @RACEMASK_H, 17, 45509, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Druid Restoration 80PvEP3BiSHeal (healer) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Druid', 'Restoration80PvEP3BiSHeal', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_healingtouch:30|t|r Use Restoration PvE P3 BiS Heal', 7, @MINLEVEL, @MAXLEVEL, 'Restoration80PvE', 'Restoration80PvE', 'WotLK Phase 3', 303),
('Druid', 'Restoration80PvEP3BiSHeal', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_healingtouch:30|t|r Use Restoration PvE P3 BiS Heal (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Restoration80PvE', 'Restoration80PvE', 'WotLK Phase 3', 303);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Druid', 'Restoration80PvEP3BiSHeal', @RACEMASK_HUMAN, 0, 48134, 3819, 3627, 3545, 0, 0, 0),
('Druid', 'Restoration80PvEP3BiSHeal', @RACEMASK_HUMAN, 1, 45243, 0, 3563, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP3BiSHeal', @RACEMASK_HUMAN, 2, 48137, 3809, 3563, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP3BiSHeal', @RACEMASK_HUMAN, 4, 46993, 3832, 3545, 3520, 3563, 0, 0),
('Druid', 'Restoration80PvEP3BiSHeal', @RACEMASK_HUMAN, 5, 47145, 0, 3563, 3520, 0, 0, 3520),
('Druid', 'Restoration80PvEP3BiSHeal', @RACEMASK_HUMAN, 6, 48135, 3719, 3563, 3563, 0, 0, 0),
('Druid', 'Restoration80PvEP3BiSHeal', @RACEMASK_HUMAN, 7, 47097, 3606, 3563, 3563, 0, 0, 0),
('Druid', 'Restoration80PvEP3BiSHeal', @RACEMASK_HUMAN, 8, 47066, 2332, 3563, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP3BiSHeal', @RACEMASK_HUMAN, 9, 48133, 3246, 3520, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP3BiSHeal', @RACEMASK_HUMAN, 10, 45495, 0, 3520, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP3BiSHeal', @RACEMASK_HUMAN, 11, 47224, 0, 3563, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP3BiSHeal', @RACEMASK_HUMAN, 12, 47059, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP3BiSHeal', @RACEMASK_HUMAN, 13, 45535, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP3BiSHeal', @RACEMASK_HUMAN, 14, 46977, 3859, 3563, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP3BiSHeal', @RACEMASK_HUMAN, 15, 47206, 3834, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP3BiSHeal', @RACEMASK_HUMAN, 16, 47958, 0, 3563, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP3BiSHeal', @RACEMASK_HUMAN, 17, 40342, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP3BiSHeal', @RACEMASK_A, 0, 48134, 3819, 3627, 3545, 0, 0, 0),
('Druid', 'Restoration80PvEP3BiSHeal', @RACEMASK_A, 1, 45243, 0, 3563, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP3BiSHeal', @RACEMASK_A, 2, 48137, 3809, 3563, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP3BiSHeal', @RACEMASK_A, 4, 46993, 3832, 3545, 3520, 3563, 0, 0),
('Druid', 'Restoration80PvEP3BiSHeal', @RACEMASK_A, 5, 47145, 0, 3563, 3520, 0, 0, 3520),
('Druid', 'Restoration80PvEP3BiSHeal', @RACEMASK_A, 6, 48135, 3719, 3563, 3563, 0, 0, 0),
('Druid', 'Restoration80PvEP3BiSHeal', @RACEMASK_A, 7, 47097, 3606, 3563, 3563, 0, 0, 0),
('Druid', 'Restoration80PvEP3BiSHeal', @RACEMASK_A, 8, 47066, 2332, 3563, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP3BiSHeal', @RACEMASK_A, 9, 48133, 3246, 3520, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP3BiSHeal', @RACEMASK_A, 10, 45495, 0, 3520, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP3BiSHeal', @RACEMASK_A, 11, 47224, 0, 3563, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP3BiSHeal', @RACEMASK_A, 12, 47059, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP3BiSHeal', @RACEMASK_A, 13, 45535, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP3BiSHeal', @RACEMASK_A, 14, 46977, 3859, 3563, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP3BiSHeal', @RACEMASK_A, 15, 47206, 3834, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP3BiSHeal', @RACEMASK_A, 16, 47958, 0, 3563, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP3BiSHeal', @RACEMASK_A, 17, 40342, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP3BiSHeal', @RACEMASK_H, 0, 48151, 3819, 3627, 3545, 0, 0, 0),
('Druid', 'Restoration80PvEP3BiSHeal', @RACEMASK_H, 1, 45243, 0, 3563, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP3BiSHeal', @RACEMASK_H, 2, 48148, 3809, 3563, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP3BiSHeal', @RACEMASK_H, 4, 47425, 3832, 3545, 3520, 3563, 0, 0),
('Druid', 'Restoration80PvEP3BiSHeal', @RACEMASK_H, 5, 47469, 0, 3563, 3520, 0, 0, 3520),
('Druid', 'Restoration80PvEP3BiSHeal', @RACEMASK_H, 6, 48150, 3719, 3563, 3563, 0, 0, 0),
('Druid', 'Restoration80PvEP3BiSHeal', @RACEMASK_H, 7, 47454, 3606, 3563, 3563, 0, 0, 0),
('Druid', 'Restoration80PvEP3BiSHeal', @RACEMASK_H, 8, 47438, 2332, 3563, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP3BiSHeal', @RACEMASK_H, 9, 48152, 3246, 3520, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP3BiSHeal', @RACEMASK_H, 10, 45495, 0, 3520, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP3BiSHeal', @RACEMASK_H, 11, 47439, 0, 3563, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP3BiSHeal', @RACEMASK_H, 12, 47432, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP3BiSHeal', @RACEMASK_H, 13, 45535, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP3BiSHeal', @RACEMASK_H, 14, 47417, 3859, 3563, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP3BiSHeal', @RACEMASK_H, 15, 47483, 3834, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP3BiSHeal', @RACEMASK_H, 16, 48032, 0, 3563, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP3BiSHeal', @RACEMASK_H, 17, 40342, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Hunter Beastmastery 80PvEP3BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Hunter', 'Beastmastery80PvEP3BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_hunter_beasttaming:30|t|r Use Beastmastery PvE P3 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Beastmastery80PvE', 'Beastmastery80PvE', 'WotLK Phase 3', 303),
('Hunter', 'Beastmastery80PvEP3BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_hunter_beasttaming:30|t|r Use Beastmastery PvE P3 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Beastmastery80PvE', 'Beastmastery80PvE', 'WotLK Phase 3', 303);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Hunter', 'Beastmastery80PvEP3BiS', @RACEMASK_HUMAN, 0, 48267, 3817, 3628, 3554, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP3BiS', @RACEMASK_HUMAN, 1, 47433, 0, 3733, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP3BiS', @RACEMASK_HUMAN, 2, 48269, 3808, 3519, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP3BiS', @RACEMASK_HUMAN, 4, 46965, 3832, 3519, 3519, 3519, 0, 0),
('Hunter', 'Beastmastery80PvEP3BiS', @RACEMASK_HUMAN, 5, 47472, 0, 3555, 3733, 0, 0, 3733),
('Hunter', 'Beastmastery80PvEP3BiS', @RACEMASK_HUMAN, 6, 48268, 3823, 3879, 3554, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP3BiS', @RACEMASK_HUMAN, 7, 47457, 3606, 3554, 3554, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP3BiS', @RACEMASK_HUMAN, 8, 47442, 3845, 3555, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP3BiS', @RACEMASK_HUMAN, 9, 48266, 3604, 3555, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP3BiS', @RACEMASK_HUMAN, 10, 47443, 0, 3519, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP3BiS', @RACEMASK_HUMAN, 11, 45608, 0, 3519, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP3BiS', @RACEMASK_HUMAN, 12, 47464, 0, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP3BiS', @RACEMASK_HUMAN, 13, 45931, 0, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP3BiS', @RACEMASK_HUMAN, 14, 47546, 3605, 3519, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP3BiS', @RACEMASK_HUMAN, 15, 47491, 3827, 3554, 3519, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP3BiS', @RACEMASK_HUMAN, 17, 46995, 3608, 3554, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP3BiS', @RACEMASK_A, 0, 48267, 3817, 3628, 3554, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP3BiS', @RACEMASK_A, 1, 47433, 0, 3733, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP3BiS', @RACEMASK_A, 2, 48269, 3808, 3519, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP3BiS', @RACEMASK_A, 4, 46965, 3832, 3519, 3519, 3519, 0, 0),
('Hunter', 'Beastmastery80PvEP3BiS', @RACEMASK_A, 5, 47472, 0, 3555, 3733, 0, 0, 3733),
('Hunter', 'Beastmastery80PvEP3BiS', @RACEMASK_A, 6, 48268, 3823, 3879, 3554, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP3BiS', @RACEMASK_A, 7, 47457, 3606, 3554, 3554, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP3BiS', @RACEMASK_A, 8, 47442, 3845, 3555, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP3BiS', @RACEMASK_A, 9, 48266, 3604, 3555, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP3BiS', @RACEMASK_A, 10, 47443, 0, 3519, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP3BiS', @RACEMASK_A, 11, 45608, 0, 3519, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP3BiS', @RACEMASK_A, 12, 47464, 0, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP3BiS', @RACEMASK_A, 13, 45931, 0, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP3BiS', @RACEMASK_A, 14, 47546, 3605, 3519, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP3BiS', @RACEMASK_A, 15, 47491, 3827, 3554, 3519, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP3BiS', @RACEMASK_A, 17, 46995, 3608, 3554, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP3BiS', @RACEMASK_H, 0, 48267, 3817, 3628, 3554, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP3BiS', @RACEMASK_H, 1, 47433, 0, 3733, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP3BiS', @RACEMASK_H, 2, 48269, 3808, 3519, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP3BiS', @RACEMASK_H, 4, 47412, 3832, 3519, 3519, 3519, 0, 0),
('Hunter', 'Beastmastery80PvEP3BiS', @RACEMASK_H, 5, 47472, 0, 3555, 3733, 0, 0, 3733),
('Hunter', 'Beastmastery80PvEP3BiS', @RACEMASK_H, 6, 48268, 3823, 3879, 3554, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP3BiS', @RACEMASK_H, 7, 47457, 3606, 3554, 3554, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP3BiS', @RACEMASK_H, 8, 47442, 3845, 3555, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP3BiS', @RACEMASK_H, 9, 48266, 3604, 3555, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP3BiS', @RACEMASK_H, 10, 47443, 0, 3519, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP3BiS', @RACEMASK_H, 11, 45608, 0, 3519, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP3BiS', @RACEMASK_H, 12, 47464, 0, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP3BiS', @RACEMASK_H, 13, 45931, 0, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP3BiS', @RACEMASK_H, 14, 47546, 3605, 3519, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP3BiS', @RACEMASK_H, 15, 47491, 3827, 3554, 3519, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP3BiS', @RACEMASK_H, 17, 47428, 3608, 3554, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Hunter Marksmanship 80PvEP3BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Hunter', 'Marksmanship80PvEP3BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_marksmanship:30|t|r Use Marksmanship PvE P3 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Marksmanship80PvE', 'Marksmanship80PvE', 'WotLK Phase 3', 303),
('Hunter', 'Marksmanship80PvEP3BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_marksmanship:30|t|r Use Marksmanship PvE P3 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Marksmanship80PvE', 'Marksmanship80PvE', 'WotLK Phase 3', 303);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Hunter', 'Marksmanship80PvEP3BiS', @RACEMASK_HUMAN, 0, 48267, 3817, 3628, 3554, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP3BiS', @RACEMASK_HUMAN, 1, 47433, 0, 3733, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP3BiS', @RACEMASK_HUMAN, 2, 48269, 3808, 3519, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP3BiS', @RACEMASK_HUMAN, 4, 46965, 3832, 3519, 3519, 3519, 0, 0),
('Hunter', 'Marksmanship80PvEP3BiS', @RACEMASK_HUMAN, 5, 47472, 0, 3555, 3733, 0, 0, 3733),
('Hunter', 'Marksmanship80PvEP3BiS', @RACEMASK_HUMAN, 6, 48268, 3823, 3879, 3554, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP3BiS', @RACEMASK_HUMAN, 7, 47457, 3606, 3554, 3554, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP3BiS', @RACEMASK_HUMAN, 8, 47442, 3845, 3555, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP3BiS', @RACEMASK_HUMAN, 9, 48266, 3604, 3554, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP3BiS', @RACEMASK_HUMAN, 10, 47443, 0, 3519, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP3BiS', @RACEMASK_HUMAN, 11, 45608, 0, 3519, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP3BiS', @RACEMASK_HUMAN, 12, 47464, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP3BiS', @RACEMASK_HUMAN, 13, 45931, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP3BiS', @RACEMASK_HUMAN, 14, 47546, 3605, 3519, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP3BiS', @RACEMASK_HUMAN, 15, 47491, 3827, 3554, 3519, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP3BiS', @RACEMASK_HUMAN, 17, 47523, 3608, 3554, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP3BiS', @RACEMASK_A, 0, 48267, 3817, 3628, 3554, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP3BiS', @RACEMASK_A, 1, 47433, 0, 3733, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP3BiS', @RACEMASK_A, 2, 48269, 3808, 3519, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP3BiS', @RACEMASK_A, 4, 46965, 3832, 3519, 3519, 3519, 0, 0),
('Hunter', 'Marksmanship80PvEP3BiS', @RACEMASK_A, 5, 47472, 0, 3555, 3733, 0, 0, 3733),
('Hunter', 'Marksmanship80PvEP3BiS', @RACEMASK_A, 6, 48268, 3823, 3879, 3554, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP3BiS', @RACEMASK_A, 7, 47457, 3606, 3554, 3554, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP3BiS', @RACEMASK_A, 8, 47442, 3845, 3555, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP3BiS', @RACEMASK_A, 9, 48266, 3604, 3554, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP3BiS', @RACEMASK_A, 10, 47443, 0, 3519, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP3BiS', @RACEMASK_A, 11, 45608, 0, 3519, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP3BiS', @RACEMASK_A, 12, 47464, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP3BiS', @RACEMASK_A, 13, 45931, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP3BiS', @RACEMASK_A, 14, 47546, 3605, 3519, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP3BiS', @RACEMASK_A, 15, 47491, 3827, 3554, 3519, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP3BiS', @RACEMASK_A, 17, 47523, 3608, 3554, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP3BiS', @RACEMASK_H, 0, 48267, 3817, 3628, 3554, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP3BiS', @RACEMASK_H, 1, 47433, 0, 3733, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP3BiS', @RACEMASK_H, 2, 48269, 3808, 3519, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP3BiS', @RACEMASK_H, 4, 47412, 3832, 3519, 3519, 3519, 0, 0),
('Hunter', 'Marksmanship80PvEP3BiS', @RACEMASK_H, 5, 47472, 0, 3555, 3733, 0, 0, 3733),
('Hunter', 'Marksmanship80PvEP3BiS', @RACEMASK_H, 6, 48268, 3823, 3879, 3554, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP3BiS', @RACEMASK_H, 7, 47457, 3606, 3554, 3554, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP3BiS', @RACEMASK_H, 8, 47442, 3845, 3555, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP3BiS', @RACEMASK_H, 9, 48266, 3604, 3554, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP3BiS', @RACEMASK_H, 10, 47443, 0, 3519, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP3BiS', @RACEMASK_H, 11, 45608, 0, 3519, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP3BiS', @RACEMASK_H, 12, 47464, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP3BiS', @RACEMASK_H, 13, 45931, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP3BiS', @RACEMASK_H, 14, 47546, 3605, 3519, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP3BiS', @RACEMASK_H, 15, 47491, 3827, 3554, 3519, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP3BiS', @RACEMASK_H, 17, 47523, 3608, 3554, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Hunter Survival 80PvEP3BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Hunter', 'Survival80PvEP3BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_Hunter_swiftstrike:30|t|r Use Survival PvE P3 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Survival80PvE', 'Survival80PvE', 'WotLK Phase 3', 303),
('Hunter', 'Survival80PvEP3BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_Hunter_swiftstrike:30|t|r Use Survival PvE P3 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Survival80PvE', 'Survival80PvE', 'WotLK Phase 3', 303);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Hunter', 'Survival80PvEP3BiS', @RACEMASK_HUMAN, 0, 48267, 3817, 3628, 3554, 0, 0, 0),
('Hunter', 'Survival80PvEP3BiS', @RACEMASK_HUMAN, 1, 47433, 0, 3733, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP3BiS', @RACEMASK_HUMAN, 2, 48269, 3808, 3519, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP3BiS', @RACEMASK_HUMAN, 4, 48265, 3832, 3519, 3554, 0, 0, 0),
('Hunter', 'Survival80PvEP3BiS', @RACEMASK_HUMAN, 5, 47472, 0, 3554, 3733, 0, 0, 3733),
('Hunter', 'Survival80PvEP3BiS', @RACEMASK_HUMAN, 6, 47480, 3823, 3879, 3554, 3519, 0, 0),
('Hunter', 'Survival80PvEP3BiS', @RACEMASK_HUMAN, 7, 47457, 3606, 3519, 3519, 0, 0, 0),
('Hunter', 'Survival80PvEP3BiS', @RACEMASK_HUMAN, 8, 47442, 3845, 3555, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP3BiS', @RACEMASK_HUMAN, 9, 48266, 3604, 3555, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP3BiS', @RACEMASK_HUMAN, 10, 47443, 0, 3519, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP3BiS', @RACEMASK_HUMAN, 11, 45608, 0, 3519, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP3BiS', @RACEMASK_HUMAN, 12, 47464, 0, 0, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP3BiS', @RACEMASK_HUMAN, 13, 44253, 0, 0, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP3BiS', @RACEMASK_HUMAN, 14, 47546, 3605, 3519, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP3BiS', @RACEMASK_HUMAN, 15, 47491, 3827, 3554, 3519, 0, 0, 0),
('Hunter', 'Survival80PvEP3BiS', @RACEMASK_HUMAN, 17, 47523, 3608, 3554, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP3BiS', @RACEMASK_A, 0, 48267, 3817, 3628, 3554, 0, 0, 0),
('Hunter', 'Survival80PvEP3BiS', @RACEMASK_A, 1, 47433, 0, 3733, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP3BiS', @RACEMASK_A, 2, 48269, 3808, 3519, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP3BiS', @RACEMASK_A, 4, 48265, 3832, 3519, 3554, 0, 0, 0),
('Hunter', 'Survival80PvEP3BiS', @RACEMASK_A, 5, 47472, 0, 3554, 3733, 0, 0, 3733),
('Hunter', 'Survival80PvEP3BiS', @RACEMASK_A, 6, 47480, 3823, 3879, 3554, 3519, 0, 0),
('Hunter', 'Survival80PvEP3BiS', @RACEMASK_A, 7, 47457, 3606, 3519, 3519, 0, 0, 0),
('Hunter', 'Survival80PvEP3BiS', @RACEMASK_A, 8, 47442, 3845, 3555, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP3BiS', @RACEMASK_A, 9, 48266, 3604, 3555, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP3BiS', @RACEMASK_A, 10, 47443, 0, 3519, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP3BiS', @RACEMASK_A, 11, 45608, 0, 3519, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP3BiS', @RACEMASK_A, 12, 47464, 0, 0, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP3BiS', @RACEMASK_A, 13, 44253, 0, 0, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP3BiS', @RACEMASK_A, 14, 47546, 3605, 3519, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP3BiS', @RACEMASK_A, 15, 47491, 3827, 3554, 3519, 0, 0, 0),
('Hunter', 'Survival80PvEP3BiS', @RACEMASK_A, 17, 47523, 3608, 3554, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP3BiS', @RACEMASK_H, 0, 48267, 3817, 3628, 3554, 0, 0, 0),
('Hunter', 'Survival80PvEP3BiS', @RACEMASK_H, 1, 47433, 0, 3733, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP3BiS', @RACEMASK_H, 2, 48269, 3808, 3519, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP3BiS', @RACEMASK_H, 4, 48265, 3832, 3519, 3554, 0, 0, 0),
('Hunter', 'Survival80PvEP3BiS', @RACEMASK_H, 5, 47472, 0, 3554, 3733, 0, 0, 3733),
('Hunter', 'Survival80PvEP3BiS', @RACEMASK_H, 6, 47480, 3823, 3879, 3554, 3519, 0, 0),
('Hunter', 'Survival80PvEP3BiS', @RACEMASK_H, 7, 47457, 3606, 3519, 3519, 0, 0, 0),
('Hunter', 'Survival80PvEP3BiS', @RACEMASK_H, 8, 47442, 3845, 3555, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP3BiS', @RACEMASK_H, 9, 48266, 3604, 3555, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP3BiS', @RACEMASK_H, 10, 47443, 0, 3519, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP3BiS', @RACEMASK_H, 11, 45608, 0, 3519, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP3BiS', @RACEMASK_H, 12, 47464, 0, 0, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP3BiS', @RACEMASK_H, 13, 44253, 0, 0, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP3BiS', @RACEMASK_H, 14, 47546, 3605, 3519, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP3BiS', @RACEMASK_H, 15, 47491, 3827, 3554, 3519, 0, 0, 0),
('Hunter', 'Survival80PvEP3BiS', @RACEMASK_H, 17, 47523, 3608, 3554, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Mage Arcane 80PvEP3BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Mage', 'Arcane80PvEP3BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_magicalsentry:30|t|r Use Arcane PvE P3 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Arcane80PvE', 'Arcane80PvE', 'WotLK Phase 3', 303),
('Mage', 'Arcane80PvEP3BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_magicalsentry:30|t|r Use Arcane PvE P3 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Arcane80PvE', 'Arcane80PvE', 'WotLK Phase 3', 303);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Mage', 'Arcane80PvEP3BiS', @RACEMASK_HUMAN, 0, 47764, 3820, 3621, 3545, 0, 0, 0),
('Mage', 'Arcane80PvEP3BiS', @RACEMASK_HUMAN, 1, 47468, 0, 3563, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP3BiS', @RACEMASK_HUMAN, 2, 47767, 3810, 3545, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP3BiS', @RACEMASK_HUMAN, 4, 47425, 3832, 3545, 3520, 3563, 0, 0),
('Mage', 'Arcane80PvEP3BiS', @RACEMASK_HUMAN, 5, 47419, 0, 3545, 3520, 0, 0, 3520),
('Mage', 'Arcane80PvEP3BiS', @RACEMASK_HUMAN, 6, 47765, 3719, 3563, 3563, 0, 0, 0),
('Mage', 'Arcane80PvEP3BiS', @RACEMASK_HUMAN, 7, 47454, 3606, 3545, 3520, 0, 0, 0),
('Mage', 'Arcane80PvEP3BiS', @RACEMASK_HUMAN, 8, 47485, 2332, 3545, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP3BiS', @RACEMASK_HUMAN, 9, 47763, 3604, 3520, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP3BiS', @RACEMASK_HUMAN, 10, 45495, 0, 3545, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP3BiS', @RACEMASK_HUMAN, 11, 47489, 0, 3563, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP3BiS', @RACEMASK_HUMAN, 12, 47477, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP3BiS', @RACEMASK_HUMAN, 13, 45518, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP3BiS', @RACEMASK_HUMAN, 14, 47551, 3722, 3520, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP3BiS', @RACEMASK_HUMAN, 15, 47422, 3834, 3545, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP3BiS', @RACEMASK_HUMAN, 16, 48032, 0, 3563, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP3BiS', @RACEMASK_HUMAN, 17, 45294, 0, 3520, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP3BiS', @RACEMASK_A, 0, 47764, 3820, 3621, 3545, 0, 0, 0),
('Mage', 'Arcane80PvEP3BiS', @RACEMASK_A, 1, 47468, 0, 3563, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP3BiS', @RACEMASK_A, 2, 47767, 3810, 3545, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP3BiS', @RACEMASK_A, 4, 47425, 3832, 3545, 3520, 3563, 0, 0),
('Mage', 'Arcane80PvEP3BiS', @RACEMASK_A, 5, 47419, 0, 3545, 3520, 0, 0, 3520),
('Mage', 'Arcane80PvEP3BiS', @RACEMASK_A, 6, 47765, 3719, 3563, 3563, 0, 0, 0),
('Mage', 'Arcane80PvEP3BiS', @RACEMASK_A, 7, 47454, 3606, 3545, 3520, 0, 0, 0),
('Mage', 'Arcane80PvEP3BiS', @RACEMASK_A, 8, 47485, 2332, 3545, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP3BiS', @RACEMASK_A, 9, 47763, 3604, 3520, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP3BiS', @RACEMASK_A, 10, 45495, 0, 3545, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP3BiS', @RACEMASK_A, 11, 47489, 0, 3563, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP3BiS', @RACEMASK_A, 12, 47477, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP3BiS', @RACEMASK_A, 13, 45518, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP3BiS', @RACEMASK_A, 14, 47551, 3722, 3520, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP3BiS', @RACEMASK_A, 15, 47422, 3834, 3545, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP3BiS', @RACEMASK_A, 16, 48032, 0, 3563, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP3BiS', @RACEMASK_A, 17, 45294, 0, 3520, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP3BiS', @RACEMASK_H, 0, 47764, 3820, 3621, 3545, 0, 0, 0),
('Mage', 'Arcane80PvEP3BiS', @RACEMASK_H, 1, 47468, 0, 3563, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP3BiS', @RACEMASK_H, 2, 47767, 3810, 3545, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP3BiS', @RACEMASK_H, 4, 47425, 3832, 3545, 3520, 3563, 0, 0),
('Mage', 'Arcane80PvEP3BiS', @RACEMASK_H, 5, 47419, 0, 3545, 3520, 0, 0, 3520),
('Mage', 'Arcane80PvEP3BiS', @RACEMASK_H, 6, 47765, 3719, 3563, 3563, 0, 0, 0),
('Mage', 'Arcane80PvEP3BiS', @RACEMASK_H, 7, 47454, 3606, 3545, 3520, 0, 0, 0),
('Mage', 'Arcane80PvEP3BiS', @RACEMASK_H, 8, 47485, 2332, 3545, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP3BiS', @RACEMASK_H, 9, 47763, 3604, 3520, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP3BiS', @RACEMASK_H, 10, 45495, 0, 3545, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP3BiS', @RACEMASK_H, 11, 47489, 0, 3563, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP3BiS', @RACEMASK_H, 12, 47477, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP3BiS', @RACEMASK_H, 13, 45518, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP3BiS', @RACEMASK_H, 14, 47551, 3722, 3520, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP3BiS', @RACEMASK_H, 15, 47422, 3834, 3545, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP3BiS', @RACEMASK_H, 16, 48032, 0, 3563, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP3BiS', @RACEMASK_H, 17, 45294, 0, 3520, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Mage Fire 80PvEP3BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Mage', 'Fire80PvEP3BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_fire_flamebolt:30|t|r Use Fire PvE P3 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Fire80PvE', 'Fire80PvE', 'WotLK Phase 3', 303),
('Mage', 'Fire80PvEP3BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_fire_flamebolt:30|t|r Use Fire PvE P3 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Fire80PvE', 'Fire80PvE', 'WotLK Phase 3', 303);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Mage', 'Fire80PvEP3BiS', @RACEMASK_HUMAN, 0, 47764, 3820, 3621, 3545, 0, 0, 0),
('Mage', 'Fire80PvEP3BiS', @RACEMASK_HUMAN, 1, 47468, 0, 3563, 0, 0, 0, 0),
('Mage', 'Fire80PvEP3BiS', @RACEMASK_HUMAN, 2, 47767, 3810, 3545, 0, 0, 0, 0),
('Mage', 'Fire80PvEP3BiS', @RACEMASK_HUMAN, 4, 47462, 3832, 3545, 3563, 3520, 0, 0),
('Mage', 'Fire80PvEP3BiS', @RACEMASK_HUMAN, 5, 47447, 0, 3545, 3520, 0, 0, 3520),
('Mage', 'Fire80PvEP3BiS', @RACEMASK_HUMAN, 6, 47765, 3719, 3563, 3563, 0, 0, 0),
('Mage', 'Fire80PvEP3BiS', @RACEMASK_HUMAN, 7, 47454, 3606, 3545, 3520, 0, 0, 0),
('Mage', 'Fire80PvEP3BiS', @RACEMASK_HUMAN, 8, 47467, 2332, 3563, 0, 0, 0, 0),
('Mage', 'Fire80PvEP3BiS', @RACEMASK_HUMAN, 9, 47763, 3604, 3520, 0, 0, 0, 0),
('Mage', 'Fire80PvEP3BiS', @RACEMASK_HUMAN, 10, 45495, 0, 3545, 0, 0, 0, 0),
('Mage', 'Fire80PvEP3BiS', @RACEMASK_HUMAN, 11, 47489, 0, 3563, 0, 0, 0, 0),
('Mage', 'Fire80PvEP3BiS', @RACEMASK_HUMAN, 12, 47477, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire80PvEP3BiS', @RACEMASK_HUMAN, 13, 45518, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire80PvEP3BiS', @RACEMASK_HUMAN, 14, 47551, 3722, 3520, 0, 0, 0, 0),
('Mage', 'Fire80PvEP3BiS', @RACEMASK_HUMAN, 15, 47518, 3834, 3563, 0, 0, 0, 0),
('Mage', 'Fire80PvEP3BiS', @RACEMASK_HUMAN, 16, 47437, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire80PvEP3BiS', @RACEMASK_HUMAN, 17, 45294, 0, 3520, 0, 0, 0, 0),
('Mage', 'Fire80PvEP3BiS', @RACEMASK_A, 0, 47764, 3820, 3621, 3545, 0, 0, 0),
('Mage', 'Fire80PvEP3BiS', @RACEMASK_A, 1, 47468, 0, 3563, 0, 0, 0, 0),
('Mage', 'Fire80PvEP3BiS', @RACEMASK_A, 2, 47767, 3810, 3545, 0, 0, 0, 0),
('Mage', 'Fire80PvEP3BiS', @RACEMASK_A, 4, 47462, 3832, 3545, 3563, 3520, 0, 0),
('Mage', 'Fire80PvEP3BiS', @RACEMASK_A, 5, 47447, 0, 3545, 3520, 0, 0, 3520),
('Mage', 'Fire80PvEP3BiS', @RACEMASK_A, 6, 47765, 3719, 3563, 3563, 0, 0, 0),
('Mage', 'Fire80PvEP3BiS', @RACEMASK_A, 7, 47454, 3606, 3545, 3520, 0, 0, 0),
('Mage', 'Fire80PvEP3BiS', @RACEMASK_A, 8, 47467, 2332, 3563, 0, 0, 0, 0),
('Mage', 'Fire80PvEP3BiS', @RACEMASK_A, 9, 47763, 3604, 3520, 0, 0, 0, 0),
('Mage', 'Fire80PvEP3BiS', @RACEMASK_A, 10, 45495, 0, 3545, 0, 0, 0, 0),
('Mage', 'Fire80PvEP3BiS', @RACEMASK_A, 11, 47489, 0, 3563, 0, 0, 0, 0),
('Mage', 'Fire80PvEP3BiS', @RACEMASK_A, 12, 47477, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire80PvEP3BiS', @RACEMASK_A, 13, 45518, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire80PvEP3BiS', @RACEMASK_A, 14, 47551, 3722, 3520, 0, 0, 0, 0),
('Mage', 'Fire80PvEP3BiS', @RACEMASK_A, 15, 47518, 3834, 3563, 0, 0, 0, 0),
('Mage', 'Fire80PvEP3BiS', @RACEMASK_A, 16, 47437, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire80PvEP3BiS', @RACEMASK_A, 17, 45294, 0, 3520, 0, 0, 0, 0),
('Mage', 'Fire80PvEP3BiS', @RACEMASK_H, 0, 47764, 3820, 3621, 3545, 0, 0, 0),
('Mage', 'Fire80PvEP3BiS', @RACEMASK_H, 1, 47468, 0, 3563, 0, 0, 0, 0),
('Mage', 'Fire80PvEP3BiS', @RACEMASK_H, 2, 47767, 3810, 3545, 0, 0, 0, 0),
('Mage', 'Fire80PvEP3BiS', @RACEMASK_H, 4, 47462, 3832, 3545, 3563, 3520, 0, 0),
('Mage', 'Fire80PvEP3BiS', @RACEMASK_H, 5, 47447, 0, 3545, 3520, 0, 0, 3520),
('Mage', 'Fire80PvEP3BiS', @RACEMASK_H, 6, 47765, 3719, 3563, 3563, 0, 0, 0),
('Mage', 'Fire80PvEP3BiS', @RACEMASK_H, 7, 47454, 3606, 3545, 3520, 0, 0, 0),
('Mage', 'Fire80PvEP3BiS', @RACEMASK_H, 8, 47467, 2332, 3563, 0, 0, 0, 0),
('Mage', 'Fire80PvEP3BiS', @RACEMASK_H, 9, 47763, 3604, 3520, 0, 0, 0, 0),
('Mage', 'Fire80PvEP3BiS', @RACEMASK_H, 10, 45495, 0, 3545, 0, 0, 0, 0),
('Mage', 'Fire80PvEP3BiS', @RACEMASK_H, 11, 47489, 0, 3563, 0, 0, 0, 0),
('Mage', 'Fire80PvEP3BiS', @RACEMASK_H, 12, 47477, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire80PvEP3BiS', @RACEMASK_H, 13, 45518, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire80PvEP3BiS', @RACEMASK_H, 14, 47551, 3722, 3520, 0, 0, 0, 0),
('Mage', 'Fire80PvEP3BiS', @RACEMASK_H, 15, 47518, 3834, 3563, 0, 0, 0, 0),
('Mage', 'Fire80PvEP3BiS', @RACEMASK_H, 16, 47437, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire80PvEP3BiS', @RACEMASK_H, 17, 45294, 0, 3520, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Mage Frost 80PvEP3BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Mage', 'Frost80PvEP3BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_frost_frostbolt02:30|t|r Use Frost PvE P3 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Frost80PvE', 'Frost80PvE', 'WotLK Phase 3', 303),
('Mage', 'Frost80PvEP3BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_frost_frostbolt02:30|t|r Use Frost PvE P3 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Frost80PvE', 'Frost80PvE', 'WotLK Phase 3', 303);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Mage', 'Frost80PvEP3BiS', @RACEMASK_HUMAN, 0, 47764, 3820, 3621, 3545, 0, 0, 0),
('Mage', 'Frost80PvEP3BiS', @RACEMASK_HUMAN, 1, 47468, 0, 3563, 0, 0, 0, 0),
('Mage', 'Frost80PvEP3BiS', @RACEMASK_HUMAN, 2, 47767, 3810, 3545, 0, 0, 0, 0),
('Mage', 'Frost80PvEP3BiS', @RACEMASK_HUMAN, 4, 47462, 3832, 3545, 3563, 3563, 0, 0),
('Mage', 'Frost80PvEP3BiS', @RACEMASK_HUMAN, 5, 47419, 0, 3545, 3520, 0, 0, 3520),
('Mage', 'Frost80PvEP3BiS', @RACEMASK_HUMAN, 6, 47765, 3719, 3563, 3563, 0, 0, 0),
('Mage', 'Frost80PvEP3BiS', @RACEMASK_HUMAN, 7, 47454, 3606, 3545, 3520, 0, 0, 0),
('Mage', 'Frost80PvEP3BiS', @RACEMASK_HUMAN, 8, 47485, 2332, 3563, 0, 0, 0, 0),
('Mage', 'Frost80PvEP3BiS', @RACEMASK_HUMAN, 9, 47763, 3604, 3520, 0, 0, 0, 0),
('Mage', 'Frost80PvEP3BiS', @RACEMASK_HUMAN, 10, 45495, 0, 3545, 0, 0, 0, 0),
('Mage', 'Frost80PvEP3BiS', @RACEMASK_HUMAN, 11, 46046, 0, 3520, 0, 0, 0, 0),
('Mage', 'Frost80PvEP3BiS', @RACEMASK_HUMAN, 12, 47477, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost80PvEP3BiS', @RACEMASK_HUMAN, 13, 45518, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost80PvEP3BiS', @RACEMASK_HUMAN, 14, 47551, 3722, 3520, 0, 0, 0, 0),
('Mage', 'Frost80PvEP3BiS', @RACEMASK_HUMAN, 15, 47422, 3834, 3563, 0, 0, 0, 0),
('Mage', 'Frost80PvEP3BiS', @RACEMASK_HUMAN, 16, 48032, 0, 3563, 0, 0, 0, 0),
('Mage', 'Frost80PvEP3BiS', @RACEMASK_HUMAN, 17, 45294, 0, 3520, 0, 0, 0, 0),
('Mage', 'Frost80PvEP3BiS', @RACEMASK_A, 0, 47764, 3820, 3621, 3545, 0, 0, 0),
('Mage', 'Frost80PvEP3BiS', @RACEMASK_A, 1, 47468, 0, 3563, 0, 0, 0, 0),
('Mage', 'Frost80PvEP3BiS', @RACEMASK_A, 2, 47767, 3810, 3545, 0, 0, 0, 0),
('Mage', 'Frost80PvEP3BiS', @RACEMASK_A, 4, 47462, 3832, 3545, 3563, 3563, 0, 0),
('Mage', 'Frost80PvEP3BiS', @RACEMASK_A, 5, 47419, 0, 3545, 3520, 0, 0, 3520),
('Mage', 'Frost80PvEP3BiS', @RACEMASK_A, 6, 47765, 3719, 3563, 3563, 0, 0, 0),
('Mage', 'Frost80PvEP3BiS', @RACEMASK_A, 7, 47454, 3606, 3545, 3520, 0, 0, 0),
('Mage', 'Frost80PvEP3BiS', @RACEMASK_A, 8, 47485, 2332, 3563, 0, 0, 0, 0),
('Mage', 'Frost80PvEP3BiS', @RACEMASK_A, 9, 47763, 3604, 3520, 0, 0, 0, 0),
('Mage', 'Frost80PvEP3BiS', @RACEMASK_A, 10, 45495, 0, 3545, 0, 0, 0, 0),
('Mage', 'Frost80PvEP3BiS', @RACEMASK_A, 11, 46046, 0, 3520, 0, 0, 0, 0),
('Mage', 'Frost80PvEP3BiS', @RACEMASK_A, 12, 47477, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost80PvEP3BiS', @RACEMASK_A, 13, 45518, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost80PvEP3BiS', @RACEMASK_A, 14, 47551, 3722, 3520, 0, 0, 0, 0),
('Mage', 'Frost80PvEP3BiS', @RACEMASK_A, 15, 47422, 3834, 3563, 0, 0, 0, 0),
('Mage', 'Frost80PvEP3BiS', @RACEMASK_A, 16, 48032, 0, 3563, 0, 0, 0, 0),
('Mage', 'Frost80PvEP3BiS', @RACEMASK_A, 17, 45294, 0, 3520, 0, 0, 0, 0),
('Mage', 'Frost80PvEP3BiS', @RACEMASK_H, 0, 47764, 3820, 3621, 3545, 0, 0, 0),
('Mage', 'Frost80PvEP3BiS', @RACEMASK_H, 1, 47468, 0, 3563, 0, 0, 0, 0),
('Mage', 'Frost80PvEP3BiS', @RACEMASK_H, 2, 47767, 3810, 3545, 0, 0, 0, 0),
('Mage', 'Frost80PvEP3BiS', @RACEMASK_H, 4, 47462, 3832, 3545, 3563, 3563, 0, 0),
('Mage', 'Frost80PvEP3BiS', @RACEMASK_H, 5, 47419, 0, 3545, 3520, 0, 0, 3520),
('Mage', 'Frost80PvEP3BiS', @RACEMASK_H, 6, 47765, 3719, 3563, 3563, 0, 0, 0),
('Mage', 'Frost80PvEP3BiS', @RACEMASK_H, 7, 47454, 3606, 3545, 3520, 0, 0, 0),
('Mage', 'Frost80PvEP3BiS', @RACEMASK_H, 8, 47485, 2332, 3563, 0, 0, 0, 0),
('Mage', 'Frost80PvEP3BiS', @RACEMASK_H, 9, 47763, 3604, 3520, 0, 0, 0, 0),
('Mage', 'Frost80PvEP3BiS', @RACEMASK_H, 10, 45495, 0, 3545, 0, 0, 0, 0),
('Mage', 'Frost80PvEP3BiS', @RACEMASK_H, 11, 46046, 0, 3520, 0, 0, 0, 0),
('Mage', 'Frost80PvEP3BiS', @RACEMASK_H, 12, 47477, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost80PvEP3BiS', @RACEMASK_H, 13, 45518, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost80PvEP3BiS', @RACEMASK_H, 14, 47551, 3722, 3520, 0, 0, 0, 0),
('Mage', 'Frost80PvEP3BiS', @RACEMASK_H, 15, 47422, 3834, 3563, 0, 0, 0, 0),
('Mage', 'Frost80PvEP3BiS', @RACEMASK_H, 16, 48032, 0, 3563, 0, 0, 0, 0),
('Mage', 'Frost80PvEP3BiS', @RACEMASK_H, 17, 45294, 0, 3520, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Paladin Holy 80PvEP3BiSHeal (healer) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Paladin', 'Holy80PvEP3BiSHeal', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Use Holy PvE P3 BiS Heal', 7, @MINLEVEL, @MAXLEVEL, 'Holy80PvE', 'Holy80PvE', 'WotLK Phase 3', 303),
('Paladin', 'Holy80PvEP3BiSHeal', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Use Holy PvE P3 BiS Heal (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Holy80PvE', 'Holy80PvE', 'WotLK Phase 3', 303);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Paladin', 'Holy80PvEP3BiSHeal', @RACEMASK_HUMAN, 0, 46180, 3820, 3627, 3526, 0, 0, 0),
('Paladin', 'Holy80PvEP3BiSHeal', @RACEMASK_HUMAN, 1, 47468, 0, 3526, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP3BiSHeal', @RACEMASK_HUMAN, 2, 46182, 3810, 3526, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP3BiSHeal', @RACEMASK_HUMAN, 4, 47471, 3832, 3737, 3737, 3737, 0, 0),
('Paladin', 'Holy80PvEP3BiSHeal', @RACEMASK_HUMAN, 5, 47997, 0, 3583, 3526, 0, 0, 0),
('Paladin', 'Holy80PvEP3BiSHeal', @RACEMASK_HUMAN, 6, 46181, 3721, 3526, 3526, 0, 0, 0),
('Paladin', 'Holy80PvEP3BiSHeal', @RACEMASK_HUMAN, 7, 47424, 3606, 3526, 3526, 0, 0, 0),
('Paladin', 'Holy80PvEP3BiSHeal', @RACEMASK_HUMAN, 8, 45460, 1119, 3526, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP3BiSHeal', @RACEMASK_HUMAN, 9, 46179, 3604, 3558, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP3BiSHeal', @RACEMASK_HUMAN, 10, 47439, 0, 3526, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP3BiSHeal', @RACEMASK_HUMAN, 11, 45614, 0, 3526, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP3BiSHeal', @RACEMASK_HUMAN, 12, 46051, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP3BiSHeal', @RACEMASK_HUMAN, 13, 37111, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP3BiSHeal', @RACEMASK_HUMAN, 14, 47551, 3831, 3526, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP3BiSHeal', @RACEMASK_HUMAN, 15, 46017, 2666, 0, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP3BiSHeal', @RACEMASK_HUMAN, 16, 47448, 1128, 3526, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP3BiSHeal', @RACEMASK_HUMAN, 17, 40705, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP3BiSHeal', @RACEMASK_A, 0, 46180, 3820, 3627, 3526, 0, 0, 0),
('Paladin', 'Holy80PvEP3BiSHeal', @RACEMASK_A, 1, 47468, 0, 3526, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP3BiSHeal', @RACEMASK_A, 2, 46182, 3810, 3526, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP3BiSHeal', @RACEMASK_A, 4, 47471, 3832, 3737, 3737, 3737, 0, 0),
('Paladin', 'Holy80PvEP3BiSHeal', @RACEMASK_A, 5, 47997, 0, 3583, 3526, 0, 0, 0),
('Paladin', 'Holy80PvEP3BiSHeal', @RACEMASK_A, 6, 46181, 3721, 3526, 3526, 0, 0, 0),
('Paladin', 'Holy80PvEP3BiSHeal', @RACEMASK_A, 7, 47424, 3606, 3526, 3526, 0, 0, 0),
('Paladin', 'Holy80PvEP3BiSHeal', @RACEMASK_A, 8, 45460, 1119, 3526, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP3BiSHeal', @RACEMASK_A, 9, 46179, 3604, 3558, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP3BiSHeal', @RACEMASK_A, 10, 47439, 0, 3526, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP3BiSHeal', @RACEMASK_A, 11, 45614, 0, 3526, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP3BiSHeal', @RACEMASK_A, 12, 46051, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP3BiSHeal', @RACEMASK_A, 13, 37111, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP3BiSHeal', @RACEMASK_A, 14, 47551, 3831, 3526, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP3BiSHeal', @RACEMASK_A, 15, 46017, 2666, 0, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP3BiSHeal', @RACEMASK_A, 16, 47448, 1128, 3526, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP3BiSHeal', @RACEMASK_A, 17, 40705, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP3BiSHeal', @RACEMASK_H, 0, 46180, 3820, 3627, 3526, 0, 0, 0),
('Paladin', 'Holy80PvEP3BiSHeal', @RACEMASK_H, 1, 47468, 0, 3526, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP3BiSHeal', @RACEMASK_H, 2, 46182, 3810, 3526, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP3BiSHeal', @RACEMASK_H, 4, 47471, 3832, 3737, 3737, 3737, 0, 0),
('Paladin', 'Holy80PvEP3BiSHeal', @RACEMASK_H, 5, 47997, 0, 3583, 3526, 0, 0, 0),
('Paladin', 'Holy80PvEP3BiSHeal', @RACEMASK_H, 6, 46181, 3721, 3526, 3526, 0, 0, 0),
('Paladin', 'Holy80PvEP3BiSHeal', @RACEMASK_H, 7, 47424, 3606, 3526, 3526, 0, 0, 0),
('Paladin', 'Holy80PvEP3BiSHeal', @RACEMASK_H, 8, 45460, 1119, 3526, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP3BiSHeal', @RACEMASK_H, 9, 46179, 3604, 3558, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP3BiSHeal', @RACEMASK_H, 10, 47439, 0, 3526, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP3BiSHeal', @RACEMASK_H, 11, 45614, 0, 3526, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP3BiSHeal', @RACEMASK_H, 12, 46051, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP3BiSHeal', @RACEMASK_H, 13, 37111, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP3BiSHeal', @RACEMASK_H, 14, 47551, 3831, 3526, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP3BiSHeal', @RACEMASK_H, 15, 46017, 2666, 0, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP3BiSHeal', @RACEMASK_H, 16, 47448, 1128, 3526, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP3BiSHeal', @RACEMASK_H, 17, 40705, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Paladin Protection 80PvEP3BiSTank (tank) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Paladin', 'Protection80PvEP3BiSTank', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_devotionaura:30|t|r Use Protection PvE P3 BiS Tank', 7, @MINLEVEL, @MAXLEVEL, 'Protection80PvE', 'Protection80PvE', 'WotLK Phase 3', 303),
('Paladin', 'Protection80PvEP3BiSTank', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_devotionaura:30|t|r Use Protection PvE P3 BiS Tank (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Protection80PvE', 'Protection80PvE', 'WotLK Phase 3', 303);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Paladin', 'Protection80PvEP3BiSTank', @RACEMASK_HUMAN, 0, 49475, 3878, 3637, 3536, 0, 0, 0),
('Paladin', 'Protection80PvEP3BiSTank', @RACEMASK_HUMAN, 1, 47466, 0, 3532, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP3BiSTank', @RACEMASK_HUMAN, 2, 48661, 3852, 3532, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP3BiSTank', @RACEMASK_HUMAN, 4, 47415, 3832, 3536, 3879, 3532, 0, 0),
('Paladin', 'Protection80PvEP3BiSTank', @RACEMASK_HUMAN, 5, 47444, 0, 3536, 3532, 0, 0, 3532),
('Paladin', 'Protection80PvEP3BiSTank', @RACEMASK_HUMAN, 6, 48660, 3822, 3536, 3532, 0, 0, 0),
('Paladin', 'Protection80PvEP3BiSTank', @RACEMASK_HUMAN, 7, 47430, 3606, 3536, 3532, 0, 0, 0),
('Paladin', 'Protection80PvEP3BiSTank', @RACEMASK_HUMAN, 8, 47991, 3850, 3532, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP3BiSTank', @RACEMASK_HUMAN, 9, 45487, 3860, 3532, 3532, 0, 0, 0),
('Paladin', 'Protection80PvEP3BiSTank', @RACEMASK_HUMAN, 10, 47476, 0, 3532, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP3BiSTank', @RACEMASK_HUMAN, 11, 45471, 0, 3574, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP3BiSTank', @RACEMASK_HUMAN, 12, 45158, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP3BiSTank', @RACEMASK_HUMAN, 13, 47451, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP3BiSTank', @RACEMASK_HUMAN, 14, 47550, 3605, 3532, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP3BiSTank', @RACEMASK_HUMAN, 15, 46097, 3788, 3532, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP3BiSTank', @RACEMASK_HUMAN, 16, 47421, 3849, 3532, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP3BiSTank', @RACEMASK_HUMAN, 17, 47661, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP3BiSTank', @RACEMASK_A, 0, 49475, 3878, 3637, 3536, 0, 0, 0),
('Paladin', 'Protection80PvEP3BiSTank', @RACEMASK_A, 1, 47466, 0, 3532, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP3BiSTank', @RACEMASK_A, 2, 48661, 3852, 3532, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP3BiSTank', @RACEMASK_A, 4, 47415, 3832, 3536, 3879, 3532, 0, 0),
('Paladin', 'Protection80PvEP3BiSTank', @RACEMASK_A, 5, 47444, 0, 3536, 3532, 0, 0, 3532),
('Paladin', 'Protection80PvEP3BiSTank', @RACEMASK_A, 6, 48660, 3822, 3536, 3532, 0, 0, 0),
('Paladin', 'Protection80PvEP3BiSTank', @RACEMASK_A, 7, 47430, 3606, 3536, 3532, 0, 0, 0),
('Paladin', 'Protection80PvEP3BiSTank', @RACEMASK_A, 8, 47991, 3850, 3532, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP3BiSTank', @RACEMASK_A, 9, 45487, 3860, 3532, 3532, 0, 0, 0),
('Paladin', 'Protection80PvEP3BiSTank', @RACEMASK_A, 10, 47476, 0, 3532, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP3BiSTank', @RACEMASK_A, 11, 45471, 0, 3574, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP3BiSTank', @RACEMASK_A, 12, 45158, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP3BiSTank', @RACEMASK_A, 13, 47451, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP3BiSTank', @RACEMASK_A, 14, 47550, 3605, 3532, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP3BiSTank', @RACEMASK_A, 15, 46097, 3788, 3532, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP3BiSTank', @RACEMASK_A, 16, 47421, 3849, 3532, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP3BiSTank', @RACEMASK_A, 17, 47661, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP3BiSTank', @RACEMASK_H, 0, 49475, 3878, 3637, 3536, 0, 0, 0),
('Paladin', 'Protection80PvEP3BiSTank', @RACEMASK_H, 1, 47466, 0, 3532, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP3BiSTank', @RACEMASK_H, 2, 48661, 3852, 3532, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP3BiSTank', @RACEMASK_H, 4, 47415, 3832, 3536, 3879, 3532, 0, 0),
('Paladin', 'Protection80PvEP3BiSTank', @RACEMASK_H, 5, 47444, 0, 3536, 3532, 0, 0, 3532),
('Paladin', 'Protection80PvEP3BiSTank', @RACEMASK_H, 6, 48660, 3822, 3536, 3532, 0, 0, 0),
('Paladin', 'Protection80PvEP3BiSTank', @RACEMASK_H, 7, 47430, 3606, 3536, 3532, 0, 0, 0),
('Paladin', 'Protection80PvEP3BiSTank', @RACEMASK_H, 8, 47991, 3850, 3532, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP3BiSTank', @RACEMASK_H, 9, 45487, 3860, 3532, 3532, 0, 0, 0),
('Paladin', 'Protection80PvEP3BiSTank', @RACEMASK_H, 10, 47476, 0, 3532, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP3BiSTank', @RACEMASK_H, 11, 45471, 0, 3574, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP3BiSTank', @RACEMASK_H, 12, 45158, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP3BiSTank', @RACEMASK_H, 13, 47451, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP3BiSTank', @RACEMASK_H, 14, 47550, 3605, 3532, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP3BiSTank', @RACEMASK_H, 15, 46097, 3788, 3532, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP3BiSTank', @RACEMASK_H, 16, 47421, 3849, 3532, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP3BiSTank', @RACEMASK_H, 17, 47661, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Paladin Retribution 80PvEP3BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Paladin', 'Retribution80PvEP3BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_auraoflight:30|t|r Use Retribution PvE P3 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Retribution80PvE', 'Retribution80PvE', 'WotLK Phase 3', 303),
('Paladin', 'Retribution80PvEP3BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_auraoflight:30|t|r Use Retribution PvE P3 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Retribution80PvE', 'Retribution80PvE', 'WotLK Phase 3', 303);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Paladin', 'Retribution80PvEP3BiS', @RACEMASK_HUMAN, 0, 48619, 3817, 3628, 3528, 0, 0, 0),
('Paladin', 'Retribution80PvEP3BiS', @RACEMASK_HUMAN, 1, 47060, 0, 3518, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP3BiS', @RACEMASK_HUMAN, 2, 48621, 3808, 3518, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP3BiS', @RACEMASK_HUMAN, 4, 48617, 3832, 3518, 3518, 0, 0, 0),
('Paladin', 'Retribution80PvEP3BiS', @RACEMASK_HUMAN, 5, 47429, 0, 3732, 3732, 0, 0, 3732),
('Paladin', 'Retribution80PvEP3BiS', @RACEMASK_HUMAN, 6, 47465, 3823, 3518, 3518, 3518, 0, 0),
('Paladin', 'Retribution80PvEP3BiS', @RACEMASK_HUMAN, 7, 47473, 3606, 3518, 3518, 0, 0, 0),
('Paladin', 'Retribution80PvEP3BiS', @RACEMASK_HUMAN, 8, 47474, 3845, 3518, 3518, 0, 0, 0),
('Paladin', 'Retribution80PvEP3BiS', @RACEMASK_HUMAN, 9, 48618, 3604, 3518, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP3BiS', @RACEMASK_HUMAN, 10, 47413, 0, 3518, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP3BiS', @RACEMASK_HUMAN, 11, 47443, 0, 3518, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP3BiS', @RACEMASK_HUMAN, 12, 47464, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP3BiS', @RACEMASK_HUMAN, 13, 42987, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP3BiS', @RACEMASK_HUMAN, 14, 47548, 3605, 3518, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP3BiS', @RACEMASK_HUMAN, 15, 47520, 3789, 3518, 3879, 0, 0, 0),
('Paladin', 'Retribution80PvEP3BiS', @RACEMASK_HUMAN, 17, 47661, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP3BiS', @RACEMASK_A, 0, 48619, 3817, 3628, 3528, 0, 0, 0),
('Paladin', 'Retribution80PvEP3BiS', @RACEMASK_A, 1, 47060, 0, 3518, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP3BiS', @RACEMASK_A, 2, 48621, 3808, 3518, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP3BiS', @RACEMASK_A, 4, 48617, 3832, 3518, 3518, 0, 0, 0),
('Paladin', 'Retribution80PvEP3BiS', @RACEMASK_A, 5, 47429, 0, 3732, 3732, 0, 0, 3732),
('Paladin', 'Retribution80PvEP3BiS', @RACEMASK_A, 6, 47465, 3823, 3518, 3518, 3518, 0, 0),
('Paladin', 'Retribution80PvEP3BiS', @RACEMASK_A, 7, 47473, 3606, 3518, 3518, 0, 0, 0),
('Paladin', 'Retribution80PvEP3BiS', @RACEMASK_A, 8, 47474, 3845, 3518, 3518, 0, 0, 0),
('Paladin', 'Retribution80PvEP3BiS', @RACEMASK_A, 9, 48618, 3604, 3518, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP3BiS', @RACEMASK_A, 10, 47413, 0, 3518, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP3BiS', @RACEMASK_A, 11, 47443, 0, 3518, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP3BiS', @RACEMASK_A, 12, 47464, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP3BiS', @RACEMASK_A, 13, 42987, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP3BiS', @RACEMASK_A, 14, 47548, 3605, 3518, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP3BiS', @RACEMASK_A, 15, 47520, 3789, 3518, 3879, 0, 0, 0),
('Paladin', 'Retribution80PvEP3BiS', @RACEMASK_A, 17, 47661, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP3BiS', @RACEMASK_H, 0, 48619, 3817, 3628, 3528, 0, 0, 0),
('Paladin', 'Retribution80PvEP3BiS', @RACEMASK_H, 1, 47433, 0, 3518, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP3BiS', @RACEMASK_H, 2, 48621, 3808, 3518, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP3BiS', @RACEMASK_H, 4, 48617, 3832, 3518, 3518, 0, 0, 0),
('Paladin', 'Retribution80PvEP3BiS', @RACEMASK_H, 5, 47429, 0, 3732, 3732, 0, 0, 3732),
('Paladin', 'Retribution80PvEP3BiS', @RACEMASK_H, 6, 47465, 3823, 3518, 3518, 3518, 0, 0),
('Paladin', 'Retribution80PvEP3BiS', @RACEMASK_H, 7, 47473, 3606, 3518, 3518, 0, 0, 0),
('Paladin', 'Retribution80PvEP3BiS', @RACEMASK_H, 8, 47474, 3845, 3518, 3518, 0, 0, 0),
('Paladin', 'Retribution80PvEP3BiS', @RACEMASK_H, 9, 48618, 3604, 3518, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP3BiS', @RACEMASK_H, 10, 47413, 0, 3518, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP3BiS', @RACEMASK_H, 11, 47443, 0, 3518, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP3BiS', @RACEMASK_H, 12, 47464, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP3BiS', @RACEMASK_H, 13, 42987, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP3BiS', @RACEMASK_H, 14, 47548, 3605, 3518, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP3BiS', @RACEMASK_H, 15, 47520, 3789, 3518, 3879, 0, 0, 0),
('Paladin', 'Retribution80PvEP3BiS', @RACEMASK_H, 17, 47661, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Priest Discipline 80PvEP3BiSHeal (healer) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Priest', 'Discipline80PvEP3BiSHeal', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_wordfortitude:30|t|r Use Discipline PvE P3 BiS Heal', 7, @MINLEVEL, @MAXLEVEL, 'Discipline80PvE', 'Discipline80PvE', 'WotLK Phase 3', 303),
('Priest', 'Discipline80PvEP3BiSHeal', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_wordfortitude:30|t|r Use Discipline PvE P3 BiS Heal (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Discipline80PvE', 'Discipline80PvE', 'WotLK Phase 3', 303);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Priest', 'Discipline80PvEP3BiSHeal', @RACEMASK_HUMAN, 0, 46197, 3820, 3627, 3520, 0, 0, 0),
('Priest', 'Discipline80PvEP3BiSHeal', @RACEMASK_HUMAN, 1, 47930, 0, 3520, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP3BiSHeal', @RACEMASK_HUMAN, 2, 46190, 3810, 3520, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP3BiSHeal', @RACEMASK_HUMAN, 4, 46193, 3832, 3520, 3520, 0, 0, 0),
('Priest', 'Discipline80PvEP3BiSHeal', @RACEMASK_HUMAN, 5, 45619, 0, 3520, 3520, 0, 0, 3520),
('Priest', 'Discipline80PvEP3BiSHeal', @RACEMASK_HUMAN, 6, 47189, 3721, 3520, 3520, 3520, 0, 0),
('Priest', 'Discipline80PvEP3BiSHeal', @RACEMASK_HUMAN, 7, 46050, 3606, 3520, 3520, 0, 0, 0),
('Priest', 'Discipline80PvEP3BiSHeal', @RACEMASK_HUMAN, 8, 47587, 3758, 3520, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP3BiSHeal', @RACEMASK_HUMAN, 9, 46188, 3246, 3520, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP3BiSHeal', @RACEMASK_HUMAN, 10, 46096, 0, 3520, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP3BiSHeal', @RACEMASK_HUMAN, 11, 47224, 0, 3558, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP3BiSHeal', @RACEMASK_HUMAN, 12, 40432, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP3BiSHeal', @RACEMASK_HUMAN, 13, 47059, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP3BiSHeal', @RACEMASK_HUMAN, 14, 47490, 3859, 3546, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP3BiSHeal', @RACEMASK_HUMAN, 15, 47206, 3834, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP3BiSHeal', @RACEMASK_HUMAN, 16, 47146, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP3BiSHeal', @RACEMASK_HUMAN, 17, 45294, 0, 3520, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP3BiSHeal', @RACEMASK_A, 0, 46197, 3820, 3627, 3520, 0, 0, 0),
('Priest', 'Discipline80PvEP3BiSHeal', @RACEMASK_A, 1, 47930, 0, 3520, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP3BiSHeal', @RACEMASK_A, 2, 46190, 3810, 3520, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP3BiSHeal', @RACEMASK_A, 4, 46193, 3832, 3520, 3520, 0, 0, 0),
('Priest', 'Discipline80PvEP3BiSHeal', @RACEMASK_A, 5, 45619, 0, 3520, 3520, 0, 0, 3520),
('Priest', 'Discipline80PvEP3BiSHeal', @RACEMASK_A, 6, 47189, 3721, 3520, 3520, 3520, 0, 0),
('Priest', 'Discipline80PvEP3BiSHeal', @RACEMASK_A, 7, 46050, 3606, 3520, 3520, 0, 0, 0),
('Priest', 'Discipline80PvEP3BiSHeal', @RACEMASK_A, 8, 47587, 3758, 3520, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP3BiSHeal', @RACEMASK_A, 9, 46188, 3246, 3520, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP3BiSHeal', @RACEMASK_A, 10, 46096, 0, 3520, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP3BiSHeal', @RACEMASK_A, 11, 47224, 0, 3558, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP3BiSHeal', @RACEMASK_A, 12, 40432, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP3BiSHeal', @RACEMASK_A, 13, 47059, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP3BiSHeal', @RACEMASK_A, 14, 47490, 3859, 3546, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP3BiSHeal', @RACEMASK_A, 15, 47206, 3834, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP3BiSHeal', @RACEMASK_A, 16, 47146, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP3BiSHeal', @RACEMASK_A, 17, 45294, 0, 3520, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP3BiSHeal', @RACEMASK_H, 0, 46197, 3820, 3627, 3520, 0, 0, 0),
('Priest', 'Discipline80PvEP3BiSHeal', @RACEMASK_H, 1, 48003, 0, 3520, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP3BiSHeal', @RACEMASK_H, 2, 46190, 3810, 3520, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP3BiSHeal', @RACEMASK_H, 4, 46193, 3832, 3520, 3520, 0, 0, 0),
('Priest', 'Discipline80PvEP3BiSHeal', @RACEMASK_H, 5, 45619, 0, 3520, 3520, 0, 0, 3520),
('Priest', 'Discipline80PvEP3BiSHeal', @RACEMASK_H, 6, 47478, 3721, 3520, 3520, 3520, 0, 0),
('Priest', 'Discipline80PvEP3BiSHeal', @RACEMASK_H, 7, 46050, 3606, 3520, 3520, 0, 0, 0),
('Priest', 'Discipline80PvEP3BiSHeal', @RACEMASK_H, 8, 47588, 3758, 3520, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP3BiSHeal', @RACEMASK_H, 9, 46188, 3246, 3520, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP3BiSHeal', @RACEMASK_H, 10, 46096, 0, 3520, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP3BiSHeal', @RACEMASK_H, 11, 47439, 0, 3558, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP3BiSHeal', @RACEMASK_H, 12, 40432, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP3BiSHeal', @RACEMASK_H, 13, 47432, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP3BiSHeal', @RACEMASK_H, 14, 47490, 3859, 3546, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP3BiSHeal', @RACEMASK_H, 15, 47483, 3834, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP3BiSHeal', @RACEMASK_H, 16, 47437, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP3BiSHeal', @RACEMASK_H, 17, 45294, 0, 3520, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Priest Holy 80PvEP3BiSHeal (healer) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Priest', 'Holy80PvEP3BiSHeal', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Use Holy PvE P3 BiS Heal', 7, @MINLEVEL, @MAXLEVEL, 'Holy80PvE', 'Holy80PvE', 'WotLK Phase 3', 303),
('Priest', 'Holy80PvEP3BiSHeal', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Use Holy PvE P3 BiS Heal (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Holy80PvE', 'Holy80PvE', 'WotLK Phase 3', 303);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Priest', 'Holy80PvEP3BiSHeal', @RACEMASK_HUMAN, 0, 49482, 3820, 3627, 3582, 0, 0, 0),
('Priest', 'Holy80PvEP3BiSHeal', @RACEMASK_HUMAN, 1, 45443, 0, 3531, 0, 0, 0, 0),
('Priest', 'Holy80PvEP3BiSHeal', @RACEMASK_HUMAN, 2, 46068, 3810, 3531, 3531, 0, 0, 0),
('Priest', 'Holy80PvEP3BiSHeal', @RACEMASK_HUMAN, 4, 47603, 3832, 3531, 3531, 3531, 0, 0),
('Priest', 'Holy80PvEP3BiSHeal', @RACEMASK_HUMAN, 5, 45619, 0, 3531, 3531, 0, 0, 3531),
('Priest', 'Holy80PvEP3BiSHeal', @RACEMASK_HUMAN, 6, 47985, 3721, 3531, 3531, 0, 0, 0),
('Priest', 'Holy80PvEP3BiSHeal', @RACEMASK_HUMAN, 7, 45135, 3606, 3563, 3531, 0, 0, 0),
('Priest', 'Holy80PvEP3BiSHeal', @RACEMASK_HUMAN, 8, 47585, 3758, 3531, 0, 0, 0, 0),
('Priest', 'Holy80PvEP3BiSHeal', @RACEMASK_HUMAN, 9, 47983, 3604, 3531, 3531, 0, 0, 0),
('Priest', 'Holy80PvEP3BiSHeal', @RACEMASK_HUMAN, 10, 45946, 0, 3531, 0, 0, 0, 0),
('Priest', 'Holy80PvEP3BiSHeal', @RACEMASK_HUMAN, 11, 47224, 0, 3531, 0, 0, 0, 0),
('Priest', 'Holy80PvEP3BiSHeal', @RACEMASK_HUMAN, 12, 45535, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP3BiSHeal', @RACEMASK_HUMAN, 13, 47059, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP3BiSHeal', @RACEMASK_HUMAN, 14, 46977, 3831, 3531, 0, 0, 0, 0),
('Priest', 'Holy80PvEP3BiSHeal', @RACEMASK_HUMAN, 15, 47206, 3834, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP3BiSHeal', @RACEMASK_HUMAN, 16, 47146, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP3BiSHeal', @RACEMASK_HUMAN, 17, 47922, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP3BiSHeal', @RACEMASK_A, 0, 49482, 3820, 3627, 3582, 0, 0, 0),
('Priest', 'Holy80PvEP3BiSHeal', @RACEMASK_A, 1, 45443, 0, 3531, 0, 0, 0, 0),
('Priest', 'Holy80PvEP3BiSHeal', @RACEMASK_A, 2, 46068, 3810, 3531, 3531, 0, 0, 0),
('Priest', 'Holy80PvEP3BiSHeal', @RACEMASK_A, 4, 47603, 3832, 3531, 3531, 3531, 0, 0),
('Priest', 'Holy80PvEP3BiSHeal', @RACEMASK_A, 5, 45619, 0, 3531, 3531, 0, 0, 3531),
('Priest', 'Holy80PvEP3BiSHeal', @RACEMASK_A, 6, 47985, 3721, 3531, 3531, 0, 0, 0),
('Priest', 'Holy80PvEP3BiSHeal', @RACEMASK_A, 7, 45135, 3606, 3563, 3531, 0, 0, 0),
('Priest', 'Holy80PvEP3BiSHeal', @RACEMASK_A, 8, 47585, 3758, 3531, 0, 0, 0, 0),
('Priest', 'Holy80PvEP3BiSHeal', @RACEMASK_A, 9, 47983, 3604, 3531, 3531, 0, 0, 0),
('Priest', 'Holy80PvEP3BiSHeal', @RACEMASK_A, 10, 45946, 0, 3531, 0, 0, 0, 0),
('Priest', 'Holy80PvEP3BiSHeal', @RACEMASK_A, 11, 47224, 0, 3531, 0, 0, 0, 0),
('Priest', 'Holy80PvEP3BiSHeal', @RACEMASK_A, 12, 45535, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP3BiSHeal', @RACEMASK_A, 13, 47059, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP3BiSHeal', @RACEMASK_A, 14, 46977, 3831, 3531, 0, 0, 0, 0),
('Priest', 'Holy80PvEP3BiSHeal', @RACEMASK_A, 15, 47206, 3834, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP3BiSHeal', @RACEMASK_A, 16, 47146, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP3BiSHeal', @RACEMASK_A, 17, 47922, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP3BiSHeal', @RACEMASK_H, 0, 49482, 3820, 3627, 3582, 0, 0, 0),
('Priest', 'Holy80PvEP3BiSHeal', @RACEMASK_H, 1, 45443, 0, 3531, 0, 0, 0, 0),
('Priest', 'Holy80PvEP3BiSHeal', @RACEMASK_H, 2, 46068, 3810, 3531, 3531, 0, 0, 0),
('Priest', 'Holy80PvEP3BiSHeal', @RACEMASK_H, 4, 47604, 3832, 3531, 3531, 3531, 0, 0),
('Priest', 'Holy80PvEP3BiSHeal', @RACEMASK_H, 5, 45619, 0, 3531, 3531, 0, 0, 3531),
('Priest', 'Holy80PvEP3BiSHeal', @RACEMASK_H, 6, 48064, 3721, 3531, 3531, 0, 0, 0),
('Priest', 'Holy80PvEP3BiSHeal', @RACEMASK_H, 7, 45135, 3606, 3563, 3531, 0, 0, 0),
('Priest', 'Holy80PvEP3BiSHeal', @RACEMASK_H, 8, 47586, 3758, 3531, 0, 0, 0, 0),
('Priest', 'Holy80PvEP3BiSHeal', @RACEMASK_H, 9, 48066, 3604, 3531, 3531, 0, 0, 0),
('Priest', 'Holy80PvEP3BiSHeal', @RACEMASK_H, 10, 45946, 0, 3531, 0, 0, 0, 0),
('Priest', 'Holy80PvEP3BiSHeal', @RACEMASK_H, 11, 47439, 0, 3531, 0, 0, 0, 0),
('Priest', 'Holy80PvEP3BiSHeal', @RACEMASK_H, 12, 45535, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP3BiSHeal', @RACEMASK_H, 13, 47432, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP3BiSHeal', @RACEMASK_H, 14, 47417, 3831, 3531, 0, 0, 0, 0),
('Priest', 'Holy80PvEP3BiSHeal', @RACEMASK_H, 15, 47483, 3834, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP3BiSHeal', @RACEMASK_H, 16, 47437, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP3BiSHeal', @RACEMASK_H, 17, 47995, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Priest Shadow 80PvEP3BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Priest', 'Shadow80PvEP3BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_shadow_shadowwordpain:30|t|r Use Shadow PvE P3 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Shadow80PvE', 'Shadow80PvE', 'WotLK Phase 3', 303),
('Priest', 'Shadow80PvEP3BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_shadow_shadowwordpain:30|t|r Use Shadow PvE P3 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Shadow80PvE', 'Shadow80PvE', 'WotLK Phase 3', 303);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Priest', 'Shadow80PvEP3BiS', @RACEMASK_HUMAN, 0, 48088, 3820, 3621, 3545, 0, 0, 0),
('Priest', 'Shadow80PvEP3BiS', @RACEMASK_HUMAN, 1, 47468, 0, 3563, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP3BiS', @RACEMASK_HUMAN, 2, 48091, 3810, 3563, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP3BiS', @RACEMASK_HUMAN, 4, 48090, 1144, 3520, 3545, 0, 0, 0),
('Priest', 'Shadow80PvEP3BiS', @RACEMASK_HUMAN, 5, 47419, 3601, 3545, 3520, 0, 0, 3520),
('Priest', 'Shadow80PvEP3BiS', @RACEMASK_HUMAN, 6, 48089, 3719, 3520, 3545, 0, 0, 0),
('Priest', 'Shadow80PvEP3BiS', @RACEMASK_HUMAN, 7, 47097, 3606, 3545, 3520, 0, 0, 0),
('Priest', 'Shadow80PvEP3BiS', @RACEMASK_HUMAN, 8, 47467, 2332, 3560, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP3BiS', @RACEMASK_HUMAN, 9, 45665, 3604, 3520, 3520, 0, 0, 0),
('Priest', 'Shadow80PvEP3BiS', @RACEMASK_HUMAN, 10, 45495, 0, 3520, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP3BiS', @RACEMASK_HUMAN, 11, 47489, 0, 3563, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP3BiS', @RACEMASK_HUMAN, 12, 45518, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP3BiS', @RACEMASK_HUMAN, 13, 47477, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP3BiS', @RACEMASK_HUMAN, 14, 47551, 3722, 3520, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP3BiS', @RACEMASK_HUMAN, 15, 47483, 3834, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP3BiS', @RACEMASK_HUMAN, 16, 47470, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP3BiS', @RACEMASK_HUMAN, 17, 45294, 0, 3560, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP3BiS', @RACEMASK_A, 0, 48088, 3820, 3621, 3545, 0, 0, 0),
('Priest', 'Shadow80PvEP3BiS', @RACEMASK_A, 1, 47468, 0, 3563, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP3BiS', @RACEMASK_A, 2, 48091, 3810, 3563, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP3BiS', @RACEMASK_A, 4, 48090, 1144, 3520, 3545, 0, 0, 0),
('Priest', 'Shadow80PvEP3BiS', @RACEMASK_A, 5, 47419, 3601, 3545, 3520, 0, 0, 3520),
('Priest', 'Shadow80PvEP3BiS', @RACEMASK_A, 6, 48089, 3719, 3520, 3545, 0, 0, 0),
('Priest', 'Shadow80PvEP3BiS', @RACEMASK_A, 7, 47097, 3606, 3545, 3520, 0, 0, 0),
('Priest', 'Shadow80PvEP3BiS', @RACEMASK_A, 8, 47467, 2332, 3560, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP3BiS', @RACEMASK_A, 9, 45665, 3604, 3520, 3520, 0, 0, 0),
('Priest', 'Shadow80PvEP3BiS', @RACEMASK_A, 10, 45495, 0, 3520, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP3BiS', @RACEMASK_A, 11, 47489, 0, 3563, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP3BiS', @RACEMASK_A, 12, 45518, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP3BiS', @RACEMASK_A, 13, 47477, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP3BiS', @RACEMASK_A, 14, 47551, 3722, 3520, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP3BiS', @RACEMASK_A, 15, 47483, 3834, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP3BiS', @RACEMASK_A, 16, 47470, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP3BiS', @RACEMASK_A, 17, 45294, 0, 3560, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP3BiS', @RACEMASK_H, 0, 48088, 3820, 3621, 3545, 0, 0, 0),
('Priest', 'Shadow80PvEP3BiS', @RACEMASK_H, 1, 47468, 0, 3563, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP3BiS', @RACEMASK_H, 2, 48091, 3810, 3563, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP3BiS', @RACEMASK_H, 4, 48090, 1144, 3520, 3545, 0, 0, 0),
('Priest', 'Shadow80PvEP3BiS', @RACEMASK_H, 5, 47419, 3601, 3545, 3520, 0, 0, 3520),
('Priest', 'Shadow80PvEP3BiS', @RACEMASK_H, 6, 48089, 3719, 3520, 3545, 0, 0, 0),
('Priest', 'Shadow80PvEP3BiS', @RACEMASK_H, 7, 47454, 3606, 3545, 3520, 0, 0, 0),
('Priest', 'Shadow80PvEP3BiS', @RACEMASK_H, 8, 47467, 2332, 3560, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP3BiS', @RACEMASK_H, 9, 45665, 3604, 3520, 3520, 0, 0, 0),
('Priest', 'Shadow80PvEP3BiS', @RACEMASK_H, 10, 45495, 0, 3520, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP3BiS', @RACEMASK_H, 11, 47489, 0, 3563, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP3BiS', @RACEMASK_H, 12, 45518, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP3BiS', @RACEMASK_H, 13, 47477, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP3BiS', @RACEMASK_H, 14, 47551, 3722, 3520, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP3BiS', @RACEMASK_H, 15, 47483, 3834, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP3BiS', @RACEMASK_H, 16, 47470, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP3BiS', @RACEMASK_H, 17, 45294, 0, 3560, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Rogue Assassination 80PvEP3BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Rogue', 'Assassination80PvEP3BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_rogue_eviscerate:30|t|r Use Assassination PvE P3 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Assassination80PvE', 'Assassination80PvE', 'WotLK Phase 3', 303),
('Rogue', 'Assassination80PvEP3BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_rogue_eviscerate:30|t|r Use Assassination PvE P3 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Assassination80PvE', 'Assassination80PvE', 'WotLK Phase 3', 303);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Rogue', 'Assassination80PvEP3BiS', @RACEMASK_HUMAN, 0, 48230, 3817, 3628, 3879, 0, 0, 0),
('Rogue', 'Assassination80PvEP3BiS', @RACEMASK_HUMAN, 1, 47060, 0, 3524, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP3BiS', @RACEMASK_HUMAN, 2, 48228, 3808, 3524, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP3BiS', @RACEMASK_HUMAN, 4, 48232, 3832, 3521, 3521, 0, 0, 0),
('Rogue', 'Assassination80PvEP3BiS', @RACEMASK_HUMAN, 5, 47112, 0, 3565, 3521, 0, 0, 3521),
('Rogue', 'Assassination80PvEP3BiS', @RACEMASK_HUMAN, 6, 46975, 3823, 3521, 3521, 3521, 0, 0),
('Rogue', 'Assassination80PvEP3BiS', @RACEMASK_HUMAN, 7, 47077, 3606, 3565, 3521, 0, 0, 0),
('Rogue', 'Assassination80PvEP3BiS', @RACEMASK_HUMAN, 8, 47155, 3845, 3521, 3521, 0, 0, 0),
('Rogue', 'Assassination80PvEP3BiS', @RACEMASK_HUMAN, 9, 48231, 3604, 3521, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP3BiS', @RACEMASK_HUMAN, 10, 47075, 0, 3521, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP3BiS', @RACEMASK_HUMAN, 11, 45608, 0, 3521, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP3BiS', @RACEMASK_HUMAN, 12, 45609, 0, 0, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP3BiS', @RACEMASK_HUMAN, 13, 47131, 0, 0, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP3BiS', @RACEMASK_HUMAN, 14, 47545, 3605, 3524, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP3BiS', @RACEMASK_HUMAN, 15, 46969, 3789, 3565, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP3BiS', @RACEMASK_HUMAN, 16, 46969, 3789, 3565, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP3BiS', @RACEMASK_HUMAN, 17, 47521, 0, 3565, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP3BiS', @RACEMASK_A, 0, 48230, 3817, 3628, 3879, 0, 0, 0),
('Rogue', 'Assassination80PvEP3BiS', @RACEMASK_A, 1, 47060, 0, 3524, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP3BiS', @RACEMASK_A, 2, 48228, 3808, 3524, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP3BiS', @RACEMASK_A, 4, 48232, 3832, 3521, 3521, 0, 0, 0),
('Rogue', 'Assassination80PvEP3BiS', @RACEMASK_A, 5, 47112, 0, 3565, 3521, 0, 0, 3521),
('Rogue', 'Assassination80PvEP3BiS', @RACEMASK_A, 6, 46975, 3823, 3521, 3521, 3521, 0, 0),
('Rogue', 'Assassination80PvEP3BiS', @RACEMASK_A, 7, 47077, 3606, 3565, 3521, 0, 0, 0),
('Rogue', 'Assassination80PvEP3BiS', @RACEMASK_A, 8, 47155, 3845, 3521, 3521, 0, 0, 0),
('Rogue', 'Assassination80PvEP3BiS', @RACEMASK_A, 9, 48231, 3604, 3521, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP3BiS', @RACEMASK_A, 10, 47075, 0, 3521, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP3BiS', @RACEMASK_A, 11, 45608, 0, 3521, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP3BiS', @RACEMASK_A, 12, 45609, 0, 0, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP3BiS', @RACEMASK_A, 13, 47131, 0, 0, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP3BiS', @RACEMASK_A, 14, 47545, 3605, 3524, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP3BiS', @RACEMASK_A, 15, 46969, 3789, 3565, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP3BiS', @RACEMASK_A, 16, 46969, 3789, 3565, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP3BiS', @RACEMASK_A, 17, 47521, 0, 3565, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP3BiS', @RACEMASK_H, 0, 48235, 3817, 3628, 3879, 0, 0, 0),
('Rogue', 'Assassination80PvEP3BiS', @RACEMASK_H, 1, 47433, 0, 3524, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP3BiS', @RACEMASK_H, 2, 48237, 3808, 3524, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP3BiS', @RACEMASK_H, 4, 48233, 3832, 3521, 3521, 0, 0, 0),
('Rogue', 'Assassination80PvEP3BiS', @RACEMASK_H, 5, 47460, 0, 3565, 3521, 0, 0, 3521),
('Rogue', 'Assassination80PvEP3BiS', @RACEMASK_H, 6, 47420, 3823, 3521, 3521, 3521, 0, 0),
('Rogue', 'Assassination80PvEP3BiS', @RACEMASK_H, 7, 47445, 3606, 3565, 3521, 0, 0, 0),
('Rogue', 'Assassination80PvEP3BiS', @RACEMASK_H, 8, 47474, 3845, 3521, 3521, 0, 0, 0),
('Rogue', 'Assassination80PvEP3BiS', @RACEMASK_H, 9, 48234, 3604, 3521, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP3BiS', @RACEMASK_H, 10, 47443, 0, 3521, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP3BiS', @RACEMASK_H, 11, 45608, 0, 3521, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP3BiS', @RACEMASK_H, 12, 45609, 0, 0, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP3BiS', @RACEMASK_H, 13, 47464, 0, 0, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP3BiS', @RACEMASK_H, 14, 47546, 3605, 3524, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP3BiS', @RACEMASK_H, 15, 47416, 3789, 3565, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP3BiS', @RACEMASK_H, 16, 47416, 3789, 3565, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP3BiS', @RACEMASK_H, 17, 47523, 0, 3565, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Rogue Combat 80PvEP3BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Rogue', 'Combat80PvEP3BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_backstab:30|t|r Use Combat PvE P3 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Combat80PvE', 'Combat80PvE', 'WotLK Phase 3', 303),
('Rogue', 'Combat80PvEP3BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_backstab:30|t|r Use Combat PvE P3 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Combat80PvE', 'Combat80PvE', 'WotLK Phase 3', 303);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Rogue', 'Combat80PvEP3BiS', @RACEMASK_HUMAN, 0, 48230, 3817, 3628, 3879, 0, 0, 0),
('Rogue', 'Combat80PvEP3BiS', @RACEMASK_HUMAN, 1, 47060, 0, 3521, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP3BiS', @RACEMASK_HUMAN, 2, 48228, 3808, 3521, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP3BiS', @RACEMASK_HUMAN, 4, 48232, 3832, 3521, 3521, 0, 0, 0),
('Rogue', 'Combat80PvEP3BiS', @RACEMASK_HUMAN, 5, 47112, 0, 3565, 3521, 0, 0, 3521),
('Rogue', 'Combat80PvEP3BiS', @RACEMASK_HUMAN, 6, 46975, 3823, 3521, 3521, 3521, 0, 0),
('Rogue', 'Combat80PvEP3BiS', @RACEMASK_HUMAN, 7, 47077, 3606, 3565, 3521, 0, 0, 0),
('Rogue', 'Combat80PvEP3BiS', @RACEMASK_HUMAN, 8, 47155, 3845, 3521, 3521, 0, 0, 0),
('Rogue', 'Combat80PvEP3BiS', @RACEMASK_HUMAN, 9, 48231, 3604, 3521, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP3BiS', @RACEMASK_HUMAN, 10, 47075, 0, 3521, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP3BiS', @RACEMASK_HUMAN, 11, 47934, 0, 3565, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP3BiS', @RACEMASK_HUMAN, 12, 45609, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP3BiS', @RACEMASK_HUMAN, 13, 47131, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP3BiS', @RACEMASK_HUMAN, 14, 47545, 3605, 3521, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP3BiS', @RACEMASK_HUMAN, 15, 47156, 3789, 3565, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP3BiS', @RACEMASK_HUMAN, 16, 47001, 3789, 3565, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP3BiS', @RACEMASK_HUMAN, 17, 47521, 0, 3565, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP3BiS', @RACEMASK_A, 0, 48230, 3817, 3628, 3879, 0, 0, 0),
('Rogue', 'Combat80PvEP3BiS', @RACEMASK_A, 1, 47060, 0, 3521, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP3BiS', @RACEMASK_A, 2, 48228, 3808, 3521, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP3BiS', @RACEMASK_A, 4, 48232, 3832, 3521, 3521, 0, 0, 0),
('Rogue', 'Combat80PvEP3BiS', @RACEMASK_A, 5, 47112, 0, 3565, 3521, 0, 0, 3521),
('Rogue', 'Combat80PvEP3BiS', @RACEMASK_A, 6, 46975, 3823, 3521, 3521, 3521, 0, 0),
('Rogue', 'Combat80PvEP3BiS', @RACEMASK_A, 7, 47077, 3606, 3565, 3521, 0, 0, 0),
('Rogue', 'Combat80PvEP3BiS', @RACEMASK_A, 8, 47155, 3845, 3521, 3521, 0, 0, 0),
('Rogue', 'Combat80PvEP3BiS', @RACEMASK_A, 9, 48231, 3604, 3521, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP3BiS', @RACEMASK_A, 10, 47075, 0, 3521, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP3BiS', @RACEMASK_A, 11, 47934, 0, 3565, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP3BiS', @RACEMASK_A, 12, 45609, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP3BiS', @RACEMASK_A, 13, 47131, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP3BiS', @RACEMASK_A, 14, 47545, 3605, 3521, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP3BiS', @RACEMASK_A, 15, 47156, 3789, 3565, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP3BiS', @RACEMASK_A, 16, 47001, 3789, 3565, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP3BiS', @RACEMASK_A, 17, 47521, 0, 3565, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP3BiS', @RACEMASK_H, 0, 48235, 3817, 3628, 3879, 0, 0, 0),
('Rogue', 'Combat80PvEP3BiS', @RACEMASK_H, 1, 47433, 0, 3521, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP3BiS', @RACEMASK_H, 2, 48237, 3808, 3521, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP3BiS', @RACEMASK_H, 4, 48233, 3832, 3521, 3521, 0, 0, 0),
('Rogue', 'Combat80PvEP3BiS', @RACEMASK_H, 5, 47460, 0, 3565, 3521, 0, 0, 3521),
('Rogue', 'Combat80PvEP3BiS', @RACEMASK_H, 6, 47420, 3823, 3521, 3521, 3521, 0, 0),
('Rogue', 'Combat80PvEP3BiS', @RACEMASK_H, 7, 47445, 3606, 3565, 3521, 0, 0, 0),
('Rogue', 'Combat80PvEP3BiS', @RACEMASK_H, 8, 47474, 3845, 3521, 3521, 0, 0, 0),
('Rogue', 'Combat80PvEP3BiS', @RACEMASK_H, 9, 48234, 3604, 3521, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP3BiS', @RACEMASK_H, 10, 47443, 0, 3521, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP3BiS', @RACEMASK_H, 11, 48007, 0, 3565, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP3BiS', @RACEMASK_H, 12, 45609, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP3BiS', @RACEMASK_H, 13, 47464, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP3BiS', @RACEMASK_H, 14, 47546, 3605, 3521, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP3BiS', @RACEMASK_H, 15, 47475, 3789, 3565, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP3BiS', @RACEMASK_H, 16, 47427, 3789, 3565, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP3BiS', @RACEMASK_H, 17, 47523, 0, 3565, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Rogue Subtlety 80PvEP3BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Rogue', 'Subtlety80PvEP3BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_stealth:30|t|r Use Subtlety PvE P3 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Subtlety80PvE', 'Subtlety80PvE', 'WotLK Phase 3', 303),
('Rogue', 'Subtlety80PvEP3BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_stealth:30|t|r Use Subtlety PvE P3 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Subtlety80PvE', 'Subtlety80PvE', 'WotLK Phase 3', 303);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Rogue', 'Subtlety80PvEP3BiS', @RACEMASK_HUMAN, 0, 48230, 3817, 3628, 3879, 0, 0, 0),
('Rogue', 'Subtlety80PvEP3BiS', @RACEMASK_HUMAN, 1, 47060, 0, 3524, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP3BiS', @RACEMASK_HUMAN, 2, 48228, 3808, 3524, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP3BiS', @RACEMASK_HUMAN, 4, 48232, 3832, 3519, 3519, 0, 0, 0),
('Rogue', 'Subtlety80PvEP3BiS', @RACEMASK_HUMAN, 5, 47112, 0, 3555, 3519, 0, 0, 3519),
('Rogue', 'Subtlety80PvEP3BiS', @RACEMASK_HUMAN, 6, 46975, 3823, 3519, 3519, 3519, 0, 0),
('Rogue', 'Subtlety80PvEP3BiS', @RACEMASK_HUMAN, 7, 47077, 3606, 3555, 3519, 0, 0, 0),
('Rogue', 'Subtlety80PvEP3BiS', @RACEMASK_HUMAN, 8, 47155, 3845, 3519, 3519, 0, 0, 0),
('Rogue', 'Subtlety80PvEP3BiS', @RACEMASK_HUMAN, 9, 48231, 3604, 3519, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP3BiS', @RACEMASK_HUMAN, 10, 47075, 0, 3519, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP3BiS', @RACEMASK_HUMAN, 11, 47934, 0, 3555, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP3BiS', @RACEMASK_HUMAN, 12, 45609, 0, 0, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP3BiS', @RACEMASK_HUMAN, 13, 47131, 0, 0, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP3BiS', @RACEMASK_HUMAN, 14, 47545, 3605, 3524, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP3BiS', @RACEMASK_HUMAN, 15, 47156, 3789, 3555, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP3BiS', @RACEMASK_HUMAN, 16, 46969, 3789, 3555, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP3BiS', @RACEMASK_HUMAN, 17, 47521, 0, 3555, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP3BiS', @RACEMASK_A, 0, 48230, 3817, 3628, 3879, 0, 0, 0),
('Rogue', 'Subtlety80PvEP3BiS', @RACEMASK_A, 1, 47060, 0, 3524, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP3BiS', @RACEMASK_A, 2, 48228, 3808, 3524, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP3BiS', @RACEMASK_A, 4, 48232, 3832, 3519, 3519, 0, 0, 0),
('Rogue', 'Subtlety80PvEP3BiS', @RACEMASK_A, 5, 47112, 0, 3555, 3519, 0, 0, 3519),
('Rogue', 'Subtlety80PvEP3BiS', @RACEMASK_A, 6, 46975, 3823, 3519, 3519, 3519, 0, 0),
('Rogue', 'Subtlety80PvEP3BiS', @RACEMASK_A, 7, 47077, 3606, 3555, 3519, 0, 0, 0),
('Rogue', 'Subtlety80PvEP3BiS', @RACEMASK_A, 8, 47155, 3845, 3519, 3519, 0, 0, 0),
('Rogue', 'Subtlety80PvEP3BiS', @RACEMASK_A, 9, 48231, 3604, 3519, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP3BiS', @RACEMASK_A, 10, 47075, 0, 3519, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP3BiS', @RACEMASK_A, 11, 47934, 0, 3555, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP3BiS', @RACEMASK_A, 12, 45609, 0, 0, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP3BiS', @RACEMASK_A, 13, 47131, 0, 0, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP3BiS', @RACEMASK_A, 14, 47545, 3605, 3524, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP3BiS', @RACEMASK_A, 15, 47156, 3789, 3555, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP3BiS', @RACEMASK_A, 16, 46969, 3789, 3555, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP3BiS', @RACEMASK_A, 17, 47521, 0, 3555, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP3BiS', @RACEMASK_H, 0, 48235, 3817, 3628, 3879, 0, 0, 0),
('Rogue', 'Subtlety80PvEP3BiS', @RACEMASK_H, 1, 47433, 0, 3524, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP3BiS', @RACEMASK_H, 2, 48237, 3808, 3524, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP3BiS', @RACEMASK_H, 4, 48233, 3832, 3519, 3519, 0, 0, 0),
('Rogue', 'Subtlety80PvEP3BiS', @RACEMASK_H, 5, 47460, 0, 3555, 3519, 0, 0, 3519),
('Rogue', 'Subtlety80PvEP3BiS', @RACEMASK_H, 6, 47420, 3823, 3519, 3519, 3519, 0, 0),
('Rogue', 'Subtlety80PvEP3BiS', @RACEMASK_H, 7, 47445, 3606, 3555, 3519, 0, 0, 0),
('Rogue', 'Subtlety80PvEP3BiS', @RACEMASK_H, 8, 47474, 3845, 3519, 3519, 0, 0, 0),
('Rogue', 'Subtlety80PvEP3BiS', @RACEMASK_H, 9, 48234, 3604, 3519, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP3BiS', @RACEMASK_H, 10, 47443, 0, 3519, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP3BiS', @RACEMASK_H, 11, 48007, 0, 3555, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP3BiS', @RACEMASK_H, 12, 45609, 0, 0, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP3BiS', @RACEMASK_H, 13, 47464, 0, 0, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP3BiS', @RACEMASK_H, 14, 47546, 3605, 3524, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP3BiS', @RACEMASK_H, 15, 47475, 3789, 3555, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP3BiS', @RACEMASK_H, 16, 47416, 3789, 3555, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP3BiS', @RACEMASK_H, 17, 47523, 0, 3555, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Shaman Elemental 80PvEP3BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Shaman', 'Elemental80PvEP3BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_lightning:30|t|r Use Elemental PvE P3 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Elemental80PvE', 'Elemental80PvE', 'WotLK Phase 3', 303),
('Shaman', 'Elemental80PvEP3BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_lightning:30|t|r Use Elemental PvE P3 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Elemental80PvE', 'Elemental80PvE', 'WotLK Phase 3', 303);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Shaman', 'Elemental80PvEP3BiS', @RACEMASK_HUMAN, 0, 48328, 3820, 3621, 3560, 0, 0, 0),
('Shaman', 'Elemental80PvEP3BiS', @RACEMASK_HUMAN, 1, 47468, 0, 3563, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP3BiS', @RACEMASK_HUMAN, 2, 48330, 3810, 3520, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP3BiS', @RACEMASK_HUMAN, 4, 48326, 3832, 3520, 3520, 0, 0, 0),
('Shaman', 'Elemental80PvEP3BiS', @RACEMASK_HUMAN, 5, 47447, 0, 3538, 3520, 0, 0, 3520),
('Shaman', 'Elemental80PvEP3BiS', @RACEMASK_HUMAN, 6, 47479, 3721, 3520, 3546, 3563, 0, 0),
('Shaman', 'Elemental80PvEP3BiS', @RACEMASK_HUMAN, 7, 47456, 3606, 3520, 3520, 0, 0, 0),
('Shaman', 'Elemental80PvEP3BiS', @RACEMASK_HUMAN, 8, 45460, 2332, 3520, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP3BiS', @RACEMASK_HUMAN, 9, 48327, 3604, 3563, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP3BiS', @RACEMASK_HUMAN, 10, 45495, 0, 3520, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP3BiS', @RACEMASK_HUMAN, 11, 46046, 0, 3563, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP3BiS', @RACEMASK_HUMAN, 12, 47477, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP3BiS', @RACEMASK_HUMAN, 13, 45518, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP3BiS', @RACEMASK_HUMAN, 14, 47551, 3831, 3520, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP3BiS', @RACEMASK_HUMAN, 15, 47422, 3834, 3520, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP3BiS', @RACEMASK_HUMAN, 16, 47448, 1128, 3563, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP3BiS', @RACEMASK_HUMAN, 17, 47666, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP3BiS', @RACEMASK_A, 0, 48328, 3820, 3621, 3560, 0, 0, 0),
('Shaman', 'Elemental80PvEP3BiS', @RACEMASK_A, 1, 47468, 0, 3563, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP3BiS', @RACEMASK_A, 2, 48330, 3810, 3520, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP3BiS', @RACEMASK_A, 4, 48326, 3832, 3520, 3520, 0, 0, 0),
('Shaman', 'Elemental80PvEP3BiS', @RACEMASK_A, 5, 47447, 0, 3538, 3520, 0, 0, 3520),
('Shaman', 'Elemental80PvEP3BiS', @RACEMASK_A, 6, 47479, 3721, 3520, 3546, 3563, 0, 0),
('Shaman', 'Elemental80PvEP3BiS', @RACEMASK_A, 7, 47456, 3606, 3520, 3520, 0, 0, 0),
('Shaman', 'Elemental80PvEP3BiS', @RACEMASK_A, 8, 45460, 2332, 3520, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP3BiS', @RACEMASK_A, 9, 48327, 3604, 3563, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP3BiS', @RACEMASK_A, 10, 45495, 0, 3520, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP3BiS', @RACEMASK_A, 11, 46046, 0, 3563, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP3BiS', @RACEMASK_A, 12, 47477, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP3BiS', @RACEMASK_A, 13, 45518, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP3BiS', @RACEMASK_A, 14, 47551, 3831, 3520, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP3BiS', @RACEMASK_A, 15, 47422, 3834, 3520, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP3BiS', @RACEMASK_A, 16, 47448, 1128, 3563, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP3BiS', @RACEMASK_A, 17, 47666, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP3BiS', @RACEMASK_H, 0, 48328, 3820, 3621, 3560, 0, 0, 0),
('Shaman', 'Elemental80PvEP3BiS', @RACEMASK_H, 1, 47468, 0, 3563, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP3BiS', @RACEMASK_H, 2, 48330, 3810, 3520, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP3BiS', @RACEMASK_H, 4, 48326, 3832, 3520, 3520, 0, 0, 0),
('Shaman', 'Elemental80PvEP3BiS', @RACEMASK_H, 5, 47447, 0, 3538, 3520, 0, 0, 3520),
('Shaman', 'Elemental80PvEP3BiS', @RACEMASK_H, 6, 47479, 3721, 3520, 3546, 3563, 0, 0),
('Shaman', 'Elemental80PvEP3BiS', @RACEMASK_H, 7, 47456, 3606, 3520, 3520, 0, 0, 0),
('Shaman', 'Elemental80PvEP3BiS', @RACEMASK_H, 8, 45460, 2332, 3520, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP3BiS', @RACEMASK_H, 9, 48327, 3604, 3563, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP3BiS', @RACEMASK_H, 10, 45495, 0, 3520, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP3BiS', @RACEMASK_H, 11, 46046, 0, 3563, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP3BiS', @RACEMASK_H, 12, 47477, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP3BiS', @RACEMASK_H, 13, 45518, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP3BiS', @RACEMASK_H, 14, 47551, 3831, 3520, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP3BiS', @RACEMASK_H, 15, 47422, 3834, 3520, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP3BiS', @RACEMASK_H, 16, 47448, 1128, 3563, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP3BiS', @RACEMASK_H, 17, 47666, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Shaman Enhancement 80PvEP3BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Shaman', 'Enhancement80PvEP3BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_lightningshield:30|t|r Use Enhancement PvE P3 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Enhancement80PvE', 'Enhancement80PvE', 'WotLK Phase 3', 303),
('Shaman', 'Enhancement80PvEP3BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_lightningshield:30|t|r Use Enhancement PvE P3 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Enhancement80PvE', 'Enhancement80PvE', 'WotLK Phase 3', 303);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Shaman', 'Enhancement80PvEP3BiS', @RACEMASK_HUMAN, 0, 48358, 3817, 3628, 3531, 0, 0, 0),
('Shaman', 'Enhancement80PvEP3BiS', @RACEMASK_HUMAN, 1, 47433, 0, 3567, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP3BiS', @RACEMASK_HUMAN, 2, 48360, 3808, 3531, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP3BiS', @RACEMASK_HUMAN, 4, 47412, 3832, 3567, 3879, 3531, 0, 0),
('Shaman', 'Enhancement80PvEP3BiS', @RACEMASK_HUMAN, 5, 47460, 3599, 3531, 3567, 0, 0, 3531),
('Shaman', 'Enhancement80PvEP3BiS', @RACEMASK_HUMAN, 6, 48359, 3823, 3531, 3531, 0, 0, 0),
('Shaman', 'Enhancement80PvEP3BiS', @RACEMASK_HUMAN, 7, 47456, 3606, 3531, 3531, 0, 0, 0),
('Shaman', 'Enhancement80PvEP3BiS', @RACEMASK_HUMAN, 8, 47989, 3845, 3567, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP3BiS', @RACEMASK_HUMAN, 9, 48357, 3604, 3531, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP3BiS', @RACEMASK_HUMAN, 10, 47443, 0, 3531, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP3BiS', @RACEMASK_HUMAN, 11, 46046, 0, 3531, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP3BiS', @RACEMASK_HUMAN, 12, 47477, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP3BiS', @RACEMASK_HUMAN, 13, 45609, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP3BiS', @RACEMASK_HUMAN, 14, 47551, 3831, 3567, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP3BiS', @RACEMASK_HUMAN, 15, 47483, 3789, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP3BiS', @RACEMASK_HUMAN, 16, 47475, 3789, 3531, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP3BiS', @RACEMASK_HUMAN, 17, 47666, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP3BiS', @RACEMASK_A, 0, 48358, 3817, 3628, 3531, 0, 0, 0),
('Shaman', 'Enhancement80PvEP3BiS', @RACEMASK_A, 1, 47433, 0, 3567, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP3BiS', @RACEMASK_A, 2, 48360, 3808, 3531, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP3BiS', @RACEMASK_A, 4, 47412, 3832, 3567, 3879, 3531, 0, 0),
('Shaman', 'Enhancement80PvEP3BiS', @RACEMASK_A, 5, 47460, 3599, 3531, 3567, 0, 0, 3531),
('Shaman', 'Enhancement80PvEP3BiS', @RACEMASK_A, 6, 48359, 3823, 3531, 3531, 0, 0, 0),
('Shaman', 'Enhancement80PvEP3BiS', @RACEMASK_A, 7, 47456, 3606, 3531, 3531, 0, 0, 0),
('Shaman', 'Enhancement80PvEP3BiS', @RACEMASK_A, 8, 47989, 3845, 3567, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP3BiS', @RACEMASK_A, 9, 48357, 3604, 3531, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP3BiS', @RACEMASK_A, 10, 47443, 0, 3531, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP3BiS', @RACEMASK_A, 11, 46046, 0, 3531, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP3BiS', @RACEMASK_A, 12, 47477, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP3BiS', @RACEMASK_A, 13, 45609, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP3BiS', @RACEMASK_A, 14, 47551, 3831, 3567, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP3BiS', @RACEMASK_A, 15, 47483, 3789, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP3BiS', @RACEMASK_A, 16, 47475, 3789, 3531, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP3BiS', @RACEMASK_A, 17, 47666, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP3BiS', @RACEMASK_H, 0, 48358, 3817, 3628, 3531, 0, 0, 0),
('Shaman', 'Enhancement80PvEP3BiS', @RACEMASK_H, 1, 47433, 0, 3567, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP3BiS', @RACEMASK_H, 2, 48360, 3808, 3531, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP3BiS', @RACEMASK_H, 4, 47412, 3832, 3567, 3879, 3531, 0, 0),
('Shaman', 'Enhancement80PvEP3BiS', @RACEMASK_H, 5, 47460, 3599, 3531, 3567, 0, 0, 3531),
('Shaman', 'Enhancement80PvEP3BiS', @RACEMASK_H, 6, 48359, 3823, 3531, 3531, 0, 0, 0),
('Shaman', 'Enhancement80PvEP3BiS', @RACEMASK_H, 7, 47456, 3606, 3531, 3531, 0, 0, 0),
('Shaman', 'Enhancement80PvEP3BiS', @RACEMASK_H, 8, 47989, 3845, 3567, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP3BiS', @RACEMASK_H, 9, 48357, 3604, 3531, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP3BiS', @RACEMASK_H, 10, 47443, 0, 3531, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP3BiS', @RACEMASK_H, 11, 46046, 0, 3531, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP3BiS', @RACEMASK_H, 12, 47477, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP3BiS', @RACEMASK_H, 13, 45609, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP3BiS', @RACEMASK_H, 14, 47551, 3831, 3567, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP3BiS', @RACEMASK_H, 15, 47483, 3789, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP3BiS', @RACEMASK_H, 16, 47475, 3789, 3531, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP3BiS', @RACEMASK_H, 17, 47666, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Shaman Restoration 80PvEP3BiSHeal (healer) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Shaman', 'Restoration80PvEP3BiSHeal', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_magicimmunity:30|t|r Use Restoration PvE P3 BiS Heal', 7, @MINLEVEL, @MAXLEVEL, 'Restoration80PvE', 'Restoration80PvE', 'WotLK Phase 3', 303),
('Shaman', 'Restoration80PvEP3BiSHeal', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_magicimmunity:30|t|r Use Restoration PvE P3 BiS Heal (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Restoration80PvE', 'Restoration80PvE', 'WotLK Phase 3', 303);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Shaman', 'Restoration80PvEP3BiSHeal', @RACEMASK_HUMAN, 0, 46201, 3820, 3627, 3546, 0, 0, 0),
('Shaman', 'Restoration80PvEP3BiSHeal', @RACEMASK_HUMAN, 1, 47468, 0, 3531, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP3BiSHeal', @RACEMASK_HUMAN, 2, 46204, 3810, 3563, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP3BiSHeal', @RACEMASK_HUMAN, 4, 46198, 2381, 3563, 3563, 0, 0, 0),
('Shaman', 'Restoration80PvEP3BiSHeal', @RACEMASK_HUMAN, 5, 47426, 0, 3563, 3563, 0, 0, 3563),
('Shaman', 'Restoration80PvEP3BiSHeal', @RACEMASK_HUMAN, 6, 47450, 3721, 3563, 3546, 3563, 0, 0),
('Shaman', 'Restoration80PvEP3BiSHeal', @RACEMASK_HUMAN, 7, 47456, 3232, 3563, 3563, 0, 0, 0),
('Shaman', 'Restoration80PvEP3BiSHeal', @RACEMASK_HUMAN, 8, 45460, 2332, 3563, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP3BiSHeal', @RACEMASK_HUMAN, 9, 46199, 3246, 3531, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP3BiSHeal', @RACEMASK_HUMAN, 10, 45614, 0, 3531, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP3BiSHeal', @RACEMASK_HUMAN, 11, 47439, 0, 3531, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP3BiSHeal', @RACEMASK_HUMAN, 12, 45535, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP3BiSHeal', @RACEMASK_HUMAN, 13, 47059, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP3BiSHeal', @RACEMASK_HUMAN, 14, 47551, 3831, 3563, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP3BiSHeal', @RACEMASK_HUMAN, 15, 46017, 3834, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP3BiSHeal', @RACEMASK_HUMAN, 16, 47448, 1128, 3531, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP3BiSHeal', @RACEMASK_HUMAN, 17, 47665, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP3BiSHeal', @RACEMASK_A, 0, 46201, 3820, 3627, 3546, 0, 0, 0),
('Shaman', 'Restoration80PvEP3BiSHeal', @RACEMASK_A, 1, 47468, 0, 3531, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP3BiSHeal', @RACEMASK_A, 2, 46204, 3810, 3563, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP3BiSHeal', @RACEMASK_A, 4, 46198, 2381, 3563, 3563, 0, 0, 0),
('Shaman', 'Restoration80PvEP3BiSHeal', @RACEMASK_A, 5, 47426, 0, 3563, 3563, 0, 0, 3563),
('Shaman', 'Restoration80PvEP3BiSHeal', @RACEMASK_A, 6, 47450, 3721, 3563, 3546, 3563, 0, 0),
('Shaman', 'Restoration80PvEP3BiSHeal', @RACEMASK_A, 7, 47456, 3232, 3563, 3563, 0, 0, 0),
('Shaman', 'Restoration80PvEP3BiSHeal', @RACEMASK_A, 8, 45460, 2332, 3563, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP3BiSHeal', @RACEMASK_A, 9, 46199, 3246, 3531, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP3BiSHeal', @RACEMASK_A, 10, 45614, 0, 3531, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP3BiSHeal', @RACEMASK_A, 11, 47439, 0, 3531, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP3BiSHeal', @RACEMASK_A, 12, 45535, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP3BiSHeal', @RACEMASK_A, 13, 47059, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP3BiSHeal', @RACEMASK_A, 14, 47551, 3831, 3563, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP3BiSHeal', @RACEMASK_A, 15, 46017, 3834, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP3BiSHeal', @RACEMASK_A, 16, 47448, 1128, 3531, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP3BiSHeal', @RACEMASK_A, 17, 47665, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP3BiSHeal', @RACEMASK_H, 0, 46201, 3820, 3627, 3546, 0, 0, 0),
('Shaman', 'Restoration80PvEP3BiSHeal', @RACEMASK_H, 1, 47468, 0, 3531, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP3BiSHeal', @RACEMASK_H, 2, 46204, 3810, 3563, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP3BiSHeal', @RACEMASK_H, 4, 46198, 2381, 3563, 3563, 0, 0, 0),
('Shaman', 'Restoration80PvEP3BiSHeal', @RACEMASK_H, 5, 47426, 0, 3563, 3563, 0, 0, 3563),
('Shaman', 'Restoration80PvEP3BiSHeal', @RACEMASK_H, 6, 47450, 3721, 3563, 3546, 3563, 0, 0),
('Shaman', 'Restoration80PvEP3BiSHeal', @RACEMASK_H, 7, 47456, 3232, 3563, 3563, 0, 0, 0),
('Shaman', 'Restoration80PvEP3BiSHeal', @RACEMASK_H, 8, 45460, 2332, 3563, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP3BiSHeal', @RACEMASK_H, 9, 46199, 3246, 3531, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP3BiSHeal', @RACEMASK_H, 10, 45614, 0, 3531, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP3BiSHeal', @RACEMASK_H, 11, 47439, 0, 3531, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP3BiSHeal', @RACEMASK_H, 12, 45535, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP3BiSHeal', @RACEMASK_H, 13, 47432, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP3BiSHeal', @RACEMASK_H, 14, 47551, 3831, 3563, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP3BiSHeal', @RACEMASK_H, 15, 46017, 3834, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP3BiSHeal', @RACEMASK_H, 16, 47448, 1128, 3531, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP3BiSHeal', @RACEMASK_H, 17, 47665, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warlock Affliction 80PvEP3BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Warlock', 'Affliction80PvEP3BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_shadow_deathcoil:30|t|r Use Affliction PvE P3 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Affliction80PvE', 'Affliction80PvE', 'WotLK Phase 3', 303),
('Warlock', 'Affliction80PvEP3BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_shadow_deathcoil:30|t|r Use Affliction PvE P3 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Affliction80PvE', 'Affliction80PvE', 'WotLK Phase 3', 303);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warlock', 'Affliction80PvEP3BiS', @RACEMASK_HUMAN, 0, 47789, 3820, 3621, 3545, 0, 0, 0),
('Warlock', 'Affliction80PvEP3BiS', @RACEMASK_HUMAN, 1, 47144, 0, 3563, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP3BiS', @RACEMASK_HUMAN, 2, 47792, 3810, 3563, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP3BiS', @RACEMASK_HUMAN, 4, 47129, 1144, 3545, 3563, 3520, 0, 0),
('Warlock', 'Affliction80PvEP3BiS', @RACEMASK_HUMAN, 5, 46973, 3601, 3545, 3520, 0, 0, 3520),
('Warlock', 'Affliction80PvEP3BiS', @RACEMASK_HUMAN, 6, 47790, 3719, 3520, 3563, 0, 0, 0),
('Warlock', 'Affliction80PvEP3BiS', @RACEMASK_HUMAN, 7, 47097, 3606, 3545, 3520, 0, 0, 0),
('Warlock', 'Affliction80PvEP3BiS', @RACEMASK_HUMAN, 8, 47208, 2332, 3520, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP3BiS', @RACEMASK_HUMAN, 9, 47788, 3604, 3520, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP3BiS', @RACEMASK_HUMAN, 10, 45495, 0, 3520, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP3BiS', @RACEMASK_HUMAN, 11, 47237, 0, 3563, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP3BiS', @RACEMASK_HUMAN, 12, 45518, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP3BiS', @RACEMASK_HUMAN, 13, 45466, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP3BiS', @RACEMASK_HUMAN, 14, 47552, 3722, 3520, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP3BiS', @RACEMASK_HUMAN, 15, 46980, 3834, 3520, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP3BiS', @RACEMASK_HUMAN, 16, 47958, 0, 3563, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP3BiS', @RACEMASK_HUMAN, 17, 45294, 0, 3563, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP3BiS', @RACEMASK_A, 0, 47789, 3820, 3621, 3545, 0, 0, 0),
('Warlock', 'Affliction80PvEP3BiS', @RACEMASK_A, 1, 47144, 0, 3563, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP3BiS', @RACEMASK_A, 2, 47792, 3810, 3563, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP3BiS', @RACEMASK_A, 4, 47129, 1144, 3545, 3563, 3520, 0, 0),
('Warlock', 'Affliction80PvEP3BiS', @RACEMASK_A, 5, 46973, 3601, 3545, 3520, 0, 0, 3520),
('Warlock', 'Affliction80PvEP3BiS', @RACEMASK_A, 6, 47790, 3719, 3520, 3563, 0, 0, 0),
('Warlock', 'Affliction80PvEP3BiS', @RACEMASK_A, 7, 47097, 3606, 3545, 3520, 0, 0, 0),
('Warlock', 'Affliction80PvEP3BiS', @RACEMASK_A, 8, 47208, 2332, 3520, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP3BiS', @RACEMASK_A, 9, 47788, 3604, 3520, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP3BiS', @RACEMASK_A, 10, 45495, 0, 3520, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP3BiS', @RACEMASK_A, 11, 47237, 0, 3563, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP3BiS', @RACEMASK_A, 12, 45518, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP3BiS', @RACEMASK_A, 13, 45466, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP3BiS', @RACEMASK_A, 14, 47552, 3722, 3520, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP3BiS', @RACEMASK_A, 15, 46980, 3834, 3520, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP3BiS', @RACEMASK_A, 16, 47958, 0, 3563, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP3BiS', @RACEMASK_A, 17, 45294, 0, 3563, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP3BiS', @RACEMASK_H, 0, 47796, 3820, 3621, 3545, 0, 0, 0),
('Warlock', 'Affliction80PvEP3BiS', @RACEMASK_H, 1, 47468, 0, 3563, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP3BiS', @RACEMASK_H, 2, 47793, 3810, 3563, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP3BiS', @RACEMASK_H, 4, 47462, 3832, 3545, 3560, 3520, 0, 0),
('Warlock', 'Affliction80PvEP3BiS', @RACEMASK_H, 5, 47419, 3601, 3545, 3520, 0, 0, 3520),
('Warlock', 'Affliction80PvEP3BiS', @RACEMASK_H, 6, 47795, 3719, 3520, 3563, 0, 0, 0),
('Warlock', 'Affliction80PvEP3BiS', @RACEMASK_H, 7, 47454, 3606, 3545, 3520, 0, 0, 0),
('Warlock', 'Affliction80PvEP3BiS', @RACEMASK_H, 8, 47485, 2332, 3520, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP3BiS', @RACEMASK_H, 9, 47797, 3604, 3520, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP3BiS', @RACEMASK_H, 10, 47489, 0, 3563, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP3BiS', @RACEMASK_H, 11, 45495, 0, 3520, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP3BiS', @RACEMASK_H, 12, 45518, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP3BiS', @RACEMASK_H, 13, 45466, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP3BiS', @RACEMASK_H, 14, 47551, 3722, 3520, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP3BiS', @RACEMASK_H, 15, 47422, 3834, 3520, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP3BiS', @RACEMASK_H, 16, 48032, 0, 3563, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP3BiS', @RACEMASK_H, 17, 45294, 0, 3563, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warlock Demonology 80PvEP3BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Warlock', 'Demonology80PvEP3BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_shadow_metamorphosis:30|t|r Use Demonology PvE P3 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Demonology80PvE', 'Demonology80PvE', 'WotLK Phase 3', 303),
('Warlock', 'Demonology80PvEP3BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_shadow_metamorphosis:30|t|r Use Demonology PvE P3 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Demonology80PvE', 'Demonology80PvE', 'WotLK Phase 3', 303);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warlock', 'Demonology80PvEP3BiS', @RACEMASK_HUMAN, 0, 47789, 3820, 3621, 3545, 0, 0, 0),
('Warlock', 'Demonology80PvEP3BiS', @RACEMASK_HUMAN, 1, 45243, 0, 3520, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP3BiS', @RACEMASK_HUMAN, 2, 47792, 3810, 3560, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP3BiS', @RACEMASK_HUMAN, 4, 47791, 1144, 3520, 3545, 0, 0, 0),
('Warlock', 'Demonology80PvEP3BiS', @RACEMASK_HUMAN, 5, 46973, 3601, 3545, 3520, 0, 0, 3520),
('Warlock', 'Demonology80PvEP3BiS', @RACEMASK_HUMAN, 6, 47062, 3872, 3520, 3545, 3545, 0, 0),
('Warlock', 'Demonology80PvEP3BiS', @RACEMASK_HUMAN, 7, 47097, 3606, 3545, 3520, 0, 0, 0),
('Warlock', 'Demonology80PvEP3BiS', @RACEMASK_HUMAN, 8, 47208, 2332, 3545, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP3BiS', @RACEMASK_HUMAN, 9, 47788, 3604, 3520, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP3BiS', @RACEMASK_HUMAN, 10, 45495, 0, 3545, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP3BiS', @RACEMASK_HUMAN, 11, 47237, 0, 3560, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP3BiS', @RACEMASK_HUMAN, 12, 45518, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP3BiS', @RACEMASK_HUMAN, 13, 40255, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP3BiS', @RACEMASK_HUMAN, 14, 47553, 3722, 3520, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP3BiS', @RACEMASK_HUMAN, 15, 46980, 3834, 3545, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP3BiS', @RACEMASK_HUMAN, 16, 47146, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP3BiS', @RACEMASK_HUMAN, 17, 45294, 0, 3520, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP3BiS', @RACEMASK_A, 0, 47789, 3820, 3621, 3545, 0, 0, 0),
('Warlock', 'Demonology80PvEP3BiS', @RACEMASK_A, 1, 45243, 0, 3520, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP3BiS', @RACEMASK_A, 2, 47792, 3810, 3560, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP3BiS', @RACEMASK_A, 4, 47791, 1144, 3520, 3545, 0, 0, 0),
('Warlock', 'Demonology80PvEP3BiS', @RACEMASK_A, 5, 46973, 3601, 3545, 3520, 0, 0, 3520),
('Warlock', 'Demonology80PvEP3BiS', @RACEMASK_A, 6, 47062, 3872, 3520, 3545, 3545, 0, 0),
('Warlock', 'Demonology80PvEP3BiS', @RACEMASK_A, 7, 47097, 3606, 3545, 3520, 0, 0, 0),
('Warlock', 'Demonology80PvEP3BiS', @RACEMASK_A, 8, 47208, 2332, 3545, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP3BiS', @RACEMASK_A, 9, 47788, 3604, 3520, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP3BiS', @RACEMASK_A, 10, 45495, 0, 3545, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP3BiS', @RACEMASK_A, 11, 47237, 0, 3560, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP3BiS', @RACEMASK_A, 12, 45518, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP3BiS', @RACEMASK_A, 13, 40255, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP3BiS', @RACEMASK_A, 14, 47553, 3722, 3520, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP3BiS', @RACEMASK_A, 15, 46980, 3834, 3545, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP3BiS', @RACEMASK_A, 16, 47146, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP3BiS', @RACEMASK_A, 17, 45294, 0, 3520, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP3BiS', @RACEMASK_H, 0, 47796, 3820, 3621, 3545, 0, 0, 0),
('Warlock', 'Demonology80PvEP3BiS', @RACEMASK_H, 1, 45133, 0, 3520, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP3BiS', @RACEMASK_H, 2, 47793, 3810, 3866, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP3BiS', @RACEMASK_H, 4, 47794, 1144, 3520, 3545, 0, 0, 0),
('Warlock', 'Demonology80PvEP3BiS', @RACEMASK_H, 5, 47419, 3601, 3545, 3520, 0, 0, 3520),
('Warlock', 'Demonology80PvEP3BiS', @RACEMASK_H, 6, 47435, 3719, 3520, 3545, 3545, 0, 0),
('Warlock', 'Demonology80PvEP3BiS', @RACEMASK_H, 7, 47454, 3606, 3545, 3520, 0, 0, 0),
('Warlock', 'Demonology80PvEP3BiS', @RACEMASK_H, 8, 47485, 2332, 3545, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP3BiS', @RACEMASK_H, 9, 47797, 3604, 3520, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP3BiS', @RACEMASK_H, 10, 47489, 0, 3520, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP3BiS', @RACEMASK_H, 11, 45495, 0, 3545, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP3BiS', @RACEMASK_H, 12, 45518, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP3BiS', @RACEMASK_H, 13, 40255, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP3BiS', @RACEMASK_H, 14, 47554, 3722, 3520, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP3BiS', @RACEMASK_H, 15, 47422, 3834, 3545, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP3BiS', @RACEMASK_H, 16, 47470, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP3BiS', @RACEMASK_H, 17, 45294, 0, 3520, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warlock Destruction 80PvEP3BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Warlock', 'Destruction80PvEP3BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_shadow_rainoffire:30|t|r Use Destruction PvE P3 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Destruction80PvE', 'Destruction80PvE', 'WotLK Phase 3', 303),
('Warlock', 'Destruction80PvEP3BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_shadow_rainoffire:30|t|r Use Destruction PvE P3 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Destruction80PvE', 'Destruction80PvE', 'WotLK Phase 3', 303);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warlock', 'Destruction80PvEP3BiS', @RACEMASK_HUMAN, 0, 47789, 3820, 3621, 3545, 0, 0, 0),
('Warlock', 'Destruction80PvEP3BiS', @RACEMASK_HUMAN, 1, 47144, 0, 3563, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP3BiS', @RACEMASK_HUMAN, 2, 47792, 3810, 3559, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP3BiS', @RACEMASK_HUMAN, 4, 47791, 1144, 3520, 3545, 0, 0, 0),
('Warlock', 'Destruction80PvEP3BiS', @RACEMASK_HUMAN, 5, 46973, 0, 3545, 3520, 0, 0, 3520),
('Warlock', 'Destruction80PvEP3BiS', @RACEMASK_HUMAN, 6, 47062, 3719, 3520, 3545, 3545, 0, 0),
('Warlock', 'Destruction80PvEP3BiS', @RACEMASK_HUMAN, 7, 47097, 3606, 3545, 3520, 0, 0, 0),
('Warlock', 'Destruction80PvEP3BiS', @RACEMASK_HUMAN, 8, 47143, 2332, 3559, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP3BiS', @RACEMASK_HUMAN, 9, 47788, 3604, 3520, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP3BiS', @RACEMASK_HUMAN, 10, 47237, 0, 3563, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP3BiS', @RACEMASK_HUMAN, 11, 45495, 0, 3545, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP3BiS', @RACEMASK_HUMAN, 12, 47477, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP3BiS', @RACEMASK_HUMAN, 13, 45518, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP3BiS', @RACEMASK_HUMAN, 14, 47552, 3722, 3866, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP3BiS', @RACEMASK_HUMAN, 15, 46980, 3834, 3545, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP3BiS', @RACEMASK_HUMAN, 16, 47064, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP3BiS', @RACEMASK_HUMAN, 17, 45294, 0, 3520, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP3BiS', @RACEMASK_A, 0, 47789, 3820, 3621, 3545, 0, 0, 0),
('Warlock', 'Destruction80PvEP3BiS', @RACEMASK_A, 1, 47144, 0, 3563, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP3BiS', @RACEMASK_A, 2, 47792, 3810, 3559, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP3BiS', @RACEMASK_A, 4, 47791, 1144, 3520, 3545, 0, 0, 0),
('Warlock', 'Destruction80PvEP3BiS', @RACEMASK_A, 5, 46973, 0, 3545, 3520, 0, 0, 3520),
('Warlock', 'Destruction80PvEP3BiS', @RACEMASK_A, 6, 47062, 3719, 3520, 3545, 3545, 0, 0),
('Warlock', 'Destruction80PvEP3BiS', @RACEMASK_A, 7, 47097, 3606, 3545, 3520, 0, 0, 0),
('Warlock', 'Destruction80PvEP3BiS', @RACEMASK_A, 8, 47143, 2332, 3559, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP3BiS', @RACEMASK_A, 9, 47788, 3604, 3520, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP3BiS', @RACEMASK_A, 10, 47237, 0, 3563, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP3BiS', @RACEMASK_A, 11, 45495, 0, 3545, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP3BiS', @RACEMASK_A, 12, 47477, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP3BiS', @RACEMASK_A, 13, 45518, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP3BiS', @RACEMASK_A, 14, 47552, 3722, 3866, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP3BiS', @RACEMASK_A, 15, 46980, 3834, 3545, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP3BiS', @RACEMASK_A, 16, 47064, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP3BiS', @RACEMASK_A, 17, 45294, 0, 3520, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP3BiS', @RACEMASK_H, 0, 47796, 3820, 3621, 3545, 0, 0, 0),
('Warlock', 'Destruction80PvEP3BiS', @RACEMASK_H, 1, 47468, 0, 3563, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP3BiS', @RACEMASK_H, 2, 47793, 3810, 3560, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP3BiS', @RACEMASK_H, 4, 47794, 1144, 3520, 3545, 0, 0, 0),
('Warlock', 'Destruction80PvEP3BiS', @RACEMASK_H, 5, 47419, 0, 3545, 3520, 0, 0, 3520),
('Warlock', 'Destruction80PvEP3BiS', @RACEMASK_H, 6, 47435, 3719, 3520, 3520, 3520, 0, 0),
('Warlock', 'Destruction80PvEP3BiS', @RACEMASK_H, 7, 47454, 3606, 3545, 3520, 0, 0, 0),
('Warlock', 'Destruction80PvEP3BiS', @RACEMASK_H, 8, 47467, 2332, 3560, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP3BiS', @RACEMASK_H, 9, 47797, 3604, 3520, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP3BiS', @RACEMASK_H, 10, 45495, 0, 3545, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP3BiS', @RACEMASK_H, 11, 47489, 0, 3563, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP3BiS', @RACEMASK_H, 12, 45518, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP3BiS', @RACEMASK_H, 13, 47188, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP3BiS', @RACEMASK_H, 14, 47551, 3722, 3520, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP3BiS', @RACEMASK_H, 15, 47422, 3834, 3545, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP3BiS', @RACEMASK_H, 16, 47437, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP3BiS', @RACEMASK_H, 17, 45294, 0, 3520, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warrior Arms 80PvEP3BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Warrior', 'Arms80PvEP3BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_rogue_eviscerate:30|t|r Use Arms PvE P3 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Arms80PvE', 'Arms80PvE', 'WotLK Phase 3', 303),
('Warrior', 'Arms80PvEP3BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_rogue_eviscerate:30|t|r Use Arms PvE P3 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Arms80PvE', 'Arms80PvE', 'WotLK Phase 3', 303);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warrior', 'Arms80PvEP3BiS', @RACEMASK_HUMAN, 0, 49478, 3817, 3628, 3525, 0, 0, 0),
('Warrior', 'Arms80PvEP3BiS', @RACEMASK_HUMAN, 1, 47915, 0, 3525, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP3BiS', @RACEMASK_HUMAN, 2, 48381, 3808, 3732, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP3BiS', @RACEMASK_HUMAN, 4, 48385, 3832, 3732, 3732, 0, 0, 0),
('Warrior', 'Arms80PvEP3BiS', @RACEMASK_HUMAN, 5, 47153, 0, 3550, 3525, 0, 0, 3525),
('Warrior', 'Arms80PvEP3BiS', @RACEMASK_HUMAN, 6, 47191, 3823, 3525, 3525, 3525, 0, 0),
('Warrior', 'Arms80PvEP3BiS', @RACEMASK_HUMAN, 7, 47077, 3606, 3550, 3525, 0, 0, 0),
('Warrior', 'Arms80PvEP3BiS', @RACEMASK_HUMAN, 8, 47074, 3845, 3550, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP3BiS', @RACEMASK_HUMAN, 9, 47240, 3604, 3879, 3525, 0, 0, 0),
('Warrior', 'Arms80PvEP3BiS', @RACEMASK_HUMAN, 10, 47934, 0, 3549, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP3BiS', @RACEMASK_HUMAN, 11, 45608, 0, 3525, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP3BiS', @RACEMASK_HUMAN, 12, 47131, 0, 0, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP3BiS', @RACEMASK_HUMAN, 13, 46038, 0, 0, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP3BiS', @RACEMASK_HUMAN, 14, 47545, 3605, 3525, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP3BiS', @RACEMASK_HUMAN, 15, 47078, 3789, 3525, 3525, 0, 0, 0),
('Warrior', 'Arms80PvEP3BiS', @RACEMASK_HUMAN, 17, 45296, 0, 3525, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP3BiS', @RACEMASK_A, 0, 49478, 3817, 3628, 3525, 0, 0, 0),
('Warrior', 'Arms80PvEP3BiS', @RACEMASK_A, 1, 47915, 0, 3525, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP3BiS', @RACEMASK_A, 2, 48381, 3808, 3732, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP3BiS', @RACEMASK_A, 4, 48385, 3832, 3732, 3732, 0, 0, 0),
('Warrior', 'Arms80PvEP3BiS', @RACEMASK_A, 5, 47153, 0, 3550, 3525, 0, 0, 3525),
('Warrior', 'Arms80PvEP3BiS', @RACEMASK_A, 6, 47191, 3823, 3525, 3525, 3525, 0, 0),
('Warrior', 'Arms80PvEP3BiS', @RACEMASK_A, 7, 47077, 3606, 3550, 3525, 0, 0, 0),
('Warrior', 'Arms80PvEP3BiS', @RACEMASK_A, 8, 47074, 3845, 3550, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP3BiS', @RACEMASK_A, 9, 47240, 3604, 3879, 3525, 0, 0, 0),
('Warrior', 'Arms80PvEP3BiS', @RACEMASK_A, 10, 47934, 0, 3549, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP3BiS', @RACEMASK_A, 11, 45608, 0, 3525, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP3BiS', @RACEMASK_A, 12, 47131, 0, 0, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP3BiS', @RACEMASK_A, 13, 46038, 0, 0, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP3BiS', @RACEMASK_A, 14, 47545, 3605, 3525, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP3BiS', @RACEMASK_A, 15, 47078, 3789, 3525, 3525, 0, 0, 0),
('Warrior', 'Arms80PvEP3BiS', @RACEMASK_A, 17, 45296, 0, 3525, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP3BiS', @RACEMASK_H, 0, 49478, 3817, 3628, 3525, 0, 0, 0),
('Warrior', 'Arms80PvEP3BiS', @RACEMASK_H, 1, 47988, 0, 3525, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP3BiS', @RACEMASK_H, 2, 48400, 3808, 3732, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP3BiS', @RACEMASK_H, 4, 48396, 3832, 3732, 3732, 0, 0, 0),
('Warrior', 'Arms80PvEP3BiS', @RACEMASK_H, 5, 47472, 0, 3550, 3525, 0, 0, 3525),
('Warrior', 'Arms80PvEP3BiS', @RACEMASK_H, 6, 47480, 3823, 3525, 3525, 3525, 0, 0),
('Warrior', 'Arms80PvEP3BiS', @RACEMASK_H, 7, 47445, 3606, 3550, 3525, 0, 0, 0),
('Warrior', 'Arms80PvEP3BiS', @RACEMASK_H, 8, 47442, 3845, 3550, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP3BiS', @RACEMASK_H, 9, 47492, 3604, 3879, 3525, 0, 0, 0),
('Warrior', 'Arms80PvEP3BiS', @RACEMASK_H, 10, 48007, 0, 3549, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP3BiS', @RACEMASK_H, 11, 45608, 0, 3525, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP3BiS', @RACEMASK_H, 12, 47464, 0, 0, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP3BiS', @RACEMASK_H, 13, 46038, 0, 0, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP3BiS', @RACEMASK_H, 14, 47546, 3605, 3525, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP3BiS', @RACEMASK_H, 15, 47446, 3789, 3525, 3525, 0, 0, 0),
('Warrior', 'Arms80PvEP3BiS', @RACEMASK_H, 17, 45296, 0, 3525, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warrior Fury 80PvEP3BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Warrior', 'Fury80PvEP3BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_warrior_innerrage:30|t|r Use Fury PvE P3 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Fury80PvE', 'Fury80PvE', 'WotLK Phase 3', 303),
('Warrior', 'Fury80PvEP3BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_warrior_innerrage:30|t|r Use Fury PvE P3 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Fury80PvE', 'Fury80PvE', 'WotLK Phase 3', 303);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warrior', 'Fury80PvEP3BiS', @RACEMASK_HUMAN, 0, 48383, 3817, 3628, 3879, 0, 0, 0),
('Warrior', 'Fury80PvEP3BiS', @RACEMASK_HUMAN, 1, 47060, 0, 3525, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP3BiS', @RACEMASK_HUMAN, 2, 48381, 3808, 3518, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP3BiS', @RACEMASK_HUMAN, 4, 48385, 3832, 3525, 3525, 0, 0, 0),
('Warrior', 'Fury80PvEP3BiS', @RACEMASK_HUMAN, 5, 47002, 0, 3550, 3550, 0, 0, 3518),
('Warrior', 'Fury80PvEP3BiS', @RACEMASK_HUMAN, 6, 48382, 3823, 3549, 3525, 0, 0, 0),
('Warrior', 'Fury80PvEP3BiS', @RACEMASK_HUMAN, 7, 47154, 3606, 3549, 3525, 0, 0, 0),
('Warrior', 'Fury80PvEP3BiS', @RACEMASK_HUMAN, 8, 47074, 3845, 3550, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP3BiS', @RACEMASK_HUMAN, 9, 47240, 3604, 3518, 3518, 0, 0, 0),
('Warrior', 'Fury80PvEP3BiS', @RACEMASK_HUMAN, 10, 46966, 0, 3550, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP3BiS', @RACEMASK_HUMAN, 11, 47075, 0, 3518, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP3BiS', @RACEMASK_HUMAN, 12, 45931, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP3BiS', @RACEMASK_HUMAN, 13, 47131, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP3BiS', @RACEMASK_HUMAN, 14, 47545, 3831, 3518, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP3BiS', @RACEMASK_HUMAN, 15, 47078, 3789, 3732, 3518, 0, 0, 0),
('Warrior', 'Fury80PvEP3BiS', @RACEMASK_HUMAN, 16, 47078, 3789, 3732, 3732, 0, 0, 0),
('Warrior', 'Fury80PvEP3BiS', @RACEMASK_HUMAN, 17, 46995, 0, 3518, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP3BiS', @RACEMASK_A, 0, 48383, 3817, 3628, 3879, 0, 0, 0),
('Warrior', 'Fury80PvEP3BiS', @RACEMASK_A, 1, 47060, 0, 3525, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP3BiS', @RACEMASK_A, 2, 48381, 3808, 3518, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP3BiS', @RACEMASK_A, 4, 48385, 3832, 3525, 3525, 0, 0, 0),
('Warrior', 'Fury80PvEP3BiS', @RACEMASK_A, 5, 47002, 0, 3550, 3550, 0, 0, 3518),
('Warrior', 'Fury80PvEP3BiS', @RACEMASK_A, 6, 48382, 3823, 3549, 3525, 0, 0, 0),
('Warrior', 'Fury80PvEP3BiS', @RACEMASK_A, 7, 47154, 3606, 3549, 3525, 0, 0, 0),
('Warrior', 'Fury80PvEP3BiS', @RACEMASK_A, 8, 47074, 3845, 3550, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP3BiS', @RACEMASK_A, 9, 47240, 3604, 3518, 3518, 0, 0, 0),
('Warrior', 'Fury80PvEP3BiS', @RACEMASK_A, 10, 46966, 0, 3550, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP3BiS', @RACEMASK_A, 11, 47075, 0, 3518, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP3BiS', @RACEMASK_A, 12, 45931, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP3BiS', @RACEMASK_A, 13, 47131, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP3BiS', @RACEMASK_A, 14, 47545, 3831, 3518, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP3BiS', @RACEMASK_A, 15, 47078, 3789, 3732, 3518, 0, 0, 0),
('Warrior', 'Fury80PvEP3BiS', @RACEMASK_A, 16, 47078, 3789, 3732, 3732, 0, 0, 0),
('Warrior', 'Fury80PvEP3BiS', @RACEMASK_A, 17, 46995, 0, 3518, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP3BiS', @RACEMASK_H, 0, 48398, 3817, 3628, 3879, 0, 0, 0),
('Warrior', 'Fury80PvEP3BiS', @RACEMASK_H, 1, 47433, 0, 3525, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP3BiS', @RACEMASK_H, 2, 48400, 3808, 3518, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP3BiS', @RACEMASK_H, 4, 48396, 3832, 3525, 3525, 0, 0, 0),
('Warrior', 'Fury80PvEP3BiS', @RACEMASK_H, 5, 47429, 0, 3550, 3550, 0, 0, 3518),
('Warrior', 'Fury80PvEP3BiS', @RACEMASK_H, 6, 48399, 3823, 3549, 3525, 0, 0, 0),
('Warrior', 'Fury80PvEP3BiS', @RACEMASK_H, 7, 47473, 3606, 3549, 3525, 0, 0, 0),
('Warrior', 'Fury80PvEP3BiS', @RACEMASK_H, 8, 47442, 3845, 3550, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP3BiS', @RACEMASK_H, 9, 47492, 3604, 3518, 3518, 0, 0, 0),
('Warrior', 'Fury80PvEP3BiS', @RACEMASK_H, 10, 47413, 0, 3550, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP3BiS', @RACEMASK_H, 11, 47443, 0, 3518, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP3BiS', @RACEMASK_H, 12, 45931, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP3BiS', @RACEMASK_H, 13, 47464, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP3BiS', @RACEMASK_H, 14, 47546, 3831, 3518, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP3BiS', @RACEMASK_H, 15, 47446, 3789, 3732, 3518, 0, 0, 0),
('Warrior', 'Fury80PvEP3BiS', @RACEMASK_H, 16, 47446, 3789, 3732, 3732, 0, 0, 0),
('Warrior', 'Fury80PvEP3BiS', @RACEMASK_H, 17, 47428, 0, 3518, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warrior Protection 80PvEP3BiSTank (tank) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Warrior', 'Protection80PvEP3BiSTank', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_warrior_defensivestance:30|t|r Use Protection PvE P3 BiS Tank', 7, @MINLEVEL, @MAXLEVEL, 'Protection80PvE', 'Protection80PvE', 'WotLK Phase 3', 303),
('Warrior', 'Protection80PvEP3BiSTank', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_warrior_defensivestance:30|t|r Use Protection PvE P3 BiS Tank (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Protection80PvE', 'Protection80PvE', 'WotLK Phase 3', 303);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warrior', 'Protection80PvEP3BiSTank', @RACEMASK_HUMAN, 0, 48433, 3818, 3637, 3537, 0, 0, 0),
('Warrior', 'Protection80PvEP3BiSTank', @RACEMASK_HUMAN, 1, 47133, 0, 3537, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP3BiSTank', @RACEMASK_HUMAN, 2, 48455, 3852, 3532, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP3BiSTank', @RACEMASK_HUMAN, 4, 46968, 3832, 3537, 3879, 3293, 0, 0),
('Warrior', 'Protection80PvEP3BiSTank', @RACEMASK_HUMAN, 5, 47076, 3601, 3537, 3293, 0, 0, 3293),
('Warrior', 'Protection80PvEP3BiSTank', @RACEMASK_HUMAN, 6, 48447, 3822, 3537, 3532, 0, 0, 0),
('Warrior', 'Protection80PvEP3BiSTank', @RACEMASK_HUMAN, 7, 47003, 3232, 3537, 3532, 0, 0, 0),
('Warrior', 'Protection80PvEP3BiSTank', @RACEMASK_HUMAN, 8, 47111, 3850, 3537, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP3BiSTank', @RACEMASK_HUMAN, 9, 48453, 3860, 3575, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP3BiSTank', @RACEMASK_HUMAN, 10, 47157, 0, 3537, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP3BiSTank', @RACEMASK_HUMAN, 11, 45471, 0, 3575, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP3BiSTank', @RACEMASK_HUMAN, 12, 47088, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP3BiSTank', @RACEMASK_HUMAN, 13, 45158, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP3BiSTank', @RACEMASK_HUMAN, 14, 47549, 3605, 3532, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP3BiSTank', @RACEMASK_HUMAN, 15, 47506, 3788, 3575, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP3BiSTank', @RACEMASK_HUMAN, 16, 45587, 3849, 3532, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP3BiSTank', @RACEMASK_HUMAN, 17, 47660, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP3BiSTank', @RACEMASK_A, 0, 48433, 3818, 3637, 3537, 0, 0, 0),
('Warrior', 'Protection80PvEP3BiSTank', @RACEMASK_A, 1, 47133, 0, 3537, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP3BiSTank', @RACEMASK_A, 2, 48455, 3852, 3532, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP3BiSTank', @RACEMASK_A, 4, 46968, 3832, 3537, 3879, 3293, 0, 0),
('Warrior', 'Protection80PvEP3BiSTank', @RACEMASK_A, 5, 47076, 3601, 3537, 3293, 0, 0, 3293),
('Warrior', 'Protection80PvEP3BiSTank', @RACEMASK_A, 6, 48447, 3822, 3537, 3532, 0, 0, 0),
('Warrior', 'Protection80PvEP3BiSTank', @RACEMASK_A, 7, 47003, 3232, 3537, 3532, 0, 0, 0),
('Warrior', 'Protection80PvEP3BiSTank', @RACEMASK_A, 8, 47111, 3850, 3537, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP3BiSTank', @RACEMASK_A, 9, 48453, 3860, 3575, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP3BiSTank', @RACEMASK_A, 10, 47157, 0, 3537, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP3BiSTank', @RACEMASK_A, 11, 45471, 0, 3575, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP3BiSTank', @RACEMASK_A, 12, 47088, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP3BiSTank', @RACEMASK_A, 13, 45158, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP3BiSTank', @RACEMASK_A, 14, 47549, 3605, 3532, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP3BiSTank', @RACEMASK_A, 15, 47506, 3788, 3575, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP3BiSTank', @RACEMASK_A, 16, 45587, 3849, 3532, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP3BiSTank', @RACEMASK_A, 17, 47660, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP3BiSTank', @RACEMASK_H, 0, 48468, 3818, 3637, 3537, 0, 0, 0),
('Warrior', 'Protection80PvEP3BiSTank', @RACEMASK_H, 1, 47468, 0, 3537, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP3BiSTank', @RACEMASK_H, 2, 48470, 3852, 3532, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP3BiSTank', @RACEMASK_H, 4, 47415, 3832, 3537, 3879, 3293, 0, 0),
('Warrior', 'Protection80PvEP3BiSTank', @RACEMASK_H, 5, 47444, 3601, 3537, 3293, 0, 0, 3293),
('Warrior', 'Protection80PvEP3BiSTank', @RACEMASK_H, 6, 48469, 3822, 3537, 3532, 0, 0, 0),
('Warrior', 'Protection80PvEP3BiSTank', @RACEMASK_H, 7, 47430, 3232, 3537, 3532, 0, 0, 0),
('Warrior', 'Protection80PvEP3BiSTank', @RACEMASK_H, 8, 47459, 3850, 3537, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP3BiSTank', @RACEMASK_H, 9, 48467, 3860, 3575, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP3BiSTank', @RACEMASK_H, 10, 47476, 0, 3537, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP3BiSTank', @RACEMASK_H, 11, 45471, 0, 3575, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP3BiSTank', @RACEMASK_H, 12, 47432, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP3BiSTank', @RACEMASK_H, 13, 45158, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP3BiSTank', @RACEMASK_H, 14, 47550, 3605, 3532, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP3BiSTank', @RACEMASK_H, 15, 47513, 3788, 3575, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP3BiSTank', @RACEMASK_H, 16, 45587, 3849, 3532, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP3BiSTank', @RACEMASK_H, 17, 47660, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

