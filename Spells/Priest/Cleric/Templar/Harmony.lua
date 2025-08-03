--[[
    Script Name    : Spells/Priest/Cleric/Templar/Harmony.lua
    Script Author  : Image
    Script Date    : 2025.08.01 19:59:00
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Decreases threat priority of targets in Area of Effect by 1 position
-- Decreases Threat to targets in Area of Effect by 1,169 
-- Dazes targets in Area of Effect
--     If Target is not Epic
-- Dispelled when target receives hostile action
-- Dispelled when target takes damage

function cast(Caster, Target, Hate)
    AdjustHatePosition(Caster, Target, false)
    AddHate(Caster, Target, Hate)
    if not IsEpic(Target) then
        AddControlEffect(Target, 3)
    end
    AddProc(Target, 1, 100.0)
    AddProc(Target, 15, 100.0)
end

function proc(Caster, Target, Type, Hate)
    RemoveControlEffect(Target, 3, 1)  -- third argument (1), we only remove the current target

end

function remove(Caster, Target)
    
end
