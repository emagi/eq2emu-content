-- Effects extracted from item_effects table:
-- Increases Out-of-Combat Health Regeneration of target by 127.5
-- Increases Max Health of target by 145.6

function cast(Item, Player)
    Spell = GetSpell(5462, 2, "Spells/Commoner/HomemadeMealGenericMaxHP.lua")
    SetSpellData(Spell, "name", "delectable caiman soup")
    SetSpellData(Spell, "description", "")
    newDuration = 81000.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 127.5
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    MaxHP = 145.6
    SetSpellDataIndex(Spell, 1, MaxHP)
    SetSpellDisplayEffect(Spell, 1, "description", "Increases MaxHP of target by " .. MaxHP)
    CastCustomSpell(Spell, Player, Player)
end