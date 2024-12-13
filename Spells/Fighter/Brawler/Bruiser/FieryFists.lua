--[[
    Script Name    : Spells/Fighter/Brawler/Bruiser/FieryFists.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.08 08:11:39
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, MinVal, MaxVal, Chance)
    Level = GetLevel(Caster)
    SpellLevel = 21
    Mastery = SpellLevel + 10

    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = math.floor(LvlBonus * 2.5)
    MaxDmg = MaxVal + DmgBonus
    MinDmg = MinVal + DmgBonus
    AddProc(Target, 3, Chance)
end

function proc(Caster, Target, Type, MinDmg, MaxDmg)
    if Type == 3 then
        ProcDamage(Caster, Target, "Fiery Fists", 3, MinDmg, MaxDmg)
    end
end

function remove(Caster, Target)
    RemoveProc(Target)
end

