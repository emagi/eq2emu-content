-- Effects extracted from item_effects table:
-- Increases Out-of-Combat Health Regeneration of target by 10.0
-- This effect suspends during combat

function cast(Item, Player)
    Spell = GetSpell(5462, 1, "Spells/Commoner/HomemadeMealGeneric.lua")
    SetSpellData(Spell, "name", "fish and chips")
    SetSpellData(Spell, "description", "Battered fish fillets deep fried to a mouth-watering crispness and fried potato wedges, wrapped into a convenient paper package and served with salt and malt vinegar.")
    newDuration = 18000.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 10.0
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    CastCustomSpell(Spell, Player, Player)
end