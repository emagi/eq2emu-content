-- Effects extracted from item_effects table:
-- Increases AGI and STA of target by 84.7
-- Increases Attack Speed of target by 15.0
-- Increases Damage Per Second of target by 15.0
-- Increases Out-of-Combat Power Regeneration of target by 159.3

function cast(Item, Player)
    Spell = GetSpell(5463, 2, "Spells/Commoner/HomemadeDrinkGenericAgiSta.lua")
    SetSpellData(Spell, "name", "Draconic Miscreant's Intoxicating Brew")
    SetSpellData(Spell, "description", "")
    newDuration = 90000.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 159.3
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    AGI = 84.7
    SetSpellDataIndex(Spell, 1, AGI)
    SetSpellDisplayEffect(Spell, 1, "description", "Increases AGI of target by " .. AGI)
    STA = 84.7
    SetSpellDataIndex(Spell, 2, STA)
    SetSpellDisplayEffect(Spell, 2, "description", "Increases STA of target by " .. STA)
    CastCustomSpell(Spell, Player, Player)
end