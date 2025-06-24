-- Effects extracted from item_effects table:
-- Increases Combat XP Gain of target by 15.0%
-- Increases Out-of-Combat Power Regeneration of target by 18.0

function cast(Item, Player)
    Spell = GetSpell(5462, 1, "Spells/Commoner/HomemadeMealGeneric.lua")
    SetSpellData(Spell, "name", "Voleen's Cinnamon Roll")
    SetSpellData(Spell, "description", "A sticky cinnamon and sugar pastry sprinkled with raisins, and given a thick layer of icing.")
    newDuration = 81000.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 18.0
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    CastCustomSpell(Spell, Player, Player)
end