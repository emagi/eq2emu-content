--[[
    Script Name    : Spells/Traits/DarkMedicine.lua
    Script Author  : neatz09
    Script Date    : 2020.12.18 01:12:39
    Script Purpose : 
                   : 
--]]

-- Increases Chemistry of caster by 5.0

function cast(Caster, Target, SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Chemistry"), 5.0)
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end