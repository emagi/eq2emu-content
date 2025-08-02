--[[
    Script Name    : Spells/Priest/Cleric/Templar/CombativeFaith.lua
    Script Author  : Image
    Script Date    : 2025.08.01 19:54:45
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Inflicts 58 - 71 divine damage on target
*Inflicts 24 - 30 divine damage on target every 4 seconds

--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal, DmgType2, MinVal2, MaxVal2)
    SpellDamage(Target, DmgType, MinVal, MaxVal)
    -- All action performed in function tick using spell tier call_frequency
end

function tick(Caster, Target, DmgType, MinVal, MaxVal, DmgType2, MinVal2, MaxVal2)
    SpellDamage(Target, DmgType2, MinVal2, MaxVal2)
end