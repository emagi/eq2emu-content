--[[
    Script Name    : Spells/Commoner/HalflingGrandTactics.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.04 08:05:17
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

