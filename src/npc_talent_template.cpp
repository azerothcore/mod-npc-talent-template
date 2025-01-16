#include "Chat.h"
#include "Creature.h"
#include "Config.h"
#include "ReputationMgr.h"
#include "ScriptedGossip.h"
#include "npc_talent_template.h"

#define DEFAULT_GOSSIP_ACTION_ENTRY 9999 // default value for gossipAction when creating new template

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

    QueryResult result = CharacterDatabase.Query("SELECT `playerClass`, `playerSpec`, `gossipAction`, `gossipText`, `mask`, `minLevel`, `maxLevel`, `gearOverride`, `glyphOverride`, `talentOverride` FROM `mod_npc_talent_template_index` ORDER BY `gossipAction`;");

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

void sTemplateNPC::ApplyTemplate(Player* player, IndexTemplate* indexTemplate)
{
    TemplateFlags flag = indexTemplate->mask;

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

    bool OnGossipHello(Player* player, Creature* creature)
    {
        for (auto const& indexTemplate : sTemplateNpcMgr->indexContainer)
            if (indexTemplate->playerClass == sTemplateNpcMgr->GetClassString(player).c_str() && (indexTemplate->minLevel <= player->GetLevel() && player->GetLevel() <= indexTemplate->maxLevel))
                AddGossipItemFor(player, GOSSIP_ICON_INTERACT_1, indexTemplate->gossipText, GOSSIP_SENDER_MAIN, indexTemplate->gossipAction);

        // Extra gossip
        if (sTemplateNpcMgr->enableResetTalents || sTemplateNpcMgr->enableRemoveAllGlyphs || sTemplateNpcMgr->enableDestroyEquippedGear)
            AddGossipItemFor(player, GOSSIP_ICON_INTERACT_1, "----------------------------------------------", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_SPACER);

        if (sTemplateNpcMgr->enableResetTalents)
        {
            AddGossipItemFor(player, GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\Trade_Engineering:30:30|t|r Reset Talents", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_RESET_TALENTS, "Are you sure you want to reset your talents?", 0, false);
            if (player->getClass() == CLASS_HUNTER)
                AddGossipItemFor(player, GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_hunter_beasttaming:30:30|t|r Reset Pet Talents", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_RESET_PET_TALENTS, "Are you sure you want to reset your pet's talents?", 0, false);
        }

        if (sTemplateNpcMgr->enableRemoveAllGlyphs)
            AddGossipItemFor(player, GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\Spell_ChargeNegative:30|t|r Remove all glyphs", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_RESET_REMOVE_GLYPHS, "Are you sure you want to remove all your glyphs?", 0, false);

        if (sTemplateNpcMgr->enableDestroyEquippedGear)
            AddGossipItemFor(player, GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_vehicle_launchplayer:30|t|r Destroy my equipped gear", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_RESET_REMOVE_EQUIPPED_GEAR, "Are you sure you want to destroy all your equipped gear?", 0, false);

        SendGossipMenuFor(player, creature->GetEntry(), creature->GetGUID());
        return true;
    }

    bool OnGossipSelect(Player* player, Creature* creature, uint32 /*uiSender*/, uint32 uiAction)
    {
        if (!player || !creature)
            return false;

        player->PlayerTalkClass->ClearMenus();

        for (IndexTemplate *const &indexTemplate : sTemplateNpcMgr->indexContainer)
          if (indexTemplate->gossipAction == uiAction)
          {
            sTemplateNpcMgr->ApplyTemplate(player, indexTemplate);
            CloseGossipMenuFor(player);
            break;
          }

        // Extra gossip
        switch (uiAction)
        {
            case GOSSIP_ACTION_SPACER:
                // return to OnGossipHello menu, otherwise it will freeze every menu
                OnGossipHello(player, creature);
                break;

            case GOSSIP_ACTION_RESET_REMOVE_GLYPHS:
                sTemplateNpcMgr->RemoveAllGlyphs(player);
                player->GetSession()->SendAreaTriggerMessage(player->GetSession()->GetModuleString(MODULE_STRING, SUCCESS_NPC_TALENT_TEMPLATE_REMOVED_GLYPHS)->c_str());
                CloseGossipMenuFor(player);
                break;

            case GOSSIP_ACTION_RESET_TALENTS:
                player->resetTalents(true);
                player->SendTalentsInfoData(false);
                player->GetSession()->SendAreaTriggerMessage(LANG_RESET_TALENTS);
                CloseGossipMenuFor(player);
                break;

            case GOSSIP_ACTION_RESET_PET_TALENTS:
                player->ResetPetTalents();
                player->GetSession()->SendAreaTriggerMessage(LANG_RESET_PET_TALENTS);
                CloseGossipMenuFor(player);
                break;

            case GOSSIP_ACTION_RESET_REMOVE_EQUIPPED_GEAR:
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
                CloseGossipMenuFor(player);
                break;

            default:
                CloseGossipMenuFor(player);
                break;
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
    npc_talent_template_world() : WorldScript("npc_talent_template_world") {}

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
