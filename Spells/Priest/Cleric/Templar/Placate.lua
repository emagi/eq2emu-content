--[[
    Script Name    : Spells/Priest/Cleric/Templar/Placate.lua
    Script Author  : Image
    Script Date    : 2025.08.02 07:11:31
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Decreases threat priority of targets in Area of Effect by 1 position
*Decreases Threat to targets in Area of Effect by 2,593 
*Dazes targets in Area of Effect
	*If Target is not Epic
*Dispelled when target receives hostile action
*Dispelled when target takes damage
*Grants caster a minor heal
--]]

function cast(Caster, Target, Hate, MinHeal, MaxHeal)
    AdjustHatePosition(Caster, Target, false)
    AddHate(Caster, Target, Hate)
    if not IsEpic(Target) then
        AddControlEffect(Target, 3)
    end
    AddProc(Target, 1, 100.0)
    AddProc(Target, 15, 100.0)
    SpellHeal("Heal", MinHeal, MaxHeal, Caster, 0, 0, GetSpellName())
end

function proc(Caster, Target, Type, Hate, MinHeal, MaxHeal)
    RemoveControlEffect(Target, 3, 1)  -- third argument (1), we only remove the current target
end

function remove(Caster, Target, Reason, Hate, MinHeal, MaxHeal)
    RemoveControlEffect(Target, 3)
end
