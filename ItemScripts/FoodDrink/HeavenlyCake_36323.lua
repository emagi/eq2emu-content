-- Effects extracted from item_effects table:
-- Increases STA and WIS of target by 66.0
-- Increases Out-of-Combat Health Regeneration of target by 212.8
-- Increases outgoing heal and ward amount by 2%

function cast(Item, Player)
    Spell = GetSpell(5462, 2, "Spells/Commoner/HomemadeMealGenericStaWis.lua")
    SetSpellData(Spell, "name", "Heavenly Cake")
    SetSpellData(Spell, "description", "")
    newDuration = 18000.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 212.8
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    STA = 66.0
    SetSpellDataIndex(Spell, 1, STA)
    SetSpellDisplayEffect(Spell, 1, "description", "Increases STA of target by " .. STA)
    WIS = 66.0
    SetSpellDataIndex(Spell, 2, WIS)
    SetSpellDisplayEffect(Spell, 2, "description", "Increases WIS of target by " .. WIS)
    CastCustomSpell(Spell, Player, Player)
end