--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/Contempt.lua
    Script Author  : image
    Script Date    : 2025.01.26 12:01:57
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Decreases Mitigation of target vs all damage by 205

--]]

require "Spells/Generic/SpellCalcs"


function cast(Caster, Target, BonusAmt)
    BonusAmt = CalculateRateValue(Caster, Target, GetSpellRequiredLevel(Caster), GetLevel(Caster), -1.25, BonusAmt)

	AddSpellBonus(Target, 200, BonusAmt) -- physical
	AddSpellBonus(Target, 201, BonusAmt) -- heat/elemental
end

function remove(Caster, Target)
    RemoveSpellBonus()
end