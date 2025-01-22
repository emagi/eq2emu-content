--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/LitanyOfAgony.lua
    Script Author  : image
    Script Date    : 2025.01.20 06:01:30
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Inflicts 99 - 121 divine damage on target encounter

--]]

require "Spells/Generic/SpellCalcs"

function cast(Caster, Target, DmgType, MinDmg, MaxDmg)
    MinDmg = CalculateRateValue(Caster, Target, GetSpellRequiredLevel(Caster), GetLevel(Caster), 1.25, MinDmg)
    MaxDmg = CalculateRateValue(Caster, Target, GetSpellRequiredLevel(Caster), GetLevel(Caster), 1.25, MaxDmg)

    SpellDamage(Target, DmgType, MinVal, MaxVal)
end

