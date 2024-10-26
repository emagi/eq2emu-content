--[[
    Script Name    : Spells/Commoner/ElAradsReplenishing.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.16 08:05:18
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    regen(Caster, Target)
end

function tick(Caster, Target)
    regen(Caster, Target)
end 

function regen(Caster, Target)
    level = GetLevel(Caster)
    pw = math.ceil(level * 0.65)
    SpellHeal("Power", pw, pw, Caster)
end

