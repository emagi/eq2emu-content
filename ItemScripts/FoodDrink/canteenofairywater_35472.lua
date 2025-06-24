-- Effects extracted from item_effects table:
-- Increases Out-of-Combat Power Regeneration of target by 5.7
-- This effect suspends during combat

function cast(Item, Player)
    Spell = GetSpell(5463, 1, "Spells/Commoner/HomemadeDrinkGeneric.lua")
    SetSpellData(Spell, "name", "canteen of airy water")
    SetSpellData(Spell, "description", "A canteen of water from the Overrealm.  Tiny bubbles rise from the bottom.")
    newDuration = 18000.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 5.7
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    CastCustomSpell(Spell, Player, Player)
end