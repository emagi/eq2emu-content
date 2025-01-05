--[[
    Script Name    : Spells/Fighter/Warrior/Guardian/CallofShielding.lua
    Script Author  : Dello
    Script Date    : 09/06/2014
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, StaBonus, DefSkills)
    AddSkillBonus(Target, GetSkillIDByName("Defense"), DefSkills)
    AddSkillBonus(Target, GetSkillIDByName("Parry"), DefSkills)
    --Sta bonus not used in classic.
end


function remove(Caster, Target)
    RemoveSkillBonus(Target)
end