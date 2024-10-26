--[[
    Script Name    : Spells/SalmekiasSmitingSpark.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.24 03:05:15
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    Level = GetLevel(Caster)
    SpellLevel = 10
    Mastery = SpellLevel + 10
    StatBonus = GetInt(Caster) / 10
    
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end

    DmgBonus = LvlBonus + StatBonus
    MaxDmg = MaxVal + math.floor(DmgBonus * 2)
    MinDmg = MinVal + math.floor(DmgBonus * 2)
    
    SpellDamage(Target, DmgType, MinDmg, MaxDmg) 

end