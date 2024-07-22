--[[
    Script Name    : Spells/Commoner/Camouflage.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.03 03:05:40
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
