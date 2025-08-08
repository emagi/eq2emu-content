--[[
    Script Name    : Spells/LizardmanMastersSmite.lua
    Script Author  : image
    Script Date    : 2025.08.01 08:08:37
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*If target is Lizardman
*Decreases AGI and STR of target by 20
*Decreases Attack Speed of target by 10.0
*Inflicts 163 - 199 divine damage on target

--]]

function precast(Caster, Target)
    if GetRaceBaseType(Target) ~= 314 then
        return false, 38
    end
    return true
end

function cast(Caster, Target, Amount, SkillAmount, DmgType, MinVal, MaxVal)
    AddSpellBonus(Target, 2, Amount)
    AddSpellBonus(Target, 0, Amount)
    AddSpellBonus(Target, 617, SkillAmount)
    SpellDamage(Target, DmgType, MinVal, MaxVal)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
