-- Effects extracted from item_effects table:
-- Increases AGI of target by 1.5
-- Increases Out-of-Combat Health Regeneration of target by 10.0

function cast(Item, Player)
    Spell = GetSpell(5462, 2, "Spells/Commoner/HomemadeMealGenericAgi.lua")
    SetSpellData(Spell, "name", "delectable baked frog leg")
    SetSpellData(Spell, "description", "This homemade food increases agility and replenishes additional health during non-combat situations.")
    newDuration = 36000.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 10.0
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    AGI = 1.5
    SetSpellDataIndex(Spell, 1, AGI)
    SetSpellDisplayEffect(Spell, 1, "description", "Increases AGI of target by " .. AGI)
    CastCustomSpell(Spell, Player, Player)
end