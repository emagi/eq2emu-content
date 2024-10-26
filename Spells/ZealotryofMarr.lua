--[[
    Script Name    : Spells/ZealotryofMarr.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.15 01:05:00
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSkillBonus(Target, GetSkillIDByName("Metalshaping"), 5.0)
end

function remove(Caster, Target)
    RemoveSkillBonus()
end 
