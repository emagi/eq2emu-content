--[[
    Script Name    : Spells/ForgeInvention.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.11 06:05:50
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Metalworking"), 5.0)
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end
