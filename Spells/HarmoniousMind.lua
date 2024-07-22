--[[
    Script Name    : Spells/HarmoniousMind.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.09 02:05:24
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    CurrentRegen = GetInfoStructSInt(Caster, "power_regen")
    AddSpellBonus(Caster, 601, math.ceil(CurrentRegen * 0.05))
    AddSpellBonus(Caster, 3, 2)
end

function remove(Caster, Target)
    RemoveSpellBonus()
end 
