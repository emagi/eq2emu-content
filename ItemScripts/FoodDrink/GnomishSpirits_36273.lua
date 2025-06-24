-- Effects extracted from item_effects table:
-- Increases Out-of-Combat Power Regeneration of target by 18.0
-- Makes caster weave when they run
-- Increases in-combat movement speed of caster by 80.0%
-- Increases speed of caster by 80.0%

function cast(Item, Player)
    Spell = GetSpell(5463, 1, "Spells/Commoner/HomemadeDrinkGeneric.lua")
    SetSpellData(Spell, "name", "Gnomish Spirits!")
    SetSpellData(Spell, "description", "This special gnomish drink replenishes power during non-combat situations, and increases run speed both in and out of combat.  Side effects may be expected...")
    newDuration = 600.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 18.0
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    CastCustomSpell(Spell, Player, Player)
end