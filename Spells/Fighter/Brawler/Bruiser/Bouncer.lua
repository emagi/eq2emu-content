--[[
    Script Name    : Spells/Fighter/Brawler/Bruiser/Bouncer.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.08 08:11:02
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DefSkills, OffSkills)
    AddSkillBonus(Caster, GetSkillIDByName("Parry"), DefSkills)
    AddSkillBonus(Caster, GetSkillIDByName("Defense"), DefSkills)
    AddSkillBonus(Caster, GetSkillIDByName("Deflection"), DefSkills)
    AddSkillBonus(Caster, GetSkillIDByName("Physicality"), DefSkills)
    AddSkillBonus(Caster, GetSkillIDByName("Slashing"), OffSkills)
    AddSkillBonus(Caster, GetSkillIDByName("Piercing"), OffSkills)
    AddSkillBonus(Caster, GetSkillIDByName("Crushing"), OffSkills)

end

function remove(Caster, Target)
    RemoveSkillBonus()
end