--[[
    Script Name    : Spells/ElianasSalveoftheSpiritist.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.25 03:05:24
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Amt)
        CureByType(1, 3, "", (GetLevel(Caster) * 1.08) + 1)
end
