/* =============================================================
TO DO:
• Merge human sql template with alliance template
• As Barbz suggested: Rename to character_template the module
    and all related files (to be less confusing and less generic)
• As Barbz suggested: Scaling system for twink servers
• Talent reseting doesn't work in some circumstances. See handling
    of gossip option #31 for details. Will probably require some minor DB
    restructure or a AC core change.
================================================================ */

#include "TemplateNPC.h"
#include "Chat.h"

// once talents are fully fixed
// this could get removed or moved into a config prop
static constexpr bool OMIT_TALENT_AND_GLYPH_TEMPLATING = false;

static const std::unordered_set<std::string> knownSpecs = {
    "Discipline", "Holy",        "Shadow",      "Protection", "Retribution", "Fury",         "Arms",         "Arcane",   "Fire",          "Frost",  "Affliction", "Demonology", "Destruction",
    "Elemental",  "Enhancement", "Restoration", "Ballance",   "Feral",       "Marksmanship", "Beastmastery", "Survival", "Assassination", "Combat", "Subtlety",   "Blood",      "Unholy",
};

void sTemplateNPC::ApplyBonus(Player* player, Item* item, EnchantmentSlot slot, uint32 bonusEntry)
{
    if (!item)
        return;

    if (!bonusEntry || bonusEntry == 0)
        return;

    player->ApplyEnchantment(item, slot, false);
    item->SetEnchantment(slot, bonusEntry, 0, 0);
    player->ApplyEnchantment(item, slot, true);
}

void sTemplateNPC::ApplyGlyph(Player* player, uint8 slot, uint32 glyphID)
{
    if (GlyphPropertiesEntry const* gp = sGlyphPropertiesStore.LookupEntry(glyphID))
    {
        if (uint32 oldGlyph = player->GetGlyph(slot))
        {
            player->RemoveAurasDueToSpell(sGlyphPropertiesStore.LookupEntry(oldGlyph)->SpellId);
            player->SetGlyph(slot, 0, true);
        }
        player->CastSpell(player, gp->SpellId, true);
        player->SetGlyph(slot, glyphID, true);
    }
}

void sTemplateNPC::RemoveAllGlyphs(Player* player)
{
    for (uint8 i = 0; i < MAX_GLYPH_SLOT_INDEX; ++i)
    {
        if (uint32 glyph = player->GetGlyph(i))
        {
            if (GlyphPropertiesEntry const* gp = sGlyphPropertiesStore.LookupEntry(glyph))
            {
                if (GlyphSlotEntry const* gs = sGlyphSlotStore.LookupEntry(player->GetGlyphSlot(i)))
                {
                    player->RemoveAurasDueToSpell(sGlyphPropertiesStore.LookupEntry(glyph)->SpellId);
                    player->SetGlyph(i, 0, true);
                    player->SendTalentsInfoData(false); // this is somewhat an in-game glyph realtime update (apply/remove)
                }
            }
        }
    }
}

void sTemplateNPC::Copy(Player* target, Player* src)
{

    target->resetTalents(true);

    // copy talents
    for (const auto& [talentId, _] : src->GetTalentMap())
    {
        target->learnSpell(talentId);
        target->addTalent(talentId, src->GetActiveSpecMask(), true);
        target->SetFreeTalentPoints(0);
    }

    RemoveAllGlyphs(target);

    // copy glyphs
    for (uint8 slot = 0; slot < MAX_GLYPH_SLOT_INDEX; ++slot)
        ApplyGlyph(target, slot, src->GetGlyph(slot));

    target->SendTalentsInfoData(false);

    // copy gear
    // empty slots will be ignored
    for (uint8 i = EQUIPMENT_SLOT_START; i < EQUIPMENT_SLOT_END; ++i)
    {
        Item* equippedItem = src->GetItemByPos(INVENTORY_SLOT_BAG_0, i);
        if (!equippedItem)
            continue;

        target->EquipNewItem(i, equippedItem->GetEntry(), true);

        ApplyBonus(target, target->GetItemByPos(INVENTORY_SLOT_BAG_0, i), PERM_ENCHANTMENT_SLOT, equippedItem->GetEnchantmentId(PERM_ENCHANTMENT_SLOT));
        ApplyBonus(target, target->GetItemByPos(INVENTORY_SLOT_BAG_0, i), SOCK_ENCHANTMENT_SLOT, equippedItem->GetEnchantmentId(SOCK_ENCHANTMENT_SLOT));
        ApplyBonus(target, target->GetItemByPos(INVENTORY_SLOT_BAG_0, i), SOCK_ENCHANTMENT_SLOT_2, equippedItem->GetEnchantmentId(SOCK_ENCHANTMENT_SLOT_2));
        ApplyBonus(target, target->GetItemByPos(INVENTORY_SLOT_BAG_0, i), SOCK_ENCHANTMENT_SLOT_3, equippedItem->GetEnchantmentId(SOCK_ENCHANTMENT_SLOT_3));
        ApplyBonus(target, target->GetItemByPos(INVENTORY_SLOT_BAG_0, i), BONUS_ENCHANTMENT_SLOT, equippedItem->GetEnchantmentId(BONUS_ENCHANTMENT_SLOT));
        ApplyBonus(target, target->GetItemByPos(INVENTORY_SLOT_BAG_0, i), PRISMATIC_ENCHANTMENT_SLOT, equippedItem->GetEnchantmentId(PRISMATIC_ENCHANTMENT_SLOT));
    }
}

void sTemplateNPC::LearnTemplateTalents(Player* player, std::string sTalentsSpec)
{
    for (TalentContainer::const_iterator itr = m_TalentContainer.begin(); itr != m_TalentContainer.end(); ++itr)
    {
        if ((*itr)->playerClass == GetClassString(player).c_str() && (*itr)->playerSpec == sTalentsSpec)
        {
            player->learnSpell((*itr)->talentId);
            player->addTalent((*itr)->talentId, player->GetActiveSpecMask(), true);
        }
    }
    player->SetFreeTalentPoints(0);
    player->SendTalentsInfoData(false);
}

void sTemplateNPC::LearnTemplateGlyphs(Player* player, std::string sTalentsSpec)
{
    for (GlyphContainer::const_iterator itr = m_GlyphContainer.begin(); itr != m_GlyphContainer.end(); ++itr)
    {
        if ((*itr)->playerClass == GetClassString(player).c_str() && (*itr)->playerSpec == sTalentsSpec)
            ApplyGlyph(player, (*itr)->slot, (*itr)->glyph);
    }
    player->SendTalentsInfoData(false);
}

