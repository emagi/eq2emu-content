--[[
    Script Name    : Spells/OggokianTrade.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.07 10:05:38
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSkillBonus(Target, GetSkillIDByName("Metalworking"), 5.0)
end

function remove(Caster, Target)
    RemoveSkillBonus()
end 
