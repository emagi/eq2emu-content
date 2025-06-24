-- Effects extracted from item_effects table:
-- Increases Max Health of target by 80.0
-- Increases Out-of-Combat Power Regeneration of target by 120.0

function cast(Item, Player)
    Spell = GetSpell(5463, 2, "Spells/Commoner/HomemadeDrinkGenericMaxHP.lua")
    SetSpellData(Spell, "name", "Hornet Venom Infusion")
    SetSpellData(Spell, "description", "")
    newDuration = 18000.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 120.0
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    MaxHP = 80.0
    SetSpellDataIndex(Spell, 1, MaxHP)
    SetSpellDisplayEffect(Spell, 1, "description", "Increases MaxHP of target by " .. MaxHP)
    CastCustomSpell(Spell, Player, Player)
end