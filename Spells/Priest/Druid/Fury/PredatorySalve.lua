--[[
    Script Name    : Spells/Priest/Druid/Fury/PredatorySalve.lua
    Script Author  : Image
    Script Date    : 20255.08.20 09:17:33
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Heals target for 77 - 94 instantly and every 2 seconds
*Shapechanges target into a lion

--]]

function cast(Caster, Target, MinHeal, MaxHeal)
    SpellHeal("Heal", MinHeal, MaxHeal, Target)
    SetIllusion(Target, 303)
end

-- function tick uses spell tier call_frequency (20 = every 2 seconds)
function tick(Caster, Target, MinHeal, MaxHeal)
    SpellHeal("Heal", MinHeal, MaxHeal, Target)
end

function remove(Caster, Target, Reason)
    SetIllusion(Target, 0) 
end