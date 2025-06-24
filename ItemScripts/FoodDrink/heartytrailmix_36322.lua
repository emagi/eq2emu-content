-- Effects extracted from item_effects table:
-- Increases Out-of-Combat Health Regeneration of target by 51.0
-- This effect suspends during combat

function cast(Item, Player)
    Spell = GetSpell(5462, 1, "Spells/Commoner/HomemadeMealGeneric.lua")
    SetSpellData(Spell, "name", "hearty trail mix")
    SetSpellData(Spell, "description", "A blend of fruits and nuts, a boon on any trip.")
    newDuration = 18000.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 51.0
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    CastCustomSpell(Spell, Player, Player)
end