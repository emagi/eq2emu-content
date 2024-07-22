--[[
    Script Name    : Spells/Commoner/ToughenedScales.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.11 07:05:26
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSkillBonus(Target, GetSkillIDByName("Defense"), 5.0)
end

function remove(Caster, Target)
    RemoveSkillBonus()
end 

