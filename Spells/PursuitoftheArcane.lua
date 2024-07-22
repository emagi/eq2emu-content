--[[
    Script Name    : Spells/PursuitoftheArcane.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.04 07:05:46
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Scribing"), 5.0)
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end
