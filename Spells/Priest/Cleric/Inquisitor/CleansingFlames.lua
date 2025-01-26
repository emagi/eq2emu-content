--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/CleansingFlames.lua
    Script Author  : image
    Script Date    : 2025.01.26 02:01:59
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Inflicts 56 - 69 heat damage on target instantly and every 4 seconds

--]]


function cast(Caster, Target, DoTType, MinVal, MaxVal)
    MinVal = CalculateRateValue(Caster, Target, GetSpellRequiredLevel(Caster), GetLevel(Caster), 0.75, MinVal)
    MaxVal = CalculateRateValue(Caster, Target, GetSpellRequiredLevel(Caster), GetLevel(Caster), 0.75, MaxVal)

    SpellDamage(Target, DoTType, MinVal, MaxVal)
end


function tick(Caster, Target, DoTType, MinVal, MaxVal)
    SpawnSet(Target,"visual_state",598)
    SpellDamage(Target, DoTType, MinVal, MaxVal)
end

function remove(Caster, Target)
     SpawnSet(Target,"visual_state",0)
end