--[[
    Script Name    : Spells/Fighter/Warrior/Berserker/WeaponShield.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.07 04:11:23
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Parry)
    AddSkillBonus(Target, GetSkillIDByName("Parry"), Parry)
end

function remove(Caster, Target)
    RemoveSkillBonus()
end

