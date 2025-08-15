--[[
    Script Name    : Spells/Scout/Bard/Dirge/DarksongBladeClassic.lua
    Script Author  : Image
    Script Date    : 2025.08.14 08:30:21
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Inflicts 32 - 54 disease damage on target
*Inflicts 32 - 54 disease damage on target
*Inflicts 14 disease damage on target instantly and every 6 seconds

--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal, DmgType2, MinVal2, MaxVal2)
    local didDamage = SpellDamage(Target, DmgType, MinVal, MaxVal)
    if didDamage == true then -- second attack only attempted if first succeeds
        SpellDamage(Target, DmgType2, MinVal2, MaxVal2)
    end
end

function proc(Caster, Target, Type, DmgType, MinVal, MaxVal, DmgType2, MinVal2, MaxVal2, ProcDmgType, ProcDmg)
    SpellDamage(Target, ProcDmgType, ProcDmg, ProcDmg)
end