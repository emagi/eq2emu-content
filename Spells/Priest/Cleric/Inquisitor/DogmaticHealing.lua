--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/DogmaticHealing.lua
    Script Author  : image
    Script Date    : 2025.01.20 05:01:39
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Heals target for 348 - 426

--]]

require "Spells/Generic/SpellCalcs"

function cast(Caster, Target, MinHeal, MaxHeal)
    MinHeal = CalculateRateValue(Caster, Target, GetSpellRequiredLevel(Caster), GetLevel(Caster), 3.25, MinHeal)
    MaxHeal = CalculateRateValue(Caster, Target, GetSpellRequiredLevel(Caster), GetLevel(Caster), 3.25, MaxHeal)

    SpellHeal("Heal", MinHeal, MaxHeal)
    CastSpell(Target, 140210, GetSpellTier())
end
