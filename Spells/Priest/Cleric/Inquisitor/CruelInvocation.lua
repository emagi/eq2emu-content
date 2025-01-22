--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/CruelInvocation.lua
    Script Author  : image
    Script Date    : 2025.01.21 02:01:18
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Stifles target until damage taken
*Inflicts 95 - 117 divine damage on target

--]]
require "Spells/Generic/SpellCalcs"


function cast(Caster, Target, DmgType, MinDmg, MaxDmg)
    MinDmg = CalculateRateValue(Caster, Target, GetSpellRequiredLevel(Caster), GetLevel(Caster), 3.75, MinDmg)
    MaxDmg = CalculateRateValue(Caster, Target, GetSpellRequiredLevel(Caster), GetLevel(Caster), 3.75, MaxDmg)

	SpellDamage(Target, DmgType, MinDmg, MaxDmg)

	if not IsEpic(Target) then
	    AddProc(Target, 15, 100)
		AddControlEffect(Target, 2)
		SetSpellTriggerCount(1, 1)
	end
end

function proc(Caster, Target, ProcType)
    if ProcType == 15 then
        RemoveTriggerFromSpell()
    end
end

function remove(Caster, Target)
    RemoveProc(Target)
    RemoveControlEffect(Target, 2)
end