void sTemplateNPC::EquipTemplateGear(Player* player, std::string sTalentsSpec)
{
    if (player->getRace() == RACE_HUMAN)
    {
        for (HumanGearContainer::const_iterator itr = m_HumanGearContainer.begin(); itr != m_HumanGearContainer.end(); ++itr)
        {
            if ((*itr)->playerClass == GetClassString(player).c_str() && (*itr)->playerSpec == sTalentsSpec)
            {
                player->EquipNewItem((*itr)->pos, (*itr)->itemEntry, true); // Equip the item and apply enchants and gems
                ApplyBonus(player, player->GetItemByPos(INVENTORY_SLOT_BAG_0, (*itr)->pos), PERM_ENCHANTMENT_SLOT, (*itr)->enchant);
                ApplyBonus(player, player->GetItemByPos(INVENTORY_SLOT_BAG_0, (*itr)->pos), SOCK_ENCHANTMENT_SLOT, (*itr)->socket1);
                ApplyBonus(player, player->GetItemByPos(INVENTORY_SLOT_BAG_0, (*itr)->pos), SOCK_ENCHANTMENT_SLOT_2, (*itr)->socket2);
                ApplyBonus(player, player->GetItemByPos(INVENTORY_SLOT_BAG_0, (*itr)->pos), SOCK_ENCHANTMENT_SLOT_3, (*itr)->socket3);
                ApplyBonus(player, player->GetItemByPos(INVENTORY_SLOT_BAG_0, (*itr)->pos), BONUS_ENCHANTMENT_SLOT, (*itr)->bonusEnchant);
                ApplyBonus(player, player->GetItemByPos(INVENTORY_SLOT_BAG_0, (*itr)->pos), PRISMATIC_ENCHANTMENT_SLOT, (*itr)->prismaticEnchant);
            }
        }
    }
    else if (player->GetTeamId() == TEAM_ALLIANCE && player->getRace() != RACE_HUMAN)
    {
        for (AllianceGearContainer::const_iterator itr = m_AllianceGearContainer.begin(); itr != m_AllianceGearContainer.end(); ++itr)
        {
            if ((*itr)->playerClass == GetClassString(player).c_str() && (*itr)->playerSpec == sTalentsSpec)
            {
                player->EquipNewItem((*itr)->pos, (*itr)->itemEntry, true); // Equip the item and apply enchants and gems
                ApplyBonus(player, player->GetItemByPos(INVENTORY_SLOT_BAG_0, (*itr)->pos), PERM_ENCHANTMENT_SLOT, (*itr)->enchant);
                ApplyBonus(player, player->GetItemByPos(INVENTORY_SLOT_BAG_0, (*itr)->pos), SOCK_ENCHANTMENT_SLOT, (*itr)->socket1);
                ApplyBonus(player, player->GetItemByPos(INVENTORY_SLOT_BAG_0, (*itr)->pos), SOCK_ENCHANTMENT_SLOT_2, (*itr)->socket2);
                ApplyBonus(player, player->GetItemByPos(INVENTORY_SLOT_BAG_0, (*itr)->pos), SOCK_ENCHANTMENT_SLOT_3, (*itr)->socket3);
                ApplyBonus(player, player->GetItemByPos(INVENTORY_SLOT_BAG_0, (*itr)->pos), BONUS_ENCHANTMENT_SLOT, (*itr)->bonusEnchant);
                ApplyBonus(player, player->GetItemByPos(INVENTORY_SLOT_BAG_0, (*itr)->pos), PRISMATIC_ENCHANTMENT_SLOT, (*itr)->prismaticEnchant);
            }
        }
    }
    else if (player->GetTeamId() == TEAM_HORDE)
    {
        for (HordeGearContainer::const_iterator itr = m_HordeGearContainer.begin(); itr != m_HordeGearContainer.end(); ++itr)
        {
            if ((*itr)->playerClass == GetClassString(player).c_str() && (*itr)->playerSpec == sTalentsSpec)
            {
                player->EquipNewItem((*itr)->pos, (*itr)->itemEntry, true); // Equip the item and apply enchants and gems
                ApplyBonus(player, player->GetItemByPos(INVENTORY_SLOT_BAG_0, (*itr)->pos), PERM_ENCHANTMENT_SLOT, (*itr)->enchant);
                ApplyBonus(player, player->GetItemByPos(INVENTORY_SLOT_BAG_0, (*itr)->pos), SOCK_ENCHANTMENT_SLOT, (*itr)->socket1);
                ApplyBonus(player, player->GetItemByPos(INVENTORY_SLOT_BAG_0, (*itr)->pos), SOCK_ENCHANTMENT_SLOT_2, (*itr)->socket2);
                ApplyBonus(player, player->GetItemByPos(INVENTORY_SLOT_BAG_0, (*itr)->pos), SOCK_ENCHANTMENT_SLOT_3, (*itr)->socket3);
                ApplyBonus(player, player->GetItemByPos(INVENTORY_SLOT_BAG_0, (*itr)->pos), BONUS_ENCHANTMENT_SLOT, (*itr)->bonusEnchant);
                ApplyBonus(player, player->GetItemByPos(INVENTORY_SLOT_BAG_0, (*itr)->pos), PRISMATIC_ENCHANTMENT_SLOT, (*itr)->prismaticEnchant);
            }
        }
    }
}

void sTemplateNPC::LoadTalentsContainer()
{
    for (TalentContainer::const_iterator itr = m_TalentContainer.begin(); itr != m_TalentContainer.end(); ++itr)
        delete *itr;

    m_TalentContainer.clear();

    uint32 oldMSTime = getMSTime();
    uint32 count = 0;

    QueryResult result = CharacterDatabase.Query("SELECT playerClass, playerSpec, talentId FROM template_npc_talents;");

    if (!result)
    {
        sLog->outString(">>TEMPLATE NPC: Loaded 0 talent templates. DB table `template_npc_talents` is empty!");
        return;
    }

    do
    {
        Field* fields = result->Fetch();

        TalentTemplate* pTalent = new TalentTemplate;

        pTalent->playerClass = fields[0].GetString();
        pTalent->playerSpec = fields[1].GetString();
        pTalent->talentId = fields[2].GetUInt32();

        m_TalentContainer.push_back(pTalent);
        ++count;
    } while (result->NextRow());
    sLog->outString(">>TEMPLATE NPC: Loaded %u talent templates in %u ms.", count, GetMSTimeDiffToNow(oldMSTime));
}

void sTemplateNPC::LoadGlyphsContainer()
{
    for (GlyphContainer::const_iterator itr = m_GlyphContainer.begin(); itr != m_GlyphContainer.end(); ++itr)
        delete *itr;

    m_GlyphContainer.clear();

    QueryResult result = CharacterDatabase.Query("SELECT playerClass, playerSpec, slot, glyph FROM template_npc_glyphs;");

    uint32 oldMSTime = getMSTime();
    uint32 count = 0;

    if (!result)
    {
        sLog->outString(">>TEMPLATE NPC: Loaded 0 glyph templates. DB table `template_npc_glyphs` is empty!");
        return;
    }

    do
    {
        Field* fields = result->Fetch();

        GlyphTemplate* pGlyph = new GlyphTemplate;

        pGlyph->playerClass = fields[0].GetString();
        pGlyph->playerSpec = fields[1].GetString();
        pGlyph->slot = fields[2].GetUInt8();
        pGlyph->glyph = fields[3].GetUInt32();

        m_GlyphContainer.push_back(pGlyph);
        ++count;
    } while (result->NextRow());

    sLog->outString(">>TEMPLATE NPC: Loaded %u glyph templates in %u ms.", count, GetMSTimeDiffToNow(oldMSTime));
}

