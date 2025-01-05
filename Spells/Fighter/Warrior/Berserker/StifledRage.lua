--[[
    Script Name    : Spells/Fighter/Warrior/Berserker/StifledRage.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.06 01:11:48
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Haste, DefSkills)
    AddSpellBonus(Target, 617, Haste)
    AddSkillBonus(Target, GetSkillIDByName("Defense"), DefSkills)
    AddSkillBonus(Target, GetSkillIDByName("Parry"), DefSkills)
end

function remove(Caster, Target)
    RemoveSpellBonus()
    RemoveSkillBonus()
end 

