--[[
    Script Name    : Spells/TheronsHearteningCall.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.30 08:05:22
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, SkillAmt, StaBonus)
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), SkillAmt)
    AddSpellBonus(Target, 1, StaBonus)
end

function remove(Caster, Target)
    RemoveSkillBonus()
    RemoveSpellBonus()
end

