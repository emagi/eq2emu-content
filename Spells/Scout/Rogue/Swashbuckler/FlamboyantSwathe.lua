--[[
    Script Name    : Spells/Scout/Rogue/Swashbuckler/FlamboyantSwathe.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.09.23 01:09:16
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    Level = GetLevel(Caster)
    SpellLevel = 20
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

