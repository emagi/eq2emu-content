-- Effects extracted from item_effects table:
-- Increases Out-of-Combat Power Regeneration of target by 15.0

function cast(Item, Player)
    Spell = GetSpell(5463, 1, "Spells/Commoner/HomemadeDrinkGeneric.lua")
    SetSpellData(Spell, "name", "a can of cherry fizzlepop")
    SetSpellData(Spell, "description", "A very popular item especially among the children of Norrath, cherry fizzlepop is often found near the gnomish creators that make it.  It has been a favorite flavor of the gnomes from before the times of "The Shattering".  The secret formula has been jealously guarded since the return of fizzlepop to the face of the new Norrath.  
 
 
")
    newDuration = 18000.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 15.0
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    CastCustomSpell(Spell, Player, Player)
end