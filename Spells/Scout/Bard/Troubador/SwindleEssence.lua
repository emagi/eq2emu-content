--[[
    Script Name    : Spells/Scout/Bard/Troubador/SwindleEssence.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.22 04:11:44
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Inflicts 30 - 51 mental damage on target encounter
*Increases power of group members (AE) by 25 - 42

--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal, MinPower, MaxPower)
    SpellDamage(Target, DmgType, MinVal, MaxVal)
    local targets = GetGroup(Caster)
    if targets ~= nil then
        for k,v in ipairs(targets) do
            SpellHeal("Power", MinPower, MaxPower, v, 0, 0)
        end
    else
        SpellHeal("Power", MinPower, MaxPower, Caster, 0, 0)
    end
end
