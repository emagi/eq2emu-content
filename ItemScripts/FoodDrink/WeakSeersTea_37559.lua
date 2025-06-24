-- Effects extracted from item_effects table:
-- Increases INT of target by 61.6
-- Increases outgoing damaging spell amount by 1.5%
-- Increases STA of target by 61.6
-- Increases Out-of-Combat Power Regeneration of target by 141.6

function cast(Item, Player)
    Spell = GetSpell(5463, 2, "Spells/Commoner/HomemadeDrinkGenericStaInt.lua")
    SetSpellData(Spell, "name", "Weak Seer's Tea")
    SetSpellData(Spell, "description", "")
    newDuration = 18000.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 141.6
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    STA = 61.6
    SetSpellDataIndex(Spell, 1, STA)
    SetSpellDisplayEffect(Spell, 1, "description", "Increases STA of target by " .. STA)
    INT = 61.6
    SetSpellDataIndex(Spell, 2, INT)
    SetSpellDisplayEffect(Spell, 2, "description", "Increases INT of target by " .. INT)
    CastCustomSpell(Spell, Player, Player)
end