--[[
    Script Name    : Spells/Commoner/AstoundingLeap.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.15 01:05:09
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    level = GetLevel(Caster)
    AddHate(Caster, Target, math.ceil(level * -45))
    blink(Caster)
end

function blink(Caster, Target)
    local X=GetX(Caster) + MakeRandomInt(-10, 10)
    local Y=GetY(Caster)
    local Z= GetZ(Caster) + MakeRandomInt(-10, 10)
    SetPosition(Caster, X,Y,Z)
end

