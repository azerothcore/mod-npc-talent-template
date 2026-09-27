-- Batch-generated BiS gear templates
-- Expansion: wotlk  Mode: pve  Phase: 4
-- 31 specs

-- Idempotency: remove this file's templates first so re-application cannot duplicate rows
-- (the index table has no unique key; without this a re-applied file would append copies).
DELETE FROM `mod_npc_talent_template_index` WHERE `playerSpec` IN ('Blood80PvEP4BiSTank', 'Frost80PvEP4BiS', 'Unholy80PvEP4BiS', 'Balance80PvEP4BiS', 'Feral80PvEP4BiS', 'Feral80PvEP4BiSTank', 'Restoration80PvEP4BiSHeal', 'Beastmastery80PvEP4BiS', 'Marksmanship80PvEP4BiS', 'Survival80PvEP4BiS', 'Arcane80PvEP4BiS', 'Fire80PvEP4BiS', 'Holy80PvEP4BiSHeal', 'Protection80PvEP4BiSTank', 'Retribution80PvEP4BiS', 'Discipline80PvEP4BiSHeal', 'Shadow80PvEP4BiS', 'Assassination80PvEP4BiS', 'Combat80PvEP4BiS', 'Subtlety80PvEP4BiS', 'Elemental80PvEP4BiS', 'Enhancement80PvEP4BiS', 'Affliction80PvEP4BiS', 'Demonology80PvEP4BiS', 'Destruction80PvEP4BiS', 'Arms80PvEP4BiS', 'Fury80PvEP4BiS');
DELETE FROM `mod_npc_talent_template_gear` WHERE `playerSpec` IN ('Blood80PvEP4BiSTank', 'Frost80PvEP4BiS', 'Unholy80PvEP4BiS', 'Balance80PvEP4BiS', 'Feral80PvEP4BiS', 'Feral80PvEP4BiSTank', 'Restoration80PvEP4BiSHeal', 'Beastmastery80PvEP4BiS', 'Marksmanship80PvEP4BiS', 'Survival80PvEP4BiS', 'Arcane80PvEP4BiS', 'Fire80PvEP4BiS', 'Holy80PvEP4BiSHeal', 'Protection80PvEP4BiSTank', 'Retribution80PvEP4BiS', 'Discipline80PvEP4BiSHeal', 'Shadow80PvEP4BiS', 'Assassination80PvEP4BiS', 'Combat80PvEP4BiS', 'Subtlety80PvEP4BiS', 'Elemental80PvEP4BiS', 'Enhancement80PvEP4BiS', 'Affliction80PvEP4BiS', 'Demonology80PvEP4BiS', 'Destruction80PvEP4BiS', 'Arms80PvEP4BiS', 'Fury80PvEP4BiS');

