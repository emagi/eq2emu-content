--[[
    Script Name    : Spells/Calm.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.04.29 05:04:59
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    CurrentRegen = GetInfoStructSInt(Caster, "power_regen")
    AddSpellBonus(Caster, 601, math.ceil(CurrentRegen * 0.05))
end

function remove (Caster, Target)
    RemoveSpellBonus()
end
