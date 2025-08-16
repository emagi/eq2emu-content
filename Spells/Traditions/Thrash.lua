--[[
    Script Name    : Spells/Traditions/Thrash.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.08.29 11:08:40
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    damage(Caster, Target, DmgType, MinVal, MaxVal)
    AddControlEffect(Target, 2)
   end


function tick(Caster, Target, DmgType, MinVal, MaxVal)
    damage(Caster, Target, DmgType, MinVal, MaxVal)
end


function remove(Caster, Target)
    RemoveControlEffect(Target, 2)
end

function damage(Caster, Target, DmgType, MinVal, MaxVal)
    Level = GetLevel(Caster)
    SpellLevel = 4
    Mastery = SpellLevel + 50

    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = math.floor(LvlBonus * 2.5)
    MaxDmg = MaxVal + DmgBonus
    MinDmg = MinVal + DmgBonus
    
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
end

