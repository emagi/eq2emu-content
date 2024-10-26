--[[
    Script Name    : Spells/NiamisTutelage.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.04 08:05:29
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Artistry"), 5.0)
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end
