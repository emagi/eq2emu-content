--[[
    Script Name    : Spells/KazlosFrigidBolts.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.16 04:05:11
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, MinVal, MaxVal, MinDot, MaxDot)
    Level = GetLevel(Caster)
    SpellLevel = 10
    Mastery = SpellLevel + 10
    StatBonus = GetInt(Caster) / 10
    
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end

    DmgBonus = LvlBonus + StatBonus
    MaxDmg = MaxVal + math.floor(DmgBonus)
    MinDmg = MinVal + math.floor(DmgBonus)
    
    SpellDamage(Target, 4, MinDmg, MaxDmg) 

end

function tick(Caster, Target, MinVal, MaxVal, MinDot, MaxDot)
    Level = GetLevel(Caster)
    SpellLevel = 10
    Mastery = SpellLevel + 10
    StatBonus = GetInt(Caster) / 10
    
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end

    DmgBonus = LvlBonus + StatBonus
    DotMax = MaxDot + math.floor(DmgBonus)
    DotMin = MinDot + math.floor(DmgBonus)
    
    SpellDamage(Target, 4, DotMin, DotMax) 
end


