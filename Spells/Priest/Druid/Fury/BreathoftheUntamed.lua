--[[
    Script Name    : Spells/Priest/Druid/Fury/BreathoftheUntamed.lua
    Script Author  : Image
    Script Date    : 2025.08.03 20:26:32
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Heals group members (AE) for 205 - 251

--]]


function cast(Caster, Target, MinHeal, MaxHeal)
    local targets = GetGroup(Caster)
    if targets ~= nil then
        for k,v in ipairs(targets) do
            SpellHeal("Heal", MinHeal, MaxHeal, v, 0, 0, GetSpellName())
        end
    else
        SpellHeal("Heal", MinHeal, MaxHeal, Caster, 0, 0, GetSpellName())
    end
end
