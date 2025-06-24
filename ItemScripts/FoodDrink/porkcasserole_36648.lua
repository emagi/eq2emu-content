-- Effects extracted from item_effects table:
-- Increases STA of target by 6.2
-- Increases Out-of-Combat Health Regeneration of target by 52.5

function cast(Item, Player)
    Spell = GetSpell(5462, 2, "Spells/Commoner/HomemadeMealGenericSta.lua")
    SetSpellData(Spell, "name", "pork casserole")
    SetSpellData(Spell, "description", "This homemade food increases stamina and replenishes additional health during non-combat situations.")
    newDuration = 165600.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 52.5
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    STA = 6.2
    SetSpellDataIndex(Spell, 1, STA)
    SetSpellDisplayEffect(Spell, 1, "description", "Increases STA of target by " .. STA)
    CastCustomSpell(Spell, Player, Player)
end