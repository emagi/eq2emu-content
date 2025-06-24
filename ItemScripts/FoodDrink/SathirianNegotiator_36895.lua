-- Effects extracted from item_effects table:
-- Increases AGI and WIS of target by 13.2
-- Increases Out-of-Combat Power Regeneration of target by 120.0

function cast(Item, Player)
    Spell = GetSpell(5463, 2, "Spells/Commoner/HomemadeDrinkGenericAgiWis.lua")
    SetSpellData(Spell, "name", "Sathirian Negotiator")
    SetSpellData(Spell, "description", "")
    newDuration = 181800.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 120.0
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    AGI = 13.2
    SetSpellDataIndex(Spell, 1, AGI)
    SetSpellDisplayEffect(Spell, 1, "description", "Increases AGI of target by " .. AGI)
    WIS = 13.2
    SetSpellDataIndex(Spell, 2, WIS)
    SetSpellDisplayEffect(Spell, 2, "description", "Increases WIS of target by " .. WIS)
    CastCustomSpell(Spell, Player, Player)
end