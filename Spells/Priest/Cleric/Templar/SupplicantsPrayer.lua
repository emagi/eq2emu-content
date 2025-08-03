--[[
    Script Name    : Spells/Priest/Cleric/Templar/SupplicantsPrayer.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.14 11:11:13
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*When any damage is received this spell will cast Supplicant's Prayer on target.  
	*Heals target for 77 - 94
	*Grants a total of 5 triggers of the spell.

--]]

function cast(Caster, Target, MinHeal, MaxHeal, TriggerCount, Amount)
    AddProc(Target, 15, 100.0)
    SetSpellTriggerCount(TriggerCount, 1) -- Trigger Count: 5, CancelAfterTriggers: yes (1)
end

function proc(Caster, Target, Type, MinHeal, MaxHeal, TriggerCount, Amount)
    SpellHeal("Heal", MinHeal, MaxHeal, Target, 0, 0, "Supplicant's Prayer")
    RemoveTriggerFromSpell() -- Removes trigger from SetSpellTriggerCount
    local chance = MakeRandomInt(0, 100)
    if chance < 35 then
        AddSpellBonus(Target, 200, Amount) -- will override if we keep triggering proc
    end
end

function remove(Caster, Target, Reason, MinHeal, MaxHeal, TriggerCount, Amount)
    RemoveProc(Target)
    RemoveSpellBonus(Target)
end
