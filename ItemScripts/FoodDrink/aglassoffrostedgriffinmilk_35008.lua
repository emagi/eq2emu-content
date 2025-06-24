-- Effects extracted from item_effects table:
-- Increases Out-of-Combat Power Regeneration of target by 15.0

function cast(Item, Player)
    Spell = GetSpell(5463, 1, "Spells/Commoner/HomemadeDrinkGeneric.lua")
    SetSpellData(Spell, "name", "a glass of frosted griffin milk")
    SetSpellData(Spell, "description", "A favorite festival drink of the children of Kaladim.  Griffin milk is for the most part nutritionally comparable to cows' milk. However griffin milk may or may not contain added vitamin D. Griffin milk is no better tolerated by those with lactose intolerance or milk allergies than cows' milk.  It is famous for having a tangy flavor and containing only 1% fat.

")
    newDuration = 18000.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 15.0
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    CastCustomSpell(Spell, Player, Player)
end