void sTemplateNPC::LoadHumanGearContainer()
{
    for (HumanGearContainer::const_iterator itr = m_HumanGearContainer.begin(); itr != m_HumanGearContainer.end(); ++itr)
        delete *itr;

    m_HumanGearContainer.clear();

    QueryResult result = CharacterDatabase.Query("SELECT playerClass, playerSpec, pos, itemEntry, enchant, socket1, socket2, socket3, bonusEnchant, prismaticEnchant FROM template_npc_human;");

    uint32 oldMSTime = getMSTime();
    uint32 count = 0;

    if (!result)
    {
        sLog->outString(">>TEMPLATE NPC: Loaded 0 'gear templates. DB table `template_npc_human` is empty!");
        return;
    }

    do
    {
        Field* fields = result->Fetch();

        HumanGearTemplate* pItem = new HumanGearTemplate;

        pItem->playerClass = fields[0].GetString();
        pItem->playerSpec = fields[1].GetString();
        pItem->pos = fields[2].GetUInt8();
        pItem->itemEntry = fields[3].GetUInt32();
        pItem->enchant = fields[4].GetUInt32();
        pItem->socket1 = fields[5].GetUInt32();
        pItem->socket2 = fields[6].GetUInt32();
        pItem->socket3 = fields[7].GetUInt32();
        pItem->bonusEnchant = fields[8].GetUInt32();
        pItem->prismaticEnchant = fields[9].GetUInt32();

        m_HumanGearContainer.push_back(pItem);
        ++count;
    } while (result->NextRow());
    sLog->outString(">>TEMPLATE NPC: Loaded %u gear templates for Humans in %u ms.", count, GetMSTimeDiffToNow(oldMSTime));
}

void sTemplateNPC::LoadAllianceGearContainer()
{
    for (AllianceGearContainer::const_iterator itr = m_AllianceGearContainer.begin(); itr != m_AllianceGearContainer.end(); ++itr)
        delete *itr;

    m_AllianceGearContainer.clear();

    QueryResult result = CharacterDatabase.Query("SELECT playerClass, playerSpec, pos, itemEntry, enchant, socket1, socket2, socket3, bonusEnchant, prismaticEnchant FROM template_npc_alliance;");

    uint32 oldMSTime = getMSTime();
    uint32 count = 0;

    if (!result)
    {
        sLog->outString(">>TEMPLATE NPC: Loaded 0 'gear templates. DB table `template_npc_alliance` is empty!");
        return;
    }

    do
    {
        Field* fields = result->Fetch();

        AllianceGearTemplate* pItem = new AllianceGearTemplate;

        pItem->playerClass = fields[0].GetString();
        pItem->playerSpec = fields[1].GetString();
        pItem->pos = fields[2].GetUInt8();
        pItem->itemEntry = fields[3].GetUInt32();
        pItem->enchant = fields[4].GetUInt32();
        pItem->socket1 = fields[5].GetUInt32();
        pItem->socket2 = fields[6].GetUInt32();
        pItem->socket3 = fields[7].GetUInt32();
        pItem->bonusEnchant = fields[8].GetUInt32();
        pItem->prismaticEnchant = fields[9].GetUInt32();

        m_AllianceGearContainer.push_back(pItem);
        ++count;
    } while (result->NextRow());
    sLog->outString(">>TEMPLATE NPC: Loaded %u gear templates for Alliances in %u ms.", count, GetMSTimeDiffToNow(oldMSTime));
}

void sTemplateNPC::LoadHordeGearContainer()
{
    for (HordeGearContainer::const_iterator itr = m_HordeGearContainer.begin(); itr != m_HordeGearContainer.end(); ++itr)
        delete *itr;

    m_HordeGearContainer.clear();

    QueryResult result = CharacterDatabase.Query("SELECT playerClass, playerSpec, pos, itemEntry, enchant, socket1, socket2, socket3, bonusEnchant, prismaticEnchant FROM template_npc_horde;");

    uint32 oldMSTime = getMSTime();
    uint32 count = 0;

    if (!result)
    {
        sLog->outString(">>TEMPLATE NPC: Loaded 0 'gear templates. DB table `template_npc_horde` is empty!");
        return;
    }

    do
    {
        Field* fields = result->Fetch();

        HordeGearTemplate* pItem = new HordeGearTemplate;

        pItem->playerClass = fields[0].GetString();
        pItem->playerSpec = fields[1].GetString();
        pItem->pos = fields[2].GetUInt8();
        pItem->itemEntry = fields[3].GetUInt32();
        pItem->enchant = fields[4].GetUInt32();
        pItem->socket1 = fields[5].GetUInt32();
        pItem->socket2 = fields[6].GetUInt32();
        pItem->socket3 = fields[7].GetUInt32();
        pItem->bonusEnchant = fields[8].GetUInt32();
        pItem->prismaticEnchant = fields[9].GetUInt32();

        m_HordeGearContainer.push_back(pItem);
        ++count;
    } while (result->NextRow());
    sLog->outString(">>TEMPLATE NPC: Loaded %u gear templates for Hordes in %u ms.", count, GetMSTimeDiffToNow(oldMSTime));
}

std::string sTemplateNPC::GetClassString(Player* player)
{
    switch (player->getClass())
    {
    case CLASS_PRIEST:
        return "Priest";
        break;
    case CLASS_PALADIN:
        return "Paladin";
        break;
    case CLASS_WARRIOR:
        return "Warrior";
        break;
    case CLASS_MAGE:
        return "Mage";
        break;
    case CLASS_WARLOCK:
        return "Warlock";
        break;
    case CLASS_SHAMAN:
        return "Shaman";
        break;
    case CLASS_DRUID:
        return "Druid";
        break;
    case CLASS_HUNTER:
        return "Hunter";
        break;
    case CLASS_ROGUE:
        return "Rogue";
        break;
    case CLASS_DEATH_KNIGHT:
        return "DeathKnight";
        break;
    default:
        break;
    }
    return "Unknown"; // Fix warning, this should never happen
}

void sTemplateNPC::PurgeTemplate(Player* player, std::string& playerSpecStr, TemplateType type)
{
    auto playerClassStr = GetClassString(player).c_str();

    // clean talents
    CharacterDatabase.PQuery("DELETE FROM template_npc_talents WHERE playerClass = '%s' and playerSpec = '%s'", playerClassStr, playerSpecStr);

    // clean glyphs
    CharacterDatabase.PQuery("DELETE FROM template_npc_glyphs WHERE playerClass = '%s' and playerSpec = '%s'", playerClassStr, playerSpecStr);

    // clean gear
    switch (type)
    {
    case TEMPLATE_HUMAN:
        CharacterDatabase.PQuery("DELETE FROM template_npc_human WHERE playerClass = '%s' AND playerSpec = '%s';", playerClassStr, playerSpecStr.c_str());
        break;
    case TEMPLATE_ALLIANCE:
        CharacterDatabase.PQuery("DELETE FROM template_npc_alliance WHERE playerClass = '%s' AND playerSpec = '%s';", playerClassStr, playerSpecStr.c_str());
        break;
    case TEMPLATE_HORDE:
        CharacterDatabase.PQuery("DELETE FROM template_npc_horde WHERE playerClass = '%s' AND playerSpec = '%s';", playerClassStr, playerSpecStr.c_str());
        break;
    }
}

