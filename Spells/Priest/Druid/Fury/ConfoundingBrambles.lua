--[[
    Script Name    : Spells/Priest/Druid/Fury/ConfoundingBrambles.lua
    Script Author  : Image
    Script Date    : 2025.08.17 08:21:21
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Decreases threat priority of targets in Area of Effect by 1 position
*Decreases Threat to targets in Area of Effect by 2,593 
*Slows targets in Area of Effect by 31.5%
*Stifles targets in Area of Effect
	*If Target is not Epic
*10% chance to dispel when target receives hostile action
*10% chance to dispel when target takes damage

--]]

function cast(Caster, Target, Hate, SlowAmount)
    AdjustHatePosition(Caster, Target, false)
    AddHate(Caster, Target, Hate)
    AddSpellBonus(Target, 610, SlowAmount)
    if not IsEpic(Target) then
        AddControlEffect(Target, 2)
    end
    AddProc(Target, 1, 10)
    AddProc(Target, 15, 10)
end

function proc(Caster, Target, Type, Hate, SlowAmount)
    RemoveSpellBonus(Target)
    RemoveControlEffect(Target, 2, 1)  -- third argument (1), we only remove the current target
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
    RemoveProc(Target)
    RemoveControlEffect(Target, 2, 1)
end
