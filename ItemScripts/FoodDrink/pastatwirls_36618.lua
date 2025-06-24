-- Effects extracted from item_effects table:
-- Increases STA of target by 0.4
-- Increases Out-of-Combat Health Regeneration of target by 4.0

function cast(Item, Player)
    Spell = GetSpell(5462, 2, "Spells/Commoner/HomemadeMealGenericSta.lua")
    SetSpellData(Spell, "name", "pasta twirls")
    SetSpellData(Spell, "description", "Corkscrew pasta mixed with squash.")
    newDuration = 18000.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 4.0
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    STA = 0.4
    SetSpellDataIndex(Spell, 1, STA)
    SetSpellDisplayEffect(Spell, 1, "description", "Increases STA of target by " .. STA)
    CastCustomSpell(Spell, Player, Player)
end