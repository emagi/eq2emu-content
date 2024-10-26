--[[
    Script Name    : Spells/GeraelsCurativeArc.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.24 04:05:57
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Amt)
        CureByType(1, 3, "", (GetLevel(Caster) * 1.08) + 1)
end

