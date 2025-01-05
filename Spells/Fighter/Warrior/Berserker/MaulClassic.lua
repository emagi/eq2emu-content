--[[
    Script Name    : Spells/Fighter/Warrior/Berserker/MaulClassic.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.06 01:11:13
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal, SkillAmt)
    Level = GetLevel(Caster)
    SpellLevel = 25
    Mastery = SpellLevel + 10

    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = math.floor(LvlBonus * 2.5)
    MaxDmg = MaxVal + DmgBonus
    MinDmg = MinVal + DmgBonus
    
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
    
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Ranged"), SkillAmt)
    
    if LastSpellAttackHit then
        Interrupt(Target)
    end
    
end

function remove(Caster, Target)
    RemoveSkillBonus()
end 

