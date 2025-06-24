-- Effects extracted from item_effects table:
-- Increases STA and STR of target by 13.2
-- Increases Out-of-Combat Health Regeneration of target by 190.0

function cast(Item, Player)
    Spell = GetSpell(5462, 2, "Spells/Commoner/HomemadeMealGenericStrSta.lua")
    SetSpellData(Spell, "name", "Luscious Cranberry Pie with Cream")
    SetSpellData(Spell, "description", "")
    newDuration = 181800.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 190.0
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    STR = 13.2
    SetSpellDataIndex(Spell, 1, STR)
    SetSpellDisplayEffect(Spell, 1, "description", "Increases STR of target by " .. STR)
    STA = 13.2
    SetSpellDataIndex(Spell, 2, STA)
    SetSpellDisplayEffect(Spell, 2, "description", "Increases STA of target by " .. STA)
    CastCustomSpell(Spell, Player, Player)
end