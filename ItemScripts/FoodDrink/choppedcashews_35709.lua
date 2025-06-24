-- Effects extracted from item_effects table:
-- Increases WIS of target by 0.4
-- Increases Out-of-Combat Health Regeneration of target by 4.0

function cast(Item, Player)
    Spell = GetSpell(5462, 2, "Spells/Commoner/HomemadeMealGenericWis.lua")
    SetSpellData(Spell, "name", "chopped cashews")
    SetSpellData(Spell, "description", "Finely chopped cashews.")
    newDuration = 18000.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 4.0
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    WIS = 0.4
    SetSpellDataIndex(Spell, 1, WIS)
    SetSpellDisplayEffect(Spell, 1, "description", "Increases WIS of target by " .. WIS)
    CastCustomSpell(Spell, Player, Player)
end