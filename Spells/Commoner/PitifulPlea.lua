--[[
    Script Name    : Spells/Commoner/PitifulPlea.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.09 03:05:55
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    level = GetLevel(Caster)
    AddHate(Caster, Target, math.ceil(level * -45))
end


