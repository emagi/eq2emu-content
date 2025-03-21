--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/StingingPenance.lua
    Script Author  : image
    Script Date    : 2025.03.17 11:03:11
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*When any damage is received this spell will cast Vengeful Faith on target.  
	*Heals target for 125 - 152
	*Grants a total of 5 triggers of the spell.

--]]

function cast(Caster, Target)
    --     Grants a total of 5 triggers of the spell.
    SetSpellTriggerCount(5, 1)

    -- When any damage is received this spell will cast Vengeful Faith on target.  
    AddProc(Target, 2, 100)
end

function proc(Caster, Target, Type, MinHeal, MaxHeal)
    -- When any damage is received this spell will cast Vengeful Faith on target.  
    if Type == 2 then
        --     Heals target for 38 - 46
        SpellHeal("Heal", MinHeal, MaxHeal, Caster)
        RemoveTriggerFromSpell(1)
    end
end

function remove(Caster, Target)
    RemoveProc(Target)
end