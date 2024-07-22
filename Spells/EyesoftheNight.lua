--[[
    Script Name    : Spells/EyesoftheNight.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.04 04:05:03
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    SetVision(Target, 255)
end

function remove(Caster, Target)
    SetVision(Target, 0)
end
