-- Effects extracted from item_effects table:
-- Increases STA and AGI of target by 4.6
-- Increases Out-of-Combat Power Regeneration of target by 6.4
-- Increases Attack Speed of target by 8.0

function cast(Item, Player)
    Spell = GetSpell(5463, 2, "Spells/Commoner/HomemadeDrinkGenericAgiSta.lua")
    SetSpellData(Spell, "name", "Stumbler's Wine")
    SetSpellData(Spell, "description", "")
    newDuration = 90000.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 6.4
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    AGI = 4.6
    SetSpellDataIndex(Spell, 1, AGI)
    SetSpellDisplayEffect(Spell, 1, "description", "Increases AGI of target by " .. AGI)
    STA = 4.6
    SetSpellDataIndex(Spell, 2, STA)
    SetSpellDisplayEffect(Spell, 2, "description", "Increases STA of target by " .. STA)
    CastCustomSpell(Spell, Player, Player)
end