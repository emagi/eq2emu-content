--[[
    Script Name    : Spells/Priest/Cleric/Templar/Disgrace.lua
    Script Author  : Image
    Script Date    : 2025.08.01 19:57:35
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Interrupts target
*Decreases Mitigation of target vs physical damage by 216

--]]



function cast(Caster, Target, AmountDmg)
    Interrupt(Caster, Target)
    AddSpellBonus(Target, 200, AmountDmg)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
