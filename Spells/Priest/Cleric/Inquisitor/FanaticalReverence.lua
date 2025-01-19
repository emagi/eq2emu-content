--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/FanaticalReverence.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.14 08:11:16
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Increases STA of group members (AE) by 7.8
*Increases Mitigation of group members (AE) vs arcane damage by 338

--]]

require "Spells/Generic/SpellCalcs"

function cast(Caster, Target, StaAmt, MitAmt)
    StaAmt = CalculateRateValue(Caster, Target, GetSpellRequiredLevel(Caster), GetLevel(Caster), 0.2, StaAmt)
    MitAmt = CalculateRateValue(Caster, Target, GetSpellRequiredLevel(Caster), GetLevel(Caster), 0.2, MitAmt/100)

	AddSpellBonus(Target, 1, StaAmt)
	AddSpellBonus(Target, 203, MitAmt)
    AddProc(Target, 2, 100, nil, 1)
end

function proc(Caster, Target)
    CastSpell(Caster, 140208, GetSpellTier())
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
    RemoveProc(Target)
end
