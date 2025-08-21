--[[
    Script Name    : Spells/Priest/Druid/Fury/Fleshweave.lua
    Script Author  : Image
    Script Date    : 2025.08.20 19:14:34
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Heals target for 131 - 160 instantly and every 2 seconds

--]]

function cast(Caster, Target, MinHeal, MaxHeal)
    SpellHeal("Heal", MinHeal, MaxHeal, Target)
end

function tick(Caster, Target, MinHeal, MaxHeal)
    SpellHeal("Heal", MinHeal, MaxHeal, Target)
end