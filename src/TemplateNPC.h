#ifndef TALENT_FUNCTIONS_H
#define TALENT_FUNCTIONS_H

#include "Define.h"
#include "Player.h"
#include "Item.h"
#include "DBCStores.h"
#include "Log.h"
#include "DatabaseEnv.h"
#include "WorldSession.h"
#include "ScriptedGossip.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "GossipDef.h"
#include "Creature.h"
#include "ObjectMgr.h"

#define SPELL_Amani_War_Bear 43688
#define SPELL_Artisan_Riding 34091
#define SPELL_Cold_Weather_Flying 54197
#define SPELL_Teach_Learn_Talent_Specialization_Switches 63680
#define SPELL_Learn_a_Second_Talent_Specialization 63624

enum templateSpells
{
    PLATE_MAIL = 750,
    MAIL = 8737
};

enum WeaponProficiencies
{
    BLOCK = 107,
    BOWS = 264,
    CROSSBOWS = 5011,
    DAGGERS = 1180,
    FIST_WEAPONS = 15590,
    GUNS = 266,
    ONE_H_AXES = 196,
    ONE_H_MACES = 198,
    ONE_H_SWORDS = 201,
    POLEARMS = 200,
    SHOOT = 5019,
    STAVES = 227,
    TWO_H_AXES = 197,
    TWO_H_MACES = 199,
    TWO_H_SWORDS = 202,
    WANDS = 5009,
    THROW_WAR = 2567
};

static void LearnWeaponSkills(Player* player)
{
    WeaponProficiencies wepSkills[] = {
        BLOCK, BOWS, CROSSBOWS, DAGGERS, FIST_WEAPONS, GUNS, ONE_H_AXES, ONE_H_MACES,
        ONE_H_SWORDS, POLEARMS, SHOOT, STAVES, TWO_H_AXES, TWO_H_MACES, TWO_H_SWORDS, WANDS, THROW_WAR
    };

    uint32 size = 17;

    for (uint32 i = 0; i < size; ++i)
        if (player->HasSpell(wepSkills[i]))
            continue;

    switch (player->getClass())
    {
    case CLASS_WARRIOR:
        player->learnSpell(THROW_WAR);
        player->learnSpell(TWO_H_SWORDS);
        player->learnSpell(TWO_H_MACES);
        player->learnSpell(TWO_H_AXES);
        player->learnSpell(STAVES);
        player->learnSpell(POLEARMS);
        player->learnSpell(ONE_H_SWORDS);
        player->learnSpell(ONE_H_MACES);
        player->learnSpell(ONE_H_AXES);
        player->learnSpell(GUNS);
        player->learnSpell(FIST_WEAPONS);
        player->learnSpell(DAGGERS);
        player->learnSpell(CROSSBOWS);
        player->learnSpell(BOWS);
        player->learnSpell(BLOCK);
        break;
    case CLASS_PRIEST:
        player->learnSpell(WANDS);
        player->learnSpell(STAVES);
        player->learnSpell(SHOOT);
        player->learnSpell(ONE_H_MACES);
        player->learnSpell(DAGGERS);
        break;
    case CLASS_PALADIN:
        player->learnSpell(TWO_H_SWORDS);
        player->learnSpell(TWO_H_MACES);
        player->learnSpell(TWO_H_AXES);
        player->learnSpell(POLEARMS);
        player->learnSpell(ONE_H_SWORDS);
        player->learnSpell(ONE_H_MACES);
        player->learnSpell(ONE_H_AXES);
        player->learnSpell(BLOCK);
        break;
    case CLASS_ROGUE:
        player->learnSpell(ONE_H_SWORDS);
        player->learnSpell(ONE_H_MACES);
        player->learnSpell(ONE_H_AXES);
        player->learnSpell(GUNS);
        player->learnSpell(FIST_WEAPONS);
        player->learnSpell(DAGGERS);
        player->learnSpell(CROSSBOWS);
        player->learnSpell(BOWS);
        break;
    case CLASS_DEATH_KNIGHT:
        player->learnSpell(TWO_H_SWORDS);
        player->learnSpell(TWO_H_MACES);
        player->learnSpell(TWO_H_AXES);
        player->learnSpell(POLEARMS);
        player->learnSpell(ONE_H_SWORDS);
        player->learnSpell(ONE_H_MACES);
        player->learnSpell(ONE_H_AXES);
        break;
    case CLASS_MAGE:
        player->learnSpell(WANDS);
        player->learnSpell(STAVES);
        player->learnSpell(SHOOT);
        player->learnSpell(ONE_H_SWORDS);
        player->learnSpell(DAGGERS);
        break;
    case CLASS_SHAMAN:
        player->learnSpell(TWO_H_MACES);
        player->learnSpell(TWO_H_AXES);
        player->learnSpell(STAVES);
        player->learnSpell(ONE_H_MACES);
        player->learnSpell(ONE_H_AXES);
        player->learnSpell(FIST_WEAPONS);
        player->learnSpell(DAGGERS);
        player->learnSpell(BLOCK);
        break;
    case CLASS_HUNTER:
        player->learnSpell(THROW_WAR);
        player->learnSpell(TWO_H_SWORDS);
        player->learnSpell(TWO_H_AXES);
        player->learnSpell(STAVES);
        player->learnSpell(POLEARMS);
        player->learnSpell(ONE_H_SWORDS);
        player->learnSpell(ONE_H_AXES);
        player->learnSpell(GUNS);
        player->learnSpell(FIST_WEAPONS);
        player->learnSpell(DAGGERS);
        player->learnSpell(CROSSBOWS);
        player->learnSpell(BOWS);
        break;
    case CLASS_DRUID:
        player->learnSpell(TWO_H_MACES);
        player->learnSpell(STAVES);
        player->learnSpell(POLEARMS);
        player->learnSpell(ONE_H_MACES);
        player->learnSpell(FIST_WEAPONS);
        player->learnSpell(DAGGERS);
        break;
    case CLASS_WARLOCK:
        player->learnSpell(WANDS);
        player->learnSpell(STAVES);
        player->learnSpell(SHOOT);
        player->learnSpell(ONE_H_SWORDS);
        player->learnSpell(DAGGERS);
        break;
    default:
        break;
    }
    player->UpdateSkillsToMaxSkillsForLevel();

}

