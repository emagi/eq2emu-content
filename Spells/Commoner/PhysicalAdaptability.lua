--[[
    Script Name    : Spells/Commoner/PhysicalAdaptability.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.11 01:05:53
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSkillBonus(Target, GetSkillIDByName("Defense"), 3.0)
end

function remove(Caster, Target)
    RemoveSkillBonus()
end 

