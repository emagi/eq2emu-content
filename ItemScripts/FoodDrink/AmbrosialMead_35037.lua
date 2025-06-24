-- Effects extracted from item_effects table:
-- Increases STA and STR of target by 5.4
-- Target will Dodge 3.0% of incoming attacks
-- Increases Out-of-Combat Power Regeneration of target by 7.2

function cast(Item, Player)
    Spell = GetSpell(5463, 2, "Spells/Commoner/HomemadeDrinkGenericStrSta.lua")
    SetSpellData(Spell, "name", "Ambrosial Mead")
    SetSpellData(Spell, "description", "")
    newDuration = 18000.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 7.2
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    STR = 5.4
    SetSpellDataIndex(Spell, 1, STR)
    SetSpellDisplayEffect(Spell, 1, "description", "Increases STR of target by " .. STR)
    STA = 5.4
    SetSpellDataIndex(Spell, 2, STA)
    SetSpellDisplayEffect(Spell, 2, "description", "Increases STA of target by " .. STA)
    CastCustomSpell(Spell, Player, Player)
end