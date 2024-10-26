--[[
    Script Name    : Spells/Commoner/VelansTauntingCry.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.30 03:05:02
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, MinVal, MaxVal)
    AddHate(Caster, Target, math.random(MinVal, MaxVal), 1)
end

