--[[
    Script Name    : Spells/ProficientSwimmer.lua
    Script Author  : neatz09
    Script Date    : 2020.08.14 03:08:57
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


