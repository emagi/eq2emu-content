-- Effects extracted from item_effects table:
-- Increases Max Health of target by 5.0
-- Increases Out-of-Combat Health Regeneration of target by 10.0

function cast(Item, Player)
    Spell = GetSpell(5462, 2, "Spells/Commoner/HomemadeMealGenericMaxHP.lua")
    SetSpellData(Spell, "name", "carrot omelet")
    SetSpellData(Spell, "description", "This homemade food increases your maximum health and replenishes additional health during non-combat situations.")
    newDuration = 49200.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 10.0
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    MaxHP = 5.0
    SetSpellDataIndex(Spell, 1, MaxHP)
    SetSpellDisplayEffect(Spell, 1, "description", "Increases MaxHP of target by " .. MaxHP)
    CastCustomSpell(Spell, Player, Player)
end