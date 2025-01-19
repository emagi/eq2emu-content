--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/TormentClassic.lua
    Script Author  : image
    Script Date    : 2025.01.15 07:01:22
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Inflicts 35 - 43 mental damage on target instantly and every 3 seconds
*Decreases STR and STA of target by 24.0

--]]

require "Spells/Generic/SpellCalcs"

function cast(Caster, Target, DoTType, MinVal, MaxVal, DebuffSTRSTA)
    MinVal = CalculateRateValue(Caster, Target, GetSpellRequiredLevel(Caster), GetLevel(Caster), 2.5, MinVal)
    MaxVal = CalculateRateValue(Caster, Target, GetSpellRequiredLevel(Caster), GetLevel(Caster), 2.5, MaxVal)
    
    DebuffSTRSTA = CalculateRateValue(Caster, Target, GetSpellRequiredLevel(Caster), GetLevel(Caster), -1.25, DebuffSTRSTA)

    SpellDamage(Target, DoTType, MinVal, MaxVal)
	AddSpellBonus(Target, 0, DebuffSTRSTA) -- STR
	AddSpellBonus(Target, 1, DebuffSTRSTA) -- STA
end


function tick(Caster, Target, DoTType, MinVal, MaxVal)
    SpawnSet(Target,"visual_state",89)
    SpellDamage(Target, DoTType, MinVal, MaxVal)
end

function remove(Caster, Target)
     SpawnSet(Target,"visual_state",0)
     RemoveSpellBonus()
end
