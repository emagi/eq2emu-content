-- Effects extracted from item_effects table:
-- Increases STA of target by 5.9
-- Increases outgoing damaging spell amount by 3%
-- Increases INT of target by 5.9
-- Increases Out-of-Combat Health Regeneration of target by 11.2

function cast(Item, Player)
    Spell = GetSpell(5462, 2, "Spells/Commoner/HomemadeMealGenericIntSta.lua")
    SetSpellData(Spell, "name", "Draconic Oracle's Visionary Soup")
    SetSpellData(Spell, "description", "")
    newDuration = 90000.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 11.2
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    INT = 5.9
    SetSpellDataIndex(Spell, 1, INT)
    SetSpellDisplayEffect(Spell, 1, "description", "Increases INT of target by " .. INT)
    STA = 5.9
    SetSpellDataIndex(Spell, 2, STA)
    SetSpellDisplayEffect(Spell, 2, "description", "Increases STA of target by " .. STA)
    CastCustomSpell(Spell, Player, Player)
end