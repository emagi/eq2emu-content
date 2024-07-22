--[[
    Script Name    : Spells/TeachingsofTundraJack.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.02 02:05:01
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSkillBonus(Target, GetSkillIDByName("Tracking"), 5.0)
end

function remove(Caster, Target)
    RemoveSkillBonus()
end 

