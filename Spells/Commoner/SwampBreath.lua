--[[
    Script Name    : Spells/Commoner/SwampBreath.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.11 04:05:00
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    -- Allows target to breathe under water
    BreatheUnderwater(Caster, true)
end

function remove(Caster, Target)
    BreatheUnderwater(Caster, false)
end


