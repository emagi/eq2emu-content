-- Effects extracted from item_effects table:
-- Increases STR of target by 3.7
-- Increases Out-of-Combat Health Regeneration of target by 63.5

function cast(Item, Player)
    Spell = GetSpell(5462, 2, "Spells/Commoner/HomemadeMealGenericStr.lua")
    SetSpellData(Spell, "name", "aviak ribs")
    SetSpellData(Spell, "description", "Seared aviak ribs.")
    newDuration = 18000.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 63.5
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    STR = 3.7
    SetSpellDataIndex(Spell, 1, STR)
    SetSpellDisplayEffect(Spell, 1, "description", "Increases STR of target by " .. STR)
    CastCustomSpell(Spell, Player, Player)
end