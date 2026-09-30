#include "npc_talent_template.h"

#include "Chat.h"
#include "Config.h"
#include "Creature.h"
#include "ReputationMgr.h"
#include "ScriptedGossip.h"
#include "SpellMgr.h"

#include <algorithm>
#include <cctype>
#include <optional>

#define DEFAULT_GOSSIP_ACTION_ENTRY 9999 // default value for gossipAction when creating new template

enum TalentsAndSpells
{
    TALENT_MANGLE = 33917,
    SPELL_MANGLE_CAT = 33876, // Rank 1
    SPELL_MANGLE_BEAR = 33878 // Rank 1
};

void sTemplateNPC::LearnPlateMailSpells(Player *player)
{
    switch (player->getClass())
    {
        case CLASS_WARRIOR:
        case CLASS_PALADIN:
        case CLASS_DEATH_KNIGHT:
            player->learnSpell(SPELL_PLATE_MAIL);
            break;
        case CLASS_SHAMAN:
        case CLASS_HUNTER:
            player->learnSpell(SPELL_MAIL);
            break;
        default:
        break;
    }
}

void sTemplateNPC::ApplyBonus(Player* player, Item* item, EnchantmentSlot slot, uint32 bonusEntry)
{
    if (!item)
        return;

    if (!bonusEntry)
        return;

    player->ApplyEnchantment(item, slot, false);
    item->SetEnchantment(slot, bonusEntry, 0, 0);
    player->ApplyEnchantment(item, slot, true);
}

void sTemplateNPC::ApplyGlyph(Player* player, uint8 slot, uint32 glyphID)
{
    if (uint32 oldGlyph = player->GetGlyph(slot))
    {
        player->RemoveAurasDueToSpell(sGlyphPropertiesStore.LookupEntry(oldGlyph)->SpellId);
        player->SetGlyph(slot, 0, true);
    }
    if (GlyphPropertiesEntry const* gp = sGlyphPropertiesStore.LookupEntry(glyphID))
    {
        player->CastSpell(player, gp->SpellId, true);
        player->SetGlyph(slot, glyphID, true);
    }
}

void sTemplateNPC::RemoveAllGlyphs(Player* player)
{
    for (uint8 i = 0; i < MAX_GLYPH_SLOT_INDEX; ++i)
        if (uint32 glyph = player->GetGlyph(i))
            if (GlyphPropertiesEntry const* gp = sGlyphPropertiesStore.LookupEntry(glyph))
                if (sGlyphSlotStore.LookupEntry(player->GetGlyphSlot(i)))
                {
                    player->RemoveAurasDueToSpell(gp->SpellId);
                    player->SetGlyph(i, 0, true);
                    player->SendTalentsInfoData(false); // this is somewhat an in-game glyph realtime update (apply/remove)
                }
}

void sTemplateNPC::LearnTemplateTalents(Player* player, const std::string& sTalents)
{
    for (auto const& talentTemplate : talentContainer)
        if (talentTemplate->playerClass == GetClassString(player).c_str() && talentTemplate->playerSpec == sTalents)
        {
            player->learnSpellHighRank(talentTemplate->talentId);
            player->addTalent(talentTemplate->talentId, player->GetActiveSpecMask(), 0);

            if (talentTemplate->talentId == TALENT_MANGLE)
            {
                player->CastSpell(player, TALENT_MANGLE, true); // teaches 'Mangle (Cat)' and 'Mangle (Bear)'

                // Learn highest rank of Mangle
                auto LearnHighestRankForLevel = [player](uint32 baseRankId)
                {
                    for (uint32 id = baseRankId; id; id = sSpellMgr->GetNextSpellInChain(id))
                    {
                        const SpellInfo* info = sSpellMgr->GetSpellInfo(id);
                        if (!info || info->BaseLevel > player->GetLevel())
                               break;
                        player->learnSpell(id);
                    }
                };
                LearnHighestRankForLevel(SPELL_MANGLE_CAT);
                LearnHighestRankForLevel(SPELL_MANGLE_BEAR);
            }
        }
    player->InitTalentForLevel();
}

void sTemplateNPC::LearnTemplateGlyphs(Player* player, const std::string& sGlyphs)
{
    for (auto const& glyphTemplate : glyphContainer)
        if (glyphTemplate->playerClass == GetClassString(player).c_str() && glyphTemplate->playerSpec == sGlyphs)
            ApplyGlyph(player, glyphTemplate->slot, glyphTemplate->glyph);
    player->SendTalentsInfoData(false);
}

void sTemplateNPC::EquipTemplateGear(Player* player, const std::string& sGear)
{
    for (auto const& gearTemplate : gearContainer)
        if (gearTemplate->playerClass == GetClassString(player).c_str() &&
            gearTemplate->playerSpec == sGear &&
            gearTemplate->playerRaceMask & player->getRaceMask())
        {
            if (Item* item = player->EquipNewItem(gearTemplate->pos, gearTemplate->itemEntry, true))
            {
                ApplyBonus(player, item, PERM_ENCHANTMENT_SLOT, gearTemplate->enchant);
                ApplyBonus(player, item, BONUS_ENCHANTMENT_SLOT, gearTemplate->bonusEnchant);
                ApplyBonus(player, item, PRISMATIC_ENCHANTMENT_SLOT, gearTemplate->prismaticEnchant);
                ApplyBonus(player, item, SOCK_ENCHANTMENT_SLOT_2, gearTemplate->socket2);
                ApplyBonus(player, item, SOCK_ENCHANTMENT_SLOT_3, gearTemplate->socket3);
                ApplyBonus(player, item, SOCK_ENCHANTMENT_SLOT, gearTemplate->socket1);
            }
        }
}