SET @MINLEVEL = 80;
SET @MAXLEVEL = 80;
SET @RACEMASK_HUMAN = 1;
SET @RACEMASK_A = 1100; -- Alliance without Human
SET @RACEMASK_H = 690;  -- Horde
-- ===== Death Knight Blood 80PvEP4BiSTank (tank) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Death Knight', 'Blood80PvEP4BiSTank', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_deathknight_bloodpresence:30|t|r Use Blood PvE P4 BiS Tank', 7, @MINLEVEL, @MAXLEVEL, 'Blood80PvE', 'Blood80PvE', 'WotLK Phase 4', 304),
('Death Knight', 'Blood80PvEP4BiSTank', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_deathknight_bloodpresence:30|t|r Use Blood PvE P4 BiS Tank (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Blood80PvE', 'Blood80PvE', 'WotLK Phase 4', 304);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Death Knight', 'Blood80PvEP4BiSTank', @RACEMASK_HUMAN, 0, 50640, 3878, 3637, 3537, 0, 0, 0),
('Death Knight', 'Blood80PvEP4BiSTank', @RACEMASK_HUMAN, 1, 50682, 0, 3532, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP4BiSTank', @RACEMASK_HUMAN, 2, 51309, 3852, 3532, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP4BiSTank', @RACEMASK_HUMAN, 4, 51305, 3297, 3532, 3532, 0, 0, 0),
('Death Knight', 'Blood80PvEP4BiSTank', @RACEMASK_HUMAN, 5, 50691, 0, 3532, 3532, 0, 0, 3532),
('Death Knight', 'Blood80PvEP4BiSTank', @RACEMASK_HUMAN, 6, 51308, 3327, 3532, 3532, 0, 0, 0),
('Death Knight', 'Blood80PvEP4BiSTank', @RACEMASK_HUMAN, 7, 54579, 3606, 3532, 3532, 0, 0, 0),
('Death Knight', 'Blood80PvEP4BiSTank', @RACEMASK_HUMAN, 8, 51901, 3757, 3532, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP4BiSTank', @RACEMASK_HUMAN, 9, 51307, 3860, 3532, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP4BiSTank', @RACEMASK_HUMAN, 10, 50404, 0, 3532, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP4BiSTank', @RACEMASK_HUMAN, 11, 50622, 0, 3532, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP4BiSTank', @RACEMASK_HUMAN, 12, 50364, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP4BiSTank', @RACEMASK_HUMAN, 13, 50344, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP4BiSTank', @RACEMASK_HUMAN, 14, 50718, 3294, 3532, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP4BiSTank', @RACEMASK_HUMAN, 15, 50735, 3847, 3532, 3532, 3532, 0, 0),
('Death Knight', 'Blood80PvEP4BiSTank', @RACEMASK_HUMAN, 17, 50462, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP4BiSTank', @RACEMASK_A, 0, 50640, 3878, 3637, 3537, 0, 0, 0),
('Death Knight', 'Blood80PvEP4BiSTank', @RACEMASK_A, 1, 50682, 0, 3532, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP4BiSTank', @RACEMASK_A, 2, 51309, 3852, 3532, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP4BiSTank', @RACEMASK_A, 4, 51305, 3297, 3532, 3532, 0, 0, 0),
('Death Knight', 'Blood80PvEP4BiSTank', @RACEMASK_A, 5, 50691, 0, 3532, 3532, 0, 0, 3532),
('Death Knight', 'Blood80PvEP4BiSTank', @RACEMASK_A, 6, 51308, 3327, 3532, 3532, 0, 0, 0),
('Death Knight', 'Blood80PvEP4BiSTank', @RACEMASK_A, 7, 54579, 3606, 3532, 3532, 0, 0, 0),
('Death Knight', 'Blood80PvEP4BiSTank', @RACEMASK_A, 8, 51901, 3757, 3532, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP4BiSTank', @RACEMASK_A, 9, 51307, 3860, 3532, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP4BiSTank', @RACEMASK_A, 10, 50404, 0, 3532, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP4BiSTank', @RACEMASK_A, 11, 50622, 0, 3532, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP4BiSTank', @RACEMASK_A, 12, 50364, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP4BiSTank', @RACEMASK_A, 13, 50344, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP4BiSTank', @RACEMASK_A, 14, 50718, 3294, 3532, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP4BiSTank', @RACEMASK_A, 15, 50735, 3847, 3532, 3532, 3532, 0, 0),
('Death Knight', 'Blood80PvEP4BiSTank', @RACEMASK_A, 17, 50462, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP4BiSTank', @RACEMASK_H, 0, 50640, 3878, 3637, 3537, 0, 0, 0),
('Death Knight', 'Blood80PvEP4BiSTank', @RACEMASK_H, 1, 50682, 0, 3532, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP4BiSTank', @RACEMASK_H, 2, 51309, 3852, 3532, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP4BiSTank', @RACEMASK_H, 4, 51305, 3297, 3532, 3532, 0, 0, 0),
('Death Knight', 'Blood80PvEP4BiSTank', @RACEMASK_H, 5, 50691, 0, 3532, 3532, 0, 0, 3532),
('Death Knight', 'Blood80PvEP4BiSTank', @RACEMASK_H, 6, 51308, 3327, 3532, 3532, 0, 0, 0),
('Death Knight', 'Blood80PvEP4BiSTank', @RACEMASK_H, 7, 54579, 3606, 3532, 3532, 0, 0, 0),
('Death Knight', 'Blood80PvEP4BiSTank', @RACEMASK_H, 8, 51901, 3757, 3532, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP4BiSTank', @RACEMASK_H, 9, 51307, 3860, 3532, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP4BiSTank', @RACEMASK_H, 10, 50404, 0, 3532, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP4BiSTank', @RACEMASK_H, 11, 50622, 0, 3532, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP4BiSTank', @RACEMASK_H, 12, 50364, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP4BiSTank', @RACEMASK_H, 13, 50344, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP4BiSTank', @RACEMASK_H, 14, 50718, 3294, 3532, 0, 0, 0, 0),
('Death Knight', 'Blood80PvEP4BiSTank', @RACEMASK_H, 15, 50735, 3847, 3532, 3532, 3532, 0, 0),
('Death Knight', 'Blood80PvEP4BiSTank', @RACEMASK_H, 17, 50462, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Death Knight Frost 80PvEP4BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Death Knight', 'Frost80PvEP4BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_deathknight_frostpresence:30|t|r Use Frost PvE P4 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Frost80PvE', 'Frost80PvE', 'WotLK Phase 4', 304),
('Death Knight', 'Frost80PvEP4BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_deathknight_frostpresence:30|t|r Use Frost PvE P4 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Frost80PvE', 'Frost80PvE', 'WotLK Phase 4', 304);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Death Knight', 'Frost80PvEP4BiS', @RACEMASK_HUMAN, 0, 51312, 3817, 3628, 3525, 0, 0, 0),
('Death Knight', 'Frost80PvEP4BiS', @RACEMASK_HUMAN, 1, 54581, 0, 3550, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP4BiS', @RACEMASK_HUMAN, 2, 51314, 3808, 3525, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP4BiS', @RACEMASK_HUMAN, 4, 51310, 3832, 3745, 3879, 0, 0, 0),
('Death Knight', 'Frost80PvEP4BiS', @RACEMASK_HUMAN, 5, 50620, 0, 3550, 3745, 0, 0, 3525),
('Death Knight', 'Frost80PvEP4BiS', @RACEMASK_HUMAN, 6, 51313, 3823, 3745, 3525, 0, 0, 0),
('Death Knight', 'Frost80PvEP4BiS', @RACEMASK_HUMAN, 7, 54578, 3606, 3525, 3525, 0, 0, 0),
('Death Knight', 'Frost80PvEP4BiS', @RACEMASK_HUMAN, 8, 50670, 3845, 3525, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP4BiS', @RACEMASK_HUMAN, 9, 50675, 3604, 3525, 3525, 0, 0, 0),
('Death Knight', 'Frost80PvEP4BiS', @RACEMASK_HUMAN, 10, 52572, 0, 3550, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP4BiS', @RACEMASK_HUMAN, 11, 50693, 0, 3550, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP4BiS', @RACEMASK_HUMAN, 12, 54590, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP4BiS', @RACEMASK_HUMAN, 13, 50363, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP4BiS', @RACEMASK_HUMAN, 14, 47548, 3831, 3525, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP4BiS', @RACEMASK_HUMAN, 15, 50737, 3370, 3525, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP4BiS', @RACEMASK_HUMAN, 16, 50737, 3368, 3525, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP4BiS', @RACEMASK_HUMAN, 17, 40207, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP4BiS', @RACEMASK_A, 0, 51312, 3817, 3628, 3525, 0, 0, 0),
('Death Knight', 'Frost80PvEP4BiS', @RACEMASK_A, 1, 54581, 0, 3550, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP4BiS', @RACEMASK_A, 2, 51314, 3808, 3525, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP4BiS', @RACEMASK_A, 4, 51310, 3832, 3745, 3879, 0, 0, 0),
('Death Knight', 'Frost80PvEP4BiS', @RACEMASK_A, 5, 50620, 0, 3550, 3745, 0, 0, 3525),
('Death Knight', 'Frost80PvEP4BiS', @RACEMASK_A, 6, 51313, 3823, 3745, 3525, 0, 0, 0),
('Death Knight', 'Frost80PvEP4BiS', @RACEMASK_A, 7, 54578, 3606, 3525, 3525, 0, 0, 0),
('Death Knight', 'Frost80PvEP4BiS', @RACEMASK_A, 8, 50670, 3845, 3525, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP4BiS', @RACEMASK_A, 9, 50675, 3604, 3525, 3525, 0, 0, 0),
('Death Knight', 'Frost80PvEP4BiS', @RACEMASK_A, 10, 52572, 0, 3550, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP4BiS', @RACEMASK_A, 11, 50693, 0, 3550, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP4BiS', @RACEMASK_A, 12, 54590, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP4BiS', @RACEMASK_A, 13, 50363, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP4BiS', @RACEMASK_A, 14, 47548, 3831, 3525, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP4BiS', @RACEMASK_A, 15, 50737, 3370, 3525, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP4BiS', @RACEMASK_A, 16, 50737, 3368, 3525, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP4BiS', @RACEMASK_A, 17, 40207, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP4BiS', @RACEMASK_H, 0, 51312, 3817, 3628, 3525, 0, 0, 0),
('Death Knight', 'Frost80PvEP4BiS', @RACEMASK_H, 1, 54581, 0, 3550, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP4BiS', @RACEMASK_H, 2, 51314, 3808, 3525, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP4BiS', @RACEMASK_H, 4, 51310, 3832, 3745, 3879, 0, 0, 0),
('Death Knight', 'Frost80PvEP4BiS', @RACEMASK_H, 5, 50620, 0, 3550, 3745, 0, 0, 3525),
('Death Knight', 'Frost80PvEP4BiS', @RACEMASK_H, 6, 51313, 3823, 3745, 3525, 0, 0, 0),
('Death Knight', 'Frost80PvEP4BiS', @RACEMASK_H, 7, 54578, 3606, 3525, 3525, 0, 0, 0),
('Death Knight', 'Frost80PvEP4BiS', @RACEMASK_H, 8, 50670, 3845, 3525, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP4BiS', @RACEMASK_H, 9, 50675, 3604, 3525, 3525, 0, 0, 0),
('Death Knight', 'Frost80PvEP4BiS', @RACEMASK_H, 10, 52572, 0, 3550, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP4BiS', @RACEMASK_H, 11, 50693, 0, 3550, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP4BiS', @RACEMASK_H, 12, 54590, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP4BiS', @RACEMASK_H, 13, 50363, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP4BiS', @RACEMASK_H, 14, 47548, 3831, 3525, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP4BiS', @RACEMASK_H, 15, 50737, 3370, 3525, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP4BiS', @RACEMASK_H, 16, 50737, 3368, 3525, 0, 0, 0, 0),
('Death Knight', 'Frost80PvEP4BiS', @RACEMASK_H, 17, 40207, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Death Knight Unholy 80PvEP4BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Death Knight', 'Unholy80PvEP4BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_deathknight_unholypresence:30|t|r Use Unholy PvE P4 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Unholy80PvE', 'Unholy80PvE', 'WotLK Phase 4', 304),
('Death Knight', 'Unholy80PvEP4BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_deathknight_unholypresence:30|t|r Use Unholy PvE P4 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Unholy80PvE', 'Unholy80PvE', 'WotLK Phase 4', 304);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Death Knight', 'Unholy80PvEP4BiS', @RACEMASK_HUMAN, 0, 51312, 3817, 3621, 3518, 0, 0, 0),
('Death Knight', 'Unholy80PvEP4BiS', @RACEMASK_HUMAN, 1, 54581, 0, 3553, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP4BiS', @RACEMASK_HUMAN, 2, 51314, 3808, 3518, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP4BiS', @RACEMASK_HUMAN, 4, 51310, 3832, 3518, 3536, 0, 0, 0),
('Death Knight', 'Unholy80PvEP4BiS', @RACEMASK_HUMAN, 5, 50620, 0, 3553, 3518, 0, 0, 3518),
('Death Knight', 'Unholy80PvEP4BiS', @RACEMASK_HUMAN, 6, 50624, 3823, 3553, 3518, 3879, 0, 0),
('Death Knight', 'Unholy80PvEP4BiS', @RACEMASK_HUMAN, 7, 54578, 3606, 3518, 3518, 0, 0, 0),
('Death Knight', 'Unholy80PvEP4BiS', @RACEMASK_HUMAN, 8, 50659, 3845, 3553, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP4BiS', @RACEMASK_HUMAN, 9, 51311, 3604, 3553, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP4BiS', @RACEMASK_HUMAN, 10, 52572, 0, 3553, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP4BiS', @RACEMASK_HUMAN, 11, 50693, 0, 3553, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP4BiS', @RACEMASK_HUMAN, 12, 54590, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP4BiS', @RACEMASK_HUMAN, 13, 50363, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP4BiS', @RACEMASK_HUMAN, 14, 50677, 3831, 3553, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP4BiS', @RACEMASK_HUMAN, 15, 49623, 0, 3732, 3732, 3732, 0, 0),
('Death Knight', 'Unholy80PvEP4BiS', @RACEMASK_HUMAN, 17, 50459, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP4BiS', @RACEMASK_A, 0, 51312, 3817, 3621, 3518, 0, 0, 0),
('Death Knight', 'Unholy80PvEP4BiS', @RACEMASK_A, 1, 54581, 0, 3553, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP4BiS', @RACEMASK_A, 2, 51314, 3808, 3518, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP4BiS', @RACEMASK_A, 4, 51310, 3832, 3518, 3536, 0, 0, 0),
('Death Knight', 'Unholy80PvEP4BiS', @RACEMASK_A, 5, 50620, 0, 3553, 3518, 0, 0, 3518),
('Death Knight', 'Unholy80PvEP4BiS', @RACEMASK_A, 6, 50624, 3823, 3553, 3518, 3879, 0, 0),
('Death Knight', 'Unholy80PvEP4BiS', @RACEMASK_A, 7, 54578, 3606, 3518, 3518, 0, 0, 0),
('Death Knight', 'Unholy80PvEP4BiS', @RACEMASK_A, 8, 50659, 3845, 3553, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP4BiS', @RACEMASK_A, 9, 51311, 3604, 3553, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP4BiS', @RACEMASK_A, 10, 52572, 0, 3553, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP4BiS', @RACEMASK_A, 11, 50693, 0, 3553, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP4BiS', @RACEMASK_A, 12, 54590, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP4BiS', @RACEMASK_A, 13, 50363, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP4BiS', @RACEMASK_A, 14, 50677, 3831, 3553, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP4BiS', @RACEMASK_A, 15, 49623, 0, 3732, 3732, 3732, 0, 0),
('Death Knight', 'Unholy80PvEP4BiS', @RACEMASK_A, 17, 50459, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP4BiS', @RACEMASK_H, 0, 51312, 3817, 3621, 3518, 0, 0, 0),
('Death Knight', 'Unholy80PvEP4BiS', @RACEMASK_H, 1, 54581, 0, 3553, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP4BiS', @RACEMASK_H, 2, 51314, 3808, 3518, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP4BiS', @RACEMASK_H, 4, 51310, 3832, 3518, 3536, 0, 0, 0),
('Death Knight', 'Unholy80PvEP4BiS', @RACEMASK_H, 5, 50620, 0, 3553, 3518, 0, 0, 3518),
('Death Knight', 'Unholy80PvEP4BiS', @RACEMASK_H, 6, 50624, 3823, 3553, 3518, 3879, 0, 0),
('Death Knight', 'Unholy80PvEP4BiS', @RACEMASK_H, 7, 54578, 3606, 3518, 3518, 0, 0, 0),
('Death Knight', 'Unholy80PvEP4BiS', @RACEMASK_H, 8, 50659, 3845, 3553, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP4BiS', @RACEMASK_H, 9, 51311, 3604, 3553, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP4BiS', @RACEMASK_H, 10, 52572, 0, 3553, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP4BiS', @RACEMASK_H, 11, 50693, 0, 3553, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP4BiS', @RACEMASK_H, 12, 54590, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP4BiS', @RACEMASK_H, 13, 50363, 0, 0, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP4BiS', @RACEMASK_H, 14, 50677, 3831, 3553, 0, 0, 0, 0),
('Death Knight', 'Unholy80PvEP4BiS', @RACEMASK_H, 15, 49623, 0, 3732, 3732, 3732, 0, 0),
('Death Knight', 'Unholy80PvEP4BiS', @RACEMASK_H, 17, 50459, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Druid Balance 80PvEP4BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Druid', 'Balance80PvEP4BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_starfall:30|t|r Use Balance PvE P4 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Balance80PvE', 'Balance80PvE', 'WotLK Phase 4', 304),
('Druid', 'Balance80PvEP4BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_starfall:30|t|r Use Balance PvE P4 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Balance80PvE', 'Balance80PvE', 'WotLK Phase 4', 304);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Druid', 'Balance80PvEP4BiS', @RACEMASK_HUMAN, 0, 51290, 3820, 3621, 3520, 0, 0, 0),
('Druid', 'Balance80PvEP4BiS', @RACEMASK_HUMAN, 1, 50724, 0, 3520, 0, 0, 0, 0),
('Druid', 'Balance80PvEP4BiS', @RACEMASK_HUMAN, 2, 51292, 3810, 3520, 0, 0, 0, 0),
('Druid', 'Balance80PvEP4BiS', @RACEMASK_HUMAN, 4, 51294, 3832, 3520, 3560, 0, 0, 0),
('Druid', 'Balance80PvEP4BiS', @RACEMASK_HUMAN, 5, 50613, 0, 3520, 3520, 0, 0, 3520),
('Druid', 'Balance80PvEP4BiS', @RACEMASK_HUMAN, 6, 50694, 3719, 3520, 3545, 3560, 0, 0),
('Druid', 'Balance80PvEP4BiS', @RACEMASK_HUMAN, 7, 50699, 3606, 3545, 3520, 0, 0, 0),
('Druid', 'Balance80PvEP4BiS', @RACEMASK_HUMAN, 8, 54582, 2332, 3563, 0, 0, 0, 0),
('Druid', 'Balance80PvEP4BiS', @RACEMASK_HUMAN, 9, 51291, 3604, 3520, 0, 0, 0, 0),
('Druid', 'Balance80PvEP4BiS', @RACEMASK_HUMAN, 10, 50664, 0, 3520, 0, 0, 0, 0),
('Druid', 'Balance80PvEP4BiS', @RACEMASK_HUMAN, 11, 50398, 0, 3560, 0, 0, 0, 0),
('Druid', 'Balance80PvEP4BiS', @RACEMASK_HUMAN, 12, 50365, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP4BiS', @RACEMASK_HUMAN, 13, 50348, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP4BiS', @RACEMASK_HUMAN, 14, 54583, 3722, 3520, 0, 0, 0, 0),
('Druid', 'Balance80PvEP4BiS', @RACEMASK_HUMAN, 15, 50734, 3834, 3520, 0, 0, 0, 0),
('Druid', 'Balance80PvEP4BiS', @RACEMASK_HUMAN, 16, 50719, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP4BiS', @RACEMASK_HUMAN, 17, 50457, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP4BiS', @RACEMASK_A, 0, 51290, 3820, 3621, 3520, 0, 0, 0),
('Druid', 'Balance80PvEP4BiS', @RACEMASK_A, 1, 50724, 0, 3520, 0, 0, 0, 0),
('Druid', 'Balance80PvEP4BiS', @RACEMASK_A, 2, 51292, 3810, 3520, 0, 0, 0, 0),
('Druid', 'Balance80PvEP4BiS', @RACEMASK_A, 4, 51294, 3832, 3520, 3560, 0, 0, 0),
('Druid', 'Balance80PvEP4BiS', @RACEMASK_A, 5, 50613, 0, 3520, 3520, 0, 0, 3520),
('Druid', 'Balance80PvEP4BiS', @RACEMASK_A, 6, 50694, 3719, 3520, 3545, 3560, 0, 0),
('Druid', 'Balance80PvEP4BiS', @RACEMASK_A, 7, 50699, 3606, 3545, 3520, 0, 0, 0),
('Druid', 'Balance80PvEP4BiS', @RACEMASK_A, 8, 54582, 2332, 3563, 0, 0, 0, 0),
('Druid', 'Balance80PvEP4BiS', @RACEMASK_A, 9, 51291, 3604, 3520, 0, 0, 0, 0),
('Druid', 'Balance80PvEP4BiS', @RACEMASK_A, 10, 50664, 0, 3520, 0, 0, 0, 0),
('Druid', 'Balance80PvEP4BiS', @RACEMASK_A, 11, 50398, 0, 3560, 0, 0, 0, 0),
('Druid', 'Balance80PvEP4BiS', @RACEMASK_A, 12, 50365, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP4BiS', @RACEMASK_A, 13, 50348, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP4BiS', @RACEMASK_A, 14, 54583, 3722, 3520, 0, 0, 0, 0),
('Druid', 'Balance80PvEP4BiS', @RACEMASK_A, 15, 50734, 3834, 3520, 0, 0, 0, 0),
('Druid', 'Balance80PvEP4BiS', @RACEMASK_A, 16, 50719, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP4BiS', @RACEMASK_A, 17, 50457, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP4BiS', @RACEMASK_H, 0, 51290, 3820, 3621, 3520, 0, 0, 0),
('Druid', 'Balance80PvEP4BiS', @RACEMASK_H, 1, 50724, 0, 3520, 0, 0, 0, 0),
('Druid', 'Balance80PvEP4BiS', @RACEMASK_H, 2, 51292, 3810, 3520, 0, 0, 0, 0),
('Druid', 'Balance80PvEP4BiS', @RACEMASK_H, 4, 51294, 3832, 3520, 3560, 0, 0, 0),
('Druid', 'Balance80PvEP4BiS', @RACEMASK_H, 5, 50613, 0, 3520, 3520, 0, 0, 3520),
('Druid', 'Balance80PvEP4BiS', @RACEMASK_H, 6, 50694, 3719, 3520, 3545, 3560, 0, 0),
('Druid', 'Balance80PvEP4BiS', @RACEMASK_H, 7, 50699, 3606, 3545, 3520, 0, 0, 0),
('Druid', 'Balance80PvEP4BiS', @RACEMASK_H, 8, 54582, 2332, 3563, 0, 0, 0, 0),
('Druid', 'Balance80PvEP4BiS', @RACEMASK_H, 9, 51291, 3604, 3520, 0, 0, 0, 0),
('Druid', 'Balance80PvEP4BiS', @RACEMASK_H, 10, 50664, 0, 3520, 0, 0, 0, 0),
('Druid', 'Balance80PvEP4BiS', @RACEMASK_H, 11, 50398, 0, 3560, 0, 0, 0, 0),
('Druid', 'Balance80PvEP4BiS', @RACEMASK_H, 12, 50365, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP4BiS', @RACEMASK_H, 13, 50348, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP4BiS', @RACEMASK_H, 14, 54583, 3722, 3520, 0, 0, 0, 0),
('Druid', 'Balance80PvEP4BiS', @RACEMASK_H, 15, 50734, 3834, 3520, 0, 0, 0, 0),
('Druid', 'Balance80PvEP4BiS', @RACEMASK_H, 16, 50719, 0, 0, 0, 0, 0, 0),
('Druid', 'Balance80PvEP4BiS', @RACEMASK_H, 17, 50457, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Druid Feral 80PvEP4BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Druid', 'Feral80PvEP4BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_druid_catform:30|t|r Use Feral PvE P4 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Feral80PvE', 'Feral80PvE', 'WotLK Phase 4', 304),
('Druid', 'Feral80PvEP4BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_druid_catform:30|t|r Use Feral PvE P4 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Feral80PvE', 'Feral80PvE', 'WotLK Phase 4', 304);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Druid', 'Feral80PvEP4BiS', @RACEMASK_HUMAN, 0, 51296, 3817, 3628, 3525, 0, 0, 0),
('Druid', 'Feral80PvEP4BiS', @RACEMASK_HUMAN, 1, 50633, 0, 3525, 0, 0, 0, 0),
('Druid', 'Feral80PvEP4BiS', @RACEMASK_HUMAN, 2, 51299, 3808, 3525, 0, 0, 0, 0),
('Druid', 'Feral80PvEP4BiS', @RACEMASK_HUMAN, 4, 51298, 3832, 3525, 3528, 0, 0, 0),
('Druid', 'Feral80PvEP4BiS', @RACEMASK_HUMAN, 5, 50707, 0, 3525, 3525, 0, 0, 3524),
('Druid', 'Feral80PvEP4BiS', @RACEMASK_HUMAN, 6, 51297, 3823, 3519, 3528, 0, 0, 0),
('Druid', 'Feral80PvEP4BiS', @RACEMASK_HUMAN, 7, 50607, 3606, 3528, 3555, 0, 0, 0),
('Druid', 'Feral80PvEP4BiS', @RACEMASK_HUMAN, 8, 54580, 3845, 3525, 0, 0, 0, 0),
('Druid', 'Feral80PvEP4BiS', @RACEMASK_HUMAN, 9, 50675, 3604, 3528, 3525, 0, 0, 0),
('Druid', 'Feral80PvEP4BiS', @RACEMASK_HUMAN, 10, 54576, 0, 3555, 0, 0, 0, 0),
('Druid', 'Feral80PvEP4BiS', @RACEMASK_HUMAN, 11, 50604, 0, 3555, 0, 0, 0, 0),
('Druid', 'Feral80PvEP4BiS', @RACEMASK_HUMAN, 12, 54590, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP4BiS', @RACEMASK_HUMAN, 13, 50363, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP4BiS', @RACEMASK_HUMAN, 14, 50653, 3605, 3528, 0, 0, 0, 0),
('Druid', 'Feral80PvEP4BiS', @RACEMASK_HUMAN, 15, 50735, 3789, 3519, 3879, 3555, 0, 0),
('Druid', 'Feral80PvEP4BiS', @RACEMASK_HUMAN, 17, 50456, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP4BiS', @RACEMASK_A, 0, 51296, 3817, 3628, 3525, 0, 0, 0),
('Druid', 'Feral80PvEP4BiS', @RACEMASK_A, 1, 50633, 0, 3525, 0, 0, 0, 0),
('Druid', 'Feral80PvEP4BiS', @RACEMASK_A, 2, 51299, 3808, 3525, 0, 0, 0, 0),
('Druid', 'Feral80PvEP4BiS', @RACEMASK_A, 4, 51298, 3832, 3525, 3528, 0, 0, 0),
('Druid', 'Feral80PvEP4BiS', @RACEMASK_A, 5, 50707, 0, 3525, 3525, 0, 0, 3524),
('Druid', 'Feral80PvEP4BiS', @RACEMASK_A, 6, 51297, 3823, 3519, 3528, 0, 0, 0),
('Druid', 'Feral80PvEP4BiS', @RACEMASK_A, 7, 50607, 3606, 3528, 3555, 0, 0, 0),
('Druid', 'Feral80PvEP4BiS', @RACEMASK_A, 8, 54580, 3845, 3525, 0, 0, 0, 0),
('Druid', 'Feral80PvEP4BiS', @RACEMASK_A, 9, 50675, 3604, 3528, 3525, 0, 0, 0),
('Druid', 'Feral80PvEP4BiS', @RACEMASK_A, 10, 54576, 0, 3555, 0, 0, 0, 0),
('Druid', 'Feral80PvEP4BiS', @RACEMASK_A, 11, 50604, 0, 3555, 0, 0, 0, 0),
('Druid', 'Feral80PvEP4BiS', @RACEMASK_A, 12, 54590, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP4BiS', @RACEMASK_A, 13, 50363, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP4BiS', @RACEMASK_A, 14, 50653, 3605, 3528, 0, 0, 0, 0),
('Druid', 'Feral80PvEP4BiS', @RACEMASK_A, 15, 50735, 3789, 3519, 3879, 3555, 0, 0),
('Druid', 'Feral80PvEP4BiS', @RACEMASK_A, 17, 50456, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP4BiS', @RACEMASK_H, 0, 51296, 3817, 3628, 3525, 0, 0, 0),
('Druid', 'Feral80PvEP4BiS', @RACEMASK_H, 1, 50633, 0, 3525, 0, 0, 0, 0),
('Druid', 'Feral80PvEP4BiS', @RACEMASK_H, 2, 51299, 3808, 3525, 0, 0, 0, 0),
('Druid', 'Feral80PvEP4BiS', @RACEMASK_H, 4, 51298, 3832, 3525, 3528, 0, 0, 0),
('Druid', 'Feral80PvEP4BiS', @RACEMASK_H, 5, 50707, 0, 3525, 3525, 0, 0, 3524),
('Druid', 'Feral80PvEP4BiS', @RACEMASK_H, 6, 51297, 3823, 3519, 3528, 0, 0, 0),
('Druid', 'Feral80PvEP4BiS', @RACEMASK_H, 7, 50607, 3606, 3528, 3555, 0, 0, 0),
('Druid', 'Feral80PvEP4BiS', @RACEMASK_H, 8, 54580, 3845, 3525, 0, 0, 0, 0),
('Druid', 'Feral80PvEP4BiS', @RACEMASK_H, 9, 50675, 3604, 3528, 3525, 0, 0, 0),
('Druid', 'Feral80PvEP4BiS', @RACEMASK_H, 10, 54576, 0, 3555, 0, 0, 0, 0),
('Druid', 'Feral80PvEP4BiS', @RACEMASK_H, 11, 50604, 0, 3555, 0, 0, 0, 0),
('Druid', 'Feral80PvEP4BiS', @RACEMASK_H, 12, 54590, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP4BiS', @RACEMASK_H, 13, 50363, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP4BiS', @RACEMASK_H, 14, 50653, 3605, 3528, 0, 0, 0, 0),
('Druid', 'Feral80PvEP4BiS', @RACEMASK_H, 15, 50735, 3789, 3519, 3879, 3555, 0, 0),
('Druid', 'Feral80PvEP4BiS', @RACEMASK_H, 17, 50456, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Druid Feral 80PvEP4BiSTank (tank) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Druid', 'Feral80PvEP4BiSTank', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_racial_bearform:30|t|r Use Feral PvE P4 BiS Tank', 7, @MINLEVEL, @MAXLEVEL, 'FeralTank80PvE', 'FeralTank80PvE', 'WotLK Phase 4', 304),
('Druid', 'Feral80PvEP4BiSTank', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_racial_bearform:30|t|r Use Feral PvE P4 BiS Tank (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'FeralTank80PvE', 'FeralTank80PvE', 'WotLK Phase 4', 304);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Druid', 'Feral80PvEP4BiSTank', @RACEMASK_HUMAN, 0, 51296, 3878, 3637, 3532, 0, 0, 0),
('Druid', 'Feral80PvEP4BiSTank', @RACEMASK_HUMAN, 1, 50682, 0, 3537, 0, 0, 0, 0),
('Druid', 'Feral80PvEP4BiSTank', @RACEMASK_HUMAN, 2, 51299, 3852, 3532, 0, 0, 0, 0),
('Druid', 'Feral80PvEP4BiSTank', @RACEMASK_HUMAN, 4, 50656, 3330, 3532, 3532, 3532, 0, 0),
('Druid', 'Feral80PvEP4BiSTank', @RACEMASK_HUMAN, 5, 50707, 0, 3532, 3532, 0, 0, 3532),
('Druid', 'Feral80PvEP4BiSTank', @RACEMASK_HUMAN, 6, 51297, 3822, 3532, 3532, 0, 0, 0),
('Druid', 'Feral80PvEP4BiSTank', @RACEMASK_HUMAN, 7, 50607, 3606, 3532, 3532, 0, 0, 0),
('Druid', 'Feral80PvEP4BiSTank', @RACEMASK_HUMAN, 8, 54580, 3850, 3532, 0, 0, 0, 0),
('Druid', 'Feral80PvEP4BiSTank', @RACEMASK_HUMAN, 9, 51295, 3860, 3532, 0, 0, 0, 0),
('Druid', 'Feral80PvEP4BiSTank', @RACEMASK_HUMAN, 10, 50622, 0, 3532, 0, 0, 0, 0),
('Druid', 'Feral80PvEP4BiSTank', @RACEMASK_HUMAN, 11, 50404, 0, 3532, 0, 0, 0, 0),
('Druid', 'Feral80PvEP4BiSTank', @RACEMASK_HUMAN, 12, 47088, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP4BiSTank', @RACEMASK_HUMAN, 13, 50364, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP4BiSTank', @RACEMASK_HUMAN, 14, 50466, 3294, 3532, 0, 0, 0, 0),
('Druid', 'Feral80PvEP4BiSTank', @RACEMASK_HUMAN, 15, 51432, 3870, 3532, 3532, 0, 0, 0),
('Druid', 'Feral80PvEP4BiSTank', @RACEMASK_HUMAN, 17, 50456, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP4BiSTank', @RACEMASK_A, 0, 51296, 3878, 3637, 3532, 0, 0, 0),
('Druid', 'Feral80PvEP4BiSTank', @RACEMASK_A, 1, 50682, 0, 3537, 0, 0, 0, 0),
('Druid', 'Feral80PvEP4BiSTank', @RACEMASK_A, 2, 51299, 3852, 3532, 0, 0, 0, 0),
('Druid', 'Feral80PvEP4BiSTank', @RACEMASK_A, 4, 50656, 3330, 3532, 3532, 3532, 0, 0),
('Druid', 'Feral80PvEP4BiSTank', @RACEMASK_A, 5, 50707, 0, 3532, 3532, 0, 0, 3532),
('Druid', 'Feral80PvEP4BiSTank', @RACEMASK_A, 6, 51297, 3822, 3532, 3532, 0, 0, 0),
('Druid', 'Feral80PvEP4BiSTank', @RACEMASK_A, 7, 50607, 3606, 3532, 3532, 0, 0, 0),
('Druid', 'Feral80PvEP4BiSTank', @RACEMASK_A, 8, 54580, 3850, 3532, 0, 0, 0, 0),
('Druid', 'Feral80PvEP4BiSTank', @RACEMASK_A, 9, 51295, 3860, 3532, 0, 0, 0, 0),
('Druid', 'Feral80PvEP4BiSTank', @RACEMASK_A, 10, 50622, 0, 3532, 0, 0, 0, 0),
('Druid', 'Feral80PvEP4BiSTank', @RACEMASK_A, 11, 50404, 0, 3532, 0, 0, 0, 0),
('Druid', 'Feral80PvEP4BiSTank', @RACEMASK_A, 12, 47088, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP4BiSTank', @RACEMASK_A, 13, 50364, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP4BiSTank', @RACEMASK_A, 14, 50466, 3294, 3532, 0, 0, 0, 0),
('Druid', 'Feral80PvEP4BiSTank', @RACEMASK_A, 15, 51432, 3870, 3532, 3532, 0, 0, 0),
('Druid', 'Feral80PvEP4BiSTank', @RACEMASK_A, 17, 50456, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP4BiSTank', @RACEMASK_H, 0, 51296, 3878, 3637, 3532, 0, 0, 0),
('Druid', 'Feral80PvEP4BiSTank', @RACEMASK_H, 1, 50682, 0, 3537, 0, 0, 0, 0),
('Druid', 'Feral80PvEP4BiSTank', @RACEMASK_H, 2, 51299, 3852, 3532, 0, 0, 0, 0),
('Druid', 'Feral80PvEP4BiSTank', @RACEMASK_H, 4, 50656, 3330, 3532, 3532, 3532, 0, 0),
('Druid', 'Feral80PvEP4BiSTank', @RACEMASK_H, 5, 50707, 0, 3532, 3532, 0, 0, 3532),
('Druid', 'Feral80PvEP4BiSTank', @RACEMASK_H, 6, 51297, 3822, 3532, 3532, 0, 0, 0),
('Druid', 'Feral80PvEP4BiSTank', @RACEMASK_H, 7, 50607, 3606, 3532, 3532, 0, 0, 0),
('Druid', 'Feral80PvEP4BiSTank', @RACEMASK_H, 8, 54580, 3850, 3532, 0, 0, 0, 0),
('Druid', 'Feral80PvEP4BiSTank', @RACEMASK_H, 9, 51295, 3860, 3532, 0, 0, 0, 0),
('Druid', 'Feral80PvEP4BiSTank', @RACEMASK_H, 10, 50622, 0, 3532, 0, 0, 0, 0),
('Druid', 'Feral80PvEP4BiSTank', @RACEMASK_H, 11, 50404, 0, 3532, 0, 0, 0, 0),
('Druid', 'Feral80PvEP4BiSTank', @RACEMASK_H, 12, 47432, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP4BiSTank', @RACEMASK_H, 13, 50364, 0, 0, 0, 0, 0, 0),
('Druid', 'Feral80PvEP4BiSTank', @RACEMASK_H, 14, 50466, 3294, 3532, 0, 0, 0, 0),
('Druid', 'Feral80PvEP4BiSTank', @RACEMASK_H, 15, 51432, 3870, 3532, 3532, 0, 0, 0),
('Druid', 'Feral80PvEP4BiSTank', @RACEMASK_H, 17, 50456, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Druid Restoration 80PvEP4BiSHeal (healer) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Druid', 'Restoration80PvEP4BiSHeal', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_healingtouch:30|t|r Use Restoration PvE P4 BiS Heal', 7, @MINLEVEL, @MAXLEVEL, 'Restoration80PvE', 'Restoration80PvE', 'WotLK Phase 4', 304),
('Druid', 'Restoration80PvEP4BiSHeal', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_healingtouch:30|t|r Use Restoration PvE P4 BiS Heal (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Restoration80PvE', 'Restoration80PvE', 'WotLK Phase 4', 304);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Druid', 'Restoration80PvEP4BiSHeal', @RACEMASK_HUMAN, 0, 51302, 3819, 3627, 3520, 0, 0, 0),
('Druid', 'Restoration80PvEP4BiSHeal', @RACEMASK_HUMAN, 1, 50609, 0, 3520, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP4BiSHeal', @RACEMASK_HUMAN, 2, 51304, 3809, 3520, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP4BiSHeal', @RACEMASK_HUMAN, 4, 50717, 3832, 3545, 3520, 3563, 0, 0),
('Druid', 'Restoration80PvEP4BiSHeal', @RACEMASK_HUMAN, 5, 50705, 0, 3563, 3520, 0, 0, 3520),
('Druid', 'Restoration80PvEP4BiSHeal', @RACEMASK_HUMAN, 6, 51303, 3719, 3520, 3563, 0, 0, 0),
('Druid', 'Restoration80PvEP4BiSHeal', @RACEMASK_HUMAN, 7, 50665, 3606, 3563, 3520, 0, 0, 0),
('Druid', 'Restoration80PvEP4BiSHeal', @RACEMASK_HUMAN, 8, 54582, 2332, 3520, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP4BiSHeal', @RACEMASK_HUMAN, 9, 51301, 3246, 3520, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP4BiSHeal', @RACEMASK_HUMAN, 10, 50400, 0, 3520, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP4BiSHeal', @RACEMASK_HUMAN, 11, 54585, 0, 3520, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP4BiSHeal', @RACEMASK_HUMAN, 12, 54589, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP4BiSHeal', @RACEMASK_HUMAN, 13, 50366, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP4BiSHeal', @RACEMASK_HUMAN, 14, 54583, 3859, 3520, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP4BiSHeal', @RACEMASK_HUMAN, 15, 46017, 3834, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP4BiSHeal', @RACEMASK_HUMAN, 16, 50635, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP4BiSHeal', @RACEMASK_HUMAN, 17, 50454, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP4BiSHeal', @RACEMASK_A, 0, 51302, 3819, 3627, 3520, 0, 0, 0),
('Druid', 'Restoration80PvEP4BiSHeal', @RACEMASK_A, 1, 50609, 0, 3520, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP4BiSHeal', @RACEMASK_A, 2, 51304, 3809, 3520, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP4BiSHeal', @RACEMASK_A, 4, 50717, 3832, 3545, 3520, 3563, 0, 0),
('Druid', 'Restoration80PvEP4BiSHeal', @RACEMASK_A, 5, 50705, 0, 3563, 3520, 0, 0, 3520),
('Druid', 'Restoration80PvEP4BiSHeal', @RACEMASK_A, 6, 51303, 3719, 3520, 3563, 0, 0, 0),
('Druid', 'Restoration80PvEP4BiSHeal', @RACEMASK_A, 7, 50665, 3606, 3563, 3520, 0, 0, 0),
('Druid', 'Restoration80PvEP4BiSHeal', @RACEMASK_A, 8, 54582, 2332, 3520, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP4BiSHeal', @RACEMASK_A, 9, 51301, 3246, 3520, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP4BiSHeal', @RACEMASK_A, 10, 50400, 0, 3520, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP4BiSHeal', @RACEMASK_A, 11, 54585, 0, 3520, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP4BiSHeal', @RACEMASK_A, 12, 54589, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP4BiSHeal', @RACEMASK_A, 13, 50366, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP4BiSHeal', @RACEMASK_A, 14, 54583, 3859, 3520, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP4BiSHeal', @RACEMASK_A, 15, 46017, 3834, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP4BiSHeal', @RACEMASK_A, 16, 50635, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP4BiSHeal', @RACEMASK_A, 17, 50454, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP4BiSHeal', @RACEMASK_H, 0, 51302, 3819, 3627, 3520, 0, 0, 0),
('Druid', 'Restoration80PvEP4BiSHeal', @RACEMASK_H, 1, 50609, 0, 3520, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP4BiSHeal', @RACEMASK_H, 2, 51304, 3809, 3520, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP4BiSHeal', @RACEMASK_H, 4, 50717, 3832, 3545, 3520, 3563, 0, 0),
('Druid', 'Restoration80PvEP4BiSHeal', @RACEMASK_H, 5, 50705, 0, 3563, 3520, 0, 0, 3520),
('Druid', 'Restoration80PvEP4BiSHeal', @RACEMASK_H, 6, 51303, 3719, 3520, 3563, 0, 0, 0),
('Druid', 'Restoration80PvEP4BiSHeal', @RACEMASK_H, 7, 50665, 3606, 3563, 3520, 0, 0, 0),
('Druid', 'Restoration80PvEP4BiSHeal', @RACEMASK_H, 8, 54582, 2332, 3520, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP4BiSHeal', @RACEMASK_H, 9, 51301, 3246, 3520, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP4BiSHeal', @RACEMASK_H, 10, 50400, 0, 3520, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP4BiSHeal', @RACEMASK_H, 11, 54585, 0, 3520, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP4BiSHeal', @RACEMASK_H, 12, 54589, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP4BiSHeal', @RACEMASK_H, 13, 50366, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP4BiSHeal', @RACEMASK_H, 14, 54583, 3859, 3520, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP4BiSHeal', @RACEMASK_H, 15, 46017, 3834, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP4BiSHeal', @RACEMASK_H, 16, 50635, 0, 0, 0, 0, 0, 0),
('Druid', 'Restoration80PvEP4BiSHeal', @RACEMASK_H, 17, 50454, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Hunter Beastmastery 80PvEP4BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Hunter', 'Beastmastery80PvEP4BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_hunter_beasttaming:30|t|r Use Beastmastery PvE P4 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Beastmastery80PvE', 'Beastmastery80PvE', 'WotLK Phase 4', 304),
('Hunter', 'Beastmastery80PvEP4BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_hunter_beasttaming:30|t|r Use Beastmastery PvE P4 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Beastmastery80PvE', 'Beastmastery80PvE', 'WotLK Phase 4', 304);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Hunter', 'Beastmastery80PvEP4BiS', @RACEMASK_HUMAN, 0, 51286, 3817, 3628, 3525, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP4BiS', @RACEMASK_HUMAN, 1, 50633, 0, 3525, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP4BiS', @RACEMASK_HUMAN, 2, 51288, 3808, 3519, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP4BiS', @RACEMASK_HUMAN, 4, 51289, 3832, 3525, 3525, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP4BiS', @RACEMASK_HUMAN, 5, 50688, 0, 3555, 3745, 0, 0, 3745),
('Hunter', 'Beastmastery80PvEP4BiS', @RACEMASK_HUMAN, 6, 50645, 3823, 3879, 3525, 3557, 0, 0),
('Hunter', 'Beastmastery80PvEP4BiS', @RACEMASK_HUMAN, 7, 54577, 3606, 3555, 3555, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP4BiS', @RACEMASK_HUMAN, 8, 54580, 3845, 3525, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP4BiS', @RACEMASK_HUMAN, 9, 51285, 3604, 3525, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP4BiS', @RACEMASK_HUMAN, 10, 50618, 0, 3525, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP4BiS', @RACEMASK_HUMAN, 11, 54576, 0, 3555, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP4BiS', @RACEMASK_HUMAN, 12, 50363, 0, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP4BiS', @RACEMASK_HUMAN, 13, 54590, 0, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP4BiS', @RACEMASK_HUMAN, 14, 47546, 3605, 3745, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP4BiS', @RACEMASK_HUMAN, 15, 50735, 3827, 3525, 3525, 3525, 0, 0),
('Hunter', 'Beastmastery80PvEP4BiS', @RACEMASK_HUMAN, 17, 50733, 3608, 3525, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP4BiS', @RACEMASK_A, 0, 51286, 3817, 3628, 3525, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP4BiS', @RACEMASK_A, 1, 50633, 0, 3525, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP4BiS', @RACEMASK_A, 2, 51288, 3808, 3519, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP4BiS', @RACEMASK_A, 4, 51289, 3832, 3525, 3525, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP4BiS', @RACEMASK_A, 5, 50688, 0, 3555, 3745, 0, 0, 3745),
('Hunter', 'Beastmastery80PvEP4BiS', @RACEMASK_A, 6, 50645, 3823, 3879, 3525, 3557, 0, 0),
('Hunter', 'Beastmastery80PvEP4BiS', @RACEMASK_A, 7, 54577, 3606, 3555, 3555, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP4BiS', @RACEMASK_A, 8, 54580, 3845, 3525, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP4BiS', @RACEMASK_A, 9, 51285, 3604, 3525, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP4BiS', @RACEMASK_A, 10, 50618, 0, 3525, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP4BiS', @RACEMASK_A, 11, 54576, 0, 3555, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP4BiS', @RACEMASK_A, 12, 50363, 0, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP4BiS', @RACEMASK_A, 13, 54590, 0, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP4BiS', @RACEMASK_A, 14, 47546, 3605, 3745, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP4BiS', @RACEMASK_A, 15, 50735, 3827, 3525, 3525, 3525, 0, 0),
('Hunter', 'Beastmastery80PvEP4BiS', @RACEMASK_A, 17, 50733, 3608, 3525, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP4BiS', @RACEMASK_H, 0, 51286, 3817, 3628, 3525, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP4BiS', @RACEMASK_H, 1, 50633, 0, 3525, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP4BiS', @RACEMASK_H, 2, 51288, 3808, 3519, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP4BiS', @RACEMASK_H, 4, 51289, 3832, 3525, 3525, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP4BiS', @RACEMASK_H, 5, 50688, 0, 3555, 3745, 0, 0, 3745),
('Hunter', 'Beastmastery80PvEP4BiS', @RACEMASK_H, 6, 50645, 3823, 3879, 3525, 3557, 0, 0),
('Hunter', 'Beastmastery80PvEP4BiS', @RACEMASK_H, 7, 54577, 3606, 3555, 3555, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP4BiS', @RACEMASK_H, 8, 54580, 3845, 3525, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP4BiS', @RACEMASK_H, 9, 51285, 3604, 3525, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP4BiS', @RACEMASK_H, 10, 50618, 0, 3525, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP4BiS', @RACEMASK_H, 11, 54576, 0, 3555, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP4BiS', @RACEMASK_H, 12, 50363, 0, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP4BiS', @RACEMASK_H, 13, 54590, 0, 0, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP4BiS', @RACEMASK_H, 14, 47546, 3605, 3745, 0, 0, 0, 0),
('Hunter', 'Beastmastery80PvEP4BiS', @RACEMASK_H, 15, 50735, 3827, 3525, 3525, 3525, 0, 0),
('Hunter', 'Beastmastery80PvEP4BiS', @RACEMASK_H, 17, 50733, 3608, 3525, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Hunter Marksmanship 80PvEP4BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Hunter', 'Marksmanship80PvEP4BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_marksmanship:30|t|r Use Marksmanship PvE P4 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Marksmanship80PvE', 'Marksmanship80PvE', 'WotLK Phase 4', 304),
('Hunter', 'Marksmanship80PvEP4BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_marksmanship:30|t|r Use Marksmanship PvE P4 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Marksmanship80PvE', 'Marksmanship80PvE', 'WotLK Phase 4', 304);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Hunter', 'Marksmanship80PvEP4BiS', @RACEMASK_HUMAN, 0, 51286, 3817, 3628, 3525, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP4BiS', @RACEMASK_HUMAN, 1, 50633, 0, 3525, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP4BiS', @RACEMASK_HUMAN, 2, 51288, 3808, 3525, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP4BiS', @RACEMASK_HUMAN, 4, 51289, 3832, 3519, 3519, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP4BiS', @RACEMASK_HUMAN, 5, 50688, 0, 3555, 3745, 0, 0, 3745),
('Hunter', 'Marksmanship80PvEP4BiS', @RACEMASK_HUMAN, 6, 50645, 3823, 3879, 3525, 3554, 0, 0),
('Hunter', 'Marksmanship80PvEP4BiS', @RACEMASK_HUMAN, 7, 54577, 3606, 3555, 3555, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP4BiS', @RACEMASK_HUMAN, 8, 54580, 3845, 3525, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP4BiS', @RACEMASK_HUMAN, 9, 51285, 3604, 3525, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP4BiS', @RACEMASK_HUMAN, 10, 50618, 0, 3525, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP4BiS', @RACEMASK_HUMAN, 11, 54576, 0, 3555, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP4BiS', @RACEMASK_HUMAN, 12, 50363, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP4BiS', @RACEMASK_HUMAN, 13, 54590, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP4BiS', @RACEMASK_HUMAN, 14, 47546, 3605, 3745, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP4BiS', @RACEMASK_HUMAN, 15, 50735, 3827, 3519, 3519, 3519, 0, 0),
('Hunter', 'Marksmanship80PvEP4BiS', @RACEMASK_HUMAN, 17, 50733, 3608, 3525, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP4BiS', @RACEMASK_A, 0, 51286, 3817, 3628, 3525, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP4BiS', @RACEMASK_A, 1, 50633, 0, 3525, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP4BiS', @RACEMASK_A, 2, 51288, 3808, 3525, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP4BiS', @RACEMASK_A, 4, 51289, 3832, 3519, 3519, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP4BiS', @RACEMASK_A, 5, 50688, 0, 3555, 3745, 0, 0, 3745),
('Hunter', 'Marksmanship80PvEP4BiS', @RACEMASK_A, 6, 50645, 3823, 3879, 3525, 3554, 0, 0),
('Hunter', 'Marksmanship80PvEP4BiS', @RACEMASK_A, 7, 54577, 3606, 3555, 3555, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP4BiS', @RACEMASK_A, 8, 54580, 3845, 3525, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP4BiS', @RACEMASK_A, 9, 51285, 3604, 3525, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP4BiS', @RACEMASK_A, 10, 50618, 0, 3525, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP4BiS', @RACEMASK_A, 11, 54576, 0, 3555, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP4BiS', @RACEMASK_A, 12, 50363, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP4BiS', @RACEMASK_A, 13, 54590, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP4BiS', @RACEMASK_A, 14, 47546, 3605, 3745, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP4BiS', @RACEMASK_A, 15, 50735, 3827, 3519, 3519, 3519, 0, 0),
('Hunter', 'Marksmanship80PvEP4BiS', @RACEMASK_A, 17, 50733, 3608, 3525, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP4BiS', @RACEMASK_H, 0, 51286, 3817, 3628, 3525, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP4BiS', @RACEMASK_H, 1, 50633, 0, 3525, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP4BiS', @RACEMASK_H, 2, 51288, 3808, 3525, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP4BiS', @RACEMASK_H, 4, 51289, 3832, 3519, 3519, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP4BiS', @RACEMASK_H, 5, 50688, 0, 3555, 3745, 0, 0, 3745),
('Hunter', 'Marksmanship80PvEP4BiS', @RACEMASK_H, 6, 50645, 3823, 3879, 3525, 3554, 0, 0),
('Hunter', 'Marksmanship80PvEP4BiS', @RACEMASK_H, 7, 54577, 3606, 3555, 3555, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP4BiS', @RACEMASK_H, 8, 54580, 3845, 3525, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP4BiS', @RACEMASK_H, 9, 51285, 3604, 3525, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP4BiS', @RACEMASK_H, 10, 50618, 0, 3525, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP4BiS', @RACEMASK_H, 11, 54576, 0, 3555, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP4BiS', @RACEMASK_H, 12, 50363, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP4BiS', @RACEMASK_H, 13, 54590, 0, 0, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP4BiS', @RACEMASK_H, 14, 47546, 3605, 3745, 0, 0, 0, 0),
('Hunter', 'Marksmanship80PvEP4BiS', @RACEMASK_H, 15, 50735, 3827, 3519, 3519, 3519, 0, 0),
('Hunter', 'Marksmanship80PvEP4BiS', @RACEMASK_H, 17, 50733, 3608, 3525, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Hunter Survival 80PvEP4BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Hunter', 'Survival80PvEP4BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_Hunter_swiftstrike:30|t|r Use Survival PvE P4 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Survival80PvE', 'Survival80PvE', 'WotLK Phase 4', 304),
('Hunter', 'Survival80PvEP4BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_Hunter_swiftstrike:30|t|r Use Survival PvE P4 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Survival80PvE', 'Survival80PvE', 'WotLK Phase 4', 304);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Hunter', 'Survival80PvEP4BiS', @RACEMASK_HUMAN, 0, 51286, 3817, 3628, 3519, 0, 0, 0),
('Hunter', 'Survival80PvEP4BiS', @RACEMASK_HUMAN, 1, 50633, 0, 3519, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP4BiS', @RACEMASK_HUMAN, 2, 51288, 3808, 3519, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP4BiS', @RACEMASK_HUMAN, 4, 51289, 3832, 3519, 3519, 0, 0, 0),
('Hunter', 'Survival80PvEP4BiS', @RACEMASK_HUMAN, 5, 50688, 0, 3555, 3733, 0, 0, 3733),
('Hunter', 'Survival80PvEP4BiS', @RACEMASK_HUMAN, 6, 50645, 3823, 3879, 3519, 3557, 0, 0),
('Hunter', 'Survival80PvEP4BiS', @RACEMASK_HUMAN, 7, 54577, 3606, 3555, 3555, 0, 0, 0),
('Hunter', 'Survival80PvEP4BiS', @RACEMASK_HUMAN, 8, 50655, 3845, 3519, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP4BiS', @RACEMASK_HUMAN, 9, 51285, 3604, 3519, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP4BiS', @RACEMASK_HUMAN, 10, 50618, 0, 3519, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP4BiS', @RACEMASK_HUMAN, 11, 54576, 0, 3555, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP4BiS', @RACEMASK_HUMAN, 12, 50363, 0, 0, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP4BiS', @RACEMASK_HUMAN, 13, 54590, 0, 0, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP4BiS', @RACEMASK_HUMAN, 14, 47546, 3605, 3733, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP4BiS', @RACEMASK_HUMAN, 15, 50735, 3827, 3519, 3519, 3519, 0, 0),
('Hunter', 'Survival80PvEP4BiS', @RACEMASK_HUMAN, 17, 50733, 3608, 3519, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP4BiS', @RACEMASK_A, 0, 51286, 3817, 3628, 3519, 0, 0, 0),
('Hunter', 'Survival80PvEP4BiS', @RACEMASK_A, 1, 50633, 0, 3519, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP4BiS', @RACEMASK_A, 2, 51288, 3808, 3519, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP4BiS', @RACEMASK_A, 4, 51289, 3832, 3519, 3519, 0, 0, 0),
('Hunter', 'Survival80PvEP4BiS', @RACEMASK_A, 5, 50688, 0, 3555, 3733, 0, 0, 3733),
('Hunter', 'Survival80PvEP4BiS', @RACEMASK_A, 6, 50645, 3823, 3879, 3519, 3557, 0, 0),
('Hunter', 'Survival80PvEP4BiS', @RACEMASK_A, 7, 54577, 3606, 3555, 3555, 0, 0, 0),
('Hunter', 'Survival80PvEP4BiS', @RACEMASK_A, 8, 50655, 3845, 3519, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP4BiS', @RACEMASK_A, 9, 51285, 3604, 3519, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP4BiS', @RACEMASK_A, 10, 50618, 0, 3519, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP4BiS', @RACEMASK_A, 11, 54576, 0, 3555, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP4BiS', @RACEMASK_A, 12, 50363, 0, 0, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP4BiS', @RACEMASK_A, 13, 54590, 0, 0, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP4BiS', @RACEMASK_A, 14, 47546, 3605, 3733, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP4BiS', @RACEMASK_A, 15, 50735, 3827, 3519, 3519, 3519, 0, 0),
('Hunter', 'Survival80PvEP4BiS', @RACEMASK_A, 17, 50733, 3608, 3519, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP4BiS', @RACEMASK_H, 0, 51286, 3817, 3628, 3519, 0, 0, 0),
('Hunter', 'Survival80PvEP4BiS', @RACEMASK_H, 1, 50633, 0, 3519, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP4BiS', @RACEMASK_H, 2, 51288, 3808, 3519, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP4BiS', @RACEMASK_H, 4, 51289, 3832, 3519, 3519, 0, 0, 0),
('Hunter', 'Survival80PvEP4BiS', @RACEMASK_H, 5, 50688, 0, 3555, 3733, 0, 0, 3733),
('Hunter', 'Survival80PvEP4BiS', @RACEMASK_H, 6, 50645, 3823, 3879, 3519, 3557, 0, 0),
('Hunter', 'Survival80PvEP4BiS', @RACEMASK_H, 7, 54577, 3606, 3555, 3555, 0, 0, 0),
('Hunter', 'Survival80PvEP4BiS', @RACEMASK_H, 8, 50655, 3845, 3519, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP4BiS', @RACEMASK_H, 9, 51285, 3604, 3519, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP4BiS', @RACEMASK_H, 10, 50618, 0, 3519, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP4BiS', @RACEMASK_H, 11, 54576, 0, 3555, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP4BiS', @RACEMASK_H, 12, 50363, 0, 0, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP4BiS', @RACEMASK_H, 13, 54590, 0, 0, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP4BiS', @RACEMASK_H, 14, 47546, 3605, 3733, 0, 0, 0, 0),
('Hunter', 'Survival80PvEP4BiS', @RACEMASK_H, 15, 50735, 3827, 3519, 3519, 3519, 0, 0),
('Hunter', 'Survival80PvEP4BiS', @RACEMASK_H, 17, 50733, 3608, 3519, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Mage Arcane 80PvEP4BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Mage', 'Arcane80PvEP4BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_magicalsentry:30|t|r Use Arcane PvE P4 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Arcane80PvE', 'Arcane80PvE', 'WotLK Phase 4', 304),
('Mage', 'Arcane80PvEP4BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_magicalsentry:30|t|r Use Arcane PvE P4 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Arcane80PvE', 'Arcane80PvE', 'WotLK Phase 4', 304);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Mage', 'Arcane80PvEP4BiS', @RACEMASK_HUMAN, 0, 51281, 3820, 3621, 3545, 0, 0, 0),
('Mage', 'Arcane80PvEP4BiS', @RACEMASK_HUMAN, 1, 50724, 0, 3545, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP4BiS', @RACEMASK_HUMAN, 2, 51284, 3810, 3563, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP4BiS', @RACEMASK_HUMAN, 4, 51283, 3832, 3520, 3545, 0, 0, 0),
('Mage', 'Arcane80PvEP4BiS', @RACEMASK_HUMAN, 5, 50613, 0, 3545, 3520, 0, 0, 3520),
('Mage', 'Arcane80PvEP4BiS', @RACEMASK_HUMAN, 6, 51282, 3719, 3545, 3563, 0, 0, 0),
('Mage', 'Arcane80PvEP4BiS', @RACEMASK_HUMAN, 7, 50699, 3606, 3545, 3520, 0, 0, 0),
('Mage', 'Arcane80PvEP4BiS', @RACEMASK_HUMAN, 8, 54582, 2332, 3520, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP4BiS', @RACEMASK_HUMAN, 9, 50663, 3604, 3545, 3520, 0, 0, 0),
('Mage', 'Arcane80PvEP4BiS', @RACEMASK_HUMAN, 10, 50398, 0, 3563, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP4BiS', @RACEMASK_HUMAN, 11, 50664, 0, 3545, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP4BiS', @RACEMASK_HUMAN, 12, 50348, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP4BiS', @RACEMASK_HUMAN, 13, 54588, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP4BiS', @RACEMASK_HUMAN, 14, 54583, 3722, 3520, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP4BiS', @RACEMASK_HUMAN, 15, 50732, 3834, 3520, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP4BiS', @RACEMASK_HUMAN, 16, 50719, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP4BiS', @RACEMASK_HUMAN, 17, 50684, 0, 3563, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP4BiS', @RACEMASK_A, 0, 51281, 3820, 3621, 3545, 0, 0, 0),
('Mage', 'Arcane80PvEP4BiS', @RACEMASK_A, 1, 50724, 0, 3545, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP4BiS', @RACEMASK_A, 2, 51284, 3810, 3563, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP4BiS', @RACEMASK_A, 4, 51283, 3832, 3520, 3545, 0, 0, 0),
('Mage', 'Arcane80PvEP4BiS', @RACEMASK_A, 5, 50613, 0, 3545, 3520, 0, 0, 3520),
('Mage', 'Arcane80PvEP4BiS', @RACEMASK_A, 6, 51282, 3719, 3545, 3563, 0, 0, 0),
('Mage', 'Arcane80PvEP4BiS', @RACEMASK_A, 7, 50699, 3606, 3545, 3520, 0, 0, 0),
('Mage', 'Arcane80PvEP4BiS', @RACEMASK_A, 8, 54582, 2332, 3520, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP4BiS', @RACEMASK_A, 9, 50663, 3604, 3545, 3520, 0, 0, 0),
('Mage', 'Arcane80PvEP4BiS', @RACEMASK_A, 10, 50398, 0, 3563, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP4BiS', @RACEMASK_A, 11, 50664, 0, 3545, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP4BiS', @RACEMASK_A, 12, 50348, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP4BiS', @RACEMASK_A, 13, 54588, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP4BiS', @RACEMASK_A, 14, 54583, 3722, 3520, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP4BiS', @RACEMASK_A, 15, 50732, 3834, 3520, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP4BiS', @RACEMASK_A, 16, 50719, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP4BiS', @RACEMASK_A, 17, 50684, 0, 3563, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP4BiS', @RACEMASK_H, 0, 51281, 3820, 3621, 3545, 0, 0, 0),
('Mage', 'Arcane80PvEP4BiS', @RACEMASK_H, 1, 50724, 0, 3545, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP4BiS', @RACEMASK_H, 2, 51284, 3810, 3563, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP4BiS', @RACEMASK_H, 4, 51283, 3832, 3520, 3545, 0, 0, 0),
('Mage', 'Arcane80PvEP4BiS', @RACEMASK_H, 5, 50613, 0, 3545, 3520, 0, 0, 3520),
('Mage', 'Arcane80PvEP4BiS', @RACEMASK_H, 6, 51282, 3719, 3545, 3563, 0, 0, 0),
('Mage', 'Arcane80PvEP4BiS', @RACEMASK_H, 7, 50699, 3606, 3545, 3520, 0, 0, 0),
('Mage', 'Arcane80PvEP4BiS', @RACEMASK_H, 8, 54582, 2332, 3520, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP4BiS', @RACEMASK_H, 9, 50663, 3604, 3545, 3520, 0, 0, 0),
('Mage', 'Arcane80PvEP4BiS', @RACEMASK_H, 10, 50398, 0, 3563, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP4BiS', @RACEMASK_H, 11, 50664, 0, 3545, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP4BiS', @RACEMASK_H, 12, 50348, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP4BiS', @RACEMASK_H, 13, 54588, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP4BiS', @RACEMASK_H, 14, 54583, 3722, 3520, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP4BiS', @RACEMASK_H, 15, 50732, 3834, 3520, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP4BiS', @RACEMASK_H, 16, 50719, 0, 0, 0, 0, 0, 0),
('Mage', 'Arcane80PvEP4BiS', @RACEMASK_H, 17, 50684, 0, 3563, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Mage Fire 80PvEP4BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Mage', 'Fire80PvEP4BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_fire_flamebolt:30|t|r Use Fire PvE P4 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Fire80PvE', 'Fire80PvE', 'WotLK Phase 4', 304),
('Mage', 'Fire80PvEP4BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_fire_flamebolt:30|t|r Use Fire PvE P4 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Fire80PvE', 'Fire80PvE', 'WotLK Phase 4', 304);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Mage', 'Fire80PvEP4BiS', @RACEMASK_HUMAN, 0, 51281, 3820, 3621, 3545, 0, 0, 0),
('Mage', 'Fire80PvEP4BiS', @RACEMASK_HUMAN, 1, 50724, 0, 3545, 0, 0, 0, 0),
('Mage', 'Fire80PvEP4BiS', @RACEMASK_HUMAN, 2, 51284, 3810, 3560, 0, 0, 0, 0),
('Mage', 'Fire80PvEP4BiS', @RACEMASK_HUMAN, 4, 50629, 3832, 3520, 3545, 3560, 0, 0),
('Mage', 'Fire80PvEP4BiS', @RACEMASK_HUMAN, 5, 50613, 0, 3545, 3520, 0, 0, 3520),
('Mage', 'Fire80PvEP4BiS', @RACEMASK_HUMAN, 6, 51282, 3719, 3545, 3559, 0, 0, 0),
('Mage', 'Fire80PvEP4BiS', @RACEMASK_HUMAN, 7, 50699, 3606, 3545, 3520, 0, 0, 0),
('Mage', 'Fire80PvEP4BiS', @RACEMASK_HUMAN, 8, 54582, 2332, 3520, 0, 0, 0, 0),
('Mage', 'Fire80PvEP4BiS', @RACEMASK_HUMAN, 9, 51280, 3604, 3545, 0, 0, 0, 0),
('Mage', 'Fire80PvEP4BiS', @RACEMASK_HUMAN, 10, 50398, 0, 3559, 0, 0, 0, 0),
('Mage', 'Fire80PvEP4BiS', @RACEMASK_HUMAN, 11, 50664, 0, 3545, 0, 0, 0, 0),
('Mage', 'Fire80PvEP4BiS', @RACEMASK_HUMAN, 12, 54588, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire80PvEP4BiS', @RACEMASK_HUMAN, 13, 50365, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire80PvEP4BiS', @RACEMASK_HUMAN, 14, 54583, 3722, 3520, 0, 0, 0, 0),
('Mage', 'Fire80PvEP4BiS', @RACEMASK_HUMAN, 15, 50732, 3834, 3520, 0, 0, 0, 0),
('Mage', 'Fire80PvEP4BiS', @RACEMASK_HUMAN, 16, 50719, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire80PvEP4BiS', @RACEMASK_HUMAN, 17, 50684, 0, 3560, 0, 0, 0, 0),
('Mage', 'Fire80PvEP4BiS', @RACEMASK_A, 0, 51281, 3820, 3621, 3545, 0, 0, 0),
('Mage', 'Fire80PvEP4BiS', @RACEMASK_A, 1, 50724, 0, 3545, 0, 0, 0, 0),
('Mage', 'Fire80PvEP4BiS', @RACEMASK_A, 2, 51284, 3810, 3560, 0, 0, 0, 0),
('Mage', 'Fire80PvEP4BiS', @RACEMASK_A, 4, 50629, 3832, 3520, 3545, 3560, 0, 0),
('Mage', 'Fire80PvEP4BiS', @RACEMASK_A, 5, 50613, 0, 3545, 3520, 0, 0, 3520),
('Mage', 'Fire80PvEP4BiS', @RACEMASK_A, 6, 51282, 3719, 3545, 3559, 0, 0, 0),
('Mage', 'Fire80PvEP4BiS', @RACEMASK_A, 7, 50699, 3606, 3545, 3520, 0, 0, 0),
('Mage', 'Fire80PvEP4BiS', @RACEMASK_A, 8, 54582, 2332, 3520, 0, 0, 0, 0),
('Mage', 'Fire80PvEP4BiS', @RACEMASK_A, 9, 51280, 3604, 3545, 0, 0, 0, 0),
('Mage', 'Fire80PvEP4BiS', @RACEMASK_A, 10, 50398, 0, 3559, 0, 0, 0, 0),
('Mage', 'Fire80PvEP4BiS', @RACEMASK_A, 11, 50664, 0, 3545, 0, 0, 0, 0),
('Mage', 'Fire80PvEP4BiS', @RACEMASK_A, 12, 54588, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire80PvEP4BiS', @RACEMASK_A, 13, 50365, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire80PvEP4BiS', @RACEMASK_A, 14, 54583, 3722, 3520, 0, 0, 0, 0),
('Mage', 'Fire80PvEP4BiS', @RACEMASK_A, 15, 50732, 3834, 3520, 0, 0, 0, 0),
('Mage', 'Fire80PvEP4BiS', @RACEMASK_A, 16, 50719, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire80PvEP4BiS', @RACEMASK_A, 17, 50684, 0, 3560, 0, 0, 0, 0),
('Mage', 'Fire80PvEP4BiS', @RACEMASK_H, 0, 51281, 3820, 3621, 3545, 0, 0, 0),
('Mage', 'Fire80PvEP4BiS', @RACEMASK_H, 1, 50724, 0, 3545, 0, 0, 0, 0),
('Mage', 'Fire80PvEP4BiS', @RACEMASK_H, 2, 51284, 3810, 3560, 0, 0, 0, 0),
('Mage', 'Fire80PvEP4BiS', @RACEMASK_H, 4, 50629, 3832, 3520, 3545, 3560, 0, 0),
('Mage', 'Fire80PvEP4BiS', @RACEMASK_H, 5, 50613, 0, 3545, 3520, 0, 0, 3520),
('Mage', 'Fire80PvEP4BiS', @RACEMASK_H, 6, 51282, 3719, 3545, 3559, 0, 0, 0),
('Mage', 'Fire80PvEP4BiS', @RACEMASK_H, 7, 50699, 3606, 3545, 3520, 0, 0, 0),
('Mage', 'Fire80PvEP4BiS', @RACEMASK_H, 8, 54582, 2332, 3520, 0, 0, 0, 0),
('Mage', 'Fire80PvEP4BiS', @RACEMASK_H, 9, 51280, 3604, 3545, 0, 0, 0, 0),
('Mage', 'Fire80PvEP4BiS', @RACEMASK_H, 10, 50398, 0, 3559, 0, 0, 0, 0),
('Mage', 'Fire80PvEP4BiS', @RACEMASK_H, 11, 50664, 0, 3545, 0, 0, 0, 0),
('Mage', 'Fire80PvEP4BiS', @RACEMASK_H, 12, 54588, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire80PvEP4BiS', @RACEMASK_H, 13, 50365, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire80PvEP4BiS', @RACEMASK_H, 14, 54583, 3722, 3520, 0, 0, 0, 0),
('Mage', 'Fire80PvEP4BiS', @RACEMASK_H, 15, 50732, 3834, 3520, 0, 0, 0, 0),
('Mage', 'Fire80PvEP4BiS', @RACEMASK_H, 16, 50719, 0, 0, 0, 0, 0, 0),
('Mage', 'Fire80PvEP4BiS', @RACEMASK_H, 17, 50684, 0, 3560, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Mage Frost 80PvEP4BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Mage', 'Frost80PvEP4BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_frost_frostbolt02:30|t|r Use Frost PvE P4 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Frost80PvE', 'Frost80PvE', 'WotLK Phase 4', 304),
('Mage', 'Frost80PvEP4BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_frost_frostbolt02:30|t|r Use Frost PvE P4 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Frost80PvE', 'Frost80PvE', 'WotLK Phase 4', 304);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Mage', 'Frost80PvEP4BiS', @RACEMASK_HUMAN, 0, 51281, 3820, 3621, 3545, 0, 0, 0),
('Mage', 'Frost80PvEP4BiS', @RACEMASK_HUMAN, 1, 50658, 0, 3563, 0, 0, 0, 0),
('Mage', 'Frost80PvEP4BiS', @RACEMASK_HUMAN, 2, 51284, 3810, 3563, 0, 0, 0, 0),
('Mage', 'Frost80PvEP4BiS', @RACEMASK_HUMAN, 4, 51283, 3832, 3520, 3545, 0, 0, 0),
('Mage', 'Frost80PvEP4BiS', @RACEMASK_HUMAN, 5, 50613, 0, 3545, 3520, 0, 0, 3520),
('Mage', 'Frost80PvEP4BiS', @RACEMASK_HUMAN, 6, 51282, 3719, 3545, 3563, 0, 0, 0),
('Mage', 'Frost80PvEP4BiS', @RACEMASK_HUMAN, 7, 50699, 3606, 3545, 3520, 0, 0, 0),
('Mage', 'Frost80PvEP4BiS', @RACEMASK_HUMAN, 8, 54582, 2332, 3520, 0, 0, 0, 0),
('Mage', 'Frost80PvEP4BiS', @RACEMASK_HUMAN, 9, 50663, 3604, 3545, 3520, 0, 0, 0),
('Mage', 'Frost80PvEP4BiS', @RACEMASK_HUMAN, 10, 50398, 0, 3563, 0, 0, 0, 0),
('Mage', 'Frost80PvEP4BiS', @RACEMASK_HUMAN, 11, 50664, 0, 3545, 0, 0, 0, 0),
('Mage', 'Frost80PvEP4BiS', @RACEMASK_HUMAN, 12, 50348, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost80PvEP4BiS', @RACEMASK_HUMAN, 13, 54588, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost80PvEP4BiS', @RACEMASK_HUMAN, 14, 54583, 3722, 3520, 0, 0, 0, 0),
('Mage', 'Frost80PvEP4BiS', @RACEMASK_HUMAN, 15, 50732, 3834, 3520, 0, 0, 0, 0),
('Mage', 'Frost80PvEP4BiS', @RACEMASK_HUMAN, 16, 50719, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost80PvEP4BiS', @RACEMASK_HUMAN, 17, 50684, 0, 3563, 0, 0, 0, 0),
('Mage', 'Frost80PvEP4BiS', @RACEMASK_A, 0, 51281, 3820, 3621, 3545, 0, 0, 0),
('Mage', 'Frost80PvEP4BiS', @RACEMASK_A, 1, 50658, 0, 3563, 0, 0, 0, 0),
('Mage', 'Frost80PvEP4BiS', @RACEMASK_A, 2, 51284, 3810, 3563, 0, 0, 0, 0),
('Mage', 'Frost80PvEP4BiS', @RACEMASK_A, 4, 51283, 3832, 3520, 3545, 0, 0, 0),
('Mage', 'Frost80PvEP4BiS', @RACEMASK_A, 5, 50613, 0, 3545, 3520, 0, 0, 3520),
('Mage', 'Frost80PvEP4BiS', @RACEMASK_A, 6, 51282, 3719, 3545, 3563, 0, 0, 0),
('Mage', 'Frost80PvEP4BiS', @RACEMASK_A, 7, 50699, 3606, 3545, 3520, 0, 0, 0),
('Mage', 'Frost80PvEP4BiS', @RACEMASK_A, 8, 54582, 2332, 3520, 0, 0, 0, 0),
('Mage', 'Frost80PvEP4BiS', @RACEMASK_A, 9, 50663, 3604, 3545, 3520, 0, 0, 0),
('Mage', 'Frost80PvEP4BiS', @RACEMASK_A, 10, 50398, 0, 3563, 0, 0, 0, 0),
('Mage', 'Frost80PvEP4BiS', @RACEMASK_A, 11, 50664, 0, 3545, 0, 0, 0, 0),
('Mage', 'Frost80PvEP4BiS', @RACEMASK_A, 12, 50348, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost80PvEP4BiS', @RACEMASK_A, 13, 54588, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost80PvEP4BiS', @RACEMASK_A, 14, 54583, 3722, 3520, 0, 0, 0, 0),
('Mage', 'Frost80PvEP4BiS', @RACEMASK_A, 15, 50732, 3834, 3520, 0, 0, 0, 0),
('Mage', 'Frost80PvEP4BiS', @RACEMASK_A, 16, 50719, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost80PvEP4BiS', @RACEMASK_A, 17, 50684, 0, 3563, 0, 0, 0, 0),
('Mage', 'Frost80PvEP4BiS', @RACEMASK_H, 0, 51281, 3820, 3621, 3545, 0, 0, 0),
('Mage', 'Frost80PvEP4BiS', @RACEMASK_H, 1, 50658, 0, 3563, 0, 0, 0, 0),
('Mage', 'Frost80PvEP4BiS', @RACEMASK_H, 2, 51284, 3810, 3563, 0, 0, 0, 0),
('Mage', 'Frost80PvEP4BiS', @RACEMASK_H, 4, 51283, 3832, 3520, 3545, 0, 0, 0),
('Mage', 'Frost80PvEP4BiS', @RACEMASK_H, 5, 50613, 0, 3545, 3520, 0, 0, 3520),
('Mage', 'Frost80PvEP4BiS', @RACEMASK_H, 6, 51282, 3719, 3545, 3563, 0, 0, 0),
('Mage', 'Frost80PvEP4BiS', @RACEMASK_H, 7, 50699, 3606, 3545, 3520, 0, 0, 0),
('Mage', 'Frost80PvEP4BiS', @RACEMASK_H, 8, 54582, 2332, 3520, 0, 0, 0, 0),
('Mage', 'Frost80PvEP4BiS', @RACEMASK_H, 9, 50663, 3604, 3545, 3520, 0, 0, 0),
('Mage', 'Frost80PvEP4BiS', @RACEMASK_H, 10, 50398, 0, 3563, 0, 0, 0, 0),
('Mage', 'Frost80PvEP4BiS', @RACEMASK_H, 11, 50664, 0, 3545, 0, 0, 0, 0),
('Mage', 'Frost80PvEP4BiS', @RACEMASK_H, 12, 50348, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost80PvEP4BiS', @RACEMASK_H, 13, 54588, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost80PvEP4BiS', @RACEMASK_H, 14, 54583, 3722, 3520, 0, 0, 0, 0),
('Mage', 'Frost80PvEP4BiS', @RACEMASK_H, 15, 50732, 3834, 3520, 0, 0, 0, 0),
('Mage', 'Frost80PvEP4BiS', @RACEMASK_H, 16, 50719, 0, 0, 0, 0, 0, 0),
('Mage', 'Frost80PvEP4BiS', @RACEMASK_H, 17, 50684, 0, 3563, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Paladin Holy 80PvEP4BiSHeal (healer) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Paladin', 'Holy80PvEP4BiSHeal', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Use Holy PvE P4 BiS Heal', 7, @MINLEVEL, @MAXLEVEL, 'Holy80PvE', 'Holy80PvE', 'WotLK Phase 4', 304),
('Paladin', 'Holy80PvEP4BiSHeal', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Use Holy PvE P4 BiS Heal (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Holy80PvE', 'Holy80PvE', 'WotLK Phase 4', 304);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Paladin', 'Holy80PvEP4BiSHeal', @RACEMASK_HUMAN, 0, 51272, 3820, 3627, 3879, 0, 0, 0),
('Paladin', 'Holy80PvEP4BiSHeal', @RACEMASK_HUMAN, 1, 51871, 0, 3526, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP4BiSHeal', @RACEMASK_HUMAN, 2, 51273, 3810, 3526, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP4BiSHeal', @RACEMASK_HUMAN, 4, 50680, 3832, 3737, 3737, 3737, 0, 0),
('Paladin', 'Holy80PvEP4BiSHeal', @RACEMASK_HUMAN, 5, 54587, 0, 3526, 3526, 0, 0, 3526),
('Paladin', 'Holy80PvEP4BiSHeal', @RACEMASK_HUMAN, 6, 49891, 3721, 3526, 3526, 3526, 0, 0),
('Paladin', 'Holy80PvEP4BiSHeal', @RACEMASK_HUMAN, 7, 54586, 3606, 3526, 3526, 0, 0, 0),
('Paladin', 'Holy80PvEP4BiSHeal', @RACEMASK_HUMAN, 8, 54584, 1119, 3526, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP4BiSHeal', @RACEMASK_HUMAN, 9, 50650, 3604, 3526, 3526, 0, 0, 0),
('Paladin', 'Holy80PvEP4BiSHeal', @RACEMASK_HUMAN, 10, 50610, 0, 3526, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP4BiSHeal', @RACEMASK_HUMAN, 11, 54585, 0, 3526, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP4BiSHeal', @RACEMASK_HUMAN, 12, 46051, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP4BiSHeal', @RACEMASK_HUMAN, 13, 37111, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP4BiSHeal', @RACEMASK_HUMAN, 14, 53489, 3831, 3526, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP4BiSHeal', @RACEMASK_HUMAN, 15, 46017, 2666, 0, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP4BiSHeal', @RACEMASK_HUMAN, 16, 50616, 1128, 3526, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP4BiSHeal', @RACEMASK_HUMAN, 17, 40705, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP4BiSHeal', @RACEMASK_A, 0, 51272, 3820, 3627, 3879, 0, 0, 0),
('Paladin', 'Holy80PvEP4BiSHeal', @RACEMASK_A, 1, 51871, 0, 3526, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP4BiSHeal', @RACEMASK_A, 2, 51273, 3810, 3526, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP4BiSHeal', @RACEMASK_A, 4, 50680, 3832, 3737, 3737, 3737, 0, 0),
('Paladin', 'Holy80PvEP4BiSHeal', @RACEMASK_A, 5, 54587, 0, 3526, 3526, 0, 0, 3526),
('Paladin', 'Holy80PvEP4BiSHeal', @RACEMASK_A, 6, 49891, 3721, 3526, 3526, 3526, 0, 0),
('Paladin', 'Holy80PvEP4BiSHeal', @RACEMASK_A, 7, 54586, 3606, 3526, 3526, 0, 0, 0),
('Paladin', 'Holy80PvEP4BiSHeal', @RACEMASK_A, 8, 54584, 1119, 3526, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP4BiSHeal', @RACEMASK_A, 9, 50650, 3604, 3526, 3526, 0, 0, 0),
('Paladin', 'Holy80PvEP4BiSHeal', @RACEMASK_A, 10, 50610, 0, 3526, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP4BiSHeal', @RACEMASK_A, 11, 54585, 0, 3526, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP4BiSHeal', @RACEMASK_A, 12, 46051, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP4BiSHeal', @RACEMASK_A, 13, 37111, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP4BiSHeal', @RACEMASK_A, 14, 53489, 3831, 3526, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP4BiSHeal', @RACEMASK_A, 15, 46017, 2666, 0, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP4BiSHeal', @RACEMASK_A, 16, 50616, 1128, 3526, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP4BiSHeal', @RACEMASK_A, 17, 40705, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP4BiSHeal', @RACEMASK_H, 0, 51272, 3820, 3627, 3879, 0, 0, 0),
('Paladin', 'Holy80PvEP4BiSHeal', @RACEMASK_H, 1, 51871, 0, 3526, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP4BiSHeal', @RACEMASK_H, 2, 51273, 3810, 3526, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP4BiSHeal', @RACEMASK_H, 4, 50680, 3832, 3737, 3737, 3737, 0, 0),
('Paladin', 'Holy80PvEP4BiSHeal', @RACEMASK_H, 5, 54587, 0, 3526, 3526, 0, 0, 3526),
('Paladin', 'Holy80PvEP4BiSHeal', @RACEMASK_H, 6, 49891, 3721, 3526, 3526, 3526, 0, 0),
('Paladin', 'Holy80PvEP4BiSHeal', @RACEMASK_H, 7, 54586, 3606, 3526, 3526, 0, 0, 0),
('Paladin', 'Holy80PvEP4BiSHeal', @RACEMASK_H, 8, 54584, 1119, 3526, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP4BiSHeal', @RACEMASK_H, 9, 50650, 3604, 3526, 3526, 0, 0, 0),
('Paladin', 'Holy80PvEP4BiSHeal', @RACEMASK_H, 10, 50610, 0, 3526, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP4BiSHeal', @RACEMASK_H, 11, 54585, 0, 3526, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP4BiSHeal', @RACEMASK_H, 12, 46051, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP4BiSHeal', @RACEMASK_H, 13, 37111, 0, 0, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP4BiSHeal', @RACEMASK_H, 14, 53489, 3831, 3526, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP4BiSHeal', @RACEMASK_H, 15, 46017, 2666, 0, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP4BiSHeal', @RACEMASK_H, 16, 50616, 1128, 3526, 0, 0, 0, 0),
('Paladin', 'Holy80PvEP4BiSHeal', @RACEMASK_H, 17, 40705, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Paladin Protection 80PvEP4BiSTank (tank) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Paladin', 'Protection80PvEP4BiSTank', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_devotionaura:30|t|r Use Protection PvE P4 BiS Tank', 7, @MINLEVEL, @MAXLEVEL, 'Protection80PvE', 'Protection80PvE', 'WotLK Phase 4', 304),
('Paladin', 'Protection80PvEP4BiSTank', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_devotionaura:30|t|r Use Protection PvE P4 BiS Tank (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Protection80PvE', 'Protection80PvE', 'WotLK Phase 4', 304);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Paladin', 'Protection80PvEP4BiSTank', @RACEMASK_HUMAN, 0, 50640, 3878, 3637, 3542, 0, 0, 0),
('Paladin', 'Protection80PvEP4BiSTank', @RACEMASK_HUMAN, 1, 50682, 0, 3532, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP4BiSTank', @RACEMASK_HUMAN, 2, 50660, 3852, 3532, 3532, 0, 0, 0),
('Paladin', 'Protection80PvEP4BiSTank', @RACEMASK_HUMAN, 4, 51265, 3297, 3542, 3532, 0, 0, 0),
('Paladin', 'Protection80PvEP4BiSTank', @RACEMASK_HUMAN, 5, 50991, 0, 3542, 3532, 0, 0, 3532),
('Paladin', 'Protection80PvEP4BiSTank', @RACEMASK_HUMAN, 6, 49904, 3822, 3532, 3532, 3532, 0, 0),
('Paladin', 'Protection80PvEP4BiSTank', @RACEMASK_HUMAN, 7, 54579, 3606, 3532, 3532, 0, 0, 0),
('Paladin', 'Protection80PvEP4BiSTank', @RACEMASK_HUMAN, 8, 51901, 3850, 3532, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP4BiSTank', @RACEMASK_HUMAN, 9, 51267, 3860, 3532, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP4BiSTank', @RACEMASK_HUMAN, 10, 50622, 0, 3532, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP4BiSTank', @RACEMASK_HUMAN, 11, 50642, 0, 3532, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP4BiSTank', @RACEMASK_HUMAN, 12, 50364, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP4BiSTank', @RACEMASK_HUMAN, 13, 47451, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP4BiSTank', @RACEMASK_HUMAN, 14, 50718, 3605, 3532, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP4BiSTank', @RACEMASK_HUMAN, 15, 50737, 3788, 3532, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP4BiSTank', @RACEMASK_HUMAN, 16, 50729, 1071, 3532, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP4BiSTank', @RACEMASK_HUMAN, 17, 47661, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP4BiSTank', @RACEMASK_A, 0, 50640, 3878, 3637, 3542, 0, 0, 0),
('Paladin', 'Protection80PvEP4BiSTank', @RACEMASK_A, 1, 50682, 0, 3532, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP4BiSTank', @RACEMASK_A, 2, 50660, 3852, 3532, 3532, 0, 0, 0),
('Paladin', 'Protection80PvEP4BiSTank', @RACEMASK_A, 4, 51265, 3297, 3542, 3532, 0, 0, 0),
('Paladin', 'Protection80PvEP4BiSTank', @RACEMASK_A, 5, 50991, 0, 3542, 3532, 0, 0, 3532),
('Paladin', 'Protection80PvEP4BiSTank', @RACEMASK_A, 6, 49904, 3822, 3532, 3532, 3532, 0, 0),
('Paladin', 'Protection80PvEP4BiSTank', @RACEMASK_A, 7, 54579, 3606, 3532, 3532, 0, 0, 0),
('Paladin', 'Protection80PvEP4BiSTank', @RACEMASK_A, 8, 51901, 3850, 3532, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP4BiSTank', @RACEMASK_A, 9, 51267, 3860, 3532, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP4BiSTank', @RACEMASK_A, 10, 50622, 0, 3532, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP4BiSTank', @RACEMASK_A, 11, 50642, 0, 3532, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP4BiSTank', @RACEMASK_A, 12, 50364, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP4BiSTank', @RACEMASK_A, 13, 47451, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP4BiSTank', @RACEMASK_A, 14, 50718, 3605, 3532, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP4BiSTank', @RACEMASK_A, 15, 50737, 3788, 3532, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP4BiSTank', @RACEMASK_A, 16, 50729, 1071, 3532, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP4BiSTank', @RACEMASK_A, 17, 47661, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP4BiSTank', @RACEMASK_H, 0, 50640, 3878, 3637, 3542, 0, 0, 0),
('Paladin', 'Protection80PvEP4BiSTank', @RACEMASK_H, 1, 50682, 0, 3532, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP4BiSTank', @RACEMASK_H, 2, 50660, 3852, 3532, 3532, 0, 0, 0),
('Paladin', 'Protection80PvEP4BiSTank', @RACEMASK_H, 4, 51265, 3297, 3542, 3532, 0, 0, 0),
('Paladin', 'Protection80PvEP4BiSTank', @RACEMASK_H, 5, 50991, 0, 3542, 3532, 0, 0, 3532),
('Paladin', 'Protection80PvEP4BiSTank', @RACEMASK_H, 6, 49904, 3822, 3532, 3532, 3532, 0, 0),
('Paladin', 'Protection80PvEP4BiSTank', @RACEMASK_H, 7, 54579, 3606, 3532, 3532, 0, 0, 0),
('Paladin', 'Protection80PvEP4BiSTank', @RACEMASK_H, 8, 51901, 3850, 3532, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP4BiSTank', @RACEMASK_H, 9, 51267, 3860, 3532, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP4BiSTank', @RACEMASK_H, 10, 50622, 0, 3532, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP4BiSTank', @RACEMASK_H, 11, 50642, 0, 3532, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP4BiSTank', @RACEMASK_H, 12, 50364, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP4BiSTank', @RACEMASK_H, 13, 47451, 0, 0, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP4BiSTank', @RACEMASK_H, 14, 50718, 3605, 3532, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP4BiSTank', @RACEMASK_H, 15, 50737, 3788, 3532, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP4BiSTank', @RACEMASK_H, 16, 50729, 1071, 3532, 0, 0, 0, 0),
('Paladin', 'Protection80PvEP4BiSTank', @RACEMASK_H, 17, 47661, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Paladin Retribution 80PvEP4BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Paladin', 'Retribution80PvEP4BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_auraoflight:30|t|r Use Retribution PvE P4 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Retribution80PvE', 'Retribution80PvE', 'WotLK Phase 4', 304),
('Paladin', 'Retribution80PvEP4BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_auraoflight:30|t|r Use Retribution PvE P4 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Retribution80PvE', 'Retribution80PvE', 'WotLK Phase 4', 304);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Paladin', 'Retribution80PvEP4BiS', @RACEMASK_HUMAN, 0, 51277, 3817, 3628, 3518, 0, 0, 0),
('Paladin', 'Retribution80PvEP4BiS', @RACEMASK_HUMAN, 1, 54581, 0, 3549, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP4BiS', @RACEMASK_HUMAN, 2, 51279, 3808, 3518, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP4BiS', @RACEMASK_HUMAN, 4, 51275, 3832, 3518, 3879, 0, 0, 0),
('Paladin', 'Retribution80PvEP4BiS', @RACEMASK_HUMAN, 5, 50707, 0, 3518, 3518, 0, 0, 3518),
('Paladin', 'Retribution80PvEP4BiS', @RACEMASK_HUMAN, 6, 51278, 3823, 3518, 3518, 0, 0, 0),
('Paladin', 'Retribution80PvEP4BiS', @RACEMASK_HUMAN, 7, 54578, 3606, 3518, 3518, 0, 0, 0),
('Paladin', 'Retribution80PvEP4BiS', @RACEMASK_HUMAN, 8, 54580, 3845, 3518, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP4BiS', @RACEMASK_HUMAN, 9, 50690, 3604, 3549, 3518, 0, 0, 0),
('Paladin', 'Retribution80PvEP4BiS', @RACEMASK_HUMAN, 10, 50402, 0, 3518, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP4BiS', @RACEMASK_HUMAN, 11, 54576, 0, 3518, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP4BiS', @RACEMASK_HUMAN, 12, 54590, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP4BiS', @RACEMASK_HUMAN, 13, 50706, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP4BiS', @RACEMASK_HUMAN, 14, 50653, 3831, 3518, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP4BiS', @RACEMASK_HUMAN, 15, 49623, 3789, 3732, 3732, 3746, 0, 0),
('Paladin', 'Retribution80PvEP4BiS', @RACEMASK_HUMAN, 17, 50455, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP4BiS', @RACEMASK_A, 0, 51277, 3817, 3628, 3518, 0, 0, 0),
('Paladin', 'Retribution80PvEP4BiS', @RACEMASK_A, 1, 54581, 0, 3549, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP4BiS', @RACEMASK_A, 2, 51279, 3808, 3518, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP4BiS', @RACEMASK_A, 4, 51275, 3832, 3518, 3879, 0, 0, 0),
('Paladin', 'Retribution80PvEP4BiS', @RACEMASK_A, 5, 50707, 0, 3518, 3518, 0, 0, 3518),
('Paladin', 'Retribution80PvEP4BiS', @RACEMASK_A, 6, 51278, 3823, 3518, 3518, 0, 0, 0),
('Paladin', 'Retribution80PvEP4BiS', @RACEMASK_A, 7, 54578, 3606, 3518, 3518, 0, 0, 0),
('Paladin', 'Retribution80PvEP4BiS', @RACEMASK_A, 8, 54580, 3845, 3518, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP4BiS', @RACEMASK_A, 9, 50690, 3604, 3549, 3518, 0, 0, 0),
('Paladin', 'Retribution80PvEP4BiS', @RACEMASK_A, 10, 50402, 0, 3518, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP4BiS', @RACEMASK_A, 11, 54576, 0, 3518, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP4BiS', @RACEMASK_A, 12, 54590, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP4BiS', @RACEMASK_A, 13, 50706, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP4BiS', @RACEMASK_A, 14, 50653, 3831, 3518, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP4BiS', @RACEMASK_A, 15, 49623, 3789, 3732, 3732, 3746, 0, 0),
('Paladin', 'Retribution80PvEP4BiS', @RACEMASK_A, 17, 50455, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP4BiS', @RACEMASK_H, 0, 51277, 3817, 3628, 3518, 0, 0, 0),
('Paladin', 'Retribution80PvEP4BiS', @RACEMASK_H, 1, 54581, 0, 3549, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP4BiS', @RACEMASK_H, 2, 51279, 3808, 3518, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP4BiS', @RACEMASK_H, 4, 51275, 3832, 3518, 3879, 0, 0, 0),
('Paladin', 'Retribution80PvEP4BiS', @RACEMASK_H, 5, 50707, 0, 3518, 3518, 0, 0, 3518),
('Paladin', 'Retribution80PvEP4BiS', @RACEMASK_H, 6, 51278, 3823, 3518, 3518, 0, 0, 0),
('Paladin', 'Retribution80PvEP4BiS', @RACEMASK_H, 7, 54578, 3606, 3518, 3518, 0, 0, 0),
('Paladin', 'Retribution80PvEP4BiS', @RACEMASK_H, 8, 54580, 3845, 3518, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP4BiS', @RACEMASK_H, 9, 50690, 3604, 3549, 3518, 0, 0, 0),
('Paladin', 'Retribution80PvEP4BiS', @RACEMASK_H, 10, 50402, 0, 3518, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP4BiS', @RACEMASK_H, 11, 54576, 0, 3518, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP4BiS', @RACEMASK_H, 12, 54590, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP4BiS', @RACEMASK_H, 13, 50706, 0, 0, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP4BiS', @RACEMASK_H, 14, 50653, 3831, 3518, 0, 0, 0, 0),
('Paladin', 'Retribution80PvEP4BiS', @RACEMASK_H, 15, 49623, 3789, 3732, 3732, 3746, 0, 0),
('Paladin', 'Retribution80PvEP4BiS', @RACEMASK_H, 17, 50455, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Priest Discipline 80PvEP4BiSHeal (healer) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Priest', 'Discipline80PvEP4BiSHeal', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_wordfortitude:30|t|r Use Discipline PvE P4 BiS Heal', 7, @MINLEVEL, @MAXLEVEL, 'Discipline80PvE', 'Discipline80PvE', 'WotLK Phase 4', 304),
('Priest', 'Discipline80PvEP4BiSHeal', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_wordfortitude:30|t|r Use Discipline PvE P4 BiS Heal (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Discipline80PvE', 'Discipline80PvE', 'WotLK Phase 4', 304);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Priest', 'Discipline80PvEP4BiSHeal', @RACEMASK_HUMAN, 0, 51178, 3820, 3627, 3546, 0, 0, 0),
('Priest', 'Discipline80PvEP4BiSHeal', @RACEMASK_HUMAN, 1, 50700, 0, 3520, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP4BiSHeal', @RACEMASK_HUMAN, 2, 51175, 3810, 3520, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP4BiSHeal', @RACEMASK_HUMAN, 4, 51176, 3832, 3520, 3558, 0, 0, 0),
('Priest', 'Discipline80PvEP4BiSHeal', @RACEMASK_HUMAN, 5, 50702, 0, 3520, 3520, 0, 0, 3520),
('Priest', 'Discipline80PvEP4BiSHeal', @RACEMASK_HUMAN, 6, 51823, 3721, 3520, 3520, 3520, 0, 0),
('Priest', 'Discipline80PvEP4BiSHeal', @RACEMASK_HUMAN, 7, 51850, 3606, 3520, 3520, 0, 0, 0),
('Priest', 'Discipline80PvEP4BiSHeal', @RACEMASK_HUMAN, 8, 51918, 3758, 3520, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP4BiSHeal', @RACEMASK_HUMAN, 9, 51179, 3246, 3520, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP4BiSHeal', @RACEMASK_HUMAN, 10, 50720, 0, 3520, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP4BiSHeal', @RACEMASK_HUMAN, 11, 54585, 0, 3520, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP4BiSHeal', @RACEMASK_HUMAN, 12, 50366, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP4BiSHeal', @RACEMASK_HUMAN, 13, 54589, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP4BiSHeal', @RACEMASK_HUMAN, 14, 47551, 3859, 3520, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP4BiSHeal', @RACEMASK_HUMAN, 15, 51944, 3834, 3520, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP4BiSHeal', @RACEMASK_HUMAN, 16, 51922, 0, 3520, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP4BiSHeal', @RACEMASK_HUMAN, 17, 50631, 0, 3520, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP4BiSHeal', @RACEMASK_A, 0, 51178, 3820, 3627, 3546, 0, 0, 0),
('Priest', 'Discipline80PvEP4BiSHeal', @RACEMASK_A, 1, 50700, 0, 3520, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP4BiSHeal', @RACEMASK_A, 2, 51175, 3810, 3520, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP4BiSHeal', @RACEMASK_A, 4, 51176, 3832, 3520, 3558, 0, 0, 0),
('Priest', 'Discipline80PvEP4BiSHeal', @RACEMASK_A, 5, 50702, 0, 3520, 3520, 0, 0, 3520),
('Priest', 'Discipline80PvEP4BiSHeal', @RACEMASK_A, 6, 51823, 3721, 3520, 3520, 3520, 0, 0),
('Priest', 'Discipline80PvEP4BiSHeal', @RACEMASK_A, 7, 51850, 3606, 3520, 3520, 0, 0, 0),
('Priest', 'Discipline80PvEP4BiSHeal', @RACEMASK_A, 8, 51918, 3758, 3520, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP4BiSHeal', @RACEMASK_A, 9, 51179, 3246, 3520, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP4BiSHeal', @RACEMASK_A, 10, 50720, 0, 3520, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP4BiSHeal', @RACEMASK_A, 11, 54585, 0, 3520, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP4BiSHeal', @RACEMASK_A, 12, 50366, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP4BiSHeal', @RACEMASK_A, 13, 54589, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP4BiSHeal', @RACEMASK_A, 14, 47551, 3859, 3520, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP4BiSHeal', @RACEMASK_A, 15, 51944, 3834, 3520, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP4BiSHeal', @RACEMASK_A, 16, 51922, 0, 3520, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP4BiSHeal', @RACEMASK_A, 17, 50631, 0, 3520, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP4BiSHeal', @RACEMASK_H, 0, 51178, 3820, 3627, 3546, 0, 0, 0),
('Priest', 'Discipline80PvEP4BiSHeal', @RACEMASK_H, 1, 50700, 0, 3520, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP4BiSHeal', @RACEMASK_H, 2, 51175, 3810, 3520, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP4BiSHeal', @RACEMASK_H, 4, 51176, 3832, 3520, 3558, 0, 0, 0),
('Priest', 'Discipline80PvEP4BiSHeal', @RACEMASK_H, 5, 50702, 0, 3520, 3520, 0, 0, 3520),
('Priest', 'Discipline80PvEP4BiSHeal', @RACEMASK_H, 6, 51823, 3721, 3520, 3520, 3520, 0, 0),
('Priest', 'Discipline80PvEP4BiSHeal', @RACEMASK_H, 7, 51850, 3606, 3520, 3520, 0, 0, 0),
('Priest', 'Discipline80PvEP4BiSHeal', @RACEMASK_H, 8, 51918, 3758, 3520, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP4BiSHeal', @RACEMASK_H, 9, 51179, 3246, 3520, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP4BiSHeal', @RACEMASK_H, 10, 50720, 0, 3520, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP4BiSHeal', @RACEMASK_H, 11, 54585, 0, 3520, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP4BiSHeal', @RACEMASK_H, 12, 50366, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP4BiSHeal', @RACEMASK_H, 13, 54589, 0, 0, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP4BiSHeal', @RACEMASK_H, 14, 47551, 3859, 3520, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP4BiSHeal', @RACEMASK_H, 15, 51944, 3834, 3520, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP4BiSHeal', @RACEMASK_H, 16, 51922, 0, 3520, 0, 0, 0, 0),
('Priest', 'Discipline80PvEP4BiSHeal', @RACEMASK_H, 17, 50631, 0, 3520, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Priest Holy 80PvEP4BiSHeal (healer) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Priest', 'Holy80PvEP4BiSHeal', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Use Holy PvE P4 BiS Heal', 7, @MINLEVEL, @MAXLEVEL, 'Holy80PvE', 'Holy80PvE', 'WotLK Phase 4', 304),
('Priest', 'Holy80PvEP4BiSHeal', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Use Holy PvE P4 BiS Heal (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Holy80PvE', 'Holy80PvE', 'WotLK Phase 4', 304);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Priest', 'Holy80PvEP4BiSHeal', @RACEMASK_HUMAN, 0, 51178, 3820, 3627, 3582, 0, 0, 0),
('Priest', 'Holy80PvEP4BiSHeal', @RACEMASK_HUMAN, 1, 51894, 0, 3531, 0, 0, 0, 0),
('Priest', 'Holy80PvEP4BiSHeal', @RACEMASK_HUMAN, 2, 51175, 3810, 3531, 0, 0, 0, 0),
('Priest', 'Holy80PvEP4BiSHeal', @RACEMASK_HUMAN, 4, 51851, 3832, 3531, 3531, 3531, 0, 0),
('Priest', 'Holy80PvEP4BiSHeal', @RACEMASK_HUMAN, 5, 51930, 0, 3531, 3531, 0, 0, 3531),
('Priest', 'Holy80PvEP4BiSHeal', @RACEMASK_HUMAN, 6, 51177, 3721, 3531, 3531, 0, 0, 0),
('Priest', 'Holy80PvEP4BiSHeal', @RACEMASK_HUMAN, 7, 47097, 3606, 3531, 3531, 0, 0, 0),
('Priest', 'Holy80PvEP4BiSHeal', @RACEMASK_HUMAN, 8, 47208, 3758, 3531, 0, 0, 0, 0),
('Priest', 'Holy80PvEP4BiSHeal', @RACEMASK_HUMAN, 9, 51179, 3604, 3531, 0, 0, 0, 0),
('Priest', 'Holy80PvEP4BiSHeal', @RACEMASK_HUMAN, 10, 50610, 0, 3531, 0, 0, 0, 0),
('Priest', 'Holy80PvEP4BiSHeal', @RACEMASK_HUMAN, 11, 54585, 0, 3531, 0, 0, 0, 0),
('Priest', 'Holy80PvEP4BiSHeal', @RACEMASK_HUMAN, 12, 50366, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP4BiSHeal', @RACEMASK_HUMAN, 13, 54589, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP4BiSHeal', @RACEMASK_HUMAN, 14, 47552, 3831, 3563, 0, 0, 0, 0),
('Priest', 'Holy80PvEP4BiSHeal', @RACEMASK_HUMAN, 15, 46017, 3834, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP4BiSHeal', @RACEMASK_HUMAN, 16, 47146, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP4BiSHeal', @RACEMASK_HUMAN, 17, 50631, 0, 3531, 0, 0, 0, 0),
('Priest', 'Holy80PvEP4BiSHeal', @RACEMASK_A, 0, 51178, 3820, 3627, 3582, 0, 0, 0),
('Priest', 'Holy80PvEP4BiSHeal', @RACEMASK_A, 1, 51894, 0, 3531, 0, 0, 0, 0),
('Priest', 'Holy80PvEP4BiSHeal', @RACEMASK_A, 2, 51175, 3810, 3531, 0, 0, 0, 0),
('Priest', 'Holy80PvEP4BiSHeal', @RACEMASK_A, 4, 51851, 3832, 3531, 3531, 3531, 0, 0),
('Priest', 'Holy80PvEP4BiSHeal', @RACEMASK_A, 5, 51930, 0, 3531, 3531, 0, 0, 3531),
('Priest', 'Holy80PvEP4BiSHeal', @RACEMASK_A, 6, 51177, 3721, 3531, 3531, 0, 0, 0),
('Priest', 'Holy80PvEP4BiSHeal', @RACEMASK_A, 7, 47097, 3606, 3531, 3531, 0, 0, 0),
('Priest', 'Holy80PvEP4BiSHeal', @RACEMASK_A, 8, 47208, 3758, 3531, 0, 0, 0, 0),
('Priest', 'Holy80PvEP4BiSHeal', @RACEMASK_A, 9, 51179, 3604, 3531, 0, 0, 0, 0),
('Priest', 'Holy80PvEP4BiSHeal', @RACEMASK_A, 10, 50610, 0, 3531, 0, 0, 0, 0),
('Priest', 'Holy80PvEP4BiSHeal', @RACEMASK_A, 11, 54585, 0, 3531, 0, 0, 0, 0),
('Priest', 'Holy80PvEP4BiSHeal', @RACEMASK_A, 12, 50366, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP4BiSHeal', @RACEMASK_A, 13, 54589, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP4BiSHeal', @RACEMASK_A, 14, 47552, 3831, 3563, 0, 0, 0, 0),
('Priest', 'Holy80PvEP4BiSHeal', @RACEMASK_A, 15, 46017, 3834, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP4BiSHeal', @RACEMASK_A, 16, 47146, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP4BiSHeal', @RACEMASK_A, 17, 50631, 0, 3531, 0, 0, 0, 0),
('Priest', 'Holy80PvEP4BiSHeal', @RACEMASK_H, 0, 51178, 3820, 3627, 3582, 0, 0, 0),
('Priest', 'Holy80PvEP4BiSHeal', @RACEMASK_H, 1, 51894, 0, 3531, 0, 0, 0, 0),
('Priest', 'Holy80PvEP4BiSHeal', @RACEMASK_H, 2, 51175, 3810, 3531, 0, 0, 0, 0),
('Priest', 'Holy80PvEP4BiSHeal', @RACEMASK_H, 4, 51851, 3832, 3531, 3531, 3531, 0, 0),
('Priest', 'Holy80PvEP4BiSHeal', @RACEMASK_H, 5, 51930, 0, 3531, 3531, 0, 0, 3531),
('Priest', 'Holy80PvEP4BiSHeal', @RACEMASK_H, 6, 51177, 3721, 3531, 3531, 0, 0, 0),
('Priest', 'Holy80PvEP4BiSHeal', @RACEMASK_H, 7, 47454, 3606, 3531, 3531, 0, 0, 0),
('Priest', 'Holy80PvEP4BiSHeal', @RACEMASK_H, 8, 47485, 3758, 3531, 0, 0, 0, 0),
('Priest', 'Holy80PvEP4BiSHeal', @RACEMASK_H, 9, 51179, 3604, 3531, 0, 0, 0, 0),
('Priest', 'Holy80PvEP4BiSHeal', @RACEMASK_H, 10, 50610, 0, 3531, 0, 0, 0, 0),
('Priest', 'Holy80PvEP4BiSHeal', @RACEMASK_H, 11, 54585, 0, 3531, 0, 0, 0, 0),
('Priest', 'Holy80PvEP4BiSHeal', @RACEMASK_H, 12, 50366, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP4BiSHeal', @RACEMASK_H, 13, 54589, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP4BiSHeal', @RACEMASK_H, 14, 47551, 3831, 3563, 0, 0, 0, 0),
('Priest', 'Holy80PvEP4BiSHeal', @RACEMASK_H, 15, 46017, 3834, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP4BiSHeal', @RACEMASK_H, 16, 47437, 0, 0, 0, 0, 0, 0),
('Priest', 'Holy80PvEP4BiSHeal', @RACEMASK_H, 17, 50631, 0, 3531, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Priest Shadow 80PvEP4BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Priest', 'Shadow80PvEP4BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_shadow_shadowwordpain:30|t|r Use Shadow PvE P4 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Shadow80PvE', 'Shadow80PvE', 'WotLK Phase 4', 304),
('Priest', 'Shadow80PvEP4BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_shadow_shadowwordpain:30|t|r Use Shadow PvE P4 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Shadow80PvE', 'Shadow80PvE', 'WotLK Phase 4', 304);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Priest', 'Shadow80PvEP4BiS', @RACEMASK_HUMAN, 0, 51255, 3820, 3621, 3545, 0, 0, 0),
('Priest', 'Shadow80PvEP4BiS', @RACEMASK_HUMAN, 1, 50658, 0, 3563, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP4BiS', @RACEMASK_HUMAN, 2, 51257, 3810, 3563, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP4BiS', @RACEMASK_HUMAN, 4, 51259, 3832, 3520, 3563, 0, 0, 0),
('Priest', 'Shadow80PvEP4BiS', @RACEMASK_HUMAN, 5, 50613, 0, 3545, 3520, 0, 0, 3520),
('Priest', 'Shadow80PvEP4BiS', @RACEMASK_HUMAN, 6, 50694, 3719, 3520, 3545, 3563, 0, 0),
('Priest', 'Shadow80PvEP4BiS', @RACEMASK_HUMAN, 7, 50699, 3606, 3545, 3520, 0, 0, 0),
('Priest', 'Shadow80PvEP4BiS', @RACEMASK_HUMAN, 8, 54582, 2332, 3520, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP4BiS', @RACEMASK_HUMAN, 9, 51256, 3604, 3520, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP4BiS', @RACEMASK_HUMAN, 10, 50664, 0, 3520, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP4BiS', @RACEMASK_HUMAN, 11, 50398, 0, 3563, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP4BiS', @RACEMASK_HUMAN, 12, 54588, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP4BiS', @RACEMASK_HUMAN, 13, 50365, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP4BiS', @RACEMASK_HUMAN, 14, 54583, 3722, 3520, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP4BiS', @RACEMASK_HUMAN, 15, 50734, 3834, 3520, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP4BiS', @RACEMASK_HUMAN, 16, 50719, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP4BiS', @RACEMASK_HUMAN, 17, 50684, 0, 3563, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP4BiS', @RACEMASK_A, 0, 51255, 3820, 3621, 3545, 0, 0, 0),
('Priest', 'Shadow80PvEP4BiS', @RACEMASK_A, 1, 50658, 0, 3563, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP4BiS', @RACEMASK_A, 2, 51257, 3810, 3563, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP4BiS', @RACEMASK_A, 4, 51259, 3832, 3520, 3563, 0, 0, 0),
('Priest', 'Shadow80PvEP4BiS', @RACEMASK_A, 5, 50613, 0, 3545, 3520, 0, 0, 3520),
('Priest', 'Shadow80PvEP4BiS', @RACEMASK_A, 6, 50694, 3719, 3520, 3545, 3563, 0, 0),
('Priest', 'Shadow80PvEP4BiS', @RACEMASK_A, 7, 50699, 3606, 3545, 3520, 0, 0, 0),
('Priest', 'Shadow80PvEP4BiS', @RACEMASK_A, 8, 54582, 2332, 3520, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP4BiS', @RACEMASK_A, 9, 51256, 3604, 3520, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP4BiS', @RACEMASK_A, 10, 50664, 0, 3520, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP4BiS', @RACEMASK_A, 11, 50398, 0, 3563, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP4BiS', @RACEMASK_A, 12, 54588, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP4BiS', @RACEMASK_A, 13, 50365, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP4BiS', @RACEMASK_A, 14, 54583, 3722, 3520, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP4BiS', @RACEMASK_A, 15, 50734, 3834, 3520, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP4BiS', @RACEMASK_A, 16, 50719, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP4BiS', @RACEMASK_A, 17, 50684, 0, 3563, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP4BiS', @RACEMASK_H, 0, 51255, 3820, 3621, 3545, 0, 0, 0),
('Priest', 'Shadow80PvEP4BiS', @RACEMASK_H, 1, 50658, 0, 3563, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP4BiS', @RACEMASK_H, 2, 51257, 3810, 3563, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP4BiS', @RACEMASK_H, 4, 51259, 3832, 3520, 3563, 0, 0, 0),
('Priest', 'Shadow80PvEP4BiS', @RACEMASK_H, 5, 50613, 0, 3545, 3520, 0, 0, 3520),
('Priest', 'Shadow80PvEP4BiS', @RACEMASK_H, 6, 50694, 3719, 3520, 3545, 3563, 0, 0),
('Priest', 'Shadow80PvEP4BiS', @RACEMASK_H, 7, 50699, 3606, 3545, 3520, 0, 0, 0),
('Priest', 'Shadow80PvEP4BiS', @RACEMASK_H, 8, 54582, 2332, 3520, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP4BiS', @RACEMASK_H, 9, 51256, 3604, 3520, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP4BiS', @RACEMASK_H, 10, 50664, 0, 3520, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP4BiS', @RACEMASK_H, 11, 50398, 0, 3563, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP4BiS', @RACEMASK_H, 12, 54588, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP4BiS', @RACEMASK_H, 13, 50365, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP4BiS', @RACEMASK_H, 14, 54583, 3722, 3520, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP4BiS', @RACEMASK_H, 15, 50734, 3834, 3520, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP4BiS', @RACEMASK_H, 16, 50719, 0, 0, 0, 0, 0, 0),
('Priest', 'Shadow80PvEP4BiS', @RACEMASK_H, 17, 50684, 0, 3563, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Rogue Assassination 80PvEP4BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Rogue', 'Assassination80PvEP4BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_rogue_eviscerate:30|t|r Use Assassination PvE P4 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Assassination80PvE', 'Assassination80PvE', 'WotLK Phase 4', 304),
('Rogue', 'Assassination80PvEP4BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_rogue_eviscerate:30|t|r Use Assassination PvE P4 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Assassination80PvE', 'Assassination80PvE', 'WotLK Phase 4', 304);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Rogue', 'Assassination80PvEP4BiS', @RACEMASK_HUMAN, 0, 51252, 3817, 3628, 3521, 0, 0, 0),
('Rogue', 'Assassination80PvEP4BiS', @RACEMASK_HUMAN, 1, 50633, 0, 3521, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP4BiS', @RACEMASK_HUMAN, 2, 51254, 3808, 3521, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP4BiS', @RACEMASK_HUMAN, 4, 50656, 3832, 3521, 3879, 3567, 0, 0),
('Rogue', 'Assassination80PvEP4BiS', @RACEMASK_HUMAN, 5, 50707, 0, 3521, 3521, 0, 0, 3521),
('Rogue', 'Assassination80PvEP4BiS', @RACEMASK_HUMAN, 6, 51253, 3823, 3521, 3567, 0, 0, 0),
('Rogue', 'Assassination80PvEP4BiS', @RACEMASK_HUMAN, 7, 50607, 3606, 3567, 3567, 0, 0, 0),
('Rogue', 'Assassination80PvEP4BiS', @RACEMASK_HUMAN, 8, 54580, 3845, 3521, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP4BiS', @RACEMASK_HUMAN, 9, 51251, 3604, 3521, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP4BiS', @RACEMASK_HUMAN, 10, 50402, 0, 3567, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP4BiS', @RACEMASK_HUMAN, 11, 54576, 0, 3567, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP4BiS', @RACEMASK_HUMAN, 12, 50363, 0, 0, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP4BiS', @RACEMASK_HUMAN, 13, 54590, 0, 0, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP4BiS', @RACEMASK_HUMAN, 14, 50653, 3605, 3567, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP4BiS', @RACEMASK_HUMAN, 15, 50621, 3789, 3567, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP4BiS', @RACEMASK_HUMAN, 16, 50736, 3789, 3521, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP4BiS', @RACEMASK_HUMAN, 17, 50733, 0, 3521, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP4BiS', @RACEMASK_A, 0, 51252, 3817, 3628, 3521, 0, 0, 0),
('Rogue', 'Assassination80PvEP4BiS', @RACEMASK_A, 1, 50633, 0, 3521, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP4BiS', @RACEMASK_A, 2, 51254, 3808, 3521, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP4BiS', @RACEMASK_A, 4, 50656, 3832, 3521, 3879, 3567, 0, 0),
('Rogue', 'Assassination80PvEP4BiS', @RACEMASK_A, 5, 50707, 0, 3521, 3521, 0, 0, 3521),
('Rogue', 'Assassination80PvEP4BiS', @RACEMASK_A, 6, 51253, 3823, 3521, 3567, 0, 0, 0),
('Rogue', 'Assassination80PvEP4BiS', @RACEMASK_A, 7, 50607, 3606, 3567, 3567, 0, 0, 0),
('Rogue', 'Assassination80PvEP4BiS', @RACEMASK_A, 8, 54580, 3845, 3521, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP4BiS', @RACEMASK_A, 9, 51251, 3604, 3521, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP4BiS', @RACEMASK_A, 10, 50402, 0, 3567, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP4BiS', @RACEMASK_A, 11, 54576, 0, 3567, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP4BiS', @RACEMASK_A, 12, 50363, 0, 0, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP4BiS', @RACEMASK_A, 13, 54590, 0, 0, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP4BiS', @RACEMASK_A, 14, 50653, 3605, 3567, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP4BiS', @RACEMASK_A, 15, 50621, 3789, 3567, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP4BiS', @RACEMASK_A, 16, 50736, 3789, 3521, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP4BiS', @RACEMASK_A, 17, 50733, 0, 3521, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP4BiS', @RACEMASK_H, 0, 51252, 3817, 3628, 3521, 0, 0, 0),
('Rogue', 'Assassination80PvEP4BiS', @RACEMASK_H, 1, 50633, 0, 3521, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP4BiS', @RACEMASK_H, 2, 51254, 3808, 3521, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP4BiS', @RACEMASK_H, 4, 50656, 3832, 3521, 3879, 3567, 0, 0),
('Rogue', 'Assassination80PvEP4BiS', @RACEMASK_H, 5, 50707, 0, 3521, 3521, 0, 0, 3521),
('Rogue', 'Assassination80PvEP4BiS', @RACEMASK_H, 6, 51253, 3823, 3521, 3567, 0, 0, 0),
('Rogue', 'Assassination80PvEP4BiS', @RACEMASK_H, 7, 50607, 3606, 3567, 3567, 0, 0, 0),
('Rogue', 'Assassination80PvEP4BiS', @RACEMASK_H, 8, 54580, 3845, 3521, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP4BiS', @RACEMASK_H, 9, 51251, 3604, 3521, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP4BiS', @RACEMASK_H, 10, 50402, 0, 3567, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP4BiS', @RACEMASK_H, 11, 54576, 0, 3567, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP4BiS', @RACEMASK_H, 12, 50363, 0, 0, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP4BiS', @RACEMASK_H, 13, 54590, 0, 0, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP4BiS', @RACEMASK_H, 14, 50653, 3605, 3567, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP4BiS', @RACEMASK_H, 15, 50621, 3789, 3567, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP4BiS', @RACEMASK_H, 16, 50736, 3789, 3521, 0, 0, 0, 0),
('Rogue', 'Assassination80PvEP4BiS', @RACEMASK_H, 17, 50733, 0, 3521, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Rogue Combat 80PvEP4BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Rogue', 'Combat80PvEP4BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_backstab:30|t|r Use Combat PvE P4 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Combat80PvE', 'Combat80PvE', 'WotLK Phase 4', 304),
('Rogue', 'Combat80PvEP4BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_backstab:30|t|r Use Combat PvE P4 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Combat80PvE', 'Combat80PvE', 'WotLK Phase 4', 304);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Rogue', 'Combat80PvEP4BiS', @RACEMASK_HUMAN, 0, 51252, 3817, 3628, 3525, 0, 0, 0),
('Rogue', 'Combat80PvEP4BiS', @RACEMASK_HUMAN, 1, 50633, 0, 3525, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP4BiS', @RACEMASK_HUMAN, 2, 51254, 3808, 3525, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP4BiS', @RACEMASK_HUMAN, 4, 50656, 3832, 3525, 3525, 3525, 0, 0),
('Rogue', 'Combat80PvEP4BiS', @RACEMASK_HUMAN, 5, 50707, 0, 3525, 3525, 0, 0, 3525),
('Rogue', 'Combat80PvEP4BiS', @RACEMASK_HUMAN, 6, 50697, 3823, 3570, 3525, 3879, 0, 0),
('Rogue', 'Combat80PvEP4BiS', @RACEMASK_HUMAN, 7, 50607, 3606, 3525, 3525, 0, 0, 0),
('Rogue', 'Combat80PvEP4BiS', @RACEMASK_HUMAN, 8, 50670, 3845, 3525, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP4BiS', @RACEMASK_HUMAN, 9, 50675, 3604, 3570, 3525, 0, 0, 0),
('Rogue', 'Combat80PvEP4BiS', @RACEMASK_HUMAN, 10, 50402, 0, 3525, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP4BiS', @RACEMASK_HUMAN, 11, 54576, 0, 3525, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP4BiS', @RACEMASK_HUMAN, 12, 50363, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP4BiS', @RACEMASK_HUMAN, 13, 54590, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP4BiS', @RACEMASK_HUMAN, 14, 47546, 3605, 3525, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP4BiS', @RACEMASK_HUMAN, 15, 50737, 3789, 3525, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP4BiS', @RACEMASK_HUMAN, 16, 50654, 3789, 3565, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP4BiS', @RACEMASK_HUMAN, 17, 50733, 0, 3525, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP4BiS', @RACEMASK_A, 0, 51252, 3817, 3628, 3525, 0, 0, 0),
('Rogue', 'Combat80PvEP4BiS', @RACEMASK_A, 1, 50633, 0, 3525, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP4BiS', @RACEMASK_A, 2, 51254, 3808, 3525, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP4BiS', @RACEMASK_A, 4, 50656, 3832, 3525, 3525, 3525, 0, 0),
('Rogue', 'Combat80PvEP4BiS', @RACEMASK_A, 5, 50707, 0, 3525, 3525, 0, 0, 3525),
('Rogue', 'Combat80PvEP4BiS', @RACEMASK_A, 6, 50697, 3823, 3570, 3525, 3879, 0, 0),
('Rogue', 'Combat80PvEP4BiS', @RACEMASK_A, 7, 50607, 3606, 3525, 3525, 0, 0, 0),
('Rogue', 'Combat80PvEP4BiS', @RACEMASK_A, 8, 50670, 3845, 3525, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP4BiS', @RACEMASK_A, 9, 50675, 3604, 3570, 3525, 0, 0, 0),
('Rogue', 'Combat80PvEP4BiS', @RACEMASK_A, 10, 50402, 0, 3525, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP4BiS', @RACEMASK_A, 11, 54576, 0, 3525, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP4BiS', @RACEMASK_A, 12, 50363, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP4BiS', @RACEMASK_A, 13, 54590, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP4BiS', @RACEMASK_A, 14, 47546, 3605, 3525, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP4BiS', @RACEMASK_A, 15, 50737, 3789, 3525, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP4BiS', @RACEMASK_A, 16, 50654, 3789, 3565, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP4BiS', @RACEMASK_A, 17, 50733, 0, 3525, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP4BiS', @RACEMASK_H, 0, 51252, 3817, 3628, 3525, 0, 0, 0),
('Rogue', 'Combat80PvEP4BiS', @RACEMASK_H, 1, 50633, 0, 3525, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP4BiS', @RACEMASK_H, 2, 51254, 3808, 3525, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP4BiS', @RACEMASK_H, 4, 50656, 3832, 3525, 3525, 3525, 0, 0),
('Rogue', 'Combat80PvEP4BiS', @RACEMASK_H, 5, 50707, 0, 3525, 3525, 0, 0, 3525),
('Rogue', 'Combat80PvEP4BiS', @RACEMASK_H, 6, 50697, 3823, 3570, 3525, 3879, 0, 0),
('Rogue', 'Combat80PvEP4BiS', @RACEMASK_H, 7, 50607, 3606, 3525, 3525, 0, 0, 0),
('Rogue', 'Combat80PvEP4BiS', @RACEMASK_H, 8, 50670, 3845, 3525, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP4BiS', @RACEMASK_H, 9, 50675, 3604, 3570, 3525, 0, 0, 0),
('Rogue', 'Combat80PvEP4BiS', @RACEMASK_H, 10, 50402, 0, 3525, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP4BiS', @RACEMASK_H, 11, 54576, 0, 3525, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP4BiS', @RACEMASK_H, 12, 50363, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP4BiS', @RACEMASK_H, 13, 54590, 0, 0, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP4BiS', @RACEMASK_H, 14, 47546, 3605, 3525, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP4BiS', @RACEMASK_H, 15, 50737, 3789, 3525, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP4BiS', @RACEMASK_H, 16, 50654, 3789, 3565, 0, 0, 0, 0),
('Rogue', 'Combat80PvEP4BiS', @RACEMASK_H, 17, 50733, 0, 3525, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Rogue Subtlety 80PvEP4BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Rogue', 'Subtlety80PvEP4BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_stealth:30|t|r Use Subtlety PvE P4 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Subtlety80PvE', 'Subtlety80PvE', 'WotLK Phase 4', 304),
('Rogue', 'Subtlety80PvEP4BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_stealth:30|t|r Use Subtlety PvE P4 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Subtlety80PvE', 'Subtlety80PvE', 'WotLK Phase 4', 304);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Rogue', 'Subtlety80PvEP4BiS', @RACEMASK_HUMAN, 0, 51252, 3817, 3628, 3525, 0, 0, 0),
('Rogue', 'Subtlety80PvEP4BiS', @RACEMASK_HUMAN, 1, 50633, 0, 3525, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP4BiS', @RACEMASK_HUMAN, 2, 51254, 3808, 3525, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP4BiS', @RACEMASK_HUMAN, 4, 51250, 3832, 3525, 3528, 0, 0, 0),
('Rogue', 'Subtlety80PvEP4BiS', @RACEMASK_HUMAN, 5, 50707, 0, 3879, 3525, 0, 0, 3525),
('Rogue', 'Subtlety80PvEP4BiS', @RACEMASK_HUMAN, 6, 51253, 3823, 3525, 3570, 0, 0, 0),
('Rogue', 'Subtlety80PvEP4BiS', @RACEMASK_HUMAN, 7, 50607, 3606, 3525, 3525, 0, 0, 0),
('Rogue', 'Subtlety80PvEP4BiS', @RACEMASK_HUMAN, 8, 54580, 3845, 3525, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP4BiS', @RACEMASK_HUMAN, 9, 50675, 3604, 3565, 3525, 0, 0, 0),
('Rogue', 'Subtlety80PvEP4BiS', @RACEMASK_HUMAN, 10, 50402, 0, 3570, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP4BiS', @RACEMASK_HUMAN, 11, 54576, 0, 3570, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP4BiS', @RACEMASK_HUMAN, 12, 50363, 0, 0, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP4BiS', @RACEMASK_HUMAN, 13, 54590, 0, 0, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP4BiS', @RACEMASK_HUMAN, 14, 51933, 3605, 3525, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP4BiS', @RACEMASK_HUMAN, 15, 50641, 3789, 3570, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP4BiS', @RACEMASK_HUMAN, 16, 50621, 3789, 3525, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP4BiS', @RACEMASK_HUMAN, 17, 50733, 0, 3525, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP4BiS', @RACEMASK_A, 0, 51252, 3817, 3628, 3525, 0, 0, 0),
('Rogue', 'Subtlety80PvEP4BiS', @RACEMASK_A, 1, 50633, 0, 3525, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP4BiS', @RACEMASK_A, 2, 51254, 3808, 3525, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP4BiS', @RACEMASK_A, 4, 51250, 3832, 3525, 3528, 0, 0, 0),
('Rogue', 'Subtlety80PvEP4BiS', @RACEMASK_A, 5, 50707, 0, 3879, 3525, 0, 0, 3525),
('Rogue', 'Subtlety80PvEP4BiS', @RACEMASK_A, 6, 51253, 3823, 3525, 3570, 0, 0, 0),
('Rogue', 'Subtlety80PvEP4BiS', @RACEMASK_A, 7, 50607, 3606, 3525, 3525, 0, 0, 0),
('Rogue', 'Subtlety80PvEP4BiS', @RACEMASK_A, 8, 54580, 3845, 3525, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP4BiS', @RACEMASK_A, 9, 50675, 3604, 3565, 3525, 0, 0, 0),
('Rogue', 'Subtlety80PvEP4BiS', @RACEMASK_A, 10, 50402, 0, 3570, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP4BiS', @RACEMASK_A, 11, 54576, 0, 3570, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP4BiS', @RACEMASK_A, 12, 50363, 0, 0, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP4BiS', @RACEMASK_A, 13, 54590, 0, 0, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP4BiS', @RACEMASK_A, 14, 51933, 3605, 3525, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP4BiS', @RACEMASK_A, 15, 50641, 3789, 3570, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP4BiS', @RACEMASK_A, 16, 50621, 3789, 3525, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP4BiS', @RACEMASK_A, 17, 50733, 0, 3525, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP4BiS', @RACEMASK_H, 0, 51252, 3817, 3628, 3525, 0, 0, 0),
('Rogue', 'Subtlety80PvEP4BiS', @RACEMASK_H, 1, 50633, 0, 3525, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP4BiS', @RACEMASK_H, 2, 51254, 3808, 3525, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP4BiS', @RACEMASK_H, 4, 51250, 3832, 3525, 3528, 0, 0, 0),
('Rogue', 'Subtlety80PvEP4BiS', @RACEMASK_H, 5, 50707, 0, 3879, 3525, 0, 0, 3525),
('Rogue', 'Subtlety80PvEP4BiS', @RACEMASK_H, 6, 51253, 3823, 3525, 3570, 0, 0, 0),
('Rogue', 'Subtlety80PvEP4BiS', @RACEMASK_H, 7, 50607, 3606, 3525, 3525, 0, 0, 0),
('Rogue', 'Subtlety80PvEP4BiS', @RACEMASK_H, 8, 54580, 3845, 3525, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP4BiS', @RACEMASK_H, 9, 50675, 3604, 3565, 3525, 0, 0, 0),
('Rogue', 'Subtlety80PvEP4BiS', @RACEMASK_H, 10, 50402, 0, 3570, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP4BiS', @RACEMASK_H, 11, 54576, 0, 3570, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP4BiS', @RACEMASK_H, 12, 50363, 0, 0, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP4BiS', @RACEMASK_H, 13, 54590, 0, 0, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP4BiS', @RACEMASK_H, 14, 51933, 3605, 3525, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP4BiS', @RACEMASK_H, 15, 50641, 3789, 3570, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP4BiS', @RACEMASK_H, 16, 50621, 3789, 3525, 0, 0, 0, 0),
('Rogue', 'Subtlety80PvEP4BiS', @RACEMASK_H, 17, 50733, 0, 3525, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Shaman Elemental 80PvEP4BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Shaman', 'Elemental80PvEP4BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_lightning:30|t|r Use Elemental PvE P4 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Elemental80PvE', 'Elemental80PvE', 'WotLK Phase 4', 304),
('Shaman', 'Elemental80PvEP4BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_lightning:30|t|r Use Elemental PvE P4 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Elemental80PvE', 'Elemental80PvE', 'WotLK Phase 4', 304);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Shaman', 'Elemental80PvEP4BiS', @RACEMASK_HUMAN, 0, 51237, 3820, 3621, 3520, 0, 0, 0),
('Shaman', 'Elemental80PvEP4BiS', @RACEMASK_HUMAN, 1, 50658, 0, 3563, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP4BiS', @RACEMASK_HUMAN, 2, 50698, 3810, 3520, 3520, 0, 0, 0),
('Shaman', 'Elemental80PvEP4BiS', @RACEMASK_HUMAN, 4, 51239, 3832, 3520, 3546, 0, 0, 0),
('Shaman', 'Elemental80PvEP4BiS', @RACEMASK_HUMAN, 5, 54587, 0, 3563, 3520, 0, 0, 3520),
('Shaman', 'Elemental80PvEP4BiS', @RACEMASK_HUMAN, 6, 51236, 3721, 3520, 3563, 0, 0, 0),
('Shaman', 'Elemental80PvEP4BiS', @RACEMASK_HUMAN, 7, 50699, 3606, 3546, 3520, 0, 0, 0),
('Shaman', 'Elemental80PvEP4BiS', @RACEMASK_HUMAN, 8, 54582, 2332, 3520, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP4BiS', @RACEMASK_HUMAN, 9, 51238, 3604, 3520, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP4BiS', @RACEMASK_HUMAN, 10, 50664, 0, 3520, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP4BiS', @RACEMASK_HUMAN, 11, 50398, 0, 3563, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP4BiS', @RACEMASK_HUMAN, 12, 50348, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP4BiS', @RACEMASK_HUMAN, 13, 50365, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP4BiS', @RACEMASK_HUMAN, 14, 54583, 3831, 3520, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP4BiS', @RACEMASK_HUMAN, 15, 50734, 3834, 3520, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP4BiS', @RACEMASK_HUMAN, 16, 50616, 1128, 3563, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP4BiS', @RACEMASK_HUMAN, 17, 50458, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP4BiS', @RACEMASK_A, 0, 51237, 3820, 3621, 3520, 0, 0, 0),
('Shaman', 'Elemental80PvEP4BiS', @RACEMASK_A, 1, 50658, 0, 3563, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP4BiS', @RACEMASK_A, 2, 50698, 3810, 3520, 3520, 0, 0, 0),
('Shaman', 'Elemental80PvEP4BiS', @RACEMASK_A, 4, 51239, 3832, 3520, 3546, 0, 0, 0),
('Shaman', 'Elemental80PvEP4BiS', @RACEMASK_A, 5, 54587, 0, 3563, 3520, 0, 0, 3520),
('Shaman', 'Elemental80PvEP4BiS', @RACEMASK_A, 6, 51236, 3721, 3520, 3563, 0, 0, 0),
('Shaman', 'Elemental80PvEP4BiS', @RACEMASK_A, 7, 50699, 3606, 3546, 3520, 0, 0, 0),
('Shaman', 'Elemental80PvEP4BiS', @RACEMASK_A, 8, 54582, 2332, 3520, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP4BiS', @RACEMASK_A, 9, 51238, 3604, 3520, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP4BiS', @RACEMASK_A, 10, 50664, 0, 3520, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP4BiS', @RACEMASK_A, 11, 50398, 0, 3563, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP4BiS', @RACEMASK_A, 12, 50348, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP4BiS', @RACEMASK_A, 13, 50365, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP4BiS', @RACEMASK_A, 14, 54583, 3831, 3520, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP4BiS', @RACEMASK_A, 15, 50734, 3834, 3520, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP4BiS', @RACEMASK_A, 16, 50616, 1128, 3563, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP4BiS', @RACEMASK_A, 17, 50458, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP4BiS', @RACEMASK_H, 0, 51237, 3820, 3621, 3520, 0, 0, 0),
('Shaman', 'Elemental80PvEP4BiS', @RACEMASK_H, 1, 50658, 0, 3563, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP4BiS', @RACEMASK_H, 2, 50698, 3810, 3520, 3520, 0, 0, 0),
('Shaman', 'Elemental80PvEP4BiS', @RACEMASK_H, 4, 51239, 3832, 3520, 3546, 0, 0, 0),
('Shaman', 'Elemental80PvEP4BiS', @RACEMASK_H, 5, 54587, 0, 3563, 3520, 0, 0, 3520),
('Shaman', 'Elemental80PvEP4BiS', @RACEMASK_H, 6, 51236, 3721, 3520, 3563, 0, 0, 0),
('Shaman', 'Elemental80PvEP4BiS', @RACEMASK_H, 7, 50699, 3606, 3546, 3520, 0, 0, 0),
('Shaman', 'Elemental80PvEP4BiS', @RACEMASK_H, 8, 54582, 2332, 3520, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP4BiS', @RACEMASK_H, 9, 51238, 3604, 3520, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP4BiS', @RACEMASK_H, 10, 50664, 0, 3520, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP4BiS', @RACEMASK_H, 11, 50398, 0, 3563, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP4BiS', @RACEMASK_H, 12, 50348, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP4BiS', @RACEMASK_H, 13, 50365, 0, 0, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP4BiS', @RACEMASK_H, 14, 54583, 3831, 3520, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP4BiS', @RACEMASK_H, 15, 50734, 3834, 3520, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP4BiS', @RACEMASK_H, 16, 50616, 1128, 3563, 0, 0, 0, 0),
('Shaman', 'Elemental80PvEP4BiS', @RACEMASK_H, 17, 50458, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Shaman Enhancement 80PvEP4BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Shaman', 'Enhancement80PvEP4BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_lightningshield:30|t|r Use Enhancement PvE P4 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Enhancement80PvE', 'Enhancement80PvE', 'WotLK Phase 4', 304),
('Shaman', 'Enhancement80PvEP4BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_lightningshield:30|t|r Use Enhancement PvE P4 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Enhancement80PvE', 'Enhancement80PvE', 'WotLK Phase 4', 304);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Shaman', 'Enhancement80PvEP4BiS', @RACEMASK_HUMAN, 0, 51242, 3817, 3628, 3524, 0, 0, 0),
('Shaman', 'Enhancement80PvEP4BiS', @RACEMASK_HUMAN, 1, 51890, 0, 3524, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP4BiS', @RACEMASK_HUMAN, 2, 51240, 3808, 3531, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP4BiS', @RACEMASK_HUMAN, 4, 51244, 3832, 3524, 3879, 0, 0, 0),
('Shaman', 'Enhancement80PvEP4BiS', @RACEMASK_HUMAN, 5, 50993, 0, 3531, 3531, 0, 0, 3531),
('Shaman', 'Enhancement80PvEP4BiS', @RACEMASK_HUMAN, 6, 51241, 3823, 3524, 3567, 0, 0, 0),
('Shaman', 'Enhancement80PvEP4BiS', @RACEMASK_HUMAN, 7, 50711, 3606, 3531, 3531, 0, 0, 0),
('Shaman', 'Enhancement80PvEP4BiS', @RACEMASK_HUMAN, 8, 51914, 3845, 3524, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP4BiS', @RACEMASK_HUMAN, 9, 50619, 3604, 3531, 3567, 0, 0, 0),
('Shaman', 'Enhancement80PvEP4BiS', @RACEMASK_HUMAN, 10, 50604, 0, 3531, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP4BiS', @RACEMASK_HUMAN, 11, 50402, 0, 3531, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP4BiS', @RACEMASK_HUMAN, 12, 50355, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP4BiS', @RACEMASK_HUMAN, 13, 50343, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP4BiS', @RACEMASK_HUMAN, 14, 50653, 3831, 3531, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP4BiS', @RACEMASK_HUMAN, 15, 50692, 3789, 3531, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP4BiS', @RACEMASK_HUMAN, 16, 50710, 3789, 3531, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP4BiS', @RACEMASK_HUMAN, 17, 50458, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP4BiS', @RACEMASK_A, 0, 51242, 3817, 3628, 3524, 0, 0, 0),
('Shaman', 'Enhancement80PvEP4BiS', @RACEMASK_A, 1, 51890, 0, 3524, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP4BiS', @RACEMASK_A, 2, 51240, 3808, 3531, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP4BiS', @RACEMASK_A, 4, 51244, 3832, 3524, 3879, 0, 0, 0),
('Shaman', 'Enhancement80PvEP4BiS', @RACEMASK_A, 5, 50993, 0, 3531, 3531, 0, 0, 3531),
('Shaman', 'Enhancement80PvEP4BiS', @RACEMASK_A, 6, 51241, 3823, 3524, 3567, 0, 0, 0),
('Shaman', 'Enhancement80PvEP4BiS', @RACEMASK_A, 7, 50711, 3606, 3531, 3531, 0, 0, 0),
('Shaman', 'Enhancement80PvEP4BiS', @RACEMASK_A, 8, 51914, 3845, 3524, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP4BiS', @RACEMASK_A, 9, 50619, 3604, 3531, 3567, 0, 0, 0),
('Shaman', 'Enhancement80PvEP4BiS', @RACEMASK_A, 10, 50604, 0, 3531, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP4BiS', @RACEMASK_A, 11, 50402, 0, 3531, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP4BiS', @RACEMASK_A, 12, 50355, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP4BiS', @RACEMASK_A, 13, 50343, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP4BiS', @RACEMASK_A, 14, 50653, 3831, 3531, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP4BiS', @RACEMASK_A, 15, 50692, 3789, 3531, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP4BiS', @RACEMASK_A, 16, 50710, 3789, 3531, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP4BiS', @RACEMASK_A, 17, 50458, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP4BiS', @RACEMASK_H, 0, 51242, 3817, 3628, 3524, 0, 0, 0),
('Shaman', 'Enhancement80PvEP4BiS', @RACEMASK_H, 1, 51890, 0, 3524, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP4BiS', @RACEMASK_H, 2, 51240, 3808, 3531, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP4BiS', @RACEMASK_H, 4, 51244, 3832, 3524, 3879, 0, 0, 0),
('Shaman', 'Enhancement80PvEP4BiS', @RACEMASK_H, 5, 50993, 0, 3531, 3531, 0, 0, 3531),
('Shaman', 'Enhancement80PvEP4BiS', @RACEMASK_H, 6, 51241, 3823, 3524, 3567, 0, 0, 0),
('Shaman', 'Enhancement80PvEP4BiS', @RACEMASK_H, 7, 50711, 3606, 3531, 3531, 0, 0, 0),
('Shaman', 'Enhancement80PvEP4BiS', @RACEMASK_H, 8, 51914, 3845, 3524, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP4BiS', @RACEMASK_H, 9, 50619, 3604, 3531, 3567, 0, 0, 0),
('Shaman', 'Enhancement80PvEP4BiS', @RACEMASK_H, 10, 50604, 0, 3531, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP4BiS', @RACEMASK_H, 11, 50402, 0, 3531, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP4BiS', @RACEMASK_H, 12, 50355, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP4BiS', @RACEMASK_H, 13, 50343, 0, 0, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP4BiS', @RACEMASK_H, 14, 50653, 3831, 3531, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP4BiS', @RACEMASK_H, 15, 50692, 3789, 3531, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP4BiS', @RACEMASK_H, 16, 50710, 3789, 3531, 0, 0, 0, 0),
('Shaman', 'Enhancement80PvEP4BiS', @RACEMASK_H, 17, 50458, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Shaman Restoration 80PvEP4BiSHeal (healer) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Shaman', 'Restoration80PvEP4BiSHeal', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_nature_magicimmunity:30|t|r Use Restoration PvE P4 BiS Heal', 7, @MINLEVEL, @MAXLEVEL, 'Restoration80PvE', 'Restoration80PvE', 'WotLK Phase 4', 304),
('Shaman', 'Restoration80PvEP4BiSHeal', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_nature_magicimmunity:30|t|r Use Restoration PvE P4 BiS Heal (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Restoration80PvE', 'Restoration80PvE', 'WotLK Phase 4', 304);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Shaman', 'Restoration80PvEP4BiSHeal', @RACEMASK_HUMAN, 0, 51247, 3820, 3627, 3563, 0, 0, 0),
('Shaman', 'Restoration80PvEP4BiSHeal', @RACEMASK_HUMAN, 1, 50724, 0, 3531, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP4BiSHeal', @RACEMASK_HUMAN, 2, 51245, 3810, 3587, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP4BiSHeal', @RACEMASK_HUMAN, 4, 51249, 2381, 3531, 3531, 0, 0, 0),
('Shaman', 'Restoration80PvEP4BiSHeal', @RACEMASK_HUMAN, 5, 54587, 0, 3531, 3531, 0, 0, 3531),
('Shaman', 'Restoration80PvEP4BiSHeal', @RACEMASK_HUMAN, 6, 51246, 3721, 3563, 3531, 0, 0, 0),
('Shaman', 'Restoration80PvEP4BiSHeal', @RACEMASK_HUMAN, 7, 50699, 3232, 3531, 3531, 0, 0, 0),
('Shaman', 'Restoration80PvEP4BiSHeal', @RACEMASK_HUMAN, 8, 54582, 2332, 3563, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP4BiSHeal', @RACEMASK_HUMAN, 9, 50703, 3246, 3531, 3531, 0, 0, 0),
('Shaman', 'Restoration80PvEP4BiSHeal', @RACEMASK_HUMAN, 10, 54585, 0, 3531, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP4BiSHeal', @RACEMASK_HUMAN, 11, 50400, 0, 3531, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP4BiSHeal', @RACEMASK_HUMAN, 12, 54589, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP4BiSHeal', @RACEMASK_HUMAN, 13, 47059, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP4BiSHeal', @RACEMASK_HUMAN, 14, 54583, 3831, 3531, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP4BiSHeal', @RACEMASK_HUMAN, 15, 46017, 3834, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP4BiSHeal', @RACEMASK_HUMAN, 16, 50616, 1128, 3531, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP4BiSHeal', @RACEMASK_HUMAN, 17, 47665, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP4BiSHeal', @RACEMASK_A, 0, 51247, 3820, 3627, 3563, 0, 0, 0),
('Shaman', 'Restoration80PvEP4BiSHeal', @RACEMASK_A, 1, 50724, 0, 3531, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP4BiSHeal', @RACEMASK_A, 2, 51245, 3810, 3587, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP4BiSHeal', @RACEMASK_A, 4, 51249, 2381, 3531, 3531, 0, 0, 0),
('Shaman', 'Restoration80PvEP4BiSHeal', @RACEMASK_A, 5, 54587, 0, 3531, 3531, 0, 0, 3531),
('Shaman', 'Restoration80PvEP4BiSHeal', @RACEMASK_A, 6, 51246, 3721, 3563, 3531, 0, 0, 0),
('Shaman', 'Restoration80PvEP4BiSHeal', @RACEMASK_A, 7, 50699, 3232, 3531, 3531, 0, 0, 0),
('Shaman', 'Restoration80PvEP4BiSHeal', @RACEMASK_A, 8, 54582, 2332, 3563, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP4BiSHeal', @RACEMASK_A, 9, 50703, 3246, 3531, 3531, 0, 0, 0),
('Shaman', 'Restoration80PvEP4BiSHeal', @RACEMASK_A, 10, 54585, 0, 3531, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP4BiSHeal', @RACEMASK_A, 11, 50400, 0, 3531, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP4BiSHeal', @RACEMASK_A, 12, 54589, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP4BiSHeal', @RACEMASK_A, 13, 47059, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP4BiSHeal', @RACEMASK_A, 14, 54583, 3831, 3531, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP4BiSHeal', @RACEMASK_A, 15, 46017, 3834, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP4BiSHeal', @RACEMASK_A, 16, 50616, 1128, 3531, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP4BiSHeal', @RACEMASK_A, 17, 47665, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP4BiSHeal', @RACEMASK_H, 0, 51247, 3820, 3627, 3563, 0, 0, 0),
('Shaman', 'Restoration80PvEP4BiSHeal', @RACEMASK_H, 1, 50724, 0, 3531, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP4BiSHeal', @RACEMASK_H, 2, 51245, 3810, 3587, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP4BiSHeal', @RACEMASK_H, 4, 51249, 2381, 3531, 3531, 0, 0, 0),
('Shaman', 'Restoration80PvEP4BiSHeal', @RACEMASK_H, 5, 54587, 0, 3531, 3531, 0, 0, 3531),
('Shaman', 'Restoration80PvEP4BiSHeal', @RACEMASK_H, 6, 51246, 3721, 3563, 3531, 0, 0, 0),
('Shaman', 'Restoration80PvEP4BiSHeal', @RACEMASK_H, 7, 50699, 3232, 3531, 3531, 0, 0, 0),
('Shaman', 'Restoration80PvEP4BiSHeal', @RACEMASK_H, 8, 54582, 2332, 3563, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP4BiSHeal', @RACEMASK_H, 9, 50703, 3246, 3531, 3531, 0, 0, 0),
('Shaman', 'Restoration80PvEP4BiSHeal', @RACEMASK_H, 10, 54585, 0, 3531, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP4BiSHeal', @RACEMASK_H, 11, 50400, 0, 3531, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP4BiSHeal', @RACEMASK_H, 12, 54589, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP4BiSHeal', @RACEMASK_H, 13, 47432, 0, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP4BiSHeal', @RACEMASK_H, 14, 54583, 3831, 3531, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP4BiSHeal', @RACEMASK_H, 15, 46017, 3834, 0, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP4BiSHeal', @RACEMASK_H, 16, 50616, 1128, 3531, 0, 0, 0, 0),
('Shaman', 'Restoration80PvEP4BiSHeal', @RACEMASK_H, 17, 47665, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warlock Affliction 80PvEP4BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Warlock', 'Affliction80PvEP4BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_shadow_deathcoil:30|t|r Use Affliction PvE P4 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Affliction80PvE', 'Affliction80PvE', 'WotLK Phase 4', 304),
('Warlock', 'Affliction80PvEP4BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_shadow_deathcoil:30|t|r Use Affliction PvE P4 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Affliction80PvE', 'Affliction80PvE', 'WotLK Phase 4', 304);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warlock', 'Affliction80PvEP4BiS', @RACEMASK_HUMAN, 0, 51231, 3820, 3621, 3545, 0, 0, 0),
('Warlock', 'Affliction80PvEP4BiS', @RACEMASK_HUMAN, 1, 50724, 0, 3520, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP4BiS', @RACEMASK_HUMAN, 2, 51234, 3810, 3563, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP4BiS', @RACEMASK_HUMAN, 4, 51233, 1144, 3520, 3563, 0, 0, 0),
('Warlock', 'Affliction80PvEP4BiS', @RACEMASK_HUMAN, 5, 50613, 0, 3545, 3520, 0, 0, 3520),
('Warlock', 'Affliction80PvEP4BiS', @RACEMASK_HUMAN, 6, 50694, 3872, 3520, 3545, 3563, 0, 0),
('Warlock', 'Affliction80PvEP4BiS', @RACEMASK_HUMAN, 7, 50699, 3606, 3545, 3520, 0, 0, 0),
('Warlock', 'Affliction80PvEP4BiS', @RACEMASK_HUMAN, 8, 54582, 2332, 3520, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP4BiS', @RACEMASK_HUMAN, 9, 51230, 3604, 3520, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP4BiS', @RACEMASK_HUMAN, 10, 50714, 0, 3520, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP4BiS', @RACEMASK_HUMAN, 11, 50398, 0, 3563, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP4BiS', @RACEMASK_HUMAN, 12, 50348, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP4BiS', @RACEMASK_HUMAN, 13, 50365, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP4BiS', @RACEMASK_HUMAN, 14, 54583, 3722, 3520, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP4BiS', @RACEMASK_HUMAN, 15, 50732, 3834, 3520, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP4BiS', @RACEMASK_HUMAN, 16, 50719, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP4BiS', @RACEMASK_HUMAN, 17, 50684, 0, 3563, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP4BiS', @RACEMASK_A, 0, 51231, 3820, 3621, 3545, 0, 0, 0),
('Warlock', 'Affliction80PvEP4BiS', @RACEMASK_A, 1, 50724, 0, 3520, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP4BiS', @RACEMASK_A, 2, 51234, 3810, 3563, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP4BiS', @RACEMASK_A, 4, 51233, 1144, 3520, 3563, 0, 0, 0),
('Warlock', 'Affliction80PvEP4BiS', @RACEMASK_A, 5, 50613, 0, 3545, 3520, 0, 0, 3520),
('Warlock', 'Affliction80PvEP4BiS', @RACEMASK_A, 6, 50694, 3872, 3520, 3545, 3563, 0, 0),
('Warlock', 'Affliction80PvEP4BiS', @RACEMASK_A, 7, 50699, 3606, 3545, 3520, 0, 0, 0),
('Warlock', 'Affliction80PvEP4BiS', @RACEMASK_A, 8, 54582, 2332, 3520, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP4BiS', @RACEMASK_A, 9, 51230, 3604, 3520, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP4BiS', @RACEMASK_A, 10, 50714, 0, 3520, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP4BiS', @RACEMASK_A, 11, 50398, 0, 3563, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP4BiS', @RACEMASK_A, 12, 50348, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP4BiS', @RACEMASK_A, 13, 50365, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP4BiS', @RACEMASK_A, 14, 54583, 3722, 3520, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP4BiS', @RACEMASK_A, 15, 50732, 3834, 3520, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP4BiS', @RACEMASK_A, 16, 50719, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP4BiS', @RACEMASK_A, 17, 50684, 0, 3563, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP4BiS', @RACEMASK_H, 0, 51231, 3820, 3621, 3545, 0, 0, 0),
('Warlock', 'Affliction80PvEP4BiS', @RACEMASK_H, 1, 50658, 0, 3563, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP4BiS', @RACEMASK_H, 2, 51234, 3810, 3563, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP4BiS', @RACEMASK_H, 4, 51233, 1144, 3520, 3563, 0, 0, 0),
('Warlock', 'Affliction80PvEP4BiS', @RACEMASK_H, 5, 50613, 0, 3545, 3520, 0, 0, 3520),
('Warlock', 'Affliction80PvEP4BiS', @RACEMASK_H, 6, 50694, 3872, 3520, 3545, 3563, 0, 0),
('Warlock', 'Affliction80PvEP4BiS', @RACEMASK_H, 7, 50699, 3606, 3545, 3520, 0, 0, 0),
('Warlock', 'Affliction80PvEP4BiS', @RACEMASK_H, 8, 54582, 2332, 3520, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP4BiS', @RACEMASK_H, 9, 51230, 3604, 3520, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP4BiS', @RACEMASK_H, 10, 50664, 0, 3520, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP4BiS', @RACEMASK_H, 11, 50398, 0, 3563, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP4BiS', @RACEMASK_H, 12, 50348, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP4BiS', @RACEMASK_H, 13, 50365, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP4BiS', @RACEMASK_H, 14, 54583, 3722, 3520, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP4BiS', @RACEMASK_H, 15, 50732, 3834, 3520, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP4BiS', @RACEMASK_H, 16, 50719, 0, 0, 0, 0, 0, 0),
('Warlock', 'Affliction80PvEP4BiS', @RACEMASK_H, 17, 50684, 0, 3563, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warlock Demonology 80PvEP4BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Warlock', 'Demonology80PvEP4BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_shadow_metamorphosis:30|t|r Use Demonology PvE P4 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Demonology80PvE', 'Demonology80PvE', 'WotLK Phase 4', 304),
('Warlock', 'Demonology80PvEP4BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_shadow_metamorphosis:30|t|r Use Demonology PvE P4 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Demonology80PvE', 'Demonology80PvE', 'WotLK Phase 4', 304);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warlock', 'Demonology80PvEP4BiS', @RACEMASK_HUMAN, 0, 51231, 3820, 3621, 3545, 0, 0, 0),
('Warlock', 'Demonology80PvEP4BiS', @RACEMASK_HUMAN, 1, 50658, 0, 3560, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP4BiS', @RACEMASK_HUMAN, 2, 51234, 3810, 3560, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP4BiS', @RACEMASK_HUMAN, 4, 50717, 1144, 3520, 3520, 3520, 0, 0),
('Warlock', 'Demonology80PvEP4BiS', @RACEMASK_HUMAN, 5, 50702, 0, 3560, 3520, 0, 0, 3520),
('Warlock', 'Demonology80PvEP4BiS', @RACEMASK_HUMAN, 6, 51232, 3872, 3520, 3520, 0, 0, 0),
('Warlock', 'Demonology80PvEP4BiS', @RACEMASK_HUMAN, 7, 50699, 3606, 3545, 3520, 0, 0, 0),
('Warlock', 'Demonology80PvEP4BiS', @RACEMASK_HUMAN, 8, 54582, 2332, 3520, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP4BiS', @RACEMASK_HUMAN, 9, 51230, 3604, 3545, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP4BiS', @RACEMASK_HUMAN, 10, 50636, 0, 3520, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP4BiS', @RACEMASK_HUMAN, 11, 50398, 0, 3520, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP4BiS', @RACEMASK_HUMAN, 12, 50348, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP4BiS', @RACEMASK_HUMAN, 13, 50365, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP4BiS', @RACEMASK_HUMAN, 14, 54583, 3722, 3520, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP4BiS', @RACEMASK_HUMAN, 15, 50732, 3834, 3520, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP4BiS', @RACEMASK_HUMAN, 16, 50635, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP4BiS', @RACEMASK_HUMAN, 17, 50631, 0, 3560, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP4BiS', @RACEMASK_A, 0, 51231, 3820, 3621, 3545, 0, 0, 0),
('Warlock', 'Demonology80PvEP4BiS', @RACEMASK_A, 1, 50658, 0, 3560, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP4BiS', @RACEMASK_A, 2, 51234, 3810, 3560, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP4BiS', @RACEMASK_A, 4, 50717, 1144, 3520, 3520, 3520, 0, 0),
('Warlock', 'Demonology80PvEP4BiS', @RACEMASK_A, 5, 50702, 0, 3560, 3520, 0, 0, 3520),
('Warlock', 'Demonology80PvEP4BiS', @RACEMASK_A, 6, 51232, 3872, 3520, 3520, 0, 0, 0),
('Warlock', 'Demonology80PvEP4BiS', @RACEMASK_A, 7, 50699, 3606, 3545, 3520, 0, 0, 0),
('Warlock', 'Demonology80PvEP4BiS', @RACEMASK_A, 8, 54582, 2332, 3520, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP4BiS', @RACEMASK_A, 9, 51230, 3604, 3545, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP4BiS', @RACEMASK_A, 10, 50636, 0, 3520, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP4BiS', @RACEMASK_A, 11, 50398, 0, 3520, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP4BiS', @RACEMASK_A, 12, 50348, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP4BiS', @RACEMASK_A, 13, 50365, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP4BiS', @RACEMASK_A, 14, 54583, 3722, 3520, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP4BiS', @RACEMASK_A, 15, 50732, 3834, 3520, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP4BiS', @RACEMASK_A, 16, 50635, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP4BiS', @RACEMASK_A, 17, 50631, 0, 3560, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP4BiS', @RACEMASK_H, 0, 51231, 3820, 3621, 3545, 0, 0, 0),
('Warlock', 'Demonology80PvEP4BiS', @RACEMASK_H, 1, 50658, 0, 3560, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP4BiS', @RACEMASK_H, 2, 51234, 3810, 3560, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP4BiS', @RACEMASK_H, 4, 50717, 1144, 3545, 3520, 3560, 0, 0),
('Warlock', 'Demonology80PvEP4BiS', @RACEMASK_H, 5, 50702, 0, 3560, 3520, 0, 0, 3520),
('Warlock', 'Demonology80PvEP4BiS', @RACEMASK_H, 6, 51232, 3872, 3520, 3520, 0, 0, 0),
('Warlock', 'Demonology80PvEP4BiS', @RACEMASK_H, 7, 50699, 3606, 3545, 3520, 0, 0, 0),
('Warlock', 'Demonology80PvEP4BiS', @RACEMASK_H, 8, 54582, 2332, 3520, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP4BiS', @RACEMASK_H, 9, 51230, 3604, 3545, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP4BiS', @RACEMASK_H, 10, 50398, 0, 3560, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP4BiS', @RACEMASK_H, 11, 50636, 0, 3560, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP4BiS', @RACEMASK_H, 12, 50348, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP4BiS', @RACEMASK_H, 13, 50365, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP4BiS', @RACEMASK_H, 14, 54583, 3722, 3520, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP4BiS', @RACEMASK_H, 15, 50732, 3834, 3520, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP4BiS', @RACEMASK_H, 16, 50635, 0, 0, 0, 0, 0, 0),
('Warlock', 'Demonology80PvEP4BiS', @RACEMASK_H, 17, 50631, 0, 3560, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warlock Destruction 80PvEP4BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Warlock', 'Destruction80PvEP4BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\spell_shadow_rainoffire:30|t|r Use Destruction PvE P4 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Destruction80PvE', 'Destruction80PvE', 'WotLK Phase 4', 304),
('Warlock', 'Destruction80PvEP4BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\spell_shadow_rainoffire:30|t|r Use Destruction PvE P4 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Destruction80PvE', 'Destruction80PvE', 'WotLK Phase 4', 304);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warlock', 'Destruction80PvEP4BiS', @RACEMASK_HUMAN, 0, 51231, 3820, 3621, 3545, 0, 0, 0),
('Warlock', 'Destruction80PvEP4BiS', @RACEMASK_HUMAN, 1, 50658, 0, 3563, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP4BiS', @RACEMASK_HUMAN, 2, 51234, 3810, 3563, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP4BiS', @RACEMASK_HUMAN, 4, 51233, 3832, 3520, 3563, 0, 0, 0),
('Warlock', 'Destruction80PvEP4BiS', @RACEMASK_HUMAN, 5, 50613, 0, 3545, 3520, 0, 0, 3520),
('Warlock', 'Destruction80PvEP4BiS', @RACEMASK_HUMAN, 6, 50694, 3719, 3520, 3520, 3520, 0, 0),
('Warlock', 'Destruction80PvEP4BiS', @RACEMASK_HUMAN, 7, 50699, 3606, 3545, 3520, 0, 0, 0),
('Warlock', 'Destruction80PvEP4BiS', @RACEMASK_HUMAN, 8, 54582, 2332, 3520, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP4BiS', @RACEMASK_HUMAN, 9, 51230, 3604, 3520, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP4BiS', @RACEMASK_HUMAN, 10, 50614, 0, 3520, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP4BiS', @RACEMASK_HUMAN, 11, 50398, 0, 3563, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP4BiS', @RACEMASK_HUMAN, 12, 50365, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP4BiS', @RACEMASK_HUMAN, 13, 50348, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP4BiS', @RACEMASK_HUMAN, 14, 54583, 3722, 3520, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP4BiS', @RACEMASK_HUMAN, 15, 50732, 3834, 3520, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP4BiS', @RACEMASK_HUMAN, 16, 50719, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP4BiS', @RACEMASK_HUMAN, 17, 50684, 0, 3563, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP4BiS', @RACEMASK_A, 0, 51231, 3820, 3621, 3545, 0, 0, 0),
('Warlock', 'Destruction80PvEP4BiS', @RACEMASK_A, 1, 50658, 0, 3563, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP4BiS', @RACEMASK_A, 2, 51234, 3810, 3563, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP4BiS', @RACEMASK_A, 4, 51233, 3832, 3520, 3563, 0, 0, 0),
('Warlock', 'Destruction80PvEP4BiS', @RACEMASK_A, 5, 50613, 0, 3545, 3520, 0, 0, 3520),
('Warlock', 'Destruction80PvEP4BiS', @RACEMASK_A, 6, 50694, 3719, 3520, 3520, 3520, 0, 0),
('Warlock', 'Destruction80PvEP4BiS', @RACEMASK_A, 7, 50699, 3606, 3545, 3520, 0, 0, 0),
('Warlock', 'Destruction80PvEP4BiS', @RACEMASK_A, 8, 54582, 2332, 3520, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP4BiS', @RACEMASK_A, 9, 51230, 3604, 3520, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP4BiS', @RACEMASK_A, 10, 50614, 0, 3520, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP4BiS', @RACEMASK_A, 11, 50398, 0, 3563, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP4BiS', @RACEMASK_A, 12, 50365, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP4BiS', @RACEMASK_A, 13, 50348, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP4BiS', @RACEMASK_A, 14, 54583, 3722, 3520, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP4BiS', @RACEMASK_A, 15, 50732, 3834, 3520, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP4BiS', @RACEMASK_A, 16, 50719, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP4BiS', @RACEMASK_A, 17, 50684, 0, 3563, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP4BiS', @RACEMASK_H, 0, 51231, 3820, 3621, 3545, 0, 0, 0),
('Warlock', 'Destruction80PvEP4BiS', @RACEMASK_H, 1, 50658, 0, 3560, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP4BiS', @RACEMASK_H, 2, 51234, 3810, 3559, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP4BiS', @RACEMASK_H, 4, 51233, 3832, 3520, 3563, 0, 0, 0),
('Warlock', 'Destruction80PvEP4BiS', @RACEMASK_H, 5, 50613, 0, 3545, 3520, 0, 0, 3520),
('Warlock', 'Destruction80PvEP4BiS', @RACEMASK_H, 6, 50694, 3719, 3520, 3520, 3520, 0, 0),
('Warlock', 'Destruction80PvEP4BiS', @RACEMASK_H, 7, 50699, 3606, 3545, 3520, 0, 0, 0),
('Warlock', 'Destruction80PvEP4BiS', @RACEMASK_H, 8, 54582, 2332, 3520, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP4BiS', @RACEMASK_H, 9, 51230, 3604, 3520, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP4BiS', @RACEMASK_H, 10, 50714, 0, 3520, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP4BiS', @RACEMASK_H, 11, 50398, 0, 3560, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP4BiS', @RACEMASK_H, 12, 50365, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP4BiS', @RACEMASK_H, 13, 50348, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP4BiS', @RACEMASK_H, 14, 54583, 3722, 3559, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP4BiS', @RACEMASK_H, 15, 50732, 3834, 3520, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP4BiS', @RACEMASK_H, 16, 50719, 0, 0, 0, 0, 0, 0),
('Warlock', 'Destruction80PvEP4BiS', @RACEMASK_H, 17, 50684, 0, 3560, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warrior Arms 80PvEP4BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Warrior', 'Arms80PvEP4BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_rogue_eviscerate:30|t|r Use Arms PvE P4 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Arms80PvE', 'Arms80PvE', 'WotLK Phase 4', 304),
('Warrior', 'Arms80PvEP4BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_rogue_eviscerate:30|t|r Use Arms PvE P4 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Arms80PvE', 'Arms80PvE', 'WotLK Phase 4', 304);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warrior', 'Arms80PvEP4BiS', @RACEMASK_HUMAN, 0, 51227, 3817, 3628, 3518, 0, 0, 0),
('Warrior', 'Arms80PvEP4BiS', @RACEMASK_HUMAN, 1, 54581, 0, 3549, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP4BiS', @RACEMASK_HUMAN, 2, 51229, 3808, 3518, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP4BiS', @RACEMASK_HUMAN, 4, 51225, 3832, 3518, 3879, 0, 0, 0),
('Warrior', 'Arms80PvEP4BiS', @RACEMASK_HUMAN, 5, 50707, 0, 3525, 3525, 0, 0, 3525),
('Warrior', 'Arms80PvEP4BiS', @RACEMASK_HUMAN, 6, 50645, 3823, 3732, 3732, 3732, 0, 0),
('Warrior', 'Arms80PvEP4BiS', @RACEMASK_HUMAN, 7, 54578, 3606, 3518, 3550, 0, 0, 0),
('Warrior', 'Arms80PvEP4BiS', @RACEMASK_HUMAN, 8, 54580, 3845, 3518, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP4BiS', @RACEMASK_HUMAN, 9, 51226, 3604, 3549, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP4BiS', @RACEMASK_HUMAN, 10, 50402, 0, 3518, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP4BiS', @RACEMASK_HUMAN, 11, 50618, 0, 3525, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP4BiS', @RACEMASK_HUMAN, 12, 54590, 0, 0, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP4BiS', @RACEMASK_HUMAN, 13, 50363, 0, 0, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP4BiS', @RACEMASK_HUMAN, 14, 47545, 3605, 3518, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP4BiS', @RACEMASK_HUMAN, 15, 49623, 3789, 3518, 3518, 3518, 0, 0),
('Warrior', 'Arms80PvEP4BiS', @RACEMASK_HUMAN, 17, 50733, 3608, 3518, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP4BiS', @RACEMASK_A, 0, 51227, 3817, 3628, 3518, 0, 0, 0),
('Warrior', 'Arms80PvEP4BiS', @RACEMASK_A, 1, 54581, 0, 3549, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP4BiS', @RACEMASK_A, 2, 51229, 3808, 3518, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP4BiS', @RACEMASK_A, 4, 51225, 3832, 3518, 3879, 0, 0, 0),
('Warrior', 'Arms80PvEP4BiS', @RACEMASK_A, 5, 50707, 0, 3525, 3525, 0, 0, 3525),
('Warrior', 'Arms80PvEP4BiS', @RACEMASK_A, 6, 50645, 3823, 3732, 3732, 3732, 0, 0),
('Warrior', 'Arms80PvEP4BiS', @RACEMASK_A, 7, 54578, 3606, 3518, 3550, 0, 0, 0),
('Warrior', 'Arms80PvEP4BiS', @RACEMASK_A, 8, 54580, 3845, 3518, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP4BiS', @RACEMASK_A, 9, 51226, 3604, 3549, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP4BiS', @RACEMASK_A, 10, 50402, 0, 3518, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP4BiS', @RACEMASK_A, 11, 50618, 0, 3525, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP4BiS', @RACEMASK_A, 12, 54590, 0, 0, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP4BiS', @RACEMASK_A, 13, 50363, 0, 0, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP4BiS', @RACEMASK_A, 14, 47545, 3605, 3518, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP4BiS', @RACEMASK_A, 15, 49623, 3789, 3518, 3518, 3518, 0, 0),
('Warrior', 'Arms80PvEP4BiS', @RACEMASK_A, 17, 50733, 3608, 3518, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP4BiS', @RACEMASK_H, 0, 51227, 3817, 3628, 3518, 0, 0, 0),
('Warrior', 'Arms80PvEP4BiS', @RACEMASK_H, 1, 54581, 0, 3549, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP4BiS', @RACEMASK_H, 2, 51229, 3808, 3518, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP4BiS', @RACEMASK_H, 4, 51225, 3832, 3518, 3879, 0, 0, 0),
('Warrior', 'Arms80PvEP4BiS', @RACEMASK_H, 5, 50707, 0, 3525, 3525, 0, 0, 3525),
('Warrior', 'Arms80PvEP4BiS', @RACEMASK_H, 6, 50645, 3823, 3732, 3732, 3732, 0, 0),
('Warrior', 'Arms80PvEP4BiS', @RACEMASK_H, 7, 54578, 3606, 3518, 3550, 0, 0, 0),
('Warrior', 'Arms80PvEP4BiS', @RACEMASK_H, 8, 54580, 3845, 3518, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP4BiS', @RACEMASK_H, 9, 51226, 3604, 3549, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP4BiS', @RACEMASK_H, 10, 50402, 0, 3518, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP4BiS', @RACEMASK_H, 11, 50618, 0, 3525, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP4BiS', @RACEMASK_H, 12, 54590, 0, 0, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP4BiS', @RACEMASK_H, 13, 50363, 0, 0, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP4BiS', @RACEMASK_H, 14, 47546, 3605, 3518, 0, 0, 0, 0),
('Warrior', 'Arms80PvEP4BiS', @RACEMASK_H, 15, 49623, 3789, 3518, 3518, 3518, 0, 0),
('Warrior', 'Arms80PvEP4BiS', @RACEMASK_H, 17, 50733, 3608, 3518, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warrior Fury 80PvEP4BiS (dps) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Warrior', 'Fury80PvEP4BiS', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_warrior_innerrage:30|t|r Use Fury PvE P4 BiS', 7, @MINLEVEL, @MAXLEVEL, 'Fury80PvE', 'Fury80PvE', 'WotLK Phase 4', 304),
('Warrior', 'Fury80PvEP4BiS', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_warrior_innerrage:30|t|r Use Fury PvE P4 BiS (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Fury80PvE', 'Fury80PvE', 'WotLK Phase 4', 304);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warrior', 'Fury80PvEP4BiS', @RACEMASK_HUMAN, 0, 51227, 3817, 3628, 3525, 0, 0, 0),
('Warrior', 'Fury80PvEP4BiS', @RACEMASK_HUMAN, 1, 54581, 0, 3549, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP4BiS', @RACEMASK_HUMAN, 2, 51229, 3808, 3525, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP4BiS', @RACEMASK_HUMAN, 4, 51225, 3832, 3518, 3879, 0, 0, 0),
('Warrior', 'Fury80PvEP4BiS', @RACEMASK_HUMAN, 5, 50707, 0, 3518, 3518, 0, 0, 3518),
('Warrior', 'Fury80PvEP4BiS', @RACEMASK_HUMAN, 6, 51228, 3823, 3525, 3525, 0, 0, 0),
('Warrior', 'Fury80PvEP4BiS', @RACEMASK_HUMAN, 7, 54578, 3606, 3525, 3525, 0, 0, 0),
('Warrior', 'Fury80PvEP4BiS', @RACEMASK_HUMAN, 8, 54580, 3845, 3525, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP4BiS', @RACEMASK_HUMAN, 9, 50675, 3604, 3549, 3518, 0, 0, 0),
('Warrior', 'Fury80PvEP4BiS', @RACEMASK_HUMAN, 10, 50618, 0, 3518, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP4BiS', @RACEMASK_HUMAN, 11, 50402, 0, 3549, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP4BiS', @RACEMASK_HUMAN, 12, 50363, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP4BiS', @RACEMASK_HUMAN, 13, 54590, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP4BiS', @RACEMASK_HUMAN, 14, 47545, 3831, 3525, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP4BiS', @RACEMASK_HUMAN, 15, 49623, 3789, 3732, 3732, 3745, 0, 0),
('Warrior', 'Fury80PvEP4BiS', @RACEMASK_HUMAN, 16, 50730, 3789, 3525, 3525, 3518, 0, 0),
('Warrior', 'Fury80PvEP4BiS', @RACEMASK_HUMAN, 17, 50733, 0, 3525, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP4BiS', @RACEMASK_A, 0, 51227, 3817, 3628, 3525, 0, 0, 0),
('Warrior', 'Fury80PvEP4BiS', @RACEMASK_A, 1, 54581, 0, 3549, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP4BiS', @RACEMASK_A, 2, 51229, 3808, 3525, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP4BiS', @RACEMASK_A, 4, 51225, 3832, 3518, 3879, 0, 0, 0),
('Warrior', 'Fury80PvEP4BiS', @RACEMASK_A, 5, 50707, 0, 3518, 3518, 0, 0, 3518),
('Warrior', 'Fury80PvEP4BiS', @RACEMASK_A, 6, 51228, 3823, 3525, 3525, 0, 0, 0),
('Warrior', 'Fury80PvEP4BiS', @RACEMASK_A, 7, 54578, 3606, 3525, 3525, 0, 0, 0),
('Warrior', 'Fury80PvEP4BiS', @RACEMASK_A, 8, 54580, 3845, 3525, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP4BiS', @RACEMASK_A, 9, 50675, 3604, 3549, 3518, 0, 0, 0),
('Warrior', 'Fury80PvEP4BiS', @RACEMASK_A, 10, 50618, 0, 3518, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP4BiS', @RACEMASK_A, 11, 50402, 0, 3549, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP4BiS', @RACEMASK_A, 12, 50363, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP4BiS', @RACEMASK_A, 13, 54590, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP4BiS', @RACEMASK_A, 14, 47545, 3831, 3525, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP4BiS', @RACEMASK_A, 15, 49623, 3789, 3732, 3732, 3745, 0, 0),
('Warrior', 'Fury80PvEP4BiS', @RACEMASK_A, 16, 50730, 3789, 3525, 3525, 3518, 0, 0),
('Warrior', 'Fury80PvEP4BiS', @RACEMASK_A, 17, 50733, 0, 3525, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP4BiS', @RACEMASK_H, 0, 51227, 3817, 3628, 3525, 0, 0, 0),
('Warrior', 'Fury80PvEP4BiS', @RACEMASK_H, 1, 54581, 0, 3549, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP4BiS', @RACEMASK_H, 2, 51229, 3808, 3525, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP4BiS', @RACEMASK_H, 4, 51225, 3832, 3518, 3879, 0, 0, 0),
('Warrior', 'Fury80PvEP4BiS', @RACEMASK_H, 5, 50707, 0, 3518, 3518, 0, 0, 3518),
('Warrior', 'Fury80PvEP4BiS', @RACEMASK_H, 6, 51228, 3823, 3525, 3525, 0, 0, 0),
('Warrior', 'Fury80PvEP4BiS', @RACEMASK_H, 7, 54578, 3606, 3525, 3525, 0, 0, 0),
('Warrior', 'Fury80PvEP4BiS', @RACEMASK_H, 8, 54580, 3845, 3525, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP4BiS', @RACEMASK_H, 9, 50675, 3604, 3549, 3518, 0, 0, 0),
('Warrior', 'Fury80PvEP4BiS', @RACEMASK_H, 10, 50618, 0, 3518, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP4BiS', @RACEMASK_H, 11, 50402, 0, 3549, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP4BiS', @RACEMASK_H, 12, 50363, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP4BiS', @RACEMASK_H, 13, 54590, 0, 0, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP4BiS', @RACEMASK_H, 14, 47546, 3831, 3525, 0, 0, 0, 0),
('Warrior', 'Fury80PvEP4BiS', @RACEMASK_H, 15, 49623, 3789, 3732, 3732, 3745, 0, 0),
('Warrior', 'Fury80PvEP4BiS', @RACEMASK_H, 16, 50730, 3789, 3525, 3525, 3518, 0, 0),
('Warrior', 'Fury80PvEP4BiS', @RACEMASK_H, 17, 50733, 0, 3525, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

-- ===== Warrior Protection 80PvEP4BiSTank (tank) =====
SET @ACTION = COALESCE((SELECT MAX(`gossipAction`) + 1 FROM `mod_npc_talent_template_index`), 0);

/*!40000 ALTER TABLE `mod_npc_talent_template_index` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder`) VALUES
('Warrior', 'Protection80PvEP4BiSTank', @ACTION+000, '|cff00ff00|TInterface\\icons\\ability_warrior_defensivestance:30|t|r Use Protection PvE P4 BiS Tank', 7, @MINLEVEL, @MAXLEVEL, 'Protection80PvE', 'Protection80PvE', 'WotLK Phase 4', 304),
('Warrior', 'Protection80PvEP4BiSTank', @ACTION+001, '|cff00ff00|TInterface\\icons\\ability_warrior_defensivestance:30|t|r Use Protection PvE P4 BiS Tank (Talents and Glyphs only)', 6, @MINLEVEL, @MAXLEVEL, 'Protection80PvE', 'Protection80PvE', 'WotLK Phase 4', 304);
/*!40000 ALTER TABLE `mod_npc_talent_template_index` ENABLE KEYS */;

/*!40000 ALTER TABLE `mod_npc_talent_template_gear` DISABLE KEYS */;
INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
('Warrior', 'Protection80PvEP4BiSTank', @RACEMASK_HUMAN, 0, 50640, 3818, 3637, 3537, 0, 0, 0),
('Warrior', 'Protection80PvEP4BiSTank', @RACEMASK_HUMAN, 1, 50682, 0, 3537, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP4BiSTank', @RACEMASK_HUMAN, 2, 51224, 3852, 3537, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP4BiSTank', @RACEMASK_HUMAN, 4, 51220, 3832, 3537, 3532, 0, 0, 0),
('Warrior', 'Protection80PvEP4BiSTank', @RACEMASK_HUMAN, 5, 50691, 3601, 3537, 3293, 0, 0, 3293),
('Warrior', 'Protection80PvEP4BiSTank', @RACEMASK_HUMAN, 6, 51223, 3822, 3575, 3532, 0, 0, 0),
('Warrior', 'Protection80PvEP4BiSTank', @RACEMASK_HUMAN, 7, 50625, 3232, 3575, 3532, 0, 0, 0),
('Warrior', 'Protection80PvEP4BiSTank', @RACEMASK_HUMAN, 8, 50611, 3850, 3575, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP4BiSTank', @RACEMASK_HUMAN, 9, 51222, 3860, 3575, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP4BiSTank', @RACEMASK_HUMAN, 10, 50622, 0, 3537, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP4BiSTank', @RACEMASK_HUMAN, 11, 50642, 0, 3537, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP4BiSTank', @RACEMASK_HUMAN, 12, 50364, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP4BiSTank', @RACEMASK_HUMAN, 13, 50344, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP4BiSTank', @RACEMASK_HUMAN, 14, 50718, 3605, 3575, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP4BiSTank', @RACEMASK_HUMAN, 15, 50738, 3788, 3532, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP4BiSTank', @RACEMASK_HUMAN, 16, 50729, 3849, 3537, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP4BiSTank', @RACEMASK_HUMAN, 17, 51834, 0, 3293, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP4BiSTank', @RACEMASK_A, 0, 50640, 3818, 3637, 3537, 0, 0, 0),
('Warrior', 'Protection80PvEP4BiSTank', @RACEMASK_A, 1, 50682, 0, 3537, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP4BiSTank', @RACEMASK_A, 2, 51224, 3852, 3537, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP4BiSTank', @RACEMASK_A, 4, 51220, 3832, 3537, 3532, 0, 0, 0),
('Warrior', 'Protection80PvEP4BiSTank', @RACEMASK_A, 5, 50691, 3601, 3537, 3293, 0, 0, 3293),
('Warrior', 'Protection80PvEP4BiSTank', @RACEMASK_A, 6, 51223, 3822, 3575, 3532, 0, 0, 0),
('Warrior', 'Protection80PvEP4BiSTank', @RACEMASK_A, 7, 50625, 3232, 3575, 3532, 0, 0, 0),
('Warrior', 'Protection80PvEP4BiSTank', @RACEMASK_A, 8, 50611, 3850, 3575, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP4BiSTank', @RACEMASK_A, 9, 51222, 3860, 3575, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP4BiSTank', @RACEMASK_A, 10, 50622, 0, 3537, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP4BiSTank', @RACEMASK_A, 11, 50642, 0, 3537, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP4BiSTank', @RACEMASK_A, 12, 50364, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP4BiSTank', @RACEMASK_A, 13, 50344, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP4BiSTank', @RACEMASK_A, 14, 50718, 3605, 3575, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP4BiSTank', @RACEMASK_A, 15, 50738, 3788, 3532, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP4BiSTank', @RACEMASK_A, 16, 50729, 3849, 3537, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP4BiSTank', @RACEMASK_A, 17, 51834, 0, 3293, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP4BiSTank', @RACEMASK_H, 0, 50640, 3818, 3637, 3537, 0, 0, 0),
('Warrior', 'Protection80PvEP4BiSTank', @RACEMASK_H, 1, 50682, 0, 3537, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP4BiSTank', @RACEMASK_H, 2, 51224, 3852, 3537, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP4BiSTank', @RACEMASK_H, 4, 51220, 3832, 3537, 3532, 0, 0, 0),
('Warrior', 'Protection80PvEP4BiSTank', @RACEMASK_H, 5, 50691, 3601, 3537, 3293, 0, 0, 3293),
('Warrior', 'Protection80PvEP4BiSTank', @RACEMASK_H, 6, 51223, 3822, 3575, 3532, 0, 0, 0),
('Warrior', 'Protection80PvEP4BiSTank', @RACEMASK_H, 7, 50625, 3232, 3575, 3532, 0, 0, 0),
('Warrior', 'Protection80PvEP4BiSTank', @RACEMASK_H, 8, 50611, 3850, 3575, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP4BiSTank', @RACEMASK_H, 9, 51222, 3860, 3575, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP4BiSTank', @RACEMASK_H, 10, 50622, 0, 3537, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP4BiSTank', @RACEMASK_H, 11, 50642, 0, 3537, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP4BiSTank', @RACEMASK_H, 12, 50364, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP4BiSTank', @RACEMASK_H, 13, 50344, 0, 0, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP4BiSTank', @RACEMASK_H, 14, 50718, 3605, 3575, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP4BiSTank', @RACEMASK_H, 15, 50738, 3788, 3532, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP4BiSTank', @RACEMASK_H, 16, 50729, 3849, 3537, 0, 0, 0, 0),
('Warrior', 'Protection80PvEP4BiSTank', @RACEMASK_H, 17, 51834, 0, 3293, 0, 0, 0, 0);
/*!40000 ALTER TABLE `mod_npc_talent_template_gear` ENABLE KEYS */;

