-- Effects extracted from item_effects table:
-- Increases Out-of-Combat Power Regeneration of target by 15.0

function cast(Item, Player)
    Spell = GetSpell(5463, 1, "Spells/Commoner/HomemadeDrinkGeneric.lua")
    SetSpellData(Spell, "name", "a shar vahl vanilla latte")
    SetSpellData(Spell, "description", "Not many of the old Vah Shir recipes survived the events of "The Shattering" but the shar vahl vanilla latte was fortunately rediscovered by a group of Kerran historians around the time of their resettlement into Stonestair Byway.  It wasn't long before the recipe caught on and the rest of Freeport was seen enjoying this sweet, caffeinated beverage.  
")
    newDuration = 18000.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 15.0
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    CastCustomSpell(Spell, Player, Player)
end