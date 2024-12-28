--[[
    Script Name    : Spells/Fighter/Warrior/Berserker/BloodlustClassic.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.07 09:11:18
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Offense, Haste, Defense)
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), Offense)
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), Offense)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), Offense)
    AddSkillBonus(Target, GetSkillIDByName("Ranged"), Offense)

end

function proc(Caster, Target, Type, Haste, Defense)

end

function remove(Caster, Target)

end 
