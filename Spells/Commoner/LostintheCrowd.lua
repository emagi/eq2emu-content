--[[
    Script Name    : Spells/Commoner/LostintheCrowd.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.11 06:05:12
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
