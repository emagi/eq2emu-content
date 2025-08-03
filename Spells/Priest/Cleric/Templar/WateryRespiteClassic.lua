--[[
    Script Name    : Spells/Priest/Cleric/Templar/WateryRespiteClassic.lua
    Script Author  : Image
    Script Date    : 2025.08.02 07:29:42
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Increases Swimming of group members (AE) by 69.0
*Allows group members (AE) to breathe under water

--]]

function cast(Caster, Target, Amount)
    AddSkillBonus(Target, GetSkillIDByName("swimming"), Amount)
    BreatheUnderwater(Target, true)
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
    BreatheUnderwater(Target, false)
end
