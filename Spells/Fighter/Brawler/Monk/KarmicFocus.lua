--[[
    Script Name    : Spells/Fighter/Brawler/Monk/KarmicFocus.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.08 03:11:24
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, ParrySkill, DeflectSkill)
    AddSkillBonus(Caster, GetSkillIDByName("Parry"), ParrySkill)
    AddSkillBonus(Caster, GetSkillIDByName("Deflection"), DeflectSkill)
end

function remove(Caster, Target)
    RemoveSkillBonus()
end