void sTemplateNPC::LoadTalentsContainer()
{
    for (auto* talent : talentContainer)
        delete talent;
    talentContainer.clear();

    uint32 oldMSTime = getMSTime();
    uint32 count = 0;

    QueryResult result = CharacterDatabase.Query("SELECT `playerClass`, `playerSpec`, `talentId` FROM `mod_npc_talent_template_talents`");

    if (!result)
    {
        LOG_WARN("sql.sql", ">> TEMPLATE NPC: Loaded 0 talent templates. DB table `mod_npc_talent_template_talents` is empty!");
        return;
    }

    do
    {
        Field* fields = result->Fetch();

        TalentTemplate *pTalent = new TalentTemplate;

        pTalent->playerClass = fields[0].Get<std::string>();
        pTalent->playerSpec = fields[1].Get<std::string>();
        pTalent->talentId = fields[2].Get<uint32>();

        talentContainer.push_back(pTalent);
        ++count;
    } while (result->NextRow());
    LOG_INFO("module", ">> TEMPLATE NPC: Loaded {} talent templates in {} ms.", count, GetMSTimeDiffToNow(oldMSTime));
}

void sTemplateNPC::LoadGlyphsContainer()
{
    for (auto* glyph : glyphContainer)
        delete glyph;
    glyphContainer.clear();

    QueryResult result = CharacterDatabase.Query("SELECT `playerClass`, `playerSpec`, `slot`, `glyph` FROM `mod_npc_talent_template_glyphs`");

    uint32 oldMSTime = getMSTime();
    uint32 count = 0;

    if (!result)
    {
        LOG_WARN("sql.sql", ">> TEMPLATE NPC: Loaded 0 glyph templates. DB table `mod_npc_talent_template_glyphs` is empty!");
        return;
    }

    do
    {
        Field* fields = result->Fetch();

        GlyphTemplate* glyph = new GlyphTemplate;

        glyph->playerClass = fields[0].Get<std::string>();
        glyph->playerSpec = fields[1].Get<std::string>();
        glyph->slot = fields[2].Get<uint8>();
        glyph->glyph = fields[3].Get<uint32>();

        glyphContainer.push_back(glyph);
        ++count;
    } while (result->NextRow());

    LOG_INFO("module", ">> TEMPLATE NPC: Loaded {} glyph templates in {} ms.", count, GetMSTimeDiffToNow(oldMSTime));
}

void sTemplateNPC::LoadGearContainer()
{
    for (auto* gear : gearContainer)
        delete gear;
    gearContainer.clear();

    QueryResult result = CharacterDatabase.Query("SELECT `playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant` FROM `mod_npc_talent_template_gear`");

    uint32 oldMSTime = getMSTime();
    uint32 count = 0;

    if (!result)
    {
        LOG_INFO("module", ">> TEMPLATE NPC: Loaded 0 gear templates. DB table `mod_npc_talent_template_gear` is empty!");
        return;
    }

    do
    {
        Field* fields = result->Fetch();

        GearTemplate* item = new GearTemplate;

        item->playerClass = fields[0].Get<std::string>();
        item->playerSpec = fields[1].Get<std::string>();
        item->playerRaceMask = fields[2].Get<uint32>();
        item->pos = fields[3].Get<uint8>();
        item->itemEntry = fields[4].Get<uint32>();
        item->enchant = fields[5].Get<uint32>();
        item->socket1 = fields[6].Get<uint32>();
        item->socket2 = fields[7].Get<uint32>();
        item->socket3 = fields[8].Get<uint32>();
        item->bonusEnchant = fields[9].Get<uint32>();
        item->prismaticEnchant = fields[10].Get<uint32>();

        gearContainer.push_back(item);
        ++count;
    } while (result->NextRow());

    // Reverse sort so we equip items from trinket to helm so we avoid issue with meta gems
    std::ranges::sort(gearContainer, std::greater<>());

    LOG_INFO("module", ">> TEMPLATE NPC: Loaded {} gear templates in {} ms.", count, GetMSTimeDiffToNow(oldMSTime));
}

void sTemplateNPC::LoadIndexContainer()
{
    for (auto* index : indexContainer)
        delete index;
    indexContainer.clear();
    ++indexReloads;

    QueryResult result = CharacterDatabase.Query("SELECT `playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `gearOverride`, `glyphOverride`, `talentOverride`, `category`, `categoryOrder` FROM `mod_npc_talent_template_index` ORDER BY `gossipAction`;");

    uint32 oldMSTime = getMSTime();
    uint32 count = 0;

    if (!result)
    {
        LOG_INFO("module", ">> TEMPLATE NPC: Loaded 0 index templates. DB table `mod_npc_talent_template_index` is empty!");
        return;
    }

    do
    {
        Field* fields = result->Fetch();

        IndexTemplate* indexTemplate = new IndexTemplate;

        indexTemplate->playerClass = fields[0].Get<std::string>();
        indexTemplate->playerSpec = fields[1].Get<std::string>();
        indexTemplate->gossipAction = fields[2].Get<uint32>();
        indexTemplate->gossipText = fields[3].Get<std::string>();
        indexTemplate->mask = static_cast<TemplateFlags>(fields[4].Get<uint32>());
        indexTemplate->minLevel = fields[5].Get<uint32>();
        indexTemplate->maxLevel = fields[6].Get<uint32>();
        indexTemplate->gearOverride = fields[7].Get<std::string>();
        if (indexTemplate->gearOverride.empty())
            indexTemplate->gearOverride = indexTemplate->playerSpec;
        indexTemplate->glyphOverride = fields[8].Get<std::string>();
        if (indexTemplate->glyphOverride.empty())
            indexTemplate->glyphOverride = indexTemplate->playerSpec;
        indexTemplate->talentOverride = fields[9].Get<std::string>();
        if (indexTemplate->talentOverride.empty())
            indexTemplate->talentOverride = indexTemplate->playerSpec;
        indexTemplate->category = fields[10].Get<std::string>();
        indexTemplate->categoryOrder = fields[11].Get<uint32>();

        indexContainer.push_back(indexTemplate);
        ++count;
    } while (result->NextRow());

    LOG_INFO("module", ">> TEMPLATE NPC: Loaded {} index templates in {} ms.", count, GetMSTimeDiffToNow(oldMSTime));
}

