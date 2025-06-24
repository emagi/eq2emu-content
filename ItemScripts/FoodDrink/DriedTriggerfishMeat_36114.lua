-- Effects extracted from item_effects table:
-- Increases Out-of-Combat Health Regeneration of target by 4.0
-- This effect suspends during combat

function cast(Item, Player)
    Spell = GetSpell(5462, 1, "Spells/Commoner/HomemadeMealGeneric.lua")
    SetSpellData(Spell, "name", "Dried Triggerfish Meat")
    SetSpellData(Spell, "description", "A dried chunk from a local triggerfish.")
    newDuration = 22500.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 4.0
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    CastCustomSpell(Spell, Player, Player)
end