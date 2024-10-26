--[[
    Script Name    : Spells/Camouflage.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.04 07:05:29
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    Stealth(1)
end

function tick(Caster, Target)
    if HasMoved(Caster) then
        CancelSpell()
    end
end 

function remove(Caster, Target)
    RemoveStealth()
end

