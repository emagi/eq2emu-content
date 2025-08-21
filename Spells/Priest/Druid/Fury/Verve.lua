--[[
    Script Name    : Spells/Priest/Druid/Fury/Verve.lua
    Script Author  : Image
    Script Date    : 2025.08.20 08:43:31
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

* Out-of-Combat Regen per tick of target is 12.
* Increase max power of Target by 146.

--]]

function cast(Caster, Target, OutCombatRegen, MaxPower)
   AddSpellBonus(Target, 603, OutCombatRegen)
   AddSpellBonus(Target, 619, MaxPower)
end

function remove(Caster, Target, Reason)
   RemoveSpellBonus(Target) 
end