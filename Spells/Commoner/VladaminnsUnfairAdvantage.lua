--[[
    Script Name    : Spells/Commoner/VladaminnsUnfairAdvantage.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.27 10:05:01
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Defense"), SkillAmt)

end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end
