--[[
    Script Name    : Spells/FiddysHandyDistraction.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.25 03:05:35
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, HateLow, HateHigh)
    Hate = MakeRandomInt(HateHigh, HateLow) 
    HateMod = math.floor(Hate)
    
    AddHate(Caster, Target, HateMod, 1)
end

function remove(Caster, Target)
end

