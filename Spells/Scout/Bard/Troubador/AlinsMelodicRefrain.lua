--[[
    Script Name    : Spells/Scout/Bard/Troubador/AlinsMelodicRefrain.lua
    Script Author  : Image
    Script Date    : 2025.08.10 14:45:12
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Interrupts target encounter
*Inflicts 127 - 211 mental damage on target encounter

--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    Interrupt(Caster, Target)
    SpellDamage(Target, DmgType, MinVal, MaxVal)
end
