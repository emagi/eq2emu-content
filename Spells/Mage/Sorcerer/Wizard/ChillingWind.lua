--[[
    Script Name    : Spells/Mage/Sorcerer/Wizard/ChillingWind.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.09.13 04:09:09
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    damage(Caster, Target, DmgType, MinVal, MaxVal)
end

function tick(Caster, Target, DmgType, MinVal, MaxVal)
    damage(Caster, Target, DmgType, MinVal, MaxVal)
end

function damage(Caster, Target, DmgType, MinVal, MaxVal)
    Level = GetLevel(Caster)
    SpellLevel = 20
    Mastery = SpellLevel + 10
    StatBonus = GetInt(Caster) / 10
    
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end

    DmgBonus = LvlBonus + StatBonus
    MaxDmg = MaxVal + math.floor(DmgBonus * 2.5)
    MinDmg = MinVal + math.floor(DmgBonus * 2.5)
    
    SpellDamage(Target, DmgType, MinDmg, MaxDmg) 
    
end

function remove(Caster, Target)
    
end
