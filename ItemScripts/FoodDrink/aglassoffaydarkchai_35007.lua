-- Effects extracted from item_effects table:
-- Increases Out-of-Combat Power Regeneration of target by 15.0

function cast(Item, Player)
    Spell = GetSpell(5463, 1, "Spells/Commoner/HomemadeDrinkGeneric.lua")
    SetSpellData(Spell, "name", "a glass of faydark chai ")
    SetSpellData(Spell, "description", "This drink was first cultivated by the Koada'Dal in the forests of Greater Faydark.  The recipe was freely given and passed onto the court of Antonius Bayle so that all Qeynosians could enjoy the taste of this wonderful, calming tea.  Since "The Shattering" the tea often resurfaces and credit for its rediscovery is given to the denizens of Castleview Hamlet.
")
    newDuration = 18000.0
    SetSpellData(Spell, "duration1", newDuration)
    SetSpellData(Spell, "duration2", newDuration)
    Regen = 15.0
    SetSpellDataIndex(Spell, 0, Regen)
    SetSpellDisplayEffect(Spell, 0, "description", "Increases Out-of-Combat Health Regeneration of target by " .. Regen)
    CastCustomSpell(Spell, Player, Player)
end