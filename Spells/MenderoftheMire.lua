--[[
    Script Name    : Spells/MenderoftheMire.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.11 04:05:38
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSkillBonus(Target, GetSkillIDByName("Metalshaping"), 5.0)
end

function remove(Caster, Target)
    RemoveSkillBonus()
end 

