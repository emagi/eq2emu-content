--[[
    Script Name    : Spells/Commoner/NaturalRegeneration.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.11 03:05:24
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    CurrentRegen = GetInfoStructSInt(Caster, "hp_regen")
    AddSpellBonus(Caster, 600, math.ceil(CurrentRegen * 0.05))
    AddSpellBonus(Caster, 0, 3)
    AddSpellBonus(Caster, 1, 3)
end

function remove(Caster, Target)
    RemoveSpellBonus()
end 
