--[[
    Script Name    : Spells/Scout/Bard/Troubador/QuironsJoyousCelebration.lua
    Script Author  : Image
    Script Date    : 2025.08.14 08:39:12
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Increases Combat Health Regen of group members (AE) by 29.7

--]]


function cast(Caster, Target, RegenAmt)
    AddSpellBonus(Target, 604, RegenAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end

