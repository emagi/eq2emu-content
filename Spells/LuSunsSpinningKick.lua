--[[
    Script Name    : Spells/LuSunsSpinningKick.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.29 01:05:59
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    Level = GetLevel(Caster)
    SpellLevel = 10
    Mastery = SpellLevel + 10
    StatBonus = GetStr(Caster) / 10
        
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = LvlBonus + StatBonus
    MaxDmg = math.floor(DmgBonus * 2) + MaxVal
    MinDmg = math.floor(DmgBonus * 2) + MinVal
    
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
end

