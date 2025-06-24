-- Effects extracted from item_effects table:
-- Increases STA of target by 12.7
-- Increases Out-of-Combat Health Regeneration of target by 127.5

function cast(Item, Player)
    Spell = GetSpell(5462, 2, "Spells/Commoner/HomemadeMealGenericSta.lua")
    SetSpellData(Spell, "name", "savory herring casserole")
    SetSpellData(Spell, "description", "")
    newDuration = 100200.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 127.5
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    STA = 12.7
    SetSpellDataIndex(Spell, 1, STA)
    SetSpellDisplayEffect(Spell, 1, "description", "Increases STA of target by " .. STA)
    CastCustomSpell(Spell, Player, Player)
end