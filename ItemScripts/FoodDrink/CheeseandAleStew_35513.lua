-- Effects extracted from item_effects table:
-- Increases speed of target by 40.0%
-- Increases Out-of-Combat Health Regeneration of target by 144.0

function cast(Item, Player)
    Spell = GetSpell(5462, 1, "Spells/Commoner/HomemadeMealGeneric.lua")
    SetSpellData(Spell, "name", "Cheese and Ale Stew")
    SetSpellData(Spell, "description", "")
    newDuration = 108000.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 144.0
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    CastCustomSpell(Spell, Player, Player)
end