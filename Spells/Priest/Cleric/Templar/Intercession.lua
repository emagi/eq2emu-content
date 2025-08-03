--[[
    Script Name    : Spells/Priest/Cleric/Templar/Intercession.lua
    Script Author  : Image
    Script Date    : 2025.08.02 06:53:21
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*When any damage is received this spell will cast Divine Prayer on target, which can be triggered up to 9 times across all targets.  
	*Heals target for 84 - 103
    *Increases Mitigation of target vs physical damage by 96
--]]

function cast(Caster, Target, MinHeal, MaxHeal, TriggerCount, Amount)
    AddProc(Target, 15, 100.0)
    SetSpellTriggerCount(TriggerCount, 1)  -- Trigger Count: 9, CancelAfterTriggers: yes (1)
end

function proc(Caster, Target, Type, MinHeal, MaxHeal, TriggerCount, Amount)
    SpellHeal("Heal", MinHeal, MaxHeal, Target, 0, 0, "Divine Prayer")
    RemoveTriggerFromSpell()
    local chance = MakeRandomInt(0, 100)
    if chance < 35 then
        AddSpellBonus(Target, 200, Amount) -- will override if we keep triggering proc
    end
end

function remove(Caster, Target, Reason, MinHeal, MaxHeal, TriggerCount, Amount)
    RemoveProc(Target)
    RemoveSpellBonus(Target)
end

