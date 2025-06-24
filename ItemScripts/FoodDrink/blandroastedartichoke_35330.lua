-- Effects extracted from item_effects table:
-- Increases WIS of target by 12.7
-- Increases Out-of-Combat Health Regeneration of target by 127.5

function cast(Item, Player)
    Spell = GetSpell(5462, 2, "Spells/Commoner/HomemadeMealGenericWis.lua")
    SetSpellData(Spell, "name", "bland roasted artichoke")
    SetSpellData(Spell, "description", "")
    newDuration = 27000.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 127.5
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    WIS = 12.7
    SetSpellDataIndex(Spell, 1, WIS)
    SetSpellDisplayEffect(Spell, 1, "description", "Increases WIS of target by " .. WIS)
    CastCustomSpell(Spell, Player, Player)
end