void sTemplateNPC::ExtractGearTemplateToDB(Player* player, std::string& playerSpecStr, TemplateType type)
{
    PurgeTemplate(player, playerSpecStr, type);

    ExtractTalentTemplateToDB(player, playerSpecStr);
    ExtractGlyphsTemplateToDB(player, playerSpecStr);

    for (uint8 i = EQUIPMENT_SLOT_START; i < EQUIPMENT_SLOT_END; ++i)
    {
        Item* equippedItem = player->GetItemByPos(INVENTORY_SLOT_BAG_0, i);

        if (equippedItem)
        {
            if (type == TEMPLATE_HUMAN)
            {
                CharacterDatabase.PExecute("INSERT INTO template_npc_human (`playerClass`, `playerSpec`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, "
                                           "`prismaticEnchant`) VALUES ('%s', '%s', "
                                           "'%u', '%u', '%u', '%u', '%u', '%u', '%u', '%u');",
                                           GetClassString(player).c_str(), playerSpecStr.c_str(), equippedItem->GetSlot(), equippedItem->GetEntry(), equippedItem->GetEnchantmentId(PERM_ENCHANTMENT_SLOT),
                                           equippedItem->GetEnchantmentId(SOCK_ENCHANTMENT_SLOT), equippedItem->GetEnchantmentId(SOCK_ENCHANTMENT_SLOT_2), equippedItem->GetEnchantmentId(SOCK_ENCHANTMENT_SLOT_3),
                                           equippedItem->GetEnchantmentId(BONUS_ENCHANTMENT_SLOT), equippedItem->GetEnchantmentId(PRISMATIC_ENCHANTMENT_SLOT));
            }
            else if (type == TEMPLATE_ALLIANCE)
            {
                CharacterDatabase.PExecute("INSERT INTO template_npc_alliance (`playerClass`, `playerSpec`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, "
                                           "`prismaticEnchant`) VALUES ('%s', '%s', "
                                           "'%u', '%u', '%u', '%u', '%u', '%u', '%u', '%u');",
                                           GetClassString(player).c_str(), playerSpecStr.c_str(), equippedItem->GetSlot(), equippedItem->GetEntry(), equippedItem->GetEnchantmentId(PERM_ENCHANTMENT_SLOT),
                                           equippedItem->GetEnchantmentId(SOCK_ENCHANTMENT_SLOT), equippedItem->GetEnchantmentId(SOCK_ENCHANTMENT_SLOT_2), equippedItem->GetEnchantmentId(SOCK_ENCHANTMENT_SLOT_3),
                                           equippedItem->GetEnchantmentId(BONUS_ENCHANTMENT_SLOT), equippedItem->GetEnchantmentId(PRISMATIC_ENCHANTMENT_SLOT));
            }
            else if (type == TEMPLATE_HORDE)
            {
                CharacterDatabase.PExecute("INSERT INTO template_npc_horde (`playerClass`, `playerSpec`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, "
                                           "`prismaticEnchant`) VALUES ('%s', '%s', "
                                           "'%u', '%u', '%u', '%u', '%u', '%u', '%u', '%u');",
                                           GetClassString(player).c_str(), playerSpecStr.c_str(), equippedItem->GetSlot(), equippedItem->GetEntry(), equippedItem->GetEnchantmentId(PERM_ENCHANTMENT_SLOT),
                                           equippedItem->GetEnchantmentId(SOCK_ENCHANTMENT_SLOT), equippedItem->GetEnchantmentId(SOCK_ENCHANTMENT_SLOT_2), equippedItem->GetEnchantmentId(SOCK_ENCHANTMENT_SLOT_3),
                                           equippedItem->GetEnchantmentId(BONUS_ENCHANTMENT_SLOT), equippedItem->GetEnchantmentId(PRISMATIC_ENCHANTMENT_SLOT));
            }
        }
    }
}

void sTemplateNPC::ExtractTalentTemplateToDB(Player* player, std::string& playerSpecStr)
{
    QueryResult result = CharacterDatabase.PQuery("SELECT spell FROM character_talent WHERE guid = '%u' "
                                                  "AND specMask = '%u';",
                                                  player->GetGUID(), player->GetActiveSpec());

    if (!result)
    {
        return;
    }
    else if (player->GetFreeTalentPoints() > 0)
    {
        player->GetSession()->SendAreaTriggerMessage("You have unspend talent points. Please spend all your talent points and re-extract the template.");
        return;
    }
    else
    {
        do
        {
            Field* fields = result->Fetch();
            uint32 spell = fields[0].GetUInt32();

            CharacterDatabase.PExecute("INSERT INTO template_npc_talents (playerClass, playerSpec, talentId) "
                                       "VALUES ('%s', '%s', '%u');",
                                       GetClassString(player).c_str(), playerSpecStr.c_str(), spell);
        } while (result->NextRow());
    }
}

void sTemplateNPC::ExtractGlyphsTemplateToDB(Player* player, std::string& playerSpecStr)
{
    QueryResult result = CharacterDatabase.PQuery("SELECT glyph1, glyph2, glyph3, glyph4, glyph5, glyph6 "
                                                  "FROM character_glyphs WHERE guid = '%u' AND talentGroup = '%u';",
                                                  player->GetGUID(), player->GetActiveSpec());

    for (uint8 slot = 0; slot < MAX_GLYPH_SLOT_INDEX; ++slot)
    {
        if (!result)
        {
            player->GetSession()->SendAreaTriggerMessage("Get glyphs and re-extract the template!");
            continue;
        }

        Field* fields = result->Fetch();
        uint32 glyph1 = fields[0].GetUInt32();
        uint32 glyph2 = fields[1].GetUInt32();
        uint32 glyph3 = fields[2].GetUInt32();
        uint32 glyph4 = fields[3].GetUInt32();
        uint32 glyph5 = fields[4].GetUInt32();
        uint32 glyph6 = fields[5].GetUInt32();

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

        CharacterDatabase.PExecute("INSERT INTO template_npc_glyphs (playerClass, playerSpec, slot, glyph) "
                                   "VALUES ('%s', '%s', '%u', '%u');",
                                   GetClassString(player).c_str(), playerSpecStr.c_str(), slot, storedGlyph);
    }
}

bool sTemplateNPC::CanEquipTemplate(Player* player, std::string& playerSpecStr)
{
    if (player->getRace() == RACE_HUMAN)
    {
        QueryResult result = CharacterDatabase.PQuery("SELECT playerClass, playerSpec FROM template_npc_human "
                                                      "WHERE playerClass = '%s' AND playerSpec = '%s';",
                                                      GetClassString(player).c_str(), playerSpecStr.c_str());

        if (!result)
            return false;
    }
    else if (player->GetTeamId() == TEAM_ALLIANCE && player->getRace() != RACE_HUMAN)
    {
        QueryResult result = CharacterDatabase.PQuery("SELECT playerClass, playerSpec FROM template_npc_alliance "
                                                      "WHERE playerClass = '%s' AND playerSpec = '%s';",
                                                      GetClassString(player).c_str(), playerSpecStr.c_str());

        if (!result)
            return false;
    }
    else if (player->GetTeamId() == TEAM_HORDE)
    {
        QueryResult result = CharacterDatabase.PQuery("SELECT playerClass, playerSpec FROM template_npc_horde "
                                                      "WHERE playerClass = '%s' AND playerSpec = '%s';",
                                                      GetClassString(player).c_str(), playerSpecStr.c_str());

        if (!result)
            return false;
    }
    return true;
}

