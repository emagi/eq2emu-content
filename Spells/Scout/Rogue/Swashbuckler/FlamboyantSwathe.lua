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

    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = math.floor(LvlBonus * 2.5)
    MinDmg = MinVal + DmgBonus
    MaxDmg = MaxVal + DmgBonus
    
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)

end

