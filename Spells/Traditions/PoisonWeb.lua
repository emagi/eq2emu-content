--[[
    Script Name    : Spells/Traditions/PoisonWeb.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.08.30 01:08:44
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    damage(Caster, Target, DmgType, MinVal, MaxVal)
    AddControlEffect(Target, 5)
end

function tick(Caster, Target, DmgType, MinVal, MaxVal)
    damage(Caster, Target, DmgType, MinVal, MaxVal)
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 5)
end

function damage(Caster, Target, DmgType, MinVal, MaxVal)
    Level = GetLevel(Caster)
    DmgBonus = math.floor(Level * 2.5)
    MinDmg = MinVal + DmgBonus
    MaxDmg = MaxVal + DmgBonus
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
end
