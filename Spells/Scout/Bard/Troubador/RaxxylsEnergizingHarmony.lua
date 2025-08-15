--[[
    Script Name    : Spells/Scout/Bard/Troubador/RaxxylsEnergizingHarmony.lua
    Script Author  : Image
    Script Date    : 2025.08.14 09:06:22
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Increases AGI, INT and WIS of group members (AE) by 16.9
*Increases hate gain against targets
--]]

function cast(Caster, Target, Amount)
    AddSpellBonus(Target, 2, Amount)
    AddSpellBonus(Target, 4, Amount)
    AddSpellBonus(Target, 3, Amount)
    AddSpellBonus(Target, 624, 5) -- add 5% hate gain (no details on how much hate there should be added)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