static void SpanishMenu(Player* player, Creature* creature)
{
    switch (player->getClass())
    {
    case CLASS_PRIEST:
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_holy_wordfortitude:30|t|r Disciplina", GOSSIP_SENDER_MAIN, 0);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Sagrado", GOSSIP_SENDER_MAIN, 1);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_shadow_shadowwordpain:30|t|r Sombras", GOSSIP_SENDER_MAIN, 2);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "----------------------------------------------", GOSSIP_SENDER_MAIN, 5000);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_holy_wordfortitude:30|t|r Disciplina (Solo Talentos)", GOSSIP_SENDER_MAIN, 100);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Sagrado (Solo Talentos)", GOSSIP_SENDER_MAIN, 101);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_shadow_shadowwordpain:30|t|r Sombras (Solo Talentos)", GOSSIP_SENDER_MAIN, 102);
        break;
    case CLASS_PALADIN:
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Sagrado", GOSSIP_SENDER_MAIN, 3);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_holy_devotionaura:30|t|r Proteccion Spec", GOSSIP_SENDER_MAIN, 4);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_holy_auraoflight:30|t|r Reprension Spec", GOSSIP_SENDER_MAIN, 5);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "----------------------------------------------", GOSSIP_SENDER_MAIN, 5000);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Sagrado (Solo Talentos)", GOSSIP_SENDER_MAIN, 103);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_holy_devotionaura:30|t|r Proteccion Spec (Solo Talentos)", GOSSIP_SENDER_MAIN, 104);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_holy_auraoflight:30|t|r Reprension Spec (Solo Talentos)", GOSSIP_SENDER_MAIN, 105);
        break;
    case CLASS_WARRIOR:
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_warrior_innerrage:30|t|r Furia", GOSSIP_SENDER_MAIN, 6);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_rogue_eviscerate:30|t|r Armas", GOSSIP_SENDER_MAIN, 7);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_warrior_defensivestance:30|t|r Proteccion", GOSSIP_SENDER_MAIN, 8);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "----------------------------------------------", GOSSIP_SENDER_MAIN, 5000);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_warrior_innerrage:30|t|r Furia (Solo Talentos)", GOSSIP_SENDER_MAIN, 106);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_rogue_eviscerate:30|t|r Armas (Solo Talentos)", GOSSIP_SENDER_MAIN, 107);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_warrior_defensivestance:30|t|r Proteccion (Solo Talentos)", GOSSIP_SENDER_MAIN, 108);
        break;
    case CLASS_MAGE:
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_holy_magicalsentry:30|t|r Arcano", GOSSIP_SENDER_MAIN, 9);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_fire_flamebolt:30|t|r Fuego", GOSSIP_SENDER_MAIN, 10);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_frost_frostbolt02:30|t|r Escarcha", GOSSIP_SENDER_MAIN, 11);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "----------------------------------------------", GOSSIP_SENDER_MAIN, 5000);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_holy_magicalsentry:30|t|r Arcano (Solo Talentos)", GOSSIP_SENDER_MAIN, 109);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_fire_flamebolt:30|t|r Fuego (Solo Talentos)", GOSSIP_SENDER_MAIN, 110);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_frost_frostbolt02:30|t|r Escarcha (Solo Talentos)", GOSSIP_SENDER_MAIN, 111);
        break;
    case CLASS_WARLOCK:
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_shadow_deathcoil:30|t|r Afliccion", GOSSIP_SENDER_MAIN, 12);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_shadow_metamorphosis:30|t|r Demoniologia", GOSSIP_SENDER_MAIN, 13);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_shadow_rainoffire:30|t|r Destruccion", GOSSIP_SENDER_MAIN, 14);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "----------------------------------------------", GOSSIP_SENDER_MAIN, 5000);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_shadow_deathcoil:30|t|r Afliccion (Solo Talentos)", GOSSIP_SENDER_MAIN, 112);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_shadow_metamorphosis:30|t|r Demoniologia (Solo Talentos)", GOSSIP_SENDER_MAIN, 113);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_shadow_rainoffire:30|t|r Destruccion (Solo Talentos)", GOSSIP_SENDER_MAIN, 114);
        break;
    case CLASS_SHAMAN:
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_nature_lightning:30|t|r Elemental", GOSSIP_SENDER_MAIN, 15);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_nature_lightningshield:30|t|r Mejora", GOSSIP_SENDER_MAIN, 16);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_nature_magicimmunity:30|t|r Restauracion", GOSSIP_SENDER_MAIN, 17);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "----------------------------------------------", GOSSIP_SENDER_MAIN, 5000);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_nature_lightning:30|t|r Elemental (Solo Talentos)", GOSSIP_SENDER_MAIN, 115);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_nature_lightningshield:30|t|r Mejora (Solo Talentos)", GOSSIP_SENDER_MAIN, 116);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_nature_magicimmunity:30|t|r Restauracion (Solo Talentos)", GOSSIP_SENDER_MAIN, 117);
        break;
    case CLASS_DRUID:
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_nature_starfall:30|t|r Equilibrio", GOSSIP_SENDER_MAIN, 18);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_racial_bearform:30|t|r Feral", GOSSIP_SENDER_MAIN, 19);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_nature_healingtouch:30|t|r Restauracion", GOSSIP_SENDER_MAIN, 20);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "----------------------------------------------", GOSSIP_SENDER_MAIN, 5000);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_nature_starfall:30|t|r Equilibrio (Solo Talentos)", GOSSIP_SENDER_MAIN, 118);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_racial_bearform:30|t|r Feral (Solo Talentos)", GOSSIP_SENDER_MAIN, 119);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_nature_healingtouch:30|t|r Restauracion (Solo Talentos)", GOSSIP_SENDER_MAIN, 120);
        break;
    case CLASS_HUNTER:
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_marksmanship:30|t|r Punteria", GOSSIP_SENDER_MAIN, 21);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_hunter_beasttaming:30|t|r Bestias", GOSSIP_SENDER_MAIN, 22);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_Hunter_swiftstrike:30|t|r Supervivencia", GOSSIP_SENDER_MAIN, 23);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "----------------------------------------------", GOSSIP_SENDER_MAIN, 5000);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_marksmanship:30|t|r Punteria (Solo Talentos)", GOSSIP_SENDER_MAIN, 121);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_hunter_beasttaming:30|t|r Bestias (Solo Talentos)", GOSSIP_SENDER_MAIN, 122);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_Hunter_swiftstrike:30|t|r Supervivencia (Solo Talentos)", GOSSIP_SENDER_MAIN, 123);
        break;
    case CLASS_ROGUE:
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_rogue_eviscerate:30|t|r Asesinato", GOSSIP_SENDER_MAIN, 24);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_backstab:30|t|r Combate", GOSSIP_SENDER_MAIN, 25);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_stealth:30|t|r Sutileza", GOSSIP_SENDER_MAIN, 26);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "----------------------------------------------", GOSSIP_SENDER_MAIN, 5000);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_rogue_eviscerate:30|t|r Asesinato (Solo Talentos)", GOSSIP_SENDER_MAIN, 124);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_backstab:30|t|r Combate (Solo Talentos)", GOSSIP_SENDER_MAIN, 125);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_stealth:30|t|r Sutileza (Solo Talentos)", GOSSIP_SENDER_MAIN, 126);
        break;
    case CLASS_DEATH_KNIGHT:
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_deathknight_bloodpresence:30|t|r Sangre", GOSSIP_SENDER_MAIN, 27);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_deathknight_frostpresence:30|t|r Escarcha", GOSSIP_SENDER_MAIN, 28);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_deathknight_unholypresence:30|t|r Profano", GOSSIP_SENDER_MAIN, 29);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "----------------------------------------------", GOSSIP_SENDER_MAIN, 5000);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_deathknight_bloodpresence:30|t|r Sangre (Solo Talentos)", GOSSIP_SENDER_MAIN, 127);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_deathknight_frostpresence:30|t|r Escarcha (Solo Talentos)", GOSSIP_SENDER_MAIN, 128);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_deathknight_unholypresence:30|t|r Profano (Solo Talentos)", GOSSIP_SENDER_MAIN, 129);
        break;
    }
}

