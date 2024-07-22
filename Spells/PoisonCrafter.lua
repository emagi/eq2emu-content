--[[
    Script Name    : Spells/PoisonCrafter.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.04 07:05:50
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Chemistry"), 5.0)
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end

