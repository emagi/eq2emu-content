-- Effects extracted from item_effects table:
-- Increases INT of target by 1.1
-- Increases Out-of-Combat Health Regeneration of target by 11.0

function cast(Item, Player)
    Spell = GetSpell(5462, 2, "Spells/Commoner/HomemadeMealGenericInt.lua")
    SetSpellData(Spell, "name", "sliced orange")
    SetSpellData(Spell, "description", "Oranges sliced into small sections.")
    newDuration = 18000.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 11.0
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    INT = 1.1
    SetSpellDataIndex(Spell, 1, INT)
    SetSpellDisplayEffect(Spell, 1, "description", "Increases INT of target by " .. INT)
    CastCustomSpell(Spell, Player, Player)
end