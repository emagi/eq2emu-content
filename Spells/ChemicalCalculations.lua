--[[
    Script Name    : Spells/ChemicalCalculations.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.11 06:05:06
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSkillBonus(Target, GetSkillIDByName("Chemistry"), 5.0)
end

function remove(Caster, Target)
    RemoveSkillBonus()
end 

