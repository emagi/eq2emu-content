--[[
    Script Name    : Spells/Whipstitch.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.11 07:05:24
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSkillBonus(Target, GetSkillIDByName("Tailoring"), 5.0)
end

function remove(Caster, Target)
    RemoveSkillBonus()
end 

