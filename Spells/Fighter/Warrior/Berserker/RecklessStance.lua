--[[
    Script Name    : Spells/Fighter/Warrior/Berserker/RecklessStance.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.07 04:11:36
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, OffSkills, DefSkills)
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), OffSkills)
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), OffSkills)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), OffSkills)
    AddSkillBonus(Target, GetSkillIDByName("Defense"), DefSkills)
    AddSkillBonus(Target, GetSkillIDByName("Parry"), DefSkills)
end

function remove(Caster, Target)
    RemoveSkillBonus()
end

