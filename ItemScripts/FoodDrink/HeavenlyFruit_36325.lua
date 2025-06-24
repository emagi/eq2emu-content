-- Effects extracted from item_effects table:
-- Increases outgoing damaging spell amount by 2%
-- Increases INT and STA of target by 66.0
-- Increases Out-of-Combat Health Regeneration of target by 212.8

function cast(Item, Player)
    Spell = GetSpell(5462, 2, "Spells/Commoner/HomemadeMealGenericIntSta.lua")
    SetSpellData(Spell, "name", "Heavenly Fruit")
    SetSpellData(Spell, "description", "")
    newDuration = 18000.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 212.8
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    INT = 66.0
    SetSpellDataIndex(Spell, 1, INT)
    SetSpellDisplayEffect(Spell, 1, "description", "Increases INT of target by " .. INT)
    STA = 66.0
    SetSpellDataIndex(Spell, 2, STA)
    SetSpellDisplayEffect(Spell, 2, "description", "Increases STA of target by " .. STA)
    CastCustomSpell(Spell, Player, Player)
end