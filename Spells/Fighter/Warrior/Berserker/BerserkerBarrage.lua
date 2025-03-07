--[[
    Script Name    : Spells/Fighter/Warrior/Berserker/BerserkerBarrage.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.07 04:11:38
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    if IsFlanking(Caster, Target) or IsFront(Caster, Target) then
        SpellDamage(Target, DmgType, MinVal, MaxVal)
    end
end
