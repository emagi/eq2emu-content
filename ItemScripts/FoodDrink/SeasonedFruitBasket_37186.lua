-- Effects extracted from item_effects table:
-- Increases STA and INT of target by 4.6
-- Increases Out-of-Combat Health Regeneration of target by 10.0
-- Increases outgoing damaging spell amount by 1.5%

function cast(Item, Player)
    Spell = GetSpell(5462, 2, "Spells/Commoner/HomemadeMealGenericIntSta.lua")
    SetSpellData(Spell, "name", "Seasoned Fruit Basket")
    SetSpellData(Spell, "description", "")
    newDuration = 90000.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 10.0
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    INT = 4.6
    SetSpellDataIndex(Spell, 1, INT)
    SetSpellDisplayEffect(Spell, 1, "description", "Increases INT of target by " .. INT)
    STA = 4.6
    SetSpellDataIndex(Spell, 2, STA)
    SetSpellDisplayEffect(Spell, 2, "description", "Increases STA of target by " .. STA)
    CastCustomSpell(Spell, Player, Player)
end