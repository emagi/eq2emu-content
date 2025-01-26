--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/Digression.lua
    Script Author  : image
    Script Date    : 2025.01.26 08:01:50
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Decreases threat priority of targets in Area of Effect by 1 position
*Decreases Threat to targets in Area of Effect by 4,272 
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