std::string sTemplateNPC::GetClassString(Player* player)
{
    return EnumUtils::ToTitle(Classes(player->getClass()));
}

bool sTemplateNPC::OverwriteTemplate(Player* player, const std::string& playerSpec)
{
    // Delete old talent, glyph, and gear templates before extracting new ones
    CharacterDatabase.Execute("DELETE FROM `mod_npc_talent_template_talents` WHERE `playerClass`='{}' AND `playerSpec`='{}'", GetClassString(player).c_str(), playerSpec.c_str());
    CharacterDatabase.Execute("DELETE FROM `mod_npc_talent_template_glyphs` WHERE `playerClass`='{}' AND `playerSpec`='{}'", GetClassString(player).c_str(), playerSpec.c_str());
    CharacterDatabase.Execute("DELETE FROM `mod_npc_talent_template_gear` WHERE `playerClass`='{}' AND `playerSpec`='{}' AND `playerRaceMask` & {}", GetClassString(player).c_str(), playerSpec.c_str(), player->getRaceMask());
    CharacterDatabase.Execute("DELETE FROM `mod_npc_talent_template_index` WHERE `playerClass`='{}' AND `playerSpec`='{}'", GetClassString(player).c_str(), playerSpec.c_str());
    return false;
}

void sTemplateNPC::ExtractGearTemplateToDB(Player* player, const std::string& playerSpec)
{
    for (uint8 i = EQUIPMENT_SLOT_START; i < EQUIPMENT_SLOT_END; ++i)
        if (Item* equippedItem = player->GetItemByPos(INVENTORY_SLOT_BAG_0, i))
            CharacterDatabase.Execute("INSERT INTO `mod_npc_talent_template_gear` (`playerClass`, `playerSpec`, `playerRaceMask`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES ('{}', '{}', {}, {}, {}, {}, {}, {}, {}, {}, {});", GetClassString(player).c_str(), playerSpec.c_str(), player->getRaceMask(), equippedItem->GetSlot(), equippedItem->GetEntry(), equippedItem->GetEnchantmentId(PERM_ENCHANTMENT_SLOT), equippedItem->GetEnchantmentId(SOCK_ENCHANTMENT_SLOT), equippedItem->GetEnchantmentId(SOCK_ENCHANTMENT_SLOT_2), equippedItem->GetEnchantmentId(SOCK_ENCHANTMENT_SLOT_3), equippedItem->GetEnchantmentId(BONUS_ENCHANTMENT_SLOT), equippedItem->GetEnchantmentId(PRISMATIC_ENCHANTMENT_SLOT));
}

void sTemplateNPC::InsertIndexEntryToDB(Player* player, const std::string& playerSpec)
{
    CharacterDatabase.Execute(
        "INSERT INTO `mod_npc_talent_template_index` (`playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`) VALUES ('{}', '{}', {}, '{}', {}, {}, {});",
        GetClassString(player).c_str(), playerSpec.c_str(), DEFAULT_GOSSIP_ACTION_ENTRY, "|cff00ff00|TInterface\\\\icons\\\\Trade_Engineering:30:30|t|r Update this gossip text in the index!", 1, player->GetLevel(), player->GetLevel()
    );
}

void sTemplateNPC::ExtractTalentTemplateToDB(Player* player, const std::string& playerSpec)
{
    QueryResult result = CharacterDatabase.Query("SELECT `spell` FROM `character_talent` WHERE `guid`={} AND `specMask`&{}", player->GetGUID().GetCounter(), player->GetActiveSpecMask());

    if (!result)
        return;

    if (player->GetFreeTalentPoints() > 0)
    {
        player->GetSession()->SendAreaTriggerMessage(player->GetSession()->GetModuleString(MODULE_STRING, ERROR_NPC_TALENT_TEMPLATE_EXTRACT_MUST_SPEND_ALL_TALENT_POINTS)->c_str());
        ChatHandler(player->GetSession()).PSendModuleSysMessage(MODULE_STRING, ERROR_NPC_TALENT_TEMPLATE_EXTRACT_MUST_SPEND_ALL_TALENT_POINTS);
        return;
    }

    do
    {
        Field* fields = result->Fetch();
        uint32 spell = fields[0].Get<uint32>();

        CharacterDatabase.Execute("INSERT INTO `mod_npc_talent_template_talents` (`playerClass`, `playerSpec`, `talentId`) VALUES ('{}', '{}', {})", GetClassString(player).c_str(), playerSpec.c_str(), spell);
    } while (result->NextRow());
}

void sTemplateNPC::ExtractGlyphsTemplateToDB(Player* player, const std::string& playerSpec)
{
    QueryResult result = CharacterDatabase.Query("SELECT `glyph1`, `glyph2`, `glyph3`, `glyph4`, `glyph5`, `glyph6` FROM `character_glyphs` WHERE `guid`={} AND `talentGroup`={}", player->GetGUID().GetCounter(), player->GetActiveSpec());

    if (!result)
    {
        player->GetSession()->SendAreaTriggerMessage(player->GetSession()->GetModuleString(MODULE_STRING, ERROR_NPC_TALENT_TEMPLATE_EXTRACT_GET_GLYPHS)->c_str());
        ChatHandler(player->GetSession()).PSendModuleSysMessage(MODULE_STRING, ERROR_NPC_TALENT_TEMPLATE_EXTRACT_GET_GLYPHS);
        return;
    }

    for (uint8 slot = 0; slot < MAX_GLYPH_SLOT_INDEX; ++slot)
    {

        Field* fields = result->Fetch();
        uint32 glyph1 = fields[0].Get<uint32>();
        uint32 glyph2 = fields[1].Get<uint32>();
        uint32 glyph3 = fields[2].Get<uint32>();
        uint32 glyph4 = fields[3].Get<uint32>();
        uint32 glyph5 = fields[4].Get<uint32>();
        uint32 glyph6 = fields[5].Get<uint32>();

        uint32 storedGlyph;

        switch (slot)
        {
        case 0:
            storedGlyph = glyph1;
            break;
        case 1:
            storedGlyph = glyph2;
            break;
        case 2:
            storedGlyph = glyph3;
            break;
        case 3:
            storedGlyph = glyph4;
            break;
        case 4:
            storedGlyph = glyph5;
            break;
        case 5:
            storedGlyph = glyph6;
            break;
        default:
            break;
        }

        CharacterDatabase.Execute("INSERT INTO `mod_npc_talent_template_glyphs` (`playerClass`, `playerSpec`, `slot`, `glyph`) VALUES ('{}', '{}', {}, {});", GetClassString(player).c_str(), playerSpec.c_str(), slot, storedGlyph);
    }
}

