-- Effects extracted from item_effects table:
-- Increases In-Combat Power Regeneration of target by 9.9
-- Increases In-Combat Health Regeneration of target by 9.9
-- Increases Out-of-Combat Health Regeneration of target by 158.8

function cast(Item, Player)
    Spell = GetSpell(5462, 1, "Spells/Commoner/HomemadeMealGeneric.lua")
    SetSpellData(Spell, "name", "Golden Egg Drop Soup")
    SetSpellData(Spell, "description", "Soup made from the eggs of a golden cockatrice is said to provide superior satisfaction and exceptional effects for the consumer.")
    newDuration = 108000.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 158.8
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    CastCustomSpell(Spell, Player, Player)
end