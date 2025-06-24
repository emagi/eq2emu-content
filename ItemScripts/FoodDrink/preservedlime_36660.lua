-- Effects extracted from item_effects table:
-- Increases AGI of target by 0.6
-- Increases Out-of-Combat Health Regeneration of target by 4.0

function cast(Item, Player)
    Spell = GetSpell(5462, 2, "Spells/Commoner/HomemadeMealGenericAgi.lua")
    SetSpellData(Spell, "name", "preserved lime")
    SetSpellData(Spell, "description", "This is a lime you found inside of an old treasure chest. It has been preserved quite well for having been at the bottom of the ocean.")
    newDuration = 18000.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 4.0
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    AGI = 0.6
    SetSpellDataIndex(Spell, 1, AGI)
    SetSpellDisplayEffect(Spell, 1, "description", "Increases AGI of target by " .. AGI)
    CastCustomSpell(Spell, Player, Player)
end