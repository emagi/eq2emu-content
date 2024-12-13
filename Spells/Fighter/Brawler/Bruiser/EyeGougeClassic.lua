--[[
    Script Name    : Spells/Fighter/Brawler/Bruiser/EyeGougeClassic.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.08 08:11:26
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal, SkillAmt)
    Level = GetLevel(Caster)
    SpellLevel = 28
    Mastery = SpellLevel + 10

    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = math.floor(LvlBonus * 2.5)
    MaxDmg = MaxVal + DmgBonus
    MinDmg = MinVal + DmgBonus
    
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
    
    if LastSpellAttackHit() then    
        AddSkillBonus(Target, GetSkillIDByName("Slashing"), SkillAmt)
        AddSkillBonus(Target, GetSkillIDByName("Ranged"), SkillAmt)
        AddSkillBonus(Target, GetSkillIDByName("Piercing"), SkillAmt)
        AddSkillBonus(Target, GetSkillIDByName("Crushing"), SkillAmt)
    end
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end
