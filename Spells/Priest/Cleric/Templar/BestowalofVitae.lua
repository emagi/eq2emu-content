--[[
    Script Name    : Spells/Priest/Cleric/Templar/BestowalofVitae.lua
    Script Author  : image
    Script Date    : 2025.08.17 07:39:12
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*When any damage is received this spell will cast Vitae on target.
	*Heals target for 112 - 139
	*Increases Mitigation of target vs arcane damage by 129
	*Grants a total of 5 triggers of the spell.

--]]

function cast(Caster, Target, MinHeal, MaxHeal, AmountDmg, TriggerCount, ProcType)
    AddProc(Target, ProcType, 100.0)
    SetSpellTriggerCount(TriggerCount, 1) -- Trigger Count: 5, CancelAfterTriggers: yes (1)
end

function proc(Caster, Target, Type, MinHeal, MaxHeal, AmountDmg)
    SpellHeal("Heal", MinHeal, MaxHeal, Target, 0, 0, "Vitae")
    AddSpellBonus(Target, 203, AmountDmg)

    RemoveTriggerFromSpell() -- Removes trigger from SetSpellTriggerCount
end

function remove(Caster, Target)
    RemoveProc(Target)
    RemoveSpellBonus(Target)
end
