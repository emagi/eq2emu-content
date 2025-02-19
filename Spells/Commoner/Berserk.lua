--[[
    Script Name    : Spells/Commoner/Berserk.lua
    Script Author  : neatz09
    Script Date    : 2020.02.28 09:02:21
    Script Purpose : 
                   : 
--]]


-- Increases Haste of target by 8.6
-- Increases DPS of target by 8.6

function cast(Caster, Target, Haste, Defense)
    AddSpellBonus(Target, 617, Haste)
    AddSpellBonus(Target, 629, Haste)
    AddSkillBonus(Target, GetSkillIDByName("Defense"), Defense)
    AddSkillBonus(Target, GetSkillIDByName("Parry"), Defense)

end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
    RemoveSkillBonus(Target)
end