class TemplateNPC : public CreatureScript
{
  public:
    TemplateNPC() : CreatureScript("TemplateNPC")
    {
    }

    bool OnGossipHello(Player* player, Creature* creature)
    {
        switch (player->getClass())
        {
        case CLASS_PRIEST:
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_holy_wordfortitude:30|t|r Use Discipline Spec", GOSSIP_SENDER_MAIN, 0);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Use Holy Spec", GOSSIP_SENDER_MAIN, 1);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_shadow_shadowwordpain:30|t|r Use Shadow Spec", GOSSIP_SENDER_MAIN, 2);
            if constexpr (OMIT_TALENT_AND_GLYPH_TEMPLATING)
                break;
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "----------------------------------------------", GOSSIP_SENDER_MAIN, 5000);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_holy_wordfortitude:30|t|r Use Discipline Spec (Talents Only)", GOSSIP_SENDER_MAIN, 100);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Use Holy spec (Talents only)", GOSSIP_SENDER_MAIN, 101);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_shadow_shadowwordpain:30|t|r Use Shadow spec (Talents only)", GOSSIP_SENDER_MAIN, 102);
            break;
        case CLASS_PALADIN:
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Use Holy Spec", GOSSIP_SENDER_MAIN, 3);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_holy_devotionaura:30|t|r Use Protection Spec", GOSSIP_SENDER_MAIN, 4);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_holy_auraoflight:30|t|r Use Retribution Spec", GOSSIP_SENDER_MAIN, 5);
            if constexpr (OMIT_TALENT_AND_GLYPH_TEMPLATING)
                break;
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "----------------------------------------------", GOSSIP_SENDER_MAIN, 5000);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_holy_holybolt:30|t|r Use Holy Spec (Talents Only)", GOSSIP_SENDER_MAIN, 103);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_holy_devotionaura:30|t|r Use Protection Spec (Talents Only)", GOSSIP_SENDER_MAIN, 104);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_holy_auraoflight:30|t|r Use Retribution Spec (Talents Only)", GOSSIP_SENDER_MAIN, 105);
            break;
        case CLASS_WARRIOR:
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_warrior_innerrage:30|t|r Use Fury Spec", GOSSIP_SENDER_MAIN, 6);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_rogue_eviscerate:30|t|r Use Arms Spec", GOSSIP_SENDER_MAIN, 7);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_warrior_defensivestance:30|t|r Use Protection Spec", GOSSIP_SENDER_MAIN, 8);
            if constexpr (OMIT_TALENT_AND_GLYPH_TEMPLATING)
                break;
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "----------------------------------------------", GOSSIP_SENDER_MAIN, 5000);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_warrior_innerrage:30|t|r Use Fury Spec (Talents Only)", GOSSIP_SENDER_MAIN, 106);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_rogue_eviscerate:30|t|r Use Arms Spec (Talents Only)", GOSSIP_SENDER_MAIN, 107);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_warrior_defensivestance:30|t|r Use Protection Spec (Talents Only)", GOSSIP_SENDER_MAIN, 108);
            break;
        case CLASS_MAGE:
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_holy_magicalsentry:30|t|r Use Arcane Spec", GOSSIP_SENDER_MAIN, 9);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_fire_flamebolt:30|t|r Use Fire Spec", GOSSIP_SENDER_MAIN, 10);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_frost_frostbolt02:30|t|r Use Frost Spec", GOSSIP_SENDER_MAIN, 11);
            if constexpr (OMIT_TALENT_AND_GLYPH_TEMPLATING)
                break;
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "----------------------------------------------", GOSSIP_SENDER_MAIN, 5000);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_holy_magicalsentry:30|t|r Use Arcane Spec (Talents Only)", GOSSIP_SENDER_MAIN, 109);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_fire_flamebolt:30|t|r Use Fire Spec (Talents Only)", GOSSIP_SENDER_MAIN, 110);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_frost_frostbolt02:30|t|r Use Frost Spec (Talents Only)", GOSSIP_SENDER_MAIN, 111);
            break;
        case CLASS_WARLOCK:
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_shadow_deathcoil:30|t|r Use Affliction Spec", GOSSIP_SENDER_MAIN, 12);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_shadow_metamorphosis:30|t|r Use Demonology Spec", GOSSIP_SENDER_MAIN, 13);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_shadow_rainoffire:30|t|r Use Destruction Spec", GOSSIP_SENDER_MAIN, 14);
            if constexpr (OMIT_TALENT_AND_GLYPH_TEMPLATING)
                break;
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "----------------------------------------------", GOSSIP_SENDER_MAIN, 5000);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_shadow_deathcoil:30|t|r Use Affliction Spec (Talents Only)", GOSSIP_SENDER_MAIN, 112);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_shadow_metamorphosis:30|t|r Use Demonology Spec (Talents Only)", GOSSIP_SENDER_MAIN, 113);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_shadow_rainoffire:30|t|r Use Destruction Spec (Talents Only)", GOSSIP_SENDER_MAIN, 114);
            break;
        case CLASS_SHAMAN:
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_nature_lightning:30|t|r Use Elemental Spec", GOSSIP_SENDER_MAIN, 15);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_nature_lightningshield:30|t|r Use Enhancement Spec", GOSSIP_SENDER_MAIN, 16);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_nature_magicimmunity:30|t|r Use Restoration Spec", GOSSIP_SENDER_MAIN, 17);
            if constexpr (OMIT_TALENT_AND_GLYPH_TEMPLATING)
                break;
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "----------------------------------------------", GOSSIP_SENDER_MAIN, 5000);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_nature_lightning:30|t|r Use Elemental Spec (Talents Only)", GOSSIP_SENDER_MAIN, 115);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_nature_lightningshield:30|t|r Use Enhancement Spec (Talents Only)", GOSSIP_SENDER_MAIN, 116);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_nature_magicimmunity:30|t|r Use Restoration Spec (Talents Only)", GOSSIP_SENDER_MAIN, 117);
            break;
        case CLASS_DRUID:
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_nature_starfall:30|t|r Use Ballance Spec", GOSSIP_SENDER_MAIN, 18);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_racial_bearform:30|t|r Use Feral Spec", GOSSIP_SENDER_MAIN, 19);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_nature_healingtouch:30|t|r Use Restoration Spec", GOSSIP_SENDER_MAIN, 20);
            if constexpr (OMIT_TALENT_AND_GLYPH_TEMPLATING)
                break;
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "----------------------------------------------", GOSSIP_SENDER_MAIN, 5000);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_nature_starfall:30|t|r Use Ballance Spec (Talents Only)", GOSSIP_SENDER_MAIN, 118);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_racial_bearform:30|t|r Use Feral Spec (Talents Only)", GOSSIP_SENDER_MAIN, 119);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_nature_healingtouch:30|t|r Use Restoration Spec (Talents Only)", GOSSIP_SENDER_MAIN, 120);
            break;
        case CLASS_HUNTER:
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_marksmanship:30|t|r Use Marksmanship Spec", GOSSIP_SENDER_MAIN, 21);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_hunter_beasttaming:30|t|r Use Beastmastery Spec", GOSSIP_SENDER_MAIN, 22);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_Hunter_swiftstrike:30|t|r Use Survival Spec", GOSSIP_SENDER_MAIN, 23);
            if constexpr (OMIT_TALENT_AND_GLYPH_TEMPLATING)
                break;
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "----------------------------------------------", GOSSIP_SENDER_MAIN, 5000);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_marksmanship:30|t|r Use Marksmanship Spec (Talents Only)", GOSSIP_SENDER_MAIN, 121);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_hunter_beasttaming:30|t|r Use Beastmastery Spec (Talents Only)", GOSSIP_SENDER_MAIN, 122);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_Hunter_swiftstrike:30|t|r Use Survival Spec (Talents Only)", GOSSIP_SENDER_MAIN, 123);
            break;
        case CLASS_ROGUE:
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_rogue_eviscerate:30|t|r Use Assasination Spec", GOSSIP_SENDER_MAIN, 24);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_backstab:30|t|r Use Combat Spec", GOSSIP_SENDER_MAIN, 25);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_stealth:30|t|r Use Subtlety Spec", GOSSIP_SENDER_MAIN, 26);
            if constexpr (OMIT_TALENT_AND_GLYPH_TEMPLATING)
                break;
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "----------------------------------------------", GOSSIP_SENDER_MAIN, 5000);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_rogue_eviscerate:30|t|r Use Assasination Spec (Talents Only)", GOSSIP_SENDER_MAIN, 124);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_backstab:30|t|r Use Combat Spec (Talents Only)", GOSSIP_SENDER_MAIN, 125);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\ability_stealth:30|t|r Use Subtlety Spec (Talents Only)", GOSSIP_SENDER_MAIN, 126);
            break;
        case CLASS_DEATH_KNIGHT:
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_deathknight_bloodpresence:30|t|r Use Blood Spec", GOSSIP_SENDER_MAIN, 27);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_deathknight_frostpresence:30|t|r Use Frost Spec", GOSSIP_SENDER_MAIN, 28);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_deathknight_unholypresence:30|t|r Use Unholy Spec", GOSSIP_SENDER_MAIN, 29);
            if constexpr (OMIT_TALENT_AND_GLYPH_TEMPLATING)
                break;
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "----------------------------------------------", GOSSIP_SENDER_MAIN, 5000);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_deathknight_bloodpresence:30|t|r Use Blood Spec (Talents Only)", GOSSIP_SENDER_MAIN, 127);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_deathknight_frostpresence:30|t|r Use Frost Spec (Talents Only)", GOSSIP_SENDER_MAIN, 128);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\spell_deathknight_unholypresence:30|t|r Use Unholy Spec (Talents Only)", GOSSIP_SENDER_MAIN, 129);
            break;
        }

        // player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "----------------------------------------------", GOSSIP_SENDER_MAIN, 5000);
        // player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\Trade_Engineering:30|t|r Reset Talents", GOSSIP_SENDER_MAIN, 31);
        // player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\Spell_ChargeNegative:30|t|r Destroy my equipped gear", GOSSIP_SENDER_MAIN, 32);
        // player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|cff00ff00|TInterface\\icons\\Spell_ChargeNegative:30|t|r Remove all glyphs", GOSSIP_SENDER_MAIN, 30);

        player->SEND_GOSSIP_MENU(55002, creature->GetGUID());

        return true;
    }

    static void EquipFullTemplateGear(Player* player, std::string playerSpecStr) // Merge
    {
        if (TemplateExistsCheck(player, playerSpecStr) && CheckPlayerIsNaked(player) && CheckSpendTalents(player) && ApplyTalentsAndGlyphs(player, playerSpecStr) && ApplyGear(player, playerSpecStr))
        {
            player->GetSession()->SendAreaTriggerMessage("Successfuly applied %s spec template!", playerSpecStr.c_str());
        }
    }

    static void LearnOnlyTalentsAndGlyphs(Player* player, std::string playerSpecStr) // Merge
    {
        if (TemplateExistsCheck(player, playerSpecStr) && CheckSpendTalents(player) && ApplyTalentsAndGlyphs(player, playerSpecStr))
        {
            player->GetSession()->SendAreaTriggerMessage("Successfuly learned talent spec %s!", playerSpecStr.c_str());
        }
    }

    static bool ApplyTalentsAndGlyphs(Player* player, std::string playerSpecStr)
    {
        LearnWeaponSkills(player);
        LearnPlateMailSpells(player);

        if (!player->HasSpell(SPELL_Amani_War_Bear))
        {
            // Cast spells that teach dual spec
            // Both are also ImplicitTarget self and must be cast by player
            player->CastSpell(player, SPELL_Teach_Learn_Talent_Specialization_Switches, player->GetGUID());
            player->CastSpell(player, SPELL_Learn_a_Second_Talent_Specialization, player->GetGUID());

            // Learn Riding/Flying
            player->learnSpell(SPELL_Artisan_Riding);
            player->learnSpell(SPELL_Cold_Weather_Flying);
            player->learnSpell(SPELL_Amani_War_Bear);
        }

        if constexpr (OMIT_TALENT_AND_GLYPH_TEMPLATING)
        {
            return true;
        }

        sTemplateNpcMgr->LearnTemplateTalents(player, playerSpecStr);
        sTemplateNpcMgr->LearnTemplateGlyphs(player, playerSpecStr);

        if (player->getPowerType() == POWER_MANA)
            player->SetPower(POWER_MANA, player->GetMaxPower(POWER_MANA));

        player->SetHealth(player->GetMaxHealth());

        return true;
    }

    static bool ApplyGear(Player* player, std::string playerSpecStr)
    {

        sTemplateNpcMgr->EquipTemplateGear(player, playerSpecStr);
        return true;
    }

    static bool CheckPlayerIsNaked(Player* player)
    {
        // Don't let players to use Template feature while wearing some gear
        for (uint8 i = EQUIPMENT_SLOT_START; i < EQUIPMENT_SLOT_END; ++i)
        {
            if (Item* haveItemEquipped = player->GetItemByPos(INVENTORY_SLOT_BAG_0, i))
            {
                if (haveItemEquipped)
                {
                    player->GetSession()->SendAreaTriggerMessage("You need to remove all your equipped items in order to use this feature!");
                    return false;
                }
            }
        }
        return true;
    }

    static bool TemplateExistsCheck(Player* player, std::string playerSpecStr)
    {
        if (sTemplateNpcMgr->CanEquipTemplate(player, playerSpecStr) == false)
        {
            player->GetSession()->SendAreaTriggerMessage("There's no templates for %s specialization yet.", playerSpecStr.c_str());
            return false;
        }
        return true;
    }

    static bool CheckSpendTalents(Player* player)
    {
        // Don't let players to use Template feature after spending some talent points
        if (player->GetFreeTalentPoints() < 71)
        {
            player->GetSession()->SendAreaTriggerMessage("You have already spent some talent points. You need to reset your talents first!");
            return false;
        }
        return true;
    }

    bool OnGossipSelect(Player* player, Creature* creature, uint32 /*uiSender*/, uint32 uiAction)
    {
        player->PlayerTalkClass->ClearMenus();

        if (!player || !creature)
            return false;

        switch (uiAction)
        {
        case 0: // Use Discipline Priest Spec
            EquipFullTemplateGear(player, "Discipline");
            break;

        case 1: // Use Holy Priest Spec
            EquipFullTemplateGear(player, "Holy");
            break;

        case 2: // Use Shadow Priest Spec
            EquipFullTemplateGear(player, "Shadow");
            break;

        case 3: // Use Holy Paladin Spec
            EquipFullTemplateGear(player, "Holy");
            break;

        case 4: // Use Protection Paladin Spec
            EquipFullTemplateGear(player, "Protection");
            break;

        case 5: // Use Retribution Paladin Spec
            EquipFullTemplateGear(player, "Retribution");
            break;

        case 6: // Use Fury Warrior Spec
            EquipFullTemplateGear(player, "Fury");
            break;

        case 7: // Use Arms Warrior Spec
            EquipFullTemplateGear(player, "Arms");
            break;

        case 8: // Use Protection Warrior Spec
            EquipFullTemplateGear(player, "Protection");
            break;

        case 9: // Use Arcane Mage Spec
            EquipFullTemplateGear(player, "Arcane");
            break;

        case 10: // Use Fire Mage Spec
            EquipFullTemplateGear(player, "Fire");
            break;

        case 11: // Use Frost Mage Spec
            EquipFullTemplateGear(player, "Frost");
            break;

        case 12: // Use Affliction Warlock Spec
            EquipFullTemplateGear(player, "Affliction");
            break;

        case 13: // Use Demonology Warlock Spec
            EquipFullTemplateGear(player, "Demonology");
            break;

        case 14: // Use Destruction Warlock Spec
            EquipFullTemplateGear(player, "Destruction");
            break;

        case 15: // Use Elemental Shaman Spec
            EquipFullTemplateGear(player, "Elemental");
            break;

        case 16: // Use Enhancement Shaman Spec
            EquipFullTemplateGear(player, "Enhancement");
            break;

        case 17: // Use Restoration Shaman Spec
            EquipFullTemplateGear(player, "Restoration");
            break;

        case 18: // Use Ballance Druid Spec
            EquipFullTemplateGear(player, "Ballance");
            break;

        case 19: // Use Feral Druid Spec
            EquipFullTemplateGear(player, "Feral");
            break;

        case 20: // Use Restoration Druid Spec
            EquipFullTemplateGear(player, "Restoration");
            break;

        case 21: // Use Marksmanship Hunter Spec
            EquipFullTemplateGear(player, "Marksmanship");
            break;

        case 22: // Use Beastmastery Hunter Spec
            EquipFullTemplateGear(player, "Beastmastery");
            break;

        case 23: // Use Survival Hunter Spec
            EquipFullTemplateGear(player, "Survival");
            break;

        case 24: // Use Assassination Rogue Spec
            EquipFullTemplateGear(player, "Assassination");
            break;

        case 25: // Use Combat Rogue Spec
            EquipFullTemplateGear(player, "Combat");
            break;

        case 26: // Use Subtlety Rogue Spec
            EquipFullTemplateGear(player, "Subtlety");
            break;

        case 27: // Use Blood DK Spec
            EquipFullTemplateGear(player, "Blood");
            break;

        case 28: // Use Frost DK Spec
            EquipFullTemplateGear(player, "Frost");
            break;

        case 29: // Use Unholy DK Spec
            EquipFullTemplateGear(player, "Unholy");
            break;

        case 30:
            sTemplateNpcMgr->RemoveAllGlyphs(player);
            player->GetSession()->SendAreaTriggerMessage("Your glyphs have been removed.");
            break;

        case 31:
            // there is a issue with how talent teaching
            // and talent reset works
            // (addTalent() doesn't bump m_usedTalentCount)
            // m_usedTalentCount will however get set correctly
            // on relog.
            if (player->resetTalents(true))
            {
                player->SendTalentsInfoData(false);
                player->GetSession()->SendAreaTriggerMessage("Your talents have been reset.");
            }
            else
            {
                player->GetSession()->SendAreaTriggerMessage("Your talent's couldn't be reset. Try to re-log.");
            }
            break;
        case 32:
            for (uint8 i = EQUIPMENT_SLOT_START; i < EQUIPMENT_SLOT_END; ++i)
            {
                if (Item* haveItemEquipped = player->GetItemByPos(INVENTORY_SLOT_BAG_0, i))
                {
                    if (haveItemEquipped)
                    {
                        player->DestroyItemCount(haveItemEquipped->GetEntry(), 1, true, true);

                        if (haveItemEquipped->IsInWorld())
                        {
                            haveItemEquipped->RemoveFromWorld();
                            haveItemEquipped->DestroyForPlayer(player);
                        }

                        haveItemEquipped->SetUInt64Value(ITEM_FIELD_CONTAINED, 0);
                        haveItemEquipped->SetSlot(NULL_SLOT);
                        haveItemEquipped->SetState(ITEM_REMOVED, player);
                    }
                }
            }
            player->GetSession()->SendAreaTriggerMessage("Your equipped gear has been destroyed.");
            break;

            // Priest
        case 100:
            LearnOnlyTalentsAndGlyphs(player, "Discipline");
            break;

        case 101:
            LearnOnlyTalentsAndGlyphs(player, "Holy");
            break;

        case 102:
            LearnOnlyTalentsAndGlyphs(player, "Shadow");
            break;

            // Paladin
        case 103:
            LearnOnlyTalentsAndGlyphs(player, "Holy");
            break;

        case 104:
            LearnOnlyTalentsAndGlyphs(player, "Protection");
            break;

        case 105:
            LearnOnlyTalentsAndGlyphs(player, "Retribution");
            break;

            // Warrior
        case 106:
            LearnOnlyTalentsAndGlyphs(player, "Fury");
            break;

        case 107:
            LearnOnlyTalentsAndGlyphs(player, "Arms");
            break;

        case 108:
            LearnOnlyTalentsAndGlyphs(player, "Protection");
            break;

            // Mage
        case 109:
            LearnOnlyTalentsAndGlyphs(player, "Arcane");
            break;

        case 110:
            LearnOnlyTalentsAndGlyphs(player, "Fire");
            break;

        case 111:
            LearnOnlyTalentsAndGlyphs(player, "Frost");
            break;

            // Warlock
        case 112:
            LearnOnlyTalentsAndGlyphs(player, "Affliction");
            break;

        case 113:
            LearnOnlyTalentsAndGlyphs(player, "Demonology");
            break;

        case 114:
            LearnOnlyTalentsAndGlyphs(player, "Destruction");
            break;

            // Shaman
        case 115:
            LearnOnlyTalentsAndGlyphs(player, "Elemental");
            break;

        case 116:
            LearnOnlyTalentsAndGlyphs(player, "Enhancement");
            break;

        case 117:
            LearnOnlyTalentsAndGlyphs(player, "Restoration");
            break;

            // Druid
        case 118:
            LearnOnlyTalentsAndGlyphs(player, "Ballance");
            break;

        case 119:
            LearnOnlyTalentsAndGlyphs(player, "Feral");
            break;

        case 120:
            LearnOnlyTalentsAndGlyphs(player, "Restoration");
            break;

            // Hunter
        case 121:
            LearnOnlyTalentsAndGlyphs(player, "Marksmanship");
            break;

        case 122:
            LearnOnlyTalentsAndGlyphs(player, "Beastmastery");
            break;

        case 123:
            LearnOnlyTalentsAndGlyphs(player, "Survival");
            break;

            // Rogue
        case 124:
            LearnOnlyTalentsAndGlyphs(player, "Assasination");
            break;

        case 125:
            LearnOnlyTalentsAndGlyphs(player, "Combat");
            break;

        case 126:
            LearnOnlyTalentsAndGlyphs(player, "Subtlety");
            break;

            // DK
        case 127:
            LearnOnlyTalentsAndGlyphs(player, "Blood");
            break;

        case 128:
            LearnOnlyTalentsAndGlyphs(player, "Frost");
            break;

        case 129:
            LearnOnlyTalentsAndGlyphs(player, "Unholy");
            break;

        case 5000:
            // return to OnGossipHello menu, otherwise it will freeze every menu
            OnGossipHello(player, creature);
            break;

        default: // Just in case
            player->GetSession()->SendAreaTriggerMessage("Something went wrong in the code. Please contact the administrator.");
            break;
        }

        player->CLOSE_GOSSIP_MENU();
        player->UpdateSkillsForLevel();
        player->SaveToDB(false, false);

        return true;
    }
};

