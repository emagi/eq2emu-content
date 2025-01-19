--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/DevoteesRetribution.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.14 08:11:44
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*On a melee hit this spell will cast Vengeance on caster.  
	*Inflicts 56 divine damage on target
	*Grants a total of 5 triggers of the spell.

--]]


function cast(Caster, Target)
    SetSpellTriggerCount(5, 1)

    AddProc(Target, 1, 100)
end

function proc(Caster, Target, Type, DmgType, DamageAmt)
    local initial_caster = GetSpellCaster()
    if initial_caster ~= nil and Type == 1 then
        ProcDamage(initial_caster, Caster, "Vengeance", DmgType, DamageAmt, DamageAmt)
        RemoveTriggerFromSpell(1)
    end
end

function remove(Caster, Target)
    RemoveProc(Target)
end