bool sTemplateNPC::HasSpentTalentPoints(Player* player)
{
    return static_cast<bool>(player->GetFreeTalentPoints() != player->CalculateTalentsPoints());
}

bool sTemplateNPC::IsWearingAnyGear(Player* player)
{
    for (uint8 i = EQUIPMENT_SLOT_START; i < EQUIPMENT_SLOT_END; ++i)
        if (player->GetItemByPos(INVENTORY_SLOT_BAG_0, i))
            return true;
    return false;
}

void sTemplateNPC::SatisfyExtraGearRequirements(Player* player, const std::string& sGear)
{
    switch (player->getClass())
    {
        case CLASS_WARRIOR:
        case CLASS_SHAMAN:
            if (!player->HasSpell(SPELL_MASTER_HAMMERSMITH) && (sGear == "Fury70PvET6" || sGear == "Enhancement70PvET6"))
                player->learnSpell(SPELL_MASTER_HAMMERSMITH);
            break;
        case CLASS_DRUID:
            if ((sGear == "Restoration70PvET6") && (player->GetReputationRank(TEMPLATE_NPC_FACTION_ASHTONGUE_DEATHSWORN) < REP_EXALTED))
                player->GetReputationMgr().SetReputation(sFactionStore.LookupEntry(TEMPLATE_NPC_FACTION_ASHTONGUE_DEATHSWORN), TEMPLATE_NPC_REP_AMOUNT_EXALTED);
            break;
        default:
            break;
    }
}

bool sTemplateNPC::HasGearTemplate(Player* player, std::string const& sGear)
{
    std::string playerClass = GetClassString(player);
    return std::ranges::any_of(gearContainer, [&](GearTemplate const* gear)
    {
        return gear->playerClass == playerClass && gear->playerSpec == sGear && (gear->playerRaceMask & player->getRaceMask());
    });
}

bool sTemplateNPC::HasTalentTemplate(Player* player, std::string const& sTalents)
{
    std::string playerClass = GetClassString(player);
    return std::ranges::any_of(talentContainer, [&](TalentTemplate const* talent)
    {
        return talent->playerClass == playerClass && talent->playerSpec == sTalents;
    });
}

bool sTemplateNPC::HasGlyphTemplate(Player* player, std::string const& sGlyphs)
{
    std::string playerClass = GetClassString(player);
    return std::ranges::any_of(glyphContainer, [&](GlyphTemplate const* glyph)
    {
        return glyph->playerClass == playerClass && glyph->playerSpec == sGlyphs;
    });
}

void sTemplateNPC::ApplyTemplate(Player* player, IndexTemplate* indexTemplate, TemplateFlags flag)
{

    bool canApply = true;
    if ((flag & TEMPLATE_APPLY_GEAR) && sTemplateNpcMgr->IsWearingAnyGear(player))
    {
        player->GetSession()->SendAreaTriggerMessage(player->GetSession()->GetModuleString(MODULE_STRING, ERROR_NPC_TALENT_TEMPLATE_MUST_REMOVE_EQUIPPED)->c_str());
        ChatHandler(player->GetSession()).PSendModuleSysMessage(MODULE_STRING, ERROR_NPC_TALENT_TEMPLATE_MUST_REMOVE_EQUIPPED);
        canApply = false;
    }
    if ((flag & TEMPLATE_APPLY_TALENTS) && sTemplateNpcMgr->HasSpentTalentPoints(player))
    {
        player->GetSession()->SendAreaTriggerMessage(player->GetSession()->GetModuleString(MODULE_STRING, ERROR_NPC_TALENT_TEMPLATE_MUST_RESET_TALENTS)->c_str());
        ChatHandler(player->GetSession()).PSendModuleSysMessage(MODULE_STRING, ERROR_NPC_TALENT_TEMPLATE_MUST_RESET_TALENTS);
        canApply = false;
    }
    if (!canApply)
    {
        CloseGossipMenuFor(player);
        return;
    }

    if (flag & TEMPLATE_APPLY_GEAR)
    {
        player->_RemoveAllItemMods();
        sTemplateNpcMgr->LearnPlateMailSpells(player);
        sTemplateNpcMgr->SatisfyExtraGearRequirements(player, indexTemplate->gearOverride);
        sTemplateNpcMgr->EquipTemplateGear(player, indexTemplate->gearOverride);
    }

    if (flag & TEMPLATE_APPLY_GLYPHS)
        sTemplateNpcMgr->LearnTemplateGlyphs(player, indexTemplate->glyphOverride);

    if (flag & TEMPLATE_APPLY_TALENTS)
        sTemplateNpcMgr->LearnTemplateTalents(player, indexTemplate->talentOverride);

    if (flag & (TEMPLATE_APPLY_TALENTS | TEMPLATE_APPLY_GEAR))
        player->UpdateTitansGrip();

    LearnWeaponSkills(player);

    // Set full health and mana
    player->SetHealth(player->GetMaxHealth());
    if (player->getPowerType() == POWER_MANA)
        player->SetPower(POWER_MANA, player->GetMaxPower(POWER_MANA));

    // Learn Riding/Flying
    if (!player->HasSpell(SPELL_ARTISAN_RIDING))
        player->learnSpell(SPELL_ARTISAN_RIDING);
    if (!player->HasSpell(SPELL_COLD_WEATHER_FLYING))
        player->learnSpell(SPELL_COLD_WEATHER_FLYING);

    // Learn mount
    if (player->GetTeamId() == TEAM_HORDE && !player->HasSpell(sTemplateNpcMgr->hordeMount))
        player->learnSpell(sTemplateNpcMgr->hordeMount);
    else if (player->GetTeamId() == TEAM_ALLIANCE && !player->HasSpell(sTemplateNpcMgr->allianceMount))
        player->learnSpell(sTemplateNpcMgr->allianceMount);

    // Cast spells that teach dual spec
    // Both are also ImplicitTarget self and must be cast by player
    if (!player->HasSpell(SPELL_TEACH_LEARN_TALENT_SPECIALIZATION_SWITCHES))
        player->CastSpell(player, SPELL_TEACH_LEARN_TALENT_SPECIALIZATION_SWITCHES, player->GetGUID());
    if (!player->HasSpell(SPELL_LEARN_A_SECOND_TALENT_SPECIALIZATION))
        player->CastSpell(player, SPELL_LEARN_A_SECOND_TALENT_SPECIALIZATION, player->GetGUID());

    player->GetSession()->SendAreaTriggerMessage(player->GetSession()->GetModuleString(MODULE_STRING, SUCCESS_NPC_TALENT_TEMPLATE_EQUIPPED_TEMPLATE)->c_str(), sTemplateNpcMgr->GetClassString(player), indexTemplate->playerSpec);
}

