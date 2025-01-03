--[[
    Script Name    : Spells/Mage/ArcaneBindings.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.12 03:09:56
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Roots target
*10% chance to dispel when target receives hostile action
*10% chance to dispel when target takes damage
*Does not affect Epic targets
*Resistibility increases against targets higher than level 29.

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