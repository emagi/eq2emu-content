--[[
    Script Name    : Spells/UthrosDefiantCry.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.28 11:05:16
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Skill, Avoidance)
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), Skill)
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), Skill)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), Skill)
    Say(Caster, "Spell avoidance not yet implemented.")
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end