class npc_talent_template : public CreatureScript
{
public:
    npc_talent_template() : CreatureScript("npc_talent_template") {}

    // One selectable build: the index row shown/applied plus what may be applied.
    struct Build
    {
        uint32 index;       // position in indexContainer
        TemplateFlags mask; // union of the build's index rows, limited to existing template data
    };

    // Natural order: digit runs compare by value ("Phase 2" < "Phase 10"),
    // everything else case-insensitively.
    static bool CategoryLess(std::string const& a, std::string const& b)
    {
        size_t i = 0;
        size_t j = 0;
        while (i < a.size() && j < b.size())
        {
            if (std::isdigit(static_cast<unsigned char>(a[i])) && std::isdigit(static_cast<unsigned char>(b[j])))
            {
                size_t ei = i;
                size_t ej = j;
                while (ei < a.size() && std::isdigit(static_cast<unsigned char>(a[ei])))
                    ++ei;
                while (ej < b.size() && std::isdigit(static_cast<unsigned char>(b[ej])))
                    ++ej;

                // Compare the runs as numbers: skip leading zeros, then the
                // longer run is larger, else compare digit by digit.
                while (i + 1 < ei && a[i] == '0')
                    ++i;
                while (j + 1 < ej && b[j] == '0')
                    ++j;
                if (ei - i != ej - j)
                    return (ei - i) < (ej - j);
                int cmp = a.compare(i, ei - i, b, j, ej - j);
                if (cmp != 0)
                    return cmp < 0;

                i = ei;
                j = ej;
                continue;
            }

            int ca = std::tolower(static_cast<unsigned char>(a[i]));
            int cb = std::tolower(static_cast<unsigned char>(b[j]));
            if (ca != cb)
                return ca < cb;

            ++i;
            ++j;
        }
        return (a.size() - i) < (b.size() - j);
    }

    static bool IsEligible(IndexTemplate const* t, std::string const& playerClass, uint32 level)
    {
        return t->playerClass == playerClass && t->minLevel <= level && level <= t->maxLevel;
    }

    static uint32 CountFlags(uint32 mask)
    {
        return ((mask & TEMPLATE_APPLY_GEAR) ? 1 : 0) + ((mask & TEMPLATE_APPLY_TALENTS) ? 1 : 0) +
            ((mask & TEMPLATE_APPLY_GLYPHS) ? 1 : 0);
    }

    // Unique non-empty categories eligible for this player, ordered by `categoryOrder`
    // (lowest of the category's rows) and then by natural name. Not by gossipAction:
    // each SQL file assigns gossipAction = MAX + 1 when applied, so re-applying an
    // updated file would otherwise move its category to the end.
    static std::vector<std::string> GetEligibleCategories(Player* player)
    {
        std::vector<std::pair<uint32, std::string>> categories;
        std::string playerClass = sTemplateNpcMgr->GetClassString(player);
        uint32 level = player->GetLevel();
        for (auto const& t : sTemplateNpcMgr->indexContainer)
        {
            if (t->category.empty() || !IsEligible(t, playerClass, level))
                continue;
            auto it = std::ranges::find(categories, t->category, &std::pair<uint32, std::string>::second);
            if (it == categories.end())
                categories.emplace_back(t->categoryOrder, t->category);
            else
                it->first = std::min(it->first, t->categoryOrder);
        }

        std::ranges::sort(categories, [](auto const& a, auto const& b)
        {
            if (a.first != b.first)
                return a.first < b.first;
            return CategoryLess(a.second, b.second);
        });

        std::vector<std::string> names;
        names.reserve(categories.size());
        for (auto const& category : categories)
            names.push_back(category.second);
        return names;
    }