static void EnglishMenu(Player* player, Creature* creature)
{
    switch (player->getClass())
    {
    case CLASS_PRIEST:
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_holy_wordfortitude:30|t|r Use Discipline Spec", GOSSIP_SENDER_MAIN, 0);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Use Holy Spec", GOSSIP_SENDER_MAIN, 1);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_shadow_shadowwordpain:30|t|r Use Shadow Spec", GOSSIP_SENDER_MAIN, 2);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "----------------------------------------------", GOSSIP_SENDER_MAIN, 5000);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_holy_wordfortitude:30|t|r Use Discipline Spec (Talents Only)", GOSSIP_SENDER_MAIN, 100);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Use Holy spec (Talents only)", GOSSIP_SENDER_MAIN, 101);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_shadow_shadowwordpain:30|t|r Use Shadow spec (Talents only)", GOSSIP_SENDER_MAIN, 102);
        break;
    case CLASS_PALADIN:
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Use Holy Spec", GOSSIP_SENDER_MAIN, 3);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_holy_devotionaura:30|t|r Use Protection Spec", GOSSIP_SENDER_MAIN, 4);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_holy_auraoflight:30|t|r Use Retribution Spec", GOSSIP_SENDER_MAIN, 5);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "----------------------------------------------", GOSSIP_SENDER_MAIN, 5000);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Use Holy Spec (Talents Only)", GOSSIP_SENDER_MAIN, 103);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_holy_devotionaura:30|t|r Use Protection Spec (Talents Only)", GOSSIP_SENDER_MAIN, 104);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_holy_auraoflight:30|t|r Use Retribution Spec (Talents Only)", GOSSIP_SENDER_MAIN, 105);
        break;
    case CLASS_WARRIOR:
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_warrior_innerrage:30|t|r Use Fury Spec", GOSSIP_SENDER_MAIN, 6);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_rogue_eviscerate:30|t|r Use Arms Spec", GOSSIP_SENDER_MAIN, 7);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_warrior_defensivestance:30|t|r Use Protection Spec", GOSSIP_SENDER_MAIN, 8);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "----------------------------------------------", GOSSIP_SENDER_MAIN, 5000);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_warrior_innerrage:30|t|r Use Fury Spec (Talents Only)", GOSSIP_SENDER_MAIN, 106);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_rogue_eviscerate:30|t|r Use Arms Spec (Talents Only)", GOSSIP_SENDER_MAIN, 107);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_warrior_defensivestance:30|t|r Use Protection Spec (Talents Only)", GOSSIP_SENDER_MAIN, 108);
        break;
    case CLASS_MAGE:
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_holy_magicalsentry:30|t|r Use Arcane Spec", GOSSIP_SENDER_MAIN, 9);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_fire_flamebolt:30|t|r Use Fire Spec", GOSSIP_SENDER_MAIN, 10);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_frost_frostbolt02:30|t|r Use Frost Spec", GOSSIP_SENDER_MAIN, 11);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "----------------------------------------------", GOSSIP_SENDER_MAIN, 5000);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_holy_magicalsentry:30|t|r Use Arcane Spec (Talents Only)", GOSSIP_SENDER_MAIN, 109);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_fire_flamebolt:30|t|r Use Fire Spec (Talents Only)", GOSSIP_SENDER_MAIN, 110);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_frost_frostbolt02:30|t|r Use Frost Spec (Talents Only)", GOSSIP_SENDER_MAIN, 111);
        break;
    case CLASS_WARLOCK:
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_shadow_deathcoil:30|t|r Use Affliction Spec", GOSSIP_SENDER_MAIN, 12);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_shadow_metamorphosis:30|t|r Use Demonology Spec", GOSSIP_SENDER_MAIN, 13);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_shadow_rainoffire:30|t|r Use Destruction Spec", GOSSIP_SENDER_MAIN, 14);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "----------------------------------------------", GOSSIP_SENDER_MAIN, 5000);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_shadow_deathcoil:30|t|r Use Affliction Spec (Talents Only)", GOSSIP_SENDER_MAIN, 112);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_shadow_metamorphosis:30|t|r Use Demonology Spec (Talents Only)", GOSSIP_SENDER_MAIN, 113);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_shadow_rainoffire:30|t|r Use Destruction Spec (Talents Only)", GOSSIP_SENDER_MAIN, 114);
        break;
    case CLASS_SHAMAN:
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_nature_lightning:30|t|r Use Elemental Spec", GOSSIP_SENDER_MAIN, 15);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_nature_lightningshield:30|t|r Use Enhancement Spec", GOSSIP_SENDER_MAIN, 16);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_nature_magicimmunity:30|t|r Use Restoration Spec", GOSSIP_SENDER_MAIN, 17);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "----------------------------------------------", GOSSIP_SENDER_MAIN, 5000);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_nature_lightning:30|t|r Use Elemental Spec (Talents Only)", GOSSIP_SENDER_MAIN, 115);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_nature_lightningshield:30|t|r Use Enhancement Spec (Talents Only)", GOSSIP_SENDER_MAIN, 116);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_nature_magicimmunity:30|t|r Use Restoration Spec (Talents Only)", GOSSIP_SENDER_MAIN, 117);
        break;
    case CLASS_DRUID:
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_nature_starfall:30|t|r Use Ballance Spec", GOSSIP_SENDER_MAIN, 18);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_racial_bearform:30|t|r Use Feral Spec", GOSSIP_SENDER_MAIN, 19);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_nature_healingtouch:30|t|r Use Restoration Spec", GOSSIP_SENDER_MAIN, 20);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "----------------------------------------------", GOSSIP_SENDER_MAIN, 5000);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_nature_starfall:30|t|r Use Ballance Spec (Talents Only)", GOSSIP_SENDER_MAIN, 118);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_racial_bearform:30|t|r Use Feral Spec (Talents Only)", GOSSIP_SENDER_MAIN, 119);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_nature_healingtouch:30|t|r Use Restoration Spec (Talents Only)", GOSSIP_SENDER_MAIN, 120);
        break;
    case CLASS_HUNTER:
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_marksmanship:30|t|r Use Marksmanship Spec", GOSSIP_SENDER_MAIN, 21);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_hunter_beasttaming:30|t|r Use Beastmastery Spec", GOSSIP_SENDER_MAIN, 22);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_Hunter_swiftstrike:30|t|r Use Survival Spec", GOSSIP_SENDER_MAIN, 23);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "----------------------------------------------", GOSSIP_SENDER_MAIN, 5000);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_marksmanship:30|t|r Use Marksmanship Spec (Talents Only)", GOSSIP_SENDER_MAIN, 121);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_hunter_beasttaming:30|t|r Use Beastmastery Spec (Talents Only)", GOSSIP_SENDER_MAIN, 122);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_Hunter_swiftstrike:30|t|r Use Survival Spec (Talents Only)", GOSSIP_SENDER_MAIN, 123);
        break;
    case CLASS_ROGUE:
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_rogue_eviscerate:30|t|r Use Assasination Spec", GOSSIP_SENDER_MAIN, 24);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_backstab:30|t|r Use Combat Spec", GOSSIP_SENDER_MAIN, 25);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_stealth:30|t|r Use Subtlety Spec", GOSSIP_SENDER_MAIN, 26);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "----------------------------------------------", GOSSIP_SENDER_MAIN, 5000);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_rogue_eviscerate:30|t|r Use Assasination Spec (Talents Only)", GOSSIP_SENDER_MAIN, 124);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_backstab:30|t|r Use Combat Spec (Talents Only)", GOSSIP_SENDER_MAIN, 125);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_stealth:30|t|r Use Subtlety Spec (Talents Only)", GOSSIP_SENDER_MAIN, 126);
        break;
    case CLASS_DEATH_KNIGHT:
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_deathknight_bloodpresence:30|t|r Use Blood Spec", GOSSIP_SENDER_MAIN, 27);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_deathknight_frostpresence:30|t|r Use Frost Spec", GOSSIP_SENDER_MAIN, 28);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_deathknight_unholypresence:30|t|r Use Unholy Spec", GOSSIP_SENDER_MAIN, 29);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "----------------------------------------------", GOSSIP_SENDER_MAIN, 5000);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_deathknight_bloodpresence:30|t|r Use Blood Spec (Talents Only)", GOSSIP_SENDER_MAIN, 127);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_deathknight_frostpresence:30|t|r Use Frost Spec (Talents Only)", GOSSIP_SENDER_MAIN, 128);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_deathknight_unholypresence:30|t|r Use Unholy Spec (Talents Only)", GOSSIP_SENDER_MAIN, 129);
        break;
    }
}

