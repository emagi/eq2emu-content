--[[
    Script Name    : Spells/Priest/Cleric/Radiance.lua
    Script Author  : LordPazuzu
    Script Date    : 12/2/2022
    Script Purpose : 
                   : 
--]]

-- When any damage is received this spell will cast Radiance on target.  
--     Heals target based on level.
--     Grants a total of 5 triggers of the spell.

function cast(Caster, Target, MinValHeal, MaxValHeal)
	AddProc(Target, 15, 100)
	SetSpellTriggerCount(5, 1)
end

function proc(Caster, Target, Type, MinValHeal, MaxValHeal)
    local initial_caster = GetSpellCaster()
	if initial_caster ~= nil and Type == 15 then
	    MinValHeal = CalculateRateValue(initial_caster, Target, GetSpellRequiredLevel(initial_caster), GetCasterSpellLevel(), 3.75, MinValHeal)
	    MaxValHeal = CalculateRateValue(initial_caster, Target, GetSpellRequiredLevel(initial_caster), GetCasterSpellLevel(), 3.75, MaxValHeal)

	    SpellHeal("heal", MinValHeal, MaxValHeal, Caster, 0, 0, "Radiance")
	    RemoveTriggerFromSpell(1)
	end
end

function remove(Caster, Target)
	RemoveProc(Target)
end