--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/FavoroftheRepentant.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.14 08:11:16
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*When any damage is received this spell will cast Vengeful Faith on target.  
	*Heals target for 77 - 94
	*Divine damage on target's attacker for 15 - 25
	*Grants a total of 5 triggers of the spell.

--]]

require "Spells/Generic/SpellCalcs"

function cast(Caster, Target, MinValHeal, MaxValHeal, MinValDamage, MaxValDamage)
	AddProc(Target, 15, 100)
	SetSpellTriggerCount(5, 1)
end

function proc(Caster, Target, Type, MinValHeal, MaxValHeal, MinValDamage, MaxValDamage)
    local initial_caster = GetSpellCaster()
	if initial_caster ~= nil and Type == 15 then
	    MinValHeal = CalculateRateValue(initial_caster, Target, GetSpellRequiredLevel(initial_caster), GetCasterSpellLevel(), 3.75, MinValHeal)
	    MaxValHeal = CalculateRateValue(initial_caster, Target, GetSpellRequiredLevel(initial_caster), GetCasterSpellLevel(), 3.75, MaxValHeal)
	    MinValDamage = CalculateRateValue(initial_caster, Target, GetSpellRequiredLevel(initial_caster), GetCasterSpellLevel(), 1.25, MinValDamage)
	    MaxValDamage = CalculateRateValue(initial_caster, Target, GetSpellRequiredLevel(initial_caster), GetCasterSpellLevel(), 1.25, MaxValDamage)

	    SpellHeal("heal", MinValHeal, MaxValHeal, Caster, 0, 0, "Vengeful Faith")
        ProcDamage(initial_caster, Target, "Vengeful Faith", 7, MinValDamage, MaxValDamage)
	    RemoveTriggerFromSpell(1)
	end
end

function remove(Caster, Target)
	RemoveProc(Target)
end