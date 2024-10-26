--[[
    Script Name    : Spells/Fighter/Warrior/Guardian/TauntingBlow.lua
    Script Author  : LordPazuzu
    Script Date    : 10/5/2024
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, DmgLow, DmgHigh, MinTauntVal, MaxTauntVal)
    Level = GetLevel(Caster)
    SpellLevel = 24
    Mastery = SpellLevel + 10
    StatBonus = GetStr(Caster) / 10
        
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    
    DmgBonus = LvlBonus + StatBonus
    MinDmg = DmgLow + math.floor(DmgBonus * 2.5)
    MaxDmg = DmgHigh + math.floor(DmgBonus * 2.5)
    
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)

-- Increases Threat to target by 435 - 531 
    
AddHate(Caster, Target, math.random(MinTauntVal, MaxTauntVal), 1)

end