-- Effects extracted from item_effects table:
-- Increases STR of target by 10.5
-- Increases Out-of-Combat Health Regeneration of target by 102.5

function cast(Item, Player)
    Spell = GetSpell(5462, 2, "Spells/Commoner/HomemadeMealGenericStr.lua")
    SetSpellData(Spell, "name", "wyrm steak")
    SetSpellData(Spell, "description", "This homemade food increases strength and replenishes additional health during non-combat situations.")
    newDuration = 32400.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 102.5
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    STR = 10.5
    SetSpellDataIndex(Spell, 1, STR)
    SetSpellDisplayEffect(Spell, 1, "description", "Increases STR of target by " .. STR)
    CastCustomSpell(Spell, Player, Player)
end