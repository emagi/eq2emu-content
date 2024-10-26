--[[
    Script Name    : Spells/GiftoftheLand.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.04 04:05:28
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Chemistry"), 5.0)
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end
