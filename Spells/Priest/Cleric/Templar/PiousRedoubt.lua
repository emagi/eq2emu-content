--[[
    Script Name    : Spells/Priest/Cleric/Templar/PiousRedoubt.lua
    Script Author  : Image
    Script Date    : 2025.08.07 09:51:35
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Increases STA of target by 23.4
*Increases Crushing, Piercing, Slashing and Ranged of target by 4.0

--]]

function cast(Caster, Target, Amount, SkillAmount)
    AddSpellBonus(Target, 1, Amount)
    AddSkillBonus(Target, GetSkillIDByName("crushing"), SkillAmount)
    AddSkillBonus(Target, GetSkillIDByName("piercing"), SkillAmount)
    AddSkillBonus(Target, GetSkillIDByName("slashing"), SkillAmount)
    AddSkillBonus(Target, GetSkillIDByName("ranged"), SkillAmount)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
    RemoveSkillBonus(Target)
end
