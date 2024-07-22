--[[
    Script Name    : Spells/Chemist.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.10 04:05:00
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Chemistry"), 5.0)
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end


