-- Effects extracted from item_effects table:
-- Increases Out-of-Combat Health Regeneration of target by 227.5
-- This effect suspends during combat

function cast(Item, Player)
    Spell = GetSpell(5462, 1, "Spells/Commoner/HomemadeMealGeneric.lua")
    SetSpellData(Spell, "name", "a bayle silk chocolate cake")
    SetSpellData(Spell, "description", "Said to have been the creation of an ambitious halfling due to the use of a chocolate bixie topper instead of a cherry, this cake has quickly become a favorite for weddings and birthdays.  It is also rumored that upon hearing the news of this new dessert, the Overlord sent several spies into the Baubbleshire in an attempt to "procure" the recipe.
")
    newDuration = 18000.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 227.5
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    CastCustomSpell(Spell, Player, Player)
end