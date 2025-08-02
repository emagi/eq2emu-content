--[[
    Script Name    : Spells/Priest/Cleric/Templar/Amelioration.lua
    Script Author  : Image
    Script Date    : 20255.08.01 07:49:25
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Heals target for 235 - 287

--]]


function cast(Caster, Target, MinHeal, MaxHeal)
    SpellHeal("Heal", MinHeal, MaxHeal, Target, 0, 0, GetSpellName())
end