class TemplateNPC_command : public CommandScript
{
  public:
    TemplateNPC_command() : CommandScript("TemplateNPC_command")
    {
    }

    std::vector<ChatCommand> GetCommands() const override
    {
        static std::vector<ChatCommand> saveTable = {
            {"horde", SEC_ADMINISTRATOR, false, &HandleSaveGearHorde, "<spec>, example: `.template save horde Arms`"},
            {"alliance", SEC_ADMINISTRATOR, false, &HandleSaveGearAlly, "<spec>, example: `.template save alliance Arms`"},
            {"human", SEC_ADMINISTRATOR, false, &HandleSaveGearHuman, "<spec>, example: `.template save human Arms`"},
        };

        static std::vector<ChatCommand> TemplateNPCTable = {
            {"copy", SEC_ADMINISTRATOR, false, &HandleCopyCommand, "Copies your target's gear onto your character. example: `.template copy`"},
            {"save", SEC_ADMINISTRATOR, false, nullptr, "", saveTable},
            {"reload", SEC_ADMINISTRATOR, true, &HandleReloadTemplateNPCCommand, ""},
        };

        static std::vector<ChatCommand> commandTable = {
            {"template", SEC_ADMINISTRATOR, true, nullptr, "", TemplateNPCTable},
        };

        return commandTable;
    }

