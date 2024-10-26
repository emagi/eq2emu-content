--[[
    Script Name    : Spells/Commoner/ConfusingBabble.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.11 06:05:43
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    level = GetLevel(Caster)
    AddHate(Caster, Target, math.ceil(level * -45))
end
