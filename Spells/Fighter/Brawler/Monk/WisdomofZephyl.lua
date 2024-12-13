--[[
    Script Name    : Spells/Fighter/Brawler/Monk/WisdomofZephyl.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.08 03:11:44
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Ranged"), SkillAmt)

end

function remove(Caster, Target)
    RemoveSkillBonus()
end
