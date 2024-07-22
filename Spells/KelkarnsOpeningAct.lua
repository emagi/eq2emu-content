--[[
    Script Name    : Spells/KelkarnsOpeningAct.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.28 04:05:40
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Def, DPS)
    AddSkillBonus(Target, GetSkillIDByName("Defense"), Def)
    AddSpellBonus(Target, 629, DPS)
end

function remove(Caster, Target)
    RemoveSkillBonus()
    RemoveSpellBonus()
end

