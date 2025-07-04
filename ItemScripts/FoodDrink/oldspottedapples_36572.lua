-- Effects extracted from item_effects table:
-- Increases INT of target by 4.3
-- Increases Out-of-Combat Health Regeneration of target by 27.5

function cast(Item, Player)
    Spell = GetSpell(5462, 2, "Spells/Commoner/HomemadeMealGenericInt.lua")
    SetSpellData(Spell, "name", "old spotted apples")
    SetSpellData(Spell, "description", "")
    newDuration = 180000.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 27.5
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    INT = 4.3
    SetSpellDataIndex(Spell, 1, INT)
    SetSpellDisplayEffect(Spell, 1, "description", "Increases INT of target by " .. INT)
    CastCustomSpell(Spell, Player, Player)
end