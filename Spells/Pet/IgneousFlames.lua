--[[
    Script Name    : Spells/Commoner/IgneousFlames.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.02.03 05:02:50
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    SpellDamage(Target, DmgType, MinVal, MaxVal)
    Interrupt(Caster, Target)
end
