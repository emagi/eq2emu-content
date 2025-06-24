-- Effects extracted from item_effects table:
-- Increases WIS of target by 8.4
-- Increases Out-of-Combat Health Regeneration of target by 77.5

function cast(Item, Player)
    Spell = GetSpell(5462, 2, "Spells/Commoner/HomemadeMealGenericWis.lua")
    SetSpellData(Spell, "name", "roasted cucumber")
    SetSpellData(Spell, "description", "This homemade food increases wisdom and replenishes additional health during non-combat situations.")
    newDuration = 32400.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 77.5
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    WIS = 8.4
    SetSpellDataIndex(Spell, 1, WIS)
    SetSpellDisplayEffect(Spell, 1, "description", "Increases WIS of target by " .. WIS)
    CastCustomSpell(Spell, Player, Player)
end