    // Builds of one category ("" = uncategorized, shown in the root menu), in index
    // order. Rows sharing class + spec (e.g. a "full" and a "talents and glyphs only"
    // row) collapse into one build; the row allowing the most is the one shown.
    static std::vector<Build> GetBuilds(Player* player, std::string const& category)
    {
        std::vector<Build> builds;
        std::string playerClass = sTemplateNpcMgr->GetClassString(player);
        uint32 level = player->GetLevel();
        IndexContainer const& index = sTemplateNpcMgr->indexContainer;

        for (uint32 i = 0; i < index.size(); ++i)
        {
            IndexTemplate const* t = index[i];
            if (t->category != category || !IsEligible(t, playerClass, level))
                continue;

            auto it = std::ranges::find_if(builds, [&](Build const& b) { return index[b.index]->playerSpec == t->playerSpec; });
            if (it == builds.end())
            {
                builds.push_back({ i, t->mask });
                continue;
            }
            if (CountFlags(t->mask) > CountFlags(index[it->index]->mask))
                it->index = i;
            it->mask = static_cast<TemplateFlags>(it->mask | t->mask);
        }

        // Only offer parts that actually have template data.
        for (Build& build : builds)
        {
            IndexTemplate const* t = index[build.index];
            uint32 mask = build.mask;
            if (!sTemplateNpcMgr->HasGearTemplate(player, t->gearOverride))
                mask &= ~TEMPLATE_APPLY_GEAR;
            if (!sTemplateNpcMgr->HasTalentTemplate(player, t->talentOverride))
                mask &= ~TEMPLATE_APPLY_TALENTS;
            if (!sTemplateNpcMgr->HasGlyphTemplate(player, t->glyphOverride))
                mask &= ~TEMPLATE_APPLY_GLYPHS;
            build.mask = static_cast<TemplateFlags>(mask);
        }
        std::erase_if(builds, [](Build const& b) { return b.mask == 0; });
        return builds;
    }

    // The build behind an index position, re-validated against the player (the menu
    // may be stale after a `.templatenpc reload` or a level-up).
    static std::optional<Build> FindBuild(Player* player, uint32 index)
    {
        IndexContainer const& container = sTemplateNpcMgr->indexContainer;
        if (index >= container.size())
            return std::nullopt;

        for (Build const& build : GetBuilds(player, container[index]->category))
            if (build.index == index)
                return build;
        return std::nullopt;
    }

    static bool HasResetOptions()
    {
        return sTemplateNpcMgr->enableResetTalents || sTemplateNpcMgr->enableRemoveAllGlyphs || sTemplateNpcMgr->enableDestroyEquippedGear;
    }

    // Senders carry the index reload count above the low byte, so a menu opened
    // before a `.templatenpc reload` can't select a row that has since moved.
    static uint32 Sender(uint32 kind)
    {
        return kind | (sTemplateNpcMgr->indexReloads << 8);
    }

    static void AddBackItem(Player* player, uint32 sender, uint32 action)
    {
        AddGossipItemFor(player, GOSSIP_ICON_INTERACT_1, "|cffaaaaaa<< Back|r", Sender(sender), action);
    }

