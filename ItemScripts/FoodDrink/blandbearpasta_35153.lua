-- Effects extracted from item_effects table:
-- Increases STA of target by 1.6
-- Increases Out-of-Combat Health Regeneration of target by 10.0

function cast(Item, Player)
    Spell = GetSpell(5462, 2, "Spells/Commoner/HomemadeMealGenericSta.lua")
    SetSpellData(Spell, "name", "bland bear pasta")
    SetSpellData(Spell, "description", "This homemade food increases stamina and replenishes additional health during non-combat situations.")
    newDuration = 136800.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 10.0
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    STA = 1.6
    SetSpellDataIndex(Spell, 1, STA)
    SetSpellDisplayEffect(Spell, 1, "description", "Increases STA of target by " .. STA)
    CastCustomSpell(Spell, Player, Player)
end