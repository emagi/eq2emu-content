--[[
    Script Name    : Spells/WeaponForger.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.08 03:05:37
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSkillBonus(Target, GetSkillIDByName("Metalworking"), 5.0)
end

function remove(Caster, Target)
    RemoveSkillBonus()
end 

