-- Effects extracted from item_effects table:
-- Increases STA and WIS of target by 1.1
-- Increases Out-of-Combat Power Regeneration of target by 15.0

function cast(Item, Player)
    Spell = GetSpell(5463, 2, "Spells/Commoner/HomemadeDrinkGenericStaWis.lua")
    SetSpellData(Spell, "name", "Caynar Sparkling Wine")
    SetSpellData(Spell, "description", "")
    newDuration = 81000.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 15.0
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    STA = 1.1
    SetSpellDataIndex(Spell, 1, STA)
    SetSpellDisplayEffect(Spell, 1, "description", "Increases STA of target by " .. STA)
    WIS = 1.1
    SetSpellDataIndex(Spell, 2, WIS)
    SetSpellDisplayEffect(Spell, 2, "description", "Increases WIS of target by " .. WIS)
    CastCustomSpell(Spell, Player, Player)
end