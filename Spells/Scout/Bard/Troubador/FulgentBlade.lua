--[[
    Script Name    : Spells/Scout/Bard/Troubador/FulgentBlade.lua
    Script Author  : Image
    Script Date    : 2025.08.10 16:01:32
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Inflicts 43 - 71 mental damage on target
*Inflicts 43 - 71 mental damage on target

--]]


function cast(Caster, Target, DmgType, MinVal, MaxVal, DmgType2, MinVal2, MaxVal2)
    local didDamage = SpellDamage(Target, DmgType, MinVal, MaxVal)
    if didDamage == true then -- second attack only attempted if first succeeds
        SpellDamage(Target, DmgType2, MinVal2, MaxVal2)
    end
end
