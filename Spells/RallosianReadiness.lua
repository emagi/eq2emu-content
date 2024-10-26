--[[
    Script Name    : Spells/RallosianReadiness.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.07 10:05:09
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSkillBonus(Target, GetSkillIDByName("Metalshaping"), 5.0)
end

function remove(Caster, Target)
    RemoveSkillBonus()
end 

