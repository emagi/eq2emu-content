-- Effects extracted from item_effects table:
-- Increases STR of target by 14.9
-- Increases Out-of-Combat Health Regeneration of target by 158.8

function cast(Item, Player)
    Spell = GetSpell(5462, 2, "Spells/Commoner/HomemadeMealGenericStr.lua")
    SetSpellData(Spell, "name", "baked flying fish")
    SetSpellData(Spell, "description", "")
    newDuration = 121200.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 158.8
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    STR = 14.9
    SetSpellDataIndex(Spell, 1, STR)
    SetSpellDisplayEffect(Spell, 1, "description", "Increases STR of target by " .. STR)
    CastCustomSpell(Spell, Player, Player)
end