struct TalentTemplate
{
    std::string    playerClass;
    std::string    playerSpec;
    uint32         talentId;
};

struct GlyphTemplate
{
    std::string    playerClass;
    std::string    playerSpec;
    uint8          slot;
    uint32         glyph;
};

struct HumanGearTemplate
{
    std::string    playerClass;
    std::string    playerSpec;
    uint8          pos;
    uint32         itemEntry;
    uint32         enchant;
    uint32         socket1;
    uint32         socket2;
    uint32         socket3;
    uint32         bonusEnchant;
    uint32         prismaticEnchant;
};

struct AllianceGearTemplate
{
    std::string    playerClass;
    std::string    playerSpec;
    uint8          pos;
    uint32         itemEntry;
    uint32         enchant;
    uint32         socket1;
    uint32         socket2;
    uint32         socket3;
    uint32         bonusEnchant;
    uint32         prismaticEnchant;
};

struct HordeGearTemplate
{
    std::string    playerClass;
    std::string    playerSpec;
    uint8          pos;
    uint32         itemEntry;
    uint32         enchant;
    uint32         socket1;
    uint32         socket2;
    uint32         socket3;
    uint32         bonusEnchant;
    uint32         prismaticEnchant;
};

typedef std::vector<HumanGearTemplate*> HumanGearContainer;
typedef std::vector<AllianceGearTemplate*> AllianceGearContainer;
typedef std::vector<HordeGearTemplate*> HordeGearContainer;

