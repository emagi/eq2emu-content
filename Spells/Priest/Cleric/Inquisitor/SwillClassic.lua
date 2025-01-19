--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/SwillClassic.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.14 03:11:41
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
    
    BonusAmt = CalculateRateValue(Caster, Target, GetSpellRequiredLevel(Caster), GetLevel(Caster), 0.35, BonusAmt)

	AddSpellBonus(Target, 201, BonusAmt)
end

function remove(Caster, Target)
    BreatheUnderwater(Target, false)
    RemoveSpellBonus()
end
