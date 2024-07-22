--[[
    Script Name    : Spells/PoisonPlay.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.09 03:05:58
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Chemistry"), 5.0)
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end


