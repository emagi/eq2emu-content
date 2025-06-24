-- Effects extracted from item_effects table:
-- Increases Out-of-Combat Power Regeneration of target by 18.0
-- Increases speed of target by 40.0%

function cast(Item, Player)
    Spell = GetSpell(5463, 1, "Spells/Commoner/HomemadeDrinkGeneric.lua")
    SetSpellData(Spell, "name", "Vodka Akellovka")
    SetSpellData(Spell, "description", "This bottle of the finest vodka found in Norrath can be used to drink a warm toast with best wishes to the first birthday of EverQuest II in Russia!
")
    newDuration = 36000.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 18.0
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    CastCustomSpell(Spell, Player, Player)
end