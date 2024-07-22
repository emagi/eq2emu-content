--[[
    Script Name    : Spells/Commoner/DistractingHoax.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.04 08:05:59
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    level = GetLevel(Caster)
    AddHate(Caster, Target, math.ceil(level * -45))
end

