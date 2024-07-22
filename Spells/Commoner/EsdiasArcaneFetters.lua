--[[
    Script Name    : Spells/Commoner/EsdiasArcaneFetters.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.22 12:05:12
    Script Purpose : 
                   : 
--]]

function precast(Caster, Target)
    -- Does not affect Epic targets
    if IsEpic(Target) then
        return false, 43
    end
    return true
end

function cast(Caster, Target)
    -- Roots target
    AddControlEffect(Target, 5)
    -- 10% chance to dispel when target takes damage
    AddProc(Target, 15, 10.0)
end

function proc(Caster, Target, Type)
    if Type == 15 then
        CancelSpell()
    end
end
    
function remove(Caster, Target)
    RemoveControlEffect(Target, 5)
end