    static bool HandleCopyCommand(ChatHandler* handler, const char* _args)
    {
        Player* caller = handler->GetSession()->GetPlayer();
        if (!caller)
        {
            assert(false);
        }
        uint64 selected = handler->GetSession()->GetPlayer()->GetTarget();
        if (!selected)
        {
            handler->SendGlobalGMSysMessage("You have to select a player");
            return false;
        }
        Player* target = ObjectAccessor::FindPlayerInOrOutOfWorld(selected);

        if (!target)
        {
            handler->SendGlobalGMSysMessage("You have to select a player.");
            return false;
        }

        if (caller == target)
        {
            handler->SendGlobalGMSysMessage("You are trying to copy your own gear, which is pointless.");
            return false;
        }

        if (caller->getClass() != target->getClass())
        {
            handler->SendGlobalGMSysMessage("In order to copy someone you need to be of the same class.");
            return false;
        }

        sTemplateNpcMgr->Copy(caller, target);

        handler->SendGlobalGMSysMessage("Character copied.");

        return true;
    }

    static bool HandleSaveGearHorde(ChatHandler* handler, const char* _args)
    {
        return HandleSaveCommon(handler, _args, TEMPLATE_HORDE);
    }

    static bool HandleSaveGearAlly(ChatHandler* handler, const char* _args)
    {
        return HandleSaveCommon(handler, _args, TEMPLATE_ALLIANCE);
    }

