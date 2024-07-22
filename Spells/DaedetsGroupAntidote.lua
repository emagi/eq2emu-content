--[[
    Script Name    : Spells/DaedetsGroupAntidote.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.22 02:05:10
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Amt)
        CureByType(1, 3, "", (GetLevel(Caster) * 1.08) + 1)
end
