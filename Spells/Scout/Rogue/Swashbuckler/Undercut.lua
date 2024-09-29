--[[
    Script Name    : Spells/Scout/Rogue/Swashbuckler/Undercut.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.09.25 04:09:07
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    Level = GetLevel(Caster)
    SpellLevel = 22
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
    Say(Caster, "Slow not implemented")

end