    static bool HandleSaveGearHuman(ChatHandler* handler, const char* _args)
    {
        return HandleSaveCommon(handler, _args, TEMPLATE_HUMAN);
    }

    static bool HandleSaveCommon(ChatHandler* handler, const char* _args, TemplateType type)
    {
        if (!*_args)
            return false;

        auto spec = std::string(_args);

        auto selectedSpec = knownSpecs.find(spec);
        if (selectedSpec == knownSpecs.end())
        {
            handler->SendGlobalGMSysMessage("Unknown spec passed");
            return false;
        }

        Player* p = handler->getSelectedPlayerOrSelf();
        if (p == nullptr)
            return false;

        sTemplateNpcMgr->ExtractGearTemplateToDB(p, spec, type);

        handler->SendGlobalGMSysMessage("Template extracted to DB. You might want to type \".template reload\".");

        return true;
    }

    static bool HandleReloadTemplateNPCCommand(ChatHandler* handler, const char* /*args*/)
    {
        sLog->outString("Reloading templates for Template NPC table...");
        sTemplateNpcMgr->LoadHumanGearContainer();
        sTemplateNpcMgr->LoadAllianceGearContainer();
        sTemplateNpcMgr->LoadHordeGearContainer();
        handler->SendGlobalGMSysMessage("Template NPC templates reloaded.");
        return true;
    }
};

class TemplateNPC_World : public WorldScript
{
  public:
    TemplateNPC_World() : WorldScript("TemplateNPC_World")
    {
    }

    void OnStartup() override
    {
        // Load templates for Template NPC #1
        sLog->outString("== TEMPLATE NPC ===========================================================================");
        sLog->outString("Loading Template Talents...");
        sTemplateNpcMgr->LoadTalentsContainer();

        // Load templates for Template NPC #2
        sLog->outString("Loading Template Glyphs...");
        sTemplateNpcMgr->LoadGlyphsContainer();

        // Load templates for Template NPC #3
        sLog->outString("Loading Template Gear for Humans...");
        sTemplateNpcMgr->LoadHumanGearContainer();

        // Load templates for Template NPC #4
        sLog->outString("Loading Template Gear for Alliances...");
        sTemplateNpcMgr->LoadAllianceGearContainer();

        // Load templates for Template NPC #5
        sLog->outString("Loading Template Gear for Hordes...");
        sTemplateNpcMgr->LoadHordeGearContainer();
        sLog->outString("== END TEMPLATE NPC ===========================================================================");
    }
};

void AddSC_TemplateNPC()
{
    new TemplateNPC();
    new TemplateNPC_command();
    new TemplateNPC_World();
}
