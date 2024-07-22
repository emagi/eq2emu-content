--[[
    Script Name    : Spells/ScholarlyPursuit.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.10 04:05:32
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Scribing"), SkillAmt)
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end