    // Root: categories, uncategorized builds, then the reset sub-menu.
    static void ShowRootMenu(Player* player, Creature* creature)
    {
        std::vector<std::string> categories = GetEligibleCategories(player);
        for (uint32 i = 0; i < static_cast<uint32>(categories.size()); ++i)
            AddGossipItemFor(player, GOSSIP_ICON_INTERACT_1, "|cff00ccff>> " + categories[i] + "|r", Sender(SENDER_CATEGORY), i);

        for (Build const& build : GetBuilds(player, ""))
            AddGossipItemFor(player, GOSSIP_ICON_INTERACT_1, sTemplateNpcMgr->indexContainer[build.index]->gossipText, Sender(SENDER_BUILD), build.index);

        if (HasResetOptions())
        {
            AddGossipItemFor(player, GOSSIP_ICON_INTERACT_1, "----------------------------------------------", Sender(SENDER_MAIN), GOSSIP_ACTION_SPACER);
            AddGossipItemFor(player, GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\Trade_Engineering:30:30|t|r Reset...", Sender(SENDER_MAIN), GOSSIP_ACTION_RESET_MENU);
        }

        SendGossipMenuFor(player, creature->GetEntry(), creature->GetGUID());
    }

    // Category: one entry per build.
    static void ShowCategoryMenu(Player* player, Creature* creature, uint32 categoryIndex)
    {
        std::vector<std::string> categories = GetEligibleCategories(player);
        if (categoryIndex >= categories.size())
        {
            ShowRootMenu(player, creature);
            return;
        }

        for (Build const& build : GetBuilds(player, categories[categoryIndex]))
            AddGossipItemFor(player, GOSSIP_ICON_INTERACT_1, sTemplateNpcMgr->indexContainer[build.index]->gossipText, Sender(SENDER_BUILD), build.index);

        AddBackItem(player, SENDER_MAIN, GOSSIP_ACTION_ROOT);
        SendGossipMenuFor(player, creature->GetEntry(), creature->GetGUID());
    }

    // Build: what to apply. Each choice is limited to what the build has; choices
    // that would repeat an earlier one (e.g. "talents only" for a talents-only
    // build) are skipped.
    static void ShowBuildMenu(Player* player, Creature* creature, uint32 index)
    {
        std::optional<Build> build = FindBuild(player, index);
        if (!build)
        {
            ShowRootMenu(player, creature);
            return;
        }

        struct Choice
        {
            uint32 flags;
            char const* text;
        };
        static constexpr Choice choices[] =
        {
            { TEMPLATE_APPLY_ALL,                             "|cff00ff00|TInterface\\icons\\Achievement_Level_80:30:30|t|r Apply everything" },
            { TEMPLATE_APPLY_GEAR,                            "|cff00ff00|TInterface\\icons\\INV_Chest_Plate16:30:30|t|r Gear only" },
            { TEMPLATE_APPLY_TALENTS | TEMPLATE_APPLY_GLYPHS, "|cff00ff00|TInterface\\icons\\INV_Misc_Book_11:30:30|t|r Talents and glyphs" },
            { TEMPLATE_APPLY_TALENTS,                         "|cff00ff00|TInterface\\icons\\Ability_Marksmanship:30:30|t|r Talents only" },
            { TEMPLATE_APPLY_GLYPHS,                          "|cff00ff00|TInterface\\icons\\INV_Inscription_Tradeskill01:30:30|t|r Glyphs only" },
        };

        std::vector<uint32> shown;
        for (Choice const& choice : choices)
        {
            uint32 flags = choice.flags & build->mask;
            if (!flags || (choice.flags != TEMPLATE_APPLY_ALL && flags != choice.flags))
                continue;
            if (std::ranges::find(shown, flags) != shown.end())
                continue;
            shown.push_back(flags);
            AddGossipItemFor(player, GOSSIP_ICON_INTERACT_1, choice.text, Sender(SENDER_APPLY_BASE + flags), index);
        }

        std::string const& category = sTemplateNpcMgr->indexContainer[index]->category;
        std::vector<std::string> categories = GetEligibleCategories(player);
        auto it = std::ranges::find(categories, category);
        if (category.empty() || it == categories.end())
            AddBackItem(player, SENDER_MAIN, GOSSIP_ACTION_ROOT);
        else
            AddBackItem(player, SENDER_CATEGORY, static_cast<uint32>(std::distance(categories.begin(), it)));

        SendGossipMenuFor(player, creature->GetEntry(), creature->GetGUID());
    }

    // Reset: everything at once, or one part. Each option follows its config switch.
    static void ShowResetMenu(Player* player, Creature* creature)
    {
        bool hunter = player->getClass() == CLASS_HUNTER;
        uint32 options = (sTemplateNpcMgr->enableResetTalents ? (hunter ? 2 : 1) : 0) +
            (sTemplateNpcMgr->enableRemoveAllGlyphs ? 1 : 0) + (sTemplateNpcMgr->enableDestroyEquippedGear ? 1 : 0);

        if (options > 1)
            AddGossipItemFor(player, GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\Spell_Holy_BorrowedTime:30:30|t|r Reset everything", Sender(SENDER_RESET), GOSSIP_ACTION_RESET_ALL, "Are you sure you want to reset everything listed below?", 0, false);

        if (sTemplateNpcMgr->enableResetTalents)
        {
            AddGossipItemFor(player, GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\Trade_Engineering:30:30|t|r Reset Talents", Sender(SENDER_RESET), GOSSIP_ACTION_RESET_TALENTS, "Are you sure you want to reset your talents?", 0, false);
            if (hunter)
                AddGossipItemFor(player, GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_hunter_beasttaming:30:30|t|r Reset Pet Talents", Sender(SENDER_RESET), GOSSIP_ACTION_RESET_PET_TALENTS, "Are you sure you want to reset your pet's talents?", 0, false);
        }

        if (sTemplateNpcMgr->enableRemoveAllGlyphs)
            AddGossipItemFor(player, GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\Spell_ChargeNegative:30|t|r Remove all glyphs", Sender(SENDER_RESET), GOSSIP_ACTION_RESET_REMOVE_GLYPHS, "Are you sure you want to remove all your glyphs?", 0, false);

        if (sTemplateNpcMgr->enableDestroyEquippedGear)
            AddGossipItemFor(player, GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_vehicle_launchplayer:30:30|t|r Destroy my equipped gear", Sender(SENDER_RESET), GOSSIP_ACTION_RESET_REMOVE_EQUIPPED_GEAR, "Are you sure you want to destroy all your equipped gear?", 0, false);

        AddBackItem(player, SENDER_MAIN, GOSSIP_ACTION_ROOT);
        SendGossipMenuFor(player, creature->GetEntry(), creature->GetGUID());
    }

    static void ResetTalents(Player* player)
    {
        player->resetTalents(true);
        player->SendTalentsInfoData(false);
        player->GetSession()->SendAreaTriggerMessage(LANG_RESET_TALENTS);
    }

    static void ResetPetTalents(Player* player)
    {
        player->ResetPetTalents();
        player->GetSession()->SendAreaTriggerMessage(LANG_RESET_PET_TALENTS);
    }

    static void RemoveGlyphs(Player* player)
    {
        sTemplateNpcMgr->RemoveAllGlyphs(player);
        player->GetSession()->SendAreaTriggerMessage(player->GetSession()->GetModuleString(MODULE_STRING, SUCCESS_NPC_TALENT_TEMPLATE_REMOVED_GLYPHS)->c_str());
    }

    static void DestroyEquippedGear(Player* player)
    {
        for (uint8 i = EQUIPMENT_SLOT_START; i < EQUIPMENT_SLOT_END; ++i)
        {
            // Setting state to CHANGED is required here to avoid inventory save errors after using DestroyItem and EquipItem.
            // The error occurs because the item slot information is not updated correctly
            if (Item* item = player->GetItemByPos(INVENTORY_SLOT_BAG_0, i))
                item->SetState(ITEM_CHANGED, player); // fixes
            player->DestroyItem(INVENTORY_SLOT_BAG_0, i, true);
        }
        player->SaveToDB(false, false);
        player->GetSession()->SendAreaTriggerMessage(player->GetSession()->GetModuleString(MODULE_STRING, SUCCESS_NPC_TALENT_TEMPLATE_DESTROYED_EQUIPPED_GEAR)->c_str());
    }

    static void HandleReset(Player* player, uint32 action)
    {
        bool all = action == GOSSIP_ACTION_RESET_ALL;

        if (sTemplateNpcMgr->enableResetTalents && (all || action == GOSSIP_ACTION_RESET_TALENTS))
            ResetTalents(player);

        if (sTemplateNpcMgr->enableResetTalents && player->getClass() == CLASS_HUNTER && (all || action == GOSSIP_ACTION_RESET_PET_TALENTS))
            ResetPetTalents(player);

        if (sTemplateNpcMgr->enableRemoveAllGlyphs && (all || action == GOSSIP_ACTION_RESET_REMOVE_GLYPHS))
            RemoveGlyphs(player);

        if (sTemplateNpcMgr->enableDestroyEquippedGear && (all || action == GOSSIP_ACTION_RESET_REMOVE_EQUIPPED_GEAR))
            DestroyEquippedGear(player);
    }

    bool OnGossipHello(Player* player, Creature* creature) override
    {
        ShowRootMenu(player, creature);
        return true;
    }

    bool OnGossipSelect(Player* player, Creature* creature, uint32 sender, uint32 action) override
    {
        if (!player || !creature)
            return false;

        player->PlayerTalkClass->ClearMenus();

        if ((sender & ~0xFFu) != Sender(0))
        {
            ShowRootMenu(player, creature);
            return true;
        }
        sender &= 0xFF;

        if (sender >= SENDER_APPLY_BASE)
        {
            // Apply only what both the choice and the build allow.
            std::optional<Build> build = FindBuild(player, action);
            uint32 flags = (sender - SENDER_APPLY_BASE) & (build ? build->mask : 0);
            if (flags)
                sTemplateNpcMgr->ApplyTemplate(player, sTemplateNpcMgr->indexContainer[action], static_cast<TemplateFlags>(flags));
            CloseGossipMenuFor(player);
        }
        else
        {
            switch (sender)
            {
                case SENDER_CATEGORY:
                    ShowCategoryMenu(player, creature, action);
                    break;
                case SENDER_BUILD:
                    ShowBuildMenu(player, creature, action);
                    break;
                case SENDER_RESET:
                    HandleReset(player, action);
                    CloseGossipMenuFor(player);
                    break;
                case SENDER_MAIN:
                default:
                    if (action == GOSSIP_ACTION_RESET_MENU && HasResetOptions())
                        ShowResetMenu(player, creature);
                    else
                        ShowRootMenu(player, creature);
                    break;
            }
        }

        player->UpdateSkillsForLevel();
        return true;
    }
};

using namespace Acore::ChatCommands;
class npc_talent_template_command : public CommandScript
{
public:
    npc_talent_template_command() : CommandScript("npc_talent_template_command") {}

    ChatCommandTable GetCommands() const override
    {
        static ChatCommandTable templateCommandTable =
        {
            { "reload", HandleReloadTemplateNPCCommand, SEC_ADMINISTRATOR, Console::No },
            { "create", HandleCreateClassSpecItemSetCommand, SEC_ADMINISTRATOR, Console::No },
        };

        static ChatCommandTable commandTable =
        {
            { "templatenpc",  templateCommandTable},
        };

        return commandTable;
    }

    static bool HandleCreateClassSpecItemSetCommand(ChatHandler *handler, std::string_view name)
    {
        Player* player = handler->GetSession()->GetPlayer();
        std::string specName = std::string(name);
        player->SaveToDB(false, false);
        sTemplateNpcMgr->OverwriteTemplate(player, specName);
        sTemplateNpcMgr->ExtractGearTemplateToDB(player, specName);
        sTemplateNpcMgr->ExtractTalentTemplateToDB(player, specName);
        sTemplateNpcMgr->ExtractGlyphsTemplateToDB(player, specName);
        sTemplateNpcMgr->InsertIndexEntryToDB(player, specName);
        player->GetSession()->SendAreaTriggerMessage(player->GetSession()->GetModuleString(MODULE_STRING, SUCCESS_NPC_TALENT_TEMPLATE_EXTRACT)->c_str());
        ChatHandler(player->GetSession()).PSendModuleSysMessage(MODULE_STRING, SUCCESS_NPC_TALENT_TEMPLATE_EXTRACT_INFO);
        return true;
    }

    static bool HandleReloadTemplateNPCCommand(ChatHandler *handler)
    {
        LOG_INFO("module", "Reloading templates for Template NPC table...");
        sTemplateNpcMgr->LoadTalentsContainer();
        sTemplateNpcMgr->LoadGlyphsContainer();
        sTemplateNpcMgr->LoadGearContainer();
        sTemplateNpcMgr->LoadIndexContainer();
        handler->SendGlobalGMSysMessage(handler->GetModuleString(MODULE_STRING, SUCCESS_NPC_TALENT_TEMPLATE_RELOADED)->c_str());
        return true;
    }
};

class npc_talent_template_world : public WorldScript
{
public:
    npc_talent_template_world() : WorldScript("npc_talent_template_world", {
        WORLDHOOK_ON_AFTER_CONFIG_LOAD,
        WORLDHOOK_ON_STARTUP
    }) {}

    void OnAfterConfigLoad(bool /*reload*/) override
    {
        sTemplateNpcMgr->enableResetTalents = sConfigMgr->GetOption<bool>("NpcTalentTemplate.EnableResetTalents", true);
        sTemplateNpcMgr->enableRemoveAllGlyphs = sConfigMgr->GetOption<bool>("NpcTalentTemplate.EnableRemoveAllGlyphs", true);
        sTemplateNpcMgr->enableDestroyEquippedGear = sConfigMgr->GetOption<bool>("NpcTalentTemplate.EnableDestroyEquippedGear", true);
        sTemplateNpcMgr->allianceMount = sConfigMgr->GetOption<uint32>("NpcTalentTemplate.AllianceMount", SPELL_BIG_BATTLE_BEAR);
        sTemplateNpcMgr->hordeMount = sConfigMgr->GetOption<uint32>("NpcTalentTemplate.HordeMount", SPELL_BIG_BATTLE_BEAR);
    }

    void OnStartup() override
    {
        LOG_INFO("module", "== START NPC TALENT TEMPLATE ==");

        LOG_INFO("module", "Loading Template Talents...");
        sTemplateNpcMgr->LoadTalentsContainer();

        LOG_INFO("module", "Loading Template Glyphs...");
        sTemplateNpcMgr->LoadGlyphsContainer();

        LOG_INFO("module", "Loading Template Gear...");
        sTemplateNpcMgr->LoadGearContainer();

        LOG_INFO("module", "Loading Template Index...");
        sTemplateNpcMgr->LoadIndexContainer();

        LOG_INFO("module", "== END NPC TALENT TEMPLATE ==");
    }
};

void AddSC_npc_talent_template()
{
    new npc_talent_template();
    new npc_talent_template_command();
    new npc_talent_template_world();
}
