-- Effects extracted from item_effects table:
-- Increases Out-of-Combat Health Regeneration of target by 10.0
-- This effect suspends during combat

function cast(Item, Player)
    Spell = GetSpell(5462, 1, "Spells/Commoner/HomemadeMealGeneric.lua")
    SetSpellData(Spell, "name", "a cut of lemon-peppered vulrich")
    SetSpellData(Spell, "description", "Originally thought to only be of use to adventurers that were on the go, lemon-peppered vulrich has become a delicacy in the Commonlands that's taking Freeport by storm.  Considered too gamey for the sophisticated pallet of the Teir'Dal, the Overlord declared this dish his favorite rare selection and since then it has enjoyed much acclaim.
")
    newDuration = 18000.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 10.0
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    CastCustomSpell(Spell, Player, Player)
end