--[[
    Script Name    : Spells/Priest/Cleric/Templar/HealingTouch.lua
    Script Author  : Image
    Script Date    : 2025.08.02 06:52:55
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Heals target for 235 - 287

--]]

function cast(Caster, Target, MinHeal, MaxHeal)
    SpellHeal("Heal", MinHeal, MaxHeal, Target, 0, 0, GetSpellName())
end
