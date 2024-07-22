--[[
    Script Name    : Spells/Commoner/Metallurgy.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.11 02:05:56
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSkillBonus(Target, GetSkillIDByName("Metalshaping"), 5.0)
end

function remove(Caster, Target)
    RemoveSkillBonus()
end 

