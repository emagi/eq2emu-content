--[[
    Script Name    : Spells/Commoner/Leadership.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.11 02:05:53
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSkillBonus(Target, GetSkillIDByName("Defense"), 5.0)
end

function remove(Caster, Target)
    RemoveSkillBonus()
end 

