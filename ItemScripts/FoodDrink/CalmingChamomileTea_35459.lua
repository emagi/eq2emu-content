-- Effects extracted from item_effects table:
-- Increases Out-of-Combat Power Regeneration of target by 11.4
-- This effect suspends during combat

function cast(Item, Player)
    Spell = GetSpell(5463, 1, "Spells/Commoner/HomemadeDrinkGeneric.lua")
    SetSpellData(Spell, "name", "Calming Chamomile Tea")
    SetSpellData(Spell, "description", "A freshly steeped tea using dried chamomile flowers that is sure to set you at ease and relieve any anxiety.")
    newDuration = 18000.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 11.4
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    CastCustomSpell(Spell, Player, Player)
end