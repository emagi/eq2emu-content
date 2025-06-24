-- Effects extracted from item_effects table:
-- Increases Out-of-Combat Power Regeneration of target by 138.0

function cast(Item, Player)
    Spell = GetSpell(5463, 1, "Spells/Commoner/HomemadeDrinkGeneric.lua")
    SetSpellData(Spell, "name", "pressed halfling wine")
    SetSpellData(Spell, "description", "Another favorite of the large denizens of Norrath: Halfling Wine.  Contrary to popular belief, halflings are not participants in the production of this wine or at least they are not willing participants!  Rumor has it the formula was accidentally discovered by an Ice Giant that wandered to close to the Enchanted Lands and did not look where he was stepping.   
 
")
    newDuration = 18000.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 138.0
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    CastCustomSpell(Spell, Player, Player)
end