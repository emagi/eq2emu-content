-- Effects extracted from item_effects table:
-- Increases STR and INT of target by 1.1
-- Increases Out-of-Combat Power Regeneration of target by 15.0

function cast(Item, Player)
    Spell = GetSpell(5463, 2, "Spells/Commoner/HomemadeDrinkGenericStrInt.lua")
    SetSpellData(Spell, "name", "Cherry Marrtini")
    SetSpellData(Spell, "description", "")
    newDuration = 181800.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 15.0
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    STR = 1.1
    SetSpellDataIndex(Spell, 1, STR)
    SetSpellDisplayEffect(Spell, 1, "description", "Increases STR of target by " .. STR)
    INT = 1.1
    SetSpellDataIndex(Spell, 2, INT)
    SetSpellDisplayEffect(Spell, 2, "description", "Increases INT of target by " .. INT)
    CastCustomSpell(Spell, Player, Player)
end