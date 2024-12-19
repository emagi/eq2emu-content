--[[
    Script Name    : Spells/Fighter/Brawler/Monk/SweepingCrane.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.08 03:11:24
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DefSkills, OffSkills)
    AddSkillBonus(Caster, GetSkillIDByName("Parry"), DefSkills)
    AddSkillBonus(Caster, GetSkillIDByName("Defense"), DefSkills)
    AddSkillBonus(Caster, GetSkillIDByName("Deflection"), DefSkills)
    AddSkillBonus(Caster, GetSkillIDByName("Tranquility"), DefSkills)
    AddSkillBonus(Caster, GetSkillIDByName("Slashing"), OffSkills)
    AddSkillBonus(Caster, GetSkillIDByName("Piercing"), OffSkills)
    AddSkillBonus(Caster, GetSkillIDByName("Crushing"), OffSkills)

end

function remove(Caster, Target)
    RemoveSkillBonus()
end