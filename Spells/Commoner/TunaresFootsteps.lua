--[[
    Script Name    : Spells/Commoner/TunaresFootsteps.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.11 08:05:52
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSkillBonus(Target, GetSkillIDByName("Tracking"), 5.0)
end

function remove(Caster, Target)
    RemoveSkillBonus()
end 


