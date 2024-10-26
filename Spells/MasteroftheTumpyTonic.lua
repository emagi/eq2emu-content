--[[
    Script Name    : Spells/MasteroftheTumpyTonic.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.08 03:05:58
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Artistry"), 5.0)
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end
