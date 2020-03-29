#ifndef TALENT_FUNCTIONS_H
#define TALENT_FUNCTIONS_H

#include "Creature.h"
#include "DBCStores.h"
#include "DatabaseEnv.h"
#include "Define.h"
#include "GossipDef.h"
#include "Item.h"
#include "Log.h"
#include "ObjectMgr.h"
#include "Player.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "ScriptedGossip.h"
#include "WorldSession.h"

#define SPELL_Amani_War_Bear 43688
#define SPELL_Artisan_Riding 34091
#define SPELL_Cold_Weather_Flying 54197
#define SPELL_Teach_Learn_Talent_Specialization_Switches 63680
#define SPELL_Learn_a_Second_Talent_Specialization 63624

enum TemplateType
{
    TEMPLATE_HUMAN,
    TEMPLATE_ALLIANCE,
    TEMPLATE_HORDE
};

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
    using ClassToWeapons = std::unordered_map<uint8, std::vector<WeaponProficiencies>>;
    static ClassToWeapons classToWeaponLookup = {{CLASS_WARRIOR,
                                                  {
                                                      THROW_WAR,
                                                      TWO_H_SWORDS,
                                                      TWO_H_MACES,
                                                      TWO_H_AXES,
                                                      STAVES,
                                                      POLEARMS,
                                                      ONE_H_SWORDS,
                                                      ONE_H_MACES,
                                                      ONE_H_AXES,
                                                      GUNS,
                                                      FIST_WEAPONS,
                                                      DAGGERS,
                                                      CROSSBOWS,
                                                      BOWS,
                                                      BLOCK,
                                                  }},
                                                 {CLASS_PRIEST,
                                                  {
                                                      WANDS,
                                                      STAVES,
                                                      SHOOT,
                                                      ONE_H_MACES,
                                                      DAGGERS,
                                                  }},
                                                 {CLASS_PALADIN,
                                                  {
                                                      TWO_H_SWORDS,
                                                      TWO_H_MACES,
                                                      TWO_H_AXES,
                                                      POLEARMS,
                                                      ONE_H_SWORDS,
                                                      ONE_H_MACES,
                                                      ONE_H_AXES,
                                                      BLOCK,
                                                  }},
                                                 {CLASS_ROGUE,
                                                  {
                                                      ONE_H_SWORDS,
                                                      ONE_H_MACES,
                                                      ONE_H_AXES,
                                                      GUNS,
                                                      FIST_WEAPONS,
                                                      DAGGERS,
                                                      CROSSBOWS,
                                                      BOWS,
                                                  }},
                                                 {CLASS_DEATH_KNIGHT,
                                                  {
                                                      TWO_H_SWORDS,
                                                      TWO_H_MACES,
                                                      TWO_H_AXES,
                                                      POLEARMS,
                                                      ONE_H_SWORDS,
                                                      ONE_H_MACES,
                                                      ONE_H_AXES,
                                                  }},
                                                 {CLASS_MAGE,
                                                  {
                                                      WANDS,
                                                      STAVES,
                                                      SHOOT,
                                                      ONE_H_SWORDS,
                                                      DAGGERS,
                                                  }},

                                                 {CLASS_SHAMAN,
                                                  {
                                                      TWO_H_MACES,
                                                      TWO_H_AXES,
                                                      STAVES,
                                                      ONE_H_MACES,
                                                      ONE_H_AXES,
                                                      FIST_WEAPONS,
                                                      DAGGERS,
                                                      BLOCK,
                                                  }},
                                                 {CLASS_HUNTER,
                                                  {
                                                      THROW_WAR,
                                                      TWO_H_SWORDS,
                                                      TWO_H_AXES,
                                                      STAVES,
                                                      POLEARMS,
                                                      ONE_H_SWORDS,
                                                      ONE_H_AXES,
                                                      GUNS,
                                                      FIST_WEAPONS,
                                                      DAGGERS,
                                                      CROSSBOWS,
                                                      BOWS,
                                                  }},
                                                 {CLASS_DRUID,
                                                  {
                                                      TWO_H_MACES,
                                                      STAVES,
                                                      POLEARMS,
                                                      ONE_H_MACES,
                                                      FIST_WEAPONS,
                                                      DAGGERS,
                                                  }},
                                                 {CLASS_WARLOCK,
                                                  {
                                                      WANDS,
                                                      STAVES,
                                                      SHOOT,
                                                      ONE_H_SWORDS,
                                                      DAGGERS,
                                                  }}};
    auto playerClassWepSkills = classToWeaponLookup.find(player->getClass())->second;
    for (auto playerClassWepSkill : playerClassWepSkills)
    {
        if (player->HasSpell(playerClassWepSkill))
            continue;
        player->learnSpell(playerClassWepSkill);
    }
    player->UpdateSkillsToMaxSkillsForLevel();
}

