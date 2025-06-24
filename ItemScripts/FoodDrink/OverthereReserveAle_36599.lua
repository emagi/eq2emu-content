-- Effects extracted from item_effects table:
-- Increases Max Health of target by 6.0
-- Increases Max Power of target by 6.0
-- Increases Out-of-Combat Power Regeneration of target by 15.0

function cast(Item, Player)
    Spell = GetSpell(5463, 2, "Spells/Commoner/HomemadeDrinkGenericMaxHpPwr.lua")
    SetSpellData(Spell, "name", "Overthere Reserve Ale")
    SetSpellData(Spell, "description", "")
    newDuration = 181800.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 15.0
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    MaxHP = 6.0
    SetSpellDataIndex(Spell, 1, MaxHP)
    SetSpellDisplayEffect(Spell, 1, "description", "Increases MaxHP of target by " .. MaxHP)
    MaxPower = 6.0
    SetSpellDataIndex(Spell, 2, MaxPower)
    SetSpellDisplayEffect(Spell, 2, "description", "Increases MaxPower of target by " .. MaxPower)
    CastCustomSpell(Spell, Player, Player)
end