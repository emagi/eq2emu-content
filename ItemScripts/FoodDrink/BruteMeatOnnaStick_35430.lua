-- Effects extracted from item_effects table:
-- Increases Max Power of target by 90.0
-- Increases Out-of-Combat Health Regeneration of target by 221.3

function cast(Item, Player)
    Spell = GetSpell(5462, 2, "Spells/Commoner/HomemadeMealGenericMaxPwr.lua")
    SetSpellData(Spell, "name", "Brute Meat Onna Stick")
    SetSpellData(Spell, "description", "Guaranteed to be 100% brute parts.")
    newDuration = 54000.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 221.3
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    MaxPower = 90.0
    SetSpellDataIndex(Spell, 1, MaxPower)
    SetSpellDisplayEffect(Spell, 1, "description", "Increases MaxPower of target by " .. MaxPower)
    CastCustomSpell(Spell, Player, Player)
end