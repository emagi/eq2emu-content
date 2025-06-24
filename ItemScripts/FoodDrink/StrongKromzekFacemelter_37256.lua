-- Effects extracted from item_effects table:
-- Increases STA and STR of target by 61.6
-- Target will Dodge 2.5% of incoming attacks
-- Increases Out-of-Combat Power Regeneration of target by 141.6

function cast(Item, Player)
    Spell = GetSpell(5463, 2, "Spells/Commoner/HomemadeDrinkGenericStrSta.lua")
    SetSpellData(Spell, "name", "Strong Kromzek Facemelter")
    SetSpellData(Spell, "description", "")
    newDuration = 180000.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 141.6
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    STR = 61.6
    SetSpellDataIndex(Spell, 1, STR)
    SetSpellDisplayEffect(Spell, 1, "description", "Increases STR of target by " .. STR)
    STA = 61.6
    SetSpellDataIndex(Spell, 2, STA)
    SetSpellDisplayEffect(Spell, 2, "description", "Increases STA of target by " .. STA)
    CastCustomSpell(Spell, Player, Player)
end