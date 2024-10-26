--[[
    Script Name    : Spells/FueledbyHate.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.04 07:05:33
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    CurrentRegen = GetInfoStructSInt(Caster, "power_regen")
    level = GetLevel(Caster)
    AddSpellBonus(Caster, 601, math.ceil(CurrentRegen * 0.05))
    AddSpellBonus(Caster, 203, math.ceil(level * 1.5))
    Say(Caster, "Placeholder resist calculation")
end

function remove(Caster, Target)
    RemoveSpellBonus()
end 

