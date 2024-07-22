--[[
    Script Name    : Spells/Commoner/LightontheFeet.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.04 07:05:57
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSpellBonus(Caster, 696, 2)
end

function remove(Caster, Target)
    RemoveSpellBonus()
end 
