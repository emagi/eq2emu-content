--[[
    Script Name    : Spells/Fighter/Brawler/Bruiser/BobandWeaveClassic.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.08 08:11:23
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Skills, Haste)
    AddSkillBonus(Caster, GetSkillIDByName("Parry"), Skills)
    AddSkillBonus(Caster, GetSkillIDByName("Deflection"), Skills)
    AddSpellBonus(Caster, 617, Haste)
end

function remove(Caster, Target)
    RemoveSkillBonus()
    RemoveSpellBonus()
end