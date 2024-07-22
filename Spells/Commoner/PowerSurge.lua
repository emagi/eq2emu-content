--[[
    Script Name    : Spells/Commoner/PowerSurge.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.11 06:05:32
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    CurrentRegen = GetInfoStructSInt(Caster, "power_regen")
    AddSpellBonus(Caster, 601, math.ceil(CurrentRegen * 0.05))
    AddSpellBonus(Caster, 2, 2)
end

function remove(Caster, Target)
    RemoveSpellBonus()
end 

