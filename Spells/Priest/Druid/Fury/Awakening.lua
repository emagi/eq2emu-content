--[[
    Script Name    : Spells/Priest/Druid/Fury/Awakening.lua
    Script Author  : image
    Script Date    : 2025.08.17 13:47:00
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Provides a "Fae Fire" heat damage proc when attacked

--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    local reviveSicknessSpell = GetSpell(5162, 1)
    if reviveSicknessSpell ~= nil then
        CastCustomSpell(reviveSicknessSpell, Target, Target)
    end
    AddProc(Target, 2, 100.0)
end

function proc(Caster, Target, Type, DmgType, MinVal, MaxVal)
    ProcDamage(Caster, Target, "Fae Fires", DmgType, MinVal, MaxVal)
end

function remove(Caster, Target, Reason, DmgType, MinVal, MaxVal)
    RemoveProc(Target)
end