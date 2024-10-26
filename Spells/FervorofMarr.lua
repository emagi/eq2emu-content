--[[
    Script Name    : Spells/FervorofMarr.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.15 01:05:23
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSkillBonus(Target, GetSkillIDByName("Metalworking"), 5.0)
end

function remove(Caster, Target)
    RemoveSkillBonus()
end 

