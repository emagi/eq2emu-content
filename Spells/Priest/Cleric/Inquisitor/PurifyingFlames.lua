--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/PurifyingFlames.lua
    Script Author  : image
    Script Date    : 2025.01.14
    Script Purpose : Rebuilt for classic design, no mitigation debuff only dmg
                   : 
--]]

function cast(Caster, Target, DoTType, MinVal, MaxVal)
    MinVal = CalculateRateValue(Caster, Target, GetSpellRequiredLevel(Caster), GetLevel(Caster), 0.35, MinVal)
    MaxVal = CalculateRateValue(Caster, Target, GetSpellRequiredLevel(Caster), GetLevel(Caster), 0.35, MaxVal)

    SpellDamage(Target, DoTType, MinVal, MaxVal)
end


function tick(Caster, Target, DoTType, MinVal, MaxVal)
    SpawnSet(Target,"visual_state",598)
    SpellDamage(Target, DoTType, MinVal, MaxVal)
end

function remove(Caster, Target)
     SpawnSet(Target,"visual_state",0)
end