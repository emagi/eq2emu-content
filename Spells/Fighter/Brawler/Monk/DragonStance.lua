--[[
    Script Name    : Spells/Fighter/Brawler/Monk/DragonStance.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.08 03:11:33
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, OffSkills, DefSkill, Mit)
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), OffSkills)
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), OffSkills)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), OffSkills)
    AddSkillBonus(Target, GetSkillIDByName("Defense"), DefSkill)
    AddSpellBonus(Target, 201, Mit)
end

function remove(Caster, Target)
    RemoveSkillBonus()
    RemoveSpellBonus()
end