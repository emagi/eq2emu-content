-- Effects extracted from item_effects table:
-- Increases Out-of-Combat Health Regeneration of target by 227.5
-- This effect suspends during combat

function cast(Item, Player)
    Spell = GetSpell(5462, 1, "Spells/Commoner/HomemadeMealGeneric.lua")
    SetSpellData(Spell, "name", "a pickle and bixiebutter souffle")
    SetSpellData(Spell, "description", "Before 'The Shattering" this was a popular food item with ingredients that were quite plentiful if adventurers looked in the right places.  Now with the decline of the bixie population and the scarcity of Boomba's pickles many imitations of this once great dish can be found in kitchens scattered across Norrath.  This specific recipe has ten percent less gnomish preservatives. 
")
    newDuration = 18000.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 227.5
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    CastCustomSpell(Spell, Player, Player)
end