--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/ForcedSubmission.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.14 03:11:14
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Decreases Crushing, Piercing, Slashing and Ranged of target encounter by 4.9

--]]
require "Spells/Generic/SpellCalcs"

function cast(Caster, Target, DebuffVal)
    DebuffVal = CalculateRateValue(Caster, Target, GetSpellRequiredLevel(Caster), GetLevel(Caster), -0.35, DebuffVal)

    AddSkillBonus(Target, GetSkillIDByName("Ranged"), DebuffVal)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), DebuffVal)
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), DebuffVal)
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), DebuffVal)
end

function remove(Caster, Target)
    RemoveSkillBonus()
end