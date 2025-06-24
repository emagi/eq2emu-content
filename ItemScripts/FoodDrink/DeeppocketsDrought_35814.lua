-- Effects extracted from item_effects table:
-- Increases Out-of-Combat Power Regeneration of target by 6.0

function cast(Item, Player)
    Spell = GetSpell(5463, 1, "Spells/Commoner/HomemadeDrinkGeneric.lua")
    SetSpellData(Spell, "name", "Deeppockets Drought")
    SetSpellData(Spell, "description", "A dry beer said to be a recipe passed down from generation to generation in the Deeppockets family.")
    newDuration = 20000.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 6.0
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    CastCustomSpell(Spell, Player, Player)
end