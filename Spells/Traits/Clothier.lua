--[[
    Script Name    : Spells/Traits/Clothier.lua
    Script Author  : neatz09
    Script Date    : 2020.12.18 03:12:19
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSkillBonus(Target, GetSkillIDByName("Tailoring"), 5.0)
end

function remove(Caster, Target)
    RemoveSkillBonus()
end 
