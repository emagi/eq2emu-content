-- Effects extracted from item_effects table:
-- Increases STA of target by 5.9
-- Increases Out-of-Combat Power Regeneration of target by 7.2
-- Increases outgoing damaging spell amount by 3%
-- Increases INT of target by 5.9

function cast(Item, Player)
    Spell = GetSpell(5463, 2, "Spells/Commoner/HomemadeDrinkGenericStaInt.lua")
    SetSpellData(Spell, "name", "Draconic Oracle's Visionary Tea")
    SetSpellData(Spell, "description", "")
    newDuration = 90000.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 7.2
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    STA = 5.9
    SetSpellDataIndex(Spell, 1, STA)
    SetSpellDisplayEffect(Spell, 1, "description", "Increases STA of target by " .. STA)
    INT = 5.9
    SetSpellDataIndex(Spell, 2, INT)
    SetSpellDisplayEffect(Spell, 2, "description", "Increases INT of target by " .. INT)
    CastCustomSpell(Spell, Player, Player)
end