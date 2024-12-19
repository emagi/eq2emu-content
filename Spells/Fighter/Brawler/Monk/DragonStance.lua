--[[
    Script Name    : Spells/Fighter/Brawler/Monk/DragonStance.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.08 03:11:33
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, OffSkills, Mit, DefResists)
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), OffSkills)
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), OffSkills)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), OffSkills)
    AddSkillBonus(Caster, 3177806075, OffSkills)-- Fists
    AddSpellBonus(Target, 200, Mit)
    AddSpellBonus(Target, 204, DefResists)
    AddSpellBonus(Target, 205, DefResists)
    AddSpellBonus(Target, 206, DefResists)
end

function remove(Caster, Target)
    RemoveSkillBonus()
    RemoveSpellBonus()
end