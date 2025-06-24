-- Effects extracted from item_effects table:
-- Increases INT and WIS of target by 3.2
-- Increases Out-of-Combat Health Regeneration of target by 27.5

function cast(Item, Player)
    Spell = GetSpell(5462, 2, "Spells/Commoner/HomemadeMealGenericIntWis.lua")
    SetSpellData(Spell, "name", "bland walnut-orange trail mix")
    SetSpellData(Spell, "description", "This homemade food replenishes additional health during non-combat situations.")
    newDuration = 136800.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 27.5
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    INT = 3.2
    SetSpellDataIndex(Spell, 1, INT)
    SetSpellDisplayEffect(Spell, 1, "description", "Increases INT of target by " .. INT)
    WIS = 3.2
    SetSpellDataIndex(Spell, 2, WIS)
    SetSpellDisplayEffect(Spell, 2, "description", "Increases WIS of target by " .. WIS)
    CastCustomSpell(Spell, Player, Player)
end