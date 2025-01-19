--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/ContriteGrace.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.14 08:11:55
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*When any damage is received this spell will cast Atoning Faith on target, which can be triggered up to 9 times across all targets.  
	*Heals target for 84 - 103
    *Also does instant Divine damage to the attacker
--]]


require "Spells/Generic/SpellCalcs"

function cast(Caster, Target, MinValHeal, MaxValHeal, MinValDamage, MaxValDamage)
	AddProc(Target, 15, 100, nil, 1)
	SetSpellTriggerCount(9, 1)
end

function proc(Caster, Target, Type, MinValHeal, MaxValHeal, MinValDamage, MaxValDamage)
    local initial_caster = GetSpellCaster()
	if initial_caster ~= nil and Type == 15 then
	    MinValHeal = CalculateRateValue(initial_caster, Target, GetSpellRequiredLevel(initial_caster), GetCasterSpellLevel(), 3.75, MinValHeal)
	    MaxValHeal = CalculateRateValue(initial_caster, Target, GetSpellRequiredLevel(initial_caster), GetCasterSpellLevel(), 3.75, MaxValHeal)
	    MinValDamage = CalculateRateValue(initial_caster, Target, GetSpellRequiredLevel(initial_caster), GetCasterSpellLevel(), 1.25, MinValDamage)
	    MaxValDamage = CalculateRateValue(initial_caster, Target, GetSpellRequiredLevel(initial_caster), GetCasterSpellLevel(), 1.25, MaxValDamage)

	    SpellHeal("heal", MinValHeal, MaxValHeal, Caster, 0, 0, "Atoning Faith")
        ProcDamage(initial_caster, Target, "Atoning Faith", 7, MinValDamage, MaxValDamage)
	    RemoveTriggerFromSpell(1)
	end
end

function remove(Caster, Target)
	RemoveProc(Target)
end