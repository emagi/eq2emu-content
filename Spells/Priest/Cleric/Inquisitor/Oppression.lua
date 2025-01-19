--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/Oppression.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.14 03:11:52
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Inflicts 21 - 26 mental damage on target instantly and every 3 seconds
Decreases the Strength and Stamina of the Inquisitor’s enemy while dealing Mental damage over time.

--]]

require "Spells/Generic/SpellCalcs"

function cast(Caster, Target, DoTType, MinVal, MaxVal, DebuffSTRSTA)
    MinVal = CalculateRateValue(Caster, Target, GetSpellRequiredLevel(Caster), GetLevel(Caster), 0.25, MinVal)
    MaxVal = CalculateRateValue(Caster, Target, GetSpellRequiredLevel(Caster), GetLevel(Caster), 0.25, MaxVal)
    
    DebuffSTRSTA = CalculateRateValue(Caster, Target, GetSpellRequiredLevel(Caster), GetLevel(Caster), -0.25, DebuffSTRSTA)

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
