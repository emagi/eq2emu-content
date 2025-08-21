--[[
    Script Name    : Spells/Priest/Druid/Fury/Vicious_SavageFeast.lua
    Script Author  : image
    Script Date    : 2025.08.20 02:08:18
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Heals target for 25 - 30 instantly and every 3 seconds
*Increases STR of group members (AE) by 10.6
*Increases STA of group members (AE) by 20.1
-- this is called by Vicious Feast
--]]

function cast(Caster, Target, MinHeal, MaxHeal, STR, STA)
    SpellHeal("Heal", MinHeal, MaxHeal, Target)
    AddSpellBonus(Target, 0, STR)
    AddSpellBonus(Target, 1, STA)
end

-- function tick uses spell tier call_frequency (30 = every 3 seconds)
function tick(Caster, Target, MinHeal, MaxHeal)
    SpellHeal("Heal", MinHeal, MaxHeal, Target)
end

function remove(Caster, Target, Reason)
    RemoveSpellBonus(Target) 
end