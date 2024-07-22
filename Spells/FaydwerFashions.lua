--[[
    Script Name    : Spells/FaydwerFashions.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.11 08:05:07
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSkillBonus(Target, GetSkillIDByName("Tailoring"), 5.0)
end

function remove(Caster, Target)
    RemoveSkillBonus()
end 

