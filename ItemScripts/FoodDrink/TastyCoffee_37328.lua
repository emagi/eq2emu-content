-- Effects extracted from item_effects table:
-- Increases outgoing damaging spell amount by 2%
-- Increases STA and INT of target by 9.0
-- Increases Out-of-Combat Power Regeneration of target by 7.2

function cast(Item, Player)
    Spell = GetSpell(5463, 2, "Spells/Commoner/HomemadeDrinkGenericStaInt.lua")
    SetSpellData(Spell, "name", "Tasty Coffee")
    SetSpellData(Spell, "description", "")
    newDuration = 18000.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 7.2
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    STA = 9.0
    SetSpellDataIndex(Spell, 1, STA)
    SetSpellDisplayEffect(Spell, 1, "description", "Increases STA of target by " .. STA)
    INT = 9.0
    SetSpellDataIndex(Spell, 2, INT)
    SetSpellDisplayEffect(Spell, 2, "description", "Increases INT of target by " .. INT)
    CastCustomSpell(Spell, Player, Player)
end