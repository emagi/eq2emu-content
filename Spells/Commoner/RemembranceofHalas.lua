--[[
    Script Name    : Spells/Commoner/RemembranceofHalas.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.01 03:05:43
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSkillBonus(Target, GetSkillIDByName("Defense"), 5.0)
end

function remove(Caster, Target)
    RemoveSkillBonus()
end 

