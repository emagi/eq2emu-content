-- Effects extracted from item_effects table:
-- Increases Out-of-Combat Health Regeneration of target by 10.0
-- This effect suspends during combat

function cast(Item, Player)
    Spell = GetSpell(5462, 1, "Spells/Commoner/HomemadeMealGeneric.lua")
    SetSpellData(Spell, "name", "a wheel of finely aged roquefort")
    SetSpellData(Spell, "description", "One of the most useful negotiating tools when dealing with the denizens of Temple Street: a wheel of Roquefort cheese!  One of the long-time favorites of Ratonga, Roquefort is often referred to as "the King of cheeses".  It has a tingly pungent taste and ranks among blue cheeses. Only the milk of specially bred sheep is used and is ripened in limestone caverns. ")
    newDuration = 18000.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 10.0
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    CastCustomSpell(Spell, Player, Player)
end