typedef std::vector<TalentTemplate*> TalentContainer;
typedef std::vector<GlyphTemplate*> GlyphContainer;

class sTemplateNPC
{
public:
    static sTemplateNPC* instance()
    {
        static sTemplateNPC* instance = new sTemplateNPC();
        return instance;
    }
    void LoadTalentsContainer();
    void LoadGlyphsContainer();

    void LoadHumanGearContainer();
    void LoadAllianceGearContainer();
    void LoadHordeGearContainer();

    void ApplyGlyph(Player* player, uint8 slot, uint32 glyphID);
    void RemoveAllGlyphs(Player* player);
    void ApplyBonus(Player* player, Item* item, EnchantmentSlot slot, uint32 bonusEntry);

    bool OverwriteTemplate(Player* /*player*/, std::string& /*playerSpecStr*/);
    void ExtractGearTemplateToDB(Player* /*player*/, std::string& /*playerSpecStr*/);
    void ExtractTalentTemplateToDB(Player* /*player*/, std::string& /*playerSpecStr*/);
    void ExtractGlyphsTemplateToDB(Player* /*player*/, std::string& /*playerSpecStr*/);
    bool CanEquipTemplate(Player* /*player*/, std::string& /*playerSpecStr*/);

    std::string GetClassString(Player* /*player*/);
    std::string sTalentsSpec;

    void LearnTemplateTalents(Player* /*player*/);
    void LearnTemplateGlyphs(Player* /*player*/);
    void EquipTemplateGear(Player* /*player*/);

    void LearnPlateMailSpells(Player* /*player*/);

    GlyphContainer m_GlyphContainer;
    TalentContainer m_TalentContainer;

    HumanGearContainer m_HumanGearContainer;
    AllianceGearContainer m_AllianceGearContainer;
    HordeGearContainer m_HordeGearContainer;
};
#define sTemplateNpcMgr sTemplateNPC::instance()
#endif
