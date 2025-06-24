-- Effects extracted from item_effects table:
-- Increases Out-of-Combat Power Regeneration of target by 24.0

function cast(Item, Player)
    Spell = GetSpell(5463, 1, "Spells/Commoner/HomemadeDrinkGeneric.lua")
    SetSpellData(Spell, "name", "Thexian Pinot Noir: Pre-Shattering")
    SetSpellData(Spell, "description", "Thexian Pinot Noir gathered straight from the underground vineyards of Neriak.  Lost for centuries, this ancient vintage was thought to have been destroyed with the loss of the city of Neriak and the separation of the Teir'Dal from the royal Thexian line.  
")
    newDuration = 18000.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 24.0
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    CastCustomSpell(Spell, Player, Player)
end