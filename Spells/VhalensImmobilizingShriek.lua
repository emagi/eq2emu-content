--[[
    Script Name    : Spells/VhalensImmobilizingShriek.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.28 04:05:43
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
    
    -- 5% chance to dispel when target takes damage or receives hostile action
    AddProc(Target, 2, 5.0)

end

function proc(Caster, Target, Type)
    if Type ==  2 then
        CancelSpell()
    end
end
    
function remove(Caster, Target)
    RemoveControlEffect(Target, 5)
end