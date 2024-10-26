--[[
    Script Name    : Spells/PantsPatcher.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.04 08:05:10
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Tailoring"), 5.0)
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end
