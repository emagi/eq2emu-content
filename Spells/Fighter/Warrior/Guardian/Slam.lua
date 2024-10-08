--[[
    Script Name    : Spells/Fighter/Warrior/Guardian/Slam.lua
    Script Author  : LordPazuzu
    Script Date    : 10/3/2024
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    Level = GetLevel(Caster)
    SpellLevel = 21
    Mastery = SpellLevel + 10
    StatBonus = GetStr(Caster) / 10
        
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = LvlBonus + StatBonus
    MaxDmg = MaxVal + math.floor(DmgBonus * 2.5)
    MinDmg = MinVal + math.floor(DmgBonus * 2.5)
    
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
 
end

