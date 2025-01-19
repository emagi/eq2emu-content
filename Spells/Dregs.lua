--[[
    Script Name    : Spells/Dregs.lua
    Script Author  : image
    Script Date    : 2025.01.15 12:01:59
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

 An augmentation that grants water breathing and increases an ally's Elemental mitigation. 

--]]

require "Spells/Generic/SpellCalcs"


function cast(Caster, Target, BonusAmt)
    -- Allows target to breathe under water
    BreatheUnderwater(Target, true)
    
    BonusAmt = CalculateRateValue(Caster, Target, GetSpellRequiredLevel(Caster), GetLevel(Caster), 1.0, BonusAmt)

	AddSpellBonus(Target, 201, BonusAmt)
end

function remove(Caster, Target)
    BreatheUnderwater(Target, false)
    RemoveSpellBonus()
end
