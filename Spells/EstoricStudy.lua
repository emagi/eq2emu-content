--[[
    Script Name    : Spells/EstoricStudy.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.09 02:05:27
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Scribing"), SkillAmt)
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end