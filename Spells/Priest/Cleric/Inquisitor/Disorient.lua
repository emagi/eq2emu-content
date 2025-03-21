--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/Disorient.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.14 08:11:46
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Decreases threat priority of targets in Area of Effect by 1 position
*Decreases Threat to targets in Area of Effect by 2,593 
*Stuns targets in Area of Effect
	*If Target is not Epic

--]]

function cast(Caster, Target, Hate)
    AddHate(Caster, Target, Hate)

    -- Stuns targets in Area of Effect
    --     If Target is not Epic
    if not IsEpic(Target) then
        AddControlEffect(Target, 4)
    end

    -- Decreases threat priority of targets in Area of Effect by 1 position
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 4)
end
