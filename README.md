# ![logo](https://raw.githubusercontent.com/azerothcore/azerothcore.github.io/master/images/logo-github.png) AzerothCore

## mod-npc-talent-template

- Latest build status with azerothcore:

[![Build Status](https://github.com/azerothcore/mod-npc-talent-template/workflows/core-build/badge.svg?branch=master&event=push)](https://github.com/azerothcore/mod-npc-talent-template)

## Description
This mod introduces an NPC that allows players to instantly apply pre-configured character templates that gear up, gem, set talents, and apply glyphs for any class. Ideal for quick character optimization for various roles and scenarios.

* templates for level 80 PvP S6 and level 70 PvE T6
* race-specific gear options (e.g., humans receive no PvP trinket)
* administrator command for creating custom templates. Templates are managed directly through the database and config. No C++ edits needed

![](https://i.ibb.co/27WPR5j/Wo-WScrn-Shot-021219-000220.jpg)

Video Showcase:
https://streamable.com/yxv1m

## Menu
The NPC only offers templates for the player's class and level.

1. **Main menu**: one entry per category (e.g. `TBC Pre-Raid`, `TBC Phase 1` … `TBC Phase 5`), any
   templates without a category, and **Reset...**.
2. **Category**: one entry per build.
3. **Build**: what to apply: *Apply everything*, *Gear only*, *Talents and glyphs*, *Talents only* or
   *Glyphs only*. Only choices the build allows (`mask`) and has template data for are shown.
4. **Reset...**: *Reset everything*, or reset talents, pet talents (hunters), glyphs or equipped gear
   one at a time. Each option follows its `NpcTalentTemplate.Enable*` config switch.

Gear can only be applied with nothing equipped and talents only with no talent points spent.
Use **Reset...** first if needed.

## Creating custom gear sets
This process can only be done by an administrator and is error-prone. Creating gear sets should be done on a local development server and exporting sets from the DB to a `.sql` is recommended.

1. Setup a character with the desired gear set, gems, enchants, talents and glyphs.
2. `.templatenpc create [TemplateName]` creates database entries for gear, talents, glyphs and an entry in the index table for your class. A template name needs to be unique for that class and is case-sensitive. For example, when creating a PvP set for a lvl80 Restoration Druid `.templatenpc create Restoration80PvPS8`.
3. export to `.sql`
4. some manual changes are needed

The following entries are created in the `acore_characters` db:
a. `mod_npc_talent_template_gear`: gear for your class, spec and race. When exporting, modify the raceMask as needed. When creating spec set for multiple races, create a template for one race, export to sql then create template for a new race. Modify the raceMask as needed
b. `mod_npc_talent_template_talents`: no modifying needed
c. `mod_npc_talent_template_glyphs`: no modifying needed
d. `mod_npc_talent_template_index`: modify gossipText and set `gossipAction`. Builds are listed by `gossipAction`, lowest at the top. `mask` limits what the build may apply (1 = gear, 2 = glyphs, 4 = talents, 7 = all); several rows with the same class and spec in the same category are shown as one build. Set `category` to group the build behind a sub-menu (empty = main menu); categories are ordered by `categoryOrder`, then by name (the bundled sets use 1xx = Classic, 2xx = TBC, 3xx = WotLK). You can override a column to re-use talents or glyphs or gear from another template. For example, talents and glyphs from `Restoration80PvP` can be re-used

`.templatenpc reload` to reload changes. Test with dropping `acore_characters.mod_npc_talent_template*` tables and updates from character db as needed
```sql
DELETE FROM acore_characters.updates WHERE name='npc_talent_template_data_1_80_pvp_s6.sql';
DELETE FROM acore_characters.updates WHERE name='npc_talent_template_data_2_70_pve_t6.sql';
DELETE FROM acore_characters.updates WHERE name='npc_talent_template.sql';
DROP TABLE IF EXISTS acore_characters.mod_npc_talent_template_gear;
DROP TABLE IF EXISTS acore_characters.mod_npc_talent_template_glyphs;
DROP TABLE IF EXISTS acore_characters.mod_npc_talent_template_index;
DROP TABLE IF EXISTS acore_characters.mod_npc_talent_template_talents;
```
