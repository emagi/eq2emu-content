--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/Reproach.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.14 08:11:46
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Decreases Mitigation of target vs all damage by 130

--]]


require "Spells/Generic/SpellCalcs"


function cast(Caster, Target, BonusAmt)
    BonusAmt = CalculateRateValue(Caster, Target, GetSpellRequiredLevel(Caster), GetLevel(Caster), -0.5, BonusAmt)

	AddSpellBonus(Target, 200, BonusAmt) -- physical
	AddSpellBonus(Target, 201, BonusAmt) -- heat/elemental
end

function remove(Caster, Target)
    RemoveSpellBonus()
end