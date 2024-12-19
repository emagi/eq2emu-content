--[[
    Script Name    : Spells/Fighter/Brawler/Monk/WintersTalon.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.08 03:11:33
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    Level = GetLevel(Caster)
    SpellLevel = 21
    Mastery = SpellLevel + 10

    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = math.floor(LvlBonus * 3.0)
    MaxDmg = MaxVal + DmgBonus
    MinDmg = MinVal + DmgBonus
    
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
    AddControlEffect(Target, 3)
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 3)
end 

