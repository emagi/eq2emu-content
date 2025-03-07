--[[
    Script Name    : Spells/Fighter/Warrior/Berserker/Press.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.06 01:11:46
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    SpellDamage(Target, DmgType, MinVal, MaxVal)
    if not IsEpic(Target) then
        AddControlEffect(Target, 4)
        Knockback(Caster, Target, 2500)
    end
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 4)
end
