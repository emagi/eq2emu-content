-- Effects extracted from item_effects table:
-- Increases Out-of-Combat Power Regeneration of target by 6.0

function cast(Item, Player)
    Spell = GetSpell(5463, 1, "Spells/Commoner/HomemadeDrinkGeneric.lua")
    SetSpellData(Spell, "name", "Scarscale Suds")
    SetSpellData(Spell, "description", "A strangely familiar handcrafted brew.  A small label on the bottom reads \"Ebb Tide Brewing Company\".")
    newDuration = 20000.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 6.0
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    CastCustomSpell(Spell, Player, Player)
end