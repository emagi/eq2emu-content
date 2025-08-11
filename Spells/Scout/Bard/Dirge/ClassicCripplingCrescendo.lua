--[[
    Script Name    : Spells/Scout/Bard/Dirge/ClassicCripplingCrescendo.lua
    Script Author  : Image
    Script Date    : 2025.08.10 08:30:50
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Interrupts target
*Inflicts 15 - 26 disease damage on target
*Decreases Defense of target by 5.9

--]]


function cast(Caster, Target, SkillAmount, DmgType, MinVal, MaxVal)
    Interrupt(Caster, Target)
    SpellDamage(Target, DmgType, MinVal, MaxVal)
    AddSkillBonus(Target, GetSkillIDByName("defense"), SkillAmount)
end

function remove(Caster, Target, Reason, SkillAmount, DmgType, MinVal, MaxVal)
    RemoveSkillBonus(Target)
end
