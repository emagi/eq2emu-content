-- Effects extracted from item_effects table:
-- Increases STR of target by 1.6
-- Target will Parry 0.2% of incoming attacks
-- Increases Out-of-Combat Health Regeneration of target by 10.0

function cast(Item, Player)
    Spell = GetSpell(5462, 2, "Spells/Commoner/HomemadeMealGenericStr.lua")
    SetSpellData(Spell, "name", "Cranberry Glazed Drachnid Reduction")
    SetSpellData(Spell, "description", "")
    newDuration = 18000.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 10.0
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    STR = 1.6
    SetSpellDataIndex(Spell, 1, STR)
    SetSpellDisplayEffect(Spell, 1, "description", "Increases STR of target by " .. STR)
    CastCustomSpell(Spell, Player, Player)
end