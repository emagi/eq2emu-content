--[[
    Script Name    : Spells/Commoner/LunchTime.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.04 08:05:05
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    CurrentRegen = GetInfoStructSInt(Caster, "hp_regen")
    AddSpellBonus(Caster, 600, math.ceil(CurrentRegen * 0.05))
    AddSpellBonus(Caster, 2, 2)
end

function remove(Caster, Target)
    RemoveSpellBonus()
end 
