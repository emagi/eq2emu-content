--[[
    Script Name    : Spells/Fighter/Warrior/Guardian/Shatter.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.10.19 07:10:39
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    Level = GetLevel(Caster)
    SpellLevel = 29
    Mastery = SpellLevel + 10
    StatBonus = GetStr(Caster) / 10
        
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = math.floor((LvlBonus + StatBonus) * 2.5)
    MaxDmg = MaxVal + DmgBonus
    MinDmg = MinVal + DmgBonus
    
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
    Say(Caster, "Slashing debuff not implemented.")
 
end
