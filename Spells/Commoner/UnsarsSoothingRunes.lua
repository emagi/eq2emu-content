--[[
    Script Name    : Spells/Commoner/UnsarsSoothingRunes.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.22 12:05:08
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    local level = ((GetLevel(Caster) * 1.08) + 1)
    CureByType(1, 2, "", level)
end

