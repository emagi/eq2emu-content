--[[
    Script Name    : Spells/Priest/Druid/Fury/DogmaticFervor.lua
    Script Author  : image
    Script Date    : 2025.01.20 05:01:16
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Increases Haste of target by 11.0

--]]

function cast(Caster, Target, Haste)
    AddSpellBonus(Target, 617, Haste)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end