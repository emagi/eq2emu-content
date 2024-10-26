--[[
    Script Name    : Spells/Healthy.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.04.29 04:04:50
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    CurrentRegen = GetInfoStructSInt(Caster, "hp_regen")
    AddSpellBonus(Caster, 600, math.ceil(CurrentRegen * 0.05))
end

function remove (Caster, Target)
    RemoveSpellBonus()
end