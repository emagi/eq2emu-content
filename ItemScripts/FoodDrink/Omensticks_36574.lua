-- Effects extracted from item_effects table:
-- Increases STA of target by 1.5
-- Increases Out-of-Combat Health Regeneration of target by 4.0

function cast(Item, Player)
    Spell = GetSpell(5462, 2, "Spells/Commoner/HomemadeMealGenericSta.lua")
    SetSpellData(Spell, "name", "Omensticks")
    SetSpellData(Spell, "description", "These tasty treats have been deep-fried in octopus blubber and include at least 11 different herbs and spices from the Kunarkian wilds. The recipe has been handed down from generation to generation!")
    newDuration = 12000.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 4.0
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    STA = 1.5
    SetSpellDataIndex(Spell, 1, STA)
    SetSpellDisplayEffect(Spell, 1, "description", "Increases STA of target by " .. STA)
    CastCustomSpell(Spell, Player, Player)
end