--[[
    Script Name    : Spells/HuntersInstinct.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.04 04:05:43
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSkillBonus(Target, GetSkillIDByName("Tracking"), 5.0)
end

function remove(Caster, Target)
    RemoveSkillBonus()
end 

