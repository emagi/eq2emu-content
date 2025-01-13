--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/ForcedCompliance.lua
    Script Author  : image
    Script Date    : 2025.01.10 02:01:54
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Decreases Crushing, Piercing, Slashing and Ranged of target encounter by 11.7

--]]


require "Spells/Generic/SpellCalcs"

function cast(Caster, Target, DebuffVal)
    DebuffVal = CalculateRateValue(GetSpellRequiredLevel(Caster), GetLevel(Caster), -0.8375, DebuffVal)

    AddSkillBonus(Target, GetSkillIDByName("Ranged"), DebuffVal)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), DebuffVal)
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), DebuffVal)
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), DebuffVal)
end

function remove(Caster, Target)
    RemoveSkillBonus()
end