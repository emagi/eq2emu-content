-- Effects extracted from item_effects table:
-- Increases Max Power of target by 80.0
-- Increases Out-of-Combat Power Regeneration of target by 120.0

function cast(Item, Player)
    Spell = GetSpell(5463, 2, "Spells/Commoner/HomemadeDrinkGenericMaxPwr.lua")
    SetSpellData(Spell, "name", "Cockatrice Blood Infusion")
    SetSpellData(Spell, "description", "")
    newDuration = 18000.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 120.0
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    MaxPower = 80.0
    SetSpellDataIndex(Spell, 1, MaxPower)
    SetSpellDisplayEffect(Spell, 1, "description", "Increases MaxPower of target by " .. MaxPower)
    CastCustomSpell(Spell, Player, Player)
end