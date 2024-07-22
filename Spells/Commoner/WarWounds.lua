--[[
    Script Name    : Spells/Commoner/WarWounds.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.01 04:05:37
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    CurrentRegen = GetInfoStructSInt(Caster, "hp_regen")
    AddSpellBonus(Caster, 600, math.ceil(CurrentRegen * 0.05))
    AddSpellBonus(Caster, 1, 2)
end

function remove(Caster, Target)
    RemoveSpellBonus()
end 
