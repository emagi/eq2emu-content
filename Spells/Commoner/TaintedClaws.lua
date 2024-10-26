--[[
    Script Name    : Spells/Commoner/TaintedClaws.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.08.16 04:08:10
    Script Purpose : 
                   : 
--]]
function cast(Caster, Target, DmgLow, DmgHigh)
    Level = GetLevel(Caster)
    SpellLevel = 20
    Mastery = SpellLevel + 10
    StatBonus = GetStr(Caster) / 10
        
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    
    DmgBonus = LvlBonus + StatBonus
    MaxDmg = math.floor(DmgBonus) * 2 + DmgHigh
    MinDmg = math.floor(DmgBonus) * 2 + DmgLow
    
    SpellDamage(Target, 8, MinDmg, MaxDmg)

end