static void LearnPlateMailSpells(Player* player)
{
    switch (player->getClass())
    {
    case CLASS_WARRIOR:
    case CLASS_PALADIN:
    case CLASS_DEATH_KNIGHT:
        if (!player->HasSpell(PLATE_MAIL))
        {
            player->learnSpell(PLATE_MAIL);
        }
        break;
    case CLASS_SHAMAN:
    case CLASS_HUNTER:
        if (!player->HasSpell(MAIL))
        {
            player->learnSpell(MAIL);
        }
        break;
    default:
        break;
    }
}

struct TalentTemplate
{
    std::string playerClass;
    std::string playerSpec;
    uint32 talentId;
};

struct GlyphTemplate
{
    std::string playerClass;
    std::string playerSpec;
    uint8 slot;
    uint32 glyph;
};

struct HumanGearTemplate
{
    std::string playerClass;
    std::string playerSpec;
    uint8 pos;
    uint32 itemEntry;
    uint32 enchant;
    uint32 socket1;
    uint32 socket2;
    uint32 socket3;
    uint32 bonusEnchant;
    uint32 prismaticEnchant;
};

struct AllianceGearTemplate
{
    std::string playerClass;
    std::string playerSpec;
    uint8 pos;
    uint32 itemEntry;
    uint32 enchant;
    uint32 socket1;
    uint32 socket2;
    uint32 socket3;
    uint32 bonusEnchant;
    uint32 prismaticEnchant;
};

struct HordeGearTemplate
{
    std::string playerClass;
    std::string playerSpec;
    uint8 pos;
    uint32 itemEntry;
    uint32 enchant;
    uint32 socket1;
    uint32 socket2;
    uint32 socket3;
    uint32 bonusEnchant;
    uint32 prismaticEnchant;
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

    void Copy(Player* target, Player* src);
    void PurgeTemplate(Player* player, std::string& playerSpecStr, TemplateType type);
    void ExtractGearTemplateToDB(Player* player, std::string& playerSpecStr, TemplateType type);

    void ExtractTalentTemplateToDB(Player* /*player*/, std::string& /*playerSpecStr*/);
    void ExtractGlyphsTemplateToDB(Player* /*player*/, std::string& /*playerSpecStr*/);
    bool CanEquipTemplate(Player* /*player*/, std::string& /*playerSpecStr*/);

    std::string GetClassString(Player* /*player*/);

    void LearnTemplateTalents(Player* player, std::string sTalentsSpec);
    void LearnTemplateGlyphs(Player* player, std::string sTalentsSpec);
    void EquipTemplateGear(Player* player, std::string sTalentsSpec);

    GlyphContainer m_GlyphContainer;
    TalentContainer m_TalentContainer;

    HumanGearContainer m_HumanGearContainer;
    AllianceGearContainer m_AllianceGearContainer;
    HordeGearContainer m_HordeGearContainer;
};
#define sTemplateNpcMgr sTemplateNPC::instance()
#endif
