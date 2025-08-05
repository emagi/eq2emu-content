--[[
    Script Name    : Spells/Priest/Druid/Fury/FeralIntimidation.lua
    Script Author  : Image
    Script Date    : 2025.08.03 20:51:31
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Decreases AGI and WIS of target by 15.0

--]]


function cast(Caster, Target, Amount)
    AddSpellBonus(Target, 2, Amount)
    AddSpellBonus(Target, 3, Amount)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
