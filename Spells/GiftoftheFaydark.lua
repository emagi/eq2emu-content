--[[
    Script Name    : Spells/GiftoftheFaydark.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.03 03:05:26
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSkillBonus(Target, GetSkillIDByName("Fletching"), 5.0)
end

function remove(Caster, Target)
    RemoveSkillBonus()
end 

