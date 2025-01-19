--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/PenitentsSermon.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.14 08:11:02
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Heals group members (AE) for 205 - 251

--]]
require "Spells/Generic/SpellCalcs"

function cast(Caster, Target, MinVal, MaxVal)
    MinVal = CalculateRateValue(Caster, Target, GetSpellRequiredLevel(Caster), GetLevel(Caster), 5, MinVal)
    MaxVal = CalculateRateValue(Caster, Target, GetSpellRequiredLevel(Caster), GetLevel(Caster), 5, MaxVal)
    
    SpellHeal("Heal", MinHeal, MaxHeal)
end