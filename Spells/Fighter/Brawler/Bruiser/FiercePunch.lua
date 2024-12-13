--[[
    Script Name    : Spells/Fighter/Brawler/Bruiser/FiercePunch.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.08 08:11:16
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    Level = GetLevel(Caster)
    SpellLevel = 27
    Mastery = SpellLevel + 10

    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = math.floor(LvlBonus * 2.5)
    MaxDmg = MaxVal + DmgBonus
    MinDmg = MinVal + DmgBonus
    
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
    
    if IsEpic(Target) == true then
        Interrupt(Target)
    else
        AddControlEffect(Target, 4)
    end
    
    Say(Caster, "DPS debuff not implemented")
end

function remove(Caster, Target)
    if IsEpic(Target) == false then
        RemoveControlEffect(Target, 4)
    end
end
