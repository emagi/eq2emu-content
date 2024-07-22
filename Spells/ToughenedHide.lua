--[[
    Script Name    : Spells/ToughenedHide.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.07 10:05:07
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSkillBonus(Target, GetSkillIDByName("Defense"), 5.0)
end

function remove(Caster, Target)
    RemoveSkillBonus()
end 



