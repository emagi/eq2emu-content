-- Effects extracted from item_effects table:
-- Increases AGI and STR of target by 13.2
-- Increases Out-of-Combat Power Regeneration of target by 120.0

function cast(Item, Player)
    Spell = GetSpell(5463, 2, "Spells/Commoner/HomemadeDrinkGenericAgiStr.lua")
    SetSpellData(Spell, "name", "Headless Cockatrice")
    SetSpellData(Spell, "description", "")
    newDuration = 81000.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 120.0
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    AGI = 13.2
    SetSpellDataIndex(Spell, 1, AGI)
    SetSpellDisplayEffect(Spell, 1, "description", "Increases AGI of target by " .. AGI)
    STR = 13.2
    SetSpellDataIndex(Spell, 2, STR)
    SetSpellDisplayEffect(Spell, 2, "description", "Increases STR of target by " .. STR)
    CastCustomSpell(Spell, Player, Player)
end