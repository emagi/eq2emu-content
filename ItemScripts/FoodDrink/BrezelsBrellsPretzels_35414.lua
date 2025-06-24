-- Effects extracted from item_effects table:
-- Increases Out-of-Combat Health Regeneration of target by 227.5
-- This effect suspends during combat

function cast(Item, Player)
    Spell = GetSpell(5462, 1, "Spells/Commoner/HomemadeMealGeneric.lua")
    SetSpellData(Spell, "name", "Brezels (Brell's Pretzels)")
    SetSpellData(Spell, "description", "A tasty baked snack, popular at the local tavern!  Heavily salted and twisted into knots.")
    newDuration = 20000.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 227.5
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    CastCustomSpell(Spell, Player, Player)
end