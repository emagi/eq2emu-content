-- Effects extracted from item_effects table:
-- Increases Out-of-Combat Health Regeneration of target by 10.0
-- Increases Max Power of target by 10.5

function cast(Item, Player)
    Spell = GetSpell(5462, 2, "Spells/Commoner/HomemadeMealGenericMaxPwr.lua")
    SetSpellData(Spell, "name", "savory pecan pie")
    SetSpellData(Spell, "description", "This homemade food increases your maximum power and replenishes additional health during non-combat situations.")
    newDuration = 150600.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 10.0
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    MaxPower = 10.5
    SetSpellDataIndex(Spell, 1, MaxPower)
    SetSpellDisplayEffect(Spell, 1, "description", "Increases MaxPower of target by " .. MaxPower)
    CastCustomSpell(Spell, Player, Player)
end