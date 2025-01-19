--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/CleansingFire.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.14 03:11:50
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Inflicts 33 - 40 heat damage on target instantly and every 4 seconds

--]]
require "Spells/Generic/SpellCalcs"

function cast(Caster, Target, DoTType, MinVal, MaxVal)
    MinVal = CalculateRateValue(Caster, Target, GetSpellRequiredLevel(Caster), GetLevel(Caster), 0.35, MinVal)
    MaxVal = CalculateRateValue(Caster, Target, GetSpellRequiredLevel(Caster), GetLevel(Caster), 0.35, MaxVal)

    SpellDamage(Target, DoTType, MinVal, MaxVal)
end


function tick(Caster, Target, DoTType, MinVal, MaxVal)
    SpawnSet(Target,"visual_state",185)
    SpellDamage(Target, DoTType, MinVal, MaxVal)
end

function remove(Caster, Target)
     SpawnSet(Target,"visual_state",0)
end
