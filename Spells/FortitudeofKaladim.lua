--[[
    Script Name    : Spells/FortitudeofKaladim.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.08 03:05:10
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSkillBonus(Target, GetSkillIDByName("Defense"), 5.0)
end

function remove(Caster, Target)
    RemoveSkillBonus()
end 


