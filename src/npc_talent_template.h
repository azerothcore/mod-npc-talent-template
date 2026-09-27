#ifndef TALENT_FUNCTIONS_H
#define TALENT_FUNCTIONS_H

#include "Player.h"
#include "ScriptMgr.h"

#define MODULE_STRING "npc-talent-template"

enum TemplateNpcMisc
{
    TEMPLATE_NPC_FACTION_ASHTONGUE_DEATHSWORN = 1012,
    TEMPLATE_NPC_REP_AMOUNT_EXALTED = 42000,
};

enum TemplateNpcStrings
{
    ERROR_NPC_TALENT_TEMPLATE_MUST_REMOVE_EQUIPPED = 1,
    ERROR_NPC_TALENT_TEMPLATE_MUST_RESET_TALENTS = 2,
    SUCCESS_NPC_TALENT_TEMPLATE_EQUIPPED_TEMPLATE = 3,
    SUCCESS_NPC_TALENT_TEMPLATE_DESTROYED_EQUIPPED_GEAR = 4,
    SUCCESS_NPC_TALENT_TEMPLATE_REMOVED_GLYPHS = 5,
    SUCCESS_NPC_TALENT_TEMPLATE_COPIED = 6,
    // Extract
    ERROR_NPC_TALENT_TEMPLATE_EXTRACT_MUST_SPEND_ALL_TALENT_POINTS = 7,
    ERROR_NPC_TALENT_TEMPLATE_EXTRACT_GET_GLYPHS = 8,
    SUCCESS_NPC_TALENT_TEMPLATE_EXTRACT = 9,
    SUCCESS_NPC_TALENT_TEMPLATE_EXTRACT_INFO = 10,
    // Reload
    FEEDBACK_NPC_TALENT_TEMPLATE_RELOADING = 11,
    SUCCESS_NPC_TALENT_TEMPLATE_RELOADED = 12,
};

enum TemplateNpcSpells
{
    SPELL_BIG_BATTLE_BEAR = 51412, // Default mount if no config
    SPELL_ARTISAN_RIDING = 34091,
    SPELL_COLD_WEATHER_FLYING = 54197,
    SPELL_LEARN_A_SECOND_TALENT_SPECIALIZATION = 63624,
    SPELL_MASTER_HAMMERSMITH = 17040,
    SPELL_TEACH_LEARN_TALENT_SPECIALIZATION_SWITCHES = 63680,
    // Armor proficiency
    SPELL_PLATE_MAIL = 750,
    SPELL_MAIL = 8737
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

struct GearTemplate
{
    std::string playerClass;
    std::string playerSpec;
    uint32 playerRaceMask;
    uint8 pos;
    uint32 itemEntry;
    uint32 enchant;
    uint32 socket1;
    uint32 socket2;
    uint32 socket3;
    uint32 bonusEnchant;
    uint32 prismaticEnchant;
};

// Gossip menus are told apart by the sender; the action carries the menu's argument.
//   root       SENDER_MAIN         action = GossipMainActions
//   category   SENDER_CATEGORY     action = index into the player's category list
//   build      SENDER_BUILD        action = index into indexContainer
//   apply      SENDER_APPLY_BASE + TemplateFlags, action = index into indexContainer
//   reset      SENDER_RESET        action = GossipResetActions
enum GossipSenders
{
    SENDER_MAIN = 1, // GOSSIP_SENDER_MAIN
    SENDER_CATEGORY = 2,
    SENDER_BUILD = 3,
    SENDER_RESET = 4,
    SENDER_APPLY_BASE = 100,
};

enum GossipMainActions
{
    GOSSIP_ACTION_ROOT = 0,
    GOSSIP_ACTION_SPACER = 1, // ---------
    GOSSIP_ACTION_RESET_MENU = 2,
};

enum GossipResetActions
{
    GOSSIP_ACTION_RESET_ALL = 0,
    GOSSIP_ACTION_RESET_TALENTS = 1,
    GOSSIP_ACTION_RESET_PET_TALENTS = 2,
    GOSSIP_ACTION_RESET_REMOVE_GLYPHS = 3,
    GOSSIP_ACTION_RESET_REMOVE_EQUIPPED_GEAR = 4,
};

enum TemplateFlags
{
    TEMPLATE_APPLY_GEAR = 0x1,
    TEMPLATE_APPLY_GLYPHS = 0x2,
    TEMPLATE_APPLY_TALENTS = 0x4,

    TEMPLATE_APPLY_ALL = TEMPLATE_APPLY_GEAR | TEMPLATE_APPLY_TALENTS | TEMPLATE_APPLY_GLYPHS,
};

struct IndexTemplate
{
    std::string playerClass;
    std::string playerSpec;
    uint32 gossipAction;
    std::string gossipText;
    TemplateFlags mask;
    uint32 minLevel;
    uint32 maxLevel;
    std::string gearOverride;    // use playerSpec if not set
    std::string glyphOverride;   // use playerSpec if not set
    std::string talentOverride;  // use playerSpec if not set
    std::string category;        // non-empty = grouped behind a sub-menu; empty = root menu
    uint32 categoryOrder;        // sort key of the category in the root menu (then by name)
};

typedef std::vector<TalentTemplate*> TalentContainer;
typedef std::vector<GlyphTemplate*> GlyphContainer;
typedef std::vector<GearTemplate*> GearContainer;
typedef std::vector<IndexTemplate*> IndexContainer;

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
    void LoadGearContainer();
    void LoadIndexContainer();

    void ApplyGlyph(Player* player, uint8 slot, uint32 glyphID);
    void RemoveAllGlyphs(Player* player);
    void ApplyBonus(Player* player, Item* item, EnchantmentSlot slot, uint32 bonusEntry);

    bool OverwriteTemplate(Player* player, const std::string& playerSpec);
    void ExtractGearTemplateToDB(Player* player, const std::string& playerSpec);
    void ExtractTalentTemplateToDB(Player* player, const std::string& playerSpec);
    void ExtractGlyphsTemplateToDB(Player* player, const std::string& playerSpec);
    void InsertIndexEntryToDB(Player* player, const std::string& playerSpec);
    bool IsWearingAnyGear(Player* player);
    bool HasSpentTalentPoints(Player* player);

    std::string GetClassString(Player* player);

    void EquipTemplateGear(Player* player, const std::string& sGear);
    void SatisfyExtraGearRequirements(Player* player, const std::string& sGear);
    void LearnTemplateTalents(Player* player, const std::string& sTalents);
    void LearnTemplateGlyphs(Player* player, const std::string& sGlyphs);
    void ApplyTemplate(Player* player, IndexTemplate* indexTemplate, TemplateFlags flags);
    bool HasGearTemplate(Player* player, std::string const& sGear);
    bool HasTalentTemplate(Player* player, std::string const& sTalents);
    bool HasGlyphTemplate(Player* player, std::string const& sGlyphs);

    void LearnPlateMailSpells(Player* player);

    GearContainer gearContainer;
    GlyphContainer glyphContainer;
    TalentContainer talentContainer;
    IndexContainer indexContainer;

    bool enableResetTalents;
    bool enableRemoveAllGlyphs;
    bool enableDestroyEquippedGear;
    uint32 allianceMount;
    uint32 hordeMount;
};

#define sTemplateNpcMgr sTemplateNPC::instance()
#endif
